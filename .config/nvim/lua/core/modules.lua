local global      = vim.g
local opt         = vim.opt

-- disable distr modules
local disable_dist_modules = function()
  global.did_install_default_menus = false
  global.did_install_syntax_menu = false
  global.do_filetype_lua = true
  global.did_load_filetypes = false
  global.did_indent_on = false
  global.did_load_ftplugin = false
  global.loaded_2html_plugin = false
  global.loaded_gzip = false
  global.loaded_man = false
  global.loaded_matchit = false
  global.loaded_matchparen = false
  global.loaded_netrwPlugin = false
  global.loaded_remote_plugins = false
  global.loaded_shada_plugin = false
  global.loaded_spellfile_plugin = false
  global.loaded_tarPlugin = false
  global.loaded_tutor_mode_plugin = false
  global.loaded_zipPlugin = false
  global.skip_loading_mswin = false
end

disable_dist_modules() 
