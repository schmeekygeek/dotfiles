require'tabline'.setup {
      -- Defaults configuration options
    enable = false,
        options = {
        section_separators = {'', ''},
        component_separators = {'', ''},
        -- section_separators = {'', ''},
        -- component_separators = {'', ''},
        -- component_separators = { left = '', right = ''},
        -- section_separators = { '', ''},
        show_tabs_always = false, -- this shows tabs only when there are more than one tab or if the first tab is named
        show_devicons = true, -- this shows devicons in buffer section
        show_bufnr = false, -- this appends [bufnr] to buffer section,
        show_filename_only = true -- shows base filename only instead of relative path in filename
        }
}
