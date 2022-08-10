mindeca = {}

print("This file will be run at load time!")



dofile(minetest.get_modpath("mindeca") .. "/abm.lua")

dofile(minetest.get_modpath("mindeca") .. "/treegrowth/1tropsun.lua")
dofile(minetest.get_modpath("mindeca") .. "/treegrowth/2fullsun.lua")
dofile(minetest.get_modpath("mindeca") .. "/treegrowth/3partsun.lua")
dofile(minetest.get_modpath("mindeca") .. "/treegrowth/4shade.lua")
dofile(minetest.get_modpath("mindeca") .. "/treegrowth/5spirit.lua")
dofile(minetest.get_modpath("mindeca") .. "/treegrowth/6dark.lua")

dofile(minetest.get_modpath("mindeca") .. "/baking.lua")
dofile(minetest.get_modpath("mindeca") .. "/decorations.lua")
dofile(minetest.get_modpath("mindeca") .. "/items.lua")
dofile(minetest.get_modpath("mindeca") .. "/mapgen.lua")
dofile(minetest.get_modpath("mindeca") .. "/nodes.lua")
dofile(minetest.get_modpath("mindeca") .. "/treegrowth.lua")
dofile(minetest.get_modpath("mindeca") .. "/treepart.lua")
dofile(minetest.get_modpath("mindeca") .. "/tools.lua")

dofile(minetest.get_modpath("mindeca") .. "/modsupport.lua")



--Lighting Fix

minetest.register_on_generated(function(minp, maxp, blockseed)
	local vm = minetest.get_mapgen_object("voxelmanip")
	vm:set_lighting({day = 0, night = 0})
	vm:calc_lighting()
	vm:write_to_map()
end)