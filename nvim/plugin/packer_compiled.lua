-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/barometer/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/barometer/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/barometer/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/barometer/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/barometer/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["colorbuddy.nvim"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim"
  },
  ["doom-one.vim"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/doom-one.vim"
  },
  ["express_line.nvim"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/express_line.nvim"
  },
  ["feline.nvim"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/feline.nvim"
  },
  ["git-messenger.vim"] = {
    keys = { { "", "<Plug>(git-messenger)" } },
    loaded = false,
    needs_bufread = false,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/opt/git-messenger.vim"
  },
  ["github-nvim-theme"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/github-nvim-theme"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/gruvbox-material"
  },
  ["gruvbuddy.nvim"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/gruvbuddy.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/nightfox.nvim"
  },
  ["nord-vim"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/nord-vim"
  },
  ["nvim-base16.lua"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/nvim-base16.lua"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/nvim-jdtls"
  },
  ["nvim-lint"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/nvim-lint"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  oak = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/oak"
  },
  ["one-nvim"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/one-nvim"
  },
  onebuddy = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/onebuddy"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\1\2G\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\14auto_open\1\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    wants = { "nvim-web-devicons" }
  },
  vim = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/vim"
  },
  ["vim-dirvish"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/vim-dirvish"
  },
  ["vim-elixir"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/vim-elixir"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/vim-eunuch"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-mix-format"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/vim-mix-format"
  },
  ["vim-monokai"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/vim-monokai"
  },
  ["vim-moonfly-colors"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/vim-moonfly-colors"
  },
  ["vim-nightfly-guicolors"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/vim-nightfly-guicolors"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  },
  ["zig.vim"] = {
    loaded = true,
    path = "/home/barometer/.local/share/nvim/site/pack/packer/start/zig.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\1\2G\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\14auto_open\1\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> <Plug>(git-messenger) <cmd>lua require("packer.load")({'git-messenger.vim'}, { keys = "<lt>Plug>(git-messenger)", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
