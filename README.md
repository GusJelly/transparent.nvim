# Transparent.nvim

A simple plugin that will make **any** colorscheme **transparent**.

## Installation

Using `vim-plug`:

```vim
Plug 'GusJelly/transparent.nvim'
```

Using `lazy.nvim`:

```lua
return {
    "GusJelly/transparent.nvim",
    config = function()
        require("transparent").setup()
    end
} ```

## Usage

Just a normal `setup()` function call:

```lua
require("transparent").setup()
```
