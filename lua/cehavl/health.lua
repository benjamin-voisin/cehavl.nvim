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
  -- do some more checking
  -- ...
end
return M
