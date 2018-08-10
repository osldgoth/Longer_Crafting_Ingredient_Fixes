function countIngredients(name, ingredientList) --remember remove name(was used for log info)
	local numOfIngredients = 0
	for _,oneIngredient in pairs(ingredientList) do
		if oneIngredient[2] == nil then
			if oneIngredient.type == "fluid" then
				numOfIngredients = numOfIngredients + (oneIngredient.amount/10)
			else
				numOfIngredients = numOfIngredients + oneIngredient.amount
			end
		else --no fluids here
			numOfIngredients = numOfIngredients + oneIngredient[2]
		end
	end
	return numOfIngredients
end
	
function craftTime(ingredientCount, techLvl)
	return math.ceil(string.format("%.2f", techLvl + math.log(ingredientCount^(techLvl + 1))) * 2) / 2
end

--*** 'fix' recipes

data.raw.recipe["small-electric-pole"].ingredients = {
	{
		"wood",
		2
	},
	{
		"copper-cable",
		data.raw["electric-pole"]["small-electric-pole"].maximum_wire_distance / 2
	}
}

data.raw.recipe["medium-electric-pole"].ingredients = {
	{
		"steel-plate",
		2
	},
	{
		"copper-cable",
		data.raw["electric-pole"]["medium-electric-pole"].maximum_wire_distance / 2
	}
}

data.raw.recipe["big-electric-pole"].ingredients = {
	{
		"steel-plate",
		5
	},
	{
		"copper-cable",
		data.raw["electric-pole"]["big-electric-pole"].maximum_wire_distance / 2 --so one wire reaches 2 tiles(2 meters)! is that enough?
	}
}

data.raw.recipe["substation"].ingredients = {
	{
		"steel-plate",
		5
	},
	{
		"advanced-circuit",
		3
	},
	{
		"copper-cable",
		data.raw["electric-pole"].substation.maximum_wire_distance / 2
	}
}

data.raw.recipe["copper-cable"].result_count = 3

data.raw.recipe["red-wire"].result_count = 6
data.raw.recipe["red-wire"].ingredients = {
	{
		"copper-cable",
		6
	},
	{
		"plastic-bar",
		1
	}
}

data.raw.recipe["green-wire"].result_count = 6
data.raw.recipe["green-wire"].ingredients = {
	{
		"copper-cable",
		6
	},
	{
		"plastic-bar",
		1
	}
}

data.raw.recipe["engine-unit"].ingredients = {
	{
		"steel-plate",
		1
	},
	{
		"iron-gear-wheel",
		1
	},
	{
		"pipe",
		2
	},
	{
		amount = 5,
		name = "lubricant",
		type = "fluid"
	}
}

data.raw.recipe["electric-engine-unit"].ingredients = {
	{
		"iron-plate",
		2
	},
	{
		"steel-plate",
		3
	},
	{
		"copper-cable",
		15
	},
	{
		"advanced-circuit",
		2
	}
}

data.raw.recipe["rail-signal"].ingredients = {
	{
		"electronic-circuit",
		3
	},
	{
		"iron-plate",
		5
	},
	{
		"small-lamp",
		3
	}
}

data.raw.recipe["rail-chain-signal"].ingredients = {
	{
		"rail-signal",
		1
	},
	{
		"electronic-circuit",
		2
	}
}

data.raw.recipe["concrete"].ingredients = {
	{
		"stone",
		10
	},
	{
		"iron-stick",
		4
	},
	{
		"iron-ore",
		1
	},
	{
		amount = 100,
		name = "water",
		type = "fluid"
	}
}

data.raw.recipe["steel-chest"].ingredients = {
	{
		"steel-plate",
		7
	},
	{
		"iron-chest",
		1
	}
}

data.raw.recipe["steel-furnace"].ingredients = {
	{
		"steel-plate",
		6
	},
	{
		"stone-brick",
		8
	},
	{
		"stone-furnace",
		1
	}
}

data.raw.recipe["submachine-gun"].expensive.ingredients = {
	{
		"copper-plate",
		20
	},
	{
		"iron-plate",
		20
	}
	-- {
		-- "iron-spring",
		-- 10
	-- }
}

data.raw.recipe["submachine-gun"].normal.ingredients = {
	{
		"copper-plate",
		5
	},
	{
		"iron-plate",
		10
	}
	-- {
		-- "iron-spring",
		-- 5
	-- }
}

data.raw.recipe["gun-turret"].ingredients = {
	{
		"submachine-gun",
		1
	},
	{
		"iron-gear-wheel",
		5
	},
	{
		"iron-plate",
		10
	},
	{
		"steel-plate",
		2
	}
}

data.raw.recipe["electric-mining-drill"].expensive.ingredients = {
	{
		"electronic-circuit",
		5
	},
	{
		"iron-gear-wheel",
		7
	},
	{
		"iron-plate",
		10
	}
}

data.raw.recipe["electric-mining-drill"].normal.ingredients = {
	{
		"electronic-circuit",
		3
	},
	{
		"iron-gear-wheel",
		3
	},
	{
		"iron-plate",
		5
	}
}

data.raw.recipe["express-transport-belt"].expensive.ingredients = {
	{
		"iron-gear-wheel",
		15
	},
	{
		"fast-transport-belt",
		1
	},
	{
		amount = 10,
		name = "lubricant",
		type = "fluid"
	}
}

data.raw.recipe["express-transport-belt"].normal.ingredients = {
	{
		"iron-gear-wheel",
		5
	},
	{
		"fast-transport-belt",
		1
	},
	{
		amount = 15,
		name = "lubricant",
		type = "fluid"
	}
}

data.raw.recipe["splitter"].ingredients = {
	{
		"electronic-circuit",
		2
	},
	{
		"iron-plate",
		2
	},
	{
		"transport-belt",
		2
	},
	{
		"iron-gear-wheel",
		2
	}
}

data.raw.recipe["fast-splitter"].ingredients = {
	{
				"splitter",
				1
			},
			{
				"iron-gear-wheel",
				8
			},
			{
				"electronic-circuit",
				5
			}
}

data.raw.recipe["express-splitter"].ingredients = {
	{
		"fast-splitter",
		1
	},
	{
		"iron-gear-wheel",
		5
	},
	{
		"advanced-circuit",
		10
	},
	{
		amount = 20,
		name = "lubricant",
		type = "fluid"
	}
}

data.raw.recipe["fast-underground-belt"].ingredients = {
	{
		"iron-gear-wheel",
		25
	},
	{
		"iron-plate",
		5
	},
	{
		"underground-belt",
		2
	}
}

data.raw.recipe["express-underground-belt"].ingredients = {
	{
		"iron-gear-wheel",
		30
	},
	{
		"iron-plate",
		5
	},
	{
		"fast-underground-belt",
		2
	},
	{
		amount = 10,
		name = "lubricant",
		type = "fluid"
	}
}

data.raw.recipe["stack-inserter"].ingredients = {
	{
				"iron-gear-wheel",
				5
			},
			{
				"electronic-circuit",
				5
			},
			{
				"advanced-circuit",
				1
			},
			{
				"fast-inserter",
				1
			}
}

-- new items for assembling machines: cutters, welders, hole punches, rollers ...
data.raw.recipe["assembling-machine-1"].ingredients = {
	{
		"electronic-circuit",
		3
	},
	{
		"inserter",
		5
	},
	{
		"iron-plate",
		6
	}
}

data.raw.recipe["assembling-machine-2"].expensive.ingredients = {
	{
		"iron-gear-wheel",
		10
	},
	{
		"electronic-circuit",
		10
	},
	{
		"fast-inserter",
		10
	},
	{
		"assembling-machine-1",
		1
	}
}

data.raw.recipe["assembling-machine-2"].normal.ingredients = {
	{
		"iron-gear-wheel",
		3
	},
	{
		"electronic-circuit",
		5
	},
	{
		"fast-inserter",
		5
	},
	{
		"assembling-machine-1",
		1
	}
}

data.raw.recipe["assembling-machine-3"].ingredients = {
	{
		"speed-module",
		2
	},
	{
		"stack-inserter",
		5
	},
	{
		"steel-plate",
		4
	},
	{
		"assembling-machine-2",
		1
	}
}

data.raw.recipe["electronic-circuit"].expensive.ingredients = {
	{
		"iron-plate",
		4
	},
	{
		"copper-cable",
		12
	}
}

data.raw.recipe["electronic-circuit"].normal.ingredients = {
	{
		"iron-plate",
		1
	},
	{
		"copper-cable",
		6
	}
}

data.raw.recipe["advanced-circuit"].expensive.ingredients = {
	{
		"electronic-circuit",
		6
	},
		{
		"green-wire",
		3
	},
	{
		"plastic-bar",
		1
	}
}

data.raw.recipe["advanced-circuit"].normal.ingredients = {
	{
		"electronic-circuit",
		3
	},
	{
		"green-wire",
		1
	},
	{
		"plastic-bar",
		1
	}
}

data.raw.recipe["processing-unit"].expensive.ingredients = {
	{
		"electronic-circuit",
		4
	},
	{
		"advanced-circuit",
		8
	},
	{
		amount = 5,
		name = "sulfuric-acid",
		type = "fluid"
	}
}

data.raw.recipe["processing-unit"].normal.ingredients = {
	{
		"electronic-circuit",
		8
	},
	{
		"advanced-circuit",
		4
	},
	{
		amount = 5,
		name = "sulfuric-acid",
		type = "fluid"
	}
}

data.raw.recipe["plastic-bar"].results[1].amount = 4
data.raw.recipe["plastic-bar"].ingredients = {
	{
		amount = 10,
		name = "petroleum-gas",
		type = "fluid"
	},
	{
		amount = 2,
		name = "coal",
		type = "item"
	}
}

data.raw.recipe["oil-refinery"].ingredients = {
	{
		"steel-plate",
		15
	},
	{
		"concrete",
		10
	},
	{
		"electronic-circuit",
		10
	},
	{
		"pipe",
		10
	}
}

--data.raw.recipe["heat-pipe"].result_count = 3

data.raw.recipe["heat-pipe"].ingredients = {
	{
				"steel-plate",
				1
			},
			{
				"copper-plate",
				5
			}
}

data.raw.recipe["heat-exchanger"].ingredients = {
	{
		"steel-plate",
		10
	},
	{
		"copper-plate",
		20
	},
	{
		"heat-pipe",
		5
	}
}


--[[data.raw.recipe["heavy-armor"].ingredients = {
	
}

data.raw.recipe["heavy-armor"].ingredients = {
	
}

data.raw.recipe["power-armor"].ingredients = {
	
}

data.raw.recipe["power-armor-mk2"].ingredients = {
	
}
--]]
data.raw.recipe["solar-panel-equipment"].ingredients = {
	{
		"steel-plate",
		1
	},
	{
		"copper-cable",
		1
	},
	{
		"electronic-circuit",
		5
	},
	{
		"copper-plate",
		2
	}
}

data.raw.recipe["solar-panel"].ingredients = {
	{
		"solar-panel-equipment",
		5
	},
	{
		"advanced-circuit",
		3
	},
	{
		"steel-plate",
		5
	}
}

data.raw.recipe["flying-robot-frame"].ingredients = {
	{
		"electric-engine-unit",
		1
	},
	{
		"battery",
		2
	},
	{
		"steel-plate",
		1
	},
	-- {
		-- "advanced-circuit",
		-- 2
	-- }
}

data.raw.recipe["high-tech-science-pack"].expensive = {
	enabled = false,
	ingredients = {
		{
			"battery",
			1
		},
		{
			"processing-unit",
			1
		},
		{
			"uranium-238",
			1
		},
		{
			"substation", --not copper-cable
			1
		}
	},
	result = "high-tech-science-pack"
}

data.raw.recipe["high-tech-science-pack"].normal = {
	enabled = false,
	ingredients = {
		{
			"battery",
			1
		},
		{
			"processing-unit",
			1
		},
		{
			"heat-pipe",
			1
		},
		{
			"substation", --not copper-cable
			1
		}
	},
	result = "high-tech-science-pack"
}

data.raw.recipe["construction-robot"].ingredients = {
	{
		"flying-robot-frame",
		4 --1
	},
	{
		"advanced-circuit",
		2 --electronic-circuit, 2
	},
	{
		"electronic-circuit",
		3
	},
	{
		"steel-axe",
		1
	}
}

data.raw.recipe["logistic-robot"].ingredients = {
	{
		"flying-robot-frame",
		3 --1
	},
	{
		"advanced-circuit",
		1 --2
	},
	{
		"electronic-circuit",
		3 
	}
}

data.raw.recipe["effectivity-module"].ingredients = {
	{
				"advanced-circuit",
				3
			},
			{
				"electronic-circuit",
				7
			}
}

data.raw.recipe["effectivity-module-2"].ingredients = {
	{
		"effectivity-module",
		3
	},
	{
		"advanced-circuit",
		3
	},
	{
		"processing-unit",
		3
	}
}

data.raw.recipe["effectivity-module-3"].ingredients = {
	{
		"effectivity-module-2",
		3
	},
	{
		"advanced-circuit",
		4
	},
	{
		"processing-unit",
		4
	}
}

data.raw.recipe["speed-module"].ingredients = {
	{
		"advanced-circuit",
		3
	},
	{
		"electronic-circuit",
		3
	}
}

data.raw.recipe["speed-module-2"].ingredients = {
	{
		"speed-module",
		4
	},
	{
		"advanced-circuit",
		5
	},
	{
		"processing-unit",
		4
	}
}

data.raw.recipe["speed-module-3"].ingredients = {
	{
		"speed-module-2",
		5
	},
	{
		"advanced-circuit",
		6
	},
	{
		"processing-unit",
		6
	}
}

data.raw.recipe["productivity-module"].ingredients = {
	{
		"advanced-circuit",
		3
	},
	{
		"electronic-circuit",
		3
	}
}

data.raw.recipe["productivity-module-2"].ingredients = {
	{
		"productivity-module",
		3
	},
	{
		"advanced-circuit",
		6
	},
	{
		"processing-unit",
		6
	}
}

data.raw.recipe["productivity-module-3"].ingredients = {
	{
		"productivity-module-2",
		5
	},
	{
		"advanced-circuit",
		3
	},
	{
		"processing-unit",
		5
	}
}

data.raw.recipe["fusion-reactor-equipment"].ingredients = {
		{
			"steel-plate",
			5
		},
		{
			"copper-plate",
			45
		},
		{
			"processing-unit",
			200
		}
}

data.raw.recipe["cannon-shell"].expensive.ingredients = {
	{
		"steel-plate",
		10
	},
	{
		"explosives",
		5
	}
}

data.raw.recipe["cannon-shell"].normal.ingredients = {
	{
		"steel-plate",
		5
	},
	{
		"explosives",
		2
	}
}

data.raw.recipe["explosive-cannon-shell"].expensive.ingredients = {
	{
		"cannon-shell",
		2
	},
	{
		"explosives",
		4
	}
}

data.raw.recipe["explosive-cannon-shell"].normal.ingredients = {
	{
		"cannon-shell",
		1
	},
	{
		"explosives",
		2
	}
}

data.raw.recipe["atomic-bomb"].ingredients = {
	{
		"processing-unit",
		10
	},
	{
		"steel-plate",
		5
	},
	{
		"explosives",
		5
	},
	{
		"rocket",
		1
	},
	{
		"uranium-235",
		30
	}
}

data.raw.recipe["poison-capsule"].result_count = 5
data.raw.recipe["poison-capsule"].category = "crafting-with-fluid"
data.raw.recipe["poison-capsule"].ingredients = {
	{
		"plastic-bar",
		1
	},
	{
		"coal",
		3
	},
	{
		amount = 10,
		name = "sulfuric-acid",
		type = "fluid"
	}
}

data.raw.recipe["slowdown-capsule"].result_count = 5
data.raw.recipe["slowdown-capsule"].category = "crafting-with-fluid"
data.raw.recipe["slowdown-capsule"].ingredients = {
	{
		"plastic-bar",
		1
	},
	{
		"coal",
		5
	},
	{
		
		name = "crude-oil",
		amount = 10,
		type = "fluid"
	}
}

data.raw.recipe["defender-capsule"].ingredients = {
	{
		"piercing-rounds-magazine",
		1
	},
	{
		"flying-robot-frame",
		1
	},
	{
		"electronic-circuit",
		2
	},
	{
		"iron-gear-wheel",
		3
	}
}

data.raw.recipe["distractor-capsule"].ingredients = {
	{
		"laser-turret",
		1
	},
	{
		"flying-robot-frame",
		1
	},
	{
		"advanced-circuit",
		3
	}
}

data.raw.recipe["destroyer-capsule"].ingredients = {
	{
		"distractor-capsule",
		4
	},
	{
		"battery",
		8
	},
	{
		"electronic-circuit",
		3
	},
		{
		"advanced-circuit",
		3
	}
}

-- data.raw.recipe["rocket-control-unit"].ingredients = {
	-- {
		-- "processing-unit",
		-- 2
	-- }
-- }

-- data.raw.recipe[""].ingredients = {
	
-- }

-- data.raw.recipe[""].ingredients = {
	
-- }


--*** adjust a few things

data.raw["assembling-machine"]["assembling-machine-1"].crafting_speed = 1.0
data.raw["assembling-machine"]["assembling-machine-1"].ingredient_count = 3
data.raw["assembling-machine"]["assembling-machine-2"].crafting_speed = 2.0
data.raw["assembling-machine"]["assembling-machine-2"].ingredient_count = 5
data.raw["assembling-machine"]["assembling-machine-3"].crafting_speed = 3.0
data.raw["assembling-machine"]["assembling-machine-3"].ingredient_count = 7

data.raw["assembling-machine"]["chemical-plant"].crafting_speed = 2

data.raw["electric-pole"]["small-electric-pole"].supply_area_distance = 3.5
data.raw["electric-pole"]["small-electric-pole"].max_health = 75

--*** adjust tech
data.raw.technology["robotics"].prerequisites = {
	--"electric-engine",
	"battery",
	"flying"
}
data.raw.technology["construction-robotics"].prerequisites = {
	"robotics"
}
data.raw.technology["logistic-robotics"].prerequisites = {
	"robotics"
}
data.raw.technology["combat-robotics"].prerequisites = {
	"military-2",
	"robotics"
}
data.raw.technology.engine.prerequisites = {
	"steel-processing",
	"automation-2",
	"oil-processing"
}
data.raw.technology["electric-engine"].prerequisites = {
	"advanced-electronics"
}
data.raw.technology["oil-processing"].prerequisites = {
	"fluid-handling"
}
data.raw.technology["solar-energy"].prerequisites = {
	"solar-panel-equipment",
}
data.raw.technology["solar-panel-equipment"].prerequisites = {
	"optics",
	"electronics",
	"steel-processing"
}
data.raw.technology["personal-roboport-equipment"].prerequisites = {
	"construction-robotics",
	"modular-armor"
}
data.raw.technology["exoskeleton-equipment"].prerequisites = {
	"electric-engine"
}
data.raw.technology["fusion-reactor-equipment"].prerequisites = {
	"modular-armor"
}
data.raw.technology["power-armor"].unit.ingredients = {
	{
					"science-pack-1",
					1
				},
				{
					"science-pack-2",
					1
				},
				{
					"science-pack-3",
					1
				},
				{
					"military-science-pack",
					1
				}
}

-- 'fix' crafting times
local itemTechlvl = {}
for _,tech in pairs(data.raw.technology) do
	if tech.effects then
		for _,effect in pairs(tech.effects) do
			if effect.type == "unlock-recipe" then
				itemTechlvl[effect.recipe] = #tech.unit.ingredients
			end
		end
	end
end

for _,recipe in pairs(data.raw.recipe) do
	local lvl
	if itemTechlvl[recipe.name] then
		lvl = itemTechlvl[recipe.name] + 1
	else
		lvl = 1
	end
	if recipe.expensive == nil then
		recipe.energy_required = craftTime(countIngredients(recipe.name, recipe.ingredients), lvl)
	else
		recipe.expensive.energy_required = craftTime(countIngredients(recipe.name, recipe.expensive.ingredients), lvl)
		recipe.normal.energy_required = craftTime(countIngredients(recipe.name, recipe.normal.ingredients), lvl)
	end
end