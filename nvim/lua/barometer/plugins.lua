local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

vim.api.nvim_exec(
  [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]],
  false
)

local use = require("packer").use

require("packer").startup(function()
  use "wbthomason/packer.nvim" -- Package manager
  use "scrooloose/nerdcommenter"
  use "tpope/vim-fugitive" -- Git commands in nvim
  use "tpope/vim-surround"
  use "jiangmiao/auto-pairs"
  -- UI to select things (files, grep results, open buffers...)
  use { "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } } }
  use "nvim-telescope/telescope-fzf-native.nvim"

  --use { "sheerun/vim-polyglot", disable = false }

  use "justinmk/vim-dirvish"

  --use "joshdick/onedark.vim" -- Theme inspired by Atom
  use "vigoux/oak"
  use "navarasu/onedark.nvim"
  use "Th3Whit3Wolf/one-nvim"
  use "romgrk/doom-one.vim"
  use "arcticicestudio/nord-vim"
  --use "glepnir/spaceline.vim"

  use "EdenEast/nightfox.nvim"
  use "bluz71/vim-nightfly-guicolors"
  use "bluz71/vim-moonfly-colors"

  -- Add git related info in the signs columns and popups
  use { "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" }, disable = false }
  -- Highlight, edit, and navigate code using a fast incremental parsing library
  use "nvim-treesitter/nvim-treesitter"
  use "nvim-treesitter/nvim-treesitter-textobjects"
  use "mfussenegger/nvim-lint"
  use "neovim/nvim-lspconfig" -- Collection of configurations for built-in LSP client
  -- use 'hkupty/iron.nvim'

  use { "hrsh7th/nvim-compe", disable = false }
  use "glepnir/lspsaga.nvim"
  use { "simrat39/symbols-outline.nvim", disable = false }
  use "folke/which-key.nvim"
  --use "bfredl/nvim-luadev"
  use { "folke/todo-comments.nvim", disable = true }

  use { "tjdevries/express_line.nvim", disable = false }
  use { "tjdevries/colorbuddy.nvim", disable = false }
  use { "tjdevries/gruvbuddy.nvim", disable = false }

  use "morhetz/gruvbox"
  use { "sainnhe/gruvbox-material", disable = false }
  use { "tjdevries/cyclist.vim", disable = true }

  use "folke/tokyonight.nvim"
  use "Th3Whit3Wolf/onebuddy"
  use {
    "folke/trouble.nvim",
    wants = "nvim-web-devicons",
    config = function()
      require("trouble").setup { auto_open = false }
    end,
    disable = false,
  }

  use "kyazdani42/nvim-web-devicons"
  use { "famiu/feline.nvim", disable = false }

  --use {
  --"vim-airline/vim-airline",
  --requires = "vim-airline/vim-airline-themes",
  --}

  use { "lukas-reineke/indent-blankline.nvim", disable = true }

  use {
    "hoob3rt/lualine.nvim",
    event = "VimEnter",
    config = [[require('barometer.config.lualine')]],
    --wants = "nvim-web-devicons",
    disable = true,
  }

  use { "mkitt/tabline.vim", disable = true }
  --use "itchyny/lightline.vim" -- Fancier statusline

  use { "marko-cerovac/material.nvim", disable = true }
  use { "dracula/vim", disable = false }

  --use { "akinsho/nvim-bufferline.lua", requires = "kyazdani42/nvim-web-devicons", disable = false }

  use "elixir-editors/vim-elixir"
  use "mhinz/vim-mix-format"
  --use "martinda/Jenkinsfile-vim-syntax"
  use "mfussenegger/nvim-jdtls"

  --use "skywind3000/asyncrun.vim"
  --use "arcticicestudio/nord-vim"
  --use "sainnhe/edge"

  use "tpope/vim-eunuch"

  use "kyazdani42/nvim-tree.lua"

  use {
    "rhysd/git-messenger.vim",
    keys = "<Plug>(git-messenger)",
  }

  use { "projekt0n/github-nvim-theme", disable = false }

  use { "sickill/vim-monokai", disable = false }

  use "norcalli/nvim-colorizer.lua"

  use "ziglang/zig.vim"
  use "fatih/vim-go"

  use "norcalli/nvim-base16.lua"
end)
