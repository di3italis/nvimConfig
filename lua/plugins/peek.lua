-- Peek Repo:
-- https://github.com/toppair/peek.nvim
-- Dependency:
-- https://docs.deno.com/runtime/manual/getting_started/installation

-- Configuration for the 'peek.nvim' plugin
require('peek').setup({
    auto_load = true,         -- automatically load preview for markdown buffers
    close_on_bdelete = true,  -- close preview window on buffer delete
    syntax = true,            -- enable syntax highlighting (affects performance)
    theme = 'dark',           -- theme: 'dark' or 'light'
    update_on_change = true,  -- update preview on content change
    app = 'webview',          -- application for preview: 'webview', 'browser', etc.
    filetype = { 'markdown' },-- filetypes recognized as markdown
    throttle_at = 200000,     -- start throttling for files larger than this size
    throttle_time = 'auto',   -- time before starting new render after changes
})

-- Custom commands for Peek
vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})

return {}
