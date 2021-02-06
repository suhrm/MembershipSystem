#ifndef USBWIZARD_H
#define USBWIZARD_H
#define LEN_IN_BUFFER 1024*8

extern "C"
{
#include <libusb-1.0/libusb.h>
}
#include <QDebug>

class UsbWizard
{
public:
    UsbWizard();
    void update(void);
private:
    struct libusb_transfer *transfer_in = NULL;
    constexpr static libusb_context *ctx = NULL;
    uint8_t in_buffer[LEN_IN_BUFFER];
    struct libusb_device_handle *handle = NULL;
    bool is_interesting(libusb_device *device);
    static void cb_in(struct libusb_transfer *transfer);
};

#endif // USBWIZARD_H
