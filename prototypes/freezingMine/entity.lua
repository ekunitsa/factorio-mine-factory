-- effects
local freezingEffect = {
    type = "sticker",
    name = "freezing-effect",
    duration_in_ticks = 10 * 60,
    target_movement_modifier = 0.05,
    animation = {
        filename = "__mine-factory__/graphics/entity/freezing-effect.png",
        width = 64,
        height = 51,
        frame_count = 43,
        animation_speed = 2
    }
}

local freezingExplosion = {
    type = "explosion",
    name = "freezing-explosion",
    animations = {
        {
            filename = "__mine-factory__/graphics/entity/freezing-explosion.png",
            width = 64,
            height = 51,
            frame_count = 16,
            animation_speed = 0.5
        }
    },
    light = { intensity = 1, size = 10 },
    smoke = "smoke",
}

-- entity
local freezingMineEntity = table.deepcopy(data.raw["land-mine"]["land-mine"])

freezingMineEntity.name = "freezing-mine"

freezingMineEntity.localised_name = { "freezingMine.name" }
freezingMineEntity.localised_description = { "freezingMine.description" }

freezingMineEntity.icons = {
    {
        icon = "__mine-factory__/graphics/entity/freezing-mine.png",
        icon_size = freezingMineEntity.icon_size,
    },
}

freezingMineEntity.picture_safe = {
    filename = "__mine-factory__/graphics/entity/freezing-mine.png",
    priority = "medium",
    width = 64,
    height = 64,
    scale = 0.5,
}

freezingMineEntity.picture_set = {
    filename = "__mine-factory__/graphics/entity/freezing-mine-set.png",
    priority = "medium",
    width = 64,
    height = 64,
    scale = 0.5,
}

freezingMineEntity.picture_set_enemy = {
    filename = "__base__/graphics/entity/land-mine/land-mine-set-enemy.png",
    priority = "medium",
    width = 64,
    height = 64,
    scale = 0.5,
}

freezingMineEntity.dying_explosion = "freezing-explosion"

freezingMineEntity.action = {
    type = "area",
    radius = 3,
    force = "enemy",
    action_delivery = {
        type = "instant",
        target_effects = {
            {
                type = "create-sticker",
                sticker = "freezing-effect"
            }
        }
    }
}

data:extend({ freezingEffect, freezingExplosion, freezingMineEntity })
