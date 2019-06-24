minetest.register_tool("xentom:xentom_chestplate", {
	description = "XenTom Chestplate",
	inventory_image = "3d_armor_chestplate_xentom.png",
    groups = {armor_torso=1, armor_heal=20, armor_use=35, armor_fire=3, in_creative_inventory=1},
    armor_groups = {fleshy =20},
    damage_groups = {cracky=2, snappy=1, level=3},
    wear = 0,
})

minetest.register_tool("centom:xentom_leggings", {
	description = "XenTom Leggings",
	inventory_image = "3d_armor_leggings_xentom.png",
    groups = {armor_legs=1, armor_heal=20, armor_use=35, armor_fire=3, in_creative_inventory=1},
    armor_groups = {fleshy =20},
    damage_groups = {cracky=2, snappy=1, level=3},
    wear = 0,
})

minetest.register_tool("xentom:xentom_boots", {
	description = "XenTom Boots",
	inventory_image = "3d_armor_boots_xentom.png",
    groups = {armor_feet=1, armor_heal=20, armor_use=25,
        physics_speed=1.0, physics_jump=1, armor_fire=1, armor_fire=2, creative_inventory=1},
    armor_groups = {fleshy =20},
    damage_groups = {cracky=2, snappy=1, level=3},
    wear = 0,
})

minetest.register_tool("xentom:xentom_helmet", {
	description = "XenTom Helmet",
	inventory_image = "3d_armor_helmet_dark.png",
    groups = {armor_head=1, armor_heal=18, armor_use=25, armor_fire=2, in_creative_inventory=1},
    armor_groups = {fleshy =20},
    damage_groups = {cracky=2, snappy=1, level=3},
    wear = 0,
})


--- Registering Recipes

minetest.register_craft({
	output = "xentom:xentom_chestplate",
	recipe = {
		{"xentom:xentom_lump", "", "xentom:xentom_lump"},
		{"xentom:xentom_lump", "xentom:xentom_lump", "xentom:xentom_lump"},
		{"xentom:xentom_lump", "xentom:xentom_lump", "xentom:xentom_lump"},
	},
})

minetest.register_craft({
	output = "xentom:xentom_leggings",
	recipe = {
		{"xentom:xentom_lump", "darks:darksubstance", "darks:darksubstance"},
		{"xentom:xentom_lump", "", "xentom:xentom_lump"},
		{"xentom:xentom_lump", "", "xentom:xentom_lump"},
	},
})

minetest.register_craft({
	output = "xentom:xentom_boots",
	recipe = {
		{"xentom:xentom_lump", "", "xentom:xentom_lump"},
		{"xentom:xentom_lump", "", "xentom:xentom_lump"},
	},
})

minetest.register_craft({
	output = "xentom:xentom_helmet",
	recipe = {
		{"xentom:xentom_lump", "xentom:xentom_lump", "xentom:xentom_lump"},
		{"xentom:xentom_lump", "", "xentom:xentom_lump"},
		{"", "", ""},
	},
})
