local flamingMineTech = {
  type = "technology",
  name = "flaming-mine-tech",
  localised_name = { "flamingMine.name" },
  localised_description = { "flamingMine.description" },
  icons = {
    {
      icon = "__mine-factory__/graphics/entity/flaming-mine-tech.png",
      icon_size = 256,
    }
  },
  prerequisites = { "military-3" },
  unit = {
    count = 200,
    ingredients = { { "automation-science-pack", 1 }, { "military-science-pack", 1 }, { "metallurgic-science-pack", 1 } },
    time = 30
  },
  effects = {
    { type = "unlock-recipe", recipe = "flaming-mine" }
  }
}

data:extend({ flamingMineTech })
