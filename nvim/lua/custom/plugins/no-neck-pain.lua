return {
  {
    'shortcuts/no-neck-pain.nvim',
    version = '*',
    opts = {
      width = 80,
      minSideBufferWidth = 0,
    },
    keys = {
      { '<leader>np', '<cmd>NoNeckPain<cr>', desc = 'Toggle No Neck Pain' },
    },
  },
}
