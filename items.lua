--Ore Items

minetest.register_craftitem("mindeca:item_copper", {
	description = "Copper Nugget\n\nA glistening nugget of copper.\n\nMindeca",
    inventory_image = "mindeca_item_ore_copper.png"
})

minetest.register_craftitem("mindeca:item_tin", {
	description = "Tin Nugget\n\nA soft nugget of tin.\n\nMindeca",
    inventory_image = "mindeca_item_ore_copper.png"
})

minetest.register_craftitem("mindeca:item_ruby", {
	description = ("Ruby" .. "\n" .. "A sparkling ruby." .. "\n" .. "\n" .. "Mindeca"),
    inventory_image = "mindeca_item_ore_ruby.png"
})


-----
--Food
-----

--Berries

minetest.register_node("mindeca:item_fruit_raspberry", {
	description = "Raspberry\n\nA tart raspberry that is a good snack.\n\nMindeca",
	drawtype = "plantlike",
	tiles = {"mindeca_item_fruit_brasp.png"},
	inventory_image = "mindeca_item_fruit_brasp.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-3 / 16, -7 / 16, -3 / 16, 3 / 16, 4 / 16, 3 / 16}
	},
	groups = {fleshy = 3, dig_immediate = 3, flammable = 2, leafdecay = 3, leafdecay_drop = 1, food_apple = 1},
	on_use = minetest.item_eat(1),
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = function(pos, placer, itemstack)
		minetest.set_node(pos, {name = "mindeca:item_fruit_brasp", param2 = 1})
	end,
})

--Melons/Gourds


-----
--Autumn

minetest.register_node("mindeca:item_fruit_oak", {
	description = "Acorn\n\nA nutty acorn with a nutty taste.\n\nMindeca",
	drawtype = "plantlike",
	tiles = {"mindeca_item_fruit_acorn.png"},
	inventory_image = "mindeca_item_fruit_acorn.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-3 / 16, -7 / 16, -3 / 16, 3 / 16, 4 / 16, 3 / 16}
	},
	groups = {fleshy = 3, dig_immediate = 3, flammable = 2, leafdecay = 3, leafdecay_drop = 1, food_apple = 1},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = function(pos, placer, itemstack)
		minetest.set_node(pos, {name = "mindeca:item_fruit_oak", param2 = 1})
	end,
})



--Cooking Supplies





-----
--Crafting
-----


-----
--Tree Based

--Spring

minetest.register_craft({
	output = "mindeca:wood_tree_cherry 4",
	recipe = {
		{"mindeca:tree_cherry_log"},
	}
})

minetest.register_craft({
    output = "mindeca:tree_poplar_twig 4",
    recipe = {
        {"mindeca:tree_poplar_branch"},
    }
})


--Summer

minetest.register_craft({
    output = "mindeca:tree_peach_twig 4",
    recipe = {
        {"mindeca:tree_peach_branch"},
    }
})

minetest.register_craft({
    output = "mindeca:tree_plum_twig 4",
    recipe = {
        {"mindeca:tree_plum_branch"},
    }
})

minetest.register_craft({
	output = "mindeca:wood_tree_magnolia 4",
	recipe = {
		{"mindeca:tree_magnolia_log"},
	}
})

minetest.register_craft({
	output = "mindeca:wood_tree_dogwood 4",
	recipe = {
		{"mindeca:tree_dogwood_log"},
	}
})

minetest.register_craft({
	output = "mindeca:wood_tree_ash 4",
	recipe = {
		{"mindeca:tree_ash_log"},
	}
})


--Autumn

minetest.register_craft({
	output = "mindeca:wood_tree_oak 4",
	recipe = {
		{"mindeca:tree_oak_log"},
	}
})


--Winter

minetest.register_craft({
	output = "mindeca:wood_tree_cedar 4",
	recipe = {
		{"mindeca:tree_cedar_log"},
	}
})


--Branches and Twigs

minetest.register_craft({
    output = "default:stick",
    recipe = {
        {"groups:twig"},
    }
})


--Saplings

minetest.register_craft({
    type = "shaped",
    output = "mindeca:tree_crystal_sapling_s",
    recipe = {
        {"mindeca:tree_crystal_sapling", "mindeca:tree_crystal_sapling"},
        {"mindeca:tree_crystal_sapling", "mindeca:tree_crystal_sapling"}
    }
})

minetest.register_craft({
    type = "shaped",
    output = "mindeca:tree_crystal_sapling_m",
    recipe = {
        {"mindeca:tree_crystal_sapling_s", "mindeca:tree_crystal_sapling_s"},
        {"mindeca:tree_crystal_sapling_s", "mindeca:tree_crystal_sapling_s"}
    }
})

minetest.register_craft({
    type = "shaped",
    output = "mindeca:tree_crystal_sapling_l",
    recipe = {
        {"mindeca:tree_crystal_sapling_m", "mindeca:tree_crystal_sapling_m"},
        {"mindeca:tree_crystal_sapling_m", "mindeca:tree_crystal_sapling_m"}
    }
})


-----
--Traps

minetest.register_craft({
    type = "shaped",
    output = "mindeca:trap_oak_leaves 4",
    recipe = {
        {"farming:string", "default:stick", "farming:string"},
        {"default:stick", "mindeca:tree_oak_leaves_au", "default:stick"},
        {"farming:string", "default:stick", "farming:string"}
    }
})


--Cooking Supplies

minetest.register_craft({
    type = "shaped",
    output = "mindeca:item_cook_pie_tin 4",
    recipe = {
        {"mindeca:item_tin_ingot", "", "mindeca:item_tin_ingot"},
        {"", "mindeca:item_tin_ingot", ""}
    }
})



-----
--Cooking
-----

--Charred

minetest.register_craft({
    type = "cooking",
    output = "mindeca:plant_peach_twig_charred",
    recipe = "mindeca:plant_peach_twig",
})


--Ingots

minetest.register_craftitem("mindeca:item_copper_ingot", {
	description = "Copper Ingot\n\nAn ingot of quality copper.\n\nMindeca",
    inventory_image = "mindeca_item_ingot_copper.png"
})

minetest.register_craft({
    type = "cooking",
    output = "mindeca:item_copper_ingot",
    recipe = "mindeca:item_copper",
})

minetest.register_craftitem("mindeca:item_tin_ingot", {
	description = "Tin Ingot\n\nAn ingot of quality tin.\n\nMindeca",
    inventory_image = "mindeca_item_ingot_tin.png"
})

minetest.register_craft({
    type = "cooking",
    output = "mindeca:item_tin_ingot",
    recipe = "mindeca:item_tin",
})