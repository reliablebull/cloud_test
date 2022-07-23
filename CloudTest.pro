#-------------------------------------------------
#
# Project created by QtCreator 2020-12-17T11:58:37
#
#-------------------------------------------------

QT       += core gui
QT += opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
CONFIG           += qt warn_on thread static release
TARGET = CloudTest
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

INCLUDEPATH += ./include .
DEPENDPATH	= $$INCLUDEPATH
DESTDIR = ../bin



SOURCES += \
        PointCloud.cpp \
        main.cpp \
        mainwindow.cpp \
        src/qwt3d_appearance.cpp \
        src/qwt3d_autoscaler.cpp \
        src/qwt3d_axis.cpp \
        src/qwt3d_color_std.cpp \
        src/qwt3d_colorlegend.cpp \
        src/qwt3d_coordsys.cpp \
        src/qwt3d_data.cpp \
        src/qwt3d_drawable.cpp \
        src/qwt3d_enrichment_std.cpp \
        src/qwt3d_extglwidget.cpp \
        src/qwt3d_function.cpp \
        src/qwt3d_graphplot.cpp \
        src/qwt3d_gridmapping.cpp \
        src/qwt3d_gridplot.cpp \
        src/qwt3d_io.cpp \
        src/qwt3d_io_reader.cpp \
        src/qwt3d_label.cpp \
        src/qwt3d_lighting.cpp \
        src/qwt3d_meshplot.cpp \
        src/qwt3d_parametricsurface.cpp \
        src/qwt3d_plot3d.cpp \
        src/qwt3d_scale.cpp \
        src/qwt3d_surfaceplot.cpp \
        src/qwt3d_types.cpp \
        src/qwt3d_volumeplot.cpp \
        widget_point_cloud.cpp

HEADERS += \
        PointCloud.h \
        include/qwt3d_appearance.h \
        include/qwt3d_autoscaler.h \
        include/qwt3d_axis.h \
        include/qwt3d_color.h \
        include/qwt3d_color_std.h \
        include/qwt3d_colorlegend.h \
        include/qwt3d_coordsys.h \
        include/qwt3d_data.h \
        include/qwt3d_drawable.h \
        include/qwt3d_enrichment.h \
        include/qwt3d_enrichment_std.h \
        include/qwt3d_extglwidget.h \
        include/qwt3d_function.h \
        include/qwt3d_global.h \
        include/qwt3d_graphplot.h \
        include/qwt3d_gridmapping.h \
        include/qwt3d_gridplot.h \
        include/qwt3d_helper.h \
        include/qwt3d_io.h \
        include/qwt3d_io_reader.h \
        include/qwt3d_label.h \
        include/qwt3d_mapping.h \
        include/qwt3d_meshplot.h \
        include/qwt3d_openglhelper.h \
        include/qwt3d_parametricsurface.h \
        include/qwt3d_plot3d.h \
        include/qwt3d_portability.h \
        include/qwt3d_scale.h \
        include/qwt3d_surfaceplot.h \
        include/qwt3d_types.h \
        include/qwt3d_valueptr.h \
        include/qwt3d_volumeplot.h \
        mainwindow.h \
        widget_point_cloud.h

FORMS += \
        mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    lib/qwtplot3d.lib
win32{
    QMAKE_CXXFLAGS += -MP
    QMAKE_CXXFLAGS += $$QMAKE_CFLAGS_STL

    LIBS += -L$$PWD/lib/ -lqwtplot3d -lopengl32 -lglu32 -lgdi32
}

INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include
