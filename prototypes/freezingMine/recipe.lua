local freezingMineRecipe = {
  type = "recipe",
  name = "freezing-mine",
  category = "custom-mines-category",
  enabled = false,
  ingredients = {
    { type = "item", name = "iron-plate", amount = 1 },
    { type = "item", name = "explosives", amount = 2 },
    { type = "item", name = "ice",        amount = 80 }
  },
  results = { { type = "item", name = "freezing-mine", amount = 4 } }
}

data:extend({ freezingMineRecipe })
