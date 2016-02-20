#!/bin/bash
if test -e "/home/`whoami`/brdisk-img.raw"; then
  device_name="Realtek"
  realtek_wifi_usb=`lsusb | grep $device_name | awk '{split($$0,arr," "); printf arr[6];}'`
  device_name="Fushicai"
  webcam_usb="`lsusb | grep $device_name | awk '{split($$0,arr," "); printf arr[6];}'`"
  webcam_vendor_id=`echo $webcam_usb | awk '{split($$0,arr,":"); printf arr[1];}'`
  webcam_product_id=`echo $webcam_usb | awk '{split($$0,arr,":"); printf arr[2];}'`

  sudo qemu-system-i386 \
	  -enable-kvm \
	  -m 512 \
	  -hda /home/`whoami`/brdisk-img.raw \
	  -device usb-ehci,id=ehci \
	  -device usb-host,vendorid=0x$webcam_vendor_id,productid=0x$webcam_product_id,bus=ehci.0,port=1 \
	  -usbdevice host:$realtek_wifi_usb \
	  -serial stdio
else
  echo "Not found brdisk-img.raw"
  echo "Execute compile-diskmode.sh"
  ./compile_diskmode.sh
  echo "please try again to './run-diskmode.sh'"
fi

