$ mkdir learngit
$ cd learngit
$ pwd
/Users/michael/learngit

$ git init
Initialized empty Git repository in /Users/michael/learngit/.git/

$ git add readme.txt

$ git commit -m "wrote a readme file"
[master (root-commit) eaadf4e] wrote a readme file
 1 file changed, 2 insertions(+)
 create mode 100644 readme.txt
 
$ git add file1.txt
$ git add file2.txt file3.txt
$ git commit -m "add 3 files."

$ git status
$ git diff readme.txt 
$ git add readme.txt
$ git status
$ git commit -m "add distributed"
$ git status

$ git log
$ git log --pretty=oneline

$ git reset --hard HEAD^
$ cat readme.txt
$ git reset --hard 1094a
$ cat readme.txt
$ git reflog

$ git diff HEAD -- readme.txt 

$ git checkout -- readme.txt //就是让这个文件回到最近一次git commit或git add时的状态。
//git checkout -- file命令中的--很重要，没有--，就变成了“切换到另一个分支”的命令，我们在后面的分支管理中会再次遇到git checkout命令。

$ git reset HEAD readme.txt
$ git status
$ git checkout -- readme.txt
//Git同样告诉我们，用命令git reset HEAD <file>可以把暂存区的修改撤销掉（unstage），重新放回工作区：

$ rm test.txt
$ ssh-keygen -t rsa -C "Flying.Jiang@homecredit.cn"

$ git remote add origin-ssm git@github.com:flyingJiang/TestInterface.git
//TestInterface 
//git@github.com:michaelliao/learngit.git
//git@github.com:flyingJiang/learngit.git
$ git push -u origin master
//由于远程库是空的，我们第一次推送master分支时，加上了-u参数，Git不但会把本地的master分支内容推送的远程新的master分支，还会把本地的master分支和远程的master分支关联起来，在以后的推送或者拉取时就可以简化命令。
$ git push origin master

$ git clone git@github.com:flyingJiang/gitskills.git
git remote add gitskillsorigin git@github.com:flyingJiang/gitskills.git
//git remote add originInter git@github.com:flyingJiang/Test4Interface.git
//git remote add origin3 git@github.com:flyingJiang/Test2Inteface.git
/// git remote add origin git@github.com:flyingJiang/SpringBoot4Oracle.git

git push -u origin master
//git push -u origin3 master
git push gitskillsorigin master
$ git checkout -b dev
$ git branch dev
$ git checkout dev
$ git branch
$ git checkout master

$ git merge dev
$ git branch -d dev
$ git branch

$ git switch -c dev
$ git switch master

$ git log --graph --pretty=oneline --abbrev-commit

$ git merge --no-ff -m "merge with no-ff" dev
$ git stash

$ git stash list

$ git merge --no-ff -m "merged bug fix 101" issue-01
$ git stash pop

$ git stash apply stash@{0}
$ git cherry-pick 4c805e2

$ git tag -a v0.1 -m "version 0.1 released" 1094adb

touch .gitignore
#要想.gitignore生效，必须得提交，输入命令：
git add .gitignore
git commit .gitignore -m "首先提交.gitignore文件"

