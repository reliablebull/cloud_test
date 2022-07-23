#ifndef POINTCLOUD_H
#define POINTCLOUD_H

#include <qwt3d_gridplot.h>
 #include <qwt3d_function.h>

#include <QTimer>

using namespace Qwt3D;

class Plot : public GridPlot
{
    Q_OBJECT

public:
    Plot();

private Q_SLOTS:
    void UpdateData();

private:
    static const int Width1 = 200;
    static const int Width2 = 300;

    double *data[Width1];

    QTimer timer;
};

#endif // POINTCLOUD_H
