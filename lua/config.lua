--[[
    vim.api.nvim_set_keymap('n', '<Leader>ex', '', {
	noremap = true,
	callback = function()
	    print('My example')
	end,
	-- Since Lua function don't have a useful string representation, you can use the "desc" option to document your mapping
	desc = 'TODO: implement the <leader>pp command here where I can access the file extension with vim.api.nvim_buf_get_name(0) and I can use Lua if statements to load the apporapiate print snippet',
    })
--]]
