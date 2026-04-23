return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              analysis = {
                -- autoSearchPaths = true,
                diagnosticMode = "openFilesOnly",
                -- useLibraryCodeForTypes = true,
                typeCheckingMode = "standard",
              },
            },
          },
        },
        -- ty = {},
      },
    },
  },
}
