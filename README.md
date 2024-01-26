# Transparent.nvim

A simple plugin that will make **any** colorscheme **transparent**.

## Installation
```lua
{
    'GusJelly/transparent.nvim',
}
```

## Usage

This plugin created a global function called `ColorMyPencils()`.
to make everything transparent, we need to call this function **after**
setting/changing the colorscheme.

Something like:
```lua
vim.cmd([[
    colorscheme rose-pine
    lua ColorMyPencils()
]])
```

## DISCLAIMER

I suck at making lua plugins for neovim! If you know how to make this better
then a pull request or issues are completely welcomed!
