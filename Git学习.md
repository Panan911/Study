# 1.什么是Git

# 2. 初次使用Git

1. 安装Git。

2. 在命令行模式里输入以下命令

   > - git config --global user.name "用户名"
   >
   > - git config --global user.email "密码"

3. 了解Git的工作原理

   ![image-20200511012327062](./Git学习.assets/image-20200511012327062.png)

- Git的工作流程一般是这样子的：
  1. 在工作目录中添加、修改文件
  2. 将需要进行版本管理的文件放入暂存区域
  3. 将暂存区域的文件提交到Git仓库

- Git管理的文件有三种状态:
  1. 已修改 (modified)
  2. 已暂存 (staged)
  3. 已提交 (committed)

- 将工作目录的文件放到Git仓库只需要三步：
  1. git init
  2. git add filename
  3. git commit -m "提交备注"







# Git 命令大全

1. 初始化仓库

```markdown
# 初始化仓库
git init
# 添加本地文件到stage
git add .
git add filename
# 提交
git commit -m "备注"
# 推送到Repository
git push
git push -u origin master
# 查看Git状态
git status
# 显示当前远程仓库地址
git remote -v
# 修改远程仓库地址
git remote set-url origin git@github.com:Panan911/Study.git
# 创建新分支
git branch newbranch
# 查看分支是否成功
git branch
# 切换到新分支
git checkout newbranch
# 切换到主分支
git checkout master
# 将新分支提交的改动合并到主分支上
git merge newbranch
# 删除新的分支
git branch -D newbranch
```

