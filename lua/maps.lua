local cmd = vim.cmd
local map = vim.api.nvim_set_keymap
local M = {}

local options = { noremap = true, silent = true }
local silent = { silent = true }

-- Map the leader key.
map('n', '<Space>', '', {})
vim.g.mapleader = ' '

-- Navigating.
map('n', '<leader>bl', ":bnext<CR>", silent)
map('n', '<leader>bh', ":bprevious<CR>", silent)

-- Quit, close buffers, etc.
map('n', '<leader>q', '<cmd>qa<cr>', silent)
map('n', '<leader>x', '<cmd>x!<cr>', silent)
map('n', '<leader>d', '<cmd>Sayonara<cr>', { silent = true, nowait = true })

-- Save buffer.
map('n', '<leader>w', '<cmd>w<cr>', silent)

-- CHADtree.
map('n', '<leader>e', ':NvimTreeToggle<cr>', options)

-- Git 
map('n', '<leader>ga', ':Neogit<cr>', options)
map('n', '<leader>gc', ':Git commit<cr>', options)
map('n', '<leader>gp', ':Git push<cr>', options)

-- Packer
map('n', '<leader>u', ':PackerSync<cr>', options)

-- telescope
map('n', '<leader>p', ':lua telescope_find_files_in_path("/mnt/d/Pretender/Documents/Projects/")<CR>', silent)
map('n', '<leader>c', ':lua telescope_find_files_in_path("~/.config/nvim/")<CR>', silent)
map('n', '<leader>fb', [[<cmd>Telescope file_browser theme=get_dropdown<cr>]], silent)
map('n', '<leader>fr', [[<cmd>Telescope frecency theme=get_dropdown<cr>]], silent)
map('n', '<leader>fg', [[<cmd>Telescope git_files theme=get_dropdown<cr>]], silent)
map('n', '<leader>ff', [[<cmd>Telescope find_files theme=get_dropdown<cr>]], silent)
map('n', '<leader>fl', [[<cmd>Telescope live_grep theme=get_dropdown<cr>]], silent)
map('n', '<leader>fk', [[<cmd>Telescope keymaps theme=get_dropdown<cr>]], silent)
map('n', '<leader>fc', [[<cmd>Telescope commands theme=get_dropdown<cr>]], silent)
map('n', '<leader>fs', [[<cmd>Telescope colorscheme theme=get_dropdown<cr>]], silent)
