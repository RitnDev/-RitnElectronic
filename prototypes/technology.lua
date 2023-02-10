data:extend({


{
  --tech-electronics-engine
    type = "technology",
    name = "tech-electronics-engine",
    icon = "__RitnElectronic__/graphics/technology/electronics-engine.png",
    icon_size = 128,
    enabled = true,
    prerequisites = {"electronics"},
    effects = 
    {
      {type = "unlock-recipe", recipe = "recipe-electronic-circuit-engine"},
    },
    unit = {
      count = 50,
      ingredients = {{"electronic-science-pack", 1}},
      time = 15
    }
},

{
  --tech-electronics-inserter
    type = "technology",
    name = "tech-electronics-inserter",
    icon = "__RitnElectronic__/graphics/technology/electronics-inserter.png",
    icon_size = 128,
    enabled = true,
    prerequisites = {"electronics"},
    effects = 
    {
      {type = "unlock-recipe", recipe = "recipe-electronic-circuit-inserter"},
    },
    unit = {
      count = 25,
      ingredients = {{"electronic-science-pack", 1}},
      time = 15
    }
},

{
  --tech-electronics-military
    type = "technology",
    name = "tech-electronics-military",
    icon = "__RitnElectronic__/graphics/technology/electronics-military.png",
    icon_size = 128,
    enabled = true,
    prerequisites = {"electronics"},
    effects = 
    {
      {type = "unlock-recipe", recipe = "recipe-electronic-circuit-military"},
    },
    unit = {
      count = 25,
      ingredients = {{"electronic-science-pack", 1}},
      time = 15
    }
},

{
  --tech-electronics-modules
    type = "technology",
    name = "tech-electronics-modules",
    icon = "__RitnElectronic__/graphics/technology/electronics-modules.png",
    icon_size = 128,
    enabled = true,
    prerequisites = {"electronics"},
    effects = 
    {
      {type = "unlock-recipe", recipe = "recipe-electronic-circuit-module"},
    },
    unit = {
      count = 50,
      ingredients = {{"electronic-science-pack", 1}},
      time = 15
    }
},

{
  --tech-electronics-production
    type = "technology",
    name = "tech-electronics-production",
    icon = "__RitnElectronic__/graphics/technology/electronics-production.png",
    icon_size = 128,
    enabled = true,
    prerequisites = {"electronics"},
    effects = 
    {
      {type = "unlock-recipe", recipe = "recipe-electronic-circuit-production"},
    },
    unit = {
      count = 25,
      ingredients = {{"electronic-science-pack", 1}},
      time = 15
    }
},

{
  --tech-electronics-ferroviaire
    type = "technology",
    name = "tech-electronics-ferroviaire",
    icon = "__RitnElectronic__/graphics/technology/electronics-rails.png",
    icon_size = 128,
    enabled = true,
    prerequisites = {"electronics"},
    effects = 
    {
      {type = "unlock-recipe", recipe = "recipe-electronic-circuit-ferroviaire"},
    },
    unit = {
      count = 50,
      ingredients = {{"electronic-science-pack", 1}},
      time = 15
    }
},

--  ADVANCED ELECTRONICS CIRCUITS

{
  --tech-advanced-electronics-military
    type = "technology",
    name = "tech-advanced-electronics-military",
    icon = "__RitnElectronic__/graphics/technology/advanced-electronics-military.png",
    icon_size = 128,
    enabled = true,
    prerequisites = {"advanced-electronics", "tech-electronics-military"},
    effects = 
    {
      {type = "unlock-recipe", recipe = "recipe-advanced-circuit-military"},
    },
    unit = {
      count = 200,
      ingredients = {{"electronic-science-pack", 1}, {"chemical-science-pack", 1}},
      time = 30
    }
},

{
  --tech-advanced-electronics-modules
    type = "technology",
    name = "tech-advanced-electronics-modules",
    icon = "__RitnElectronic__/graphics/technology/advanced-electronics-modules.png",
    icon_size = 128,
    enabled = true,
    prerequisites = {"advanced-electronics", "tech-electronics-modules"},
    effects = 
    {
      {type = "unlock-recipe", recipe = "recipe-advanced-circuit-module"},
    },
    unit = {
      count = 200,
      ingredients = {{"electronic-science-pack", 1}, {"chemical-science-pack", 1}},
      time = 30
    }
},

{
  --tech-advanced-electronics-production
    type = "technology",
    name = "tech-advanced-electronics-production",
    icon = "__RitnElectronic__/graphics/technology/advanced-electronics-production.png",
    icon_size = 128,
    enabled = true,
    prerequisites = {"advanced-electronics", "tech-electronics-production"},
    effects = 
    {
      {type = "unlock-recipe", recipe = "recipe-advanced-circuit-production"},
    },
    unit = {
      count = 200,
      ingredients = {{"electronic-science-pack", 1}, {"chemical-science-pack", 1}},
      time = 30
    }
},


-- PROCESS UNIT 

{
  --tech-process-unit-modules
    type = "technology",
    name = "tech-process-unit-modules",
    icon = "__RitnElectronic__/graphics/technology/process-unit-modules.png",
    icon_size = 128,
    enabled = false,
    prerequisites = {"advanced-electronics-2", "tech-advanced-electronics-modules"},
    effects = 
    {
      {type = "unlock-recipe", recipe = "recipe-process-unit-module"},
    },
    unit = {
      count = 300,
      ingredients = {{"electronic-science-pack", 1}},
      time = 30
    }
},



})
