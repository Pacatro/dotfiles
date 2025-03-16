return {
  {
    "mrcjkb/rustaceanvim",
    version = "^4", -- Use version 4 or newer
    ft = { "rust" },
    opts = {
      server = {
        settings = {
          ["rust-analyzer"] = {
            diagnostics = {
              disabled = { "type-complexity" },
            },
          },
        },
      },
    },
  },
}
