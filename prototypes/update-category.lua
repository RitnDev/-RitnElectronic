local RitnProtoRecipe = require(ritnlib.defines.class.prototype.recipe)
local RitnSubgroup = require(ritnlib.defines.class.prototype.subgroup)
--------------------------------------------------------------------------------------------
-- Update recipe category :

local items = {
    "electronic-circuit",
    "advanced-circuit",
    "processing-unit",
    "rocket-control-unit",
    "logistic-robot",
    "construction-robot",
    "logistic-chest-active-provider",
    "logistic-chest-passive-provider",
    "logistic-chest-storage",
    "logistic-chest-buffer",
    "logistic-chest-requester",
    "flying-robot-frame",
    "roboport",
    "red-wire",
    "green-wire",
    "arithmetic-combinator",
    "decider-combinator",
    "constant-combinator",
    "power-switch",
    "programmable-speaker",
    "speed-module",
    "effectivity-module",
    "productivity-module",
    "speed-module-2",
    "effectivity-module-2",
    "productivity-module-2",
    "speed-module-3",
    "effectivity-module-3",
    "productivity-module-3",
    "defender-capsule",
    "distractor-capsule",
    "destroyer-capsule",
    "discharge-defense-remote",
    "artillery-targeting-remote",
    "solar-panel-equipment",
    "fusion-reactor-equipment",
    "energy-shield-equipment",
    "energy-shield-mk2-equipment",
    "night-vision-equipment",
    "personal-laser-defense-equipment",
    "discharge-defense-equipment",
    "exoskeleton-equipment",
    "personal-roboport-equipment",
    "personal-roboport-mk2-equipment",
    "belt-immunity-equipment",
    "satellite",
    "spidertron-remote"
}


for _,item in pairs(items) do
    RitnProtoRecipe(item):changePrototype("category", "ritn-electronics") 
end



--Change subgroup
RitnProtoRecipe("electronic-circuit"):changeSubgroup("electronic-product-base")
RitnProtoRecipe("advanced-circuit"):changeSubgroup("electronic-product-base")
RitnProtoRecipe("processing-unit"):changeSubgroup("electronic-product-base")

RitnProtoRecipe("small-lamp"):changeSubgroup("ritn-circuit-network")
RitnProtoRecipe("red-wire"):changeSubgroup("ritn-circuit-network")
RitnProtoRecipe("green-wire"):changeSubgroup("ritn-circuit-network")
RitnProtoRecipe("arithmetic-combinator"):changeSubgroup("ritn-circuit-network")
RitnProtoRecipe("decider-combinator"):changeSubgroup("ritn-circuit-network")
RitnProtoRecipe("constant-combinator"):changeSubgroup("ritn-circuit-network")
RitnProtoRecipe("power-switch"):changeSubgroup("ritn-circuit-network")
RitnProtoRecipe("programmable-speaker"):changeSubgroup("ritn-circuit-network")

RitnProtoRecipe("flying-robot-frame"):changeSubgroup("ritn-logistic-network")
RitnProtoRecipe("logistic-robot"):changeSubgroup("ritn-logistic-network")
RitnProtoRecipe("construction-robot"):changeSubgroup("ritn-logistic-network")
RitnProtoRecipe("logistic-chest-passive-provider"):changeSubgroup("ritn-logistic-network")
RitnProtoRecipe("logistic-chest-active-provider"):changeSubgroup("ritn-logistic-network")
RitnProtoRecipe("logistic-chest-storage"):changeSubgroup("ritn-logistic-network")
RitnProtoRecipe("logistic-chest-buffer"):changeSubgroup("ritn-logistic-network")
RitnProtoRecipe("logistic-chest-requester"):changeSubgroup("ritn-logistic-network")
RitnProtoRecipe("roboport"):changeSubgroup("ritn-logistic-network")

RitnProtoRecipe("speed-module"):changeSubgroup("ritn-module")
RitnProtoRecipe("speed-module-2"):changeSubgroup("ritn-module")
RitnProtoRecipe("speed-module-3"):changeSubgroup("ritn-module")
RitnProtoRecipe("effectivity-module"):changeSubgroup("ritn-module")
RitnProtoRecipe("effectivity-module-2"):changeSubgroup("ritn-module")
RitnProtoRecipe("effectivity-module-3"):changeSubgroup("ritn-module")
RitnProtoRecipe("productivity-module"):changeSubgroup("ritn-module")
RitnProtoRecipe("productivity-module-2"):changeSubgroup("ritn-module")
RitnProtoRecipe("productivity-module-3"):changeSubgroup("ritn-module")

RitnProtoRecipe("rocket-control-unit"):changeSubgroup("ritn-space")
RitnProtoRecipe("satellite"):changeSubgroup("ritn-space")

----------------------------------------------------------------------------------------------------


-- RitnWaterfill
RitnSubgroup("terrain"):changeOrder("t")


-- vehicleWagon
RitnProtoRecipe("vehicle-wagon"):changeSubgroup("train-transport")
RitnProtoRecipe("winch"):changeSubgroup("train-transport")


--Dectorio
RitnProtoRecipe("dect-small-lamp-glow"):changeSubgroup("ritn-circuit-network")
RitnSubgroup("landscaping-trees"):changeGroup("lumberjack")

--LargerLamp
RitnProtoRecipe("deadlock-large-lamp"):changeSubgroup("ritn-circuit-network"):changePrototype("category", "ritn-electronics")
RitnProtoRecipe("deadlock-floor-lamp"):changeSubgroup("ritn-circuit-network"):changePrototype("category", "ritn-electronics")


--NixieTube
RitnProtoRecipe("SNTD-old-nixie-tube"):changeSubgroup("ritn-circuit-network"):changePrototype("category", "ritn-electronics")
RitnProtoRecipe("SNTD-nixie-tube-small"):changeSubgroup("ritn-circuit-network"):changePrototype("category", "ritn-electronics")
RitnProtoRecipe("SNTD-nixie-tube"):changeSubgroup("ritn-circuit-network"):changePrototype("category", "ritn-electronics")


--AutomaticTrainPainter
RitnProtoRecipe("manual-color-module"):changeSubgroup("ritn-module")
RitnProtoRecipe("manual-color-module"):changePrototype("category", "ritn-electronics")
