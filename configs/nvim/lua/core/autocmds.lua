local cursorLineGroup = vim.api.nvim_create_augroup('AddCursorLine', { clear = true })

-- Enable cursorline in active window
vim.api.nvim_create_autocmd({'BufEnter', 'WinEnter'}, {
  pattern = '*',
  command = 'setlocal cursorline',
  group = cursorLineGroup,
})

-- Disable cursorline when leaving the buffer/window
vim.api.nvim_create_autocmd({'BufLeave', 'WinLeave'}, {
  pattern = '*',
  command = 'setlocal nocursorline',
  group = cursorLineGroup,
})
