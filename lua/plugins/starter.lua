return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
  require("dashboard").setup({
    theme = 'hyper',
    config = {
      week_header = {
       enable = true,
      },
      shortcut = {
        { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'FzfLua files',
          key = 'f',
        },
	{
	  icon = " ",
          desc = 'Livegrep',
          group = 'Search',
          action = 'FzfLua live_grep',
          key = 'd',
        },
      },
    },
  })
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}