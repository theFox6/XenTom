minetest.register_craftitem("xentom:xentom_lump", {
    description = "XenTom Lump",
    inventory_image = "xentom.png"
})

minetest.override_item("default:stone", {drop = {
    max_items = 1,
    items = {
    {items = {'xentom:xentom_lump'}, rarity = 50},
    {items = {'default:cobble'}},
    }
}})



minetest.register_node( "xentom:block", {
	description = "XenTom Block",
	tile_images = { "xentom_block.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_tool("xentom:xentom_sword", {
	description = "XenTom Sword",
	inventory_image = "xentom_sword.png",
	groups = {in_creative_inventory=1},
	range = 7,
	tool_capabilities = {
		full_punch_interval = 01.0,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.90, [2]=0.30, [3]=0.50}, uses=123, maxlevel=5},
		},
		damage_groups = {fleshy=10},
	},
	sound = {breaks = "default_tool_breaks"},
})

    
minetest.register_craft({
	output = "xentom:xentom_sword 1",
	recipe = {
		{"xentom:xentom_lump"},
		{"xentom:xentom_lump"},
		{"default:stick"}
	}
})

minetest.register_tool("xentom:xentom_axe", {
	description = "XenTom Axe",
	inventory_image = "xentom_axe.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.50, [3]=0.25}, uses=400, maxlevel=2},
			fleshy={times={[2]=1.00, [3]=0.50}, uses=1200, maxlevel=1}
		}
	},
})

minetest.register_craft({
	output = "xentom:xentom_axe 1",
	recipe = {
		{"xentom:xentom_lump","xentom:xentom_lump",""},
		{"xentom:xentom_lump","default:stick",""},
		{"","default:stick",""}
	}
})



minetest.register_tool("xentom:xentom_pickaxe", {
    description = "XenTom Pickaxe",
	inventory_image = "xentom_pickaxe.png",
	groups = {in_creative_inventory=1},
	range = 3.4,
    tool_capabilities = {
        full_punch_interval = 1.1,
		max_drop_level=2,
        groupcaps= {
            cracky={times={[1]=2.00, [2]=1.50, [3]=0.76}, uses=400, maxlevel=5}
        },
        damage_groups = {fleshy=0.5},
       },
    sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
	output = "xentom:xentom_pickaxe 1",
	recipe = {
		{"xentom:xentom_lump","xentom:xentom_lump","xentom:xentom_lump"},
		{"","default:stick",""},
		{"","default:stick",""}
	}
})

minetest.register_tool("xentom:xentom_shovel", {
	description = "XenTom Shovel",
	inventory_image = "xentom_shovel.png",
	wield_image = "xentom_shovel.png^[transformR90",
	groups = {in_creative_inventory=1},
	range = 5,
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.00, [2]=0.40, [3]=0.50}, uses=386, maxlevel=5},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
	output = "xentom:xentom_shovel 1",
	recipe = {
		{"xentom:xentom_lump"},
		{"default:stick"},
		{"default:stick"}
	}
})

minetest.register_craft({
	output = 'xentom:block',
	recipe = {
		{'xentom:xentom_lump', 'xentom:xentom_lump', 'xentom:xentom_lump'},
		{'xentom:xentom_lump', 'default:stone', 'xentom:xentom_lump'},
		{'xentom:xentom_lump', 'xentom:xentom_lump', 'xentom:xentom_lump'},
	}
})

minetest.register_node("xentom:xentom_glass", {
	description = "XenTom Glass",
	drawtype = "glasslike_framed_optional",
	tiles = {"xentom_glass.png"},
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy=1,cracky=2,oddly_breakable_by_hand=2},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'xentom:xentom_glass 10',
	recipe = {
		{'xentom:xentom_lump', 'xentom:xentom_lump', 'xentom:xentom_lump'},
		{'xentom:xentom_lump', 'default:glass', 'xentom:xentom_lump'},
		{'xentom:xentom_lump', 'xentom:xentom_lump', 'xentom:xentom_lump'},
	}
})

minetest.register_tool("xentom:xentom_hoe", {
	description = "XenTom Axe",
	inventory_image = "xentom_hoe.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.50, [3]=0.25}, uses=400, maxlevel=2},
			fleshy={times={[2]=1.00, [3]=0.50}, uses=1200, maxlevel=1}
		}
	},
})

minetest.register_craftitem("xentom:xentom_apple", {
    description = "XenTom apple",
    inventory_image = "xentom_apple.png",
    on_use = minetest.item_eat(20),
})

minetest.register_craft({
	output = "xentom:xentom_apple 5",
	recipe = {
		{"xentom:xentom_lump"},
		{"default:apple"},
		{"xentom:xentom_lump"}
	}
})