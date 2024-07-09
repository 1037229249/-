//#pragma execution_character_set("utf-8")

#include "loogson.h"
#include "ui_loogson.h"
#include "iconhelper.h"
#include <login.h>
#include <qstring.h>
#include <qmessagebox.h>
#include <qsqlquery.h>    //执行sql语句
#include <qsqldatabase.h> //数据库驱动
#include <QDebug>         //调试信息输出
#include <QSqlError>
#include <QSqlQueryModel>
#include <QSqlRecord>
#include <qabstractitemview.h>

#include <QtWidgets/QListWidget>

loogson::loogson(QWidget *parent) : QWidget(parent),
                                    ui(new Ui::loogson)
{
    ui->setupUi(this);
    this->initForm();
    this->initLeftMain();
    //this->initLeftConfig();

    //数据库设置
    InitData();

    InitLCD();
    InitTBW1();
    timer3 = new QTimer;
    //InitTBW2();


    // CHARTS INIT
    series_w1 = new QSplineSeries(this);
    series_s1 = new QSplineSeries(this);
    series_z1 = new QSplineSeries(this);
    series_w2 = new QSplineSeries(this);
    series_s2 = new QSplineSeries(this);
    series_z2 = new QSplineSeries(this);
    timer2 = new QTimer;
    connect(timer2, &QTimer::timeout, this, &loogson::updateData);
    timer1 = new QTimer;


    InitGraph1();
    InitGraph2();

    line_w = new QLineSeries();
    line_s = new QLineSeries();
    line_z = new QLineSeries();
    InitChart();
    //时钟刷新
    InitTime();
    myTimer = new QTimer(this);
    connect(myTimer, SIGNAL(timeout()), this, SLOT(InitTime()));
    myTimer->start(1000);

    //串口设置
    timer4 = new QTimer;

}

loogson::~loogson()
{
    db.close(); //关闭数据库
    delete ui;
}

void loogson::initForm()
{
    // ui->label->setGeometry(0, 0, 80, 70);
    this->setProperty("form", true);
    this->setProperty("canMove", true);
    this->setWindowFlags(Qt::FramelessWindowHint | Qt::WindowSystemMenuHint | Qt::WindowMinMaxButtonsHint);

    // IconHelper::Instance()->setIcon(ui->labIco, QChar(0xf073), 30);
    IconHelper::Instance()->setIcon(ui->btnMenu_Min, QChar(0xf068));
    IconHelper::Instance()->setIcon(ui->btnMenu_Max, QChar(0xf067));
    IconHelper::Instance()->setIcon(ui->btnMenu_Close, QChar(0xf00d));

    // ui->widgetMenu->setVisible(false);
    ui->widgetTitle->setProperty("form", "title");
    ui->widgetTop->setProperty("nav", "top");
    ui->labTitle->setText("龙芯工业智联分布式物联网传感系统");
    ui->labTitle->setFont(QFont("Microsoft Yahei", 20));
    // this->setWindowTitle(ui->labTitle->text());//设置窗体标题

    // ui->stackedWidget->setStyleSheet("QLabel{font:60pt;}"); //设置标签字体

    QSize icoSize(32, 32);
    int icoWidth = 85;

    //设置顶部导航按钮
    QList<QToolButton *> tbtns = ui->widgetTop->findChildren<QToolButton *>();
    foreach (QToolButton *btn, tbtns)
    {
        btn->setIconSize(icoSize);
        btn->setMinimumWidth(icoWidth);
        btn->setCheckable(true);
        connect(btn, SIGNAL(clicked()), this, SLOT(buttonClick()));
    }

    // ui->btnMain->click();
    ui->btnHelp->click(); //默认首页
    ui->widgetLeftMain->setProperty("flag", "left");
    //ui->widgetLeftConfig->setProperty("flag", "left");
    ui->page1->setStyleSheet(QString("QWidget[flag=\"left\"] QAbstractButton{min-height:%1px;max-height:%1px;}").arg(60));
    ui->page2->setStyleSheet(QString("QWidget[flag=\"left\"] QAbstractButton{min-height:%1px;max-height:%1px;}").arg(20));
}

void loogson::buttonClick()
{
    QToolButton *b = (QToolButton *)sender();
    QString name = b->text();

    QList<QToolButton *> tbtns = ui->widgetTop->findChildren<QToolButton *>();
    foreach (QToolButton *btn, tbtns)
    {
        if (btn == b)
        {
            btn->setChecked(true);
        }
        else
        {
            btn->setChecked(false);
        }
    }

    if (name == "主界面")
    {
        ui->stackedWidget->setCurrentIndex(0);
    }
    else if (name == "历史数据")
    {
        ui->stackedWidget->setCurrentIndex(1);
    }
    else if (name == "设备监控")
    {
        ui->stackedWidget->setCurrentIndex(2);
    }
    else if (name == "首页")
    {
        ui->stackedWidget->setCurrentIndex(3);
    }
    else if (name == "用户退出")
    {
        exit(0);
    }
}

void loogson::initLeftMain() //初始化左侧主界面
{
    pixCharMain << 0xf030 << 0xf03e << 0xf247;
    btnsMain << ui->tbtnMain1 << ui->tbtnMain2 << ui->tbtnMain3;

    int count = btnsMain.count();
    for (int i = 0; i < count; i++)
    {
        btnsMain.at(i)->setCheckable(true);
        btnsMain.at(i)->setToolButtonStyle(Qt::ToolButtonTextUnderIcon);

        connect(btnsMain.at(i), SIGNAL(clicked(bool)), this, SLOT(leftMainClick()));
    }

    IconHelper::Instance()->setStyle(ui->widgetLeftMain, btnsMain, pixCharMain, 15, 35, 25, "left", 4); //设置图标样式

    ui->tbtnMain1->click();
}

/*void loogson::initLeftConfig() //初始化左侧配置界面
{
    pixCharConfig << 0xf031 << 0xf036 << 0xf249 << 0xf055 << 0xf05a << 0xf249;
    btnsConfig << ui->tbtnConfig1 << ui->tbtnConfig2 << ui->tbtnConfig3 << ui->tbtnConfig4 << ui->tbtnConfig5 << ui->tbtnConfig6;

    int count = btnsConfig.count();
    for (int i = 0; i < count; i++)
    {
        btnsConfig.at(i)->setCheckable(true);
        btnsConfig.at(i)->setToolButtonStyle(Qt::ToolButtonTextBesideIcon);
        connect(btnsConfig.at(i), SIGNAL(clicked(bool)), this, SLOT(leftConfigClick()));
    }

    IconHelper::Instance()->setStyle(ui->widgetLeftConfig, btnsConfig, pixCharConfig, 10, 20, 15, "left", 5);

    ui->tbtnConfig1->click();
}*/

void loogson::leftMainClick() //左侧主界面按钮点击
{
    /*QToolButton *b = (QToolButton *)sender();
    QString name = b->text();

    int count = btnsMain.count(); //获取按钮个数
    for (int i = 0; i < count; i++)
    {
        if (btnsMain.at(i) == b)
        {
            btnsMain.at(i)->setChecked(true);
            btnsMain.at(i)->setIcon(QIcon(IconHelper::Instance()->getPixmap(btnsMain.at(i), false)));
        }
        else
        {
            btnsMain.at(i)->setChecked(false);
            btnsMain.at(i)->setIcon(QIcon(IconHelper::Instance()->getPixmap(btnsMain.at(i), true)));
        }
    }*/

    // ui->mainframe->setText(name);

    QToolButton *b = (QToolButton *)sender();
    QString name = b->text();

    /*QList<QToolButton *> tbtns = ui->widgetTop->findChildren<QToolButton *>();
    foreach (QToolButton *btn, tbtns)
    {
        if (btn == b)
        {
            btn->setChecked(true);
        }
        else
        {
            btn->setChecked(false);
        }
    }*/
    int count = btnsMain.count(); //获取按钮个数
    for (int i = 0; i < count; i++)
    {
        if (btnsMain.at(i) == b)
        {
            btnsMain.at(i)->setChecked(true);
            // btnsMain.at(i)->setIcon(QIcon(IconHelper::Instance()->getPixmap(btnsMain.at(i), false)));
        }
        else
        {
            btnsMain.at(i)->setChecked(false);
            // btnsMain.at(i)->setIcon(QIcon(IconHelper::Instance()->getPixmap(btnsMain.at(i), true)));
        }
    }
    if (name == "状态监控")
    {
        ui->stackedWidget_2->setCurrentIndex(0);
    }
    else if (name == "环境监测")
    {
        ui->stackedWidget_2->setCurrentIndex(1);
    }
    else if (name == "历史曲线")
    {
        ui->stackedWidget_2->setCurrentIndex(2);
    }
}

void loogson::leftConfigClick() //左侧配置界面按钮点击
{
    QToolButton *b = (QToolButton *)sender();
    QString name = b->text();

    int count = btnsConfig.count();
    for (int i = 0; i < count; i++)
    {
        if (btnsConfig.at(i) == b)
        {
            btnsConfig.at(i)->setChecked(true);
            btnsConfig.at(i)->setIcon(QIcon(IconHelper::Instance()->getPixmap(btnsConfig.at(i), false)));
        }
        else
        {
            btnsConfig.at(i)->setChecked(false);
            btnsConfig.at(i)->setIcon(QIcon(IconHelper::Instance()->getPixmap(btnsConfig.at(i), true)));
        }
    }

    if (name == "历史图表")
    {
        ui->stackedWidget_3->setCurrentIndex(0);
    }
    else if (name == "访问记录")
    {
        ui->stackedWidget_3->setCurrentIndex(1);
    }

    // ui->lab2->setText(name);
}


void loogson::on_btnMenu_Min_clicked()
{
    showMinimized();
}

void loogson::on_btnMenu_Max_clicked()
{
    static bool max = false;
    static QRect location = this->geometry(); //获取当前窗口位置

    if (max) //如果当前是最大化，就恢复原来的位置
    {
        this->setGeometry(location);
    }
    else
    {
        location = this->geometry();                             //记录下当前窗口位置
        this->setGeometry(qApp->primaryScreen()->geometry()); //最大化窗口
    }

    this->setProperty("canMove", max); //设置鼠标跟踪属性
    max = !max;
}

void loogson::on_btnMenu_Close_clicked()
{
    close();
}

// Database初始化
void loogson::InitData()
{
    db = QSqlDatabase::addDatabase("QSQLITE");
    db.setDatabaseName("Data.db");
    if (db.open())
    {
        qDebug() << "sqlitedata连接成功";
    }
    else
    {
        qDebug() << "sqlitedata连接失败";
        return;
    }
    QSqlQuery query;
    QString sql = " create table loongson(deviceid varchar(20),time varchar(20),ifpeople varchar(20),voltage varchar(20),current varchar(20) "
                  ",power varchar(20),temperature varchar(20),humidty varchar(20),smoke varchar(20)) ";
    if (!query.exec(sql))
    {
        qDebug() << "loongson不存在" << endl;
    }
}

void loogson::InitTBW1()
{
    //初始化
    ui->tableWidget->setColumnCount(9);
    QStringList horizontalList;
    horizontalList << "设备序号";
    horizontalList << "时间";
    horizontalList << "是否有人";
    horizontalList << "电压";
    horizontalList << "电流";
    horizontalList << "功率";
    horizontalList << "温度";
    horizontalList << "湿度";
    horizontalList << "烟雾浓度";
    ui->tableWidget->setHorizontalHeaderLabels(horizontalList);
    //大图表header设置
    ui->tableWidget->horizontalHeader()->setSectionResizeMode(QHeaderView::Stretch); //自动填充
    ui->tableWidget->horizontalHeader()->setSectionResizeMode(0, QHeaderView::ResizeToContents);
    ui->tableWidget->horizontalHeader()->setSectionResizeMode(2, QHeaderView::ResizeToContents);

    ui->tableWidget->verticalHeader()->setDefaultSectionSize(60); // setSectionResizeMode(QHeaderView::Stretch)

    //检测
    if (QSqlDatabase::contains("qt_sql_default_connection"))
    {
        db = QSqlDatabase::database("qt_sql_default_connection");
        qDebug() << "存在";
    }
    else
    {
        db = QSqlDatabase::addDatabase("QSQLITE");
        qDebug() << "不存在";
    }

    /*
     QString tableName = "loongson";
    QSqlQuery query;
    query.exec(QString("select * from %1").arg(tableName)); //查询表中的所有数据
    int row = 0;
    while (query.next())
    {
        ui->tableWidget->setRowCount(row + 1);
        for (int column = 0; column < query.record().count(); column++)
        {
            QTableWidgetItem *item = new QTableWidgetItem(query.value(column).toString());
            ui->tableWidget->setItem(row, column, item);
        }
        row++;
    }
    ui->tableWidget->setEditTriggers(QAbstractItemView::NoEditTriggers); //设置不可编辑
    */
    // combox1
    QStringList strList;
    strList << "设备1"
            << "设备2";
    ui->devcb->addItems(strList);
    // combox2
    QStringList strList2;
    strList2 << "电压"
             << "电流"
             << "功率"
             << "温度"
             << "湿度"
             << "烟雾浓度";
    ui->temcb->addItems(strList2);
    connect(ui->temcb, QOverload<int>::of(&QComboBox::currentIndexChanged), this, &loogson::currentIndexChangedSlot1);
    // label_20
    ui->label_20->setText(usern);
}

void loogson::InitTBW2()
{
    ui->tableWidget_2->setColumnCount(4);
    QStringList horizontalList;
    horizontalList << "设备序号";
    horizontalList << "时间";
    horizontalList << "温度";
    horizontalList << "湿度";
    horizontalList << "烟雾浓度";
    ui->tableWidget_2->setHorizontalHeaderLabels(horizontalList);
    //小图表
    ui->tableWidget_2->horizontalHeader()->setSectionResizeMode(QHeaderView::Stretch);
    ui->tableWidget_2->horizontalHeader()->setSectionResizeMode(0, QHeaderView::ResizeToContents);
    ui->tableWidget_2->verticalHeader()->setDefaultSectionSize(60); // setSectionResizeMode(QHeaderView::Stretch)
    //检测
    if (QSqlDatabase::contains("qt_sql_default_connection"))
    {
        db = QSqlDatabase::database("qt_sql_default_connection");
        qDebug() << "存在";
    }
    else
    {
        db = QSqlDatabase::addDatabase("QSQLITE");
        qDebug() << "不存在";
    }

    QString tableName = "loongson";
    QSqlQuery query;
    query.exec(QString("select * from %1 WHERE temperature >= 32 OR humidty >= 80 OR smoke >= 50000" ).arg(tableName)); //查询表中的所有数据
    int row = 0;
    while (query.next())
    {
        ui->tableWidget_2->setRowCount(row + 1);
        for (int column = 0; column < query.record().count(); column++)
        {
            if (column < 2 || column > 5)
            {
                if (column < 2)
                {
                    QTableWidgetItem *item = new QTableWidgetItem(query.value(column).toString());
                    ui->tableWidget_2->setItem(row, column, item);
                }
                else
                {
                    QTableWidgetItem *item = new QTableWidgetItem(query.value(column).toString());
                    ui->tableWidget_2->setItem(row, column - 4, item);
                }
            }
        }
        row++;
    }
    ui->tableWidget_2->setEditTriggers(QAbstractItemView::NoEditTriggers); //设置不可编辑
}

void loogson::on_btn_display_clicked()
{

    QString tableName = "loongson";
    QSqlQuery query;
    query.exec(QString("select * from %1").arg(tableName)); //查询表中的所有数据

    int row = 0;
    while (query.next())
    {
        ui->tableWidget->setRowCount(row + 1);
        for (int column = 0; column < query.record().count(); column++)
        {
            QTableWidgetItem *item = new QTableWidgetItem(query.value(column).toString());
            ui->tableWidget->setItem(row, column, item);
        }
        row++;
    }
    ui->tableWidget->setEditTriggers(QAbstractItemView::NoEditTriggers); //设置不可编辑
}

void loogson::on_btn_clear_clicked()
{
    QSqlQuery query;
    // query.exec("delete from loongson");
    ui->tableWidget->clearContents();
    flag = 1;
}

void loogson::on_btn_search_clicked()
{
    QString input_name = ui->datalineEdit->text();
    int column_search = index1 + 3;
    int row_num = ui->tableWidget->rowCount();
    for (int i = 0; i < row_num; i++)
    {
        ui->tableWidget->setRowHidden(i, false); //为false就是显示
    }
    if (input_name == "") //判断是否是空，如果是空就显示所有行
    {
        for (int i = 0; i < row_num; i++)
        {
            ui->tableWidget->setRowHidden(i, false); //为false就是显示
        }
    }
    else
    {

        if (ui->tableWidget->item(0, column_search)->text() == input_name)
            qDebug() << column_search;
        if (ui->tableWidget->item(0, 0)->text() == QString::number(index2 + 1))
            qDebug() << index2;
        //然后把所有行都隐藏
        for (int i = 0; i < row_num; i++)
        {
            if (ui->tableWidget->item(i, column_search)->text() == input_name && ui->tableWidget->item(i, 0)->text() == QString::number(index2 + 1))
                continue;
            else
                ui->tableWidget->setRowHidden(i, true); //隐藏
        }
    }
}

void loogson::on_devcb_currentIndexChanged(int index)
{
    index2 = index;
    qDebug() << index2;
}
void loogson::currentIndexChangedSlot1(int index)
{
    index1 = index;
    qDebug() << index1;
}

void loogson::on_btn_flash_clicked()
{
    QString tableName = "loongson";
    QSqlQuery query;
    query.exec(QString("select * from %1").arg(tableName)); //查询表中的所有数据
    int row = 0;
    while (query.next())
    {
        ui->tableWidget->setRowCount(row + 1);
        for (int column = 0; column < query.record().count(); column++)
        {
            QTableWidgetItem *item = new QTableWidgetItem(query.value(column).toString());
            ui->tableWidget->setItem(row, column, item);
        }
        row++;
    }
    ui->tableWidget->setEditTriggers(QAbstractItemView::NoEditTriggers); //设置不可编辑
}
void loogson::InitTime()
{
    ui->label_time1->setText(QTime::currentTime().toString("hh:mm:ss"));
    ui->label_time2->setText(QDateTime::currentDateTime().toString("yyyy-MM-dd ddd"));
}
void loogson::InitLCD()
{
    ui->lcdNumber_1->setDigitCount(4);                    //显示位数
    ui->lcdNumber_1->setMode(QLCDNumber::Dec);            //十进制
    ui->lcdNumber_1->setSegmentStyle(QLCDNumber::Filled); //显示方式Outline, Filled, Flat

    ui->lcdNumber_2->setDigitCount(4);                    //显示位数
    ui->lcdNumber_2->setMode(QLCDNumber::Dec);            //十进制
    ui->lcdNumber_2->setSegmentStyle(QLCDNumber::Filled); //显示方式Outline, Filled, Flat

    ui->lcdNumber_3->setDigitCount(4);                    //显示位数
    ui->lcdNumber_3->setMode(QLCDNumber::Dec);            //十进制
    ui->lcdNumber_3->setSegmentStyle(QLCDNumber::Filled); //显示方式Outline, Filled, Flat

    ui->lcdNumber_4->setDigitCount(4);                    //显示位数
    ui->lcdNumber_4->setMode(QLCDNumber::Dec);            //十进制
    ui->lcdNumber_4->setSegmentStyle(QLCDNumber::Filled); //显示方式Outline, Filled, Flat

    ui->lcdNumber_5->setDigitCount(4);                    //显示位数
    ui->lcdNumber_5->setMode(QLCDNumber::Dec);            //十进制
    ui->lcdNumber_5->setSegmentStyle(QLCDNumber::Filled); //显示方式Outline, Filled, Flat

    ui->lcdNumber_6->setDigitCount(4);                    //显示位数
    ui->lcdNumber_6->setMode(QLCDNumber::Dec);            //十进制
    ui->lcdNumber_6->setSegmentStyle(QLCDNumber::Filled); //显示方式Outline, Filled, Flat
                                                          //监测部分
    ui->lcdNumber_tem->setDigitCount(4);                  //显示位数
    ui->lcdNumber_tem->setMode(QLCDNumber::Dec);          //十进制
    ui->lcdNumber_tem->setSegmentStyle(QLCDNumber::Flat); //显示方式Outline, Filled, Flat
    ui->lcdNumber_tem->display(32);

    ui->lcdNumber_hum->setDigitCount(4);                  //显示位数
    ui->lcdNumber_hum->setMode(QLCDNumber::Dec);          //十进制
    ui->lcdNumber_hum->setSegmentStyle(QLCDNumber::Flat); //显示方式Outline, Filled, Flat
    ui->lcdNumber_hum->display(80);

    ui->lcdNumber_smo->setDigitCount(5);                  //显示位数
    ui->lcdNumber_smo->setMode(QLCDNumber::Dec);          //十进制
    ui->lcdNumber_smo->setSegmentStyle(QLCDNumber::Flat); //显示方式Outline, Filled, Flat
    ui->lcdNumber_smo->display(50000);
}

//---------------------------------- video部分--------------------------------------
void loogson::startvideo()
{
    if (startflag)
    {
        return;
    }

    //启动视频流传输前，需要检查IP地址是否有效
    QString ipAddress = "172.20.10.3";
    //视频流的http请求命令格式
    QNetworkRequest request;
    //  QString url="http://" + ipAddress + ":46221//mjpeg/1";
    QString url = "http://" + ipAddress + "/mjpeg/1"; //: 80/
    request.setUrl(QUrl(url));
    request.setRawHeader("Connection", "Keep-Alive");
    request.setRawHeader("User-Agent", "1601");

    Manager = new QNetworkAccessManager();
    Client = Manager->get(request);

    connect(Client, &QNetworkReply::readyRead, this, &loogson::dataReceivedVideo);

    startflag = true;

    qDebug() << url;
}

void loogson::stopvideo()
{
    qDebug() << "===== STOP =====";
    if (!startflag)
    { //防止反复触发停止视频流
        return;
    }

    Client->close();
    Client->deleteLater();
    startflag = false;
}

void loogson::dataReceivedVideo()
{
    QByteArray buffer = Client->readAll();
    QString data(buffer);

    //对接收的到的数据放到队列中
    int pos = data.indexOf("Content-Type");
    if (pos != -1)
    {
        frameData.append(buffer.left(pos));
        dataQueue.enqueue(frameData);
        frameData.clear();
        frameData.append(buffer.mid(pos));
    }
    else
    {
        frameData.append(buffer);
    }

    //触发void dataProcess()函数，合成图片和显示
    if (!dataQueue.isEmpty())
    {
        frameBuffer = dataQueue.dequeue();
        dataProcessVideo();
    }
}

void loogson::dataProcessVideo()
{
    QString data = QString::fromUtf8(frameBuffer.data(), 50); //截取前面50个字符
    const QString lengthKeyword = "Content-Length: ";

    int lengthIndex = data.indexOf(lengthKeyword);
    if (lengthIndex >= 0)
    {
        int endIndex = data.indexOf("\r\n", lengthIndex);
        int length = data.midRef(lengthIndex + 16, endIndex - (lengthIndex + 16 - 1)).toInt(); //取出Content-Length后的数字
        QPixmap pixmap;
        auto loadStatus = pixmap.loadFromData(frameBuffer.mid(endIndex + 4, length));

        //合成失败
        if (!loadStatus)
        {
            qDebug() << "Video failed";
            frameBuffer.clear();
            return;
        }
        frameBuffer.clear();
        QPixmap pps = pixmap.scaled(ui->label_video->width(), ui->label_video->height(), Qt::IgnoreAspectRatio, Qt::SmoothTransformation);
        ui->label_video->setPixmap(pps);
    }
}

void loogson::on_startbtn_clicked()
{
    startvideo();
    ui->startbtn->setEnabled(false);
    ui->stopbtn->setEnabled(true);
}

void loogson::on_stopbtn_clicked()
{
    stopvideo();
    ui->startbtn->setEnabled(true);
    ui->stopbtn->setEnabled(false);
}

void loogson::InitGraph1()//X(0-30),Y(0-300)
{
    QPen blue;
    blue.setWidth(2); //线条宽度
    series_w1->setPen(blue);
    QPen red;
    red.setWidth(2);
    series_s1->setPen(red);
    QPen green;
    green.setWidth(2);
    series_z1->setPen(green);

    axisX1 = new QValueAxis();
    axisY1 = new QValueAxis();
    axisX1->setTitleText("time(0.5s)");
    axisX1->setRange(0, 30);
    axisX1->setTickCount(7);          //大刻度线有7条，把30分成了6份
    axisX1->setMinorTickCount(4);     // 2个大刻度线之间有4条小刻度线，分成了5份
    axisX1->setGridLineVisible(true); //设置是否显示网格线
    axisY1->setRange(0, 300);
    axisY1->setTitleText("value");
    chart1 = new QChart();

    series_w1->setName("Voltage");
    series_s1->setName("Electricity");
    series_z1->setName("Power");

    series_s1->setPointsVisible(true); //线由点构成
    series_w1->setPointsVisible(true);
    series_z1->setPointsVisible(true);
    series_s1->setColor(QColor(255, 0, 0));
    series_w1->setColor(QColor(22, 33, 250));
    series_z1->setColor(QColor(0, 170, 0));

    chart1->addSeries(series_w1); //向图表中添加线
    chart1->addSeries(series_s1);
    chart1->addSeries(series_z1);

    //chart1->createDefaultAxes();
    chart1->setTitle("设备一电压电流功率实时变化");
    // chart->setTheme(QChart::ChartThemeQt);
    chart1->legend()->setVisible(true);
    chart1->setTitleFont(QFont("微软雅黑"));
/*
    chart1->setAxisX(axisX1, series_w1); //添加坐标轴,必须再addseries后调用
    chart1->setAxisY(axisY1, series_w1);
    chart1->setAxisX(axisX1, series_s1);
    chart1->setAxisY(axisY1, series_s1);
    chart1->setAxisX(axisX1, series_z1); //添加坐标轴,必须再addseries后调用
    chart1->setAxisY(axisY1, series_z1);
*/

        chart1->addAxis(axisX1, Qt::AlignBottom);
        chart1->addAxis(axisY1, Qt::AlignLeft);
        series_w1->attachAxis(axisX1);
        series_w1->attachAxis(axisY1);
        series_s1->attachAxis(axisX1);
        series_s1->attachAxis(axisY1);
        series_z1->attachAxis(axisX1);
        series_z1->attachAxis(axisY1);


    chart1->setAnimationOptions(QChart::AllAnimations);
    ui->chart_1->setChart(chart1); //把图表固定到视图，先把widget提升为QChartView
}

void loogson::InitGraph2()
{
    QPen blue;
    blue.setWidth(2); //线条宽度
    series_w2->setPen(blue);
    QPen red;
    red.setWidth(2);
    series_s2->setPen(red);
    QPen green;
    green.setWidth(2);
    series_z2->setPen(green);

    axisX2 = new QValueAxis();
    axisY2 = new QValueAxis();
    axisX2->setTitleText("time(0.5s)");

    axisX2->setTickCount(7);          //大刻度线有7条，把30分成了6份
    axisX2->setMinorTickCount(4);     // 2个大刻度线之间有4条小刻度线，分成了5份
    axisX2->setGridLineVisible(true); //设置是否显示网格线
    axisX2->setRange(0, 30);
    axisY2->setRange(0, 300);
    axisY2->setTitleText("value");
    chart2 = new QChart();

    series_w2->setName("Voltage");
    series_s2->setName("Electricity");
    series_z2->setName("Power");

    series_s2->setPointsVisible(true); //线由点构成
    series_w2->setPointsVisible(true);
    series_z2->setPointsVisible(true);
    series_s2->setColor(QColor(255, 0, 0));
    series_w2->setColor(QColor(22, 33, 250));
    series_z2->setColor(QColor(0, 170, 0));

    chart2->addSeries(series_w2); //向图表中添加线
    chart2->addSeries(series_s2);
    chart2->addSeries(series_z2);

    //chart2->createDefaultAxes();//创建默认坐标轴
    chart2->setTitle("设备二电压电流功率实时变化");
    // chart->setTheme(QChart::ChartThemeQt);
    chart2->legend()->setVisible(true);
    chart2->setTitleFont(QFont("微软雅黑"));

/*    chart2->setAxisX(axisX2, series_w2); //添加坐标轴,必须再addseries后调用
    chart2->setAxisY(axisY2, series_w2);
    chart2->setAxisX(axisX2, series_s2);
    chart2->setAxisY(axisY2, series_s2);
    chart2->setAxisX(axisX2, series_z2); //添加坐标轴,必须再addseries后调用
    chart2->setAxisY(axisY2, series_z2);
*/

        chart2->addAxis(axisX2, Qt::AlignBottom);
        chart2->addAxis(axisY2, Qt::AlignLeft);

        series_w2->attachAxis(axisX2);
        series_w2->attachAxis(axisY2);

        series_s2->attachAxis(axisX2);
        series_s2->attachAxis(axisY2);

        series_z2->attachAxis(axisX2);
        series_z2->attachAxis(axisY2);


    chart2->setAnimationOptions(QChart::AllAnimations);
    ui->chart_2->setChart(chart2); //把图表固定到视图，先把widget提升为QChartView
}
void loogson::startwebserialport()
{
    //connect(&web_serialPort,&QSerialPort::readyRead,this,&loogson::display_info);//接受反馈数据
      //判断串口是否打开
      if (web_serialPort.isOpen())
      {
          web_serialPort.close();
          qDebug() << "close";
          if (timer.isActive())
              timer.stop();
          return;
      }
      //设置串口名
      //web_serialPort.setPortName("COM2");//windows端测试
      web_serialPort.setPortName("ttyS2");
      //设置波特率
      web_serialPort.setBaudRate(QSerialPort::Baud115200);
      //设置数据位
      web_serialPort.setDataBits(static_cast<QSerialPort::DataBits>(QSerialPort::Data8));
      //设置校验位
      web_serialPort.setParity(static_cast<QSerialPort::Parity>(QSerialPort::NoParity));
      //设置停止位
      web_serialPort.setStopBits(static_cast<QSerialPort::StopBits>(QSerialPort::OneStop));

      //打开串口
      if (!web_serialPort.open(QIODevice::ReadWrite))
      {
          QMessageBox::warning(this, "warning", "open failed" + web_serialPort.errorString());
          return;
      }
      else
      {
          qDebug() << "ttyS2 open";
      }
}
void loogson::slotReadData()
{
    timer4->start(100);//启动定时器，接收100毫秒数据（根据情况设定）
    baRcvData.append(m_serialPort.readAll());
}

void loogson::timeUpdate()
{
        timer4->stop();
        if(baRcvData.length()!=0)
        {
            //qDebug()<<baRcvData;
            display_info(baRcvData);
        }
        baRcvData.clear();
}
void loogson::on_stabtn_clicked()
{
    timer1->start(1200);//计时1.2s向lora发一次start


    connect(timer1, &QTimer::timeout, this, &loogson::send);

   // startwebserialport();  //龙芯派dtu连接

    timer2->start(500); //图表刷新
    ui->stobtn->setEnabled(true);
    ui->stabtn->setEnabled(false);

    //connect(&m_serialPort,&QSerialPort::readyRead,this,&loogson::display_info);//接受反馈数据
    connect(&m_serialPort, SIGNAL(readyRead()), this, SLOT(slotReadData()));
    connect(timer4, SIGNAL(timeout()), this, SLOT(timeUpdate()));

    //判断串口是否打开
    if (m_serialPort.isOpen())
    {
        m_serialPort.close();
        qDebug() << "close";
        if (timer.isActive())
            timer.stop();
        return;
    }
    //设置串口名
    m_serialPort.setPortName("COM3");//windows测试
    //m_serialPort.setPortName("ttyS1");
    //设置波特率
    m_serialPort.setBaudRate(QSerialPort::Baud115200);
    //设置数据位
    m_serialPort.setDataBits(static_cast<QSerialPort::DataBits>(QSerialPort::Data8));
    //设置校验位
    m_serialPort.setParity(static_cast<QSerialPort::Parity>(QSerialPort::NoParity));
    //设置停止位
    m_serialPort.setStopBits(static_cast<QSerialPort::StopBits>(QSerialPort::OneStop));

    //打开串口
    if (!m_serialPort.open(QIODevice::ReadWrite))
    {
        QMessageBox::warning(this, "warning", "open failed" + m_serialPort.errorString());
        return;
    }
    else
    {
        qDebug() << "ttyS1 open";
    }
}

void loogson::on_stobtn_clicked()
{

    timer1->stop();
    timer2->stop();
    disconnect(timer1, &QTimer::timeout, this, &loogson::send);
    ui->stobtn->setEnabled(false);
    ui->stabtn->setEnabled(true);

    m_serialPort.close();
    web_serialPort.close();
    qDebug() << "close";
    //结束
}
void loogson::InitChart()
{
    QPen blue;
    blue.setWidth(2); //线条宽度
    line_w->setPen(blue);
    QPen red;
    red.setWidth(2);
    line_s->setPen(red);
    QPen green;
    green.setWidth(2);
    line_z->setPen(green);

    axisX3 = new QValueAxis();
    axisY3 = new QValueAxis();
    axisX3->setTitleText("time(0.5s)");
    axisY3->setTitleText("value");
    chart3 = new QChart();
    line_w->setName("Voltage");
    line_s->setName("Electricity");
    line_z->setName("Power");
    line_s->setPointsVisible(true); //线由点构成
    line_w->setPointsVisible(true);
    line_z->setPointsVisible(true);
    line_s->setColor(QColor(255, 2, 1));
    line_w->setColor(QColor(22, 33, 250));
    line_z->setColor(QColor(0, 170, 0));

    chart3->addSeries(line_w); //向图表中添加线
    chart3->addSeries(line_s);
    chart3->addSeries(line_z);

    //chart3->createDefaultAxes(); //设置网格
    chart3->setTitle("电压电流功率变化");
    // chart->setTheme(QChart::ChartThemeQt);
    chart3->legend()->setVisible(true);
    chart3->setTitleFont(QFont("微软雅黑"));
/*
    chart3->setAxisX(axisX3, line_w); //添加坐标轴,必须再addseries后调用
    chart3->setAxisY(axisY3, line_w);
    chart3->setAxisX(axisX3, line_s);
    chart3->setAxisY(axisY3, line_s);
    chart3->setAxisX(axisX3, line_z);
    chart3->setAxisY(axisY3, line_z);
*/
    chart3->addAxis(axisX3, Qt::AlignBottom);
    chart3->addAxis(axisY3, Qt::AlignLeft);
    line_w->attachAxis(axisX3);
    line_w->attachAxis(axisY3);
    line_s->attachAxis(axisX3);
    line_s->attachAxis(axisY3);
    line_z->attachAxis(axisX3);
    line_z->attachAxis(axisY3);

    ui->widget_4->setChart(chart3); //把图表固定到视图，先把widget提升为QChartView
}

void loogson::send()
{
    //lora1
    if(i>'f')
        i-=4;
        //auto dataStr1 = QString("%1#start$").arg(i);//32
        auto dataStr1 = QString("%1ON").arg(i);//1c102
        auto hexData = dataStr1.toLocal8Bit().toHex(' ').toUpper();
        hexData.append(' ');
        QByteArray by1 = dataStr1.toLatin1();
        hexData.append(' ');
        m_serialPort.write(by1);

        qDebug()<<dataStr1;

        dataStr1.clear();
        i++;

}

void loogson::OFF()
{
    if(j>3)
        j-=4;
        j++;
        auto dataStr2 = QString("OFF%1").arg(i);
        QByteArray by1 = dataStr2.toLatin1();
        m_serialPort.write(by1);
}

void loogson::on_checkBox_tem_clicked()
{
    if (ui->checkBox_tem->isChecked())
    {
        line_w->show();
    }
    else
    {
        line_w->hide();
    }
}

void loogson::on_checkBox_hum_clicked()
{
    if (ui->checkBox_hum->isChecked())
    {
        line_s->show();
    }

    else
    {
        line_s->hide();
    }
}

void loogson::on_checkBox_smo_clicked()
{
    if (ui->checkBox_smo->isChecked())
    {
        line_z->show();
    }

    else
    {
        line_z->hide();
    }
}

void loogson::writedata(int dev, int ifp, int vol, int cur, int pow, int tem, int hum, int smo)
{
    QDateTime dateTime= QDateTime::currentDateTime();//获取系统当前的时间
    QString str = dateTime .toString("yyyy-MM-dd hh:mm:ss");//格式化时间

    QSqlQuery query;
    QString sqlquery = QString("INSERT INTO loongson values('%1','%2','%3','%4','%5','%6','%7','%8','%9')").arg(dev).arg(str).arg(ifp).arg(vol).arg(cur).arg(pow).arg(tem).arg(hum).arg(smo); //插入一个数据
    qDebug()<<str;
    query.exec(sqlquery);
}

void loogson::updateData()
{
    /*ui->stabtn->setEnabled(true);
    ui->stobtn->setEnabled(false);
    */
    QString tableName = "loongson";
    QSqlQuery query;
    query.exec(QString("select deviceid,voltage,current,power from %1").arg(tableName)); //查询表中的所有数据
    if (query.last()) //指向数据库中最后一条数据
    {
        int dev = query.value("deviceid").toInt();
        if (dev == 1)
        {
            static int id = 0; //保证每次启动程序后实时曲线的横坐标为0开始，静态值保证每次进函数后id从上一次调用后的值自增下去
            int vol = query.value("voltage").toInt();
            int cur = query.value("current").toInt();
            int pow = query.value("power").toInt();

            series_w1->append(id, vol);
            series_s1->append(id, cur);
            series_z1->append(id, pow);

            id++;

            m_x1++;
            // qDebug()<<m_x;
            if (m_x1 > 30)
                chart1->scroll(20, 0); //一次向右移动坐标轴,20是窗口像素大小qreal，即chart->plotArea().width()/(axisX->tickCount()*2);
            qDebug() << "dev1";
        }
        else if (dev == 2)
        {

            static int id = 0; //保证每次启动程序后实时曲线的横坐标为0开始，静态值保证每次进函数后id从上一次调用后的值自增下去
            int vol = query.value("voltage").toInt();
            int cur = query.value("current").toInt();
            int pow = query.value("power").toInt();

            series_w2->append(id, vol);
            series_s2->append(id, cur);
            series_z2->append(id, pow);

            id++;
            m_x2++;
            // qDebug()<<m_x;
            if (m_x2 > 30)

                chart2->scroll(20, 0); //一次向右移动坐标轴,20是窗口像素大小qreal，即chart->plotArea().width()/(axisX->tickCount()*2);
            qDebug() << "dev2";
        }
    }
}

int loogson::display_info(QByteArray m)
{

//lora1
    QByteArray ba1;
    ba1 = m;
    qDebug()<<ba1;
    qDebug()<<i;
//设备一lora1
if(flaglora==1 && i=='d')//先send再+
{
    QString str1 = ba1.mid(0, 1);//1位 设备号
    QString str6 = ba1.mid(1, 2);//2位 温度
    QString str7 = ba1.mid(3, 2);//2位 湿度
    QString str8 = ba1.mid(5, 3);//3位 可燃气体浓度
    dev1 = str1.toInt(0, 10);
    tem1 = str6.toInt(0, 10);
    hum1 = str7.toInt(0, 10);
    smo1 = str8.toInt(0, 10);
    //OFF();
    ui->lcdNumber_1->display(tem1);
    ui->lcdNumber_2->display(hum1);
    ui->lcdNumber_3->display(smo1);
    qDebug()<<dev1;
    qDebug()<<tem1;
    qDebug()<<hum1;
    qDebug()<<smo1;
    flagi=1;
}

//设备一lora2
if(flaglora==2 && i=='e')
{
    QString str2 = ba1.mid(0, 1);//1位 是否有人
    QString str3 = ba1.mid(1, 3);//3位 电压
    QString str4 = ba1.mid(4, 3);//3位 电流
    QString str5 = ba1.mid(7, 2);//2位 功率
    ifp1 = str2.toInt(0, 10);
    vol1 = str3.toInt(0, 10);
    cur1 = str4.toInt(0, 10);
    pow1 = str5.toInt(0, 10);
    //OFF();
    ui->lcdNumber_7->display(vol1);
    ui->lcdNumber_8->display(cur1);
    ui->lcdNumber_9->display(pow1);
    qDebug()<<ifp1;
    qDebug()<<vol1;
    qDebug()<<cur1;
    qDebug()<<pow1;
if(flagi==1)
{
    writedata(dev1,ifp1,vol1,cur1,pow1,tem1,hum1,smo1);
}
flagi=0;
}
//设备2lora3

if(flaglora==3 && i=='f')
{
    QString str1 = ba1.mid(0, 1);//1位 设备号
    QString str6 = ba1.mid(1, 2);//2位 温度
    QString str7 = ba1.mid(3, 2);//2位 湿度
    QString str8 = ba1.mid(5, 3);//3位 可燃气体浓度
    dev2 = str1.toInt(0, 10);
    tem2 = str6.toInt(0, 10);
    hum2 = str7.toInt(0, 10);
    smo2 = str8.toInt(0, 10);
    OFF();
    ui->lcdNumber_4->display(tem2);
    ui->lcdNumber_5->display(hum2);
    ui->lcdNumber_6->display(smo2);
    qDebug()<<dev2;
    qDebug()<<tem2;
    qDebug()<<hum2;
    qDebug()<<smo2;
    flagi=1;
}
//设备2lora4
if(flaglora==4 && i=='g')
{
    QString str2 = ba1.mid(0, 1);//1位 是否有人
    QString str3 = ba1.mid(1, 3);//2位 电压
    QString str4 = ba1.mid(4, 3);//2位 电流
    QString str5 = ba1.mid(7, 2);//2位 功率
    ifp2 = str2.toInt(0, 10);
    vol2 = str3.toInt(0, 10);
    cur2 = str4.toInt(0, 10);
    pow2 = str5.toInt(0, 10);
    OFF();
    ui->lcdNumber_10->display(vol2);
    ui->lcdNumber_11->display(cur2);
    ui->lcdNumber_12->display(pow2);
    qDebug()<<ifp2;
    qDebug()<<vol2;
    qDebug()<<cur2;
    qDebug()<<pow2;
    if(flagi==1)
    {
        writedata(dev2,ifp2,vol2,cur2,pow2,tem2,hum2,smo2);
        auto dataStr = QString("%1.%2.%3.%4.%5.%6.%7.%8.%9.%10.%11.%12").arg(tem1).arg(tem2).arg(hum1).arg(hum2).arg(smo1).arg(smo2).arg(vol1).arg(vol2).arg(cur1).arg(cur2).arg(ifp1).arg(ifp2);
        QByteArray by = dataStr.toLatin1();
        web_serialPort.write(by);
    }
    flagi=0;
}

    // ba.toHex()这一步很关键，没有这一步显示的是乱码
    //    info_text("接受数据为:"+Delimited_Arrary(ba.toHex()));
   // connect(&m_serialPort,&QSerialPort::readyRead,this,&loogson::display_info);
    qDebug()<< "进入次数" <<flaglora;
    flaglora++;
    if(flaglora>4)
        flaglora-=4;
    ba1.clear();
    return 0;
}

void loogson::sendCommand()
{
    QByteArray sendByte;//协议根据下位机来定
       sendByte.resize(8);
       sendByte[0]=0Xcc;//帧头
       sendByte[1]=0X01;//从站地址
       sendByte[2]=0X0d;//功能码
       sendByte[3]=0X01;//数据个数
       sendByte[4]=0X00;//数据
       sendByte[5]=0X00;//校验，根据数据，由CRC算法自动生成
       sendByte[6]=0X00;//校验
       sendByte[7]=0Xcd;//帧尾

       qint64 ref;
       ref = m_serialPort.write(sendByte);
}

void loogson::updateDB()
{
    QString tableName = "loongson";
    QSqlQuery query;
    query.exec(QString("select voltage,current,power from %1").arg(tableName)); //查询表中的所有数据
    int row = 0;
    QStringList v;
    QStringList c; //不能放进循环里
    QStringList p;
    // qDebug()<<query.value("temperature").toString();//为空
    while (query.next())
    {

        v << query.value("voltage").toString();
        line_w->append(row + 1, v.at(row).toUInt()); //坐标

        c << query.value("current").toString();
        line_s->append(row + 1, c.at(row).toUInt());

        p << query.value("power").toString();
        line_z->append(row + 1, p.at(row).toUInt());

        row++;
    }
}

void loogson::on_flashbtn_clicked()
{
    ui->checkBox_tem->setCheckState(Qt::Checked);
    ui->checkBox_hum->setCheckState(Qt::Checked);
    ui->checkBox_smo->setCheckState(Qt::Checked);
    line_w = new QLineSeries();
    line_s = new QLineSeries();
    line_z = new QLineSeries();
    updateDB();
    InitChart();
}


void loogson::on_checkBox_clicked()
{
    if (ui->checkBox->isChecked())
    {
        //定时刷新图表二
        timer3->start(1000);
        connect(timer3, &QTimer::timeout, this, &loogson::InitTBW2);
    }
    else
    {
        timer3->stop();
    }
}
