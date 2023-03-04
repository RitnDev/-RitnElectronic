data:extend({


    --welding-machine-mk1
    {
        --item
        type = "item",
        name = "welding-machine-mk1",
        icon = "__RitnElectronic__/graphics/icons/welding-machine.png",
        icon_size = 95,
        subgroup = "production-machine-electronic",
        order = "a-a",
        place_result = "welding-machine-mk1",
        stack_size = 50,
    },
    {
        --recipe
        type = "recipe",
        name = "recipe-welding-machine-mk1",
        energy_required = 0.5,
        enabled = false,
        ingredients =
        {
            {type="item", name="iron-plate", amount=12},
            {type="item", name="iron-gear-wheel", amount=5},
            {type="item", name="copper-cable", amount=9},
            {type="item", name="burner-inserter", amount=6},
        },
        result = "welding-machine-mk1",
        result_count = 1
    },



        --welding-machine-mk2
        {
            --item
            type = "item",
            name = "welding-machine-mk2",
            icon = "__RitnElectronic__/graphics/icons/welding-machine-mk2.png",
            icon_size = 95,
            subgroup = "production-machine-electronic",
            order = "a-b",
            place_result = "welding-machine-mk2",
            stack_size = 50,
        },
        {
            --recipe
            type = "recipe",
            name = "recipe-welding-machine-mk2",
            energy_required = 0.5,
            enabled = false,
            ingredients =
            {
                {type="item", name="iron-plate", amount=4},
                {type="item", name="electronic-circuit", amount=2},
                {type="item", name="advanced-circuit", amount=3},
                {type="item", name="fast-inserter", amount=3},
                {type="item", name="welding-machine-mk1", amount=1},
            },
            result = "welding-machine-mk2",
            result_count = 1
        }


})