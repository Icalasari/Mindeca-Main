local function grass_to_dirt(pos1, pos2)
    local c_dirt  = minetest.get_content_id("default:dirt")
    local c_grass = minetest.get_content_id("default:dirt_with_grass")

    -- Read data into LVM
    local vm = minetest.get_voxel_manip()
    local emin, emax = vm:read_from_map(pos1, pos2)
    local a = VoxelArea:new{
        MinEdge = emin,
        MaxEdge = emax
    }
    local data = vm:get_data()

    -- Modify data
    for z = pos1.z, pos2.z do
        for y = pos1.y, pos2.y do
            for x = pos1.x, pos2.x do
                local vi = a:index(x, y, z)
                if data[vi] == c_grass then
                    data[vi] = c_dirt
		replace_in_area(default:dirt_with_grass, default:dirt, pos1, pos2)
                end
            end
        end
    end

    -- Write data
    vm:set_data(data)
    vm:write_to_map(true)
end