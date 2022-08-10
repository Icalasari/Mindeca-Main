mindeca.trees = {
	--{"Tree",	"Log/Wood",	"Door",		"Fruit",	"AltLeaves",	"Stairs/Fence",	"Branch/Twig"},
	--Spring
	{"cherry",	"Cherry",	"cherry",	"cherry",	"cherry",	"Cherry",	nil},
	{"poplar",	nil,		nil,		nil,		nil,		nil,		"Poplar"},
	--Summer
	{"peach",	nil,		nil,		"peach",	nil,		nil,		"Peach"},
	{"plum",	nil,		nil,		"plum",		nil,		nil,		"Plum"},
	{"magnolia",	"Magnolia",	"magnolia",	nil,		nil,		"Magnolia",	nil},
	{"dogwood",	"Dogwood",	"dogwood",	nil,		nil,		"Dogwood",	nil},
	{"ash",		"Ash",		"ash",		nil,		nil,		"Ash",		nil},
	--Autumn
	{"oak",		"Oak",		"oak",		nil,		"oak",		"Oak",		nil},
	--Winter
	{"cedar",	"Cedar",	"cedar",	nil,		nil,		"Cedar",	nil}
}

--Terms

--trunk = log
--wood = planks, wood
--doord = door
--fruit = fruit
--leaf = leaves
--leafa = alternate leaves
--stair = stairs
--slab = slabs
--branchd = branch
--twigd = twig
--chartwig = charred twig

mindeca.treepart = {
	--Spring
	cherry = {
		trunk = "Cherry Tree Log\n\nA beautiful Cherry Tree log.\n\nMindeca",
		wood = "Cherry Wood\n\nSoft pink wood for building.\n\nMindeca",
		doord = "Cherry Wood Door\n\nA pink, traditional sliding door.\n\nMindeca",
		fruit = "Cherry\n\nA tasty cherry for a quick snack.\n\nMindeca",
		leaf = "Cherry Tree Leaves\n\nSoft leaves that promise pink blossoms.\n\nMindeca",
		leafa = "Cherry Tree Blossoms\n\nPink Cherry Blossoms that smell of spring.\n\nMindeca",
		stair = "Cherry Wood Stairs\n\nPink stairs with a faint cherry scent.\n\nMindeca",
		slab = "Cherry Wood Slab\n\nA pink slab with a faint cherry scent.\n\nMindeca"
	},
	poplar = {
		leaf = "Poplar Tree Leaves\n\nLeaves that are quite Pop-u-lar.\n\nMindeca",
		branchd = "Poplar Tree Branch\n\nA very Pop-u-lar branch.\n\nMindeca",
		twigd = "Poplar Tree Twig\n\nA very Pop-u-lar twig.\n\nMindeca",
		chartwig = "Poplar Tree Twig (Charred)\n\nA charred twig that got too Pop-u-lar.\n\nMindeca"
	},
	--Summer
	peach = {
		fruit = "Peach\n\nA juicy peach for a quick snack.\n\nMindeca",
		leaf = "Peach Tree Leaves\n\nLeaves with a nice, floral scent.\n\nMindeca",
		branchd = "Peach Branch\n\nA peachy-keen branch.\n\nMindeca",
		twigd = "Peach Twig\n\nA peachy-keen twig.\n\nMindeca",
		chartwig = "Peach Twig (Charred)\n\nA charred twig that things don't look peachy for.\n\nMindeca"
	},
	plum = {
		fruit = "Plum\n\nA juicy plum for a quick snack.\n\nMindeca",
		leaf = "Plum Tree Leaves\n\nLeaves with a sharp, floral scent.\n\nMindeca",
		branchd = "Plum Branch\n\nA branch plum full of spirit.\n\nMindeca",
		twigd = "Plum Twig\n\nA twig plum full of spirit.\n\nMindeca",
		chartwig = "Plum Twig (Charred)\n\nA charred twig plum full of ash.\n\nMindeca"
	},
	magnolia = {
		trunk = "Magnolia Tree Log\n\nA smooth log with a jungle flora scent.\n\nMindeca",
		wood = "Magnolia Wood\n\nPale wood useful for building.\n\nMindeca",
		doord = "Magnolia Door\n\nAn intricate door with floral designs.\n\nMindeca",
		leaf = "Magnolia Leaves\n\nLeaves with a floral, jungle scent.\n\nMindeca",
		stair = "Magnolia Wood Stairs\n\nPale stairs useful for building.\n\nMindeca",
		slab = "Magnolia Wood Slab\n\nA pale slab useful for building.\n\nMindeca"
	},
	dogwood = {
		trunk = "Dogwood Log\n\nA log of Dogwood. Its bark is worse than its bite.\n\nMindeca",
		wood = "Dogwood Wood\n\nDogwood Wood with which you would build.\n\nMindeca",
		doord = "Dogwood Door\n\nA simple door with a porthole window.\n\nMindeca",
		leaf = "Dogwood Leaves\n\nLeaves of a Dogwood tree.\n\nMindeca",
		stair = "Dogwood Stairs\n\nStairs of Dogwood. No bark, no bite.\n\nMindeca",
		slab = "Dogwood Slab\n\nA slab of Dogwood. No bark, no bite.\n\nMindeca"
	},
	ash = {
		trunk = "Ash Tree Log\n\nA log of Ash. No, not the burnt ash.\n\nMindeca",
		wood = "Ash Wood\n\nAshen wood useful for building.\n\nMindeca",
		doord = "Ash Door\n\nA somewhat rickety looking door.\n\nMindeca",
		leaf = "Ash Leaves\n\nLeaves that ash-k no questions.\n\nMindeca",
		stair = "Ash Wood Stairs\n\nAshen stairs useful for building.\n\nMindeca",
		slab = "Ash Wood Slab\n\nAn ashen slab useful for building.\n\nMindeca"
	},
	--Autumn
	oak = {
		trunk = "Oak Tree Log\n\nA sturdy Oak log.\n\nMindeca",
		wood = "Oak Wood\n\nSturdy Oak wood for building.\n\nMindeca",
		doord = "Oak Door\n\nA solid, sturdy door of Oak.\n\nMindeca",
		leaf = "Oak Tree Leaves\n\nSturdy leaves that promise autumn foliage.\n\nMindeca",
		leafa = "Oak Tree Leaves (Autumn)\n\nColourful Oak Leaves that smell of autumn.\n\nMindeca",
		stair = "Oak Wood Stairs\n\nSturdy stairs made of Oak.\n\nMindeca",
		slab = "Oak Wood Slab\n\nA sturdy slab made of Oak.\n\nMindeca"
	},
	--Winter
	cedar = {
		trunk = "White Cedar Log\n\nA log of White Cedar. Very multipurpose.\n\nMindeca",
		wood = "White Cedar Wood\n\nWood of the versatile White Cedar.\n\nMindeca",
		doord = "White Cedar Door\n\nSee? Door!\n\nMindeca",
		leaf = "White Cedar Leaves\n\nLeaves with a dainty scent. Good as tea.\n\nMindeca",
		stair = "White Cedar Stairs\n\nStairs of versatile White Cedar wood.\n\nMindeca",
		slab = "White Cedar Slab\n\nA slab of versatile White Cedar wood.\n\nMindeca"
	}
}

for i in ipairs(mindeca.trees) do
	local minetree = mindeca.trees[i][1]
	local trunk = mindeca.trees[i][2]
	local doora = mindeca.trees[i][3]
	local fruit = mindeca.trees[i][4]
	local leafalt = mindeca.trees[i][5]
	local stair = mindeca.trees[i][6]
	local minetwig = mindeca.trees[i][7]

	minetest.register_node("mindeca:tree_"..minetree.."_leaves", {
		description = mindeca.treepart[minetree].leaf,
		drawtype = "allfaces_optional",
		waving = 1,
		tiles = {"mindeca_tree_"..minetree.."_leaves.png"},
		special_tiles = {"mindeca_tree_"..minetree.."_leaves_s.png"},
		paramtype = "light",
		is_ground_content = false,
		groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
		drop = {
			max_items = 1,
			items = {
				{
					-- player will get sapling with 1/20 chance
					items = {"mindeca:tree_"..minetree.."_sapling"},
					rarity = 20,
				},
				{
					-- player will get leaves only if he get no saplings,
					-- this is because max_items is 1
					items = {"mindeca:tree_"..minetree.."_leaves"},
				}
			}
		},
		sounds = default.node_sound_leaves_defaults(),
	})

	local trunkname = nil
	if trunk then
		minetest.register_node("mindeca:tree_"..minetree.."_log", {
			description = mindeca.treepart[minetree].trunk,
			tiles = {
				"mindeca_tree_"..minetree.."_trunk_top.png",
				"mindeca_tree_"..minetree.."_trunk_top.png",
				"mindeca_tree_"..minetree.."_trunk.png",
				},
			paramtype2 = "facedir",
			is_ground_content = false,
			groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
			sounds = default.node_sound_wood_defaults(),
			on_place = minetest.rotate_node
		})
		minetest.register_node("mindeca:wood_tree_"..minetree, {
			description = mindeca.treepart[minetree].wood,
			tiles = {"mindeca_wood_tree_"..minetree..".png"},
			is_ground_content = false,
			groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3, wood = 1},
			flags = "force_placement",
			sounds = default.node_sound_wood_defaults(),
		})
		default.register_leafdecay({
			trunks = {"mindeca:tree_"..minetree.."_log"},
			leaves = {"mindeca:tree_"..minetree.."_leaves"},
			radius = 4,
		})
	end

	local leafaltname = nil
	if leafalt then
		minetest.register_node("mindeca:tree_"..leafalt.."_a_leaves", {
			description = mindeca.treepart[minetree].leafa,
			drawtype = "allfaces_optional",
			waving = 1,
			tiles = {"mindeca_tree_"..leafalt.."_a_leaves.png"},
			special_tiles = {"mindeca_tree_"..leafalt.."_a_leaves_s.png"},
			paramtype = "light",
			is_ground_content = false,
			groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
			drop = {
				max_items = 1,
				items = {
					{
						-- player will get sapling with 1/20 chance
						items = {"mindeca:tree_"..minetree.."_sapling"},
						rarity = 20,
					},
					{
						-- player will get drop with 1/10 chance
						items = {"mindeca:item_fruit_"..minetree},
						rarity = 10,
					},
					{
						-- player will get leaves only if he get no saplings,
						-- this is because max_items is 1
						items = {"mindeca:tree_"..minetree.."_a_leaves"},
					}
				}
			},
			sounds = default.node_sound_leaves_defaults(),
		})
	end

	local dooraname = nil
	if doora then
		doors.register("mindeca:door_"..minetree, {
			tiles = {{ name = "mindeca_door_"..minetree..".png", backface_culling = true }},
			description = mindeca.treepart[minetree].doord,
			inventory_image = "mindeca_item_door_"..minetree..".png",
			groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
			gain_open = 0.06,
			gain_close = 0.13,
			recipe = {
				{"mindeca:wood_tree_"..minetree, "mindeca:wood_tree_"..minetree},
				{"mindeca:wood_tree_"..minetree, "mindeca:wood_tree_"..minetree},
				{"mindeca:wood_tree_"..minetree, "mindeca:wood_tree_"..minetree},
			}
		})
	end

	local stairname = nil
	if stair then
		stairs.register_stair_and_slab(
			"mindeca_wood_tree_"..minetree,
			"mindeca:wood_tree_"..minetree,
			{ snappy=1, choppy=2, oddly_breakable_by_hand=2, flammable=3 },
			{ "mindeca_wood_tree_"..minetree..".png" },
			mindeca.treepart[minetree].stair,
			mindeca.treepart[minetree].slab,
			default.node_sound_wood_defaults()
		)
	end

	local fruitname = nil
	if fruit then
		minetest.register_node("mindeca:item_fruit_"..fruit, {
			description = mindeca.treepart[minetree].fruit,
			drawtype = "plantlike",
			tiles = {"mindeca_item_fruit_"..minetree..".png"},
			inventory_image = "mindeca_item_fruit_"..minetree..".png",
			paramtype = "light",
			sunlight_propagates = true,
			walkable = false,
			is_ground_content = false,
			selection_box = {
				type = "fixed",
				fixed = {-3 / 16, -7 / 16, -3 / 16, 3 / 16, 4 / 16, 3 / 16}
			},
			groups = {fleshy = 3, dig_immediate = 3, flammable = 2, leafdecay = 3, leafdecay_drop = 1, food_apple = 1},
			on_use = minetest.item_eat(2),
			sounds = default.node_sound_leaves_defaults(),
			after_place_node = function(pos, placer, itemstack)
				minetest.set_node(pos, {name = "mindeca:item_fruit_"..minetree, param2 = 1})
			end,
		})
	end

	local minetwigname = nil
	if minetwig then
		minetest.register_node("mindeca:tree_"..minetree.."_branch", {
			description = mindeca.treepart[minetree].branchd,
			drawtype = "nodebox",
			connects_to = {"group:tree", "group:leaves", "group:wood", "group:soil"},
			node_box = {
				type = "connected",
				fixed = {-4/16, -4/16, -4/16, 4/16, 4/16, 4/16},
				connect_top = {-4/16, -4/16, -4/16, 4/16, 8/16, 4/16},
				connect_bottom = {-4/16, -8/16, -4/16, 4/16, 4/16, 4/16},
				connect_front = {-4/16, -4/16, -8/16, 4/16, 4/16, 4/16},
				connect_left = {-8/16, -4/16, -4/16, 4/16, 4/16, 4/16},
				connect_back = {-4/16, -4/16, -4/16, 4/16, 4/16, 8/16},
				connect_right = {-4/16, -4/16, -4/16, 8/16, 4/16, 4/16},
				disconnected = {-4/16, -8/16, -4/16, 4/16, 8/16, 4/16},
				},
			tiles = {"mindeca_tree_"..minetree.."_trunk.png"},
			paramtype = "light",
			paramtype2 = "facedir",
			is_ground_content = false,
			sunlight_propagates = true,
			groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
			flags = "force_placement",
			sounds = default.node_sound_wood_defaults(),
			on_place = minetest.rotate_node
		})

		minetest.register_node("mindeca:tree_"..minetree.."_twig", {
			description = mindeca.treepart[minetree].twigd,
			drawtype = "nodebox",
			connects_to = {"group:tree", "group:leaves", "group:wood", "group:twig"},
			node_box = {
				type = "connected",
				fixed = {-2/16, -2/16, -2/16, 2/16, 2/16, 2/16},
				connect_top = {-2/16, -2/16, -2/16, 2/16, 8/16, 2/16},
				connect_bottom = {-2/16, -8/16, -2/16, 2/16, 2/16, 2/16},
				connect_front = {-2/16, -2/16, -8/16, 2/16, 2/16, 2/16},
				connect_left = {-8/16, -2/16, -2/16, 2/16, 2/16, 2/16},
				connect_back = {-2/16, -2/16, -2/16, 2/16, 2/16, 8/16},
				connect_right = {-2/16, -2/16, -2/16, 8/16, 2/16, 2/16},
				disconnected = {-2/16, -8/16, -2/16, 2/16, 8/16, 2/16},
			},
			tiles = {"mindeca_tree_"..minetree.."_trunk.png"},
			paramtype = "light",
			paramtype2 = "facedir",
			is_ground_content = false,
			groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 3, flammable = 3},
			flags = "force_placement",
			sounds = default.node_sound_wood_defaults(),
			on_place = minetest.rotate_node
		})

		minetest.register_node("mindeca:tree_"..minetree.."_twig_charred", {
			description = mindeca.treepart[minetree].chartwig,
			drawtype = "nodebox",
			connects_to = {"group:tree", "group:leaves"},
			node_box = {
				type = "fixed",
				fixed = {-2/16, -8/16, -2/16, 2/16, 8/16, 2/16},
				},
			tiles = {
				"mindeca_s_char_tip.png",
				"mindeca_tree_"..minetree.."_trunk.png",
				{name = "mindeca_tree_"..minetree.."_trunk.png^mindeca_overlay_charred.png",}
				},
			paramtype = "light",
			paramtype2 = "facedir",
			is_ground_content = false,
			groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 3, flammable = 3},
			flags = "force_placement",
			sounds = default.node_sound_wood_defaults(),
			on_place = minetest.rotate_node
		})
	end
end

-----
--Decay
-----

--Spring

default.register_leafdecay({
	trunks = {"mindeca:tree_cherry_log"},
	leaves = {"mindeca:tree_cherry_leaves"},
	radius = 4,
})

--

--

--

default.register_leafdecay({
	trunks = {"mindeca:tree_poplar_twig", "mindeca:tree_poplar_branch"},
	leaves = {"mindeca:tree_poplar_leaves"},
	radius = 4,
})


--Summer

default.register_leafdecay({
	trunks = {"mindeca:tree_peach_twig", "mindeca:tree_peach_branch"},
	leaves = {"mindeca:tree_peach_leaves"},
	radius = 4,
})

default.register_leafdecay({
	trunks = {"mindeca:tree_plum_twig", "mindeca:tree_plum_branch"},
	leaves = {"mindeca:tree_plum_leaves"},
	radius = 4,
})

default.register_leafdecay({
	trunks = {"mindeca:tree_magnolia_log"},
	leaves = {"mindeca:tree_magnolia_leaves"},
	radius = 4,
})

default.register_leafdecay({
	trunks = {"mindeca:tree_dogwood_log"},
	leaves = {"mindeca:tree_dogwood_leaves"},
	radius = 4,
})

default.register_leafdecay({
	trunks = {"mindeca:tree_ash_log"},
	leaves = {"mindeca:tree_ash_leaves"},
	radius = 4,
})


--Autumn

--

--

--

--

default.register_leafdecay({
	trunks = {"mindeca:tree_oak_log"},
	leaves = {"mindeca:tree_oak_leaves", "mindeca:tree_oak_a_leaves"},
	radius = 4,
})


--Winter

--

--

--

--

default.register_leafdecay({
	trunks = {"mindeca:tree_cedar_log"},
	leaves = {"mindeca:tree_cedar_leaves"},
	radius = 4,
})