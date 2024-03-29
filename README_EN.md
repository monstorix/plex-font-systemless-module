# IBM Plex Android Font Module <sup>Experimental</sup>
This project attempts to apply IBM Plex fonts to the system global interface in the form of Systemless modules.

[中文介绍](README.md)

> [!WARNING]
> This module is experimental and the related code has only been barely tested, **it's not recommended to use as daily drive**. There may be unintended problems on some devices, including but not limited to causing the system can not start normally, lag, display abnormalities, etc. **Please consider carefully before operation, and should always backup important data. System failure (including stuck on boot, abnormal function, etc.) or abnormal effect caused by improper operation has nothing to do with the author of the module or template.**

## Module Support Status
### Tested on
Redmi K40 Pro (haydn) - LineageOS/CrDroid - Android 14<br><br>Redmi Note 7 Pro (violet) - CrDroid - Android 11<br>
 | System Version | Native Interface | Webview-based Interface |
 | ------- | ------ | -------- |
 | Android 12+ |✅ In effect|Not fully in effect|
 | Android 11 |✅ In effect|✅ In effect|

Not tested on other ROM/System<br><br>
> [!NOTE]
> Android 12 and above uses new font rendering mechanism where fonts are loaded only when the app draws the interface. Therefore applications based on Web technologies are likely to be unaffected by module changes by default.<br><br>**For Chromium/Android Webview-based browsers and apps powered by them (e.g. Flutter apps):** <br>You need to individually disable the Root Hide function (e.g. Magisk Hide/DenyList or KernelSU's "Uninstall Module" function) for the relevant application, in order for the font rule to take effect on the web page.<br><br>**For Firefox Mobile (Fenix) and its derivatives:** <br>Since the GeckoView engine currently hardcodes the fonts used on the webpage in the browser configuration, and still does not adapt the font fallback function, the module can only replace its interface fonts. When Root Hide is disabled, the fonts of web pages will be mismatched and might have abnormal glyphs, which is an upstream issue.

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
 |IBMPlexSansThaiLooped|Thai Looped (sans-serif)|✅ Written in Config as optional,<br> enable if needed|
 |IBMPlexSansKR|Korean (sans-serif)|✅ Written in Config|
 |IBMPlexSansJP|Japanese (sans-serif)|✅ Written in Config|
 |IBMPlexSansTC|Traditional Chinese (sans-serif)|✅ Written in Config|
 |IBMPlexSansSC|Simplified Chinese (sans-serif)|❌ Not Released Yet, Config Reserved|

> [!NOTE]
> For the CJK Users:<br>
> As of [version 6.4](https://github.com/ibm/plex/releases/latest) at the end of January 2024, the IBM Plex fonts only include preliminary Traditional Chinese support, Simplified Chinese support is still a few weeks away. There are still some rendering issues such as different line height with the initial Traditional Chinese fonts. It's not recommended for daily use as of now.
> The configuration file of this module is currently using Traditional Chinese glyphs to temporarily replace the Simplified Chinese positions, and following the complementary mechanism in the original font template to ensure text support. Currently, some glyphs are mixed with Noto Sans. Simplified Chinese glyphs support will be in place after IBM updates the fonts.

## Installation
> [!TIP]
> Please also read the [additional instructions](#Additional) of the original template. This module has fixed the font names in the configuration file to avoid as many file renaming operations as possible, so the methods of font renaming, copying etc. in the original template description **do not apply here**.

Download the Module-Hinted.zip (or Module-Unhinted.zip) file from the Release, install within Magisk or KernelSU Manager, then reboot.<br>
To change the font parameters, extract and edit `/system/etc/font.xml` in the module, and then copy it and overwrite the `font_base.xml` in the directory `/system/etc` and `/system/system_ext/etc`.

## Additional

This module is based on the [CJK Fonts Magisk Module Template](https://github.com/lxgw/advanced-cjk-font-magisk-module-template) released by LXGW with modifications. Therefore, the related compatibility issues are shared between the modules based on this template, please also read the documentation in the template repository carefully. Especially the [Notes](https://github.com/lxgw/advanced-cjk-font-magisk-module-template#%E6%B3%A8%E6%84%8F%E4%BA%8B%E9%A1%B9) and [Compatibility Adjustment](https://github.com/lxgw/advanced-cjk-font-magisk-module-template#%E5%85%BC%E5%AE%B9%E6%80%A7%E8%B0%83%E6%95%B4-%E4%BB%85%E4%BE%9B%E5%8F%82%E8%80%83) part, which documents a few compatibility methods for OEM ROMs such as MIUI/ColorOS etc.

For extended CJK character support, two more fonts can be used: [Plangothic (sans-serif)](https://github.com/Cccc-owo/Another-Plangothic-magisk-module) or [Tianheng-Tshyn (serif)](http://cheonhyeong.com/English/download.html). The original template has reserved the fallback support for these two fonts. Just download and put the ttf files in module's `/system/fonts` directory and it's good to go.

## Refrences

|Project|Version|
|-|-|
|[CJK Font Magisk Module Template](https://github.com/lxgw/advanced-cjk-font-magisk-module-template)|v3.3.220605|
|[IBM Plex](https://github.com/ibm/plex)|v6.4|
