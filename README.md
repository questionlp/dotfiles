# Linux and macOS dotfiles

This repository contains the Bash and Z Shell scripts that I use on my macOS and Linux development machines.

## Bash

For Bash, the included `.bashrc` and `.profile` files come from a stock installation of [Pop!_OS](https://pop.system76.com) 22.04 LTS and have been slightly modified to load in [pyenv](https://github.com/pyenv/pyenv).

## Z Shell

For Z Shell, customized versions of the `.zprofile` and `.zshrc` files are included and have been set up to use [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) and the [Powerlevel10k Theme](https://github.com/romkatv/powerlevel10k) (which is customized with the included `.p10k.zsh` file).

Two additional files are included, `.zsh_aliases` and `.zsh_exports` include common aliases that I use and various exports that I have set up for use with Python, Node and Ruby development, and for use with Homebrew on macOS.

The files will automatically detect the operating system and architecture to determine which items to be included in the exports and the corresponding paths (which the Homebrew command paths are different on Macs with Intel processors and Macs with Apple Silicon processors).

## Requirements

* [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) installed under `$HOME/.oh-my-zsh`
* [Powerlevel10k Theme](https://github.com/romkatv/powerlevel10k) manually installed under `$HOME/.oh-my-zsh/custom/themes/powerlevel10k`

For the version manager tools, make sure to install them using the respective Git install methods rather than depending on package managers.

* [nvm (Node Version Manager)](https://github.com/nvm-sh/nvm) installed under `$HOME/.nvm`
* [pyenv](https://github.com/pyenv/pyenv) installed under `$HOME/.pyenv`
* [rbenv](https://github.com/rbenv/rbenv) installed under `$HOME/.rbenv`

## Installation

Clone this repository into a location of your choice, back up any existing Z Shell-related files mentioned under the Z Shell section above, and create symlinks in your home directory for each Z Shell-related files in the repository.

The repository also includes a `.screenrc` file that includes a customized hardstatus line. You can create a symlink in your home directory to point to the file in the repository.

