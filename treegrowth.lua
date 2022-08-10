local modname = "mindeca"
local modpath = minetest.get_modpath(modname)

-----
--Table of Contents
-----

--Natural Trees

--Spring
---Cherry Trees
---
---
---
---Poplar

--Summer
---Peach
---Plum
---Magnolia
---Dogwood
---Ash

--Autumn
---
---
---
---
---Oak

--Winter
---
---
---
---
---White Cedar

--Special
---Crystal Tree


-----
--Spring
-----

--Cherry Trees

local function grow_new_cherry_tree(pos)
	if not mindeca.can_grow_fullsun(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end
	minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x-5, y = pos.y, z = pos.z-5},
		minetest.get_modpath("mindeca").."/schematics/mindeca_tree_cherry.mts", "random", nil, false)
end

minetest.register_node("mindeca:tree_cherry_sapling", {
	description = "Cherry Tree Sapling\n\nA small Cherry tree sapling.\n\nMindeca",
	drawtype = "plantlike",
	tiles = {
		"mindeca_item_plant_sapling_cherry.png"
		},
	inventory_image = "mindeca_item_plant_sapling_cherry.png",
	wield_image = "mindeca_item_plant_sapling_cherry.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_cherry_tree,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(1, 1))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"mindeca:tree_cherry_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -5, y = 1, z = -5},
			{x = 5, y = 12, z = 5},
			-- maximum interval of interior volume check
			4)
		return itemstack
	end,
})

--

--

--

--Poplar Trees

local function grow_new_poplar_tree(pos)
	if not mindeca.can_grow_partsun(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end
	minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x-3, y = pos.y, z = pos.z-3},
		minetest.get_modpath("mindeca").."/schematics/mindeca_tree_poplar.mts", "random", nil, false)
end

minetest.register_node("mindeca:tree_poplar_sapling", {
	description = "Poplar Tree Sapling\n\nA small Poplar tree sapling.\n\nMindeca",
	drawtype = "plantlike",
	tiles = {
		"mindeca_item_plant_sapling_poplar.png"
		},
	inventory_image = "mindeca_item_plant_sapling_poplar.png",
	wield_image = "mindeca_item_plant_sapling_poplar.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_poplar_tree,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(1, 1))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"mindeca:tree_poplar_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -3, y = 1, z = -3},
			{x = 3, y = 15, z = 3},
			-- maximum interval of interior volume check
			4)
		return itemstack
	end,
})


-----
--Summer
-----

--Peach

local function grow_new_peach_tree(pos)
	if not mindeca.can_grow_fullsun(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end
	minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x-2, y = pos.y, z = pos.z-2},
		minetest.get_modpath("mindeca").."/schematics/mindeca_tree_peach.mts", "random", nil, false)
end

minetest.register_node("mindeca:tree_peach_sapling", {
	description = "Peach Tree Sapling\n\nA small Peach tree sapling.\n\nMindeca",
	drawtype = "plantlike",
	tiles = {
		"mindeca_item_plant_sapling_peach.png"
		},
	inventory_image = "mindeca_item_plant_sapling_peach.png",
	wield_image = "mindeca_item_plant_sapling_peach.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_peach_tree,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(1, 1))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"mindeca:tree_peach_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -2, y = 1, z = -2},
			{x = 2, y = 9, z = 2},
			-- maximum interval of interior volume check
			4)
		return itemstack
	end,
})


--Plum

local function grow_new_plum_tree(pos)
	if not mindeca.can_grow_fullsun(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end
	minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x-2, y = pos.y, z = pos.z-2},
		minetest.get_modpath("mindeca").."/schematics/mindeca_tree_plum.mts", "random", nil, false)
end

minetest.register_node("mindeca:tree_plum_sapling", {
	description = "Plum Tree Sapling\n\nA small plum tree sapling.\n\nMindeca",
	drawtype = "plantlike",
	tiles = {
		"mindeca_item_plant_sapling_plum.png"
		},
	inventory_image = "mindeca_item_plant_sapling_plum.png",
	wield_image = "mindeca_item_plant_sapling_plum.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_plum_tree,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(1, 1))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"mindeca:tree_plum_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -2, y = 1, z = -2},
			{x = 2, y = 9, z = 2},
			-- maximum interval of interior volume check
			4)
		return itemstack
	end,
})


--Magnolia

local function grow_new_magnolia_tree(pos)
	if not mindeca.can_grow_fullsun(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end
	minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x-3, y = pos.y, z = pos.z-3},
		minetest.get_modpath("mindeca").."/schematics/mindeca_tree_magnolia.mts", "random", nil, false)
end

minetest.register_node("mindeca:tree_magnolia_sapling", {
	description = "Magnolia Tree Sapling\n\nA small magnolia tree sapling.\n\nMindeca",
	drawtype = "plantlike",
	tiles = {
		"mindeca_item_plant_sapling_magnolia.png"
		},
	inventory_image = "mindeca_item_plant_sapling_magnolia.png",
	wield_image = "mindeca_item_plant_sapling_magnolia.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_magnolia_tree,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(1, 1))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"mindeca:tree_magnolia_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -3, y = 1, z = -3},
			{x = 3, y = 10, z = 3},
			-- maximum interval of interior volume check
			4)
		return itemstack
	end,
})


--Dogwood

local function grow_new_dogwood_tree(pos)
	if not mindeca.can_grow_fullsun(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end
	minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x-3, y = pos.y, z = pos.z-3},
		minetest.get_modpath("mindeca").."/schematics/mindeca_tree_dogwood.mts", "random", nil, false)
end

minetest.register_node("mindeca:tree_dogwood_sapling", {
	description = "Dogwood Tree Sapling\n\nA small Dogwood tree sapling.\n\nMindeca",
	drawtype = "plantlike",
	tiles = {
		"mindeca_item_plant_sapling_dogwood.png"
		},
	inventory_image = "mindeca_item_plant_sapling_dogwood.png",
	wield_image = "mindeca_item_plant_sapling_dogwood.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_dogwood_tree,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(1, 1))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"mindeca:tree_dogwood_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -3, y = 1, z = -3},
			{x = 3, y = 10, z = 3},
			-- maximum interval of interior volume check
			4)
		return itemstack
	end,
})


--Ash

local function grow_new_ash_tree(pos)
	if not mindeca.can_grow_fullsun(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end
	minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x-4, y = pos.y, z = pos.z-4},
		minetest.get_modpath("mindeca").."/schematics/mindeca_tree_ash.mts", "random", nil, false)
end

minetest.register_node("mindeca:tree_ash_sapling", {
	description = "Ash Tree Sapling\n\nA small Ash tree sapling.\n\nMindeca",
	drawtype = "plantlike",
	tiles = {
		"mindeca_item_plant_sapling_ash.png"
		},
	inventory_image = "mindeca_item_plant_sapling_ash.png",
	wield_image = "mindeca_item_plant_sapling_ash.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_ash_tree,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(1, 1))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"mindeca:tree_ash_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -4, y = 1, z = -4},
			{x = 4, y = 14, z = 4},
			-- maximum interval of interior volume check
			4)
		return itemstack
	end,
})


-----
--Autumn
-----

--Oak

local function grow_new_oak_tree(pos)
	if not mindeca.can_grow_shade(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end
	minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x-3, y = pos.y, z = pos.z-3},
		minetest.get_modpath("mindeca").."/schematics/mindeca_tree_oak.mts", "random", nil, false)
end

minetest.register_node("mindeca:tree_oak_sapling", {
	description = "Oak Tree Sapling\n\nA small oak tree sapling.\n\nMindeca",
	drawtype = "plantlike",
	tiles = {
		"mindeca_item_plant_sapling_oak.png"
		},
	inventory_image = "mindeca_item_plant_sapling_oak.png",
	wield_image = "mindeca_item_plant_sapling_oak.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_oak_tree,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(1, 1))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"mindeca:tree_oak_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -3, y = 1, z = -3},
			{x = 3, y = 9, z = 3},
			-- maximum interval of interior volume check
			4)
		return itemstack
	end,
})


local function grow_new_oak_a_tree(pos)
	if not mindeca.can_grow_shade(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end
	minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x-3, y = pos.y, z = pos.z-3},
		minetest.get_modpath("mindeca").."/schematics/mindeca_tree_oak_a.mts", "random", nil, false)
end

minetest.register_node("mindeca:tree_oak_a_sapling", {
	description = "Oak Tree Sapling\n\nA small oak tree sapling.\nSeems to be stuck in Autumn.\n\nMindeca",
	drawtype = "plantlike",
	tiles = {
		"mindeca_item_plant_sapling_oak_a.png"
		},
	inventory_image = "mindeca_item_plant_sapling_oak_a.png",
	wield_image = "mindeca_item_plant_sapling_oak_a.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_oak_a_tree,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(1, 1))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"mindeca:tree_oak_a_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -3, y = 1, z = -3},
			{x = 3, y = 9, z = 3},
			-- maximum interval of interior volume check
			4)
		return itemstack
	end,
})


-----
--Winter
-----

--Cedar

local function grow_new_cedar_tree(pos)
	if not mindeca.can_grow_partsun(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end
	minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x-5, y = pos.y, z = pos.z-5},
		minetest.get_modpath("mindeca").."/schematics/mindeca_tree_cedar.mts", "random", nil, false)
end

minetest.register_node("mindeca:tree_cedar_sapling", {
	description = "White Cedar Tree Sapling\n\nA small White Cedar tree sapling.\n\nMindeca",
	drawtype = "plantlike",
	tiles = {
		"mindeca_item_plant_sapling_cedar.png"
		},
	inventory_image = "mindeca_item_plant_sapling_cedar.png",
	wield_image = "mindeca_item_plant_sapling_cedar.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_cedar_tree,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(1, 1))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"mindeca:tree_cedar_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -5, y = 1, z = -5},
			{x = 5, y = 15, z = 5},
			-- maximum interval of interior volume check
			4)
		return itemstack
	end,
})