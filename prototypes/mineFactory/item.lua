local mineFactory = table.deepcopy(data.raw["item"]["assembling-machine-3"])

mineFactory.localised_name = { "mineFactory.name" }
mineFactory.localised_description = { "mineFactory.description" }

mineFactory.name = "mine-factory"

mineFactory.icons = {
    {
        icon = "__mine-factory__/graphics/entity/mine-factory-icon.png",
        icon_size = 64,
    },
}

mineFactory.place_result = "mine-factory"

data:extend({ mineFactory })
