-- module.disco-science
----------------------------------------------------------------
local function updateDiscoScience()
    RitnLibEvent.setIngredientColor("electronic-science-pack", {r = 0.1, g = 1.0, b = 0.1})
end
----------------------------------------------------------------
script.on_configuration_changed(updateDiscoScience)
script.on_init(updateDiscoScience)
----------------------------------------------------------------
