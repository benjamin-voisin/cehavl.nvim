local M = {}
local cehavl = require("cehavl")
M.check = function()
    vim.health.start("cehavl report")
    -- make sure setup function parameters are ok
    if cehavl.is_setup then
        vim.health.ok("Setup is correct")
    else
        vim.health.error("Setup is incorrect")
    end

    if vim.lsp.util.get_progress_messages()[1] then
        vim.health.ok("LSP is loaded")
    else
        vim.health.warn("No LSP loaded, the function :CehavlAll will not work")
    end
end
return M
