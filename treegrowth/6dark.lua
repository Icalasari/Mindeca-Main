-----
--'can grow dark' function

function mindeca.can_grow_dark(pos)
	local node_under2 = minetest.get_node_or_nil({x = pos.x, y = pos.y - 1, z = pos.z})
	if not node_under2 then
		return false
	end
	if minetest.get_item_group(node_under2.name, "soil") == 0 then
		return false
	end
	return true
end