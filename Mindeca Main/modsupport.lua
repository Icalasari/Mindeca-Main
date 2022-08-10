--Hunger bar

--function hbhunger.register_food(name, hunger_change, replace_with_item, poison, heal, sound)
if minetest.get_modpath("hbhunger") ~= nil then
	if minetest.get_modpath("mindeca_sb") ~= nil then
		hbhunger.register_food("mindeca_sb:food_berries_spiritus", 1, nil, nil, 1)
	end
end