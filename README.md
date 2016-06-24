Copyright 2016 - Nothing-Dev
===================================

Device configurations for building TWRP for Samsung Galaxy Y2 (GT-S6310)

                       instruction how to build

I think you already set up build enviroment so I will skip this.
First go to your working dir/build/tools/device and open in gedit makerecoveries.sh
Find line 
        make -j16 recoveryzip
and replace it with
        make recoveryzip
beacause it wont eat your RAM and build will be faster


After you finshed repo sync go in your working dir/device/
and create folder /samsung/royss_twrp and copy content of royss_twrp
that you downloaded from here.

For build recovery, run this command in terminal from your working dir 

        . build/envsetup.sh
        lunch cm_royss_twrp-userdebug && make recoveryimage

Your build will start and you will find your recovery.img in your working dir/out/target/product/royss_twrp

To make it flashable via ODIN you have to make it recovery.tar.md5
Navigate with terminal where you save your recovey.img .
For example cd android/out/target/product/royss_twrp
where android is name of your working dir
and run command:

        tar -H ustar -c recovery.img > recovery.tar
        md5sum -t recovery.tar >> recovery.tar
        mv recovery.tar recovery.tar.md5
        
And now you got recovery.tar.md5 ready to be flashed usin ODIN selected as PDA file

Good luck and Happy building. (^_^)/
