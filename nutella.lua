minetest.register_node("sandwiches:nutella_block", {
		description = "Nutella block",
		groups = {oddly_breakable_by_hand = 2, misc_sandwich = 1, not_in_creative_inventory=1},
		paramtype2 = "facedir",
		tiles = {"nutella_block_top.png",
			"nutella_block_bottom.png",
			"nutella_block_side.png",
			"nutella_block_side.png",
			"nutella_block_side.png",
			"nutella_block_front.png"}
	})
	
minetest.register_craftitem("sandwiches:nutella_sandwich", {
		description = "Nutella sandwich",
		on_use = minetest.item_eat(8, "sandwiches:bread_crumbs"),
		groups = {food_sandwich = 1},
		inventory_image = "nutella_sandwich.png"
	})
	
minetest.register_craftitem("sandwiches:acorn_nutella", {
		description = "Acorn nutella",
		on_use = minetest.item_eat(2),
		groups = {misc_sandwich = 1},
		inventory_image = "acorn_nutella.png"
	})
	
minetest.register_craft({
		output = "sandwiches:nutella_sandwich",
		recipe = {
			{"", "sandwiches:bread_slice", ""},
			{"sandwiches:acorn_nutella", "sandwiches:acorn_nutella", "sandwiches:acorn_nutella"},
			{"", "sandwiches:bread_slice", ""},
		}
	})
	
minetest.register_craft({
		output = "sandwiches:acorn_nutella 5",
		type = "shapeless",
		recipe = {
			"farming:cocoa_beans", "farming:cocoa_beans", "farming:cocoa_beans",
			"group:food_sugar", "group:food_sugar", "group:food_sugar",
			"moretrees:acorn", "moretrees:acorn", "moretrees:acorn",
		}
	})

	minetest.register_craft({
		output = "sandwiches:nutella_block",
		recipe = {
			{"sandwiches:acorn_nutella", "sandwiches:acorn_nutella", "sandwiches:acorn_nutella"},
			{"sandwiches:acorn_nutella", "sandwiches:acorn_nutella", "sandwiches:acorn_nutella"},
			{"sandwiches:acorn_nutella", "sandwiches:acorn_nutella", "sandwiches:acorn_nutella"}
		}
	})
