-- TODO: refactor this into individual plugin configs, and just require them here?
return require('packer').startup(function(use)
  -- Packer can manage itself
	use 'wbthomason/packer.nvim'


  -- Dashboard plugins: dasbhoard-nvim and alpha
	use {
	  'glepnir/dashboard-nvim',
	  event = 'VimEnter',
	  config = function()
	    require('dashboard').setup {
	      -- config
	    }
	  end,
	  requires = {'nvim-tree/nvim-web-devicons'}
	}
	use {
	    'goolord/alpha-nvim',
	    config = function ()
		local alpha = require 'alpha'
		local dashboard = require 'alpha.themes.dashboard'
		
		dashboard.section.header.val = {
			  [[                 ▄████████▄         ]],
			  [[               ▄█▀▒▒▒▒▒▒▒▀██▄       ]],
			  [[           ▄█▀▒▒▒▒▒▒▄▒▒▒▒▒▒▐█▌      ]],
			  [[         ▄█▒▒▒▒▒▒▒▒▒▒▀█▒▒▒▄██       ]],
			  [[       ▄█▒▒▒▒▒▒▒▒▒▒▒▒▒▒██▀▒▒▒█▄     ]],
			  [[     ▄█▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█▄   ]],
			  [[     ▄█▒▒▒▄██████▄▒▒▒▒▄█████▄▒▒▒▒█  ]],
			  [[     █▒▒▒█▀░░░░░▀█ ▒▒▒█▀░░░░▀█▒▒▒█  ]],
			  [[     █▒▒▒█░░▄░░░░▀████▀░░░▄░░█▒▒▒█  ]],
			  [[   ▄███▄▒█▄░▐▀▄░░░░░░░░░▄▀▌░▄█▒▒███▄]],
			  [[   █▀░░█▄▒█░▐▐▀▀▄▄▄ ▄▄▄▀▀▌▌░█▒▒█░░▀█]],
			  [[   █░░░░█▒█░▐▐  ▄▄ █ ▄▄  ▌▌░█▒█░░░░█]],
			  [[   █░▄░░█▒█░▐▐▄ ▀▀ █ ▀▀ ▄▌▌░█▒█░░▄░█]],
			  [[   █░░█░█▒█░░▌▄█▄▄▀ ▀▄▄█▄▐░░█▒█░█░░█]],
			  [[   █▄░█████████▀░░▀▄▀░░▀█████████░▄█]],
			  [[   ██▀░░▄▀░░▀░░▀▄░░░▄▀░░▀░░▀▄░░▀██  ]],
			  [[   ██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██]],
			  [[   █░▄░░░░░░░░░░░░░░░░░░░░░░░░░░░▄░█]],
			  [[   █░▀█▄░░░░░░░░░░░░░░░░░░░░░░░▄█▀░█]],
			  [[   █░░█▀███████████████████████▀█░░█]],
			  [[   █░░█    █   █   █   █   █    █░░█]],
			  [[   █░░░▀█▄▄█▄▄▄█▄▄▄█▄▄▄█▄▄▄█▄▄█▀░░░█]],
			  [[   ▀█░░▀█▄█    █   █   █   █▄█▀░░░█▀]],
			  [[    ▀█░░░▀▀█▄▄ █   █   █▄▄█▀▀░░░░█▀ ]],
			  [[     ▀█░░░░░▀▀█████████▀▀░░░░░░█▀   ]],
			  [[      ▀█░░░░░░░▄░░░░░░░▄░░░░░░█▀    ]],
			  [[        ▀██▄░░░▀▀▀▀▀▀▀▀▀░░░▄██▀     ]],
			  [[          ▀██▄▄░░░░░░░▄▄██▀        ]],
			  [[             ▀▀███████▀▀            ]],	
		}
		dashboard.section.buttons.val = {
		  dashboard.button("e"," New file", ":ene <BAR> startinsert <CR>" ),
		  dashboard.button("<C-p>"," Find File via path", ":Files<CR>" ),
		  dashboard.button("<C-f>"," Find File via keywords", ":Rg<CR>" ),
             	  dashboard.button( "q", " Quit NVIM" , ":qa<CR>"),
		}
		require'alpha'.setup(require'alpha.themes.dashboard'.config)
	    end
	}
end)