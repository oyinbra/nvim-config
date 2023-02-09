return {
    'folke/which-key.nvim',
    event = "BufWinEnter",
    config = function()
      local wk = require("which-key")
      wk.setup {
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
                  g = false
              }
          }
      }

      local Terminal = require('toggleterm.terminal').Terminal
      local toggle_float = function()
        local float = Terminal:new({ direction = "float" })
        return float:toggle()
      end
      local toggle_lazygit = function()
        local lazygit = Terminal:new({ cmd = 'lazygit', direction = "float" })
        return lazygit:toggle()
      end

      local mappings = {
          r = { ":source %<cr>", "Source file" },
          f = { ":lua vim.lsp.buf.format()<cr>", "Format" },
          -- e = { ":Neotree<cr>", "Neotree" },
          m = { ":Mason<cr>", "Mason" },
          -- s = {
          --     name = "Session",
          --     s = { '<cmd>lua require("persistence").load({ last = true })<cr>', "Last Session" },
          --     d = { '<cmd>lua require("persistence").load()<cr>', "Last Directory Session" },
          --     e = { '<cmd>lua require("persistence").stop()<cr>]', "End Last Session" }
          -- },
          d = { ":Alpha<cr>", "Dashboard" },
          q = { name = "Quit", q = { ":q<cr>", "Quit" }, w = { ":q!<cr>", "Quit Without Saving" } },
          o = { ":ChatGPT<cr>", "Open AI" },
          w = { name = "Write", w = { ":w<cr>", "Write" }, q = { ":wq<cr>", "Write & Quit" } },
          x = { ":bdelete<cr>", "Close" },
          E = { ":e ~/.config/nvim/init.lua<cr>", "Edit config" },
          [" "] = { ":Telescope find_files<cr>", "Telescope Find Files" },
          g = { ":Telescope live_grep<cr>", "Telescope Live Grep" },
          t = {
              name = "ToggleTerm",
              t = { ":ToggleTerm<cr>", "Terminal Below" },
              f = { toggle_float, "Terminal Floating" },
              l = { toggle_lazygit, "LazyGit" },
              v = { ":vsplit<cr>", "Vertical Split" },
              h = { ":split<cr>", "Horizontal Split" }
          },
          l = {
              name = "LSP",
              l = { ":Lazy<cr>", "Lazy Manager" },
              i = { ":LspInstall<cr>", "Install" },
              m = { ":Mason<cr>", "Mason" },
              j = { ":LspInfo<cr>", "Connected Language Servers" },
              k = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help" },
              K = { "<cmd>Lspsaga hover_doc<cr>", "Hover Commands" },
              w = { '<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>', "Add Workspace Folder" },
              W = { '<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>', "Remove Workspace Folder" },
              u = {
                  '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>',
                  "List Workspace Folders"
              },
              t = { '<cmd>lua vim.lsp.buf.type_definition()<cr>', "Type Definition" },
              d = { '<cmd>lua vim.lsp.buf.definition()<cr>', "Go To Definition" },
              D = { '<cmd>lua vim.lsp.buf.declaration()<cr>', "Go To Declaration" },
              r = { '<cmd>lua vim.lsp.buf.references()<cr>', "References" },
              R = { '<cmd>Lspsaga rename<cr>', "Rename" },
              a = { '<cmd>Lspsaga code_action<cr>', "Code Action" },
              e = { '<cmd>Lspsaga show_line_diagnostics<cr>', "Show Line Diagnostics" },
              n = { '<cmd>Lspsaga diagnostic_jump_next<cr>', "Go To Next Diagnostic" },
              N = { '<cmd>Lspsaga diagnostic_jump_prev<cr>', "Go To Previous Diagnostic" }
          },
          z = {
              name = "Focus",
              z = { ":ZenMode<cr>", "Toggle Zen Mode" },
              t = { ":Twilight<cr>", "Toggle Twilight" }
          }
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

      local opts = { prefix = '<leader>' }
      wk.register(mappings, opts)
    end
}
