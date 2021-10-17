# Setting Nvim environment from zero base.

## Setting vim-plug
### Install vim-plug
For Unix or Linux, Run below command.
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
### Install Plugins
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
:CocInstall coc-rust-analyzer
```


