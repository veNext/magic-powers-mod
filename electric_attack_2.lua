electric_attack_2 = {
	{"magic_powers:electric_attack_2", "magic_powers:electric_attack_2_entity"},
}

 shoot_electric_attack_2 = function(itemstack, player)
	for _,electric_attack_2s in ipairs(electric_attack_2) do
			local playerpos = player:getpos()
			local obj = minetest.add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, electric_attack_2s[2])
			local dir = player:get_look_dir()
			obj:setvelocity({x=dir.x*50, y=dir.y*50, z=dir.z*50})
			obj:setacceleration({x=dir.x, y=dir.y, z=dir.z})
			obj:setyaw(player:get_look_yaw()+math.pi)
			if obj:get_luaentity().player == "" then
				obj:get_luaentity().player = player
			end
			obj:get_luaentity().node = player:get_inventory():get_stack("main", 1):get_name()
			return true
		end
	
	return false
end

local electric_attack_2_blue={
	physical = false,
	timer=0,
	visual = "sprite",
	visual_size = {x=0.5, y=0.5},
	textures = {"electric_attack_2.png"},
	lastpos={},
	collisionbox = {-0.1,-0.1,-0.1,0.1,0.1,0.1},
}

electric_attack_2_blue.on_step = function(self, dtime)
	self.timer=self.timer+dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	

	
	if self.lastpos.x~=nil then
		if node.name ~= "air" then
		 minetest.set_node({x=pos.x, y=pos.y + 20, z=pos.z}, {name="magic_powers:electric_attack_2_node"})
	 
	  	self.object:remove()
	   	end
		end
	self.lastpos={x=pos.x, y=pos.y, z=pos.z}
end

minetest.register_entity("magic_powers:electric_attack_2_entity", electric_attack_2_blue)
--next