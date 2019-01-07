local function ClearOldTechTree()
    for key, force in pairs(game.forces) do
        force.reset_technology_effects()
    end
end

script.on_init(ClearOldTechTree)
script.on_configuration_changed(ClearOldTechTree)
