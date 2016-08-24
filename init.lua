csh = {}

csh.register_material = function(def)
	minetest.register_node(":csh:cylinder_"..def.subname, {
		description = def.description.." Pillar",
		drawtype = "mesh",
		paramtype = "light",
		paramtype2 = "facedir",
		place_param2 = 0,
		mesh = "csh_cylinder.obj",
		tiles = def.tiles,
		groups = def.groups,
		sounds = def.sounds
	})

	minetest.register_node(":csh:cylindertwo3rd_"..def.subname, {
		description = def.description.." Small Pillar",
		drawtype = "mesh",
		paramtype = "light",
		paramtype2 = "facedir",
		place_param2 = 0,
		mesh = "csh_cylindertwo3rd.obj",
		selection_box = {
			type = "fixed",
			fixed = {-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}
		},
		collision_box = {
			type = "fixed",
			fixed = {-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}
		},
		tiles = def.tiles,
		groups = def.groups,
		sounds = def.sounds
	})

	minetest.register_node(":csh:cylinder3rd_"..def.subname, {
		description = def.description.." Rod",
		drawtype = "mesh",
		paramtype = "light",
		paramtype2 = "facedir",
		place_param2 = 0,
		mesh = "csh_cylinder3rd.obj",
		selection_box = {
			type = "fixed",
			fixed = {-0.1875, -0.5, -0.1875, 0.1875, 0.5, 0.1875}
		},
		collision_box = {
			type = "fixed",
			fixed = {-0.1875, -0.5, -0.1875, 0.1875, 0.5, 0.1875}
		},
		tiles = def.tiles,
		groups = def.groups,
		sounds = def.sounds
	})
end

csh.from_node = function(name)
	local node_def = minetest.registered_nodes[name]
	local subname = name:split(':')[2]
	csh.register_material({
		subname = subname,
		description = node_def.description,
		tiles = node_def.tiles,
		groups = node_def.groups,
		sounds = node_def.sounds
	})
end

csh.from_node("default:wood")
csh.from_node("default:junglewood")
csh.from_node("default:pine_wood")
csh.from_node("default:acacia_wood")
csh.from_node("default:aspen_wood")
csh.from_node("default:stone")
csh.from_node("default:cobble")
csh.from_node("default:stonebrick")
csh.from_node("default:desert_stone")
csh.from_node("default:desert_cobble")
csh.from_node("default:desert_stonebrick")
csh.from_node("default:sandstone")
csh.from_node("default:sandstonebrick")
csh.from_node("default:obsidian")
csh.from_node("default:obsidianbrick")
csh.from_node("default:brick")
csh.from_node("default:steelblock")
csh.from_node("default:copperblock")
csh.from_node("default:bronzeblock")
csh.from_node("default:goldblock")
