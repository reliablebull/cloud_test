#include "mainwindow.h"
#include <QApplication>
#include <PointCloud.h>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.show();
    //Plot plot;
    //plot.resize(800,600);
    //plot.showMaximized();

    return a.exec();
}
