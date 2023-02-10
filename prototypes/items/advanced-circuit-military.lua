data:extend({


    --advanced-circuit-military
    {
        --item
        type = "item",
        name = "advanced-circuit-military",
        icon = "__RitnElectronic__/graphics/icons/ECA-military.png",
        icon_size = 64, icon_mipmaps = 2,
        subgroup = "advanced-electronic-product",
        order = "c[advanced-circuit-military]",
        stack_size = 200,
    },
    {
        --recipe
        type = "recipe",
        name = "recipe-advanced-circuit-military",
        energy_required = 6,
        enabled = false,
        category = "ritn-electronics",
        ingredients =
        {
            {type="item", name="electronic-circuit-military", amount=1},
            {type="item", name="advanced-circuit", amount=1},
            {type="item", name="copper-cable", amount=4},
            {type="item", name="plastic-bar", amount=2},
        },
        result = "advanced-circuit-military",
        result_count = 1
    }


})