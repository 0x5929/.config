-- TODO: refactor this into individual plugin configs, and just require them here?
return require('packer').startup(function(use)
  -- Packer can manage itself
	use 'wbthomason/packer.nvim'
	
	-- minimap
  	use 'echasnovski/mini.nvim'

end)
