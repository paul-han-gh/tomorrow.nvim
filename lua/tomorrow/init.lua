print "Loading tomorrow.nvim"

local config = require("tomorrow.config")

local M = {}
---@type {light?: string, dark?: string}
M.styles = {}

---@param opts? tomorrow.Config
function M.load(opts)
    opts = require("tomorrow.config").extend(opts)
    local bg = vim.o.background
    local style_bg = opts.style == "base" and "light" or "dark"
    
    if bg ~= style_bg then
        if vim.g.colors_name == "tomorrow-" .. opts.style then
            opts.style = bg == "light" and (M.styles.light or "base") or (M.styles.dark or "night")
        else
            vim.o.background = style_bg
        end
    end
    M.styles[vim.o.background] = opts.style
    return require("tomorrow.theme").setup(opts)
end

M.setup = config.setup

return M