return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    build = 'make tiktoken',
    opts = {
      -- See Configuration section for options
      headers = {
        user = '👤 You',
        assistant = '🤖 Copilot',
        tool = '🔧 Tool',
      },

      separator = '━━',
      auto_fold = true, -- Automatically folds non-assistant messages
    },
    keys = {
      { '<leader>zr', '<cmd>CopilotChatReview<cr>', mode = 'v', desc = 'CopilotChat - Review selection' },
      { '<leader>zc', '<cmd>CopilotChatToggle<cr>', desc = 'CopilotChat - Toggle' },
      { '<leader>ze', '<cmd>CopilotChatExplain<cr>', mode = 'v', desc = 'CopilotChat - Explain selection' },
      { '<leader>zf', '<cmd>CopilotChatFix<cr>', mode = 'v', desc = 'CopilotChat - Fix selection' },
      { '<leader>zo', '<cmd>CopilotChatOptimize<cr>', mode = 'v', desc = 'CopilotChat - Optimize selection' },
      { '<leader>zd', '<cmd>CopilotChatDocs<cr>', mode = 'v', desc = 'CopilotChat - Generate docs' },
      { '<leader>zt', '<cmd>CopilotChatTests<cr>', mode = 'v', desc = 'CopilotChat - Generate tests' },
      { '<leader>zq', '<cmd>CopilotChatClose<cr>', desc = 'CopilotChat - Close' },
      { '<leader>zz', '<cmd>CopilotChatReset<cr>', desc = 'CopilotChat - Reset' },
    },
  },
}
