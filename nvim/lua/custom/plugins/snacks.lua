return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    opts = {
      explorer = { enabled = true },
      picker = {
        sources = {
          explorer = {
            ignored = true,
          },
        },
      },
      image = { enabled = true },
      input = { enabled = true },
      notifier = { enabled = true },
      picker = { enabled = true },
      quickfile = { enabled = true },
    },
  },
  {
    'nvim-neo-tree/neo-tree.nvim',
    enabled = false,
  },
}
