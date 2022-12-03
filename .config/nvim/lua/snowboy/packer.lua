local packer = require("packer")

-- Have packer use popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function(use)
  -- Support plugins
  use "wbthomason/packer.nvim" -- have packer manage itself
  use "nvim-lua/plenary.nvim" -- useful lua functions used in lots of plugins

  -- LSP is built-in, but still need this plugin to enable
  use "neovim/nvim-lspconfig"

  -- Formatter and linter
  use "jose-elias-alvarez/null-ls.nvim"

  -- Autocomplete and snippets
  -- Plugins below are from nvim-cmp sample setup
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/nvim-cmp"
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
 	use {
    "tzachar/cmp-tabnine",
    run="./install.sh",
    requires="hrsh7th/nvim-cmp"
  }

  -- Comment
  use "numToStr/Comment.nvim"
  use "JoosepAlviste/nvim-ts-context-commentstring"

  -- Treesitter
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-project.nvim"

  -- Theme
  use "gruvbox-community/gruvbox"
  use "nvim-lualine/lualine.nvim"
  use "kyazdani42/nvim-web-devicons"

  -- Utils
  use "tpope/vim-surround"
  use "mg979/vim-visual-multi" -- multi cursors
  use "simrat39/symbols-outline.nvim" -- summarise functions, vars, etc. in file
  use "mbbill/undotree"

  -- Flutter
  use { "akinsho/flutter-tools.nvim", requires = "nvim-lua/plenary.nvim" }

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- Explorer
  use "kyazdani42/nvim-tree.lua"
end)
