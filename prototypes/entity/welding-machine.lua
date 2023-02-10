ritnlib.entity = require(ritnlib.defines.entity)


--------------------------------------------------------------------------------------
-- data
local sprite_path = "__RitnElectronic__/graphics/entity/welding1"
local animation = {
  [1] = {},
  [2] = {},
  [3] = {},
}
----------------------------------
animation[1] =   {  
  name = "assembler3-base", 
  sprite_path = sprite_path, 
  frame_count = 60, 
  line_length = 10, 
  shadow = false,  
  repeat_count = nil,
  animation_speed = 0.75, 
  width = 192, 
  height = 256, 
  x = 0,
  y = 0, 
  tw = 192, 
  th = 256, 
  shift = {0,-0.5-(6/64)},
  scale = 0.5
}
animation[2] = {
  name = "iron-shadow", 
  sprite_path = sprite_path, 
  shadow = true, 
  repeat_count = 60, 
  animation_speed = 0.75, 
  width = 256, 
  height = 192, 
  x = 0,
  y = 0, 
  tw = 256, 
  th = 192, 
  shift = {0.5,0-(6/64)},
  scale = 0.5
}
animation[3] = {
  name = "assembler3-shadow", 
  sprite_path = sprite_path, 
  frame_count = 60, 
  line_length = 10,  
  shadow = true,  
  repeat_count = nil,
  animation_speed = 0.75,
  width = 96, 
  height = 96, 
  x = 0,
  y = 0, 
  tw = 96, 
  th = 96, 
  shift = {2.75,0.25-(6/64)},
  scale = 0.5
}


local nwe_animation = {
  name = "steel-indicator-3-gear",
  sprite_path = sprite_path,
  frame_count = 30,
  line_length = 5,
  shadow = false,
  repeat_count = nil,
  animation_speed = 1,
  width = 64,
  height = 64,
  x = 0,
  y = 0,
  tw = 64,
  th = 64,
  shift = {0,1-(6/64)},
  scale = 0.5
}

local layer_glow = {
  name = "assembler-glow", 
  sprite_path = sprite_path, 
  frame_count = 30, 
  line_length = 5, 
  shadow = "glow", 
  repeat_count = nil,
  animation_speed = 0.75, 
  width = 192, 
  height = 128, 
  x = 0,
  y = 0,
  tw = 192, 
  th = 128, 
  shift = {0,0-(6/64)}, 
  blend_mode = "additive",
  scale = 0.5
}

local working_sparks = {
  name = "assembler3-working-sparks", 
  sprite_path = sprite_path, 
  frame_count = 60, 
  line_length = 10, 
  shadow = "glow",
  repeat_count = nil,
  animation_speed = 0.75, 
  width = 192, 
  height = 192, 
  x = 0,
  y = 0,
  tw = 192, 
  th = 192,  
  shift = {0,-1-(6/64)}, 
  blend_mode = "additive-soft",
  scale = 0.5
}

local working_tinted = {
  name = "assembler3-working-tinted", 
  sprite_path = sprite_path, 
  frame_count = 60, 
  line_length = 10, 
  shadow = "glow",
  repeat_count = nil,
  animation_speed = 0.75, 
  width = 192, 
  height = 192, 
  x = 0,
  y = 0,
  tw = 192, 
  th = 192,  
  shift = {0,-1-(6/64)}, 
  blend_mode = "additive-soft",
  tint = { r = 1, g = 0, b = 0, a = 0.75 },
  scale = 0.5
}

local working_white = {
  name = "assembler3-working-white", 
  sprite_path = sprite_path, 
  frame_count = 60, 
  line_length = 10, 
  shadow = "glow",
  repeat_count = nil,
  animation_speed = 0.75, 
  width = 192, 
  height = 192, 
  x = 0,
  y = 0,
  tw = 192, 
  th = 192,  
  shift = {0,-1-(6/64)}, 
  blend_mode = "additive-soft",
  scale = 0.5
}

------------------------------------------------------------------------------------------------
-- function

local ug_cover_sprites = {
  north = "cn",
  south = "cs",
  west = "cw",
  east = "ce",
}

local ug_cover_offsets = {
  north = {0,1},
  south = {0,-1},
  east = {-1,0},
  west = {1,0},
}

local pipe_covers = {}
for spritelist, sprite in pairs(ug_cover_sprites) do
      pipe_covers[spritelist] = { layers = {} }
      table.insert(pipe_covers[spritelist].layers, {
          filename = sprite_path.."/pipe-steel-"..sprite..".png",
          priority = "extra-high",
          width = 180,
          height = 120,
          scale = 0.5,
          shift = ug_cover_offsets[spritelist],
      })
      table.insert(pipe_covers[spritelist].layers, {
          filename = sprite_path.."/pipe-steam-shadow-"..sprite..".png",
          priority = "extra-high",
          width = 180,
          height = 120,
          scale = 0.5,
          draw_as_shadow = true,
          shift = ug_cover_offsets[spritelist],
      })
end


local function assembler_pipe_pictures()
  return {
    north = ritnlib.entity.get_layer({name="standard-pipe-pictures-steel-north", sprite_path=sprite_path, shadow=false, width=238, height=238, x=0, y=0, tw=238, th=238, shift={0,2}, scale=0.5}),
    east = ritnlib.entity.get_layer({name="standard-pipe-pictures-steel-east", sprite_path=sprite_path, shadow=false, width=238, height=238, x=0, y=0, tw=238, th=238, shift={-2,0}, scale=0.5}),
    south = {
      layers = {
        ritnlib.entity.get_layer({name="standard-pipe-pictures-steel-south", sprite_path=sprite_path, shadow=false, width=238, height=238, x=0, y=0, tw=238, th=238, shift={0,-2}, scale=0.5}),
        ritnlib.entity.get_layer({name="pipe-steam-shadow-v", sprite_path=sprite_path, shadow=true, width=180, height=120, x=0, y=0, tw=180, th=120, shift={0,-1}, scale=0.5}),
      },
    },
    west = ritnlib.entity.get_layer({name="standard-pipe-pictures-steel-west", sprite_path=sprite_path, shadow=false, width=238, height=238, x=0, y=0, tw=238, th=238, shift={2,0}, scale=0.5}),
  }
end


local function assembler_fluid_boxes()
  return {
      {
          production_type = "input",
          filter = filter,
          pipe_picture = assembler_pipe_pictures(),
          pipe_cover = pipe_covers,
          base_area = 10,
          base_level = -1,
          pipe_connections = {{ type="input", position = {0, -2} }},
          secondary_draw_orders = { north = -1 }
      },
      {
          production_type = "output",
          filter = filter,
          pipe_picture = assembler_pipe_pictures(),
          base_area = 10,
          base_level = 1,
          pipe_connections = {{ type="output", position = {0, 2} }},
          secondary_draw_orders = { north = -1 }
      },
      off_when_no_fluid_recipe = true
  }
end



----------------------------------------------------------------------------------


local welding_template = {
	allowed_effects = {
		"consumption",
		"speed",
		"pollution",
		"productivity",
	},
	max_health = 200,
	dying_explosion = "medium-explosion",
	resistances = {{type = "fire", percent = 70}},
	corpse = "medium-remnants",
	flags = {"placeable-player", "placeable-neutral", "player-creation"},
	collision_box = ritnlib.entity.standard_3x3_collision() ,
	selection_box = ritnlib.entity.standard_3x3_selection() ,
  repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
  mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
  open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
  close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  working_sound = {
    sound = { {filename = "__base__/sound/lab.ogg",volume = 1.4}},
    idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    apparent_volume = 1.5
  },
	tile_width = 3,
	tile_height = 3,
	icon_size = 64,
	icon_mipmaps = 4,
	status_colors = ritnlib.entity.standard_status_colours(),
  crafting_categories = {"ritn-electronics"},
	minable = {
		result = "welding-machine-mk1",
		mining_time = 0.2,
	},
	fast_replaceable_group = "assembling-machine",
}


----------------------------------------------------------------------------------
local welding1 = table.deepcopy(welding_template)

welding1.name = "welding-machine-mk1"
welding1.type = "assembling-machine"
welding1.minable.result = "welding-machine-mk1"
welding1.placeable_by = {item = "welding-machine-mk1", count = 1}
welding1.crafting_speed = 0.75
welding1.energy_usage = "300kW"
welding1.energy_source = {
    type = "electric",
    usage_priority = "secondary-input",
    emissions_per_minute = 2,
}
welding1.max_health = 200
welding1.module_specification = {module_slots = 2}

welding1.icon = "__RitnElectronic__/graphics/icons/welding1.png"
welding1.animation = {
    layers = {
        ritnlib.entity.get_layer(animation[1]),
        ritnlib.entity.get_layer(animation[2]),
        ritnlib.entity.get_layer(animation[3]),
    }
}
welding1.status_colors = ritnlib.entity.standard_status_colours()
welding1.working_visualisations = {
    {
		north_animation = ritnlib.entity.get_layer(nwe_animation),
		east_animation = ritnlib.entity.get_layer(nwe_animation),
		west_animation = ritnlib.entity.get_layer(nwe_animation),
		always_draw = true,
    },
    {
      animation = ritnlib.entity.get_layer(layer_glow),
      light = ritnlib.entity.standard_status_light(),
		  apply_tint = "status",
		  always_draw = true,
    },
    {
        animation = ritnlib.entity.get_layer(working_sparks),
		    fadeout = true,
    },
    {
        animation = ritnlib.entity.get_layer(working_tinted),
        apply_recipe_tint = "secondary",
		    fadeout = true,
    },
    {
        animation = ritnlib.entity.get_layer(working_white),
		    fadeout = true,
    },
}

welding1.match_animation_speed_to_activity = false
welding1.alert_icon_shift = {0,0}
welding1.next_upgrade = "welding-machine-mk2",


data:extend({welding1})
----------------------------------------------------------------------------------

working_tinted.tint = { r = 0, g = 0, b = 1, a = 0.75 }
animation[1].tint = { r = 0.65, g = 0.65, b = 0.65, a = 1}

welding2 = table.deepcopy(welding1)
welding2.name = "welding-machine-mk2"
welding2.icon = "__RitnElectronic__/graphics/icons/welding2.png"

welding2.energy_usage = "500kW"
welding2.crafting_speed = 1
welding2.minable.result = "welding-machine-mk2"
welding2.placeable_by = {item = "welding-machine-mk2", count = 1}
welding2.max_health = 350
welding2.module_specification = {module_slots = 4}

welding2.animation.layers[1] = ritnlib.entity.get_layer(animation[1])
welding2.working_visualisations[4] = {
  animation = ritnlib.entity.get_layer(working_tinted),
  apply_recipe_tint = "secondary",
  fadeout = true,
}
welding2.fluid_boxes = assembler_fluid_boxes()



data:extend({welding2})
