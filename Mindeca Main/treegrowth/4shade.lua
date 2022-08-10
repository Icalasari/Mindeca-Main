-----
--'can grow shade' function

function mindeca.can_grow_shade(pos)
	local node_under4 = minetest.get_node_or_nil({x = pos.x, y = pos.y - 1, z = pos.z})
	if not node_under4 then
		return false
	end
	if minetest.get_item_group(node_under4.name, "soil") == 0 then
		return false
	end
	local light_level4 = minetest.get_node_light(pos)
	if not light_level4 or light_level4 < 8 then
		return false
	end
	return true
end