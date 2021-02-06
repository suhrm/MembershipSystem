#include "usbwizard.h"

UsbWizard::UsbWizard()
{
    int rc;
    qInfo() << "Hello from UsbWizard";
    rc = libusb_init (NULL);
    if (rc < 0)
    {
        qInfo() << "failed to initialise libusb: " << libusb_error_name(rc);
        return;
    }
    if (!libusb_has_capability (LIBUSB_CAP_HAS_HOTPLUG)) {
        qInfo() << "Hotplug capabilities are not supported on this platform";

        // discover devices
        libusb_device **list;
        libusb_device *found = NULL;
        ssize_t cnt = libusb_get_device_list(NULL, &list);
        ssize_t i = 0;
        int err = 0;
        if (cnt < 0)
            qDebug() << "error";

        qInfo() << "size of USB device list" << cnt;

        for (i = 0; i < cnt; i++) {
            libusb_device *device = list[i];
            if (is_interesting(device)) {
                if (found == NULL){
                    found = device;
                } else {
                    qDebug() << "Found an additional interesting USB device. Ignoring the additional one";
                }
                //break;
            }
        }

        if (found) {
            libusb_device_handle *handle;

            err = libusb_open(found, &handle);
            int ac = libusb_kernel_driver_active(handle,0);
            if (ac){
                int det;
                qInfo() << "Kernel driver IS active";
                det = libusb_set_auto_detach_kernel_driver(handle, 1);
                if (0 == det){
                    qInfo() << "Auto kernel detach enabled";
                } else{
                    qInfo() << "Error setting auto kernel detach: " << det;
                }
                det = libusb_claim_interface(handle, 0);
                if (0 == det){
                    qInfo() << "Interface claimed";
                } else{
                    qInfo() << "Error claiming interface: " << det;
                }
                det = libusb_detach_kernel_driver (handle,0);
                if (0 == det){
                    qInfo() << "kernel driver detached";
                } else{
                    qInfo() << "Error detaching kernel driver: " << det;
                }

            } else{
                qInfo() << "Kernel driver NOT active";
            }
            if (err)
                qDebug() << "error";
            // etc

        }

        libusb_free_device_list(list, 1);
        return;
    } else {
        qInfo() << "Hotplug capabilities are supported on this platform";
    }

}

bool UsbWizard::is_interesting(libusb_device *device){
    int rc;
    libusb_device_descriptor desc = {0};

    rc = libusb_get_device_descriptor(device, &desc);
    assert(rc == 0);
    qInfo() << "Vendor:Device = " << desc.idVendor << ":" << desc.idProduct;
    if (desc.idVendor == 65535 && desc.idProduct == 53){
        qInfo() << "RFiD reader found" ;
        libusb_config_descriptor *config;
        libusb_get_config_descriptor(device, 0, &config);
        qInfo()<<"Interfaces: "<<(int)config->bNumInterfaces<<" ||| ";
        const libusb_interface *inter;
        const libusb_interface_descriptor *interdesc;
        const libusb_endpoint_descriptor *epdesc;
        for(int i=0; i<(int)config->bNumInterfaces; i++) {
            inter = &config->interface[i];
            qInfo()<<"Number of alternate settings: "<<inter->num_altsetting<<" | ";
            for(int j=0; j<inter->num_altsetting; j++) {
                interdesc = &inter->altsetting[j];
                qInfo()<<"Interface Number: "<<(int)interdesc->bInterfaceNumber<<" | ";
                qInfo()<<"Number of endpoints: "<<(int)interdesc->bNumEndpoints<<" | ";
                for(int k=0; k<(int)interdesc->bNumEndpoints; k++) {
                    epdesc = &interdesc->endpoint[k];
                    qInfo()<<"Descriptor Type: "<<(int)epdesc->bDescriptorType<<" | ";
                    qInfo()<<"EP Address: "<<(int)epdesc->bEndpointAddress<<" | ";
                    qInfo()<<"bmAttributes: "<<(int)epdesc->bmAttributes<<" | ";
                    qInfo()<<"wMaxPacketSize: "<<(int)epdesc->wMaxPacketSize<<" | ";
                    qInfo()<<"bInterval: "<<(int)epdesc->bInterval<<" | ";
                }
            }
        }
        return true;
    }



    return false;
}


