nnoremap <F8> :Dispatch! yarn start<CR>
nnoremap <F10> :tabnew<CR>:terminal<CR>iyarn test<CR><esc>
nnoremap <F12> :Dispatch! yarn watch<CR>
" If statement check
nmap !if yiwoif (!)<Esc>F!pA return null

" open node repl
nnoremap <leader>rpl :te<CR>inode<esc>:echo b:terminal_job_id

nnoremap <leader>cf yaw:e src/<C-r>"<left>.js<CR>iec><C-]>
nnoremap <leader>/ ^i//<space><C-c>
