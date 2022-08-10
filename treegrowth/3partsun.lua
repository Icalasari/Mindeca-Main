-----
--'can grow partial' function

function mindeca.can_grow_partsun(pos)
	local node_under3 = minetest.get_node_or_nil({x = pos.x, y = pos.y - 1, z = pos.z})
	if not node_under3 then
		return false
	end
	if minetest.get_item_group(node_under3.name, "soil") == 0 then
		return false
	end
	local light_level3 = minetest.get_node_light(pos)
	if not light_level3 or light_level3 < 10 then
		return false
	end
	return true
end