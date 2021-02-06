#ifndef USBWIZARD_H
#define USBWIZARD_H

#include "../includes/libusb-1.0/libusb.h"
#include <QDebug>

class UsbWizard
{
public:
    UsbWizard();
private:
    bool is_interesting(libusb_device *device);
};

#endif // USBWIZARD_H
