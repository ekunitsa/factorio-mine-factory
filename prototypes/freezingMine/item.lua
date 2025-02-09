local freezingMine = table.deepcopy(data.raw["item"]["land-mine"])

freezingMine.localised_name = { "freezingMine.name" }
freezingMine.localised_description = { "freezingMine.description" }

freezingMine.name = "freezing-mine"
freezingMine.icons = {
    {
        icon = "__mine-factory__/graphics/entity/freezing-mine.png",
        icon_size = freezingMine.icon_size,
    },
}

freezingMine.place_result = "freezing-mine"

data:extend({ freezingMine })
