local cwd = vim.fn.getcwd()
vim.o.rtp = vim.o.rtp .. ',' .. cwd
package.preload['fzxlib'] = function()
  return package.loadlib(cwd .. '/build/release-gcc/fzxlib.so', 'luaopen_fzxlib')()
end
