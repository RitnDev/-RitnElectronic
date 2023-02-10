-- INITIALIZE
--------------------------------------------------------------------------------------------
local RitnProtoTech = require(ritnlib.defines.class.prototype.tech)
local RitnProtoRecipe = require(ritnlib.defines.class.prototype.recipe)
--------------------------------------------------------------------------------------------
--Replace Pack Science (Jeu de base - Vanilla) 
for _, tech in pairs(data.raw.technology) do
    RitnProtoTech(tech.name):replacePack("logistic-science-pack", "electronic-science-pack")
end

RitnProtoTech:removePackLab("logistic-science-pack")
RitnProtoRecipe("logistic-science-pack"):disable("tool")


-- disabled vanilla recipe
RitnProtoRecipe("radar"):setEnabled(false)
RitnProtoRecipe("electronic-circuit"):setEnabled(false)
RitnProtoRecipe("inserter"):setEnabled(false)
RitnProtoRecipe("electric-mining-drill"):setEnabled(false)
RitnProtoRecipe("repair-pack"):setEnabled(false)
