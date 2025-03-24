#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):83886080:5ac01fc029c4931c9ee5d52082887523281cbfbc; then
  applypatch \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot$(getprop ro.boot.slot_suffix):67108864:ca40e6959f01e2b2b790a1f05155c6fc5e771b1f \
          --target EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):83886080:5ac01fc029c4931c9ee5d52082887523281cbfbc && \
      (log -t install_recovery "Installing new recovery image: succeeded" && setprop vendor.ota.recovery.status 200) || \
      (log -t install_recovery "Installing new recovery image: failed" && setprop vendor.ota.recovery.status 454)
else
  log -t install_recovery "Recovery image already installed" && setprop vendor.ota.recovery.status 200
fi

