#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 8185856 d56bc1a930feede91b7468f1bad9fe086356495d 5656576 c887ae3ad1268eeeedc8696613770d3e2356c58f
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:8185856:d56bc1a930feede91b7468f1bad9fe086356495d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:5656576:c887ae3ad1268eeeedc8696613770d3e2356c58f EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery d56bc1a930feede91b7468f1bad9fe086356495d 8185856 c887ae3ad1268eeeedc8696613770d3e2356c58f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
