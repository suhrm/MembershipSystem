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
    // discover devices
    libusb_device **list;
    libusb_device *found = NULL;
    ssize_t cnt = libusb_get_device_list(NULL, &list);
    ssize_t i = 0;
    int err = 0;
    if (cnt < 0)
        qDebug() << "error: Size of USB devuce list less than zero";

    qInfo() << "size of USB device list" << cnt;

    for (i = 0; i < cnt; i++) {
        libusb_device *device = list[i];
        if (is_interesting(device)) {
            if (found == NULL){
                found = device;
            } else {
                qDebug() << "Found an additional interesting USB device. Ignoring the additional one";
            }
        }
    }

    if (found) {
        err = libusb_open(found, &handle);
        if (err)
            qDebug() << "error: " << libusb_error_name(err);

        int det = libusb_set_auto_detach_kernel_driver(handle, 1);
        if (0 == det){
            qInfo() << "Auto kernel detach enabled";
        } else{
            qInfo() << "Error setting auto kernel detach: " << libusb_error_name(det);
        }
        det = libusb_claim_interface(handle, 0);
        if (0 == det){
            qInfo() << "Interface claimed";
            int ac = libusb_kernel_driver_active(handle,0);
            qInfo() << "Kernel driver: " << ac;
        } else{
            qInfo() << "Error claiming interface: " << libusb_error_name(det);
        }

        int ac = libusb_kernel_driver_active(handle,0);
        if (ac){
            int det;
            qInfo() << "Kernel driver IS active";
            
            det = libusb_detach_kernel_driver (handle,0);
            if (0 == det){
                qInfo() << "kernel driver detached";
            } else{
                qInfo() << "Error detaching kernel driver: " << det;
            }

        } else{
            qInfo() << "Kernel driver NOT active";
        }


    }

    libusb_free_device_list(list, 1);

    // Register some callback
    

    // allocate transfer of data IN (IN to host PC from USB-device)
    //void (UsbWizard::*callb) (struct libusb_transfer *transfer);
    //callb = reinterpret_cast < libusb_transfer_cb_fn > (&UsbWizard::cb_in);
    
    transfer_in  = libusb_alloc_transfer(0);
    libusb_fill_interrupt_transfer( transfer_in, handle, 29,
                                    in_buffer,  LEN_IN_BUFFER,  // Note: in_buffer is where input data written.
                                    &cb_in, NULL, 0); // no user data
    return;

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

void UsbWizard::cb_in(struct libusb_transfer *transfer){
    qInfo() << "In callback envoked";
}

void UsbWizard::update(void){
    int r =  libusb_handle_events_completed(ctx, NULL);
    if (r < 0){   // negative values are errors
        qDebug() << "error: " << libusb_error_name(r);
    }
}
