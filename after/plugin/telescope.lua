require('telescope').load_extension('media_files')

require('telescope').setup {
	defaults = {
		-- Default configuration for telescope goes here:
		-- config_key = value,
		mappings = {
			i = {
				-- map actions.which_key to <C-h> (default: <C-/>)
				-- actions.which_key shows the mappings for your picker,
				-- e.g. git_{create, delete, ...}_branch for the git_branches picker
				["<C-h>"] = "which_key"
			}
		}
	},
	pickers = {
		-- Default configuration for builtin pickers goes here:
		-- picker_name = {
		--   picker_config_key = value,
		--   ...
		-- }
		-- Now the picker_config_key will be applied every time you call this
		-- builtin picker
		find_files = {
			mappings = {
				i = {
					["<C-up>"] = function(prompt_bufnr)
						local current_picker =
							require("telescope.actions.state").get_current_picker(prompt_bufnr)
						-- cwd is only set if passed as telescope option
						local cwd = current_picker.cwd and tostring(current_picker.cwd)
							or vim.loop.cwd()
						local parent_dir = vim.fs.dirname(cwd)

						require("telescope.actions").close(prompt_bufnr)
						require("telescope.builtin").find_files {
							prompt_title = vim.fs.basename(parent_dir),
							cwd = parent_dir,
						}
					end,
				},
			},

		},
	},
	extensions = {
		-- Your extension configuration goes here:
		-- extension_name = {
		--   extension_config_key = value,
		-- }
		-- please take a look at the readme of the extension you want to configure

		media_files = {
			-- filetypes whitelist
			-- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
			filetypes = { "png", "webp", "jpg", "jpeg" },
			-- find command (defaults to `fd`)
			find_cmd = "fd"
		}
	}
}
