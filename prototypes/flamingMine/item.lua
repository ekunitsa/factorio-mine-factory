local flamingMine = table.deepcopy(data.raw["item"]["land-mine"])

flamingMine.localised_name = { "flamingMine.name" }
flamingMine.localised_description = { "flamingMine.description" }

flamingMine.name = "flaming-mine"
flamingMine.icons = {
    {
        icon = "__mine-factory__/graphics/entity/flaming-mine.png",
        icon_size = flamingMine.icon_size,
    },
}

flamingMine.place_result = "flaming-mine"

data:extend({ flamingMine })
