data:extend({
    {
        type = "recipe-category",
        name = "custom-mines-category"
    }
})

local allowed_machines = {
    "assembling-machine-1",
    "assembling-machine-2",
    "assembling-machine-3"
}

for _, machine_name in pairs(allowed_machines) do
    local machine = data.raw["assembling-machine"][machine_name]

    if machine and machine.crafting_categories then
        table.insert(machine.crafting_categories, "custom-mines-category")
    end
end
