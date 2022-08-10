-----
--Geographic
-----

--Ponds




--Deserts





--Oceans



-----
--Plants
-----


---
--Grasses




---
--Flowers





-----
--Tree Generation
-----

--Cherry Tree

minetest.register_decoration({
	name = "mindeca:tree_cherry",
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.0004,
	biomes = {"deciduous_forest"},
	y_max = 31000,
	y_min = -1,
	schematic = "schematics/mindeca_tree_cherry.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


--Magnolia Tree

minetest.register_decoration({
	name = "mindeca:tree_magnolia",
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass", "default:dirt_with_rainforest_litter"},
	sidelen = 16,
	fill_ratio = 0.0004,
	biomes = {"deciduous_forest", "rainforest"},
	y_max = 31000,
	y_min = -1,
	schematic = "schematics/mindeca_tree_magnolia.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


--Peach Tree

minetest.register_decoration({
	name = "mindeca:tree_peach",
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.0005,
	biomes = {"deciduous_forest"},
	y_max = 31000,
	y_min = -1,
	schematic = "schematics/mindeca_tree_peach.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})







-----
--Bushes
-----





-----
--Cactus
-----

