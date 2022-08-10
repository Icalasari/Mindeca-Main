--Picks

minetest.register_tool("mindeca:pick_copper", {
	description = "Copper Pickaxe\n\nMindeca",
	inventory_image = "mindeca_tool_pick_copper.png",
	tool_capabilities = {
		full_punch_interval = 1.15,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[2]=1.90, [3]=0.95}, uses=15, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("mindeca:pick_ruby", {
	description = ("Ruby Pickaxe"),
	inventory_image = "mindeca_tool_pick_ruby.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.4, [2]=1.2, [3]=0.60}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

--Crafting

minetest.register_craft({
    type = "shaped",
    output = "mindeca:pick_copper",
    recipe = {
        {"mindeca:item_copper_ingot", "mindeca:item_copper_ingot", "mindeca:item_copper_ingot"},
        {"", "group:stick", ""},
        {"", "group:stick", ""}
    }
})

minetest.register_craft({
    type = "shaped",
    output = "mindeca:pick_ruby",
    recipe = {
        {"mindeca:item_ruby", "mindeca:item_ruby", "mindeca:item_ruby"},
        {"", "group:stick", ""},
        {"", "group:stick", ""}
    }
})