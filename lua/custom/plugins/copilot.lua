return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        suggestion = {
          enabled = false,
          auto_trigger = true,
          keymap = {
            accept = '<C-y>',
            dismiss = '<C-k>',
          },
        },
        panel = {
          enabled = false,
          auto_refresh = true,
          keymap = {
            open = '<M-CR>',
            quit = '<M-q>',
            jump_next = '<M-n>',
            jump_prev = '<M-p>',
          },
        },
      }
    end,
  },
  {
    'giuxtaposition/blink-cmp-copilot',
    after = { 'copilot.lua', 'blink.cmp' },
  },
}
