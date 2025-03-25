require("vague").setup({
    style = {
        -- "none" is the same thing as default. But "italic" and "bold" are also valid options
        boolean = "none",
        number = "none",
        float = "none",
        error = "none",
        comments = "none",
        conditionals = "none",
        functions = "none",
        headings = "none",
        operators = "none",
        strings = "none",
        variables = "none",

        -- keywords
        keywords = "none",
        keyword_return = "none",
        keywords_loop = "none",
        keywords_label = "none",
        keywords_exception = "none",

        -- builtin
        builtin_constants = "none",
        builtin_functions = "none",
        builtin_types = "none",
        builtin_variables = "none",
    },
})

vim.cmd [[
    set background=dark
    colorscheme vague
]]
