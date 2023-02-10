data:extend({


    --electronic-circuit-production
    {
        --item
        type = "item",
        name = "electronic-circuit-production",
        icon = "__RitnElectronic__/graphics/icons/EC-production.png",
        icon_size = 64, icon_mipmaps = 2,
        subgroup = "electronic-product",
        order = "b[electronic-circuit-production]",
        stack_size = 200,
    },
    {
        --recipe
        type = "recipe",
        name = "recipe-electronic-circuit-production",
        energy_required = 0.5,
        enabled = false,
        category = "ritn-electronics",
        ingredients =
        {
            {type="item", name="electronic-circuit", amount=2},
            {type="item", name="copper-cable", amount=3},
            {type="item", name="iron-plate", amount=1},
        },
        result = "electronic-circuit-production",
        result_count = 1
    }


})