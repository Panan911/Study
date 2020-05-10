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