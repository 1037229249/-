#ifndef REGIS_H
#define REGIS_H

#include <QWidget>
#include <QSqlDatabase>   //专用于连接、创建数据库
#include <QSqlQuery>      //执行sql语句，DML语句

namespace Ui {
class regis;
}

class regis : public QWidget
{
    Q_OBJECT

public:
    explicit regis(QWidget *parent = nullptr);
    ~regis();

private slots:
    void on_btn_reg_clicked();

    void on_btn_quit_clicked();

private:
    Ui::regis *ui;
    QSqlDatabase db;      //数据库连接
};

#endif // REGIS_H
