#include "login.h"
#include "ui_login.h"
#include "loogson.h"
#include "regis.h"
#include <qstring.h>
#include <qmessagebox.h>
#include <qsqlquery.h>    //执行sql语句
#include <qsqldatabase.h> //数据库驱动
#include <QDebug>         //调试信息输出

QString usern="Loongson";
login::login(QWidget *parent) : QWidget(parent),
                                ui(new Ui::login)
{
    ui->setupUi(this);
    // this->setWindowFlag(Qt::FramelessWindowHint);
    this->setAttribute(Qt::WA_TranslucentBackground);
    ui->line_passward->setEchoMode(QLineEdit::Password);
    ui->line_passward->setMaxLength(7);

    //创建数据库
    db = QSqlDatabase::addDatabase("QSQLITE"); //数据库驱动类型
    db.setDatabaseName("user.db");
    bool ok = db.open(); //打开数据库
    if (!ok)
    {
        QMessageBox::critical(0, "错误", "打开数据库失败", QMessageBox::Ok);
        return;
    }
    QSqlQuery query; //执行sql语句
    QString sql = "select * from userInfo";
    if (!query.exec(sql))
    {
        qDebug() << "userInfo不存在";                                              //输出错误信息
        sql = "create table userInfo(username varchar(20), password varchar(20))"; // varchar(20)表示最大长度为20的可变字符串
        query.exec(sql);                                                           //创建用户账号密码表
        sql = "INSERT INTO userInfo (username, password) VALUES('longxin','longxin')";
        query.exec(sql); //初始账号密码
    }
    else
    {
        qDebug() << "userInfo存在";
    }
}

login::~login()
{
    db.close(); //关闭数据库
    delete ui;
}
//跳转到主界面
void login::on_btn_inlog_clicked()
{
    QString strpass = ui->line_passward->text();
    QString strname = ui->line_name->text();
    usern=ui->line_name->text();
    if (strpass.length() == 0 || strname.length() == 0)
    {
        QMessageBox::about(this, "警告", "用户名或者密码不能为空");
        return;
    }
    if (strpass.length() < 7)
    {
        QMessageBox::about(this, "警告", "密码位数不正确");
        return;
    }

    //数据库遍历
    bool ok = db.open();
    int open_flag = 1;
    if (ok)
    {                                                                  /*select * from userInfo*/
        QSqlQuery query("select username,password from userInfo", db); //查找账号密码
        while (query.next())                                           //遍历
        {
            QString acc = query.value(0).toString();
            QString pass = query.value(1).toString();
            if (ui->line_name->text() == acc && ui->line_passward->text() == pass)
            {
                this->hide();
                loogson *w = new loogson();
                w->show();
                db.close();
                open_flag = 0;
                break;
            }
        }
        if (open_flag)
            QMessageBox::about(this, "提示", "账号或密码错误");
        /*else
        {
            qDebug() << "数据库创建失败！";
        }*/
    }
}
//跳转到注册界面
void login::on_btn_reg_clicked()
{
    regis *w = new regis();
    w->show();
    this->hide();
}
//退出程序
void login::on_btn_quit_clicked()
{
    this->close();
}
//显示密码
void login::on_checkBox_clicked(bool checked)
{
    if (checked)
    {
        //显示：Normal, NoEcho, Password, PasswordEchoOnEdit
        ui->line_passward->setEchoMode(QLineEdit::Normal);
    }
    else
    {
        //密文
        ui->line_passward->setEchoMode(QLineEdit::Password);
    }
}
