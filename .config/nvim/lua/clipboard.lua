local has = function(x)
  return vim.fn.has(x) == 1
end

local is_linux = has "linux"
local is_macunix = has "macunix"
local is_win = has "windows"

if is_linux then
  vim.opt.clipboard:append { 'unnamedplus' }
end
if is_win then
  vim.opt.clipboard:prepend { 'unnamed', 'unnamedplus' }
end
