local M = {}

-- CoC Configuration
M.setup = function()
  -- You can customize your settings here.
  vim.g.coc_global_extensions = {
    "coc-tsserver",    -- TypeScript/JavaScript LSP
    "coc-json",        -- JSON LSP
    "coc-html",        -- HTML LSP
    "coc-css",         -- CSS LSP
    "coc-snippets",    -- Snippets support
    "coc-prettier",    -- Prettier formatter
    -- Add other extensions as needed
  }

  -- Customize CoC behavior (e.g., autocompletion, formatting)
  vim.cmd [[
    set completeopt=menuone,noinsert,noselect  " Set completion options
    autocmd FileType * :silent call CocActionAsync('highlight')
  ]]

  -- Keybindings (you can add more CoC-specific mappings here)
  vim.api.nvim_set_keymap('i', '<C-Space>', 'coc#refresh()', {expr = true, noremap = true})
  vim.api.nvim_set_keymap('i', '<TAB>', 'pumvisible() ? coc#_select_confirm() : "<TAB>"', {expr = true, noremap = true})
  vim.api.nvim_set_keymap('n', 'gd', ':CocCommand workspace.findDefinition<CR>', {silent = true, noremap = true})

  -- Format on save
  vim.g.coc_preferences_format_on_save = true
end

return M

