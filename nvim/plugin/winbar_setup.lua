vim.o.winbar = "%m " ..
    "%{%v:lua.require'nvim-web-devicons'.get_icon_color_by_filetype(&filetype)%} " ..
    "%f > " ..
    "%{%v:lua.require'nvim-navic'.get_location()%}"
