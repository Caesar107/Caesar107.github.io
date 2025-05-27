#!/bin/bash
# 快速部署脚本 - 适用于 Git Bash 或 WSL

echo "🚀 开始部署 Caesar 的个人网站..."

# 检查是否在正确的目录
if [ ! -f "_config.yml" ]; then
    echo "❌ 错误：请确保在项目根目录运行此脚本"
    exit 1
fi

# 添加所有文件到 Git
echo "📦 添加文件到 Git..."
git add .

# 提交更改
echo "💾 提交更改..."
read -p "请输入提交信息 (回车使用默认): " commit_message
if [ -z "$commit_message" ]; then
    commit_message="Update website content"
fi

git commit -m "$commit_message"

# 推送到 GitHub
echo "🚀 推送到 GitHub..."
git push origin main

echo "✅ 部署完成！"
echo "🌐 您的网站将在几分钟后在 https://caesar107.github.io 上线"
echo "📊 您可以在 GitHub Actions 中查看部署状态"
