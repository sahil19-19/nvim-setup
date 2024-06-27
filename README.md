# Setting up Neovim
- Install Neovim on your machine
    For example, for arch based Linux distributions:

  ```
  sudo pacman -S neovim
  ```

- Clone(or download zip) and copy the "nvim" folder in .config folder
- Run command :

  ```
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  ```
  
- Open nvim, run command:

  ```
  :PackerInstall
  ```

- Neovim should be up and running

# Note
- One would need to change the name of the user wherever required from "sahilv" (in my case: /home/sahilv) to "User" (/home/User)

- One can manage packages by updating "packer.lua" (lua/sahilv/packer.lua) followed by running

  ```
  :so
  ```
  to shout out the changes. Then run

  ```
  :PackerInstall
  ```
  to install packages

- One can manage language server (required for features like auto-complete, go-to-definition, or documentation on hover, etc.) by updating "lsp-config.lua" (lua/sahilv/lsp-config.lua) or by using Mason
  run

  ```
  :Mason
  ```

  scroll down to desired language server and press "i" to install the language server

- To further understand the working of nvim follow this video:

  ```
  https://youtu.be/w7i4amO_zaE?si=3xPMbMkCNtVewoRR
  ```
  

