TARGET            = qwtplot3d
TEMPLATE          = lib
DESTDIR      	  = ../lib
CONFIG           += qt warn_on thread static release
QT               += opengl

SOURCES           = *.cpp

# MOCs will be generated from
HEADERS           = ../include/qwt3d_plot3d.h \
                    ../include/qwt3d_extglwidget.h \
                    ../include/qwt3d_graphplot.h \
                    ../include/qwt3d_gridplot.h  \
                    ../include/qwt3d_surfaceplot.h \
                    ../include/qwt3d_volumeplot.h
HEADERS           += ../include/*.h

INCLUDEPATH       = ../include

win32 {
    QMAKE_CXXFLAGS += -MP
    QMAKE_CXXFLAGS += $$QMAKE_CFLAGS_STL
    QMAKE_CXXFLAGS_RELEASE += /fp:fast /arch:SSE2
}

linux-g++:QMAKE_CXXFLAGS += -fno-exceptions

unix:VERSION = 0.3.2

MOC_DIR           = tmp
OBJECTS_DIR       = tmp

