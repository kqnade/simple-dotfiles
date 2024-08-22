return function()
  require('lualine').setup {
        options = { 
          theme = 'auto',
          component_separators = { left = '', right = '' },
          section_separators = { left = '', right = '' },
          disabled_filetypes = {
              statusline = {},
              winbar = {"neo-tree", 'toggleterm'},
          },
          ignore_focus = {
            "lazy"
          },
          always_divide_middle = true,
          globalstatus = false,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000
          }
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_c = {'filename'},
          lualine_x = {'encoding', 'fileformat', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = {'location'},
          lualine_y = {},
          lualine_z = {}
        },
        winbar = {
          lualine_a = {
            {
              'buffers',
              mode = 4,
            }
          },
          lualine_b = {},
          lualine_c = {},
          lualine_x = {},
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {
          lualine_a = {
            {
              "tabs",
              mode = 2,
              path = 0,
            }
          },
          lualine_z = {
            {
              'datetime',
              style = "%y/%m/%d(%a) %H:%M:%S"
            }
          }
        },
        extensions = {"neo-tree", "fzf", "lazy", "mason", "toggleterm", "trouble"}
      }
end
