-----
--'can grow spirit' function

function mindeca.can_grow_spirit(pos)
	local node_under2 = minetest.get_node_or_nil({x = pos.x, y = pos.y - 1, z = pos.z})
	if not node_under2 then
		return false
	end
	if minetest.get_item_group(node_under2.name, "soil") == 0 then
		return false
	end
	local light_level2 = minetest.get_node_light(pos)
	if not light_level2 or light_level < 4 then
		return false
	end
	return true
end