# How to use this Repo
1. Download vim-plug (Unix-like only)
   ```bash=
   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```
2. Binding `.vimrc` setting to local
   ```bash=
   cd vim
   ln .vimrc ~/.vimrc
   ```
3. Download plugins
   ```bash=
   vim
   :PlugInstall
   :q
   ```
# For WSL user, you also have to install **Nerd Font**
You can reference from [Powerline fonts](https://github.com/powerline/fonts) and [How to install Powerline fonts in Windows](https://slmeng.medium.com/how-to-install-powerline-fonts-in-windows-b2eedecace58)

After installation, choose `Inconsolata for Powerline` font face in the teriminal setting
![image](https://github.com/RickCompileError/vimrc/assets/81013228/1e38a637-b720-4b58-8ee3-911699dd950c)
