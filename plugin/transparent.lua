-- Groups supposed to be transparent
---@type table<string>
local groups = {
    "Normal",
    "NormalNC",
    "SignColumn",
    "NormalFloat",
    "FloatBorder",
    "Pmenu",
    "TelescopeNormal",
    "TelescopePromptNormal",
    "TelescopeBorder",
    "LineNr",
    "EndOfBuffer",
    "FloatTitle",
    "ZenBg",
    "WinBarNC",
    "WinBar",
    "WinSeparator",
    "TabLineFill",
    "TabLine",
    "CursorLine",
    "CursorLineNr",
    "TelescopePreviewTitle",
    "TelescopePromptTitle",
    "TelescopeResultsTitle",
    "TelescopePromptBorder",
    "TelescopePromptPrefix",
    "Conceal"
}

-- Method that actually makes the stuff above transparent.
function ColorMyPencils()
    for _, i in pairs(groups) do
        vim.cmd("highlight " .. i .. " guibg=NONE")
        
    end
end
