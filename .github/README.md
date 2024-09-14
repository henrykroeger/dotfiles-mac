# Dotfiles

Dotfiles for my Macbook Pro.

## Install

### Bare Repo Setup

The dotfiles are stored using a bare git repo. To correctly setup the repo,
follow the steps below.

1. `alias dots="git --git-dir=$HOME/.dots --work-tree=$HOME"`
2. `echo ".dots" >> $HOME/.gitignore`
3. `git clone --bare https://github.com/henrykroeger/dotfiles-mac.git $HOME/.dots`
4. `dots checkout`

### Homebrew

Use `brew bundle dump` to create a Brewfile.

Use `brew bundle install` to install all dependencies from the Brewfile.

### Tmux

To install `tmux` plugins, start `tmux` and run `<leader>I`. `<leader>` is
currently set as `<C-space>`.

## Usage

### dots

Use the `dots` command in the same way that you would use the `git` command.

To add a file, use `dots add <filename>`.

To commit, use `dots commit`.

To use lazygit with the dots command, use `lgdots`.

### .gitignore

By default, all files are ignored. When adding a new file, ensure that it is not
ignored by `.gitignore`.
