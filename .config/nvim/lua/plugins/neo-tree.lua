return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = false,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = { "__pycache__", ".git", ".mypy_cache", ".pytest_cache", ".venv" },
        never_show = {},
      },
    },
  },
}
