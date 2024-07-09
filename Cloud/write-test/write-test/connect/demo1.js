const http = require('http');
const mysql = require('mysql');
const WebSocket = require('ws');

const port = 3000;
const hostname = '127.0.0.1';

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'p@ssw0rd',
  port: 3306,
  database: 'mydb'
});

connection.connect((err) => {
  if (err) {
    console.error('Error connecting to database:', err);
    process.exit(1);
  }
  console.log('Connected to database');
});

const server = http.createServer((request, response) => {
  const version = request.httpVersion;
  const url = request.url;
  const method = request.method;
  const str = `Your request url is ${url}, request method is ${method} and httpVersion is ${version}`;
  console.log(str);

  if (request.method === 'POST') {
    let body = '';

    request.on('data', (chunk) => {
      body += chunk.toString();
    });

    request.on('end', () => {
      try {
        const postData = JSON.parse(body);
        console.log('postData:', postData);

        const payloadData = postData.payload.split('.');
        const temp1 = parseInt(payloadData[0]);
        const temp2 = parseInt(payloadData[1]);
        const humi1 = parseInt(payloadData[2]);
        const humi2 = parseInt(payloadData[3]);
        const aq1 = parseInt(payloadData[4]);
        const aq2 = parseInt(payloadData[5]);
        const U1 = parseInt(payloadData[6]);
        const U2 = parseInt(payloadData[7]);
        const I1 = parseInt(payloadData[8]);
        const I2 = parseInt(payloadData[9]);
        const human1 = parseInt(payloadData[10]);
        const human2 = parseInt(payloadData[11]);
        const timestamp = parseInt(postData.timestamp);
        const date = new Date(timestamp);
        const time = date.toLocaleString('zh-CN', { timeZone: 'Asia/Shanghai' });
        const p1 = U1 * I1;
        const p2 = U2 * I2;

        const insertQuery = 'INSERT INTO blogs1 (temp1, temp2, humi1, humi2, aq1, aq2, U1, U2, I1, I2, human1, human2, time, p1, p2) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
        connection.query(insertQuery, [temp1, temp2, humi1, humi2, aq1, aq2, U1, U2, I1, I2, human1, human2, time, p1, p2], (err, result) => {
          if (err) {
            console.error('Error inserting data into database:', err);
            response.writeHead(500, { 'Content-Type': 'application/json' });
            response.end(JSON.stringify({ message: 'Error inserting data into database' }));
            return;
          }
          console.log('Data inserted into database successfully');

          const thresholdQuery = 'SELECT threshold_temp1, threshold_temp2, threshold_humi1, threshold_humi2, threshold_aq1, threshold_aq2, threshold_human1, threshold_human2, threshold_voltage1, threshold_voltage2, threshold_current1, threshold_current2 FROM setting LIMIT 1';
          connection.query(thresholdQuery, (err, result) => {
            if (err) {
              console.error('Error retrieving threshold values from database:', err);
              response.writeHead(500, { 'Content-Type': 'application/json' });
              response.end(JSON.stringify({ message: 'Error retrieving threshold values from database' }));
              return;
            }
            if (result.length === 0) {
              console.error('No threshold values found in setting table');
              response.writeHead(500, { 'Content-Type': 'application/json' });
              response.end(JSON.stringify({ message: 'No threshold values found in setting table' }));
              return;
            }
            const thresholds = result[0];
            const alerts = [];
            const alertStatus = {};

            const checkThreshold = (value, threshold, param) => {
              const status = value > threshold ? 1 : 0;
              alertStatus[param] = status;
              if (status === 1) {
                alerts.push(`${param} exceeds threshold`);
              }
            };

            checkThreshold(temp1, thresholds.threshold_temp1, 'temp1');
            checkThreshold(temp2, thresholds.threshold_temp2, 'temp2');
            checkThreshold(humi1, thresholds.threshold_humi1, 'humi1');
            checkThreshold(humi2, thresholds.threshold_humi2, 'humi2');
            checkThreshold(aq1, thresholds.threshold_aq1, 'aq1');
            checkThreshold(aq2, thresholds.threshold_aq2, 'aq2');
            checkThreshold(human1, thresholds.threshold_human1, 'human1');
            checkThreshold(human2, thresholds.threshold_human2, 'human2');
            checkThreshold(U1, thresholds.threshold_voltage1, 'U1');
            checkThreshold(U2, thresholds.threshold_voltage2, 'U2');
            checkThreshold(I1, thresholds.threshold_current1, 'I1');
            checkThreshold(I2, thresholds.threshold_current2, 'I2');

            const insertAlertQuery = 'INSERT INTO alertentries (temp1, temp2, humi1, humi2, aq1, aq2, human1, human2, U1, U2, I1, I2, time) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
            connection.query(insertAlertQuery, [
              alertStatus.temp1, alertStatus.temp2, alertStatus.humi1, alertStatus.humi2,
              alertStatus.aq1, alertStatus.aq2, alertStatus.human1, alertStatus.human2,
              alertStatus.U1, alertStatus.U2, alertStatus.I1, alertStatus.I2, time
            ], (err, result) => {
              if (err) {
                console.error('Error inserting alert data into database:', err);
                response.writeHead(500, { 'Content-Type': 'application/json' });
                response.end(JSON.stringify({ message: 'Error inserting alert data into database' }));
                return;
              }
              console.log('Alert data inserted into database successfully');

              response.writeHead(200, { 'Content-Type': 'application/json' });
              response.end(JSON.stringify({
                message: 'Data inserted and checked successfully',
                alerts: alerts
              }));

              if (alerts.length > 0) {
                const alertMessage = JSON.stringify({
                  type: 'alert',
                  alerts: alerts
                });
                wss.clients.forEach(client => {
                  if (client.readyState === WebSocket.OPEN) {
                    client.send(alertMessage);
                  }
                });
              }
            });
          });
        });
      } catch (error) {
        console.error('Error parsing payload:', error);
        response.writeHead(400, { 'Content-Type': 'application/json' });
        response.end(JSON.stringify({ message: 'Error parsing payload' }));
      }
    });
  } else {
    response.writeHead(405, { 'Content-Type': 'application/json' });
    response.end(JSON.stringify({ message: 'Method Not Allowed' }));
  }
}).listen(port, hostname, () => {
  console.log(`Server is running at http://${hostname}:${port}`);
});

const wss = new WebSocket.Server({ server });

wss.on('connection', (ws) => {
  console.log('WebSocket connection established');
  ws.on('message', (message) => {
    console.log('Received:', message);
  });
  ws.on('close', () => {
    console.log('WebSocket connection closed');
  });
});

wss.on('error', (error) => {
  console.error('WebSocket server error:', error);
});
