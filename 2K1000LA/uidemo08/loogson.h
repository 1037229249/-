#ifndef LOOGSON_H
#define LOOGSON_H

#include <QWidget>
#include <qstring.h>
#include <qmessagebox.h>
#include <qsqlquery.h>    //执行sql语句
#include <qsqldatabase.h> //数据库驱动
#include <QDebug>         //调试信息输出
#include <QSqlTableModel>
#include <QtCharts>
#include <QSerialPort>
#include <QTimer>
#include <QtNetwork>
#include <QHostAddress>
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QTest>

class QToolButton;

namespace Ui {
class loogson;
}

class loogson : public QWidget
{
    Q_OBJECT

public:
    explicit loogson(QWidget *parent = 0);
    ~loogson();
    void InitData();
    void InitTBW1();
    void InitTBW2();
    void InitLCD();
    void InitGraph1();
    void InitGraph2();
    int  flag=0;
    QTimer *myTimer;

    void startvideo();
    void stopvideo();
    void dataReceivedVideo();
    void dataProcessVideo();

    void startwebserialport();

    //chart
    void writedata(int dev,int ifp,int vol,int cur,int pow,int tem,int hum,int smo);
    void updateData();
    int display_info(QByteArray i);
    void sendCommand();
    //历史图表
    void updateDB();
    void InitChart();

    void send();
    void OFF();
private:
    Ui::loogson *ui;

    QList<int> pixCharMain;
    QList<QToolButton *> btnsMain;

    QList<int> pixCharConfig;
    QList<QToolButton *> btnsConfig;

    QSqlDatabase db;      //数据库连接

    int index1 = 0;
    int index2 = 0;

    QChart *chart1;
    QValueAxis *axisX1;
    QValueAxis *axisY1;
    QSplineSeries *series_w1;
    QSplineSeries *series_s1;
    QSplineSeries *series_z1;
    QChart *chart2;
    QValueAxis *axisX2;
    QValueAxis *axisY2;
    QSplineSeries *series_w2;
    QSplineSeries *series_s2;
    QSplineSeries *series_z2;
    QTimer *timer1;//lora
    QTimer *timer2;
    QTimer *timer3;
    QTimer *timer4;//串口
    QLineSeries * line_w;//(折线)
    QLineSeries * line_s;
    QLineSeries * line_z;
    QChart *chart3;
    QValueAxis *axisX3;
    QValueAxis *axisY3;
    int m_x1=0;
    int m_x2=0;
//
    //QSerialPort serial;
    QSerialPort m_serialPort; //串口类
    QSerialPort web_serialPort;
    QTimer timer;
    QByteArray baRcvData;
    char i='c';
    int j=0;
    int flaglora=1;
    int flagi=0;
//写入数据
    int ifp1 = 0;
    int vol1 = 0;
    int cur1 = 0;
    int pow1 = 0;
    int dev1 = 0;
    int tem1 = 0;
    int hum1 = 0;
    int smo1 = 0;
    int ifp2 = 0;
    int vol2 = 0;
    int cur2 = 0;
    int pow2 = 0;
    int dev2 = 0;
    int tem2 = 0;
    int hum2 = 0;
    int smo2 = 0;

    //QVideo
       QQueue<QByteArray> dataQueue;           //接收数据流
       QByteArray frameData;
       QByteArray frameBuffer;
       QNetworkReply *Client = nullptr;
       QNetworkAccessManager *Manager;
       bool startflag = false;
private slots:
    void initForm();
    void buttonClick();
    void initLeftMain();
    //void initLeftConfig();
    void leftMainClick();
    void leftConfigClick();

    void slotReadData();
    void timeUpdate();

private slots:
    void on_btnMenu_Min_clicked();
    void on_btnMenu_Max_clicked();
    void on_btnMenu_Close_clicked();
    void on_btn_display_clicked();
    void on_btn_clear_clicked();
    void on_btn_search_clicked();
    void on_devcb_currentIndexChanged(int index);

    void currentIndexChangedSlot1(int index);

    void on_btn_flash_clicked();

    void InitTime();
    void on_stabtn_clicked();
    void on_stobtn_clicked();
    void on_checkBox_tem_clicked();
    void on_checkBox_hum_clicked();
    void on_checkBox_smo_clicked();
    void on_startbtn_clicked();
    void on_stopbtn_clicked();

    void on_flashbtn_clicked();

    void on_checkBox_clicked();
};

#endif
