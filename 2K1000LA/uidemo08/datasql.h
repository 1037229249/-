#ifndef DATASQL_H
#define DATASQL_H

#include <QObject>
#include <QDialog>
#include <QSqlDatabase>   //专用于连接、创建数据库
#include <QSqlQuery>      //执行sql语句，DML语句
#include <QSqlError>      //错误信息
#include <QSqlQueryModel> //结果集模型
#include <QDebug>         //调试信息输出
#include <QMessageBox>    //消息框
#include <QHeaderView>

class Datasql : public QObject
{
    Q_OBJECT
public:
    explicit Datasql(QObject *parent = nullptr);
signals:

};

#endif // DATASQL_H
