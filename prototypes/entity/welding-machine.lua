data:extend({

-- welding machine mk1
{
    type = "assembling-machine",
    name = "welding-machine-mk1",
    icon = "__RitnElectronic__/graphics/icons/welding-machine.png",
    icon_size = 95,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 2.0, result = "welding-machine-mk1"},
    max_health = 200,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -2.2}, {1.5, 1.3}},
    crafting_categories = {"ritn-electronics"},
    alert_icon_shift = util.by_pixel(-3, -12),
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/lab.ogg",
          volume = 1.7
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5
    },
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    result_inventory_size = 1,
    energy_usage = "300kW",
    crafting_speed = 0.75,
    source_inventory_size = 1,
    fast_replaceable_group = "assembling-machine",
    next_upgrade = "welding-machine-mk2",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 2
    },
    module_specification =
    {
      module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    animation =
    {
      layers =
      {
        {
          filename = "__RitnElectronic__/graphics/entity/welding-machine/welding-machine.png",
          width = 116,
          height = 93,
          shift = { 0.34375, 0.046875}
        }
      }
    }
  },

  -- welding machine mk2
{
  type = "assembling-machine",
  name = "welding-machine-mk2",
  icon = "__RitnElectronic__/graphics/icons/welding-machine-mk2.png",
  icon_size = 95,
  flags = {"placeable-neutral", "placeable-player", "player-creation"},
  minable = {mining_time = 2.0, result = "welding-machine-mk2"},
  max_health = 350,
  corpse = "medium-remnants",
  dying_explosion = "medium-explosion",
  collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
  selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
  drawing_box = {{-1.5, -2.2}, {1.5, 1.3}},
  crafting_categories = {"ritn-electronics"},
  alert_icon_shift = util.by_pixel(-3, -12),
  repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
  mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
  open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
  close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/lab.ogg",
          volume = 1.7
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5
    },
  resistances =
  {
    {
      type = "fire",
      percent = 70
    }
  },
  fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }},
        secondary_draw_orders = { north = -1 }
      },
      off_when_no_fluid_recipe = true
    },
  result_inventory_size = 1,
  energy_usage = "500kW",
  crafting_speed = 1.25,
  source_inventory_size = 1,
  fast_replaceable_group = "assembling-machine",
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-input",
    emissions_per_minute = 2
  },
  module_specification =
  {
    module_slots = 4
  },
  allowed_effects = {"consumption", "speed", "productivity", "pollution"},
  animation =
  {
    layers =
    {
      {
        filename = "__RitnElectronic__/graphics/entity/welding-machine/welding-machine-mk2.png",
        width = 116,
        height = 93,
        shift = { 0.34375, 0.046875}
      }
    }
  }
}


})