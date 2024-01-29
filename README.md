# IBM Plex 全字族 Android 字体模块 <sup>实验性</sup>
> [!WARNING] 
> 此模块为实验性，相关替换代码仅经过少量测试。在部分设备上可能存在非预期问题，包括但不限于导致系统无法正常启动、卡顿、显示异常等，请在操作前审慎考虑，同时应时刻备份重要数据。因操作不当导致的系统故障（包括卡开机动画、功能异常等）或效果异常与模块或模板作者无关。

本项目将 IBM Plex 字体通过 Magisk/KernelSU 模块形式应用至系统全局界面。

> [!TIP]
> 请仔细阅读并熟知此处介绍的 [使用方法](#使用方法)和原模板的[附加说明](#附加说明)。本模块已固定配置文件的字体名称，以尽可能避免大量文件重命名操作，因此原模板说明中的字体重命名复制等方法**不适用于此处**。

## 本地测试环境

LineageOS/CrDroid - Android 14

## 模块当前支持的 Plex 语言
 | 文件前缀 | 支持语族 | 状态  | 
 | ------- | ---- | -------------------------------- |
 |IBMPlexSans|拉丁文/希腊文/西里尔文（无衬线）| ✅ 已写入配置并支持 |
 |IBMPlexSansCondensed| 拉丁文/希腊文/西里尔文（无衬线窄体）| ✅ 已写入配置并支持|
 |IBMPlexSerif|拉丁文/希腊文/西里尔文（衬线）|✅ 已写入配置并支持|
 |IBMPlexMono|拉丁文/希腊文/西里尔文（等宽）|✅ 已写入配置并支持|
 |IBMPlexSansArabic|阿拉伯字母（无衬线）|✅ 已写入配置并支持|
 |IBMPlexSansDevanagari|天城文（无衬线）|✅ 已写入配置并支持|
 |IBMPlexHebrew|希伯来文（无衬线）|✅ 已写入配置并支持|
 |IBMPlexSansThai|泰文（无衬线）|✅ 已写入配置并支持|
 |IBMPlexSansThaiLooped|泰文（无衬线）|❌ 尚未支持|
 |IBMPlexSansKR|朝鲜语/韩语（无衬线）|✅ 已写入配置并支持|
 |IBMPlexSansJP|日语（无衬线）|✅ 已写入配置并支持|
 |IBMPlexSansTC|繁体中文（无衬线）|✅ 已写入配置并支持|
 |IBMPlexSansSC|简体中文（无衬线）|❌ 字体尚未发布|

> [!NOTE]
> 截至2024年1月的 [6.4 版本](https://github.com/ibm/plex/releases/latest)，IBM Plex 字体暂仅加入繁体中文支持，简体中文支持仍需数周时间。本模块目前使用繁体中文字形占位，并沿用原字体模板中的Noto补字机制确保文字支持。待 IBM 更新字体后，会跟进简体中文字形支持。

## 临时使用方法
1. 在 [IBM Plex 仓库](https://github.com/ibm/plex/releases/latest) 下载最新版本的 OpenType 字体包（版本应大于等于6.4）。
2. 在本仓库点击 **Code > Download ZIP**，下载模块代码并解压。
3. 参考上述的支持表，将**所有**已支持语言的 otf 字体文件解压，并平铺放入模块的`/system/fonts`文件夹中。**无需建立子文件夹或更改/删除其他文件，尤其是已包含的EmptyFonts空字体文件。**

最终字体目录结构应参照以下格式：
```
├── META-INF
├── system
│   ├── fonts
│   │   ├── IBMPlexSans-***.otf
│   │   ├── IBMPlexSerif-***.otf
│   │   ├── ....
```

4. 重新压缩为zip，使用 Magisk/KernelSU 刷入模块并重启。

## 附加说明

本模块基于落霞孤鹜发布的[CJK 字体 Magisk 模块模板 高级版](https://github.com/lxgw/advanced-cjk-font-magisk-module-template)。

对于部分扩展字符支持，可配合使用 Cccc-owo 制作的 [遍黑体外挂补全模块](https://github.com/Cccc-owo/Another-Plangothic-magisk-module)。

请仔细参考原模板说明中的[注意事项](https://github.com/lxgw/advanced-cjk-font-magisk-module-template#%E6%B3%A8%E6%84%8F%E4%BA%8B%E9%A1%B9)以及[兼容性调整](https://github.com/lxgw/advanced-cjk-font-magisk-module-template#%E5%85%BC%E5%AE%B9%E6%80%A7%E8%B0%83%E6%95%B4-%E4%BB%85%E4%BE%9B%E5%8F%82%E8%80%83)自行配置。

## 引用


|/|版本|
|-|-|
|[CJK Font Magisk Module Template](https://github.com/lxgw/advanced-cjk-font-magisk-module-template)|v3.3.220605|
|[IBM Plex](https://github.com/ibm/plex)|v6.4|
