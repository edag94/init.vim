How to install dev env on Windows 10:

1. Run EnvInstall.ps1
2. Run 

New-Item -ItemType SymbolicLink -Path "~\AppData\Local\nvim\init.vim" -Target "init.vim"

to make symbolic link to init.vim

3. Run :PlugInstall
4. Open nvim-qt (GUI version of NeoVim, shortcut should be created in start menu, WNDS btn + search Neovim), or just type in Nvim-qt in terminal
5. Drag fzf.exe to the bin folder in .fzf

6. CocInstall all your autocomplete stuff
coc-json
coc-tsserver

(anyways now in config)

Voila!
