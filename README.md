# IBM Plex Android 字体模块 <sup>实验性</sup>
本项目试图将 IBM Plex 字体通过 Systemless 模块形式应用至系统全局界面。

[English Instruction](README_EN.md)

> [!WARNING] 
> 此模块为实验性，相关替换代码仅经过少量测试。在部分设备上可能存在非预期问题，包括但不限于导致系统无法正常启动、卡顿、显示异常等，请在操作前审慎考虑，同时应时刻备份重要数据。因操作不当导致的系统故障（包括卡开机动画、功能异常等）或效果异常与模块或模板作者无关。

## 模块支持状态
### 本地已测试环境
LineageOS/CrDroid - Android 14 / KernelSU<br>
状态（自测）：<br>原生/系统界面已生效（无衬线/等宽）<br>**Webview 驱动的页面（如公众号内文等）当前未完全生效。**

其他ROM暂未测试

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
 |IBMPlexSansThaiLooped|泰文（无衬线）|❌ 尚未写入|
 |IBMPlexSansKR|朝鲜语/韩语（无衬线）|✅ 已写入配置|
 |IBMPlexSansJP|日语（无衬线）|✅ 已写入配置|
 |IBMPlexSansTC|繁体中文（无衬线）|✅ 已写入配置|
 |IBMPlexSansSC|简体中文（无衬线）|❌ 字体尚未发布|

> [!NOTE]
> 中日韩文用户敬请注意：
> 截至2024年1月末的 [6.4 版本](https://github.com/ibm/plex/releases/latest)，IBM Plex 字体暂仅加入初步的繁体中文支持，简体中文支持仍需数周时间。初版的繁体中文字形仍有部分渲染问题，需等待上游更新。
> 本模块配置文件目前使用繁体中文字形临时替补简体中文位置，并沿用原字体模板中的Noto补字机制确保文字支持。待 IBM 更新字体后，此处会跟进替换为简体中文字形。

## 手动安装方法
> [!TIP]
> 请仔细阅读并熟知此处的介绍以及[附加说明](#附加说明)。本模块已固定配置文件的字体名称，以尽可能避免大量文件重命名操作，因此原模板说明中的字体重命名复制等方法**不适用于此处**。

1. 在 [IBM Plex 仓库](https://github.com/ibm/plex/releases/latest) 下载最新版本的 OpenType 字体包（版本应大于等于6.4）。
2. 在本仓库点击 **Code > Download ZIP**，下载模块代码并解压。
3. 参考上述的支持表，将**所有**已支持语言的 otf 字体文件解压，并**平铺**放入模块的`/system/fonts`文件夹中。**无需建立子文件夹或更改/删除其他文件，尤其是已包含的EmptyFonts与Roboto空字体文件。**

最终的`/system/fonts`目录结构应参照以下格式：
```
├── META-INF
├── system
│   ├── fonts
│   │   ├── IBMPlexSans-***.otf
│   │   ├── IBMPlexSerif-***.otf
│   │   ├── IBMPlexSansTC-***.otf
│   │   ├── ....
```

4. 重新压缩为zip，使用 Magisk/KernelSU 安装模块并重启。

## 附加说明

本模块基于落霞孤鹜发布的[CJK 字体 Magisk 模块模板 高级版](https://github.com/lxgw/advanced-cjk-font-magisk-module-template) 改动。兼容性问题等与此模板共通，因此请仔细阅读原模板文档，尤其是[注意事项](https://github.com/lxgw/advanced-cjk-font-magisk-module-template#%E6%B3%A8%E6%84%8F%E4%BA%8B%E9%A1%B9)以及[兼容性调整](https://github.com/lxgw/advanced-cjk-font-magisk-module-template#%E5%85%BC%E5%AE%B9%E6%80%A7%E8%B0%83%E6%95%B4-%E4%BB%85%E4%BE%9B%E5%8F%82%E8%80%83)部分。

对于部分中日韩扩展字符支持，可配合使用 Cccc-owo 制作的 [遍黑体外挂补全模块](https://github.com/Cccc-owo/Another-Plangothic-magisk-module)。

## 引用

|项目|版本|
|-|-|
|[CJK Font Magisk Module Template](https://github.com/lxgw/advanced-cjk-font-magisk-module-template)|v3.3.220605|
|[IBM Plex](https://github.com/ibm/plex)|v6.4|
