--Biomes



-- Turn top layer dirt into grasses



--Soils



--Ores

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "mindeca:ore_copper",
	wherein        = "default:stone",
	clust_scarcity = 8 * 8 * 8,
	clust_num_ores = 8,
	clust_size     = 3,
	y_max          = -16,
	y_min          = -31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "mindeca:ore_tin",
	wherein        = "default:stone",
	clust_scarcity = 6 * 6 * 6,
	clust_num_ores = 8,
	clust_size     = 4,
	y_max          = -16,
	y_min          = -31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "mindeca:ore_ruby",
	wherein        = "default:stone",
	clust_scarcity = 10 * 10 * 10,
	clust_num_ores = 8,
	clust_size     = 3,
	y_max          = -48,
	y_min          = -31000,
})



--Special

minetest.register_ore({
	ore_type        = "blob",
	ore             = "mindeca:cloud",
	wherein         = {"air"},
	clust_scarcity  = 70.11 * 100 * 73,
	clust_size      = 25,
	y_max           = 500,
	y_min           = 300,
	noise_threshold = 0.3,
	noise_params    = {
		offset = 0.6,
		scale = 0.2,
		spread = {x = 5, y = 5000, z = 5},
		seed = -316,
		octaves = 1,
		persist = 0.7
	},
})