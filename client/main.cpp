#include "mainwindow.h"
#include "usbwizard.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.show();
    UsbWizard usb;
    // Do something with usb
    while (1){
        usb.update();
    }
    return a.exec();
}
