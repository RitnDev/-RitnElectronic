data:extend({


    --process-unit-module
    {
        --item
        type = "item",
        name = "process-unit-module",
        icon = "__RitnElectronic__/graphics/icons/PU-module.png",
        icon_size = 64, icon_mipmaps = 2,
        subgroup = "process-electronic-product",
        order = "a[process-unit-module]",
        stack_size = 200,
    },
    {
        --recipe
        type = "recipe",
        name = "recipe-process-unit-module",
        energy_required = 10,
        enabled = false,
        category = "ritn-electronics",
        ingredients =
        {
            {type="item", name="electronic-circuit-module", amount=20},
            {type="item", name="advanced-circuit-module", amount=2},
            {type="fluid", name="sulfuric-acid", amount=5},
        },
        result = "process-unit-module",
        result_count = 1
    }


})