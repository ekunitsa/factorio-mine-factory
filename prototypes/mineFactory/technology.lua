local mineFactoryTech = {
  type = "technology",
  name = "mine-factory-tech",
  localised_name = { "mineFactory.name" },
  localised_description = { "mineFactory.description" },
  icons = {
    {
      icon = "__mine-factory__/graphics/entity/mine-factory-tech.png",
      icon_size = 256,
      tint = { r = 0.7, g = 0.7, b = 0.4, a = 1 }
    }
  },
  prerequisites = { "military-3" },
  unit = {
    count = 1000,
    ingredients = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "military-science-pack", 1 }, { "chemical-science-pack", 1 } },
    time = 30
  },
  effects = {
    { type = "unlock-recipe", recipe = "mine-factory" }
  }
}

data:extend({ mineFactoryTech })
