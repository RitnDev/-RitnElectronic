data:extend({


    --advanced-circuit-production
    {
        --item
        type = "item",
        name = "advanced-circuit-production",
        icon = "__RitnElectronic__/graphics/icons/ECA-production.png",
        icon_size = 64, icon_mipmaps = 2,
        subgroup = "advanced-electronic-product",
        order = "b[advanced-circuit-production]",
        stack_size = 200,
    },
    {
        --recipe
        type = "recipe",
        name = "recipe-advanced-circuit-production",
        energy_required = 6,
        enabled = false,
        category = "ritn-electronics",
        ingredients =
        {
            {type="item", name="electronic-circuit-production", amount=1},
            {type="item", name="advanced-circuit", amount=1},
            {type="item", name="copper-cable", amount=4},
            {type="item", name="plastic-bar", amount=2},
        },
        result = "advanced-circuit-production",
        result_count = 1
    }


})