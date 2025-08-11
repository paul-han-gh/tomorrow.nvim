# Tomorrow Theme in Lua
A [Lua](https://www.lua.org/) port of the [Tomorrow Theme](https://github.com/chriskempson/tomorrow-theme/tree/master) for Neovim users.

## Installation
### Lazy
```lua
{
    "paul-han-gh/tomorrow.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
}
```

## Usage
```lua
vim.cmd[[colorscheme tomorrow-night]]
```

## Current State & Roadmap
Right now only the Tomorrow Night theme is implemented for Vim highlight groups.

### Roadmap
- [x] Vim highlighting for Tomrrow Night
- [ ] Treesitter support
- [ ] Tomorrow theme + light/dark mode support
- [ ] Other theme variants
- [ ] Support for other plugins
- [ ] More granular configurability

## Acknowledgements
Thank you to [Chris Kempson](https://github.com/chriskempson) for creating and publicizing the Tomorrow theme.

Thank you also to [Folke Lemaitre](https://github.com/folke) for trailblazing the way for creating highly configurable color schemes in Neovim. Much of this project is just a redressing of the great work already done on [Tokyo Night](https://github.com/folke/tokyonight.nvim).