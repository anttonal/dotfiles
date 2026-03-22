local function checkbox_marker(line)
  return line:match('%[[ xXoO%.]%]')
end

local function normalize_checkbox_timestamp(line, checked)
  local without_timestamp = line:gsub('%s+`?%d%d:%d%d`?%s*$', '')
  if checked then
    return without_timestamp .. ' `' .. os.date '%H:%M' .. '`'
  end
  return without_timestamp
end

local function toggle_checkbox_with_timestamp()
  local before = vim.api.nvim_get_current_line()
  local before_marker = checkbox_marker(before)

  vim.cmd 'silent ToggleCheckbox'

  if vim.g.checkbox_timestamps ~= 1 then
    return
  end

  local after = vim.api.nvim_get_current_line()
  local after_marker = checkbox_marker(after)

  if before_marker == '[ ]' and (after_marker == '[x]' or after_marker == '[X]') then
    local updated = normalize_checkbox_timestamp(after, true)
    if updated ~= after then
      vim.api.nvim_set_current_line(updated)
    end
  elseif (before_marker == '[x]' or before_marker == '[X]') and after_marker == '[ ]' then
    local updated = normalize_checkbox_timestamp(after, false)
    if updated ~= after then
      vim.api.nvim_set_current_line(updated)
    end
  end
end

return {
  {
    'dkarter/bullets.vim',
    ft = { 'markdown', 'text', 'gitcommit' },
    config = function()
      local group = vim.api.nvim_create_augroup('custom_bullets_mappings', { clear = true })
      local function set_checkbox_mapping(bufnr)
        vim.keymap.set('n', '<leader>x', toggle_checkbox_with_timestamp, {
          buffer = bufnr,
          desc = 'Toggle checkbox',
        })
      end

      vim.api.nvim_create_autocmd('FileType', {
        group = group,
        pattern = { 'markdown', 'text', 'gitcommit' },
        callback = function(args)
          set_checkbox_mapping(args.buf)
        end,
      })

      if vim.tbl_contains({ 'markdown', 'text', 'gitcommit' }, vim.bo.filetype) then
        set_checkbox_mapping(0)
      end
    end,
  },
}
