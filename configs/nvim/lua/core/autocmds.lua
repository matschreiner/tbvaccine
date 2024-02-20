-- Enable cursorline in active window
local cursorLineGroup = vim.api.nvim_create_augroup('AddCursorLine', { clear = true })

vim.api.nvim_create_autocmd({'BufEnter', 'WinEnter'}, {
  pattern = '*',
  command = 'setlocal cursorline',
  group = cursorLineGroup,
})

vim.api.nvim_create_autocmd({'BufLeave', 'WinLeave'}, {
  pattern = '*',
  command = 'setlocal nocursorline',
  group = cursorLineGroup,
})
