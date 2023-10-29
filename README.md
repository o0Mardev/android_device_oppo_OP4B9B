Unofficial TWRP for Oppo A91 (CPH2021) running Android 11. \
This recovery works also on the Oppo F15 (CPH2001) as it's a rebranded A91. \
<b>IMPORTANT it appears that recovery does not work on the PCPM00 model.</b>

For more informations consults the [xda forum](https://forum.xda-developers.com/t/recovery-unofficial-twrp-for-oppo-a91.4600477/)

### Specifications
https://m.gsmarena.com/oppo_a91-10000.php

### Working
- ADB
- MTP
- External SD Card

### Issues
- Decryption
- OTG (Not yet tested)

<hr>

### Installation
Since this phone has fastboot disabled it is necessary to use alternative tools. I recommend using [MTKClient](https://github.com/bkerler/mtkclient). \
Just unzip the file and flash the TWRP to the recovery partition.

<hr>

### How to build
Use the minimal manifest twrp aosp 11 [here](https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp/tree/twrp-11) \
Clone this repository as it is the device tree.
and use these commands:
```
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch twrp_OP4B9B-eng
export TW_DEVICE_VERSION
mka -j$(nproc --all) recoveryimage
```
