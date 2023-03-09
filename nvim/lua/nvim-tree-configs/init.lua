vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
require("nvim-tree").setup()


-- auto open
-- vim.api.nvim_create_autocmd({ "VimEnter" }, { 
--	callback = function()  require("nvim-tree.api").tree.open() end })


-- keybindings
vim.cmd('nnoremap <silent> <space>e :NvimTreeToggle<CR>')
vim.cmd('nnoremap <silent> <space>. :NvimTreeResize +10<CR>')
vim.cmd('nnoremap <silent> <space>, :NvimTreeResize -10<CR>')
vim.cmd('nnoremap <silent> <space>f :NvimTreeFocus<CR>')


