local poisonousMine = table.deepcopy(data.raw["item"]["land-mine"])

poisonousMine.localised_name = { "poisonousMine.name" }
poisonousMine.localised_description = { "poisonousMine.description" }

poisonousMine.name = "poisonous-mine"
poisonousMine.icons = {
    {
        icon = "__mine-factory__/graphics/entity/poisonous-mine.png",
        icon_size = poisonousMine.icon_size,
    },
}

poisonousMine.place_result = "poisonous-mine"

data:extend({ poisonousMine })
