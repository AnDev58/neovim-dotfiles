vim.cmd([[ autocmd BufWinLeave *.cpp,*h silent! mkview ]])
vim.cmd([[ autocmd BufWinEnter *.cpp,*h silent! loadview ]])
