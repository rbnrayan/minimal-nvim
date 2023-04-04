local status, dashboard = pcall(require, "dashboard")
if not status then
    return
end

local config_path = ''
local sysname = vim.loop.os_uname().sysname

if sysname == "Linux" then
    config_path = "$HOME/.config/nvim"
elseif sysname == "Windows_NT" then
    config_path = "$HOME/AppData/Local/nvim"
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
                action = "cd " .. config_path
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
