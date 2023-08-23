local status, gitblame = pcall(require, 'gitblame')
if (not status) then return end

gitblame.setup{
  enabled = false
}
