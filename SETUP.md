# Jekyll 网站本地运行指南

## 🚀 快速开始

您的 Jekyll 网站已经创建完成！现在需要安装 Ruby 和 Jekyll 来本地预览。

## 📦 安装步骤

### 1. 安装 Ruby

**Windows 用户推荐使用 RubyInstaller：**

1. 访问 [RubyInstaller.org](https://rubyinstaller.org/downloads/)
2. 下载 "Ruby+Devkit" 版本（推荐 3.0 或更高版本）
3. 运行安装程序，选择 "Add Ruby executables to your PATH"
4. 安装完成后重启终端

**验证安装：**
```powershell
ruby --version
gem --version
```

### 2. 安装 Bundler 和 Jekyll

```powershell
gem install bundler jekyll
```

### 3. 安装项目依赖

在项目目录中运行：
```powershell
cd "e:\web\Caesar107.github.io"
bundle install
```

### 4. 启动本地服务器

```powershell
bundle exec jekyll serve
```

网站将在 http://localhost:4000 运行

## 🔧 常用命令

```powershell
# 启动开发服务器
bundle exec jekyll serve

# 启动服务器并自动重载
bundle exec jekyll serve --livereload

# 构建网站到 _site 目录
bundle exec jekyll build

# 清理生成的文件
bundle exec jekyll clean
```

## 🌐 部署到 GitHub Pages

### 1. 推送到 GitHub

```powershell
git add .
git commit -m "Initial website setup"
git push origin main
```

### 2. 启用 GitHub Pages

1. 进入您的 GitHub 仓库 `Caesar107/Caesar107.github.io`
2. 点击 "Settings" 选项卡
3. 滚动到 "Pages" 部分
4. 在 "Source" 下选择 "Deploy from a branch"
5. 选择 "main" 分支和 "/ (root)" 文件夹
6. 点击 "Save"

几分钟后，您的网站将在 https://caesar107.github.io 上线！

## 📝 内容更新

### 修改个人信息

编辑 `_config.yml` 文件中的：
- `title`: 网站标题
- `description`: 网站描述
- `author` 部分：个人信息和社交链接

### 更新简历

编辑 `_pages/cv.md` 文件，更新：
- 教育背景
- 工作经验
- 项目经历
- 技能清单

### 添加博客文章

在 `_posts` 目录创建新文件，格式：`YYYY-MM-DD-标题.md`

### 自定义样式

在 `assets/css/main.scss` 中添加自定义 CSS

## 🎨 主题定制

当前使用 Minimal Mistakes 主题，可以通过修改 `_config.yml` 中的：
- `minimal_mistakes_skin`: 更改主题颜色
- 其他主题选项请参考 [Minimal Mistakes 文档](https://mmistakes.github.io/minimal-mistakes/)

## 🔍 SEO 优化

网站已包含基本 SEO 设置：
- 自动生成 sitemap.xml
- 结构化数据
- Meta 标签优化
- Open Graph 支持

## 📱 响应式设计

网站已完全响应式，在手机、平板和桌面设备上都能完美显示。

## 🆘 故障排除

### 常见问题

1. **Ruby 安装问题**：确保安装了 Ruby Devkit
2. **权限错误**：尝试以管理员身份运行终端
3. **依赖冲突**：删除 `Gemfile.lock` 并重新运行 `bundle install`

### 获取帮助

- Jekyll 官方文档：https://jekyllrb.com/docs/
- Minimal Mistakes 文档：https://mmistakes.github.io/minimal-mistakes/
- GitHub Pages 文档：https://docs.github.com/pages/

## 📞 联系

如有问题，请通过以下方式联系：
- Email: caesarc107@gmail.com
- GitHub: @Caesar107
