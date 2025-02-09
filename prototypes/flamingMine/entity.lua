-- effects
local flamingEffect = {
    type = "sticker",
    name = "flaming-effect",
    duration_in_ticks = 10 * 60,
    damage_per_tick = { amount = 0.8, type = "fire" },
    animation = {
        filename = "__base__/graphics/entity/fire-flame/fire-flame-04.png",
        line_length = 10,
        width = 84,
        height = 94,
        frame_count = 90,
        animation_speed = 1,
        scale = 1
    }
}

-- entity
local flamingMineEntity = table.deepcopy(data.raw["land-mine"]["land-mine"])

flamingMineEntity.name = "flaming-mine"

flamingMineEntity.localised_name = { "flamingMine.name" }
flamingMineEntity.localised_description = { "flamingMine.description" }

flamingMineEntity.icons = {
    {
        icon = "__mine-factory__/graphics/entity/flaming-mine.png",
        icon_size = flamingMineEntity.icon_size,
    },
}

flamingMineEntity.picture_safe = {
    filename = "__mine-factory__/graphics/entity/flaming-mine.png",
    priority = "medium",
    width = 64,
    height = 64,
    scale = 0.5,
}

flamingMineEntity.picture_set = {
    filename = "__mine-factory__/graphics/entity/flaming-mine-set.png",
    priority = "medium",
    width = 64,
    height = 64,
    scale = 0.5,
}

flamingMineEntity.picture_set_enemy = {
    filename = "__base__/graphics/entity/land-mine/land-mine-set-enemy.png",
    priority = "medium",
    width = 64,
    height = 64,
    scale = 0.5,
}

flamingMineEntity.action = {
    type = "area",
    radius = 3,
    force = "enemy",
    action_delivery = {
        type = "instant",
        target_effects = {
            {
                type = "damage",
                damage = { amount = 125, type = "explosion" }
            },
            {
                type = "create-sticker",
                sticker = "flaming-effect"
            },
            {
                type = "create-fire",
                entity_name = "fire-flame-on-tree",
                initial_ground_flame_count = 32
            }
        }
    }
}

data:extend({ flamingEffect, flamingMineEntity })
