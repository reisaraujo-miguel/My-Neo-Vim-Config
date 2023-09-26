vim.opt.termguicolors = true

require('bufferline').setup({
    options = {
        separator_style = "slope",
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local s = " "
            for e, n in pairs(diagnostics_dict) do
                local sym = (e == "error" and " ")
                    or (e == "warning" and " ") or (e == "hint" and "⚑ " or " ")
                s = s .. n .. sym
            end
            return s
        end
    }
})
