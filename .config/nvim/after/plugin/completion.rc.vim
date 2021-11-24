set completeopt=menuone,noinsert,noselect

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:completion_confirm_key = ""
imap <expr> <CR> pumvisible() ? complete_info()["selected"] != "-1" ?
            \ "\<Plug>(completion_confirm_completion)" : "\<C-e>\<CR>" : "\<CR>"
