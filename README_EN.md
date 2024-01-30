# IBM Plex Android Font Module <sup>Experimental</sup>
This project attempts to apply IBM Plex fonts to the system global interface in the form of Systemless modules.

[中文介绍](README.md)

> [!WARNING]
> This module is experimental and the related code has only been tested a little. There may be unintended problems on some devices, including but not limited to causing the system can not start normally, lag, display abnormalities, etc. **Please consider carefully before operation, and should always backup important data. System failure (including stuck on boot, abnormal function, etc.) or abnormal effect caused by improper operation has nothing to do with the author of the module or template.**

## Module Support Status
### Tested on
LineageOS/CrDroid - Android 14 / KernelSU<br>
Status (self test): <br>Native/System Interface is in effect (with Sans and Monospace). <br>**Pages in Webview are not fully in effect currently**

Not tested on other ROM.

### Supported Variants
 | Prefix | Languages | Status  |
 | ------- | ---- | -------------------------------- |
 |IBMPlexSans|Latin/Greek/Cyrillic (sans-serif)| ✅ Written in Config |
 |IBMPlexSansCondensed|Latin/Greek/Cyrillic (sans-serif-condensed)| ✅ Written in Config|
 |IBMPlexSerif|Latin/Greek/Cyrillic (serif)|✅ Written in Config|
 |IBMPlexMono|Latin/Greek/Cyrillic (monospace)|✅ Written in Config|
 |IBMPlexSansArabic|Arabic (sans-serif)|✅ Written in Config|
 |IBMPlexSansDevanagari|Devanagari (sans-serif)|✅ Written in Config|
 |IBMPlexHebrew|Hebrew (sans-serif)|✅ Written in Config|
 |IBMPlexSansThai|Thai (sans-serif)|✅ Written in Config|
 |IBMPlexSansThaiLooped|Thai Looped (sans-serif)|❌ Not Written Yet|
 |IBMPlexSansKR|Korean (sans-serif)|✅ Written in Config|
 |IBMPlexSansJP|Japanese (sans-serif)|✅ Written in Config|
 |IBMPlexSansTC|Traditional Chinese (sans-serif)|✅ Written in Config|
 |IBMPlexSansSC|Simplified Chinese (sans-serif)|❌ Not Released Yet|

> [!NOTE]
> For the CJK Users:<br>
> As of [version 6.4](https://github.com/ibm/plex/releases/latest) at the end of January 2024, the IBM Plex fonts only include preliminary Traditional Chinese support, Simplified Chinese support is still a few weeks away. There are still some rendering issues with the initial Traditional Chinese fonts, waiting for upstream updates.
> The configuration file of this module is currently using Traditional Chinese glyphs to temporarily replace the Simplified Chinese positions, and following the Noto complementary mechanism in the original font template to ensure text support. Simplified Chinese glyphs support will be in place after IBM updates the fonts.

## Manual Installation
> [!TIP]
> Please read and familiarise yourself with the introduction here and the [additional instructions](#Additional) of the original template. This module has fixed the font names in the configuration file to avoid as many file renaming operations as possible, so the methods of font renaming, copying etc. in the original template description **do not apply here**.

1. Download the latest version of the OpenType font package (version should be greater than or equal to 6.4) from the [IBM Plex repository](https://github.com/ibm/plex/releases/latest).
2. Click **Code > Download ZIP**, Download the base module file and extract.
3. Referring to the support table above, extract **all** otf font files for **supported languages** and place them into the `/system/fonts` folder of the module. **No need to create subfolders or change/delete other files, especially the EmptyFonts and Roboto empty font files already included.**

The final `/system/fonts` catalogue structure should refer to the following format:
```
├── META-INF
├── system
│   ├── fonts
│   │   ├── IBMPlexSans-***.otf
│   │   ├── IBMPlexSerif-***.otf
│   │   ├── IBMPlexSansTC-***.otf
│   │   ├── ....
```

4. Re-compress to zip, use Magisk/KernelSU to install the module and reboot.

## Additional

This module is based on the [CJK Fonts Magisk Module Template](https://github.com/lxgw/advanced-cjk-font-magisk-module-template) released by LXGW with modifications. Therefore, the related compatibility issues are shared between the modules based on this template, please also read the documentation in the template repository carefully. Especially the [Notes](https://github.com/lxgw/advanced-cjk-font-magisk-module-template#%E6%B3%A8%E6%84%8F%E4%BA%8B%E9%A1%B9) and [Compatibility Adjustment](https://github.com/lxgw/advanced-cjk-font-magisk-module-template#%E5%85%BC%E5%AE%B9%E6%80%A7%E8%B0%83%E6%95%B4-%E4%BB%85%E4%BE%9B%E5%8F%82%E8%80%83) part.

For partial CJK extended character support, use [Plangothic Glyphs Completion Module](https://github.com/Cccc-owo/Another-Plangothic-magisk-module) packed by Cccc-owo.

## Refrences

|Project|Version|
|-|-|
|[CJK Font Magisk Module Template](https://github.com/lxgw/advanced-cjk-font-magisk-module-template)|v3.3.220605|
|[IBM Plex](https://github.com/ibm/plex)|v6.4|
