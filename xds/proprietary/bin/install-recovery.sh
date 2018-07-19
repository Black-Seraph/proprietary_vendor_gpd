#!/system/bin/sh
  echo 1 > /sys/module/sec/parameters/recovery_done		#koshi   
if ! applypatch -c EMMC:recovery:8712192:024c66a99f13a3048ac8c5386e6907cb0c0adcb7; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:boot:7362560:403050a9385a9b540decda1935078252153b7b6e EMMC:recovery 024c66a99f13a3048ac8c5386e6907cb0c0adcb7 8712192 403050a9385a9b540decda1935078252153b7b6e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
  if applypatch -c EMMC:recovery:8712192:024c66a99f13a3048ac8c5386e6907cb0c0adcb7; then		#koshi
	echo 0 > /sys/module/sec/parameters/recovery_done		#koshi
        log -t recovery "Install new recovery image completed"
        
  if applysig /system/etc/recovery.sig recovery; then
    sync
    log -t recovery "Apply recovery image signature completed"
  else
    log -t recovery "Apply recovery image signature fail!!"
  fi

    
  else
	echo 2 > /sys/module/sec/parameters/recovery_done		#koshi
        log -t recovery "Install new recovery image not completed"
  fi
else
  echo 0 > /sys/module/sec/parameters/recovery_done         #koshi
  log -t recovery "Recovery image already installed"
fi
if ! applypatch -c EMMC:tee2:408064:d59a7b96674e0820c06db08210e7815e2a01678e; then
  log -t recovery "Installing new t-base image"
  applypatch -t /system/etc/trustzone.bin EMMC:tee2:408064:d59a7b96674e0820c06db08210e7815e2a01678e 
else
  log -t recovery "t-base image already installed"
fi
