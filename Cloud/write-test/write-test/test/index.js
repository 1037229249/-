const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'p@ssw0rd',
    port: 3306,
    database: 'mydb'
});

// 创建表dtudata
const createTableQuery = `
    CREATE TABLE IF NOT EXISTS dtudata (
        id INT PRIMARY KEY AUTO_INCREMENT,
        value VARCHAR(255),
        dt TIMESTAMP
    )
`;

// 连接数据库
connection.connect();

// 执行创建表的查询
connection.query(createTableQuery, (err) => {
    if (err) {
        console.error('Error creating table:', err);
        return;
    }
    console.log('Table dtudata created successfully');

    // 假设从dtu传来的payload数据
    const payload = "{\"username\":\"dtu\",\"topic\":\"pubtopic0\",\"timestamp\":1716631146883,\"qos\":0,\"publish_received_at\":1716631146883,\"pub_props\":{\"User-Property\":{}},\"peerhost\":\"117.61.113.185\",\"payload\":\"www.usr.cn\",\"node\":\"emqx@127.0.0.1\",\"metadata\":{\"rule_id\":\"pubtopic0_WH_D\"},\"id\":\"0006194455B86AE1F4450E00131F00FB\",\"flags\":{\"retain\":false,\"dup\":false},\"event\":\"message.publish\",\"clientid\":\"12345678\"}";

    // 解析payload为JavaScript对象
    const payloadData = JSON.parse(payload);

    // 将payload数据插入到dtudata表
    connection.query('INSERT INTO dtudata SET ?', { value: payloadData.payload, dt: new Date() }, (err, result) => {
        if (err) {
            console.error('Error inserting data into dtudata:', err);
            return;
        }
        console.log('Data inserted successfully:', result);

        // 关闭数据库连接
        connection.end();
    });
});