
electric_power = 0

minetest.register_tool("magic_powers:electric_book", {
	description = "electric book",
	inventory_image = "book1.0.png",
wield_scale = {x=1, y=1, z=1},
    stack_max = 1,
    
		on_use = function(itemstack, user, pointed_thing)
	   if	mps > 4 then
	   if electric_power == 0 then
		if shoot_electric_attack_1(item, user, pointed_thing) then
		
			mps = mps - 5
			end
		end
	end
	
	
		if mps > 19 then
		if electric_power == 1 then
		if shoot_electric_attack_2(item, user, pointed_thing) then
			mps = mps - 20
			end
		end
	end
	
	
		if mps > 29 then
		if electric_power == 2 then
		if shoot_electric_attack_3(item, user, pointed_thing) then
			mps = mps - 30
			
			end
		end
	end
		
		
		return itemstack
	end,
	
	
	on_place = function(itemstack, user, pointed_thing) if mps > 4 then
			local formspec = "size[8,8]label[3.5,0;Powers]image_button[3.5,3.5;1,1;electric_ack_button.png;electric_ack1;]image_button[6,3.5;1,1;electric_ack_button2.png;electric_ack2;]"
			minetest.show_formspec(user:get_player_name(), "magic_powers:electric_book_formspec", formspec)
		end
		return itemstack
	end,
			
	--image_button[1,3.5;1,1;electric_ack_button2.png;electric_ack3;]
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
    if formname == "magic_powers:electric_book_formspec" then
        if fields.electric_ack1 then
            electric_power = 0
            
            
        end
    end
    
    if formname == "magic_powers:electric_book_formspec" then
        if fields.electric_ack2 then
            electric_power = 1
            
            
        end
    end
    
        if formname == "magic_powers:electric_book_formspec" then
        if fields.electric_ack3 then
            electric_power = 2
            
            
        end
    end
end)
