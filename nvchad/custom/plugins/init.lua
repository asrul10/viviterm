local overrides = require "custom.plugins.overrides"

return {

  -- ["goolord/alpha-nvim"] = { disable = false } -- enables dashboard

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["NvChad/ui"] = {
    override_options = overrides.ui,
  },

  ["nvim-telescope/telescope.nvim"] = {
    override_options = overrides.telescope,
  },

  ["lewis6991/gitsigns.nvim"] = {
    override_options = overrides.gitsigns,
  },

  ["hrsh7th/nvim-cmp"] = {
    override_options = overrides.cmp,
  },

  ["github/copilot.vim"] = {},
}
