-- ~/.config/nvim/init.lua

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Truecolor (needed for nice colors in terminals)
vim.o.termguicolors = true

-- Line numbers
vim.o.number = true

-- Fix filetype detection for Go files
vim.filetype.add({
  filename = {
    ['go.mod'] = 'gomod',
    ['go.work'] = 'gowork',
    ['go.sum'] = 'gosum',
  },
})

-- Setup lazy.nvim with plugins
require("lazy").setup({
  -- GitHub colorscheme
  {
    "projekt0n/github-nvim-theme",
    lazy = false,            -- load at startup
    priority = 1000,         -- load before other UI plugins
    opts = {
      options = {
        transparent = false, -- set true if you want transparent background
        terminal_colors = true,
      },
    },
    config = function(_, opts)
      require("github-theme").setup(opts)
      vim.cmd("colorscheme github_dark")  -- pick one: github_dark(_default|_dimmed) or github_light(_default)
    end,
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "go", "gomod", "gowork", "gosum",
          "lua", "vim", "vimdoc", "markdown"
        },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
})

