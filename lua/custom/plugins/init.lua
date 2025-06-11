-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.cmd 'language en_GB'

vim.opt.termguicolors = true

vim.g.background = 'light'

vim.opt.wrap = true

vim.diagnostic.config {
  update_in_insert = true,
  underline = false,
}

-- basic function
vim.keymap.set('n', ';', ':', { desc = '' })
-- buffer control
vim.keymap.set('n', '<Tab>', '<cmd>bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<Leader>x', '<cmd>bdelete<CR>', { desc = 'delete buffer' })

--telescope
vim.keymap.set('n', '<Leader>tc', '<cmd>Telescope colorscheme<CR>', { desc = '[T]elescope [C]olorscheme' })

-- toggleterm
vim.keymap.set('n', '<Leader>H', '<cmd>ToggleTerm size=20 direction=horizontal<CR>', { desc = 'Open Terminal Horizontal' })
vim.keymap.set('t', '<Leader>H', '<cmd>ToggleTerm size=20 direction=horizontal<CR>', { desc = 'Open Terminal Horizontal' })

vim.keymap.set('n', '<Leader>V', '<cmd>ToggleTerm size=80 direction=vertical<CR>', { desc = 'Open Terminal Vertical' })
vim.keymap.set('t', '<Leader>V', '<cmd>ToggleTerm size=80 direction=vertical<CR>', { desc = 'Open Terminal Vertical' })

vim.keymap.set('n', '<M-i>', '<cmd>ToggleTerm direction=float<CR>', { desc = 'Open Terminal floating' })
vim.keymap.set('t', '<M-i>', '<cmd>ToggleTerm direction=float<CR>', { desc = 'Open Terminal floating' })

return {}
