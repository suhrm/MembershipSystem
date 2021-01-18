#include "mainwindow.h"

#include <QApplication>
#include <QMessageBox>
#include <QSqlDatabase>
#include <QSqlError>
#include <QSqlQuery>
#include <QSql>
#include <QDebug>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    QSqlDatabase db = QSqlDatabase::addDatabase("QODBC");
//    db.setHostName("localhost");
//    db.setPort(1433);
//    db.setDatabaseName("JydenDB");
//    db.setUserName("SA");
//    db.setPassword("Admin123");
    QString connectString = QStringLiteral(
        "DRIVER={SQL Server};"
        "SERVER=127.0.0.1,1433;"
        "Database=JydenDB;"
        "UID=SA;"
        "PWD=Admin123;");
    db.setDatabaseName(connectString);
    bool ok = db.open();

    if (!ok){
        QMessageBox::critical(0,QObject::tr("DATABASE OPEN"),db.lastError().text());
        return 1;

    }
    QSqlQuery query;


    query.exec("SELECT FirstName, LastName FROM Members");
    query.next();
    QString name = query.value(0).toString() + " " + query.value(1).toString();
    qInfo() << "3 " << name << db.lastError().text();
    while (query.next()) {
        QString name = query.value(0).toString() + " " + query.value(1).toString();
        qInfo() << "loop " << name << db.lastError().text();
    }



    MainWindow w;
    w.show();
    return a.exec();
}
