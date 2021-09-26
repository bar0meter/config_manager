local g = vim.g
local o = vim.o
local cmd = vim.cmd

g.lightline = {
  colorscheme = "onedark",
  active = { left = { { "mode", "paste" }, { "gitbranch", "readonly", "filename", "modified" } } },
  component_function = { gitbranch = "fugitive#head" },
}

o.termguicolors = true

cmd [[
colorscheme horizon
]]
