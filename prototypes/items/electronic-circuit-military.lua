data:extend({


    --electronic-circuit-military
    {
        --item
        type = "item",
        name = "electronic-circuit-military",
        icon = "__RitnElectronic__/graphics/icons/EC-military.png",
        icon_size = 64, icon_mipmaps = 2,
        subgroup = "electronic-product",
        order = "c[electronic-circuit-military]",
        stack_size = 200,
    },
    {
        --recipe
        type = "recipe",
        name = "recipe-electronic-circuit-military",
        energy_required = 0.5,
        enabled = false,
        category = "ritn-electronics",
        ingredients =
        {
            {type="item", name="electronic-circuit", amount=3},
            {type="item", name="copper-cable", amount=2},
            {type="item", name="iron-plate", amount=1},
        },
        result = "electronic-circuit-military",
        result_count = 1
    }


})