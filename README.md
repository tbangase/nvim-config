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

## Setting for rust-analyzer
Install rust-analyzer
```
git clone https://github.com/rust-analyzer/rust-analyzer.git
cd rust-analyzer
cargo xtask install --server
```

## Install Nerd Fonts
```
git clone --branch=master --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh
cd ..
rm -fr nerd-fonts
```

Please notice to use font `SauceCodePro Nerd Font` in your terminal

# Tips
## Snippets
### How to change to next input when use snippets.
```
<C-j>
```
This brings to next input.

### How to add custom snippets
```
:UltiSnipsEdit
```
This brings to custom snippet file of opening filetype.

