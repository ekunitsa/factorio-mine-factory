local poisonousMineTech = {
  type = "technology",
  name = "poisonous-mine-tech",
  localised_name = { "poisonousMine.name" },
  localised_description = { "poisonousMine.description" },
  icons = {
    {
      icon = "__mine-factory__/graphics/entity/poisonous-mine-tech.png",
      icon_size = 256,
    }
  },
  prerequisites = { "military-3" },
  unit = {
    count = 200,
    ingredients = { { "automation-science-pack", 1 }, { "military-science-pack", 1 }, { "agricultural-science-pack", 1 } },
    time = 30
  },
  effects = {
    { type = "unlock-recipe", recipe = "poisonous-mine" }
  }
}

data:extend({ poisonousMineTech })
