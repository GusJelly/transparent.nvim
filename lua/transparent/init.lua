local M = {}

local function set_hl(group, options)
  local existing_highlight_group_table = vim.api.nvim_get_hl(0, { name = group })

  vim.api.nvim_set_hl(
    0,
    group,
    vim.tbl_deep_extend("force", existing_highlight_group_table, options)
  )
end

---@type string[]
local groups = {
  "Normal",
  "NormalNC",
  "WinSeparator",
  "SignColumn",
  "FoldColumn",
  "LineNr",
  "LineNrAbove",
  "LineNrBelow",
  "EndOfBuffer",
}

-- Method that actually makes the stuff above transparent.
local function colorMyPencils()
  for _, element in pairs(groups) do
    set_hl(element, { bg = "NONE" })
  end
end

function M.setup()
  vim.api.nvim_create_autocmd("ColorScheme", {
    callback = function()
      colorMyPencils()
    end,
  })

  colorMyPencils()
end

return M
