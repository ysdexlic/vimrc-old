" " LSP next and previous
" inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
" inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" " Set completeopt to have a better completion experience
" set completeopt=menuone,noinsert,noselect

" " Avoid showing message extra message when using completion
" set shortmess+=c

" set updatetime=300

" " Use completion-nvim in every buffer
" autocmd BufEnter * lua require'completion'.on_attach()

" let g:completion_enable_snippet = 'vim-vsnip'
" let g:vsnip_snippet_dir = "~/dotfiles/config/nvim/snippets"

" let g:completion_customize_lsp_label = {
"       \ 'Function': '',
"       \ 'Method': '',
"       \ 'Reference': '',
"       \ 'Enum': '',
"       \ 'Field': 'ﰠ',
"       \ 'Keyword': '',
"       \ 'Variable': '',
"       \ 'Folder': '',
"       \ 'Snippet': '',
"       \ 'Operator': '',
"       \ 'Module': '',
"       \ 'Text': 'ﮜ',
"       \ 'Buffers': '',
"       \ 'Class': '',
"       \ 'Interface': ''
"       \}

" lua << EOF
" local nvim_lsp = require('lspconfig')

" -- Use an on_attach function to only map the following keys
" -- after the language server attaches to the current buffer
" local on_attach = function(client, bufnr)
"   local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
"   local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

"   --Enable completion triggered by <c-x><c-o>
"   buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

"   -- Mappings.
"   local opts = { noremap=true, silent=true }

"   -- See `:help vim.lsp.*` for documentation on any of the below functions
"   buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
"   buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
"   buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
"   buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
"   buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
"   buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
"   buf_set_keymap('n', 'gy', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
"   buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
"   buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
"   buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
"   buf_set_keymap('n', '[g', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
"   buf_set_keymap('n', ']g', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
"   buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
"   buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

" end

" local capabilities = vim.lsp.protocol.make_client_capabilities()
" capabilities.textDocument.completion.completionItem.snippetSupport = true
" capabilities.textDocument.completion.completionItem.resolveSupport = {
"   properties = {
"     'documentation',
"     'detail',
"     'additionalTextEdits',
"   }
" }

" local function setup_servers()
"   require'lspinstall'.setup()
"   local servers = require'lspinstall'.installed_servers()
"   for _, server in pairs(servers) do
"     nvim_lsp[server].setup{ on_attach = on_attach, capabilities = capabilities }
"   end
" end

" setup_servers()

" -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
" require'lspinstall'.post_install_hook = function ()
"   setup_servers() -- reload installed servers
"   vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
" end
" EOF
