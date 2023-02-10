local pack = util.table.deepcopy(data.raw["tool"]["logistic-science-pack"])
local icons = {}

if pack.icon ~= nil then
    icons = 
    {
        {
        icon = pack.icon,
        icon_size = pack.icon_size,
        icon_mipmaps = pack.icon_mipmaps,
        },
    }
else
    icons = 
    {
        {
        icon = "__base__/graphics/icons/logistic-science-pack.png",
        icon_size = 64,
        icon_mipmaps = 4,
        },
    }
end

data:extend({


    --electronic-science-pack
    {
        --item
        type = "tool",
        name = "electronic-science-pack",
        icons = icons,
        subgroup = "science-pack",
        order = "a-c-a",
        stack_size = 200,
        durability = 1
    },
    {
        --recipe
        type = "recipe",
        name = "electronic-science-pack",
        energy_required = 5,
        enabled = true,
        ingredients =
        {
            {type="item", name="lab", amount=1},
        },
        result = "electronic-science-pack",
        result_count = 2,
        crafting_machine_tint = --Vert
        {
            primary = {r = 0.268, g = 0.723, b = 0.223, a = 1.000},
            secondary = {r = 0.432, g = 0.793, b = 0.386, a = 1.000},
            tertiary = {r = 0.323, g = 0.717, b = 0.043, a = 1.000},
            quaternary = {r = 0.400, g = 0.823, b = 0.099, a = 1.000},
        },
    }


})


--Add Electronic-science-pack
local index = 2
for i, tool in pairs(data.raw["lab"]["lab"].inputs) do
    if tool == "automation-science-pack" then
        index = i + 1
    end
    if tool == "mechanic-science-pack" then
        index = i + 1
    end
end
table.insert(data.raw["lab"]["lab"].inputs, index, "electronic-science-pack")