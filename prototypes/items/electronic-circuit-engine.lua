data:extend({


    --electronic-circuit-engine
    {
        --item
        type = "item",
        name = "electronic-circuit-engine",
        icon = "__RitnElectronic__/graphics/icons/EC-engine.png",
        icon_size = 64, icon_mipmaps = 2,
        subgroup = "electronic-product",
        order = "e[electronic-circuit-engine]",
        stack_size = 200,
    },
    {
        --recipe
        type = "recipe",
        name = "recipe-electronic-circuit-engine",
        energy_required = 0.5,
        enabled = false,
        category = "ritn-electronics",
        ingredients =
        {
            {type="item", name="electronic-circuit", amount=2},
            {type="item", name="steel-plate", amount=1},
        },
        result = "electronic-circuit-engine",
        result_count = 1
    }


})