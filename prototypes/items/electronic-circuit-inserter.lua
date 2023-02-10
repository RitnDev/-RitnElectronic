data:extend({


    --electronic-circuit-inserter
    {
        --item
        type = "item",
        name = "electronic-circuit-inserter",
        icon = "__RitnElectronic__/graphics/icons/EC-inserter.png",
        icon_size = 64, icon_mipmaps = 2,
        subgroup = "electronic-product",
        order = "d[electronic-circuit-inserter]",
        stack_size = 200,
    },
    {
        --recipe
        type = "recipe",
        name = "recipe-electronic-circuit-inserter",
        energy_required = 0.5,
        enabled = false,
        category = "ritn-electronics",
        ingredients =
        {
            {type="item", name="electronic-circuit", amount=1},
            {type="item", name="copper-cable", amount=2},
        },
        result = "electronic-circuit-inserter",
        result_count = 1
    }


})