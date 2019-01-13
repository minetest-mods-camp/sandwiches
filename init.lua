-- Mod: sandwiches
--Current version: 1.5

-- 1.2 compatibility
--minetest.register_alias("sandwiches:meat_sandwich","sandwiches:ham_sandwich")

--i know that this is really bad written, but i still need to know how this works ...
sandwiches = {}
sandwiches.path = minetest.get_modpath("sandwiches")

dofile(sandwiches.path .. "/crops/peanuts.lua")

if minetest.registered_craftitems["ethereal:strawberry"] and minetest.registered_nodes["ethereal:banana"] then
	dofile(sandwiches.path .. "/ethereal.lua")
end

if minetest.get_modpath ("moretrees") then
    dofile(sandwiches.path .. "/nutella.lua")
end

-- NODES --

minetest.register_node("sandwiches:tabasco", {
	description = "Tabasco bottle",
	inventory_image = "tabasco.png",
	wield_image = "tabasco.png",
	drawtype = "plantlike",
	paramtype = "light",
	is_ground_content = false,
	tiles = {"tabasco.png"},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1, misc_sandwich = 1},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
})

-- ITEMS --

minetest.register_craftitem("sandwiches:bread_slice", {
    description = "Bread slice",
    on_use = minetest.item_eat(1),
    groups = {misc_sandwich = 1, food_bread_slice = 1},
    inventory_image = "bread_slice.png"
})

minetest.register_craftitem("sandwiches:bread_crumbs", {
    description = "Bread crumbs",
    on_use = minetest.item_eat(1),
    groups = {misc_sandwich = 1},
    inventory_image = "bread_crumbs.png"
})

minetest.register_craftitem("sandwiches:american_sandwich", {
    description = "American sandwich",
    on_use = minetest.item_eat(7, "sandwiches:bread_crumbs"),
    groups = {food_sandwich = 1},
    inventory_image = "american_sandwich.png"
})

minetest.register_craftitem("sandwiches:veggie_sandwich", {
    description = "Veggie sandwich",
    on_use = minetest.item_eat(7, "sandwiches:bread_crumbs"),
    groups = {food_sandwich = 1},
    inventory_image = "veggie_sandwich.png"
})

minetest.register_craftitem("sandwiches:ham_sandwich", {
    description = "Ham sandwich",
    on_use = minetest.item_eat(7, "sandwiches:bread_crumbs"),
    groups = {food_sandwich = 1},
    inventory_image = "ham_sandwich.png"
})

minetest.register_craftitem("sandwiches:sand_sandwich", {
    description = "Sand sandwich ... Ouch!",
    on_use = minetest.item_eat(5),
	groups = {food_sandwich = 1},
    inventory_image = "sand_sandwich.png"
})

minetest.register_craftitem("sandwiches:sweet_sandwich", {
    description = "Sweet sandwich",
    on_use = minetest.item_eat(8, "sandwiches:bread_crumbs"),
    groups = {food_sandwich = 1},
    inventory_image = "sweet_sandwich.png"
})

minetest.register_craftitem("sandwiches:triple_mega_sandwich", {
    description = "Triple mega sandwich",
    on_use = minetest.item_eat(11, "sandwiches:bread_crumbs"),
    groups = {food_sandwich = 1},
    inventory_image = "triple_mega_sandwich.png"
})

minetest.register_craftitem("sandwiches:italian_sandwich", {
	description = "Italian sandwich",
	on_use = minetest.item_eat(7, "sandwiches:bread_crumbs"),
	groups = {food_sandwich = 1},
	inventory_image = "italian_sandwich.png"
})

minetest.register_craftitem("sandwiches:jam_sandwich", {
	description = "Jam sandwich",
	on_use = minetest.item_eat(7, "sandwiches:bread_crumbs"),
	groups = {food_sandwich = 1},
	inventory_image = "jam_sandwich.png"
})

minetest.register_craftitem("sandwiches:bacon_sandwich", {
	description = "Bacon sandwich",
	on_use = minetest.item_eat(7, "sandwiches:bread_crumbs"),
	groups = {food_sandwich = 1},
	inventory_image = "bacon_sandwich.png"
})

minetest.register_craftitem("sandwiches:egg_and_bacon_sandwich", {
	description = "Egg&Bacon sandwich",
	on_use = minetest.item_eat(8, "sandwiches:bread_crumbs"),
	groups = {food_sandwich = 1},
	inventory_image = "egg_and_bacon_sandwich.png"
})

minetest.register_craftitem("sandwiches:grape_jelly_sandwich", {
	description = "Grape jelly sandwich",
	on_use = minetest.item_eat(7, "sandwiches:bread_crumbs"),
	groups = {food_sandwich = 1},
	inventory_image = "grape_jelly_sandwich.png"
})

minetest.register_craftitem("sandwiches:pb_and_j_sandwich", {
	description = "PeanutButter & Jelly sandwich",
	on_use = minetest.item_eat(8, "sandwiches:bread_crumbs"),
	groups = {food_sandwich = 1},
	inventory_image = "pb_and_j_sandwich.png"
})

minetest.register_craftitem("sandwiches:hot_ham_sandwich", {
	description = "Hot ham sandwich",
	on_use = minetest.item_eat(7, "sandwiches:bread_crumbs"),
	groups = {food_sandwich = 1},
	inventory_image = "hot_ham_sandwich.png"
})

minetest.register_craftitem("sandwiches:hot_veggie_sandwich", {
	description = "Hot veggie sandwich",
	on_use = minetest.item_eat(7, "sandwiches:bread_crumbs"),
	groups = {food_sandwich = 1},
	inventory_image = "hot_veggie_sandwich.png"
})

-- NON SANDWICH ITEMS --

minetest.register_craftitem("sandwiches:sweet_bread_pudding_raw", {
    description = "Uncooked sweet bread pudding",
    groups = {misc_sandwich = 1},
    inventory_image = "sweet_bread_pudding_raw.png"
})

minetest.register_craftitem("sandwiches:sweet_bread_pudding", {
    description = "Sweet bread pudding",
    on_use = minetest.item_eat(10),
    groups = {misc_sandwich = 1},
    inventory_image = "sweet_bread_pudding.png"
})

minetest.register_craftitem("sandwiches:raspberry_jam", {
    description = "Rasperry jam",
    on_use = minetest.item_eat(2),
    groups = {food_jam = 1,misc_sandwich = 1},
    inventory_image = "raspberry_jam.png"
})

minetest.register_craftitem("sandwiches:grape_jelly", {
    description = "Grape jelly",
    on_use = minetest.item_eat(2),
    groups = {food_jam = 1, misc_sandwich = 1},
    inventory_image = "grape_jelly.png"
})

minetest.register_craftitem("sandwiches:ham", {
    description = "Ham",
    on_use = minetest.item_eat(1),
    groups = {food_ham = 1, misc_sandwich = 1},
    inventory_image = "ham.png"
})

minetest.register_craftitem("sandwiches:raw_bacon", {
    description = "Raw Bacon",
    on_use = minetest.item_eat(1),
    groups = {misc_sandwich = 1},
    inventory_image = "raw_bacon.png"
})

minetest.register_craftitem("sandwiches:crispy_bacon", {
    description = "Crispy Bacon",
    on_use = minetest.item_eat(2),
    groups = {food_bacon = 1, misc_sandwich = 1},
    inventory_image = "crispy_bacon.png"
})

-- PEANUTS --

minetest.register_craftitem("sandwiches:peanuts", {
	description = "Peanuts",
	on_use = minetest.item_eat(1),
	inventory_image = "peanuts.png",
	groups = {food_peanuts = 1, misc_sandwich = 1},
})

minetest.register_craftitem("sandwiches:peanut_butter", {
    description = "Peanut Butter",
    on_use = minetest.item_eat(2),
    groups = {misc_sandwich = 1},
    inventory_image = "peanut_butter.png"
})



-- COOKING --

minetest.register_craft({
    type = "cooking",
    output = "sandwiches:sweet_bread_pudding",
    recipe = "sandwiches:sweet_bread_pudding_raw",
    cooktime = 15,
})

minetest.register_craft({
    type = "cooking",
    output = "sandwiches:crispy_bacon",
    recipe = "sandwiches:raw_bacon",
    cooktime = 5,
})

-- CRAFTS --

minetest.register_craft({
	output = "sandwiches:bread_slice 4",
	type = "shapeless",
	recipe = {"farming:bread"},
})

minetest.register_craft({
	output = "sandwiches:american_sandwich",
	recipe = {
		{"", "sandwiches:bread_slice", ""},
		{"farming:cucumber", "mobs:cheese", "sandwiches:ham"},
		{"", "sandwiches:bread_slice", ""},
	}
})

minetest.register_craft({
	output = "sandwiches:veggie_sandwich",
	recipe = {
		{"", "sandwiches:bread_slice", ""},
		{"farming:cucumber", "farming:tomato", "farming:potato"},
		{"", "sandwiches:bread_slice", ""},
	}
})

minetest.register_craft({
	output = "sandwiches:ham_sandwich",
	recipe = {
		{"", "sandwiches:bread_slice", ""},
		{"sandwiches:ham", "sandwiches:ham", "sandwiches:ham"},
		{"", "sandwiches:bread_slice", ""},
	}
})

minetest.register_craft({
	output = "sandwiches:sand_sandwich",
	recipe = {
		{"default:sand", "default:sand", "default:sand"},
		{"default:cactus", "default:cactus", "default:cactus"},
		{"default:sand", "default:sand", "default:sand"},
	}
})

minetest.register_craft({
	output = "sandwiches:sweet_sandwich",
	recipe = {
		{"", "sandwiches:bread_slice", ""},
		{"default:apple", "mobs:honey", "default:apple"},
		{"", "sandwiches:bread_slice", ""},
	}
})

minetest.register_craft({
	output = "sandwiches:triple_mega_sandwich",
	recipe = {
		{"", "sandwiches:bread_slice", ""},
		{"sandwiches:american_sandwich", "sandwiches:ham_sandwich", "sandwiches:veggie_sandwich"},
		{"", "sandwiches:bread_slice", ""},
	}
})

minetest.register_craft({
	output = "sandwiches:italian_sandwich",
	recipe = {
		{"", "sandwiches:bread_slice", ""},
		{"flowers:mushroom_brown", "farming:tomato", "mobs:cheese"},
		{"", "sandwiches:bread_slice", ""},
	}
})

minetest.register_craft({
	output = "sandwiches:jam_sandwich",
	recipe = {
		{"", "sandwiches:bread_slice", ""},
		{"sandwiches:raspberry_jam", "sandwiches:raspberry_jam", "sandwiches:raspberry_jam"},
		{"", "sandwiches:bread_slice", ""},
	}
})

minetest.register_craft({
	output = "sandwiches:grape_jelly_sandwich",
	recipe = {
		{"", "sandwiches:bread_slice", ""},
		{"sandwiches:grape_jelly", "sandwiches:grape_jelly", "sandwiches:grape_jelly"},
		{"", "sandwiches:bread_slice", ""},
	}
})

minetest.register_craft({
	output = "sandwiches:bacon_sandwich",
	recipe = {
		{"", "sandwiches:bread_slice", ""},
		{"sandwiches:crispy_bacon", "sandwiches:crispy_bacon", "sandwiches:crispy_bacon"},
		{"", "sandwiches:bread_slice", ""},
	}
})

minetest.register_craft({
	output = "sandwiches:egg_and_bacon_sandwich",
	recipe = {
		{"", "sandwiches:bread_slice", ""},
		{"sandwiches:crispy_bacon", "mobs:chicken_egg_fried", "sandwiches:crispy_bacon"},
		{"", "sandwiches:bread_slice", ""},
	}
})

minetest.register_craft({
	output = "sandwiches:pb_and_j_sandwich",
	recipe = {
		{"", "sandwiches:bread_slice", ""},
		{"sandwiches:peanut_butter", "sandwiches:grape_jelly", "sandwiches:peanut_butter"},
		{"", "sandwiches:bread_slice", ""},
	}
})

minetest.register_craft({
	output = "sandwiches:hot_ham_sandwich",
	recipe = {
		{"", "sandwiches:bread_slice", ""},
		{"sandwiches:ham", "sandwiches:tabasco", "sandwiches:ham"},
		{"", "sandwiches:bread_slice", ""},
	}
})

minetest.register_craft({
	output = "sandwiches:hot_veggie_sandwich",
	recipe = {
		{"", "sandwiches:bread_slice", ""},
		{"farming:tomato", "sandwiches:tabasco", "farming:potato"},
		{"", "sandwiches:bread_slice", ""},
	}
})

-- NON SANDWICH CRAFTS --

minetest.register_craft({
	output = "sandwiches:sweet_bread_pudding_raw",
	recipe = {
		{"sandwiches:bread_crumbs", "sandwiches:bread_crumbs", "sandwiches:bread_crumbs"},
		{"group:food_jam", "group:food_sugar", "group:food_jam"},
		{"sandwiches:bread_crumbs", "sandwiches:bread_crumbs", "sandwiches:bread_crumbs"},
	}
})

minetest.register_craft({
	output = "sandwiches:raspberry_jam 5",
	recipe = {
		{"farming:raspberries", "group:food_sugar", "farming:raspberries"},
		{"group:food_sugar", "farming:pot", "group:food_sugar"},
		{"farming:raspberries", "group:food_sugar", "farming:raspberries"},
	},
	replacements = {{"group:food_pot", "farming:pot"}},
})

minetest.register_craft({
	output = "sandwiches:grape_jelly 5",
	recipe = {
		{"farming:grapes", "group:food_sugar", "farming:grapes"},
		{"group:food_sugar", "farming:pot", "group:food_sugar"},
		{"farming:grapes", "group:food_sugar", "farming:grapes"},
	},
	replacements = {{"group:food_pot", "farming:pot"}},
})

minetest.register_craft({
	output = "sandwiches:peanut_butter",
	type = "shapeless";
	recipe = {"sandwiches:peanuts", "sandwiches:peanuts", "sandwiches:peanuts",
		"sandwiches:peanuts", "sandwiches:peanuts", "sandwiches:peanuts",
		"farming:mortar_pestle","sandwiches:peanuts", "sandwiches:peanuts",
	},
	replacements = {{"group:food_mortar_pestle", "farming:mortar_pestle"}},
})

minetest.register_craft({
	output = "sandwiches:ham 3",
	type = "shapeless";
	recipe = {"mobs:meat", "farming:cutting_board"},
	replacements = {{"group:food_cutting_board", "farming:cutting_board"}}
})

minetest.register_craft({
	output = "sandwiches:raw_bacon 3",
	type = "shapeless";
	recipe = {"mobs:pork_raw", "farming:cutting_board"},
	replacements = {{"group:food_cutting_board", "farming:cutting_board"}}
})

minetest.register_craft({
	output = "sandwiches:tabasco 3",
	type = "shapeless";
	recipe = {"farming:chili_pepper", "farming:chili_pepper", "farming:chili_pepper",
		"farming:chili_pepper", "farming:chili_pepper", "farming:chili_pepper",
		"farming:mortar_pestle", "vessels:glass_bottle",
	},
	replacements = {{"group:food_mortar_pestle", "farming:mortar_pestle"}}
})
