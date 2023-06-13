local lsp = require('lsp-zero')
lsp.preset('recommended')

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
require'lspconfig'.sourcekit.setup{}


vim.api.nvim_exec(
[[
if executable('sourcekit-lsp')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'sourcekit-lsp',
        \ 'cmd': {server_info->['sourcekit-lsp']},
        \ 'whitelist': ['swift'],
        \ })
endif
]],
true)


--local status_ok, which_key = pcall(require, "which-key")
--if not status_ok then
   -- return
--end

--local mappings = {

  --  ["r"] = { "<cmd>lua vim.lsp.buf.format{async=true}<cr>", "Reformat Code" },

    -- Language Support
    --l = {
      --  name = "LSP",
        --i = { "<cmd>LspInfo<cr>", "Info" },
       -- r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
       -- s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
        --S = {
         --   "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
      --      "Workspace Symbols",
        --},
    --}
--}

-- which_key.register(mappings)
