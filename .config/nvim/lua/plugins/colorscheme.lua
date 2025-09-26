-- function ColorMyPencils(color)
--   color = color or "rose-pine-moon"
--   vim.cmd.colorscheme(color)
--
--   vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--   vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- end

COLOR = "catppuccin"

return {
  -- { "rebelot/kanagawa.nvim" },
  -- { "olimorris/onedarkpro.nvim" },
  -- {
  --   "Mofiqul/dracula.nvim",
  --   name = "dracula",
  --   config = function()
  --     require("dracula").setup({
  --       transparent_bg = true,
  --       italic_comment = true,
  --     })
  --   end,
  -- },

  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   opts = {},
  --   -- config = function()
  --   --   ColorMyPencils()
  --   -- end,
  -- },

  -- {
  --   "rose-pine/neovim",
  --   name = "rose-pine",
  --   config = function()
  --     require("rose-pine").setup({
  --       disable_background = true,
  --       styles = {
  --         italic = false,
  --       },
  --     })

  --     -- ColorMyPencils()
  --   end,
  -- },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        transparent_background = true, -- Habilita fondo transparente si lo deseas
        color_overrides = {
          all = {
            functions = { "#A6E3A1" },
          },
        },
        custom_highlights = {},
      })
      vim.cmd.colorscheme("catppuccin") -- Activa el tema
    end,
  },

  -- -- {
  -- --   "baliestri/aura-theme",
  -- --   lazy = false,
  -- --   priority = 1000,
  -- --   config = function(plugin)
  -- --     vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
  -- --     vim.cmd([[colorscheme aura-dark]])
  -- --   end,
  -- -- },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = COLOR,
    },
  },
}
