-- Setup language servers.
local lspconfig = require('lspconfig')
lspconfig.pyright.setup {}
lspconfig.tsserver.setup {
  on_attach = on_attach,
  filetypes = { 'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx' },
  cmd = { 'typescript-language-server', '--stdio' },
}
-- lspconfig.rust_analyzer.setup({
--     on_attach=on_attach,
--     settings = {
--         ["rust-analyzer"] = {
--             enable = true,
--             imports = {
--                 granularity = {
--                     group = "module",
--                 },
--                 prefix = "self",
--             },
--             cargo = {
--                 buildScripts = {
--                     enable = true,
--                 },
--             },
--             procMacro = {
--                 enable = true
--             },
--             diagnostics = {
--             	disabled = {"unresolved-proc-macro"}
--             },
--             check = {
--             	allTargets = true,
--             	command = "clippy",
--             	-- extraArgs = { "--all-features", "--message-format=json" },
--             }
--         }
--     }
-- })
-- "rust-analyzer.enable": true,
-- "rust-analyzer.linkedProjects": ["./Cargo.toml"],
-- "rust-analyzer.cargo.target": "x86_64-unknown-linux-gnu",
-- "rust-analyzer.check.allTargets": true,
-- "rust-analyzer.check.command": "clippy",
-- "rust-analyzer.checkOnSave": false,
-- "rust-analyzer.cargo.buildScripts.enable": false,

-- LSP Sever management: mason
-- require('mason').setup()
-- require('mason-lspconfig').setup_handlers({ function(server)
--   local opt = {
--     -- -- Function executed when the LSP server startup
--     -- on_attach = function(client, bufnr)
--     --   local opts = { noremap=true, silent=true }
--     --   vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
--     --   vim.cmd 'autocmd BufWritePre * lua vim.lsp.buf.formatting_sync(nil, 1000)'
--     -- end,
--     capabilities = require('cmp_nvim_lsp').default_capabilities(
--       vim.lsp.protocol.make_client_capabilities()
--     )
--   }
--   lspconfig[server].setup(opt)
-- end })

-- Completion Setting: hrsh7th/nvim-cmp
-- local cmp = require("cmp")
-- cmp.setup({
--   snippet = {
--     expand = function(args)
--       vim.fn["vsnip#anonymous"](args.body)
--     end,
--   },
--   sources = {
--     { name = "nvim_lsp" },
--     -- { name = "buffer" },
--     -- { name = "path" },
--   },
--   mapping = cmp.mapping.preset.insert({
--     -- ["<C-p>"] = cmp.mapping.select_prev_item(),
--     -- ["<C-n>"] = cmp.mapping.select_next_item(),
--     -- ['<space><C-k>'] = cmp.mapping.complete(),
--     ['<C-e>'] = cmp.mapping.abort(),
--     ["<CR>"] = cmp.mapping.confirm { select = true },
--   }),
--   experimental = {
--     ghost_text = true,
--   },
-- })

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    -- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    -- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})



