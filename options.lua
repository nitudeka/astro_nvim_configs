return function(local_vim)
  local_vim.opt.relativenumber = true
  local_vim.opt.number = true
  local_vim.opt.spell = false
  local_vim.opt.signcolumn = "auto"
  local_vim.opt.wrap = false

  local_vim.g.mapleader = " "
  local_vim.g.autoformat_enabled = true
  local_vim.g.cmp_enabled = true
  local_vim.g.autopairs_enabled = true
  local_vim.g.diagnostics_mode = 3
  local_vim.g.icons_enabled = true
  local_vim.g.ui_notifications_enabled = true

  return local_vim
end

