# VioletVim

---

<p align="center">
  <img src="./assets/screen1.png" width="49%">
  <img src="./assets/screen2.png" width="49%">
  <img src="./assets/screen3.png" width="49%">
  <img src="./assets/screen4.png" width="49%">
</p>

---

## Requirements:

[Neovim 0.12+](https://neovim.io/),

[git](https://git-scm.com/),

[tree-sitter CLI](https://tree-sitter.github.io/tree-sitter/),

[yazi](https://yazi-rs.github.io/) (My config see [here](https://github.com/L0rdDioBrando/violet-dots/tree/main/modules/configs/yazi)),

[clang](https://clang.llvm.org/) *or* [gcc](https://gcc.gnu.org/),

[fzf](https://github.com/junegunn/fzf),

[rg](https://github.com/burntsushi/ripgrep),

[zoxide](https://github.com/ajeetdsouza/zoxide),

[fd](https://github.com/sharkdp/fd),

[Rust toolchain](https://rustup.rs/),

[Nerd Font](https://www.nerdfonts.com/) ([FiraCode](https://github.com/tonsky/firacode) in the screenshot)

---

## Install:

Make backup your configs:

```sh
mv ~/.config/nvim ~/.config/nvim.back
```
Install my dotfiles:

```sh
git clone https://github.com/L0rdDioBrando/VioletVim.git $HOME/.conifg/nvim
```

## Structure

```
.
├── assets
│   ├── screen1.png
│   ├── screen2.png
│   ├── screen3.png
│   └── screen4.png
├── init.lua
├── LICENSE
├── lua
│   ├── core
│   │   ├── colors.lua
│   │   ├── keymaps.lua
│   │   └── options.lua
│   └── plugins
│       ├── autopairs.lua
│       ├── blink-cmp.lua
│       ├── blink-indent.lua
│       ├── colorizer.lua
│       ├── conform.lua
│       ├── fzf.lua
│       ├── gitsigns.lua
│       ├── heirline.lua
│       ├── lsp-config.lua
│       ├── luasnip.lua
│       ├── notify.lua
│       ├── nvim-lint.lua
│       ├── nvim-web-devicons.lua
│       ├── oil.lua
│       ├── surround.lua
│       ├── treesitter.lua
│       ├── which-key.lua
│       └── yazi.lua
├── nvim-pack-lock.json
└── README.md
```
