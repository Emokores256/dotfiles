---@type ChadrcConfig 
 local M = {}
 M.ui = {theme = 'doomchad'} -- for your custom theme from NvChad themes
 M.plugins = "custom.plugins" -- add this line to your chadrc.lua file to enable custom plugins
 M.mappings = require "custom.mappings" -- add this line to chadrc.lua for your custom mappings
 return M
