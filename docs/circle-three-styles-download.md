# 一个圆，能有多炫｜第二期领取指南

**[下载专用资料包 circle-three-styles-v1.0.0.zip](https://github.com/Ewantang-ai/codex-style-showcase/raw/main/circle-three-styles-v1.0.0.zip)**

## 里面有什么

| 效果 | 可用于 | 具体示例 |
|---|---|---|
| 图形形变 | 教程转场、产品功能切换、品牌片头 | 形状插值、圆形分裂、几何Q弹字 |
| 极光玻璃 | APP介绍、AI工具演示、产品发布 | 极光背景、毛玻璃卡片、折射与玻璃字 |
| 霓虹合成波 | 活动预告、音乐片头、个人开场 | 透视网格、霓虹道路、夕阳、发光字 |

小包直接包含三种效果的可编辑源码、三份原始风格提示词、一个三模式Skill入口，以及素材准备、预览和使用说明。

## 怎么开始

1. 在电脑上下载并完整解压ZIP。
2. 打开「00_先读我.md」。
3. 将整个解压文件夹交给电脑端Codex，复制「01_复制给AI.txt」。
4. 让AI先准备素材并播放三种静音示例，再按自己的选题、名字和素材修改。

首次需要Python 3、Node.js/npm和支持WebGL2的浏览器。源码已在小包内；字体、纹理通过准备脚本从之前v2整合包读取。已有旧包时运行：

```text
python scripts/prepare.py --base "旧整合包解压目录"
python scripts/preview.py --open
```

这些命令在解压包内的 skills/circle-three-styles 目录执行。没有旧包时直接运行 `python scripts/prepare.py`，首次会下载并校验约218 MiB的公开v2素材包，再安装锁定版本的npm依赖。也可用 `--bundle "旧ZIP路径"` 复用已下载的ZIP。

[旧完整包下载页](https://github.com/Ewantang-ai/codex-style-showcase/releases/tag/v2.0.0)继续保留，像素、城市、HUD和液态等旧资料不需要重复更换。

## 说明

这是可改编的源码和Skill流程，不含作者本人的脸、声音、账号、积分或模型；本地静音示例不调用收费生成接口。自己的数字人、声音与封面由自己提供。动画基于 [mg-styles-15](https://github.com/Vincentwei1021/mg-styles-15) 的MIT源码，保留原生运动和许可；原作者音乐文件未随包分发。

已验证三款页面加载、定位与乱序复现、播放器播放和切换、从本地v2目录/ZIP取素材、ZIP完整性与公开文件清单。新电脑的首次网络下载和npm安装未逐机验收。

专用ZIP：225,504字节；32个文件。
SHA256：`96b2f767169e8c59d2c5c1a70ea31edb16495f0b3aba3b5020da25315cf1b8bd`。
