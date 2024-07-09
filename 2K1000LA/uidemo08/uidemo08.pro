#-------------------------------------------------
#
# Project created by QtCreator 2017-05-24T18:38:15
#
#-------------------------------------------------

QT       += core gui sql charts network
QT       += serialport
QT       += testlib
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET      = loogson
TEMPLATE    = app
MOC_DIR     = temp/moc
RCC_DIR     = temp/rcc
UI_DIR      = temp/ui
OBJECTS_DIR = temp/obj
DESTDIR     = $$PWD/../bin

SOURCES     += main.cpp \
    login.cpp \
    loogson.cpp \
    regis.cpp
SOURCES     += iconhelper.cpp
SOURCES     += appinit.cpp
SOURCES     +=

HEADERS     += iconhelper.h \
    login.h \
    loogson.h \
    regis.h
HEADERS     += appinit.h
HEADERS     +=

FORMS       += \
    login.ui \
    loogson.ui \
    regis.ui

RESOURCES   += main.qrc
RESOURCES   += qss.qrc
CONFIG      += qt warn_off
INCLUDEPATH += $$PWD
