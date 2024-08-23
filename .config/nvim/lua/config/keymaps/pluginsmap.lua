return {
  -- telescope
  ["n|ff"] = map_cr("lua require('telescope.builtin').find_files()"):with_noremap():with_silent():with_desc("Telescope: Find Files"),
  ["n|fg"] = map_cr("lua require('telescope.builtin').live_grep()"):with_noremap():with_silent():with_desc("Telescope: Live grep"),
  ["n|fb"] = map_cr("lua require('telescope.builtin').buffers()"):with_noremap():with_silent():with_desc("Telescope: Buffers"),
  ["n|fh"] = map_cr("lua require('telescope.builtin').help_tags()"):with_noremap():with_silent():with_desc("Telescope: Help tags"),

  -- ToggleTerm
  ["n|tv"] = map_cr("ToggleTerm direction=vertical"):with_noremap():with_silent():with_desc("ToggleTerm: Toggle the vertical terminal"),
  ["n|tt"] = map_cr("ToggleTerm direction=horizontal"):with_noremap():with_silent():with_desc("ToggleTerm: Toggle the horizontal terminal"),
  ["n|th"] = map_cr("ToggleTerm"):with_noremap():with_silent():with_desc("ToggleTerm: Toggle the terminal"),
  ["n|tf"] = map_cr("ToggleTerm direction=float"):with_noremap():with_silent():with_desc("ToggleTerm: Toggle the floating terminal"),

  ["n|bd"] = map_cr("BufDel"):with_noremap():with_silent():with_desc("BufDel: Delete the current buffer"),
  ["n|ba"] = map_cr("bufDelAll"):with_noremap():with_silent():with_desc("BufDel: Delete all buffers"),
  ["n|bo"] = map_cr("bufDelOthers"):with_noremap():with_silent():with_desc("BufDel: Delete all buffers without current"),
}
