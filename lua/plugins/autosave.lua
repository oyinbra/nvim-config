-- ################################################################################
-- #                                                                              #
-- #                                   AUTOSAVE                                   #
-- #              NOTE: Automatically save your changes in NeoVim                 #
-- #                                                                              #
-- ################################################################################

return {
  ({
	"Pocco81/auto-save.nvim",
  enabled = true,
	config = function()
		 require("auto-save").setup {
			-- your config goes here
			-- or just leave it empty :)
		 }
	end,
})
}
