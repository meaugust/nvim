vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
end
vim.g.colors_name = 'os'

local colors = {
    bg      = '#000000',
    bg_alt  = '#111111',
    fg      = '#00FF66',
    comment = '#555555',
    cyan    = '#00FFFF',
    magenta = '#FF00FF',
    yellow  = '#FFFF00',
    red     = '#FF3333',
    blue    = '#3399FF',
    cursor  = '#00FF66',
    line_nr = '#333333',
}

local highlights = {
    Normal       = { fg = colors.fg, bg = colors.bg },
    NormalNC     = { fg = colors.fg, bg = colors.bg },
    Cursor       = { fg = colors.bg, bg = colors.cursor },
    CursorLine   = { bg = colors.bg_alt },
    LineNr       = { fg = colors.line_nr },
    CursorLineNr = { fg = colors.yellow, bold = true },
    SignColumn   = { bg = colors.bg },
    VertSplit    = { fg = colors.line_nr, bg = colors.bg },
    StatusLine   = { fg = colors.bg, bg = colors.fg, bold = true },

    Comment      = { fg = colors.comment, italic = true },
    Constant     = { fg = colors.cyan },
    String       = { fg = colors.yellow },
    Character    = { fg = colors.yellow },
    Number       = { fg = colors.cyan },
    Boolean      = { fg = colors.cyan },
    Float        = { fg = colors.cyan },

    Identifier   = { fg = colors.blue },
    Function     = { fg = colors.magenta, bold = true },

    Statement    = { fg = colors.magenta, bold = true },
    Conditional  = { fg = colors.magenta, bold = true },
    Repeat       = { fg = colors.magenta, bold = true },
    Label        = { fg = colors.magenta },
    Operator     = { fg = colors.cyan },
    Keyword      = { fg = colors.magenta, bold = true },
    Exception    = { fg = colors.red, bold = true },

    PreProc      = { fg = colors.cyan },
    Include      = { fg = colors.cyan },
    Define       = { fg = colors.cyan },
    Macro        = { fg = colors.cyan },

    Type         = { fg = colors.yellow },
    StorageClass = { fg = colors.yellow },
    Structure    = { fg = colors.yellow },
    Typedef      = { fg = colors.yellow },

    Special      = { fg = colors.red },
    Underlined   = { underline = true },
    Error        = { fg = colors.red, bg = colors.bg, bold = true },
    Todo         = { fg = colors.bg, bg = colors.yellow, bold = true },

    Visual       = { bg = colors.magenta, fg = colors.bg },
    Search       = { bg = colors.yellow, fg = colors.bg, bold = true },
}

for group, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, settings)
end
