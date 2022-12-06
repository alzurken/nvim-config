local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

vim.cmd([[
  augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
  return
end



return packer.startup(function(use)
  use("wbthomason/packer.nvim")

  -- common libs
  use("nvim-lua/plenary.nvim")
  use("nvim-lua/popup.nvim")
  use("MunifTanjim/nui.nvim")
  
  -- color schema
  use("bluz71/vim-nightfly-guicolors")

  use("christoomey/vim-tmux-navigator")
  use("tpope/vim-surround")

  use("szw/vim-maximizer")

  use("vim-scripts/ReplaceWithRegister")

  use("numToStr/Comment.nvim")

  use("kyazdani42/nvim-web-devicons")

  -- tree setup
  use("nvim-neo-tree/neo-tree.nvim")

  use("nvim-lualine/lualine.nvim")

  -- fuzzy search
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x"})
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make"})

  -- autocompletion
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use("saadparwaiz1/cmp_luasnip")
  use("petertriho/cmp-git")
  use("davidsierradz/cmp-conventionalcommits")
  use("Dosx001/cmp-commit")

  use("tzachar/fuzzy.nvim")
  use("tzachar/cmp-fuzzy-buffer")
  use("tzachar/cmp-fuzzy-path")
  use("lukas-reineke/cmp-rg")

  use("hrsh7th/cmp-nvim-lua")
  use("KadoBOT/cmp-plugins")
  use("ray-x/cmp-treesitter")

  -- snippets
  use("L3MON4D3/LuaSnip")
  use("rafamadriz/friendly-snippets")

  if packer_bootstrap then
    require("packer").sync()
  end
end)
