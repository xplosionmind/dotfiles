vim.opt.ignorecase		= true
vim.opt.ttyfast				= true
vim.opt.number				= true
vim.opt.termguicolors	= true

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
	'nvim-lualine/lualine.nvim',
})

require('bufferline').setup{}
require('lualine').setup{}
