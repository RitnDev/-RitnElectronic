data:extend({


    --advanced-circuit-module
    {
        --item
        type = "item",
        name = "advanced-circuit-module",
        icon = "__RitnElectronic__/graphics/icons/ECA-module.png",
        icon_size = 64, icon_mipmaps = 2,
        subgroup = "advanced-electronic-product",
        order = "a[advanced-circuit-module]",
        stack_size = 200,
    },
    {
        --recipe
        type = "recipe",
        name = "recipe-advanced-circuit-module",
        energy_required = 6,
        enabled = false,
        category = "ritn-electronics",
        ingredients =
        {
            {type="item", name="electronic-circuit-module", amount=1},
            {type="item", name="advanced-circuit", amount=1},
            {type="item", name="copper-cable", amount=4},
            {type="item", name="plastic-bar", amount=2},
        },
        result = "advanced-circuit-module",
        result_count = 1
    }


})