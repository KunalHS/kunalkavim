return {
  "Pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup({
      enabled = true,       -- start enabled
      execution_message = { message = function() return "" end },
      trigger_events = { "InsertLeave", "TextChanged" }, -- when to save
      condition = function(buf)
        local fn = vim.fn
        if fn.getbufvar(buf, "&modifiable") == 1 and fn.bufname(buf) ~= "" then
          return true
        end
        return false
      end,
    })
  end,
}
