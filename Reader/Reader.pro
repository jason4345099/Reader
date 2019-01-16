#-------------------------------------------------
#
# Project created by QtCreator 2016-09-29T22:02:44
#
#-------------------------------------------------

QT       += core gui
QT       += xml

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

# add svg support
QT += svg

TARGET = Reader
TEMPLATE = app


SOURCES += main.cpp\
    NaviViewer.cpp \
    MainViewer.cpp \
    ChildViewer.cpp \
    Kit.cpp \
    DocViewer.cpp \
    MultiViewer.cpp \
    PDFkit.cpp \
    ViewModel.cpp \
    ImageCache.cpp \
    ViewState.cpp \
    SingleContinuousState.cpp \
    DocWidget.cpp \
    ThumbnailWidget.cpp \
    shell/kribbonwidget.cpp \
    shell/kribbontoolbutton.cpp \
    shell/kribbontabwidget.cpp \
    shell/kcommand.cpp

HEADERS  += \
    PDFkit.h \
    NaviViewer.h \
    MainViewer.h \
    ChildViewer.h \
    Kit.h \
    DocViewer.h \
    MultiViwer.h \
    IChildViewer.h \
    ViewModel.h \
    IMainViewer.h \
    ImageCache.h \
    ViewState.h \
    SingleContinuousState.h \
    DocWidget.h \
    IDocWidget.h \
    ReadDefine.h \
    ThumbnailWidget.h \
    shell/kribbonwidget.h \
    shell/kribbontoolbutton.h \
    shell/kribbontabwidget.h \
    shell/kcommand.h

RESOURCES += \
    resource.qrc

INCLUDEPATH += $$PWD/3rdparty/Win32/Poppler/Include
win32: LIBS += -L$$PWD/3rdparty/Win32/Poppler -llibpoppler
win32: LIBS += -L$$PWD/3rdparty/Win32/Poppler -llibpoppler-qt5

unix: PKGCONFIG += poppler-qt5
unix: CONFIG += link_pkgconfig

CONFIG += c++11
DISTFILES +=
