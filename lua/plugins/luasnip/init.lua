-- ################################################################################
-- #                                                                              #
-- #                                   LUASNIP                                    #
-- #             NOTE: Snippet Engine for Neovim written in Lua                   #
-- #                                                                              #
-- ################################################################################

return {
  "L3MON4D3/LuaSnip",
  -- enabled = false,
  -- follow latest release.
  version = "1.*",
  -- install jsregexp (optional!).
  build = "make install_jsregexp",
  config = function()
    require('plugins.luasnip.snips')
    local ls = require("luasnip")

    local M = {}

    function M.expand_or_jump()
      if ls.expand_or_jumpable() then
        ls.expand_or_jump()
      end
    end

    function M.jump_next()
      if ls.jumpable(1) then
        ls.jump(1)
      end
    end

    function M.jump_prev()
      if ls.jumpable( -1) then
        ls.jump( -1)
      end
    end

    function M.change_choice()
      if ls.choice_active() then
        ls.change_choice()
      end
    end

    function M.reload_package(package_name)
      for module_name, _ in pairs(package.loaded) do
        if string.find(module_name, "^" .. package_name) then
          package.loaded[module_name] = nil
          require(module_name)
        end
      end
    end

    -- module_name is added to the reload page
    function M.refresh_snippets()
      ls.cleanup()
      M.reload_package("plugins.luasnip.snips")
    end

    local set = vim.keymap.set

    local mode = { "i", "s" }
    local normal = { "n" }
    -- Keymaps for snippet
    set(mode, "<c-i>", M.expand_or_jump)
    set(mode, "<c-n>", M.jump_prev)
    set(mode, "<c-l>", M.change_choice)
    set(normal, ",r", M.refresh_snippets)
  end,
}
