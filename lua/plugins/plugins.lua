return {
  {
    "sainnhe/gruvbox-material",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.g.gruvbox_material_enable_italic = true
      vim.cmd([[colorscheme gruvbox-material]])
    end,
  },

  { 'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' } },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  { 'theprimeagen/harpoon' },
  { 'mbbill/undotree' },

  {'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
}
