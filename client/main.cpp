#include "mainwindow.h"
#include "usbwizard.h"
#include <QApplication>
#include <iostream>
#ifdef _WIN32
#include <Windows.h>
#else
#include <unistd.h>
#endif

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.show();
    std::cout << "Hi" << std::endl;
    UsbWizard usb;
    // Do something with usb
    std::cout << "Hi1" << std::endl;
    while (1){
        //sleep(1);
        usb.update();
    }
    return a.exec();
}
