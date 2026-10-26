local M = {}

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "gilt"

  package.loaded["gilt.palette"] = nil
  local colors = require("gilt.palette")
  for group, spec in pairs(require("gilt.groups").get(colors)) do
    vim.api.nvim_set_hl(0, group, spec)
  end
  for i, hex in ipairs(colors.ansi) do
    vim.g["terminal_color_" .. (i - 1)] = hex
  end
end

return M
