# Setting Nvim environment from zero base.

## Required
- neovim installed
- npm installed
- node installed
- curl installed

## Initial Setting
Place this repo to 
```
~/.config/nvim/
```

## Setting vim-plug
### Install vim-plug
For Unix or Linux, Run below command.
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
### Install Plugins Written in init.vim
```
:PlugInstall
```
This installs coc.nvim, coc-rs, and others.

## Setting Snippets
Install coc_snippet
```
:CocInstall coc-snippets
```

## Setting for rust-analyzer
Install rust-analyzer
```
git clone https://github.com/rust-analyzer/rust-analyzer.git
cd rust-analyzer
cargo xtask install --server
```

Install coc.nvim plugin for rust-analyzer
```
:CocInstall coc-rust-analyzer
```

## Install coc-explorer
coc-explorer is folder explorer plugin like vscode.
```
:CocInstall coc-explorer
```

## Or Install Nerd Fonts
```
git clone --branch=master --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh
cd ..
rm -fr nerd-fonts
```


