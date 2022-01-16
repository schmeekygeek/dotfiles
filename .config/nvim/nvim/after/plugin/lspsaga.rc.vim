lua <<EOF
local saga = require 'lspsaga'
saga.init_lsp_saga()
EOF
"LspFinder
nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
"CodeAction
" nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
" vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
nnoremap <silent>ca :Lspsaga code_action<CR>
"HoverDoc
nnoremap <silent>dh <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
nnoremap <silent>dh :Lspsaga hover_doc<CR>
"Scroll
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
"Rename
nnoremap <silent>gr :Lspsaga rename<CR>
"Diagnostics
nnoremap <silent>go :Lspsaga show_line_diagnostics<CR>
nnoremap <silent>gj :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent>gk :Lspsaga diagnostic_jump_prev<CR>

