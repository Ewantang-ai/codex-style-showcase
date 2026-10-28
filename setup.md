# 安装与试跑

本包是给Codex等能读写文件、运行命令的智能体使用的流程、脚本和模板，不是双击就能合成真人视频的软件。本次验证Windows；其他系统需调整命令和渲染环境。

## 安装

把codex-style-showcase整个目录放入Codex的skills目录，Windows通常在用户目录的`.codex/skills`，设置CODEX_HOME时以其为准。外层`安装Skill.ps1`会复制并备份同名旧目录；也可让Codex读取目录后安装。重开聊天检查能否调用`$codex-style-showcase`，复制成功不代表当前聊天已加载。

## 需要什么

| 工具 | 用途 | 包内状态 |
|---|---|---|
| Codex、文件与命令工具 | 读Skill、写工程、运行脚本 | 自备 |
| 浏览器控制工具 | 蝉镜网页、Studio字幕位置 | 由环境提供；缺少时用户做界面步骤 |
| Node.js/npm/npx | OpenFilm 0.2.6 | 不附运行时，从Node官方安装 |
| Python 3.10+ | 抠像、对齐、手绘 | requirements.txt附带，无虚拟环境 |
| FFmpeg | 抽语音与编码 | 不附程序，可用setup_ffmpeg.py复制已安装imageio-ffmpeg的程序 |
| ASR服务或本地模型 | 获取真实词时间戳 | 适配脚本有，模型没有 |
| 图像生成能力 | 新背景与新手绘图 | 示例图片有，服务没有 |
| 蝉镜账号、形象和声音 | 新数字人口播 | 自行登录；有MP4可跳过 |

免费领取Skill不等于全流程免费，Codex、蝉镜、图像/ASR服务按各自账户计费。

在Skill目录按需建立专属环境：
```powershell
python -m venv .venv
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
.\.venv\Scripts\python.exe scripts/doctor.py
```
后续命令中的python均须使用这个虚拟环境的解释器（例如`.\.venv\Scripts\python.exe`，写成完整路径亦可），不要安装到一个解释器却用另一个运行。本地ASR为可选：另装faster-whisper并准备兼容模型目录，或用已连接转写服务。浏览器和图像服务不能靠pip安装出来。

## 无真人静音试跑

相对路径按实际位置替换。选择一个不存在的新工程目录：
```powershell
python scripts/init_project.py --output 试跑工程 --demo
python scripts/setup_ffmpeg.py 试跑工程
python 试跑工程/align.py
python 试跑工程/build.py
npx -y openfilm@0.2.6 open 试跑工程
```
试跑使用“占位人物”示意图、静音音轨和模拟转写，仅检查工具和画面，不是数字人生成结果，也不能检验唇形或真实语音同步。Studio开启字幕并拖到下方。在工程目录：
```powershell
.\openfilm.ps1 look --count 12
.\openfilm.ps1 render 0-3 --fps 25 --workers 2 --subtitles --out 试跑片段.mp4
```
若PowerShell不允许执行脚本，直接用npx并给当前进程PATH加入FFmpeg目录，不需要永久修改执行策略。

正式工程运行init_project时不要加--demo。脚本拒绝覆盖已有目录。正式流程见production.md。
