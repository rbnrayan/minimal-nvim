local options = {
	backup = false,
	clipboard = "unnamedplus",
	cmdheight = 1,
	completeopt = { "menuone", "noselect" },
	conceallevel = 0,
	fileencoding = "utf-8",
	hlsearch = true,
	ignorecase = true,
	mouse = "a",
	pumheight = 10,
	-- showmode = false,
	-- showtabline = 2,
	smartcase = true,
	smartindent = true,
	splitbelow = true,
	splitright = true,
	swapfile = false,
	termguicolors = true,
	timeoutlen = 1000,
	undofile = true,
	updatetime = 300,
	writebackup = false,
	expandtab = true,
	shiftwidth = 4,
	tabstop = 4,
	cursorline = true,
	number = true,
	relativenumber = true,
	numberwidth = 4,
	signcolumn = "yes",
	wrap = false,
	scrolloff = 4,
	sidescrolloff = 8,
	guifont = "monospace:h15",
    guicursor = "i:block",
	laststatus = 3,
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd "set iskeyword-=_"
vim.cmd "set whichwrap+=<,>,[,],h,l"

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
    pattern = "*.rs",
    command = vim.cmd [[set makeprg="cargo run"]]
})
