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
    -- "LineNr",
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
    "DevIconDefault",
}

-- Method that actually makes the stuff above transparent.
function ColorMyPencils()
    for _, i in pairs(groups) do
        vim.api.nvim_set_hl(0, i, { bg = 'none' })
    end

    -- Getting colorscheme for checking some stuff,
    -- we are basically making sure rose-pine does not use certain colors
    -- because they are ugly
    local colorscheme = vim.g.colors_name
    if colorscheme == 'rose-pine' then
        vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#2F2F2F" })
    end
end
