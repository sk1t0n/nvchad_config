require "nvchad.mappings"

local set = vim.keymap.set
local del = vim.keymap.del

-- override NvChad
set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "toggle Neotree" })
del("n", "<C-n>")
del("n", "<leader>b")
set("n", "<leader>n", "<cmd>enew<CR>", { desc = "buffer new" })
del("n", "<leader>rn")
del("n", "<leader>ch")
del("n", "<leader>fm")
set("n", "<C-\\>", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "general format file" })
del("n", "<leader>ds")
set("n", "<leader>ld", vim.diagnostic.setloclist, { desc = "LSP diagnostic loclist" })
del("n", "<leader>ma")
set("n", "<leader>fm", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
del("n", "<leader>cm")
set("n", "<leader>fc", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
del("n", "<leader>gt")
set("n", "<leader>fs", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
del("n", "<leader>pt")
del("n", "<leader>th")
set("n", "<leader>ft", function()
  require("nvchad.themes").open()
end, { desc = "telescope nvchad themes" })
set({ "n", "v" }, "<leader>h", "<cmd>NvCheatsheet<CR>", { desc = "mappings" })
del("n", "<leader>v")
set("n", "<leader>c", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })
del("n", "<leader>x")

-- close buffers
set("n", "<leader>bc", function()
  require("nvchad.tabufline").closeAllBufs(false)
end, { desc = "close all buffers except current" })
set("n", "<leader>bC", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "close all buffers" })

-- close windows
set("n", "<leader>q", "<cmd>confirm q<CR>", { desc = "quit window" })
set("n", "<leader>Q", "<cmd>confirm qall<CR>", { desc = "exit nvim" })

-- split windows
set("n", "\\", "<cmd>vsplit<CR>", { desc = "vertical split" })
set("n", "|", "<cmd>split<CR>", { desc = "horizontal split" })

-- resize windows
set("n", "<C-Up>", "<Cmd>resize -2<CR>", { desc = "decrease window height" })
set("n", "<C-Down>", "<Cmd>resize +2<CR>", { desc = "increase window height" })
set("n", "<C-Left>", "<Cmd>vertical resize -2<CR>", { desc = "decrease window width" })
set("n", "<C-Right>", "<Cmd>vertical resize +2<CR>", { desc = "increase window width" })

-- Mason
set("n", "<leader>p", "<cmd>Mason<CR>", { desc = "mason" })

-- DAP
set("n", "<leader>du", function()
  require("dapui").toggle()
end, { desc = "toggle debug ui" })
set("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "toggle debug breakpoint" })
set("n", "<leader>ds", function()
  require("dap").continue()
end, { desc = "start/stop debug" })
set("n", "<leader>dd", function()
  require("dap").disconnect()
end, { desc = "disconnect debug" })
set("n", "<leader>do", function()
  require("dap").step_over()
end, { desc = "debug step over" })
set("n", "<leader>di", function()
  require("dap").step_into()
end, { desc = "debug step into" })
set("n", "<leader>dp", function()
  require("dap").step_out()
end, { desc = "debug step out" })

-- LSP
set("n", "gD", vim.lsp.buf.declaration, { desc = "go to declaration" })
set("n", "gd", vim.lsp.buf.definition, { desc = "go to definition" })
set("n", "gi", vim.lsp.buf.implementation, { desc = "go to implementation" })
set("n", "<leader>lr", vim.lsp.buf.references, { desc = "LSP references" })
set("n", "<leader>lR", vim.lsp.buf.rename, { desc = "LSP rename in buffer" })
set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, { desc = "LSP code action" })

--  Git
set("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>", { desc = "git diff" })
set("n", "<leader>gl", "<cmd>Flog<CR>", { desc = "git log" })
set("n", "<leader>gs", "<cmd>Floggit<CR>", { desc = "git status" })

-- Todo comments
set("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "next todo comment" })
set("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "previous todo comment" })
