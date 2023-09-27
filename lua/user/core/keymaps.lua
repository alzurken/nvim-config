local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--general keymaps

keymap("n", "x", '"_x', opts)

-- move between windows
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- resize windows
keymap("n", "<C-Up>", ":resize -2<cr>", opts)
keymap("n", "<C-Down>", ":resize +2<cr>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<cr>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<cr>", opts)


keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>x", ":bd<CR>:bnext<CR>", opts)
keymap("n", "<leader>h", ":%bd!|e#|normal`\"<CR>:bnext<CR>:bd<CR>", opts)

-- indent whole visual block
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- alt move lines
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- don't override clipboard while inserting in visual
keymap("v", "p", '"_dP', opts)

--keymap("n", "<leader>sv", "<C-w>v", opts)
--keymap("n", "<leader>sh", "<C-w>s", opts)
--keymap("n", "<leader>sx", ":close<CR>", opts)
--keymap("n", "<leader>se", "<C-w>=", opts)

--keymap("n", "<leader>to", ":tabnew<CR>", opts)
--keymap("n", "<leader>tx", ":tabclose<CR>", opts)
--keymap("n", "<leader>tn", ":tabn<CR>", opts)
--keymap("n", "<leader>tp", ":tabp<CR>", opts)

-- keymap("n", "<leader>sm", ":MaximizerToggle<CR>", opts)

-- neo-tree
keymap("n", "<leader>e", ":Neotree toggle<CR>", opts)
--keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files hidden=true no_ignore=true<CR>", opts)
keymap("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)

keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>bb", ":Bdelete<CR>", opts)
