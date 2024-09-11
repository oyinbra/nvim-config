-- ###############################################################################
-- #                                                                              #
-- #                                WHICHKEY CONFIG                               #
-- #                     NOTE: Create key bindings that stick                     #
-- #                                                                              #
-- ################################################################################

return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
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
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
    {
      "<leader>s",
      ":source %<cr>",
      desc = "Source",
    },
    {
      "<leader>Y",
      ":%d+<cr>",
      desc = "Delete All Text",
    },
    {
      "<leader>y",
      ":%y+<cr>",
      desc = "Yank All Text",
    },
    {
      "<leader>q",
      ":q<cr>",
      desc = "Quit",
    },
    {
      "<leader>f",
      ":lua vim.lsp.buf.format()<cr>",
      desc = "Format",
    },
    {
      "<leader>w",
      ":w<cr>",
      desc = "Save",
    },
    {
      "<leader>x",
      ":x<cr>",
      desc = "Save & Quit",
    },
    {
      "<leader>c",
      ":bd<cr>",
      desc = "Close Buffer",
    },
    {
      "<leader>d",
      ":Alpha<cr>",
      desc = "Dashboard",
    },
    {
      "<leader>C",
      ":ChatGPT<cr>",
      desc = "ChatGPT",
    },
    {
      "<leader> ",
      ":Telescope find_files<cr>",
      desc = "Find Files",
    },
    {
      "<leader>F",
      ":Telescope live_grep<cr>",
      desc = "Find Text",
    },
    {
      "<leader>r",
      ":Telescope oldfiles<CR>",
      desc = "Recent Files",
    },
    {
      "<leader>e",
      ":NvimTreeOpen<cr>",
      desc = "Explorer Open",
    },
    {
      "<leader>3",
      ":NvimTreeToggle<cr>",
      desc = "Explorer Toggle",
    },
    {
      "<leader>W",
      name = "Window",
    },
    {
      "<leader>h",
      name = "Health",
      h = { ":checkhealth<cr>", "Check Health" },
      l = { ":checkhealth lazy<cr>", "Check Lazy Health" },
    },
    {
      "<leader>p",
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
    {
      "<leader>t",
      name = "Terminal/ToDo/Trouble",
      f = { ":ToggleTerm direction=float<cr>", "Float Terminal" },
      b = { ":ToggleTerm size=10 direction=horizontal<cr>", "Bottom Terminal" },
      s = { ":ToggleTerm size=50 direction=vertical<cr>", "Side Terminal" },
    },
    {
      "<leader>l",
      name = "LSP",
      a = { ":Lspsaga code_action<cr>", "Code Action" },
      g = { function() 
        local lazygit
        if not lazygit then
          lazygit = require("toggleterm.terminal").Terminal:new({ cmd = "lazygit", direction = "float" })
        end
        lazygit:toggle()
      end, "LazyGit" },
      i = { ":LspInstall<cr>", "Install" },
      I = { ":LspInfo<cr>", "Info" },
      o = { ":Lspsaga outline<cr>", "Outline" },
      r = { ":Lspsaga rename<cr>", "Rename" },
      d = { ":Telescope diagnostics bufnr=0<cr>", "Document Diagnostics" },
      w = { ":Telescope diagnostics<cr>", "Workspace Diagnostics" },
      n = { ":Lspsaga diagnostic_jump_next<cr>", "Next Diagnostic" },
      k = { ":Lspsaga diagnostic_jump_prev<cr>", "Previous Diagnostic" },
      m = { ":Mason<cr>", "Mason Installer" },
      s = { '<cmd>lua require("persistence").load({ last = true })<cr>', "Last Session" },
      x = { '<cmd>lua require("persistence").load()<cr>', "Restore Last Session" },
      e = { '<cmd>lua require("persistence").stop()<cr>', "Stop Session Persistence" },
      t = { ":Telescope lsp_document_symbols<cr>", "Document Symbols" },
      T = { ":Telescope lsp_workspace_symbols<cr>", "Workspace Symbols" },
    },
    {
      "<leader>z",
      name = "Focus",
      z = { ":ZenMode<cr>", "Zen Mode" },
      t = { ":Twilight<cr>", "Twilight" },
    },
    {
      "<leader>P",
      name = "Preview",
      m = { ":MarkdownPreviewToggle<cr>", "Markdown Preview Toggle" },
    },
  },
}
