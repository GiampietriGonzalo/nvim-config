vim.api.nvim_exec(
[[
imap <silent><script><expr> <C-j> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true
	
imap <silent><script><expr> <C-.> copilot#Next()
imap <silent><script><expr> <C-,> copilot#Previous()
]],
true)
