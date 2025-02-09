local flamingMineRecipe = {
  type = "recipe",
  name = "flaming-mine",
  category = "custom-mines-category",
  enabled = false,
  ingredients = {
    { type = "item", name = "iron-plate",     amount = 1 },
    { type = "item", name = "explosives",     amount = 2 },
    { type = "item", name = "tungsten-plate", amount = 1 },
    { type = "item", name = "calcite",        amount = 80 }
  },
  results = { { type = "item", name = "flaming-mine", amount = 4 } }
}

data:extend({ flamingMineRecipe })
