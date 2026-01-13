-- Common (global) Keymappings

-- Using space as <Leader> <LocalLeader>
vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })

-- Disable search highlight by ESCx2
vim.api.nvim_set_keymap('n', '<ESC><ESC>', ':nohl<CR>', { noremap = true, silent = true })

-- Key mapping to invoke Telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })

-- Invoke my help
vim.keymap.set('n', '<leader>h', ':help myhelp.txt<CR>', { noremap = true, silent = true })

-- Key Mapping to invoke quickhl-vim
vim.keymap.set('n', '<leader>m', '<Plug>(quickhl-manual-this)', { silent = true })
vim.keymap.set('x', '<leader>m', '<Plug>(quickhl-manual-this)', { silent = true })
vim.keymap.set('n', '<leader>M', '<Plug>(quickhl-manual-reset)', { silent = true })
vim.keymap.set('x', '<leader>M', '<Plug>(quickhl-manual-reset)', { silent = true })

-- Buffer move
vim.keymap.set('n', '<leader>b', ':bp<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>n', ':bn<CR>', { noremap = true, silent = true })


-- LSP
vim.keymap.set('n', '<Leader>ze', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<Leader>zq', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys after LSP is attached
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(args)
    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))

    vim.keymap.set('n', 'grd', function()
      vim.lsp.buf.definition()
    end, { buffer = args.buf, desc = 'vim.lsp.buf.definition()' })

    -- Auto formatting
    vim.keymap.set('n', '<Leader>i', function()
      vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
    end, { buffer = args.buf, desc = 'Format buffer' })

    -- Enable completion triggered by <c-x><c-o>
    vim.bo[args.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    local opts = { buffer = args.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<Leader>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<Leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<Leader>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      opts)
    vim.keymap.set('n', '<Leader>D', vim.lsp.buf.type_definition, opts)
  end,
}
)
