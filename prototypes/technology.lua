local Constants = require("constants")

--rocket fuel made same count, time and order as eletric engines as same place in tech tree screenshot
data:extend({
    {
        type = "technology",
        name = "rocket-fuel",
        icon_size = 32,
        icon = "__base__/graphics/icons/rocket-fuel.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "rocket-fuel"
            }
        },
        prerequisites = {"engine", "flammables"},
        unit = {
            count = 100,
            ingredients = {
                {"science-pack-1", 1},
                {"science-pack-2", 1}
            },
            time = 30
        },
        order = "b-c"
    }
})

--explosives don't require military science
data.raw["technology"]["explosives"].unit.ingredients = {
    {"science-pack-1", 1},
    {"science-pack-2", 1}
}

--green science technology
data:extend({
    {
        type = "technology",
        name = "logistics-science-pack",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/green-science.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "science-pack-2"
            }
        },
        unit = {
            count = 25,
            ingredients = {
                {"science-pack-1", 1}
            },
            time = 15
        },
        order = "c-a"
    }
})

--Mining tech that gives players the mining speed increase to equivilent of a steel axe
data:extend({
    {
        type = "technology",
        name = "player-mining-speed",
        icon_size = 32,
        icon = "__base__/graphics/icons/steel-axe.png",
        effects = {
            {
                type = "character-mining-speed",
                modifier = 0.75
            }
        },
		prerequisites = {"steel-processing"},
        unit = {
            count = 100,
            ingredients = {
                {"science-pack-1", 1}
            },
            time = 10
        },
        order = "a-a"
    }
})

--remove steel axe recipe from steel tech
data.raw["technology"]["steel-processing"].effects = {
    {
        type = "unlock-recipe",
        recipe = "steel-plate"
    },
    {
        type = "unlock-recipe",
        recipe = "steel-chest"
    }
}

--lube, new recipe 100 of each red and green 30second timer
data:extend({
    {
        type = "technology",
        name = "lubricant",
        icon_size = 32,
        icon = "__base__/graphics/icons/fluid/lubricant.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "lubricant"
            }
        },
        prerequisites = {"oil-processing"},
        unit = {
            count = 100,
            ingredients = {
                {"science-pack-1", 1},
                {"science-pack-2", 1}
            },
            time = 30
        },
        order = "b-c"
    }
})

--stop OIL research unlocking lube and update its prerequisites
local oilProc = data.raw["technology"]["oil-processing"]
oilProc.effects = {
    {
        type = "unlock-recipe",
        recipe = "pumpjack"
    },
    {
        type = "unlock-recipe",
        recipe = "oil-refinery"
    },
    {
        type = "unlock-recipe",
        recipe = "chemical-plant"
    },
    {
        type = "unlock-recipe",
        recipe = "basic-oil-processing"
    },
    {
        type = "unlock-recipe",
        recipe = "solid-fuel-from-light-oil"
    },
    {
        type = "unlock-recipe",
        recipe = "solid-fuel-from-petroleum-gas"
    },
    {
        type = "unlock-recipe",
        recipe = "solid-fuel-from-heavy-oil"
    }
}
oilProc.prerequisites = {"steel-processing", "logistics-science-pack", "fluid-handling"}

--add lubricant to prereqs of items that use it
data.raw["technology"]["logistics-3"].prerequisites = {"logistics-2", "automation-3", "lubricant"}
data.raw["technology"]["electric-engine"].prerequisites = {"engine", "advanced-electronics", "lubricant"}

--blue science,
data:extend({
    {
        type = "technology",
        name = "chemical-science-pack",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/chemical.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "science-pack-3"
            }
        },
        prerequisites = {"battery", "advanced-electronics", "engine"},
        unit = {
            count = 200,
            ingredients = {
                {"science-pack-1", 1},
                {"science-pack-2", 1}
            },
            time = 30
        },
        order = "b-c" -- NO IDEA NOT SET
    }
})

--remove advnaced circuits unlock
data.raw["technology"]["advanced-electronics"].effects ={
    {
        type = "unlock-recipe",
        recipe = "advanced-circuit"
    }
}

--military science
data:extend({
    {
        type = "technology",
        name = "military-science-pack",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/grey.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "military-science-pack"
            }
        },
        prerequisites = {"military-2", "stone-walls"},
        unit = {
            count = 200,
            ingredients = {
                {"science-pack-1", 1},
                {"science-pack-2", 1}
            },
            time = 30
        },
        order = "b-c" -- NO IDEA NOT SET
    }
})

--remove military science packs unlock
data.raw["technology"]["military-2"].effects = {
    {
        type = "unlock-recipe",
        recipe = "piercing-rounds-magazine"
    },
    {
        type = "unlock-recipe",
        recipe = "grenade"
    }
}

--update robotics and remove "flying"
local robotics = data.raw["technology"]["robotics"]
robotics.effects = {
    {
        type = "unlock-recipe",
        recipe = "flying-robot-frame"
    }
}
robotics.unit = {
    count = 200,
    ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
    },
    time = 30
}
data.raw["technology"]["flying"] = nil
data.raw["technology"]["construction-robotics"].prerequisites = {"robotics"}
data.raw["technology"]["logistic-robotics"].prerequisites = {"robotics"}
data.raw["technology"]["combat-robotics"].prerequisites = {"robotics"}

--LDS
data:extend({
    {
        type = "technology",
        name = "low-density-structure",
        icon_size = 32,
        icon = "__base__/graphics/icons/rocket-structure.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "low-density-structure"
            }
        },
        prerequisites = {"chemical-science-pack", "advanced-material-processing"},
        unit = {
            count = 300,
            ingredients = {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1}
            },
            time = 30
        },
        order = "b-c" -- NO IDEA NOT SET
    }
})


--Purple science
data:extend({
    {
        type = "technology",
        name = "production-science-pack",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/production.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "production-science-pack"
            }
        },
        prerequisites = {"railway", "productivity-module", "advanced-material-processing-2"},
        unit = {
            count = 200,
            ingredients = {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1}
            },
            time = 30
        },
        order = "b-c" -- NO IDEA NOT SET
    }
})

--remove purple science pack unlock and update prerequisites
local matProcess2 = data.raw["technology"]["advanced-material-processing-2"]
matProcess2.effects = {
    {
        type = "unlock-recipe",
        recipe = "electric-furnace"
    }
}
matProcess2.prerequisites = {"advanced-material-processing", "advanced-electronics", "chemical-science-pack"}

--yellow science
data:extend({
    {
        type = "technology",
        name = "utility-science-pack",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/utility.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "high-tech-science-pack"
            }
        },
        prerequisites = {"low-density-structure", "advanced-electronics-2", "robotics"},
        unit = {
            count = 200,
            ingredients = {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1}
            },
            time = 30
        },
        order = "b-c" -- NO IDEA NOT SET
    }
})

--remove yellow science pack unlock and update prerequisites
local advElect2 = data.raw["technology"]["advanced-electronics-2"]
advElect2.prerequisites = {"advanced-electronics", "chemical-science-pack"}
advElect2.effects = {
    {
        type = "unlock-recipe",
        recipe = "processing-unit"
    }
}

--rocket silo doesn't need military, new prerequisites and unlocks less
local rocketSilo = data.raw["technology"]["rocket-silo"]
rocketSilo.effects = {
    {
        type = "unlock-recipe",
        recipe = "rocket-silo"
    },
    {
        type = "unlock-recipe",
        recipe = "rocket-part"
    }
}
rocketSilo.prerequisites = {"rocket-control-unit", "productivity-module-3", "speed-module-3", "rocket-fuel", "concrete"}
rocketSilo.unit = {
    count = 1000,
    ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1}
    },
    time = 60
}

--space science
data:extend({
    {
        type = "technology",
        name = "space-science-pack",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/space.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "satellite"
            }
        },
        prerequisites = {"rocket-silo"},
        unit = {
            count = 2000,
            ingredients = {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1},
                {"military-science-pack", 1},
                {"production-science-pack", 1},
                {"high-tech-science-pack", 1}
            },
            time = 30
        },
        order = "b-c" -- NO IDEA NOT SET
    }
})

--RCU
data:extend({
    {
        type = "technology",
        name = "rocket-control-unit",
        icon_size = 32,
        icon =  "__base__/graphics/icons/rocket-control-unit.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "rocket-control-unit"
            }
        },
        prerequisites = {"speed-module", "utility-science-pack"},
        unit = {
            count = 300,
            ingredients = {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1},
                {"high-tech-science-pack", 1}
            },
            time = 60
        },
        order = "b-c" -- NO IDEA NOT SET
    }
})

--Uranium Processing
data:extend({
    {
        type = "technology",
        name = "uranium-processing",
        icon_size = 32,
        icon =  "__base__/graphics/icons/uranium-ore.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "nuclear-fuel"
            },
            {
                type = "unlock-recipe",
                recipe = "centrifuge"
            },
            {
                type = "unlock-recipe",
                recipe = "uranium-processing"
            }
        },
        prerequisites = {"advanced-electronics", "concrete"},
        unit = {
            count = 250,
            ingredients = {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1}
            },
            time = 60
        },
        order = "b-c" -- NO IDEA NOT SET
    }
})

--Nuclear Power updated for uranium processing
local nuclearPower = data.raw["technology"]["nuclear-power"]
nuclearPower.effects = {
    {
        type = "unlock-recipe",
        recipe = "nuclear-reactor"
    },
    {
        type = "unlock-recipe",
        recipe = "uranium-fuel-cell"
    },
    {
        type = "unlock-recipe",
        recipe = "heat-exchanger"
    },
    {
        type = "unlock-recipe",
        recipe = "heat-pipe"
    },
    {
        type = "unlock-recipe",
        recipe = "steam-turbine"
    }
}
nuclearPower.prerequisites = {"uranium-processing", "advanced-electronics", "concrete"}
nuclearPower.unit.count = 750

--Kovarex
local kovarex = data.raw["technology"]["kovarex-enrichment-process"]
kovarex.effects = {
    {
        type = "unlock-recipe",
        recipe = "kovarex-enrichment-process"
    }
}
kovarex.prerequisites = {"uranium-processing", "production-science-pack"}
kovarex.unit = {
    count = 1500,
    ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1}
    },
    time = 60
}

--nuclear reprocessing
local reprocessing = data.raw["technology"]["nuclear-fuel-reprocessing"]
reprocessing.prerequisites = {"nuclear-power", "production-science-pack"}
reprocessing.unit = {
    count = 300,
    ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1}
    },
    time = 60
}

--Speed3
local speed3 = data.raw["technology"]["speed-module-3"]
speed3.prerequisites = {"production-science-pack", "speed-module-2", "advanced-electronics-2"}
speed3.unit = {
    count = 300,
    ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1}
    },
    time = 60
}

--effectivity3
local effectivity3 = data.raw["technology"]["effectivity-module-3"]
effectivity3.prerequisites = {"production-science-pack", "effectivity-module-2", "advanced-electronics-2"}
effectivity3.unit = {
    count = 300,
    ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1}
    },
    time = 60
}

--prod3
local prod3 = data.raw["technology"]["productivity-module-3"]
prod3.prerequisites = {"production-science-pack", "productivity-module-2", "advanced-electronics-2"}
prod3.unit = {
    count = 300,
    ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1}
    },
    time = 60
}

--bacons
local bacons = data.raw["technology"]["effect-transmission"]
bacons.prerequisites = {"modules", "advanced-electronics-2", "production-science-pack"}
bacons.unit = {
    count = 75,
    ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1}
    },
    time = 30
}

--logistics system
local logisticsSystem = data.raw["technology"]["logistic-system"]
logisticsSystem.prerequisites = {"logistic-robotics", "utility-science-pack"}
logisticsSystem.unit = {
    count = 150,
    ingredients =
    {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1}
    },
    time = 30
}

--power armor 1 needs military science pack and military 3 research
local powerArmor1 = data.raw["technology"]["power-armor"]
powerArmor1.unit.ingredients = {
    {"science-pack-1", 1},
    {"science-pack-2", 1},
    {"science-pack-3", 1},
    {"military-science-pack", 1}
}
powerArmor1.prerequisites = {"modular-armor", "electric-engine", "chemical-science-pack", "military-3", "advanced-electronics-2"}

--power armor 2 needs military 4 research
data.raw["technology"]["power-armor-2"].prerequisites = {"power-armor", "speed-module-2", "effectivity-module-2", "military-4", "utility-science-pack", }

--fusion reactor requires military 3 research
data.raw["technology"]["fusion-reactor-equipment"].prerequisites = {"solar-panel-equipment", "military-3", "utility-science-pack"}

--atomic bomb prerequisites to match FFF
data.raw["technology"]["atomic-bomb"].prerequisites = {"nuclear-power", "military-4", "rocketry", "rocket-control-unit", "kovarex-enrichment-process"}

--equipment changes from blue circuits to LDS
data.raw["technology"]["energy-shield-mk2-equipment"].prerequisites = {"energy-shield-equipment", "chemical-science-pack", "low-density-structure"}
data.raw["technology"]["personal-laser-defense-equipment"].prerequisites = {"modular-armor", "laser-turrets", "chemical-science-pack", "low-density-structure"}
data.raw["technology"]["battery-mk2-equipment"].prerequisites = {"battery-equipment", "low-density-structure"}
data.raw["technology"]["personal-roboport-equipment-2"].prerequisites = {"personal-roboport-equipment", "low-density-structure", "utility-science-pack"}

--solar panel equipment requires
data.raw["technology"]["solar-panel-equipment"].prerequisites = {"solar-energy"}

--technologies that need logistics science pack added to prerequisites
data.raw["technology"]["military-2"].prerequisites = {"military", "steel-processing", "logistics-science-pack"}
data.raw["technology"]["landfill"].prerequisites = {"logistics-science-pack"}
data.raw["technology"]["advanced-material-processing"].prerequisites = {"steel-processing", "logistics-science-pack"}
data.raw["technology"]["circuit-network"].prerequisites = {"electronics", "logistics-science-pack"}
data.raw["technology"]["engine"].prerequisites = {"steel-processing", "automation-2", "logistics-science-pack"}
data.raw["technology"]["toolbelt"].prerequisites = {"logistics-science-pack"}
data.raw["technology"]["research-speed-1"].prerequisites = {"electronics", "logistics-science-pack"}
data.raw["technology"]["logistics-2"].prerequisites = {"logistics", "logistics-science-pack"}
data.raw["technology"]["solar-energy"].prerequisites = {"optics", "electronics", "steel-processing", "logistics-science-pack"}
data.raw["technology"]["electric-energy-distribution-1"].prerequisites = {"electronics", "steel-processing", "logistics-science-pack"}

--technologies that need science-pack-3 added to prerequisites
data.raw["technology"]["personal-roboport-equipment"].prerequisites = {"construction-robotics", "solar-panel-equipment", "chemical-science-pack"}
data.raw["technology"]["worker-robots-speed-1"].prerequisites = {"robotics", "chemical-science-pack"}
data.raw["technology"]["exoskeleton-equipment"].prerequisites = {"solar-panel-equipment", "electric-engine", "chemical-science-pack"}
data.raw["technology"]["advanced-oil-processing"].prerequisites = {"oil-processing", "chemical-science-pack"}
data.raw["technology"]["speed-module-2"].prerequisites = {"speed-module", "chemical-science-pack"}
data.raw["technology"]["productivity-module-2"].prerequisites = {"productivity-module", "chemical-science-pack"}
data.raw["technology"]["effectivity-module-2"].prerequisites = {"effectivity-module", "chemical-science-pack"}
data.raw["technology"]["braking-force-1"].prerequisites = {"railway", "chemical-science-pack"}
data.raw["technology"]["electric-energy-distribution-2"].prerequisites = {"electric-energy-distribution-1", "chemical-science-pack"}
data.raw["technology"]["character-logistic-trash-slots-2"].prerequisites = {"character-logistic-trash-slots-1", "chemical-science-pack"}
data.raw["technology"]["battery-mk2-equipment"].prerequisites = {"battery-equipment", "chemical-science-pack"}
data.raw["technology"]["character-logistic-slots-3"].prerequisites = {"character-logistic-slots-2", "chemical-science-pack"}
data.raw["technology"]["worker-robots-storage-1"].prerequisites = {"robotics", "chemical-science-pack"}
data.raw["technology"]["research-speed-3"].prerequisites = {"research-speed-2", "chemical-science-pack"}
data.raw["technology"]["inserter-capacity-bonus-3"].prerequisites = {"inserter-capacity-bonus-2", "chemical-science-pack"}
data.raw["technology"]["mining-productivity-4"].prerequisites = {"mining-productivity-1", "chemical-science-pack"}
data.raw["technology"]["nuclear-power"].prerequisites = {"advanced-electronics", "concrete", "chemical-science-pack"}

--needs military science pack researchs
data.raw["technology"]["flamethrower"].prerequisites = {"flammables", "military-2", "military-science-pack"}
data.raw["technology"]["land-mine"].prerequisites = {"explosives", "military-2", "military-science-pack"}
data.raw["technology"]["rocketry"].prerequisites = {"electronics", "flammables", "explosives", "military-2", "military-science-pack"}
data.raw["technology"]["combat-robotics"].prerequisites = {"military-2", "robotics", "military-science-pack"}
data.raw["technology"]["energy-shield-equipment"].prerequisites = {"modular-armor", "military-science-pack"}
data.raw["technology"]["laser-turrets"].prerequisites = {"turrets", "laser", "battery", "military-2", "military-science-pack"}

--needs both military and chemical science pack researchs
data.raw["technology"]["military-3"].prerequisites = {"laser", "military-2", "chemical-science-pack", "military-science-pack"}
data.raw["technology"]["discharge-defense-equipment"].prerequisites = {"modular-armor", "laser-turrets", "chemical-science-pack", "military-science-pack"}

--needs production science pack researchs
data.raw["technology"]["automation-3"].prerequisites = {"speed-module", "automation-2", "production-science-pack"}
data.raw["technology"]["coal-liquefaction"].prerequisites = {"advanced-oil-processing", "production-science-pack"}
data.raw["technology"]["character-logistic-slots-4"].prerequisites = {"character-logistic-slots-3", "production-science-pack"}
data.raw["technology"]["inserter-capacity-bonus-4"].prerequisites = {"inserter-capacity-bonus-3", "production-science-pack"}
data.raw["technology"]["mining-productivity-8"].prerequisites = {"mining-productivity-4", "production-science-pack"}
data.raw["technology"]["worker-robots-storage-2"].prerequisites = {"worker-robots-storage-1", "production-science-pack"}
data.raw["technology"]["research-speed-5"].prerequisites = {"research-speed-4", "production-science-pack"}
data.raw["technology"]["worker-robots-speed-3"].prerequisites = {"worker-robots-speed-2", "production-science-pack"}
data.raw["technology"]["braking-force-3"].prerequisites = {"braking-force-2", "production-science-pack"}

--needs utility science pack researchs
data.raw["technology"]["military-4"].prerequisites = {"military-3", "utility-science-pack"}

--needs production and utility science pack researchs
data.raw["technology"]["character-logistic-slots-6"].prerequisites = {"character-logistic-slots-5", "production-science-pack", "utility-science-pack"}
data.raw["technology"]["inserter-capacity-bonus-7"].prerequisites = {"inserter-capacity-bonus-6", "production-science-pack", "utility-science-pack"}
data.raw["technology"]["mining-productivity-12"].prerequisites = {"mining-productivity-8", "production-science-pack", "utility-science-pack"}
data.raw["technology"]["worker-robots-storage-3"].prerequisites = {"worker-robots-storage-2", "production-science-pack", "utility-science-pack"}
data.raw["technology"]["research-speed-6"].prerequisites = {"research-speed-5", "production-science-pack", "utility-science-pack"}
data.raw["technology"]["worker-robots-speed-5"].prerequisites = {"worker-robots-speed-4", "production-science-pack", "utility-science-pack"}
data.raw["technology"]["braking-force-6"].prerequisites = {"braking-force-5", "production-science-pack", "utility-science-pack"}

--needs space science research
data.raw["technology"]["mining-productivity-16"].prerequisites = {"mining-productivity-12", "space-science-pack"}
data.raw["technology"]["worker-robots-speed-6"].prerequisites = {"worker-robots-speed-5", "space-science-pack"}
data.raw["technology"]["artillery-shell-range-1"].prerequisites = {"artillery", "space-science-pack"}
data.raw["technology"]["artillery-shell-speed-1"].prerequisites = {"artillery", "space-science-pack"}
