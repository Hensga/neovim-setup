vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>pv", vim.cmd.Ex)

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- buffer management
keymap.set("n", "<leader>bd", "<cmd>bd<CR>", { desc = "Close current buffer" }) -- close current buffer
keymap.set("n", "<leader>bn", "<cmd>bn<CR>", { desc = "Go to next buffer" }) -- go to next buffer
keymap.set("n", "<leader>bp", "<cmd>bp<CR>", { desc = "Go to previous buffer" }) -- go to previous buffer

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

-- delete without yanking
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

keymap.set("n", "<leader>%", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- find word under cursor
keymap.set("n", "<leader>*", [[:let @/='\<<C-r><C-w>\>'<CR>:set hls<CR>]])

-- hightlight word under cursor
keymap.set("n", "<leader>h", [[:let @/='\<<C-r><C-w>\>'<CR>:set hls<CR>]])

-- move line up and down in visual mode
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- jump back to previous opened file
keymap.set("n", "<leader><leader>", "<C-^>")

-- greatest remap ever
keymap.set("x", "<leader>p", [["_dP]])
