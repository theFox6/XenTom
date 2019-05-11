minetest.register_craftitem("xentom:xentom_lump", {
    description = "XenTom Lump",
    inventory_image = "xentom.png"
})

minetest.override_item("default:stone", {drop = {
    max_items = 1,
    items = {
    {items = {'xentom:xentom_lump'}, rarity = 15},
    {items = {'default:cobble'}},
    }
}})
    
