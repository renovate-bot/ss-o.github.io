---
title: "Setup personal dotfiles"
date: 2020-10-29T22:49:29Z
draft: false
comments: true 
tags: 
  - dotfiles
---

  <!-- SHIELDS -->
[![Issues][issues-shield]][issues-url]
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]

<!-- HEADER -->
<br />
<p align="center">
  <a href="https://github.com/ss-o/dotfiles">
    <img src=".img/logo.png" alt="Logo" width="180" height="60">
  </a>
  <h3 align="center">Personal Dotfiles Setup</h3>
  <p align="center">
    <br />
    ·    <a href="https://github.com/ss-o/dotfiles/issues">Report Bug</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
## Table of Contents

- [Table of Contents](#table-of-contents)
- [About The Project](#about-the-project)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Files Tree](#files-tree)
- [Issues](#issues)
- [Contributing](#contributing)
- [Contact](#contact)




<!-- ABOUT THE PROJECT -->
## About The Project




### Prerequisites

This is list of prerequisites to setup dotfiles
* git
* rsync


### Installation
 
1. Clone the repository
```bash
git clone https://github.com/ss-o/dotfiles.git .dotfiles
```
2. Enter directory and execute setup.sh
```bash
cd .dotfiles && ./setup.sh
```
<!-- FILES TREE-->
### Files Tree

```bash
.
├── Dockerfile
├── git
│   ├── gitconfig
│   ├── gitconfig.local
│   ├── gitconfig.local.example
│   └── gitignore
├── lib
│   ├── scripts
│   │   ├── bootstrap.sh
│   │   ├── pkg_managers.zsh
│   │   └── vscode_setup.zsh
│   ├── shell
│   └── utils
├── README.md
├── setup.sh
└── shell
    ├── root
    └── src
        ├── bash_aliases
        ├── bash_exports
        ├── bash_functions
        ├── bash_paths
        └── bash_wrappers

6 directories, 17 files
```

<!-- ISSUES -->
## Issues

See the [open issues](https://github.com/ss-o/dotfiles/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/FeatureName`)
3. Add new files (`git add .`)
4. Commit your Changes (`git commit -m 'New Feature'`)
5. Push to the Branch (`git push origin feature/Feature`)
6. Open a Pull Request


<!-- CONTACT -->
## Contact

[Twitter] | [Website]


<!-- MARKDOWN LINKS & IMAGES -->
[imgname]: .img/screenshot.png.png
[issues-url]: https://github.com/ss-o/dotfiles/issues
[issues-shield]: https://img.shields.io/github/issues/ss-o/dotfiles.svg?style=flat-square

[contributors-shield]: https://img.shields.io/github/contributors/ss-o/dotfiles.svg?style=flat-square
[contributors-url]: https://github.com/ss-o/dotfiles/graphs/contributors

[forks-shield]: https://img.shields.io/github/forks/ss-o/dotfiles.svg?style=flat-square
[forks-url]: https://github.com/ss-o/dotfiles/network/members


[Website]: https://sall.w-s.io
[Twitter]: https://twitter.com/digital_wizz

