@echo off
REM 快速部署脚本 - Windows Batch 版本

echo 🚀 开始部署 Caesar 的个人网站...

REM 检查是否在正确的目录
if not exist "_config.yml" (
    echo ❌ 错误：请确保在项目根目录运行此脚本
    pause
    exit /b 1
)

REM 添加所有文件到 Git
echo 📦 添加文件到 Git...
git add .

REM 提交更改
echo 💾 提交更改...
set /p commit_message="请输入提交信息 (回车使用默认): "
if "%commit_message%"=="" set commit_message=Update website content

git commit -m "%commit_message%"

REM 推送到 GitHub
echo 🚀 推送到 GitHub...
git push origin main

echo ✅ 部署完成！
echo 🌐 您的网站将在几分钟后在 https://caesar107.github.io 上线
echo 📊 您可以在 GitHub Actions 中查看部署状态
pause
