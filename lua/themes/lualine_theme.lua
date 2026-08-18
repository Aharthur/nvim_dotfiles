local theme = {}
local colors = {
    bg = "#304e6d",
    text = "#f2cbd4",
    hl1 = "#a6bae5",
    hl2 = "#e5a6da",
    hl3 = "#e5d0a6",
    hl4 = "#cae5a6",
    hl5 = "#a6e5b1",
}
theme.theme = function ()
    return {
        normal = {
                a = { bg = colors.hl1, fg = colors.text, gui = "bold" },
                b = { bg = colors.bg, fg = colors.text },
                c = { bg = colors.bg, fg = colors.text },
        },
        insert = {
                a = { bg = colors.hl2, fg = colors.text, gui = "bold" },
                b = { bg = colors.bg, fg = colors.text },
                c = { bg = colors.bg, fg = colors.text },
        },
        visual = {
                a = { bg = colors.hl3, fg = colors.text, gui = "bold" },
                b = { bg = colors.bg, fg = colors.text },
                c = { bg = colors.bg, fg = colors.text },
        },
        replace = {
                a = { bg = colors.hl4, fg = colors.text, gui = "bold" },
                b = { bg = colors.bg, fg = colors.text },
                c = { bg = colors.bg, fg = colors.text },
        },
        command = {
                a = { bg = colors.hl5, fg = colors.text, gui = "bold" },
                b = { bg = colors.bg, fg = colors.text },
                c = { bg = colors.bg, fg = colors.text },
        },
        inactive = {
                a = { bg = colors.hl1, fg = colors.text, gui = "bold" },
                b = { bg = colors.bg, fg = colors.text },
                c = { bg = colors.bg, fg = colors.text },
        },
    }
end
return theme
