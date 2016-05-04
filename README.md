<a target="_blank" href="http://www.copyrighted.com/copyrights/view/0dl4-b1qo-4lxw-lsut"><img border="0" alt="Copyrighted.com Registered &amp; Protected 
0DL4-B1QO-4LXW-LSUT" title="Copyrighted.com Registered &amp; Protected 
0DL4-B1QO-4LXW-LSUT" width="150" height="40" src="http://static.copyrighted.com/images/seal.gif" /></a>

Device configuration for the Samsung Galaxy A8

Copyright (C) 2014-2015 The CyanogenMod Project
Copyright (C) 2014-2015 Andreas Schneider <asn@cryptomilk.org>

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

------------------------------------------------------------------

* Description

  This repository is for CM-13.0 on Samsung Galaxy A7 (A700F)

    THIS IS WORK IN PROGRESS.


* How To Build CM-13.0 for Samsung Galaxy A7

  - Make a workspace

  $ mkdir -p ~/cyanogenmod/system
  $ cd ~/cyanogenmod/system


  - Do repo init & sync

  $ repo init -u git://github.com/CyanogenMod/android.git -b cm-13.0


  - Create .repo/local_manifests/roomservice.xml with the following content:


```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
<remote  name="cryptomilk" fetch="git://git.cryptomilk.org/" />
<project name="CyanogenMod/android_packages_apps_SamsungServiceMode" path="packages/apps/SamsungServiceMode" remote="github" />
<project name="CyanogenMod/android_hardware_samsung" path="hardware/samsung" remote="github" revision="cm-13.0" />
<!--<project name="Grace5921/hardware_samsung_slsi-cm" path="hardware/samsung_slsi-cm" remote="github" revision="cm-13.0" />-->
 <project name="CyanogenMod/android_hardware_samsung_slsi-cm_exynos" path="hardware/samsung_slsi-cm/exynos" revesion="cm-13.0" />
 <project name="CyanogenMod/android_hardware_samsung_slsi-cm_exynos5" path="hardware/samsung_slsi-cm/exynos5" />
 <project name="CyanogenMod/android_hardware_samsung_slsi-cm_openmax" path="hardware/samsung_slsi-cm/openmax" remote="cryptomilk" />
 <project name="projects/android/android_hardware_samsung_slsi_exynos5430" path="hardware/samsung_slsi-cm/exynos5430" remote="cryptomilk"  />
<project name="mmarkvoort/android_kernel_samsung_a7alte" path="kernel/samsung/a7alte" remote="github" revision="cm-13.0"/>
<project name="mmarkvoort/android_device_samsung_a7alte" path="device/samsung/a7alte" remote="github" revision="cm-13.0" />
<project name="Grace5921/external_stlport.git" path="external/stlport" remote="github" revision="cm-13.0" />
<project name="mmarkvoort/android_vendor_samsung_a7alte" path="vendor/samsung/a7alte" remote="github" revision="cm-13.0" />
</manifest>
```


  $ repo sync

  - Copy proprietary vendor files

  There are two options to to that. Connect your device with adb enabled and run:

    ./extract-files.sh

  Or if you have the system image unpacked on your disk, then simply run:

    STOCK_ROM_DIR=/path/to/system ./extract-files.sh

  - Setup environment

  $ source build/envsetup.sh
  $ lunch cm_slte-userdebug


  - Build CM

  $ export USE_CCACHE=1
  $ make -j10 bacon


* Thanks

  CyanogenMod
  TeamWin

----
EOF
