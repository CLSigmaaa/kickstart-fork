return {
  'windwp/nvim-ts-autotag',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    opts = {
      enable_close = true, -- auto close tags
      enable_rename = true, -- auto rename pairs of tags
      enable_close_on_slash = false, -- auto close on trailing </
    },
    -- optional: per-filetype overrides
    per_filetype = {
      ['html'] = {
        enable_close = false,
      },
    },
  },
}
