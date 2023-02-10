-- INITIALIZE
-----------------------------------------------------------------
if not ritnlib then require("__RitnLib__/defines") end
local RitnProtoItem = require(ritnlib.defines.class.prototype.item)
local RitnProtoTech = require(ritnlib.defines.class.prototype.tech)
local RitnProtoRecipe = require(ritnlib.defines.class.prototype.recipe)
-----------------------------------------------------------------
if not ritnmods then ritnmods = {} end
if not ritnmods.electronic then ritnmods.electronic = {
    aaiIndustry = false,
    afraidOfTheDark = false,
    LargerLamp = false,
    vehicleWagon = false,
    earlier = {
        teleporters = false
    }
} 
end

-------------------------------------------------------------------------------------------
-- activation des options 
if mods["aai-industry"] then ritnmods.electronic.aaiIndustry = true end
if mods["AfraidOfTheDark"] then ritnmods.electronic.afraidOfTheDark = true end
if mods["DeadlockLargerLamp"] then ritnmods.electronic.LargerLamp = true end
if mods["VehicleWagon2"] then ritnmods.electronic.vehicleWagon = true end
if mods["earlier-teleporters"] then ritnmods.electronic.earlier.teleporters = true end
-------------------------------------------------------------------------------------------
-- Requires :
require("prototypes.category")
require("prototypes.items")
require("prototypes.technology")
require("prototypes.gui")
--------------------------------------
-- Update category
require("prototypes.update-category")
-- Update recipes
require("prototypes.update-recipes")
-- Update Technologies
require("prototypes.update-technology")
--------------------------------------
RitnProtoItem("lab"):changePrototype("stack_size", 50)
RitnProtoItem("automation-science-pack"):changePrototype("order", "a-b-a")
RitnProtoTech("electronics"):changePrototype("order", "a-a-a2")
--------------------------------------
-- require - options mods :
--------------------------------------
-- Mod Actif : RitnLogo
RitnProtoTech("ritnlogo-tech"):removePrerequisite("advanced-electronics"):removePack("logistic-science-pack")
RitnProtoRecipe("ritnlogo"):changeSubgroup("ritn-logo", "ba")
RitnProtoRecipe("pistache"):changeSubgroup("ritn-logo", "bb")
RitnProtoItem("mitche"):changeSubgroup("ritn-logo", "bc")
--------------------------------------
-- Mod Actif : CommuLogo
local commulogoTech = RitnProtoTech("commulogo-tech")
commulogoTech:removePrerequisite("advanced-electronics")
commulogoTech:removePack("logistic-science-pack"):addPack("electronic-science-pack")

RitnProtoRecipe("commulogo"):changeSubgroup("ritn-logo", "aa")
RitnProtoRecipe("bigcommulogo"):changeSubgroup("ritn-logo", "ab")
--------------------------------------
-- Mod Actif : Vehicle Wagon 2
RitnProtoTech("vehicle-wagons"):removePack("logistic-science-pack"):multipliedPack(2)
--------------------------------------
-- Mod Actif : AfraidOfTheDark
if ritnmods.electronic.afraidOfTheDark then 
    if ritnmods.electronic.LargerLamp then 
        -- incompatibility
        local str_error = "Mods incompatibles : afraidOfTheDark or DeadlockLargerLamp -> select only one !"
        error(str_error)
    end
end

RitnProtoTech("optics"):removeRecipe("balloon-light"):removeRecipe("short-balloon-light")
RitnProtoTech("night-vision-equipment"):removeRecipe("perfect-night-glasses")
--------------------------------------




