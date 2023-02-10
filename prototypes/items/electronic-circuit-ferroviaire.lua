data:extend({


    --electronic-circuit-ferroviaire
    {
        --item
        type = "item",
        name = "electronic-circuit-ferroviaire",
        icon = "__RitnElectronic__/graphics/icons/EC-ferroviaire.png",
        icon_size = 64, icon_mipmaps = 2,
        subgroup = "electronic-product",
        order = "f[electronic-circuit-ferroviaire]",
        stack_size = 200,
    },
    {
        --recipe
        type = "recipe",
        name = "recipe-electronic-circuit-ferroviaire",
        energy_required = 0.5,
        enabled = false,
        category = "ritn-electronics",
        ingredients =
        {
            {type="item", name="electronic-circuit", amount=1},
            {type="item", name="iron-stick", amount=1},
        },
        result = "electronic-circuit-ferroviaire",
        result_count = 1
    }


})