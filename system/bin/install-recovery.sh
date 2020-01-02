#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32505166:a25a2ce3ad54105a84f5c44e26c1c9207876471a; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:28296522:8cbf127b331d23c247cd6501989c602abacc9d3f EMMC:/dev/block/bootdevice/by-name/recovery a25a2ce3ad54105a84f5c44e26c1c9207876471a 32505166 8cbf127b331d23c247cd6501989c602abacc9d3f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
