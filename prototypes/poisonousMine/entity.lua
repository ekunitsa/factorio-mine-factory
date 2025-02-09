-- effects
local poisonousEffect = {
    type = "sticker",
    name = "poisonous-effect",
    duration_in_ticks = 10 * 60,
    damage_per_tick = { amount = 0.4, type = "poison" },
}

local poisonousExplosion = {
    type = "explosion",
    name = "poisonous-explosion",
    animations = {
        {
            filename = "__mine-factory__/graphics/entity/poisonous-explosion.png",
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
local poisonousMineEntity = table.deepcopy(data.raw["land-mine"]["land-mine"])

poisonousMineEntity.name = "poisonous-mine"

poisonousMineEntity.localised_name = { "poisonousMine.name" }
poisonousMineEntity.localised_description = { "poisonousMine.description" }

poisonousMineEntity.icons = {
    {
        icon = "__mine-factory__/graphics/entity/poisonous-mine.png",
        icon_size = poisonousMineEntity.icon_size,
    },
}

poisonousMineEntity.picture_safe = {
    filename = "__mine-factory__/graphics/entity/poisonous-mine.png",
    priority = "medium",
    width = 64,
    height = 64,
    scale = 0.5,
}

poisonousMineEntity.picture_set = {
    filename = "__mine-factory__/graphics/entity/poisonous-mine-set.png",
    priority = "medium",
    width = 64,
    height = 64,
    scale = 0.5,
}

poisonousMineEntity.picture_set_enemy = {
    filename = "__base__/graphics/entity/land-mine/land-mine-set-enemy.png",
    priority = "medium",
    width = 64,
    height = 64,
    scale = 0.5,
}

poisonousMineEntity.dying_explosion = "poisonous-explosion"

poisonousMineEntity.action = {
    type = "area",
    radius = 3,
    force = "enemy",
    action_delivery = {
        type = "instant",
        target_effects = {
            {
                type = "damage",
                damage = { amount = 250, type = "explosion" }
            },
            {
                type = "create-sticker",
                sticker = "poisonous-effect"
            }
        }
    }
}

data:extend({ poisonousEffect, poisonousExplosion, poisonousMineEntity })
