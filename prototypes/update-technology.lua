local RitnProtoTech = require(ritnlib.defines.class.prototype.tech)
--------------------------------------------------------------------------------------------
-- update technology


--Disable Technology
RitnProtoTech("logistic-science-pack"):disable()
RitnProtoTech("dect-earthworks"):disable(true)

--Add Recipe Unlock
RitnProtoTech("advanced-electronics-2"):addRecipe("recipe-welding-machine-mk2")
RitnProtoTech("military-science-pack"):addRecipe("poison-capsule")
RitnProtoTech("military-science-pack"):addRecipe("slowdown-capsule")
RitnProtoTech("oil-processing"):addRecipe("pump")

-- New technology electronics
RitnProtoTech("electronics"):addRecipe("electronic-circuit")
RitnProtoTech("tech-electronics-inserter"):addRecipe("inserter")
RitnProtoTech("tech-electronics-inserter"):addRecipe("long-handed-inserter")
RitnProtoTech("electronics"):addRecipe("recipe-welding-machine-mk1")
RitnProtoTech("tech-electronics-production"):addRecipe("electric-mining-drill")
RitnProtoTech("tech-electronics-production"):addRecipe("splitter")
RitnProtoTech("tech-electronics-military"):addRecipe("radar")

--Remove Recipe Unlock
RitnProtoTech("automation"):removeRecipe("long-handed-inserter")
RitnProtoTech("fluid-handling"):removeRecipe("pump")
RitnProtoTech("military-3"):removeRecipe("poison-capsule")
RitnProtoTech("military-3"):removeRecipe("slowdown-capsule")
RitnProtoTech("logistics"):removeRecipe("splitter")

--Remove prerequisite :
RitnProtoTech("electronics"):removePrerequisite("automation")
RitnProtoTech("solar-energy"):removePrerequisite("electronics")
RitnProtoTech("automation-2"):removePrerequisite("electronics")
RitnProtoTech("fast-inserter"):removePrerequisite("electronics")
RitnProtoTech("electric-energy-distribution-1"):removePrerequisite("electronics")
RitnProtoTech("automation-2"):removePrerequisite("logistic-science-pack")
RitnProtoTech("electric-energy-distribution-1"):removePrerequisite("logistic-science-pack")
RitnProtoTech("circuit-network"):removePrerequisite("logistic-science-pack")
RitnProtoTech("solar-energy"):removePrerequisite("logistic-science-pack")
RitnProtoTech("logistics-2"):removePrerequisite("logistic-science-pack")
RitnProtoTech("engine"):removePrerequisite("logistic-science-pack")
RitnProtoTech("toolbelt"):removePrerequisite("logistic-science-pack")
RitnProtoTech("advanced-material-processing"):removePrerequisite("logistic-science-pack")
RitnProtoTech("military-2"):removePrerequisite("logistic-science-pack")
RitnProtoTech("fluid-handling"):removePrerequisite("automation-2")
RitnProtoTech("fluid-handling"):removePrerequisite("engine")
RitnProtoTech("lubricant"):removePrerequisite("oil-processing")
RitnProtoTech("flammables"):removePrerequisite("oil-processing")
RitnProtoTech("laser"):removePrerequisite("battery")
RitnProtoTech("chemical-science-pack"):removePrerequisite("sulfur-processing")
RitnProtoTech("modular-armor"):removePrerequisite("advanced-electronics")
RitnProtoTech("modules"):removePrerequisite("advanced-electronics")
RitnProtoTech("mining-productivity-1"):removePrerequisite("advanced-electronics")
RitnProtoTech("advanced-electronics-2"):removePrerequisite("chemical-science-pack")
RitnProtoTech("effect-transmission"):removePrerequisite("advanced-electronics-2")
RitnProtoTech("logistics-2"):removePrerequisite("logistics")


--Add prerequisite :
RitnProtoTech("optics"):addPrerequisite("electronics")
RitnProtoTech("circuit-network"):addPrerequisite("automation")
RitnProtoTech("solar-energy"):addPrerequisite("automation")
RitnProtoTech("automation-2"):addPrerequisite("automation")
RitnProtoTech("toolbelt"):addPrerequisite("steel-processing")
RitnProtoTech("oil-processing"):addPrerequisite("automation-2")
RitnProtoTech("modular-armor"):addPrerequisite("plastics")
RitnProtoTech("modules"):addPrerequisite("plastics")
RitnProtoTech("mining-productivity-1"):addPrerequisite("plastics")
RitnProtoTech("stack-inserter"):addPrerequisite("plastics")
RitnProtoTech("lubricant"):addPrerequisite("chemical-science-pack")
RitnProtoTech("flammables"):addPrerequisite("chemical-science-pack")
RitnProtoTech("fluid-handling"):addPrerequisite("steel-processing")
RitnProtoTech("utility-science-pack"):addPrerequisite("chemical-science-pack")
RitnProtoTech("power-armor"):addPrerequisite("chemical-science-pack")
RitnProtoTech("effect-transmission"):addPrerequisite("chemical-science-pack")
RitnProtoTech("exoskeleton-equipment"):addPrerequisite("chemical-science-pack")
RitnProtoTech("speed-module-2"):addPrerequisite("chemical-science-pack")
RitnProtoTech("productivity-module-2"):addPrerequisite("chemical-science-pack")
RitnProtoTech("effectivity-module-2"):addPrerequisite("chemical-science-pack")
RitnProtoTech("advanced-electronics"):addPrerequisite("electronics")
RitnProtoTech("advanced-electronics-2"):addPrerequisite("advanced-electronics")
RitnProtoTech("gate"):addPrerequisite("tech-electronics-engine")
RitnProtoTech("railway"):addPrerequisite("tech-electronics-engine")
RitnProtoTech("tank"):addPrerequisite("tech-electronics-engine")
RitnProtoTech("oil-processing"):addPrerequisite("tech-electronics-engine")
RitnProtoTech("electronic-engine"):addPrerequisite("tech-electronics-engine")
RitnProtoTech("railway"):addPrerequisite("tech-electronics-ferroviaire")
RitnProtoTech("fast-inserter"):addPrerequisite("tech-electronics-inserter")
RitnProtoTech("automation"):addPrerequisite("tech-electronics-production")
RitnProtoTech("defender"):addPrerequisite("tech-electronics-military")
RitnProtoTech("flamethrower"):addPrerequisite("tech-electronics-military")
RitnProtoTech("flamethrower"):addPrerequisite("engine")
RitnProtoTech("laser-turet"):addPrerequisite("tech-electronics-military")
RitnProtoTech("military-3"):addPrerequisite("tech-electronics-military")
RitnProtoTech("rocketry"):addPrerequisite("tech-electronics-military")
RitnProtoTech("modules"):addPrerequisite("tech-advanced-electronics-modules")
RitnProtoTech("energy-shield-equipment"):addPrerequisite("tech-advanced-electronics-military")
RitnProtoTech("tank"):addPrerequisite("tech-advanced-electronics-military")
RitnProtoTech("modular-armor"):addPrerequisite("tech-advanced-electronics-military")
RitnProtoTech("distractor"):addPrerequisite("tech-advanced-electronics-military")
RitnProtoTech("advanced-material-processing-2"):addPrerequisite("tech-advanced-electronics-production")
RitnProtoTech("logistics-3"):addPrerequisite("tech-advanced-electronics-production")
RitnProtoTech("uranium-processing"):addPrerequisite("tech-advanced-electronics-production")
RitnProtoTech("tech-electronics-production"):addPrerequisite("logistics")
RitnProtoTech("logistics-2"):addPrerequisite("tech-electronics-production")
RitnProtoTech("bi-tech-bio-cannon"):addPrerequisite("electric-engine")
RitnProtoTech("bi-tech-bio-cannon"):addPrerequisite("tech-advanced-electronics-military")
RitnProtoTech("bi-tech-fertilizer"):addPrerequisite("chemical-science-pack")
RitnProtoTech("coal-liquefaction"):addPrerequisite("bi-tech-coal-processing-2")


--Replace Science Pack
RitnProtoTech("electronics"):replacePack("automation-science-pack", "logistic-science-pack")
RitnProtoTech("electric-energy-accumulators"):replacePack("logistic-science-pack", "chemical-science-pack")
RitnProtoTech("lubricant"):replacePack("logistic-science-pack", "chemical-science-pack")
RitnProtoTech("flamethrower"):replacePack("logistic-science-pack", "chemical-science-pack")
RitnProtoTech("bi-tech-fertilizer"):replacePack("logistic-science-pack", "chemical-science-pack")
RitnProtoTech("cliff-explosives"):replacePack("logistic-science-pack", "chemical-science-pack")


--Add Science pack
RitnProtoTech("automation"):addPack("logistic-science-pack")
RitnProtoTech("optics"):addPack("logistic-science-pack")
RitnProtoTech("fast-inserter"):addPack("logistic-science-pack")
RitnProtoTech("battery"):addPack("chemical-science-pack")
RitnProtoTech("battery-equipment"):addPack("chemical-science-pack")
RitnProtoTech("robotics"):addPack("chemical-science-pack")
RitnProtoTech("electric-engine"):addPack("chemical-science-pack")
RitnProtoTech("flammables"):addPack("chemical-science-pack")
RitnProtoTech("rocket-fuel"):addPack("chemical-science-pack")
RitnProtoTech("explosives"):addPack("chemical-science-pack")
RitnProtoTech("laser-turrets"):addPack("chemical-science-pack")
RitnProtoTech("land-mine"):addPack("chemical-science-pack")
RitnProtoTech("modules"):addPack("chemical-science-pack")
RitnProtoTech("speed-module"):addPack("chemical-science-pack")
RitnProtoTech("productivity-module"):addPack("chemical-science-pack")
RitnProtoTech("effectivity-module"):addPack("chemical-science-pack")
RitnProtoTech("Improved-iron-ore-extraction-3"):addPack("chemical-science-pack")
RitnProtoTech("Improved-copper-ore-extraction-3"):addPack("chemical-science-pack")
RitnProtoTech("advanced-electronics"):addPack("automation-science-pack")
RitnProtoTech("bi-tech-bio-cannon"):addPack("chemical-science-pack")


--Remove Science Pack
RitnProtoTech("electric-energy-distribution-1"):removePack("logistic-science-pack")
RitnProtoTech("electric-energy-distribution-2"):removePack("logistic-science-pack")
RitnProtoTech("circuit-network"):removePack("automation-science-pack")
RitnProtoTech("engine"):removePack("logistic-science-pack")
RitnProtoTech("toolbelt"):removePack("logistic-science-pack")
RitnProtoTech("advanced-material-processing"):removePack("logistic-science-pack")
RitnProtoTech("military-2"):removePack("logistic-science-pack")
RitnProtoTech("battery"):removePack("automation-science-pack")
RitnProtoTech("battery"):removePack("logistic-science-pack")
RitnProtoTech("battery-equipment"):removePack("logistic-science-pack")
RitnProtoTech("automobilism"):removePack("logistic-science-pack")
RitnProtoTech("fluid-handling"):removePack("logistic-science-pack")
RitnProtoTech("military-3"):removePack("chemical-science-pack")
RitnProtoTech("military-4"):removePack("logistic-science-pack")
RitnProtoTech("uranium-ammo"):removePack("logistic-science-pack")
RitnProtoTech("electric-energy-distribution-1"):removePack("logistic-science-pack")
RitnProtoTech("concrete"):removePack("logistic-science-pack")
RitnProtoTech("flammables"):removePack("automation-science-pack")
RitnProtoTech("flammables"):removePack("logistic-science-pack")
RitnProtoTech("rocket-fuel"):removePack("automation-science-pack")
RitnProtoTech("rocket-fuel"):removePack("logistic-science-pack")
RitnProtoTech("explosives"):removePack("automation-science-pack")
RitnProtoTech("explosives"):removePack("logistic-science-pack")
RitnProtoTech("land-mine"):removePack("logistic-science-pack")
RitnProtoTech("advanced-electronics"):removePack("automation-science-pack")
RitnProtoTech("advanced-electronics-2"):removePack("automation-science-pack")
RitnProtoTech("shale-oil"):removePack("logistic-science-pack")
RitnProtoTech("Improved-iron-ore-extraction-3"):removePack("logistic-science-pack")
RitnProtoTech("Improved-copper-ore-extraction-3"):removePack("logistic-science-pack")
RitnProtoTech("Improved-iron-ore-extraction-4"):removePack("logistic-science-pack")
RitnProtoTech("Improved-copper-ore-extraction-4"):removePack("logistic-science-pack")
RitnProtoTech("Improved-iron-ore-extraction-5"):removePack("logistic-science-pack")
RitnProtoTech("Improved-copper-ore-extraction-5"):removePack("logistic-science-pack")
RitnProtoTech("Improved-iron-ore-extraction-6"):removePack("logistic-science-pack")
RitnProtoTech("Improved-copper-ore-extraction-6"):removePack("logistic-science-pack")
RitnProtoTech("Improved-iron-ore-extraction-7"):removePack("logistic-science-pack")
RitnProtoTech("Improved-copper-ore-extraction-7"):removePack("logistic-science-pack")
RitnProtoTech("Improved-iron-ore-extraction-8"):removePack("logistic-science-pack")
RitnProtoTech("Improved-copper-ore-extraction-8"):removePack("logistic-science-pack")
RitnProtoTech("Improved-iron-ore-extraction-9"):removePack("logistic-science-pack")
RitnProtoTech("Improved-copper-ore-extraction-9"):removePack("logistic-science-pack")
RitnProtoTech("bi-tech-advanced-biotechnology"):removePack("logistic-science-pack")
RitnProtoTech("bi-tech-coal-processing-1"):removePack("logistic-science-pack")
RitnProtoTech("bi-tech-coal-processing-2"):removePack("logistic-science-pack")
RitnProtoTech("bi-tech-coal-processing-3"):removePack("logistic-science-pack")


--Double Automation Science Pack
RitnProtoTech("engine"):multipliedPack(2)
RitnProtoTech("toolbelt"):multipliedPack(2)
RitnProtoTech("advanced-material-processing"):multipliedPack(2)
RitnProtoTech("automobilism"):multipliedPack(2)
RitnProtoTech("fluid-handling"):multipliedPack(2)
RitnProtoTech("concrete"):multipliedPack(2)
RitnProtoTech("circuit-network"):multipliedPack(2)
RitnProtoTech("lubricant"):multipliedPack(2)
RitnProtoTech("flammables"):multipliedPack(2)
RitnProtoTech("military-3"):multipliedPack(2)


--Set Count 
RitnProtoTech("automation"):setCount(50)
RitnProtoTech("logistics"):setCount(10)
RitnProtoTech("electronics"):setCount(10)
RitnProtoTech("turrets"):setCount(50)
RitnProtoTech("stone-walls"):setCount(50)
RitnProtoTech("military"):setCount(50)
RitnProtoTech("military-2"):setCount(75)
RitnProtoTech("military-science-pack"):setCount(100)
RitnProtoTech("optics"):setCount(50)
RitnProtoTech("fast-inserter"):setCount(50)
RitnProtoTech("explosives"):setCount(150)
RitnProtoTech("laser"):setCount(200)
RitnProtoTech("battery"):setCount(200)
RitnProtoTech("automation-2"):setCount(100)
RitnProtoTech("advanced-electronics-2"):setCount(250)
