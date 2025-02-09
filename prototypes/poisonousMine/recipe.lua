local poisonousMineRecipe = {
  type = "recipe",
  name = "poisonous-mine",
  category = "custom-mines-category",
  enabled = false,
  ingredients = {
    { type = "item", name = "iron-plate", amount = 1 },
    { type = "item", name = "explosives", amount = 2 },
    { type = "item", name = "spoilage",   amount = 80 }
  },
  results = { { type = "item", name = "poisonous-mine", amount = 4 } }
}

data:extend({ poisonousMineRecipe })
