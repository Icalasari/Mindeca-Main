-----
--Soil
-----



-----
--Sand
-----



-----
--Stone
-----



-----
--Ores
-----

minetest.register_node("mindeca:ore_copper", {
	description = ("Copper Ore" .. "\n" .. "Ore with copper embedded. The copper practically glistens." .. "\n" .. "\n" .. "Mindeca"),
	tiles = {"default_stone.png^mindeca_ore_copper.png"},
	groups = {cracky = 2},
	drop = "mindeca:item_copper",
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("mindeca:ore_tin", {
	description = "Tin Ore\n\nOre with tin embedded. The tin is soft and pliable.\n\nMindeca",
	tiles = {"default_stone.png^mindeca_ore_tin.png"},
	groups = {cracky = 2},
	drop = "mindeca:item_tin",
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("mindeca:ore_ruby", {
	description = ("Ruby Ore" .. "\n" .. "Ore with rubies embedded. One is of high quality." .. "\n" .. "\n" .. "Mindeca"),
	tiles = {"default_stone.png^mindeca_ore_ruby.png"},
	groups = {cracky = 2},
	drop = "mindeca:item_ruby",
	sounds = default.node_sound_stone_defaults()
})



-----
--Plants
-----



-----
--Grass



-----
--Bushes/Berries


--Spring


--Summer

minetest.register_node("mindeca:bush_rasp_berries", {
	description = "Raspberry Bush Leaves (Berry Laden)\n\n[Creative]\n\nMindeca",
	drawtype = "allfaces_optional",
	tiles = {"mindeca_bush_rasp_leaves.png^mindeca_bush_rasp_berries.png"},
	special_tiles = {"mindeca_bush_rasp_leaves_s.png^mindeca_bush_rasp_berries.png"},
	paramtype = "light",
	light_source = 5,
	groups = {snappy = 3, flammable = 2, leaves = 1, dig_immediate = 3, spirit = 1},
	drop = "mindeca:item_fruit_raspberry",
	sounds = default.node_sound_leaves_defaults(),
	node_dig_prediction = "mindeca:bush_rasp_leaves",
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "mindeca:bush_rasp_leaves"})
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,
})

minetest.register_node("mindeca:bush_rasp_leaves", {
	description = "Raspberry Bush Leaves\n\nLeaves that once bore raspberries.\n\nMindeca",
	drawtype = "allfaces_optional",
	tiles = {"mindeca_bush_rasp_leaves.png"},
	special_tiles = {"mindeca_bush_rasp_leaves_s.png"},
	paramtype = "light",
	light_source = 4,
	groups = {snappy = 3, flammable = 2, leaves = 1, spirit = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"mindeca:bush_rasp_seed"}, rarity = 5},
			{items = {"mindeca:bush_rasp_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) < 3 then
			minetest.get_node_timer(pos):start(200)
		else
			minetest.set_node(pos, {name = "mindeca:bush_rasp_berries"})
		end
	end,
})

local function grow_new_rasp_bush(pos)
	if not mindeca.can_grow_spirit(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end
	minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x-1, y = pos.y, z = pos.z-1}, minetest.get_modpath("mindeca").."/schematics/mindeca_bush_berry_rasp.mts", "random", nil, false)
end

minetest.register_node("mindeca:bush_rasp_seed", {
	description = "Raspberry Bush Seedling\n\nA bush to grow tart raspberries.\n\nMindeca",
	drawtype = "plantlike",
	tiles = {"mindeca_item_plant_bush_rasp.png"},
	inventory_image = "mindeca_item_plant_bush_rasp.png",
	wield_image = "mindeca_item_plant_bush_rasp.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	light_source = 4,
	on_timer = grow_new_rasp_bush,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(240, 600))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"mindeca:bush_rasp_seed",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -2, y = 1, z = -2},
			{x = 2, y = 2, z = 2},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})


---
--Melons/Gourds


---
--Flowers


--Summer

minetest.register_node("mindeca:plant_flower_magnolia", {
	description = "Magnolia Flower\n\nMindeca",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"mindeca_item_flower_magnolia.png"},
	inventory_image = "mindeca_item_flower_magnolia.png",
	wield_image = "mindeca_item_flower_magnolia.png",
	paramtype = "light",
	paramtype2 = "meshoptions",
	place_param2 = 10,
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1, spirit = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-8/16, -0.5, -8/16, 8/16, 5/16, 8/16},
	},
})

minetest.register_node("mindeca:plant_flower_dogwood", {
	description = "Dogwood Flower\n\nMindeca",
	drawtype = "plantlike",
	tiles = {"mindeca_item_flower_dogwood.png"},
	inventory_image = "mindeca_item_flower_dogwood.png",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-3 / 16, -7 / 16, -3 / 16, 3 / 16, 4 / 16, 3 / 16}
	},
	groups = {snappy = 3, flora = 1, grass = 1, flammable = 1, spirit = 1},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = function(pos, placer, itemstack)
		minetest.set_node(pos, {name = "mindeca:plant_flower_dogwood"})
	end,

	on_place = minetest.rotate_node
})




---
--Vines

minetest.register_node("mindeca:plant_glitter_vine", {
	description = ("Glitter Vine" .. "\n" .. "A golden vine that glitters in the dark. It is thought to contain spiritual energy." .. "\n" .. "\n" .. "Mindeca"),
	drawtype = "nodebox",
	tiles = {"mindeca_plant_glitter_vine.png"},
	inventory_image = "mindeca_plant_glitter_vine.png",
	wield_image = "mindeca_plant_glitter_vine.png",
	use_texture_alpha = "clip",
	paramtype = "light",
	paramtype2 = "wallmounted",
	node_box = {
		type = "wallmounted",
		wall_top    = {-0.5, 0.45, -0.5, 0.5, 0.5, 0.5,},
		wall_bottom = {-0.5, -0.5, -0.5, 0.5, -0.45, 0.5,},
		wall_side   = {-0.5, -0.5, -0.5, -0.45, 0.5, 0.5,},
	},
	sunlight_propogates = true,
	walkable = false,
	climbable = true,
	buildable_to = true,
	is_ground_content = false,
	waving = 1,
	groups = {snappy = 3, fleshy = 3, dig_immediate = 3, flammable = 2, attached_node = 1, leafdecay = 3, leafdecay_drop = 1},
	drop = "mindeca:plant_glitter_vine",
	sounds = default.node_sound_leaves_defaults(),
	light_source = 14,
})

-----
--Wood
-----

-----
--Natural



-----
--Liquids
-----



-----
--Insects
-----

minetest.register_node("mindeca:cicada", {
	description = "Cicada\n\nA very, VERY noisy insect.\n\nMindeca",
	tiles = {"mindeca_insect_cicada.png"},
	drawtype = "mesh",
	collision_box = {
		type = "fixed",
		fixed =	{-5/16, -8/16, 4/16, 5/16, 8/16, 8/16},
	},
	selection_box = {
		type = "fixed",
		fixed =	{-5/16, -8/16, 4/16, 5/16, 8/16, 8/16},
	},
	mesh = "mindeca_cicada.obj",
	use_texture_alpha = "clip",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {oddly_breakable_by_hand = 1, flammable = 1, insect = 1},
	after_place_node = function(pos)
		local timer = minetest.get_node_timer(pos) 
		timer:start(6,10)
		return true
	end,
	on_timer = function(pos)
		local timer = minetest.get_node_timer(pos) 
		minetest.sound_play('mindeca_cicada', {
			pos = pos,
			gain = 0.525,
			max_hear_distance = 32
		})
		timer:start(6,10)
	end
})



-----
--Traps
-----

minetest.register_node("mindeca:trap_oak_leaves", {
	description = "Leaf Pile\n\nA pile of autumn leaves. Careful, it could hide a hole.\n\nMindeca",
	drawtype = "mesh",
	selection_box = {
		type = "fixed",
		fixed = {-8/16, -8/16, -8/16, 8/16, -5/16, 8/16},
	},
	visual_scale = 1.1,
	mesh = "mindeca_trap_oak_leaves.obj",
	tiles = {
		"mindeca_trap_oak_leaves.png",
		},
	inventory_image = "mindeca_item_trap_oak_leaves.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	groups = {oddly_breakable_by_hand = 1},
	drop = "mindeca:trap_oak_leaves",
	sounds = {
		footstep = default.node_sound_leaves_defaults(),
		dig = default.node_sound_leaves_defaults(),
		dug = default.node_sound_leaves_defaults(),
	}
})


-----
--Cooking
-----

local hbmod = minetest.global_exists("hbhunger")

minetest.register_node("mindeca:item_cook_pie_tin", {
	description = "Pie Tin\n\nA pie tin made for baking goods such as pies and pastries.\n\nMindeca",
	drawtype = "mesh",
	collision_box = {
		type = "fixed",
		fixed =	{-8/16, -8/16, -8/16, 8/16, -4/16, 8/16},
	},
	selection_box = {
		type = "fixed",
		fixed =	{-8/16, -8/16, -8/16, 8/16, -4/16, 8/16},
	},
	mesh = "mindeca_pie_tin.obj",
	tiles = {"mindeca_cook_pie_apple.png",},
	inventory_image = "mindeca_item_cook_pie_tin.png",
	groups = {oddly_breakable_by_hand = 1},
	drop = "mindeca:item_cook_pie_tin",
	sounds = default.node_sound_stone_defaults()
})

-----
--Spring Fruits


-----
--Summer Fruits


-----
--Autumn Fruits

minetest.register_node("mindeca:item_cook_pie_apple", {
	description = "Apple Pie\n\nA well known classic.\n\nMindeca",
	drawtype = "mesh",
	collision_box = {
		type = "fixed",
		fixed =	{-8/16, -8/16, -8/16, 8/16, -2/16, 8/16},
	},
	selection_box = {
		type = "fixed",
		fixed =	{-8/16, -8/16, -8/16, 8/16, -2/16, 8/16},
	},
	mesh = "mindeca_pie1.obj",
	tiles = {"mindeca_cook_pie_apple.png"},
	inventory_image = "mindeca_item_cook_pie_tin.png",
	groups = {oddly_breakable_by_hand = 1},
	drop = "mindeca:item_cook_pie_apple",
	sounds = default.node_sound_stone_defaults(),

	on_rightclick = function(pos, node, clicker)
		if hbmod then
			local sat = tonumber(hbhunger.SAT_MAX)
			local h = tonumber(hbhunger.hunger[clicker:get_player_name()])
			h = math.min(h + 4)
			if h > sat then
				h = sat
			end
			hbhunger.hunger[clicker:get_player_name()] = h
			hbhunger.set_hunger_raw(clicker)
			minetest.sound_play("mindeca_eat", {
				pos = pos, gain = 0.7, max_hear_distance = 4})
		minetest.set_node(pos, {name = "mindeca:item_cook_pie_apple2"})
		else local h = clicker:get_hp()
			h = math.min(h + 4, 20)
			clicker:set_hp(h)
			minetest.sound_play("mindeca_eat", {
				pos = pos, gain = 0.7, max_hear_distance = 4})
		minetest.set_node(pos, {name = "mindeca:item_cook_pie_apple2"})
	end
end
})

minetest.register_node("mindeca:item_cook_pie_apple2", {
	description = "Apple Pie\n\nOne slice eaten. How did you get this?\n\nMindeca",
	drawtype = "mesh",
	collision_box = {
		type = "fixed",
		fixed =	{-8/16, -8/16, -8/16, 8/16, -2/16, 8/16},
	},
	selection_box = {
		type = "fixed",
		fixed =	{-8/16, -8/16, -8/16, 8/16, -2/16, 8/16},
	},
	mesh = "mindeca_pie2.obj",
	tiles = {"mindeca_cook_pie_apple.png"},
	inventory_image = "mindeca_item_cook_pie_tin.png",
	groups = {oddly_breakable_by_hand = 1},
	drop = "mindeca:item_cook_pie_tin",
	sounds = default.node_sound_stone_defaults(),

	on_rightclick = function(pos, node, clicker)
		if hbmod then
			local sat = tonumber(hbhunger.SAT_MAX)
			local h = tonumber(hbhunger.hunger[clicker:get_player_name()])
			h = math.min(h + 4)
			if h > sat then
				h = sat
			end
			hbhunger.hunger[clicker:get_player_name()] = h
			hbhunger.set_hunger_raw(clicker)
			minetest.sound_play("mindeca_eat", {
				pos = pos, gain = 0.7, max_hear_distance = 4})
		minetest.set_node(pos, {name = "mindeca:item_cook_pie_apple3"})
		else local h = clicker:get_hp()
			h = math.min(h + 4, 20)
			clicker:set_hp(h)
			minetest.sound_play("mindeca_eat", {
				pos = pos, gain = 0.7, max_hear_distance = 4})
		minetest.set_node(pos, {name = "mindeca:item_cook_pie_apple3"})
	end
end
})

minetest.register_node("mindeca:item_cook_pie_apple3", {
	description = "Apple Pie\n\nHalf eaten. How did you get this?\n\nMindeca",
	drawtype = "mesh",
	collision_box = {
		type = "fixed",
		fixed =	{-8/16, -8/16, -8/16, 8/16, -2/16, 8/16},
	},
	selection_box = {
		type = "fixed",
		fixed =	{-8/16, -8/16, -8/16, 8/16, -2/16, 8/16},
	},
	mesh = "mindeca_pie3.obj",
	tiles = {"mindeca_cook_pie_apple.png"},
	inventory_image = "mindeca_item_cook_pie_tin.png",
	groups = {oddly_breakable_by_hand = 1},
	drop = "mindeca:item_cook_pie_tin",
	sounds = default.node_sound_stone_defaults(),

	on_rightclick = function(pos, node, clicker)
		if hbmod then
			local sat = tonumber(hbhunger.SAT_MAX)
			local h = tonumber(hbhunger.hunger[clicker:get_player_name()])
			h = math.min(h + 4)
			if h > sat then
				h = sat
			end
			hbhunger.hunger[clicker:get_player_name()] = h
			hbhunger.set_hunger_raw(clicker)
			minetest.sound_play("mindeca_eat", {
				pos = pos, gain = 0.7, max_hear_distance = 4})
		minetest.set_node(pos, {name = "mindeca:item_cook_pie_apple4"})
		else local h = clicker:get_hp()
			h = math.min(h + 4, 20)
			clicker:set_hp(h)
			minetest.sound_play("mindeca_eat", {
				pos = pos, gain = 0.7, max_hear_distance = 4})
		minetest.set_node(pos, {name = "mindeca:item_cook_pie_apple4"})
	end
end
})

minetest.register_node("mindeca:item_cook_pie_apple4", {
	description = "Apple Pie\n\nThree slices eaten. How did you get this?\n\nMindeca",
	drawtype = "mesh",
	collision_box = {
		type = "fixed",
		fixed =	{-8/16, -8/16, -8/16, 8/16, -2/16, 8/16},
	},
	selection_box = {
		type = "fixed",
		fixed =	{-8/16, -8/16, -8/16, 8/16, -2/16, 8/16},
	},
	mesh = "mindeca_pie4.obj",
	tiles = {"mindeca_cook_pie_apple.png"},
	inventory_image = "mindeca_item_cook_pie_tin.png",
	groups = {oddly_breakable_by_hand = 1},
	drop = "mindeca:item_cook_pie_tin",
	sounds = default.node_sound_stone_defaults(),

	on_rightclick = function(pos, node, clicker)
		if hbmod then
			local sat = tonumber(hbhunger.SAT_MAX)
			local h = tonumber(hbhunger.hunger[clicker:get_player_name()])
			h = math.min(h + 4)
			if h > sat then
				h = sat
			end
			hbhunger.hunger[clicker:get_player_name()] = h
			hbhunger.set_hunger_raw(clicker)
			minetest.sound_play("mindeca_eat", {
				pos = pos, gain = 0.7, max_hear_distance = 4})
		minetest.set_node(pos, {name = "mindeca:item_cook_pie_tin"})
		else local h = clicker:get_hp()
			h = math.min(h + 4, 20)
			clicker:set_hp(h)
			minetest.sound_play("mindeca_eat", {
				pos = pos, gain = 0.7, max_hear_distance = 4})
		minetest.set_node(pos, {name = "mindeca:item_cook_pie_tin"})
	end
end
})


-----
--Winter Fruits



-----
--Special
-----

-----
--Display

minetest.register_node("mindeca:display", {
	description = ("Display (White)" .. "\n" .. "A pure white display, meant for showing off objects." .. "\n" .. "\n" .. "Mindeca"),
	tiles = {"mindeca_0.png"},
	groups = {crumbly = 3,},
	light_source = 14,
	sounds = default.node_sound_sand_defaults(),
})


-----
--Clouds

minetest.register_node("mindeca:cloud", {
	description = ("Cloud" .. "\n" .. "\n" .. "(Mindeca)"),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
{-10/16, -10/16, -10/16, 10/16, 10/16, 10/16},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-8/16, -8/16, -8/16, 8/16, 8/16, 8/16},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-8/16, -8/16, -8/16, 8/16, 0, 8/16},
		},
	},
	tiles = {{name = "mindeca_cloud.png",
		animation = {
			type = "vertical_frames",
			aspect_w = 16,
			aspect_h = 16,
			length = 4,
		},
	}},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {oddly_breakable_by_hand = 3, cloud = 1, fall_damage_add_percent=-100},
	flags = "force_placement",
	sounds = default.node_sound_snow_defaults(),
})


-----
--Flower Nodes

minetest.register_node("mindeca:flowerhidden", {
	description = "Hidden Flower Segment\n\nHow did you get this?\n\nMindeca",
	inventory_image = "mindeca_0invis.png",
	wield_image = "mindeca_0invis.png",
	drawtype = "airlike",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	-- has to be walkable for falling nodes to stop falling.
	walkable = true,
	pointable = false,
	diggable = false,
	buildable_to = false,
	floodable = false,
	drop = "",
	groups = {not_in_creative_inventory = 1},
	on_blast = function() end,
	-- 1px block inside door hinge near node top
	collision_box = {
		type = "fixed",
		fixed = {-15/32, 13/32, -15/32, -13/32, 1/2, -13/32},
	},
})