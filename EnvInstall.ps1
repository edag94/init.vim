Write-Host "Installing scoop"
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

Write-Host "Installing Neovim"
scoop install neovim
Write-Host "Installing Neovim recommended packages"
scoop bucket add extras
scoop install extras/vcredist2015

Write-Host "Installing plug.vim package manager"
try {
    md ~\AppData\Local\nvim\autoload
    $uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    (New-Object Net.WebClient).DownloadFile(
        $uri,
        $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
            "~\AppData\Local\nvim\autoload\plug.vim"
        )
    )
}
catch {
    Write-Host "Already have plug.vim, skipping install plug.vim script"
}


Write-Host "Installing Ripgrep"
scoop install ripgrep
Write-Host "Installing Node"
scoop install nodejs
Write-Host "Installing Python"
scoop install python
Write-Host "Installing Pyton Neovim plugin"
pip3 install neovim