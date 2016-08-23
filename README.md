# Neovim config dir

# HoWto Enable

To use this configuration you have to ln to the correct init.vim.  
Since I'm using some different environments and styles, I'm keeping diffent configs for vim in different locations. Linking init.vim to these configs makes it easy to switch between configurations.  

To enable the default-config, just enter:  
`ln -s $(pwd)/config/init.vim $(pwd)/init.vim`

## Prequesites

**deoplete** && **ternjs**  

Python must be enabled. So install with pip2 / pip3.  

`pip2 install neovim`  
`pip3 install neovim`  

Node.js and npm must be installed in order to run ternjs.  

## Install Addons/Plugins

Start neovim and call `:PlugInstall`.  

