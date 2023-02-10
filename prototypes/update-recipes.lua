local RitnProtoRecipe = require(ritnlib.defines.class.prototype.recipe)
--------------------------------------------------------------------------------------------


--electric-furnace
local result = pcall(function() RitnProtoRecipe("electric-furnace"):addIngredient({type = "item", name = "steel-furnace", amount = 1}) end)
if result == false then 
    RitnProtoRecipe("electric-furnace"):addNewIngredient({type = "item", name = "steel-furnace", amount = 1})
end
RitnProtoRecipe("electric-furnace"):setIngredient({type = "item", name = "steel-plate", amount = 4})


--New recipe for RitnElectronic
local recipeModule = RitnProtoRecipe("speed-module"):removeAllIngredient()
recipeModule:addIngredient({"advanced-circuit-module", 1})
recipeModule:addIngredient({"electronic-circuit-module", 1})

local recipeModule2 = RitnProtoRecipe("speed-module-2"):removeAllIngredient()
recipeModule2:addIngredient({"speed-module", 4})
recipeModule2:addIngredient({"advanced-circuit-module", 1})
recipeModule2:addIngredient({"processing-unit", 5})

local recipeModule3 = RitnProtoRecipe("speed-module-3"):removeAllIngredient()
recipeModule3:addIngredient({"speed-module-2", 5})
recipeModule3:addIngredient({"advanced-circuit-module", 1})
recipeModule3:addIngredient({"processing-unit", 5})

recipeModule = RitnProtoRecipe("productivity-module"):removeAllIngredient()
recipeModule:addIngredient({"advanced-circuit-module", 1})
recipeModule:addIngredient({"electronic-circuit-module", 1})

recipeModule2 = RitnProtoRecipe("productivity-module-2"):removeAllIngredient()
recipeModule2:addIngredient({"productivity-module", 4})
recipeModule2:addIngredient({"advanced-circuit-module", 1})
recipeModule2:addIngredient({"processing-unit", 5})

recipeModule3 = RitnProtoRecipe("productivity-module-3"):removeAllIngredient()
recipeModule3:addIngredient({"productivity-module-2", 5})
recipeModule3:addIngredient({"advanced-circuit-module", 1})
recipeModule3:addIngredient({"processing-unit", 5})

recipeModule = RitnProtoRecipe("effectivity-module"):removeAllIngredient()
recipeModule:addIngredient({"advanced-circuit-module", 1})
recipeModule:addIngredient({"electronic-circuit-module", 1})

recipeModule2 = RitnProtoRecipe("effectivity-module-2"):removeAllIngredient()
recipeModule2:addIngredient({"effectivity-module", 4})
recipeModule2:addIngredient({"advanced-circuit-module", 1})
recipeModule2:addIngredient({"processing-unit", 5})

recipeModule3 = RitnProtoRecipe("effectivity-module-3"):removeAllIngredient()
recipeModule3:addIngredient({"effectivity-module-2", 5})
recipeModule3:addIngredient({"advanced-circuit-module", 1})
recipeModule3:addIngredient({"processing-unit", 5})


RitnProtoRecipe("landfill"):removeIngredient("stone")
RitnProtoRecipe("electric-furnace"):removeIngredient("stone-brick")
RitnProtoRecipe("recipe-miner-mk2"):removeIngredient("electronic-circuit")
RitnProtoRecipe("lab"):removeIngredient("electronic-circuit")
RitnProtoRecipe("offshore-pump"):removeIngredient("electronic-circuit")
RitnProtoRecipe("splitter"):removeIngredient("electronic-circuit")
RitnProtoRecipe("fast-splitter"):removeIngredient("electronic-circuit")
RitnProtoRecipe("express-splitter"):removeIngredient("advanced-circuit")
RitnProtoRecipe("electric-engine-unit"):removeIngredient("electronic-circuit")
RitnProtoRecipe("inserter"):removeIngredient("electronic-circuit")
RitnProtoRecipe("fast-inserter"):removeIngredient("electronic-circuit")
RitnProtoRecipe("filter-inserter"):removeIngredient("electronic-circuit")
RitnProtoRecipe("stack-inserter"):removeIngredient("electronic-circuit")
RitnProtoRecipe("stack-filter-inserter"):removeIngredient("electronic-circuit")
RitnProtoRecipe("pump"):removeIngredient("electronic-circuit")
RitnProtoRecipe("solar-panel"):removeIngredient("electronic-circuit")
RitnProtoRecipe("electric-mining-drill"):removeIngredient("electronic-circuit")
RitnProtoRecipe("pumpjack"):removeIngredient("electronic-circuit")
RitnProtoRecipe("beacon"):removeIngredient("electronic-circuit")
RitnProtoRecipe("beacon"):removeIngredient("advanced-circuit")
RitnProtoRecipe("train-stop"):removeIngredient("electronic-circuit")
RitnProtoRecipe("rail-signal"):removeIngredient("electronic-circuit")
RitnProtoRecipe("rail-chain-signal"):removeIngredient("electronic-circuit")
RitnProtoRecipe("locomotive"):removeIngredient("electronic-circuit")
RitnProtoRecipe("artillery-wagon"):removeIngredient("advanced-circuit")
RitnProtoRecipe("tank"):removeIngredient("advanced-circuit")
RitnProtoRecipe("substation"):removeIngredient("advanced-circuit")
RitnProtoRecipe("nuclear-reactor"):removeIngredient("advanced-circuit")
RitnProtoRecipe("electric-furnace"):removeIngredient("advanced-circuit")
RitnProtoRecipe("assembling-machine-1"):removeIngredient("electronic-circuit")
RitnProtoRecipe("assembling-machine-2"):removeIngredient("electronic-circuit")
RitnProtoRecipe("oil-refinery"):removeIngredient("electronic-circuit")
RitnProtoRecipe("chemical-plant"):removeIngredient("electronic-circuit")
RitnProtoRecipe("centrifuge"):removeIngredient("advanced-circuit")
RitnProtoRecipe("flying-robot-frame"):removeIngredient("electronic-circuit")
RitnProtoRecipe("rocket-launcher"):removeIngredient("electronic-circuit")
RitnProtoRecipe("rocket"):removeIngredient("electronic-circuit")
RitnProtoRecipe("poison-capsule"):removeIngredient("electronic-circuit")
RitnProtoRecipe("slowdown-capsule"):removeIngredient("electronic-circuit")
RitnProtoRecipe("defender-capsule"):removeIngredient("electronic-circuit")
RitnProtoRecipe("distractor-capsule"):removeIngredient("advanced-circuit")
RitnProtoRecipe("modular-armor"):removeIngredient("advanced-circuit")
RitnProtoRecipe("power-armor"):removeIngredient("electric-engine-unit")
RitnProtoRecipe("power-armor-mk2"):removeIngredient("electric-engine-unit")
RitnProtoRecipe("energy-shield-equipment"):removeIngredient("advanced-circuit")
RitnProtoRecipe("night-vision-equipment"):removeIngredient("advanced-circuit")
RitnProtoRecipe("gate"):removeIngredient("electronic-circuit")
RitnProtoRecipe("laser-turret"):removeIngredient("electronic-circuit")
RitnProtoRecipe("radar"):removeIngredient("electronic-circuit")
RitnProtoRecipe("artillery-turret"):removeIngredient("advanced-circuit")


RitnProtoRecipe("landfill"):addIngredient({type = "item", name = "stone-crushed", amount = 40})
RitnProtoRecipe("pump"):addIngredient({type = "item", name = "electronic-circuit", amount = 1})
RitnProtoRecipe("lab"):addIngredient({type = "item", name = "copper-cable", amount = 30})
RitnProtoRecipe("offshore-pump"):addIngredient({type = "item", name = "copper-cable", amount = 6})
RitnProtoRecipe("splitter"):addIngredient({type="item", name="electronic-circuit-production", amount=2})
RitnProtoRecipe("fast-splitter"):addIngredient({type="item", name="electronic-circuit-production", amount=3})
RitnProtoRecipe("express-splitter"):addIngredient({type="item", name="advanced-circuit-production", amount=10})
RitnProtoRecipe("electric-engine-unit"):addIngredient({type="item", name="electronic-circuit-engine", amount=1})
RitnProtoRecipe("inserter"):addIngredient({type="item", name="electronic-circuit-inserter", amount=1})
RitnProtoRecipe("fast-inserter"):addIngredient({type="item", name="electronic-circuit-inserter", amount=2})
RitnProtoRecipe("filter-inserter"):addIngredient({type="item", name="electronic-circuit-inserter", amount=4})
RitnProtoRecipe("stack-inserter"):addIngredient({type="item", name="electronic-circuit-inserter", amount=15})
RitnProtoRecipe("stack-filter-inserter"):addIngredient({type="item", name="electronic-circuit-inserter", amount=5})
RitnProtoRecipe("pump"):addIngredient({type="item", name="electronic-circuit-engine", amount=1})
RitnProtoRecipe("beacon"):addIngredient({type="item", name="electronic-circuit-module", amount=4})
RitnProtoRecipe("train-stop"):addIngredient({type="item", name="electronic-circuit-ferroviaire", amount=5})
RitnProtoRecipe("rail-signal"):addIngredient({type="item", name="electronic-circuit-ferroviaire", amount=1})
RitnProtoRecipe("rail-chain-signal"):addIngredient({type="item", name="electronic-circuit-ferroviaire", amount=1})
RitnProtoRecipe("locomotive"):addIngredient({type="item", name="electronic-circuit-ferroviaire", amount=5})
RitnProtoRecipe("locomotive"):addIngredient({type="item", name="electronic-circuit-engine", amount=2})
RitnProtoRecipe("solar-panel"):addIngredient({type="item", name="electronic-circuit-production", amount=5})
RitnProtoRecipe("electric-mining-drill"):addIngredient({type="item", name="electronic-circuit-production", amount=1})
RitnProtoRecipe("pumpjack"):addIngredient({type="item", name="electronic-circuit-production", amount=2})
RitnProtoRecipe("assembling-machine-1"):addIngredient({type="item", name="electronic-circuit-production", amount=1})
RitnProtoRecipe("assembling-machine-2"):addIngredient({type="item", name="electronic-circuit-production", amount=1})
RitnProtoRecipe("oil-refinery"):addIngredient({type="item", name="electronic-circuit-production", amount=3})
RitnProtoRecipe("chemical-plant"):addIngredient({type="item", name="electronic-circuit-production", amount=2})
RitnProtoRecipe("flying-robot-frame"):addIngredient({type="item", name="electronic-circuit-production", amount=1})
RitnProtoRecipe("rocket-launcher"):addIngredient({type="item", name="electronic-circuit-military", amount=3})
RitnProtoRecipe("rocket"):addIngredient({type="item", name="electronic-circuit-military", amount=1})
RitnProtoRecipe("poison-capsule"):addIngredient({type="item", name="electronic-circuit-military", amount=1})
RitnProtoRecipe("slowdown-capsule"):addIngredient({type="item", name="electronic-circuit-military", amount=1})
RitnProtoRecipe("defender-capsule"):addIngredient({type="item", name="electronic-circuit-military", amount=1})
RitnProtoRecipe("gate"):addIngredient({type="item", name="electronic-circuit-engine", amount=1})
RitnProtoRecipe("laser-turret"):addIngredient({type="item", name="electronic-circuit-military", amount=5})
RitnProtoRecipe("flamethrower-turret"):addIngredient({type="item", name="electronic-circuit-military", amount=1})
RitnProtoRecipe("radar"):addIngredient({type="item", name="electronic-circuit-military", amount=2})
RitnProtoRecipe("artillery-turret"):addIngredient({type="item", name="electronic-circuit-engine", amount=5})
RitnProtoRecipe("beacon"):addIngredient({type="item", name="advanced-circuit-module", amount=4})
RitnProtoRecipe("artillery-wagon"):addIngredient({type="item", name="electronic-circuit-ferroviaire", amount=5})
RitnProtoRecipe("artillery-wagon"):addIngredient({type="item", name="advanced-circuit-military", amount=5})
RitnProtoRecipe("tank"):addIngredient({type="item", name="advanced-circuit-military", amount=5})
RitnProtoRecipe("tank"):addIngredient({type="item", name="electronic-circuit-engine", amount=5})
RitnProtoRecipe("substation"):addIngredient({type="item", name="advanced-circuit-production", amount=5})
RitnProtoRecipe("nuclear-reactor"):addIngredient({type="item", name="advanced-circuit-production", amount=400})
RitnProtoRecipe("electric-furnace"):addIngredient({type="item", name="advanced-circuit-production", amount=5})
RitnProtoRecipe("centrifuge"):addIngredient({type="item", name="advanced-circuit-production", amount=35})
RitnProtoRecipe("distractor-capsule"):addIngredient({type="item", name="advanced-circuit-military", amount=1})
RitnProtoRecipe("energy-shield-equipment"):addIngredient({type="item", name="advanced-circuit-military", amount=2})
RitnProtoRecipe("night-vision-equipment"):addIngredient({type="item", name="advanced-circuit-military", amount=2})
RitnProtoRecipe("artillery-turret"):addIngredient({type="item", name="advanced-circuit-military", amount=5})
RitnProtoRecipe("modular-armor"):addIngredient({type="item", name="advanced-circuit-military", amount=10})
RitnProtoRecipe("power-armor"):addIngredient({type="item", name="advanced-circuit-military", amount=20})
RitnProtoRecipe("power-armor"):addIngredient({type="item", name="iron-gear-wheel", amount=20})
RitnProtoRecipe("power-armor"):addIngredient({type="item", name="iron-plate", amount=20})
RitnProtoRecipe("bi-bio-cannon"):addIngredient({type="item", name="advanced-circuit-military", amount=1})


RitnProtoRecipe("recipe-miner-mk2"):addNewIngredient({type="item", name="electronic-circuit-production", amount=1})

if not ritnmods.electronic.aaiIndustry then
    RitnProtoRecipe("power-armor-mk2"):addIngredient({type="item", name="power-armor", amount=1})
end

RitnProtoRecipe("power-armor"):setIngredient({type="item", name="steel-plate", amount=60})
RitnProtoRecipe("power-armor-mk2"):setIngredient({type="item", name="processing-unit", amount=20})


--Dectorio
RitnProtoRecipe("dect-traffic-bollard"):disable()
RitnProtoRecipe("dect-base-water"):disable()
RitnProtoRecipe("dect-base-deepwater"):disable()
RitnProtoRecipe("dect-base-water-green"):disable()
RitnProtoRecipe("dect-base-deepwater-green"):disable()
