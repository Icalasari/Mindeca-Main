local hbmod = minetest.global_exists("hbhunger")

-----
--Pies
-----

mindeca.mpies = {
	--{"Fruit",	"Hunger Boost",	"Effect (To Be Implemented once I figure out how"},
	--Spring
	--Summer
	{"peach",	4,		nil}
	--Autumn
	--Winter
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
	--Summer
	peach = {
		mpiedesc = "Peach\n\nA juicy peach for a quick snack.\n\nMindeca",
	},
	--Autumn
	--Winter
}

for i in ipairs(mindeca.trees) do
	local mpie = mindeca.mpies[i][1]
	local mhun = mindeca.mpies[i][2]
	local mpieseat = 1
minetest.register_node("mindeca:item_cook_pie_"..mpie..mpieseat, {
	description = mindeca.baking[mpies].mpiedesc,
	drawtype = "mesh",
	collision_box = {
		type = "fixed",
		fixed =	{-8/16, -8/16, -8/16, 8/16, -2/16, 8/16},
	},
	selection_box = {
		type = "fixed",
		fixed =	{-8/16, -8/16, -8/16, 8/16, -2/16, 8/16},
	},
	mesh = "mindeca_pie"..mpieseat..".obj",
	tiles = {"mindeca_cook_pie_"..mpie..".png"},
	inventory_image = "mindeca_item_cook_pie_tin.png",
	groups = {oddly_breakable_by_hand = 1},
	drop = "mindeca:item_cook_pie_"..mpie,
	sounds = default.node_sound_stone_defaults(),

--Right Click function thanks to Blockhead and TenPlus
	on_rightclick = function(pos, node, clicker)
		if hbmod then	
			local sat = tonumber(hbhunger.SAT_MAX)
			local h = tonumber(hbhunger.hunger[clicker:get_player_name()])
			h = math.min(h + mhun)
			if h > sat then
				h = sat
			end
			hbhunger.hunger[clicker:get_player_name()] = h
			hbhunger.set_hunger_raw(clicker)
			minetest.sound_play("mindeca_eat", {
				pos = pos, gain = 0.7, max_hear_distance = 4})
			mpieseat = math.min(mpieseat + 1)
				if mpieseat > 4 then
					minetest.set_node(pos, {name = "mindeca:item_cook_pie_tin"})
				else minetest.set_node(pos, {name = "mindeca:item_cook_pie_"..mpie..mpieseat})
			end
		else local h = clicker:get_hp()
			h = math.min(h + mhun, 20)
			clicker:set_hp(h)
			minetest.sound_play("mindeca_eat", {
				pos = pos, gain = 0.7, max_hear_distance = 4})
			mpieseat = math.min(mpieseat + 1)
				if mpieseat > 4 then
					minetest.set_node(pos, {name = "mindeca:item_cook_pie_tin"})
				else minetest.set_node(pos, {name = "mindeca:item_cook_pie_"..mpie..mpieseat})
			end
		end
	end
})