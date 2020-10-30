---
title: "Git Remote Repository"
date: 2020-09-13T23:36:52+01:00
draft: false
toc: false
images:
tags:
  - git

---
![git logo](https://sall.w-ss.io/img/git-goodness.gif)

How to install git on your system: [https://git-scm.com/downloads](https://git-scm.com/downloads), [Documentation](https://git-scm.com/doc).

> You can store your repositories: [github.com](https://github.com), [gitlab.com](https://gitlab.com), [bitbucket.org](https://bitbucket.org) and etc. 

---

Create a new repository on the command line:

```bash
echo “# Git Repository” >> README.md 
git init 
git add README.md 
git commit -m “first commit" 
git branch -M master 
git remote add origin git@github.com:your-repo/your-repo-name.git
git push -u origin master 
```

Push an existing repository from the command line:

```bash 
git remote add origin git@github.com:your-repo/your-repo-name.git 
git branch -M master 
git push -u origin master
```

Your repository available to view on site you chose.
