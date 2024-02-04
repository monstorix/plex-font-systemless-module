# IBM Plex Android 字体模块 <sup>实验性</sup>
本项目试图将 IBM Plex 字体通过 Systemless 模块形式应用至系统全局界面。

[English Instruction](README_EN.md)

> [!WARNING] 
> 此模块为实验性，相关替换代码仅经过少量测试，**暂不推荐日常使用**。在部分设备上可能存在非预期问题，包括但不限于导致系统无法正常启动、卡顿、显示异常等，**请在操作前审慎考虑，同时应时刻备份重要数据。因操作不当导致的系统故障（包括卡开机动画、功能异常等）或效果异常与模块或模板作者无关**。

## 模块支持状态
### 本地已测试环境
Redmi K40 Pro (haydn) - LineageOS/CrDroid - Android 14 / KernelSU<br><br>
当前状态：<br>原生/系统界面已生效（无衬线/等宽）<br>**由于 Android 12 以上的新字体渲染机制，Webview 驱动的页面（如Flutter应用、公众号内文等）默认情况下未完全生效。**<br>
其他ROM暂未测试<br><br>
> [!NOTE]
> 对于基于 Chromium/Android Webview 的浏览器应用，可能需要对其单独在设置中停用 Root 隐藏功能, 如Magisk Hide/DenyList或KernelSU的“卸载模块”功能，才能让字体规则在网页中生效。<br>对于 Firefox 移动版及其衍生版本，由于 GeckoView 引擎暂未适配系统字体回退机制，模块只能正常替换其界面字体，对其取消 Root 隐藏时，网页字体则会出现字形错乱等问题，此为浏览器上游问题。

### 当前支持的语言变体
 | 文件前缀 | 支持语族 | 状态  | 
 | ------- | ---- | -------------------------------- |
 |IBMPlexSans|拉丁文/希腊文/西里尔文（无衬线）| ✅ 已写入配置 |
 |IBMPlexSansCondensed| 拉丁文/希腊文/西里尔文（无衬线窄体）| ✅ 已写入配置|
 |IBMPlexSerif|拉丁文/希腊文/西里尔文（衬线）|✅ 已写入配置|
 |IBMPlexMono|拉丁文/希腊文/西里尔文（等宽）|✅ 已写入配置|
 |IBMPlexSansArabic|阿拉伯字母（无衬线）|✅ 已写入配置|
 |IBMPlexSansDevanagari|天城文（无衬线）|✅ 已写入配置|
 |IBMPlexHebrew|希伯来文（无衬线）|✅ 已写入配置|
 |IBMPlexSansThai|泰文（无衬线）|✅ 已写入配置|
 |IBMPlexSansThaiLooped|泰文（无衬线）|✅ 作为可选项写入配置，<br>可按需启用|
 |IBMPlexSansKR|朝鲜语/韩语（无衬线）|✅ 已写入配置|
 |IBMPlexSansJP|日语（无衬线）|✅ 已写入配置|
 |IBMPlexSansTC|繁体中文（无衬线）|✅ 已写入配置|
 |IBMPlexSansSC|简体中文（无衬线）|❌ 字体尚未发布，<br>配置已预留|

> [!NOTE]
> 中日韩文用户敬请注意：<br>
> 截至2024年1月末的 [6.4 版本](https://github.com/ibm/plex/releases/latest)，IBM Plex 字体暂仅加入初步的繁体中文支持，简体中文支持仍需数周时间。初版的繁体中文字库仍有部分字符存在行高、字形不一致等问题，暂不推荐日常使用。
> 本模块配置文件目前使用繁体中文字形临时替补简体中文位置，并沿用原字体模板中的Noto补字机制确保文字支持，当前直接安装会看到混合字形。待 IBM 更新字体后，此处会跟进替换为简体中文字形。

## 安装方法
> [!TIP]
> 请仔细阅读各项介绍以及[附加说明](#附加说明)。本模块已固定配置文件的字体名称，以尽可能避免大量文件重命名操作，因此原模板说明中的字体重命名复制等方法**不适用于此处**。

从 Release 中下载 Module-Hinted.zip（或Module-Unhinted.zip） 文件，使用 Magisk 或 KernelSU 管理器安装并重启。<br>
如需更改参数，请自行解压并编辑模块中的`/system/etc/font.xml`，同时将其内容覆盖复制至同目录与`/system/system_ext/etc`目录下的`font_base.xml`。

## 附加说明

本模块基于落霞孤鹜发布的[CJK 字体 Magisk 模块模板 高级版](https://github.com/lxgw/advanced-cjk-font-magisk-module-template) 改动。兼容性问题等与此模板共通，因此请仔细阅读原模板文档，尤其是[注意事项](https://github.com/lxgw/advanced-cjk-font-magisk-module-template#%E6%B3%A8%E6%84%8F%E4%BA%8B%E9%A1%B9)以及[兼容性调整](https://github.com/lxgw/advanced-cjk-font-magisk-module-template#%E5%85%BC%E5%AE%B9%E6%80%A7%E8%B0%83%E6%95%B4-%E4%BB%85%E4%BE%9B%E5%8F%82%E8%80%83)部分，其中记录了部分 OEM ROM 的兼容方法。

对于更大范围的中日韩字符支持，可配合使用[遍黑体字库](https://github.com/Fitzgerald-Porthmouth-Koenigsegg/Plangothic-Project)或[天珩全字库](http://cheonhyeong.com/Simplified/download.html)，原模板配置文件已为这两款字体预留字符回退支持，将字体下载后一并放入`/system/fonts`文件夹即可。

## 引用

|项目|版本|
|-|-|
|[CJK Font Magisk Module Template](https://github.com/lxgw/advanced-cjk-font-magisk-module-template)|v3.3.220605|
|[IBM Plex](https://github.com/ibm/plex)|v6.4|
