$ErrorActionPreference = 'Stop'
$sourceSkill = Join-Path $PSScriptRoot 'codex-style-showcase'
if (-not (Test-Path -LiteralPath (Join-Path $sourceSkill 'SKILL.md'))) { throw '未找到完整的Skill目录，请先解压全部文件。' }
$codexBase = if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path ([Environment]::GetFolderPath('UserProfile')) '.codex' }
$skillsBase = Join-Path $codexBase 'skills'
$targetSkill = Join-Path $skillsBase 'codex-style-showcase'
New-Item -ItemType Directory -Path $skillsBase -Force | Out-Null
if (Test-Path -LiteralPath $targetSkill) {
  $backupBase = Join-Path $codexBase 'skill-backups'
  New-Item -ItemType Directory -Path $backupBase -Force | Out-Null
  $backupPath = Join-Path $backupBase ('codex-style-showcase-' + (Get-Date -Format 'yyyyMMdd-HHmmss-fff'))
  Copy-Item -LiteralPath $targetSkill -Destination $backupPath -Recurse
  Write-Output ('已备份旧版：' + $backupPath)
}
New-Item -ItemType Directory -Path $targetSkill -Force | Out-Null
Get-ChildItem -LiteralPath $sourceSkill -Force | ForEach-Object { Copy-Item -LiteralPath $_.FullName -Destination $targetSkill -Recurse -Force }
Write-Output ('已安装：' + $targetSkill)
Write-Output '请重开Codex聊天，调用 $codex-style-showcase；未安装任何付费服务。'
