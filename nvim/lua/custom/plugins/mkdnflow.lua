return {
  'jakewvincent/mkdnflow.nvim',
  ft = { 'markdown' },
  opts = {
    modules = {
      links = true,
      folds = false,
    },
    mappings = {
      MkdnEnter = { { 'n', 'v' }, '<CR>' },
      MkdnGoBack = { 'n', '<BS>' },
      MkdnGoForward = { 'n', '<Del>' },
      MkdnNextLink = { 'n', '<Tab>' },
      MkdnPrevLink = { 'n', '<S-Tab>' },
    },
  },
}
