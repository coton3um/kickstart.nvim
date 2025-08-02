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

vim.cmd 'filetype plugin on'

-- basic function
vim.keymap.set('n', ';', ':', { desc = '' })
-- buffer control
vim.keymap.set('n', '<Tab>', '<cmd>bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<Leader>x', '<cmd>bdelete<CR>', { desc = 'delete buffer' })

--telescope
vim.keymap.set('n', '<Leader>tc', '<cmd>Telescope colorscheme<CR>', { desc = '[T]elescope [C]olorscheme' })

-- toggleterm
vim.keymap.set('n', '<Leader>H', '<cmd>ToggleTerm size=16 direction=horizontal<CR>', { desc = 'Open Terminal Horizontal' })
-- vim.keymap.set('t', '<Leader>H', '<cmd>ToggleTerm size=20 direction=horizontal<CR>', { desc = 'Open Terminal Horizontal' })

vim.keymap.set('n', '<Leader>V', '<cmd>ToggleTerm size=80 direction=vertical<CR>', { desc = 'Open Terminal Vertical' })
-- vim.keymap.set('t', '<Leader>V', '<cmd>ToggleTerm size=80 direction=vertical<CR>', { desc = 'Open Terminal Vertical' })

vim.keymap.set('n', '<M-i>', '<cmd>ToggleTerm direction=float<CR>', { desc = 'Open Terminal floating' })
vim.keymap.set('t', '<M-i>', '<cmd>ToggleTerm direction=float<CR>', { desc = 'Open Terminal floating' })

-- macos like keybindings for text editing in insert mode
local opts = { noremap = true, silent = true }
vim.keymap.set('i', '<C-a>', '<C-o>^', opts)
vim.keymap.set('i', '<C-e>', '<C-o>$', opts)
vim.keymap.set('i', '<C-k>', '<C-o>D', opts)
vim.keymap.set('i', '<C-u>', '<C-o>d0', opts)
vim.keymap.set('i', '<C-f>', '<Right>', opts)
vim.keymap.set('i', '<C-b>', '<Left>', opts)
vim.keymap.set('i', '<C-d>', '<Del>', opts)
vim.keymap.set('i', '<C-h>', '<BS>', opts)
vim.keymap.set('i', '<C-n>', '<Down>', opts)
vim.keymap.set('i', '<C-p>', '<Up>', opts)

-- neovide
local function set_ime(args)
  if args.event:match 'Enter$' then
    vim.g.neovide_input_ime = true
  else
    vim.g.neovide_input_ime = false
  end
end

local ime_input = vim.api.nvim_create_augroup('ime_input', { clear = true })

vim.api.nvim_create_autocmd({ 'InsertEnter', 'InsertLeave' }, {
  group = ime_input,
  pattern = '*',
  callback = set_ime,
})

vim.api.nvim_create_autocmd({ 'CmdlineEnter', 'CmdlineLeave' }, {
  group = ime_input,
  pattern = '[/\\?]',
  callback = set_ime,
})

vim.g.neovide_cursor_animation_length = 0.1

return {}
