local Util = require("tokyonight.util")

local M = {}

---@type tokyonight.HighlightsFn
function M.get(c, opts)
    -- stylua: ignore
    local ret = {
        ["@annotation"]                 = "PreProc",
        ["@attribute"]                  = "PreProc",
        ["@boolean"]                    = "Boolean",
        ["@character"]                  = "Character",
        ["@character.printf"]           = "SpecialChar",
        ["@character.special"]          = "SpecialChar",
        ["@comment"]                    = "Comment",
        ["@comment.error"]              = { fg = c.red },
        ["@comment.hint"]               = { fg = c.yellow },
        ["@comment.info"]               = { fg = c.comment },
        ["@comment.note"]               = { fg = c.comment },
        ["@comment.todo"]               = { fg = c.blue },
        ["@comment.warning"]            = { fg = c.orange },
        ["@constant"]                   = "Constant",
        ["@constant.builtin"]           = "Special",
        ["@constant.macro"]             = "Define",
        ["@constructor"]                = { fg = c.yellow }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        ["@constructor.tsx"]            = { fg = c.yellow },
        ["@diff.delta"]                 = "DiffChange",
        ["@diff.minus"]                 = "DiffDelete",
        ["@diff.plus"]                  = "DiffAdd",
        ["@function"]                   = "Function",
        ["@function.builtin"]           = "Special",
        ["@function.call"]              = "@function",
        ["@function.macro"]             = "Macro",
        ["@function.method"]            = "Function",
        ["@function.method.call"]       = "@function.method",
        ["@keyword"]                    = { fg = c.purple, style = opts.styles.keywords }, -- For keywords that don't fall in previous categories.
        ["@keyword.conditional"]        = "@keyword",
        ["@keyword.coroutine"]          = "@keyword",
        ["@keyword.debug"]              = "Debug",
        ["@keyword.directive"]          = "PreProc",
        ["@keyword.directive.define"]   = "Define",
        ["@keyword.exception"]          = "Exception",
        ["@keyword.function"]           = "@keyword"
        ["@keyword.import"]             = "Include",
        ["@keyword.operator"]           = "@operator",
        ["@keyword.repeat"]             = "@keyword",
        ["@keyword.return"]             = "@keyword",
        ["@keyword.storage"]            = "@keyword",
        ["@label"]                      = { fg = c.purple }, -- For labels: `label:` in C and `:label:` in Lua.
        ["@markup"]                     = "@none",
        ["@markup.emphasis"]            = { italic = true },
        ["@markup.environment"]         = "Macro",
        ["@markup.environment.name"]    = "Type",
        ["@markup.heading"]             = "Title",
        ["@markup.italic"]              = { italic = true },
        ["@markup.link"]                = { fg = c.blue },
        ["@markup.link.label"]          = "SpecialChar",
        ["@markup.link.label.symbol"]   = "Identifier",
        ["@markup.link.url"]            = "Underlined",
        ["@markup.list"]                = { fg = c.blue }, -- For special punctutation that does not fall in the categories before.
        ["@markup.list.checked"]        = { fg = c.green }, -- For brackets and parens.
        ["@markup.list.markdown"]       = { fg = c.orange, bold = true },
        ["@markup.list.unchecked"]      = { fg = c.yellow }, -- For brackets and parens.
        ["@markup.math"]                = "Special",
        ["@markup.raw"]                 = "String",
        ["@markup.raw.markdown_inline"] = { bg = c.window, fg = c.blue },
        ["@markup.strikethrough"]       = { strikethrough = true },
        ["@markup.strong"]              = { bold = true },
        ["@markup.underline"]           = { underline = true },
        ["@module"]                     = "Directory",
        ["@module.builtin"]             = { fg = c.purple }, -- Variable names that are defined by the languages, like `this` or `self`.
        ["@namespace.builtin"]          = "@variable.builtin",
        ["@none"]                       = {},
        ["@number"]                     = "Number",
        ["@number.float"]               = "@number",
        ["@operator"]                   = "Operator", -- For any operator: `+`, but also `->` and `*` in C.
        ["@property"]                   = { fg = c.green },
        ["@punctuation.bracket"]        = { fg = c.yellow }, -- For brackets and parens.
        ["@punctuation.delimiter"]      = { fg = c.orange }, -- For delimiters ie: `.`
        ["@punctuation.special"]        = { fg = c.blue }, -- For special symbols (e.g. `{}` in string interpolation)
        ["@punctuation.special.markdown"] = { fg = c.orange }, -- For special symbols (e.g. `{}` in string interpolation)
        ["@string"]                     = "String",
        ["@string.documentation"]       = { fg = c.comment },
        ["@string.escape"]              = { fg = c.yellow }, -- For escape characters within a string.
        ["@string.regexp"]              = { fg = c.blue }, -- For regexes.
        ["@tag"]                        = "Label",
        ["@tag.attribute"]              = "@property",
        ["@tag.delimiter"]              = "Delimiter",
        ["@tag.delimiter.tsx"]          = { fg = Util.blend_bg(c.blue, 0.7) },
        ["@tag.tsx"]                    = { fg = c.red },
        ["@tag.javascript"]             = { fg = c.red },
        ["@type"]                       = "Type",
        ["@type.builtin"]               = { fg = Util.blend_bg(c.blue, 0.8) },
        ["@type.definition"]            = "Define",
        ["@type.qualifier"]             = "@keyword",
        ["@variable"]                   = { fg = c.fg, style = opts.styles.variables }, -- Any variable name that does not have another highlight.
        ["@variable.builtin"]           = { fg = c.purple }, -- Variable names that are defined by the languages, like `this` or `self`.
        ["@variable.member"]            = { fg = c.green }, -- For fields.
        ["@variable.parameter"]         = { fg = c.yellow }, -- For parameters of a function.
        ["@variable.parameter.builtin"] = { fg = Util.blend_fg(c.yellow, 0.8) }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]
    }
    
    for i, color in ipairs(c.rainbow) do
        ret["@markup.heading." .. i .. ".markdown"] = { fg = color, bold = true }
    end
    return ret
end

return M