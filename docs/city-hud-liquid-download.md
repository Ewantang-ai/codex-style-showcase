# 等距城市、HUD扫描、液态流动：本条视频资料领取

这条推荐视频的三款制作入口已经收进 **v2.0.0 完整整合包**，和之前的像素闯关、数字人口播工具共用一个领取入口，无需分开下载。

**[下载完整包 codex-video-skills-v2.0.0.zip](https://github.com/Ewantang-ai/codex-style-showcase/releases/download/v2.0.0/codex-video-skills-v2.0.0.zip)**  
[打开发布页查看 Assets 附件](https://github.com/Ewantang-ai/codex-style-showcase/releases/tag/v2.0.0)

文件约218 MiB。请下载这个指定名称的 ZIP；GitHub 自动生成的 Source code (zip) 不是完整领取包。已下载 v2.0.0 的朋友无需重复下载。

## 三款分别在哪里

| 视频里的效果 | Skill目录 | 可以改什么 |
|---|---|---|
| 等距城市：楼房、道路与不同用途的街区扩建 | `skills/isometric-city` | 园区/商业/住宅等场景、扩建顺序、镜头与品牌广告牌 |
| HUD扫描：目标扫描、锁定、信息标注 | `skills/hud-scan` | 扫描对象、指标文字、信息面板、品牌标题 |
| 液态流动：液滴融合、流动转场与字标 | `skills/liquid-motion` | 名字/品牌、颜色、聚合与转场的时间 |

每个目录都有 `SKILL.md`、参考说明与运行资源。请完整保留目录，不要只复制一份 SKILL.md。示例中的「一个绿蓝」可以替换成自己的名字或品牌。

## 下载后怎么开始

1. 在电脑上完整解压。
2. 先看根目录 `00_先读我.md`。
3. 把整个解压文件夹交给电脑端 Codex，粘贴下面这段：

> 请先读取本整合包的 README、00_先读我，以及 skills/isometric-city、skills/hud-scan、skills/liquid-motion 三个目录里的 SKILL.md。检查本机环境，依次打开这三个静音动画示例。先保留原生动画的运动、材质、字体和镜头，跑通后再按我的主题修改，不要用几张静态图替代。需要我自己的声音和头像时再使用我提供的素材，不提交任何收费生成，不使用制作者的个人脸声。

需要手动预览时，在解压目录执行：

```text
python tools/preview.py --style city --open
python tools/preview.py --style hud --open
python tools/preview.py --style liquid --open
```

每次运行一条；切换前结束上一次预览服务。若电脑只提供 `py` 启动器，可把 `python` 改为 `py -3`。安装、导出和排错看 `docs/安装与试跑.md`。

## 包内还有什么

- 之前的像素NPC闯关教程与口播动画工具。
- 15种原风格源码、提示词与目录。
- 29个可选进阶知识Skill。
- 预览/静音导出工具、声音与本地对口型流程、来源与许可说明。

这些是制作说明、源码与工具，不是装好就能在任意电脑一键生成视频的模型。制作环境需自行准备；第三方服务是否收费按其当时规则。源码以 mg-styles-15 等开源项目为基础整合与改编，保留原作者及各资源许可。包内没有制作者本人人脸、原音、账号、密钥或模型权重。
