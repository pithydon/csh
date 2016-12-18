csh = {}

minetest.register_craftitem("csh:grinder", {
	description = "Disc Grinder",
	inventory_image = "csh_grinder.png",
	wield_image = "csh_grinder.png"
})

minetest.register_craft({
	output = "csh:grinder",
	recipe = {
		{"default:sandstone"},
		{"screwdriver:screwdriver"}
	}
})

csh.register_material = function(craftitem, def)
	local tiles = {}
	for i,v in ipairs(def.tiles) do
		if type(v) == "string" then
			tiles[i] = {name = v, backface_culling = true}
		elseif v.backface_culling == nil then
			local texture = table.copy(v)
			texture.backface_culling = true
			tiles[i] = texture
		else
			tiles[i] = v
		end
	end

	minetest.register_node(":csh:cylinder_"..def.subname, {
		description = def.description.." Pillar",
		drawtype = "mesh",
		paramtype = "light",
		paramtype2 = "facedir",
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end
			local under = pointed_thing.under
			local above = pointed_thing.above
			local param2
			if under.y == above.y then
				local placer_pos = placer:getpos()
				local dir = vector.direction(placer_pos, above)
				local param = minetest.dir_to_facedir(dir)
				if param == 0 then param2 = 8
				elseif param == 1 then param2 = 16
				elseif param == 2 then param2 = 4
				elseif param == 3 then param2 = 12
				end
			elseif under.y > above.y then
				param2 = 20
			else
				param2 = 0
			end
			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
		mesh = "csh_cylinder.obj",
		tiles = tiles,
		light_source = def.light_source,
		groups = def.groups,
		sounds = def.sounds
	})

	minetest.register_node(":csh:cylinderhalf_"..def.subname, {
		description = def.description.." Pillar Slab",
		drawtype = "mesh",
		paramtype = "light",
		paramtype2 = "facedir",
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end
			local under = pointed_thing.under
			local above = pointed_thing.above
			local param2
			if under.y == above.y then
				local placer_pos = placer:getpos()
				local dir = vector.direction(placer_pos, above)
				local param = minetest.dir_to_facedir(dir)
				if param == 0 then param2 = 8
				elseif param == 1 then param2 = 16
				elseif param == 2 then param2 = 4
				elseif param == 3 then param2 = 12
				end
			elseif under.y > above.y then
				param2 = 20
			else
				param2 = 0
			end
			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
		mesh = "csh_cylinderhalf.obj",
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5}
		},
		collision_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5}
		},
		tiles = tiles,
		light_source = def.light_source,
		groups = def.groups,
		sounds = def.sounds
	})

	minetest.register_node(":csh:cylindertwo3rd_"..def.subname, {
		description = def.description.." Small Pillar",
		drawtype = "mesh",
		paramtype = "light",
		paramtype2 = "facedir",
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end
			local under = pointed_thing.under
			local above = pointed_thing.above
			local param2
			if under.y == above.y then
				local placer_pos = placer:getpos()
				local dir = vector.direction(placer_pos, above)
				local param = minetest.dir_to_facedir(dir)
				if param == 0 then param2 = 8
				elseif param == 1 then param2 = 16
				elseif param == 2 then param2 = 4
				elseif param == 3 then param2 = 12
				end
			elseif under.y > above.y then
				param2 = 20
			else
				param2 = 0
			end
			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
		mesh = "csh_cylindertwo3rd.obj",
		selection_box = {
			type = "fixed",
			fixed = {-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}
		},
		collision_box = {
			type = "fixed",
			fixed = {-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}
		},
		tiles = tiles,
		light_source = def.light_source,
		groups = def.groups,
		sounds = def.sounds
	})

	minetest.register_node(":csh:cylinder3rd_"..def.subname, {
		description = def.description.." Rod",
		drawtype = "mesh",
		paramtype = "light",
		paramtype2 = "facedir",
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end
			local under = pointed_thing.under
			local above = pointed_thing.above
			local param2
			if under.y == above.y then
				local placer_pos = placer:getpos()
				local dir = vector.direction(placer_pos, above)
				local param = minetest.dir_to_facedir(dir)
				if param == 0 then param2 = 8
				elseif param == 1 then param2 = 16
				elseif param == 2 then param2 = 4
				elseif param == 3 then param2 = 12
				end
			elseif under.y > above.y then
				param2 = 20
			else
				param2 = 0
			end
			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
		mesh = "csh_cylinder3rd.obj",
		selection_box = {
			type = "fixed",
			fixed = {-0.1875, -0.5, -0.1875, 0.1875, 0.5, 0.1875}
		},
		collision_box = {
			type = "fixed",
			fixed = {-0.1875, -0.5, -0.1875, 0.1875, 0.5, 0.1875}
		},
		tiles = tiles,
		light_source = def.light_source,
		groups = def.groups,
		sounds = def.sounds
	})

	minetest.register_craft({
		type = "shapeless",
		output = "csh:cylinder_"..def.subname,
		recipe = {"csh:grinder", craftitem},
		replacements = {
			{"csh:grinder", "csh:grinder"}
		}
	})

	minetest.register_craft({
		output = "csh:cylinderhalf_"..def.subname.." 3",
		recipe = {{"csh:cylinder_"..def.subname, "csh:cylinder_"..def.subname, "csh:cylinder_"..def.subname}}
	})

	minetest.register_craft({
		type = "shapeless",
		output = "csh:cylindertwo3rd_"..def.subname,
		recipe = {"csh:grinder", "csh:cylinder_"..def.subname},
		replacements = {
			{"csh:grinder", "csh:grinder"}
		}
	})

	minetest.register_craft({
		type = "shapeless",
		output = "csh:cylinder3rd_"..def.subname,
		recipe = {"csh:grinder", "csh:cylindertwo3rd_"..def.subname},
		replacements = {
			{"csh:grinder", "csh:grinder"}
		}
	})
end

csh.from_node = function(name)
	local node_def = minetest.registered_nodes[name]
	local subname = name:split(':')[2]
	local tiles
	if node_def.tiles[6] then
		tiles = table.copy(node_def.tiles)
		tiles[5] = tiles[6]
	else
		tiles = node_def.tiles
	end
	csh.register_material(name, {
		subname = subname,
		description = node_def.description,
		tiles = tiles,
		light_source = node_def.light_source,
		groups = node_def.groups,
		sounds = node_def.sounds
	})
end

local default_nodes = {
	"default:wood",
	"default:junglewood",
	"default:pine_wood",
	"default:acacia_wood",
	"default:aspen_wood",
	"default:stone",
	"default:cobble",
	"default:stonebrick",
	"default:desert_stone",
	"default:desert_cobble",
	"default:desert_stonebrick",
	"default:sandstone",
	"default:sandstonebrick",
	"default:obsidian",
	"default:obsidianbrick",
	"default:brick",
	"default:steelblock",
	"default:copperblock",
	"default:bronzeblock",
	"default:goldblock",
	"default:tree",
	"default:jungletree",
	"default:pine_tree",
	"default:acacia_tree",
	"default:aspen_tree"
}

for _,v in ipairs(default_nodes) do
	csh.from_node(v)
end
