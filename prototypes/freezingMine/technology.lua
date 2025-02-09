local freezingMineTech = {
  type = "technology",
  name = "freezing-mine-tech",
  localised_name = { "freezingMine.name" },
  localised_description = { "freezingMine.description" },
  icons = {
    {
      icon = "__mine-factory__/graphics/entity/freezing-mine-tech.png",
      icon_size = 256,
    }
  },
  prerequisites = { "military-3" },
  unit = {
    count = 200,
    ingredients = { { "automation-science-pack", 1 }, { "military-science-pack", 1 }, { "cryogenic-science-pack", 1 } },
    time = 30
  },
  effects = {
    { type = "unlock-recipe", recipe = "freezing-mine" }
  }
}

data:extend({ freezingMineTech })
