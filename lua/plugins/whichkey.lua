return {
	"folke/which-key.nvim",
	event = "BufWinEnter",
	config = function()
		local wk = require("which-key")
		wk.setup({
			plugins = {
				marks = false,
				registers = false,
				spelling = { enabled = false, suggestions = 20 },
				presets = {
					operators = false,
					motions = false,
					text_objects = false,
					windows = false,
					nav = false,
					z = false,
					g = false,
				},
			},
		})

		-- local Terminal = require("toggleterm.terminal").Terminal
		-- local toggle_float = function()
		-- 	local float = Terminal:new({ direction = "float" })
		-- 	return float:toggle()
		-- end
		-- local toggle_lazygit = function()
		-- 	local lazygit = Terminal:new({ cmd = "lazygit", direction = "float" })
		-- 	return lazygit:toggle()
		-- end

		local mappings = {
			f = { ":lua vim.lsp.buf.format()<cr>", "Format" },
			s = {
				name = "Session",
				s = { '<cmd>lua require("persistence").load({ last = true })<cr>', "Last Session" },
				d = { '<cmd>lua require("persistence").load()<cr>', "Last Directory Session" },
				e = { '<cmd>lua require("persistence").stop()<cr>]', "End Last Session" },
			},
			["r"] = { ":%d+<cr>", "Remove All Text" },
			["y"] = { ":%y+<cr>", "Yank All Text" },
			["e"] = { ":NeoTreeFocusToggle<cr>", "Explorer" },
			p = {
				name = "Plugins",
				c = { ":Lazy clean<cr>", "Clean" },
				C = { ":Lazy check<cr>", "Check" },
				d = { ":Lazy debug<cr>", "Debug" },
				i = { ":Lazy install<cr>", "Install" },
				s = { ":Lazy sync<cr>", "Sync" },
				l = { ":Lazy log<cr>", "Log" },
				h = { ":Lazy home<cr>", "Home" },
				H = { ":Lazy help<cr>", "Help" },
				p = { ":Lazy profile<cr>", "Profile" },
				u = { ":Lazy update<cr>", "Update" },
			},
			d = { ":Alpha<cr>", "Dashboard" },
			-- q = { name = "Quit", q = { ":q<cr>", "Quit" }, w = { ":q!<cr>", "Quit Without Saving" } },
			q = { ":q!<cr>", "Quit" },
			c = { ":ChatGPT<cr>", "ChatGPT" },
			w = { ":w<cr>", "Write" },
			x = { ":x<cr>", "Write & Quit" },
			b = { ":bdelete<cr>", "Buffer Close" },
			E = { ":e ~/.config/nvim/init.lua<cr>", "Edit config" },
			[" "] = { ":Telescope find_files<cr>", "Telescope Find Files" },
			g = { ":Telescope live_grep<cr>", "Telescope Live Grep" },
			t = {
				name = "Terminal",
				f = { ":ToggleTerm direction=float<cr>", "Float" },
				t = { ":ToggleTerm size=10 direction=horizontal<cr>", "Below" },
				s = { ":ToggleTerm size=50 direction=vertical<cr>", "Side" },
				v = { ":vsplit<cr>", "Vertical Split" },
				h = { ":split<cr>", "Horizontal Split" },
			},
			l = {
				name = "LSP",
				f = { ":Format<cr>", "Format" },
				a = { ":Lspsaga code_action<cr>", "Code Action" },
				i = { ":LspInfo<cr>", "Info" },
				o = { ":Lspsaga outline<cr>", "Code Outline" },
				I = { ":Lspsaga incoming_calls<cr>", "Incoming Calls" },
				O = { ":Lspsaga outgoing_calls<cr>", "Outgoing Calls" },
				m = { ":Mason<cr>", "Mason Installer" },
				j = {
					":Lspsaga diagnostic_jump_next<cr>",
					"Next Diagnostic",
				},
				k = {
					":Lspsaga diagnostic_jump_prev<cr>",
					"Prev Diagnostic",
				},
				r = { ":Lspsaga rename<cr>", "Rename" },
				d = { ":Telescope diagnostics bufnr=0<cr>", "Document Diagnostics" },
				w = { ":Telescope diagnostics<cr>", "Workspace Diagnostics" },
				s = { ":Telescope lsp_document_symbols<cr>", "Document Symbols" },
				S = { ":Telescope lsp_workspace_symbols<cr>", "Workspace Symbols" },
			},
			z = {
				name = "Focus",
				z = { ":ZenMode<cr>", "Toggle Zen Mode" },
				t = { ":Twilight<cr>", "Toggle Twilight" },
			},
			-- p = {
			--   name = "Packer",
			--   r = {":PackerClean<cr>", "Remove Unused Plugins"},
			--   c = {":PackerCompile profile=true<cr>", "Recompile Plugins"},
			--   i = {":PackerInstall<cr>", "Install Plugins"},
			--   p = {":PackerProfile<cr>", "Packer Profile"},
			--   s = {":PackerSync<cr>", "Sync Plugins"},
			--   S = {":PackerStatus<cr>", "Packer Status"},
			--   u = {":PackerUpdate<cr>", "Update Plugins"}
			-- }
		}

		local opts = { prefix = "<leader>" }
		wk.register(mappings, opts)
	end,
}
