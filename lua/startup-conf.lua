local status, dashboard = pcall(require, "dashboard")
if not status then
    return
end

dashboard.setup({
    theme = "doom",
    config = {
        header = {
    [[                                   ]],
    [[                                   ]],
    [[                                   ]],
    [[   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ]],
    [[    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ]],
    [[          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ]],
    [[           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ]],
    [[          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ]],
    [[   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ]],
    [[  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ]],
    [[ ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ]],
    [[ ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ]],
    [[      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ]],
    [[       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ]],
    [[                                   ]],
    [[                                   ]],
    [[                                   ]],
    [[                                   ]],
    [[                                   ]],
    [[                                   ]],
    [[                                   ]],
    [[                                   ]],
        },
        center = {
            {
                icon = "",
                desc = "Find File   ",
                desc_hl = "Keyword",
                key = "f",
                keymap = "SPC f f",
                key_hl = "String",
                action = "Telescope find_files"
            },
            {
                icon = "",
                desc = "Live Grep   ",
                desc_hl = "Keyword",
                key = "g",
                keymap = "SPC f g",
                key_hl = "String",
                action = "Telescope live_grep"
            },
            {
                icon = "",
                desc = "Lazy   ",
                desc_hl = "Keyword",
                key = "l",
                keymap = "SPC P",
                key_hl = "String",
                action = "Lazy"
            },
            {
                icon = "",
                desc = "Config Dir   ",
                desc_hl = "Keyword",
                key = "c",
                keymap = "",
                key_hl = "String",
                action = "cd $HOME/.config/nvim"
            },
            {
                desc = "Exit   ",
                desc_hl = "Error",
                key = "q",
                key_hl = "String",
                action = "q"
            }
        },
        footer = {}
    },
})