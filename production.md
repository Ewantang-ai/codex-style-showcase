# 素材到成片

## 准备素材

先初始化专属新目录，再导入本人或已授权的口播MP4：
```powershell
python scripts/init_project.py --output 新工程
python scripts/setup_ffmpeg.py 新工程
python scripts/prepare_source.py --input 自己的绿幕.mp4 --project 新工程 --mode green
```
prepare_source输出透明人像序列、人物元数据、16k单声道WAV和波形。默认全画面；两侧空白多可加`--crop x,y,w,h`，但必须保留原底边。只适用于纯绿或真实alpha源，不会自动抠普通房间。透明源用`--mode alpha`。

## 对齐

把口播文案.txt改为实际朗读稿。使用已连接ASR输出transcript.json：段落数组，每段start/end/text/words，每个词含start/end/word，单位为源音频秒。也可：
```powershell
python scripts/transcribe.py --audio 新工程/assets/voice.wav --output 新工程/transcript.json --model 本地模型目录 --prompt-file 新工程/口播文案.txt
```
修改anchors.json：值为实际短语，重复短语可用`{"phrase":"词","occurrence":2}`。它们应对应动作语义，不是随便找个字凑数。随后：
```powershell
python 新工程/align.py
python 新工程/build.py
```
build默认拒绝覆盖已有film.html，以免丢失Studio编辑。确认要重建模板且已保留当前版本时，才加`--rebuild`。
对齐输出timing.json和voice.vtt逐词标签。它基于ASR词时间戳与文本插值，不是音素级强制对齐；低匹配会停止，关键句仍须试听。不得将demo模拟时间用于正式作品。

## 替换主题

project.json改署名，copy.json改主要标题/标签。卡片内部小字、SVG与动字字组仍须在shared.js核对，改copy不会自动理解主题。正式新手绘需按styles.md生成新图并看图标注：
```powershell
python scripts/render_whiteboard.py 新工程
python 新工程/build.py
```
白板片长来自sceneDurationMs；构建器允许合理的速度适配，但正式片要把绘制顺序对齐新声音。独立补片头属进阶模式，首次优先整稿一次生成，避免两套源时间混淆。

## Studio字幕与导出

运行`npx -y openfilm@0.2.6 open 新工程`，打开打印出的当前Studio地址，不复用别人的localhost地址或key。字幕由assets/voice.vtt产生，开启宿主字幕并在句子中段拖到下方居中，目标y约0.905、留底边距；示例米白底、深色字、绿色逐字高亮、150ms淡入。不能直接写`.film`。长句断到约16字一行，按实际平台遮挡区检查。

在工程目录：
```powershell
.\openfilm.ps1 look --count 16
.\openfilm.ps1 render --fps 25 --workers 3 --scale 1.5 --subtitles --out 成片_1080P.mp4
python Skill目录/scripts/check_video.py --input 成片_1080P.mp4 --output 验收
```
模板1280×720，scale1.5输出1920×1080；它不能补回源脸的马赛克。无NVIDIA时使用OpenFilm当前支持的编码器。查看运动片段并完整听声音，提供对应封面、稿和可编辑工程。
