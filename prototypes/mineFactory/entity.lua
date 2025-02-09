-- remnants
local mineFactoryRemnants = {
    type = "corpse",
    name = "mine-factory-remnants",
    icon = "__mine-factory__/graphics/entity/mine-factory-icon.png",
    flags = { "placeable-neutral", "not-on-map" },
    hidden_in_factoriopedia = true,
    subgroup = "production-machine-remnants",
    order = "a-a-a",
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    tile_width = 3,
    tile_height = 3,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15,
    expires = false,
    final_render_layer = "remnants",
    animation = {
        filename = "__mine-factory__/graphics/entity/mine-factory-remnants.png",
        line_length = 1,
        width = 328,
        height = 282,
        direction_count = 1,
        scale = 0.5
    }
}

data:extend({ mineFactoryRemnants })

-- entity
local mineFactoryEntity = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])

mineFactoryEntity.name = "mine-factory"

mineFactoryEntity.localised_name = { "mineFactory.name" }
mineFactoryEntity.localised_description = { "mineFactory.description" }

mineFactoryEntity.icons = {
    {
        icon = "__mine-factory__/graphics/entity/mine-factory-icon.png",
        icon_size = 64,
    },
}

mineFactoryEntity.energy_usage = "720kW"
mineFactoryEntity.crafting_categories = { "custom-mines-category" }
mineFactoryEntity.crafting_speed = 2.5

mineFactoryEntity.enable_logistic_control_behavior = true

mineFactoryEntity.graphics_set = {
    animation_progress = 0.5,
    animation =
    {
        layers =
        {
            {
                filename = "__mine-factory__/graphics/entity/mine-factory.png",
                priority = "high",
                width = 214,
                height = 237,
                frame_count = 32,
                line_length = 8,
                scale = 0.5
            },
            {
                filename = "__mine-factory__/graphics/entity/mine-factory-shadow.png",
                priority = "high",
                width = 260,
                height = 162,
                frame_count = 32,
                line_length = 8,
                draw_as_shadow = true,
                shift = { 28 / 32, 4 / 32 },
                scale = 0.5
            }
        }
    }
}

mineFactoryEntity.corpse = "mine-factory-remnants"

data:extend({ mineFactoryEntity })
