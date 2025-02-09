local mineFactoryRecipe = {
  type = "recipe",
  name = "mine-factory",
  enabled = false,
  ingredients = {
    { type = "item", name = "assembling-machine-3", amount = 2 },
    { type = "item", name = "speed-module-3",       amount = 4 },
  },
  results = { { type = "item", name = "mine-factory", amount = 1 } }
}

data:extend({ mineFactoryRecipe })
