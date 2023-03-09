-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/kevin/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/kevin/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/kevin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/kevin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/kevin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n�\23\0\0\t\0\23\00106\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0019\2\4\0025\3\6\0=\3\5\0029\2\3\0019\2\a\0024\3\5\0009\4\b\1'\6\t\0'\a\n\0'\b\v\0B\4\4\2>\4\1\0039\4\b\1'\6\f\0'\a\r\0'\b\14\0B\4\4\2>\4\2\0039\4\b\1'\6\15\0'\a\16\0'\b\17\0B\4\4\2>\4\3\0039\4\b\1'\6\18\0'\a\19\0'\b\20\0B\4\4\0?\4\0\0=\3\5\0026\2\0\0'\4\1\0B\2\2\0029\2\21\0026\4\0\0'\6\2\0B\4\2\0029\4\22\4B\2\2\1K\0\1\0\vconfig\nsetup\f:qa<CR>\18 Quit NVIM\6q\f:Rg<CR>\31 Find File via keywords\f<C-A-f>\15:Files<CR>\27 Find File via path\n<C-e> :ene <BAR> startinsert <CR>\17 New file\6e\vbutton\fbuttons\1\30\0\0=                 ▄████████▄         E               ▄█▀▒▒▒▒▒▒▒▀██▄       O           ▄█▀▒▒▒▒▒▒▄▒▒▒▒▒▒▐█▌      Q         ▄█▒▒▒▒▒▒▒▒▒▒▀█▒▒▒▄██       Y       ▄█▒▒▒▒▒▒▒▒▒▒▒▒▒▒██▀▒▒▒█▄     a     ▄█▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█▄   c     ▄█▒▒▒▄██████▄▒▒▒▒▄█████▄▒▒▒▒█  a     █▒▒▒█▀░░░░░▀█ ▒▒▒█▀░░░░▀█▒▒▒█  c     █▒▒▒█░░▄░░░░▀████▀░░░▄░░█▒▒▒█  k   ▄███▄▒█▄░▐▀▄░░░░░░░░░▄▀▌░▄█▒▒███▄i   █▀░░█▄▒█░▐▐▀▀▄▄▄ ▄▄▄▀▀▌▌░█▒▒█░░▀█_   █░░░░█▒█░▐▐  ▄▄ █ ▄▄  ▌▌░█▒█░░░░█c   █░▄░░█▒█░▐▐▄ ▀▀ █ ▀▀ ▄▌▌░█▒█░░▄░█i   █░░█░█▒█░░▌▄█▄▄▀ ▀▄▄█▄▐░░█▒█░█░░█k   █▄░█████████▀░░▀▄▀░░▀█████████░▄█g   ██▀░░▄▀░░▀░░▀▄░░░▄▀░░▀░░▀▄░░▀██  k   ██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██k   █░▄░░░░░░░░░░░░░░░░░░░░░░░░░░░▄░█k   █░▀█▄░░░░░░░░░░░░░░░░░░░░░░░▄█▀░█k   █░░█▀███████████████████████▀█░░█C   █░░█    █   █   █   █   █    █░░█k   █░░░▀█▄▄█▄▄▄█▄▄▄█▄▄▄█▄▄▄█▄▄█▀░░░█Q   ▀█░░▀█▄█    █   █   █   █▄█▀░░░█▀Y    ▀█░░░▀▀█▄▄ █   █   █▄▄█▀▀░░░░█▀ a     ▀█░░░░░▀▀█████████▀▀░░░░░░█▀   ]      ▀█░░░░░░░▄░░░░░░░▄░░░░░░█▀    W        ▀██▄░░░▀▀▀▀▀▀▀▀▀░░░▄██▀     J          ▀██▄▄░░░░░░░▄▄██▀        ?             ▀▀███████▀▀            \bval\vheader\fsection\27alpha.themes.dashboard\nalpha\frequire\t����\4\0" },
    loaded = true,
    path = "/home/kevin/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14dashboard\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/kevin/.local/share/nvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["dbsession.nvim"] = {
    commands = { "SessionSave", "SessionDelete", "SessionLoad" },
    config = { "\27LJ\2\nQ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\22auto_save_on_exit\2\nsetup\14dbsession\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/kevin/.local/share/nvim/site/pack/packer/opt/dbsession.nvim",
    url = "https://github.com/glepnir/dbsession.nvim"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/kevin/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/kevin/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n�\23\0\0\t\0\23\00106\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0019\2\4\0025\3\6\0=\3\5\0029\2\3\0019\2\a\0024\3\5\0009\4\b\1'\6\t\0'\a\n\0'\b\v\0B\4\4\2>\4\1\0039\4\b\1'\6\f\0'\a\r\0'\b\14\0B\4\4\2>\4\2\0039\4\b\1'\6\15\0'\a\16\0'\b\17\0B\4\4\2>\4\3\0039\4\b\1'\6\18\0'\a\19\0'\b\20\0B\4\4\0?\4\0\0=\3\5\0026\2\0\0'\4\1\0B\2\2\0029\2\21\0026\4\0\0'\6\2\0B\4\2\0029\4\22\4B\2\2\1K\0\1\0\vconfig\nsetup\f:qa<CR>\18 Quit NVIM\6q\f:Rg<CR>\31 Find File via keywords\f<C-A-f>\15:Files<CR>\27 Find File via path\n<C-e> :ene <BAR> startinsert <CR>\17 New file\6e\vbutton\fbuttons\1\30\0\0=                 ▄████████▄         E               ▄█▀▒▒▒▒▒▒▒▀██▄       O           ▄█▀▒▒▒▒▒▒▄▒▒▒▒▒▒▐█▌      Q         ▄█▒▒▒▒▒▒▒▒▒▒▀█▒▒▒▄██       Y       ▄█▒▒▒▒▒▒▒▒▒▒▒▒▒▒██▀▒▒▒█▄     a     ▄█▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█▄   c     ▄█▒▒▒▄██████▄▒▒▒▒▄█████▄▒▒▒▒█  a     █▒▒▒█▀░░░░░▀█ ▒▒▒█▀░░░░▀█▒▒▒█  c     █▒▒▒█░░▄░░░░▀████▀░░░▄░░█▒▒▒█  k   ▄███▄▒█▄░▐▀▄░░░░░░░░░▄▀▌░▄█▒▒███▄i   █▀░░█▄▒█░▐▐▀▀▄▄▄ ▄▄▄▀▀▌▌░█▒▒█░░▀█_   █░░░░█▒█░▐▐  ▄▄ █ ▄▄  ▌▌░█▒█░░░░█c   █░▄░░█▒█░▐▐▄ ▀▀ █ ▀▀ ▄▌▌░█▒█░░▄░█i   █░░█░█▒█░░▌▄█▄▄▀ ▀▄▄█▄▐░░█▒█░█░░█k   █▄░█████████▀░░▀▄▀░░▀█████████░▄█g   ██▀░░▄▀░░▀░░▀▄░░░▄▀░░▀░░▀▄░░▀██  k   ██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██k   █░▄░░░░░░░░░░░░░░░░░░░░░░░░░░░▄░█k   █░▀█▄░░░░░░░░░░░░░░░░░░░░░░░▄█▀░█k   █░░█▀███████████████████████▀█░░█C   █░░█    █   █   █   █   █    █░░█k   █░░░▀█▄▄█▄▄▄█▄▄▄█▄▄▄█▄▄▄█▄▄█▀░░░█Q   ▀█░░▀█▄█    █   █   █   █▄█▀░░░█▀Y    ▀█░░░▀▀█▄▄ █   █   █▄▄█▀▀░░░░█▀ a     ▀█░░░░░▀▀█████████▀▀░░░░░░█▀   ]      ▀█░░░░░░░▄░░░░░░░▄░░░░░░█▀    W        ▀██▄░░░▀▀▀▀▀▀▀▀▀░░░▄██▀     J          ▀██▄▄░░░░░░░▄▄██▀        ?             ▀▀███████▀▀            \bval\vheader\fsection\27alpha.themes.dashboard\nalpha\frequire\t����\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'SessionSave', function(cmdargs)
          require('packer.load')({'dbsession.nvim'}, { cmd = 'SessionSave', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'dbsession.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('SessionSave ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'SessionDelete', function(cmdargs)
          require('packer.load')({'dbsession.nvim'}, { cmd = 'SessionDelete', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'dbsession.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('SessionDelete ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'SessionLoad', function(cmdargs)
          require('packer.load')({'dbsession.nvim'}, { cmd = 'SessionLoad', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'dbsession.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('SessionLoad ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'dashboard-nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
