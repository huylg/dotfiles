vim.g.nightflyWinSeparator = 2
vim.cmd [[
    colorscheme nightfly
    hi! CursorLine gui=underline cterm=underline guibg=none
    hi link DiagnosticVirtualTextError NightflyRed 
    hi link DiagnosticVirtualTextWarn NightflyYellow
    hi link DiagnosticVirtualTextHint NightflyWhite
    hi link DiagnosticVirtualTextInfo NightflyBlue
  ]]
