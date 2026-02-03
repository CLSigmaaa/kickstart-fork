return {
  'github/copilot.vim',
  config = function()
    -- Function to toggle Copilot and notify the user
    local function toggle_copilot()
      if vim.g.copilot_enabled == 1 then
        vim.cmd 'Copilot disable'
        print 'Copilot Disabled'
      else
        vim.cmd 'Copilot enable'
        print 'Copilot Enabled'
      end
    end

    -- Keymap specifically for toggling
    -- Using <leader>ct as an example
    vim.keymap.set('n', '<leader>ct', toggle_copilot, { desc = 'Toggle GitHub Copilot' })

    -- Optional: Disable by default on startup if you prefer
    -- vim.g.copilot_enabled = 0
  end,
}

