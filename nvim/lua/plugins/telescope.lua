return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = true,  -- Lasy load doesn't work because key mapping below is needed to invoke Telescope
  }
}
