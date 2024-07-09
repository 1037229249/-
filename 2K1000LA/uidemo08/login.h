#ifndef LOGIN_H
#define LOGIN_H

#include <QWidget>
#include <QSqlDatabase>   //专用于连接、创建数据库
#include <QSqlQuery>      //执行sql语句，DML语句

extern QString usern;

namespace Ui {
class login;
}

class login : public QWidget
{
    Q_OBJECT

public:
    explicit login(QWidget *parent = nullptr);
    ~login();

private slots:

    void on_btn_reg_clicked();

    void on_btn_quit_clicked();

    void on_checkBox_clicked(bool checked);

    void on_btn_inlog_clicked();

private:
    Ui::login *ui;
    QSqlDatabase db;      //数据库连接
};

#endif // LOGIN_H
