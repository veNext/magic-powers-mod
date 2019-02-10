
minetest.register_node("magic_powers:electric_attack_2_node", {
description = "electric attack 2 node",
drawtype = "glasslike",
tiles = {
		{
			name = "electric_attack_2_node.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1
			},
		},
	},
	sunlight_propagates = true,
	paramtype = "light",
	light_source = 13,
	walkable = false,
	buildable_to = true,
	sunlight_propagates = true,
	damage_per_second = 10,
	groups = {not_in_creative_inventory = 1},
on_construct = function(pos)
minetest.get_node_timer(pos):start(1)


    if minetest.get_node(vector.add(pos, vector.new(0, -1, 0))).name ~= "air" then 
return false end minetest.set_node({x = pos.x, y = pos.y - 1, z = pos.z}, {name = "magic_powers:electric_attack_2_node"}) 


		
	end,
	on_timer = function(pos, elapsed)
		minetest.remove_node(pos)
	end,
})

minetest.register_node("magic_powers:electric_attack_3_node", {
description = "electric attack 3 node",
drawtype = "glasslike",
tiles = {
		{
			name = "electric_attack_2_node.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1
			},
		},
	},
	sunlight_propagates = true,
	paramtype = "light",
	light_source = 13,
	walkable = false,
	buildable_to = true,
	sunlight_propagates = true,
	damage_per_second = 10,
	groups = {not_in_creative_inventory = 1},
on_construct = function(pos)
minetest.get_node_timer(pos):start(1)
	end,
	on_timer = function(pos, elapsed)
		minetest.remove_node(pos)
	end,
})

