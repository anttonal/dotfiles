return {
  {
    'greggh/claude-code.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = { 'ClaudeCode', 'ClaudeCodeContinue', 'ClaudeCodeResume', 'ClaudeCodeVerbose' },
    keys = {
      { '<C-,>', desc = 'Toggle Claude Code' },
      { '<leader>cC', desc = '[C]laude [C]ontinue' },
      { '<leader>cV', desc = '[C]laude [V]erbose' },
    },
    opts = {
      window = {
        position = 'botright',
        split_ratio = 0.3,
        enter_insert = true,
      },
    },
  },
}
