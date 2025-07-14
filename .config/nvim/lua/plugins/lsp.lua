return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "off",
              },
            },
          },
        },
        ty = {},
      },
      setup = {
        ty = function(_, opts)
          local lspconfig = require("lspconfig")
          local configs = require("lspconfig.configs")
          local util = require("lspconfig.util")

          if not configs.ty then
            configs.ty = {
              default_config = {
                cmd = { "ty", "server" },
                filetypes = { "python" },
                root_dir = util.root_pattern("pyproject.toml", ".git"),
                single_file_support = true,
              },
            }
          end
          lspconfig.ty.setup(opts)
        end,
      },
    },
  },
}
