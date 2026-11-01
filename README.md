# 一个绿蓝 · Codex 视频制作整合包 v2.0.0

把已发布的像素闯关教程、数字人口播动画工具和后续动效资料放在同一个领取入口。

**[下载完整整合包](https://github.com/Ewantang-ai/codex-style-showcase/releases/download/v2.0.0/codex-video-skills-v2.0.0.zip)** · **[查看版本与附件](https://github.com/Ewantang-ai/codex-style-showcase/releases/latest)**

## 等距城市、HUD扫描、液态流动这条视频

这三款已经在同一个 v2.0.0 整合包中：`skills/isometric-city`、`skills/hud-scan`、`skills/liquid-motion`。

**[本条视频的领取与使用指南](docs/city-hud-liquid-download.md)**。已下载 v2.0.0 无需重复领取；新朋友下载上方指定名称的完整 ZIP，不要选自动生成的 `Source code (zip)`。

## 刚从抖音群来的朋友

1. 打开上面的版本页，展开 Assets，下载 `codex-video-skills-v2.0.0.zip`。
2. 完整解压，先看 `00_先读我.md`。文件较大，建议在电脑上下载。
3. 把整个解压目录交给电脑端 Codex，再复制 `01_直接发给Codex.txt`。
4. 先看不带真人、不调用生成服务的静音示例；确认效果后再替换自己的文案、声音和头像。

## 这版包含什么

| 内容 | 你可以做什么 | 去哪里看 |
|---|---|---|
| 像素闯关教程 | NPC对话、问号任务、跑跳过桥、宝箱奖励、技能书、A/B选择 | `docs/像素闯关教程.md` |
| 数字人口播工具 | 贴纸、连续手绘、科技卡片、动态大字、背景切换 | `skills/codex-style-showcase` |
| 三款扩展示例 | 等距城市扩建、HUD信息扫描、液态署名与转场 | `skills/isometric-city` 等 |
| 15种风格源码 | 源码、原始提示词、静音预览目录，含像素、城市、液体、HUD等 | `skills/mg-style-library` |
| 29个进阶知识Skill | GSAP、Three.js与动效设计，可选安装 | `extras/skills` |
| 声音与头像流程 | 视频编辑页试听取音、本地对口型、头像居中、大字幕和人声响度 | `docs/声音与数字人.md` |

`skills` 下共有7个制作入口；`extras` 是29个可选知识Skill。15种风格是源码示例，不把它们虚称为15个独立生成模型。

## 最简单的两种用法

- **直接使用**：把整个目录交给 Codex，按 `01_直接发给Codex.txt` 开始。
- **安装后使用**：在本机阅读并运行 `安装Skill.ps1`，默认安装7个制作入口，旧版先备份。重开聊天使用 `$greenblue-video-studio`；像素专用入口为 `$pixel-skill-quest`。29个进阶Skill只有加 `-IncludeExtras` 才安装。

静音预览：`python tools/preview.py --style pixel --open`。可将 pixel 换为 city、hud、liquid、library。

需要导出时，按 `docs/安装与试跑.md` 准备 Node、Chrome、FFmpeg。包内不包含这些程序或大模型。

## 费用与私人素材

本包的本地静音示例不调用收费AI接口。若需要本人声音，优先使用自己已有录音，或在自己的禅镜**视频编辑页**输入文案后，检查当时页面是否提供试听，保存自己的试听音频，再本地对口型。试听权限和平台规则按当时页面为准，不能承诺所有账号永远免费。

**不能因为试听连接失败，就自行切到收费的独立“文字转声音”，也不能替你提交收费视频生成。** 任何平台扣费，须先得到本次明确同意。

包内没有制作者的人脸、声音、账号、积分、模型权重、Cookie或密钥。请使用自己的素材。MuseTalk需要在自己的设备单独配置，首次模型下载可能较大，CPU运行可能较慢。

## 说明与许可

本包含代码、流程、示例和说明，不是装完就能在任何电脑免费一键生成任意视频的软件。像素关卡是按时间编排的动画影片，不是已经完成的可操作游戏。

视频与示例制作中使用公开的 mg-styles-15 动画源码，并做了剧情和镜头改编；知识Skill与字体保留各自许可，详见 `docs/来源与许可.md`。不要将第三方代码、字体或样片声称为独立原创。

旧版 v1.1.0 的发布页和压缩包保留。v2.0.0 已包含旧版完整制作工具，老用户直接领取新版即可。更新内容见 `CHANGELOG.md`，实测范围见 `docs/验证说明.md`。
