data:extend({


    --electronic-circuit-module
    {
        --item
        type = "item",
        name = "electronic-circuit-module",
        icon = "__RitnElectronic__/graphics/icons/EC-module.png",
        icon_size = 64, icon_mipmaps = 2,
        subgroup = "electronic-product",
        order = "a[electronic-circuit-module]",
        stack_size = 200,
    },
    {
        --recipe
        type = "recipe",
        name = "recipe-electronic-circuit-module",
        energy_required = 0.5,
        enabled = false,
        category = "ritn-electronics",
        ingredients =
        {
            {type="item", name="electronic-circuit", amount=4},
            {type="item", name="copper-cable", amount=3},
            {type="item", name="iron-plate", amount=1},
        },
        result = "electronic-circuit-module",
        result_count = 1
    }


})