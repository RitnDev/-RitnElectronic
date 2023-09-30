local RitnProtoTech = require(ritnlib.defines.class.prototype.tech)
local RitnProtoItem = require(ritnlib.defines.class.prototype.item)
local RitnProtoRecipe = require(ritnlib.defines.class.prototype.recipe)
local RitnSubgroup = require(ritnlib.defines.class.prototype.subgroup)
--------------------------------------------------------------------------------------------

RitnProtoTech("lumberjack-electric-energy-distribution-2"):removePack("logistic-science-pack")
RitnProtoTech("lumberjack-electric-energy-distribution-3"):addPrerequisite("tech-advanced-electronics-production")
RitnProtoItem("creative-mod_energy-absorption"):changeSubgroup("creative-mod_signal")

-- Mod Actif : text plates
RitnSubgroup("textplates"):changeGroup("intermediate-products", "z-a-b")

-- Mod Actif : display plates
RitnSubgroup("display-plates"):changeGroup("intermediate-products", "z-b-a")

-- Mod Actif : RitnTeleporter
RitnSubgroup("ritn-teleportation"):changeGroup("ritn-electronic", "j-a-a")

-- Mod Actif : earlier-teleporters
if ritnmods.electronic.earlier.teleporters then 
    local teleporter = RitnProtoTech("teleporter")
    teleporter:replacePack("automation-science-pack", "electronic-science-pack")
    teleporter:removePrerequisite("automation"):addPrerequisite("electronics")
    RitnProtoRecipe("teleporter"):changePrototype("category", "ritn-electronics")
end
