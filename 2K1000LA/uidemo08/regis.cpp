#include "regis.h"
#include "ui_regis.h"
#include "login.h"
#include <qmessagebox.h>
#include <qstring.h>
#include <QDebug> //调试信息输出

regis::regis(QWidget *parent) : QWidget(parent),
                                ui(new Ui::regis)
{
    ui->setupUi(this);
    // this->setWindowFlag(Qt::FramelessWindowHint);
    this->setAttribute(Qt::WA_TranslucentBackground);
    ui->line_passward1->setEchoMode(QLineEdit::Password);
    ui->line_passward2->setEchoMode(QLineEdit::Password);
    ui->line_passward1->setMaxLength(7);
    ui->line_passward2->setMaxLength(7);
}

regis::~regis()
{
    db.close();
    delete ui;
}

//跳转到登陆界面
void regis::on_btn_reg_clicked()
{
    QString str1 = ui->line_passward1->text();
    QString str2 = ui->line_passward2->text();
    int i = QString::compare(str1, str2, Qt::CaseSensitive);
    if (i != 0)
    {
        QMessageBox::about(this, "警告", "两次密码不一致");
        // QMessageBox msgBox;
        // msgBox.setStyleSheet("QLabel { color : black; }");
        // msgBox.setText("两次密码不一致");
        // msgBox. exec();
        return;
    }
    QString stri = ui->line_passward2->text();
    if (stri.length() < 7)
    {
        QMessageBox::about(this, "警告", "密码位数不正确");
        return;
    }

    //数据库部分
    db = QSqlDatabase::addDatabase("QSQLITE"); //数据库驱动类型
    db.setDatabaseName("user.db");
    int flag = 1; //为1，注册，为0不注册
    bool ok = db.open();
    if (ok)
    {
        QSqlQuery query("select username from userInfo", db); //查找所有账号
        while (query.next())
        {
            if (ui->line_name->text() == query.value(0).toString())
            {
                flag = 0;
                break;
            }
        }
        if (flag)
        {
            QSqlQuery query;
            query.prepare("INSERT INTO userInfo (username, password) VALUES (:username, :password)");
            query.bindValue(":username", ui->line_name->text());
            query.bindValue(":password", ui->line_passward2->text());

            query.exec();
            QMessageBox::about(this, "提示", "用户注册成功！");
            this->hide();
            login *w = new login();
            w->show();
        }
        else
            QMessageBox::about(this, "警告", "用户已存在");
    }
    else
    {
        qDebug() << "数据库创建失败";
        exit(-1);
    }

    QString str = ui->line_passward2->text();
    if (str.length() < 7)
    {
        QMessageBox::about(this, "警告", "密码位数不正确");
        return;
    }
}
//跳转到登陆界面
void regis::on_btn_quit_clicked()
{
    login *w = new login();
    w->show();
    this->hide();
}
