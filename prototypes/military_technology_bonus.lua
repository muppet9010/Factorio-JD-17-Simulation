--TODO: hide new and unchanged military upgrade techs behind their science pre-reqs and weapon system (if applicable)

local Constants = require("constants")

--remove all old military bonuses (flamables, laser turret shooting speed and robot follower count not affected)
local oldMilitaryTechNames = {"grenade-damage-", "shotgun-shell-damage-", "shotgun-shell-speed-", "laser-turret-damage-", "gun-turret-damage-", "bullet-damage-", "bullet-speed-", "rocket-damage-", "rocket-speed-", "cannon-shell-damage-", "cannon-shell-speed-", "combat-robot-damage-"}
for techName in pairs(data.raw["technology"]) do
    for key, oldMilitaryNameText in pairs(oldMilitaryTechNames) do
        if string.sub(techName, 1, string.len(oldMilitaryNameText)) == oldMilitaryNameText then
            data.raw["technology"][techName] = nil
        end
    end
end

--ALL TECH COSTS DOUBLED FROM BASE RESEARCH BLINDLY WHEN OLD TECHS MERGED

--Physical projectile damage - Bullets, Gun turrets, Shotgun shells, Tank cannon shell
data:extend({
    {
        type = "technology",
        name = "physical-projectile-damage-1",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/physical-projectile-damage.png",
        effects =
        {
          {
            type = "ammo-damage",
            ammo_category = "bullet",
            modifier = 0.1
          },
          {
            type = "turret-attack",
            turret_id = "gun-turret",
            modifier = 0.1
          },
          {
            type = "ammo-damage",
            ammo_category = "shotgun-shell",
            modifier = 0.1
          }
        },
        prerequisites = {"military"},
        unit =
        {
          count = 100,
          ingredients =
          {
            {"science-pack-1", 1}
          },
          time = 30
        },
        upgrade = true,
        order = "e-l-a"
    },
    {
      type = "technology",
      name = "physical-projectile-damage-2",
      icon_size = 128,
      icon = Constants.GraphicsModName .. "/graphics/physical-projectile-damage.png",
      effects =
      {
        {
          type = "ammo-damage",
          ammo_category = "bullet",
          modifier = 0.1
        },
        {
            type = "turret-attack",
            turret_id = "gun-turret",
            modifier = 0.1
        },
        {
            type = "ammo-damage",
            ammo_category = "shotgun-shell",
            modifier = 0.1
          },
          {
            type = "ammo-damage",
            ammo_category = "cannon-shell",
            modifier = 0.2
          }
      },
      prerequisites = {"physical-projectile-damage-1", "logistics-science-pack"},
      unit =
      {
        count = 200,
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1}
        },
        time = 30
      },
      upgrade = true,
      order = "e-l-b"
    },
    {
      type = "technology",
      name = "physical-projectile-damage-3",
      icon_size = 128,
      icon = Constants.GraphicsModName .. "/graphics/physical-projectile-damage.png",
      effects =
      {
        {
            type = "ammo-damage",
            ammo_category = "bullet",
            modifier = 0.2
        },
        {
            type = "turret-attack",
            turret_id = "gun-turret",
            modifier = 0.2
        },
        {
            type = "ammo-damage",
            ammo_category = "shotgun-shell",
            modifier = 0.2
          },
          {
            type = "ammo-damage",
            ammo_category = "cannon-shell",
            modifier = 0.2
          }
      },
      prerequisites = {"physical-projectile-damage-2", "military-science-pack"},
      unit =
      {
        count = 200,
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
          {"military-science-pack", 1}
        },
        time = 60
      },
      upgrade = true,
      order = "e-l-c"
    },
    {
      type = "technology",
      name = "physical-projectile-damage-4",
      icon_size = 128,
      icon = Constants.GraphicsModName .. "/graphics/physical-projectile-damage.png",
      effects =
      {
        {
          type = "ammo-damage",
          ammo_category = "bullet",
          modifier = 0.2
        },
        {
            type = "turret-attack",
            turret_id = "gun-turret",
            modifier = 0.2
          },
          {
            type = "ammo-damage",
            ammo_category = "shotgun-shell",
            modifier = 0.2
          },
          {
            type = "ammo-damage",
            ammo_category = "cannon-shell",
            modifier = 0.3
          }
      },
      prerequisites = {"physical-projectile-damage-3"},
      unit =
      {
        count = 400,
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
          {"military-science-pack", 1}
        },
        time = 60
      },
      upgrade = true,
      order = "e-l-d"
    },
    {
      type = "technology",
      name = "physical-projectile-damage-5",
      icon_size = 128,
      icon = Constants.GraphicsModName .. "/graphics/physical-projectile-damage.png",
      effects =
      {
        {
          type = "ammo-damage",
          ammo_category = "bullet",
          modifier = 0.2
        },
        {
            type = "turret-attack",
            turret_id = "gun-turret",
            modifier = 0.2
          },
          {
            type = "ammo-damage",
            ammo_category = "shotgun-shell",
            modifier = 0.2
          },
          {
            type = "ammo-damage",
            ammo_category = "cannon-shell",
            modifier = 0.5
          }
      },
      prerequisites = {"physical-projectile-damage-4", "chemical-science-pack"},
      unit =
      {
        count = 400,
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
          {"science-pack-3", 1},
          {"military-science-pack", 1}
        },
        time = 60
      },
      upgrade = true,
      order = "e-l-e"
    },
    {
      type = "technology",
      name = "physical-projectile-damage-6",
      icon_size = 128,
      icon = Constants.GraphicsModName .. "/graphics/physical-projectile-damage.png",
      effects =
      {
        {
          type = "ammo-damage",
          ammo_category = "bullet",
          modifier = 0.4
        },
        {
            type = "turret-attack",
            turret_id = "gun-turret",
            modifier = 0.4
          },
          {
            type = "ammo-damage",
            ammo_category = "shotgun-shell",
            modifier = 0.4
          },
          {
            type = "ammo-damage",
            ammo_category = "cannon-shell",
            modifier = 1
          }
      },
      prerequisites = {"physical-projectile-damage-5", "utility-science-pack"},
      unit =
      {
        count = 600,
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
          {"science-pack-3", 1},
          {"military-science-pack", 1},
          {"high-tech-science-pack", 1}
        },
        time = 60
      },
      upgrade = true,
      order = "e-l-f"
    },
    {
      type = "technology",
      name = "physical-projectile-damage-7",
      icon_size = 128,
      icon = Constants.GraphicsModName .. "/graphics/physical-projectile-damage.png",
      effects =
      {
        {
          type = "ammo-damage",
          ammo_category = "bullet",
          modifier = 0.4
        },
        {
            type = "turret-attack",
            turret_id = "gun-turret",
            modifier = 0.7
          },
          {
            type = "ammo-damage",
            ammo_category = "shotgun-shell",
            modifier = 0.4
          },
          {
            type = "ammo-damage",
            ammo_category = "cannon-shell",
            modifier = 1
          }
      },
      prerequisites = {"physical-projectile-damage-6", "space-science-pack"},
      unit =
      {
        count_formula = "2^(L-7)*2000",
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
          {"science-pack-3", 1},
          {"military-science-pack", 1},
          {"high-tech-science-pack", 1},
          {"space-science-pack", 1}
        },
        time = 60
      },
      max_level = "infinite",
      upgrade = true,
      order = "e-l-f"
    }
})

--Energy weapons damage - Laser turret, Personal laser defense, Distractor robots, Destroyer robots
--personal lasers modifiers same as laser turrets
data:extend({
    {
        type = "technology",
        name = "energy-weapons-damage-1",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/energy-weapons-damage.png",
        effects =
        {
          {
            type = "ammo-damage",
            ammo_category = "laser-turret",
            modifier = 0.1
          },
          {
            type = "ammo-damage",
            ammo_category = "electric",
            modifier = 0.1
          },
          {
            type = "ammo-damage",
            ammo_category = "combat-robot-laser",
            modifier = 0.1
          },
          {
            type = "ammo-damage",
            ammo_category = "combat-robot-beam",
            modifier = 0.1
          }
        },
        prerequisites = {"laser-turrets"},
        unit =
        {
          count = 100,
          ingredients =
          {
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"military-science-pack", 1}
          },
          time = 30
        },
        upgrade = true,
        order = "e-n-a"
      },
      {
        type = "technology",
        name = "energy-weapons-damage-2",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/energy-weapons-damage.png",
        effects =
        {
            {
                type = "ammo-damage",
                ammo_category = "laser-turret",
                modifier = 0.1
              },
              {
                type = "ammo-damage",
                ammo_category = "electric",
                modifier = 0.1
              },
              {
                type = "ammo-damage",
                ammo_category = "combat-robot-laser",
                modifier = 0.15
              },
              {
                type = "ammo-damage",
                ammo_category = "combat-robot-beam",
                modifier = 0.15
              }
        },
        prerequisites = {"energy-weapons-damage-1"},
        unit =
        {
          count = 200,
          ingredients =
          {
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"military-science-pack", 1}
          },
          time = 30
        },
        upgrade = true,
        order = "e-n-b"
      },
      {
        type = "technology",
        name = "energy-weapons-damage-3",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/energy-weapons-damage.png",
        effects =
        {
            {
                type = "ammo-damage",
                ammo_category = "laser-turret",
                modifier = 0.3
              },
              {
                type = "ammo-damage",
                ammo_category = "electric",
                modifier = 0.3
              },
              {
                type = "ammo-damage",
                ammo_category = "combat-robot-laser",
                modifier = 0.2
              },
              {
                type = "ammo-damage",
                ammo_category = "combat-robot-beam",
                modifier = 0.2
              }
        },
        prerequisites = {"energy-weapons-damage-2", "chemical-science-pack"},
        unit =
        {
          count = 200,
          ingredients =
          {
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"science-pack-3", 1},
            {"military-science-pack", 1}
          },
          time = 60
        },
        upgrade = true,
        order = "e-n-c"
      },
      {
        type = "technology",
        name = "energy-weapons-damage-4",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/energy-weapons-damage.png",
        effects =
        {
            {
                type = "ammo-damage",
                ammo_category = "laser-turret",
                modifier = 0.3
              },
              {
                type = "ammo-damage",
                ammo_category = "electric",
                modifier = 0.3
              },
              {
                type = "ammo-damage",
                ammo_category = "combat-robot-laser",
                modifier = 0.25
              },
              {
                type = "ammo-damage",
                ammo_category = "combat-robot-beam",
                modifier = 0.25
              }
        },
        prerequisites = {"energy-weapons-damage-3"},
        unit =
        {
          count = 400,
          ingredients =
          {
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"science-pack-3", 1},
            {"military-science-pack", 1}
          },
          time = 60
        },
        upgrade = true,
        order = "e-n-d"
      },
      {
        type = "technology",
        name = "energy-weapons-damage-5",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/energy-weapons-damage.png",
        effects =
        {
            {
                type = "ammo-damage",
                ammo_category = "laser-turret",
                modifier = 0.3
              },
              {
                type = "ammo-damage",
                ammo_category = "electric",
                modifier = 0.3
              },
              {
                type = "ammo-damage",
                ammo_category = "combat-robot-laser",
                modifier = 0.3
              },
              {
                type = "ammo-damage",
                ammo_category = "combat-robot-beam",
                modifier = 0.3
              }
        },
        prerequisites = {"energy-weapons-damage-4", "utility-science-pack"},
        unit =
        {
          count = 400,
          ingredients =
          {
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"science-pack-3", 1},
            {"military-science-pack", 1},
            {"high-tech-science-pack", 1}
          },
          time = 60
        },
        upgrade = true,
        order = "e-n-e"
      },
      {
        type = "technology",
        name = "energy-weapons-damage-6",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/energy-weapons-damage.png",
        effects =
        {
            {
                type = "ammo-damage",
                ammo_category = "laser-turret",
                modifier = 0.5
              },
              {
                type = "ammo-damage",
                ammo_category = "electric",
                modifier = 0.5
              },
              {
                type = "ammo-damage",
                ammo_category = "combat-robot-laser",
                modifier = 0.3
              },
              {
                type = "ammo-damage",
                ammo_category = "combat-robot-beam",
                modifier = 0.3
              }
        },
        prerequisites = {"energy-weapons-damage-5"},
        unit =
        {
          count = 700,
          ingredients =
          {
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"science-pack-3", 1},
            {"military-science-pack", 1},
            {"high-tech-science-pack", 1}
          },
          time = 60
        },
        upgrade = true,
        order = "e-n-f"
      },
      {
        type = "technology",
        name = "energy-weapons-damage-7",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/energy-weapons-damage.png",
        effects =
        {
            {
                type = "ammo-damage",
                ammo_category = "laser-turret",
                modifier = 0.7
              },
              {
                type = "ammo-damage",
                ammo_category = "electric",
                modifier = 0.7
              },
              {
                type = "ammo-damage",
                ammo_category = "combat-robot-laser",
                modifier = 0.7
              },
              {
                type = "ammo-damage",
                ammo_category = "combat-robot-beam",
                modifier = 0.7
              }
        },
        prerequisites = {"energy-weapons-damage-6"},
        unit =
        {
          count = 1000,
          ingredients =
          {
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"science-pack-3", 1},
            {"military-science-pack", 1},
            {"high-tech-science-pack", 1}
          },
          time = 60
        },
        upgrade = true,
        order = "e-n-g"
      },
      {
        type = "technology",
        name = "energy-weapons-damage-8",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/energy-weapons-damage.png",
        effects =
        {
            {
                type = "ammo-damage",
                ammo_category = "laser-turret",
                modifier = 0.7
              },
              {
                type = "ammo-damage",
                ammo_category = "electric",
                modifier = 0.7
              },
              {
                type = "ammo-damage",
                ammo_category = "combat-robot-laser",
                modifier = 0.7
              },
              {
                type = "ammo-damage",
                ammo_category = "combat-robot-beam",
                modifier = 0.7
              }
        },
        prerequisites = {"energy-weapons-damage-7", "space-science-pack"},
        unit =
        {
          count_formula = "2^(L-8)*2000",
          ingredients =
          {
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"science-pack-3", 1},
            {"military-science-pack", 1},
            {"high-tech-science-pack", 1},
            {"space-science-pack", 1}
          },
          time = 60
        },
        max_level = "infinite",
        upgrade = true,
        order = "e-n-g"
      },
})

--Stronger explosives - Grenades, Rockets, Land mines
data:extend({
    {
        type = "technology",
        name = "stronger-explosives-1",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/stronger-explosives.png",
        effects =
        {
          {
            type = "ammo-damage",
            ammo_category = "grenade",
            modifier = 0.2
          },
          {
            type = "ammo-damage",
            ammo_category = "rocket",
            modifier = 0.2
          },
          {
            type = "ammo-damage",
            ammo_category = "landmine",
            modifier = 0.2
          }
        },
        prerequisites = {"military-2", "military-science-pack"},
        unit =
        {
          count = 100,
          ingredients =
          {
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"military-science-pack", 1}
          },
          time = 30
        },
        upgrade = true,
        order = "e-n-a"
      },
      {
        type = "technology",
        name = "stronger-explosives-2",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/stronger-explosives.png",
        effects =
        {
          {
            type = "ammo-damage",
            ammo_category = "grenade",
            modifier = 0.2
          },
          {
            type = "ammo-damage",
            ammo_category = "rocket",
            modifier = 0.2
          },
          {
            type = "ammo-damage",
            ammo_category = "landmine",
            modifier = 0.2
          }
        },
        prerequisites = {"stronger-explosives-1"},
        unit =
        {
          count = 200,
          ingredients =
          {
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"military-science-pack", 1}
          },
          time = 45
        },
        upgrade = true,
        order = "e-n-a"
      },
      {
        type = "technology",
        name = "stronger-explosives-3",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/stronger-explosives.png",
        effects =
        {
          {
            type = "ammo-damage",
            ammo_category = "grenade",
            modifier = 0.2
          },
          {
            type = "ammo-damage",
            ammo_category = "rocket",
            modifier = 0.3
          },
          {
            type = "ammo-damage",
            ammo_category = "landmine",
            modifier = 0.2
          }
        },
        prerequisites = {"stronger-explosives-2"},
        unit =
        {
          count = 300,
          ingredients =
          {
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"military-science-pack", 1}
          },
          time = 45
        },
        upgrade = true,
        order = "e-n-a"
      },
      {
        type = "technology",
        name = "stronger-explosives-4",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/stronger-explosives.png",
        effects =
        {
          {
            type = "ammo-damage",
            ammo_category = "grenade",
            modifier = 0.2
          },
          {
            type = "ammo-damage",
            ammo_category = "rocket",
            modifier = 0.3
          },
          {
            type = "ammo-damage",
            ammo_category = "landmine",
            modifier = 0.2
          }
        },
        prerequisites = {"stronger-explosives-3", "chemical-science-pack"},
        unit =
        {
          count = 600,
          ingredients =
          {
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"science-pack-3", 1},
            {"military-science-pack", 1}
          },
          time = 45
        },
        upgrade = true,
        order = "e-n-a"
      },
      {
        type = "technology",
        name = "stronger-explosives-5",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/stronger-explosives.png",
        effects =
        {
          {
            type = "ammo-damage",
            ammo_category = "grenade",
            modifier = 0.2
          },
          {
            type = "ammo-damage",
            ammo_category = "rocket",
            modifier = 0.3
          },
          {
            type = "ammo-damage",
            ammo_category = "landmine",
            modifier = 0.2
          }
        },
        prerequisites = {"stronger-explosives-4"},
        unit =
        {
          count = 1200,
          ingredients =
          {
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"science-pack-3", 1},
            {"military-science-pack", 1}
          },
          time = 45
        },
        upgrade = true,
        order = "e-n-a"
      },
      {
        type = "technology",
        name = "stronger-explosives-6",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/stronger-explosives.png",
        effects =
        {
          {
            type = "ammo-damage",
            ammo_category = "grenade",
            modifier = 0.2
          },
          {
            type = "ammo-damage",
            ammo_category = "rocket",
            modifier = 0.5
          },
          {
            type = "ammo-damage",
            ammo_category = "landmine",
            modifier = 0.2
          }
        },
        prerequisites = {"stronger-explosives-5", "utility-science-pack"},
        unit =
        {
          count = 2000,
          ingredients =
          {
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"science-pack-3", 1},
            {"military-science-pack", 1},
            {"high-tech-science-pack", 1}
          },
          time = 45
        },
        upgrade = true,
        order = "e-n-a"
      },
      {
        type = "technology",
        name = "stronger-explosives-7",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/stronger-explosives.png",
        effects =
        {
          {
            type = "ammo-damage",
            ammo_category = "grenade",
            modifier = 0.2
          },
          {
            type = "ammo-damage",
            ammo_category = "rocket",
            modifier = 0.5
          },
          {
            type = "ammo-damage",
            ammo_category = "landmine",
            modifier = 0.2
          }
        },
        prerequisites = {"stronger-explosives-6", "space-science-pack"},
        unit =
        {
          count_formula = "2^(L-6)*2000",
          ingredients =
          {
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"science-pack-3", 1},
            {"military-science-pack", 1},
            {"high-tech-science-pack", 1},
            {"space-science-pack", 1}
          },
          time = 45
        },
        upgrade = true,
        max_level = "infinite",
        order = "e-n-a"
      }
})

--Refined flammables - Flamethrower turret, Flamethrower (handheld)
data.raw["technology"]["flamethrower-damage-1"].icon = Constants.GraphicsModName .. "/graphics/refined-flammables.png"

data.raw["technology"]["flamethrower-damage-2"].icon = Constants.GraphicsModName .. "/graphics/refined-flammables.png"

local flameDamage3 = data.raw["technology"]["flamethrower-damage-3"]
flameDamage3.icon = Constants.GraphicsModName .. "/graphics/refined-flammables.png"
flameDamage3.prerequisites = {"flamethrower-damage-2", "chemical-science-pack"}

data.raw["technology"]["flamethrower-damage-4"].icon = Constants.GraphicsModName .. "/graphics/refined-flammables.png"

local flameDamage5 = data.raw["technology"]["flamethrower-damage-5"]
flameDamage5.icon = Constants.GraphicsModName .. "/graphics/refined-flammables.png"
flameDamage5.prerequisites = {"flamethrower-damage-4", "utility-science-pack"}

data.raw["technology"]["flamethrower-damage-6"].icon = Constants.GraphicsModName .. "/graphics/refined-flammables.png"

local flameDamage7 = data.raw["technology"]["flamethrower-damage-7"]
flameDamage7.icon = Constants.GraphicsModName .. "/graphics/refined-flammables.png"
flameDamage7.prerequisites = {"flamethrower-damage-6", "space-science-pack"}

--laser shooting speed
data.raw["technology"]["laser-turret-speed-3"].prerequisites = {"laser-turret-speed-2", "chemical-science-pack"}
data.raw["technology"]["laser-turret-speed-5"].prerequisites = {"laser-turret-speed-4", "utility-science-pack"}

--follower robot count
table.insert(data.raw["technology"]["follower-robot-count-3"].prerequisites, "chemical-science-pack")
table.insert(data.raw["technology"]["follower-robot-count-5"].prerequisites, "utility-science-pack")
table.insert(data.raw["technology"]["follower-robot-count-6"].prerequisites, "space-science-pack")

--Weapon shooting speed - Bullets, Shotgun shells, Tank cannon shells, Rockets
data:extend({
    {
        type = "technology",
        name = "weapon-shooting-speed-1",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/weapon-shooting-speed.png",
        effects =
        {
          {
            type = "gun-speed",
            ammo_category = "bullet",
            modifier = 0.1
          },
          {
            type = "gun-speed",
            ammo_category = "shotgun-shell",
            modifier = 0.1
          },
          {
            type = "gun-speed",
            ammo_category = "rocket",
            modifier = 0.3
          }
        },
        prerequisites = {"military"},
        unit =
        {
          count = 100,
          ingredients =
          {
            {"science-pack-1", 1}
          },
          time = 30
        },
        upgrade = true,
        order = "e-l-g"
      },
      {
        type = "technology",
        name = "weapon-shooting-speed-2",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/weapon-shooting-speed.png",
        effects =
        {
          {
            type = "gun-speed",
            ammo_category = "bullet",
            modifier = 0.2
          },
          {
            type = "gun-speed",
            ammo_category = "shotgun-shell",
            modifier = 0.2
          },
          {
            type = "gun-speed",
            ammo_category = "rocket",
            modifier = 0.3
          }
        },
        prerequisites = {"weapon-shooting-speed-1", "logistics-science-pack"},
        unit =
        {
          count = 200,
          ingredients =
          {
            {"science-pack-1", 1},
            {"science-pack-2", 1}
          },
          time = 30
        },
        upgrade = true,
        order = "e-l-h"
      },
      {
        type = "technology",
        name = "weapon-shooting-speed-3",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/weapon-shooting-speed.png",
        effects =
        {
          {
            type = "gun-speed",
            ammo_category = "bullet",
            modifier = 0.2
          },
          {
            type = "gun-speed",
            ammo_category = "shotgun-shell",
            modifier = 0.3
          },
          {
            type = "gun-speed",
            ammo_category = "rocket",
            modifier = 0.4
          },
          {
            type = "gun-speed",
            ammo_category = "cannon-shell",
            modifier = 0.2
          }
        },
        prerequisites = {"weapon-shooting-speed-2"},
        unit =
        {
          count = 200,
          ingredients =
          {
            {"science-pack-1", 1},
            {"science-pack-2", 1}
          },
          time = 60
        },
        upgrade = true,
        order = "e-l-i"
      },
      {
        type = "technology",
        name = "weapon-shooting-speed-4",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/weapon-shooting-speed.png",
        effects =
        {
          {
            type = "gun-speed",
            ammo_category = "bullet",
            modifier = 0.3
          },
          {
            type = "gun-speed",
            ammo_category = "shotgun-shell",
            modifier = 0.3
          },
          {
            type = "gun-speed",
            ammo_category = "rocket",
            modifier = 0.4
          },
          {
            type = "gun-speed",
            ammo_category = "cannon-shell",
            modifier = 0.2
          }
        },
        prerequisites = {"weapon-shooting-speed-3", "military-science-pack"},
        unit =
        {
          count = 400,
          ingredients =
          {
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"military-science-pack", 1}
          },
          time = 60
        },
        upgrade = true,
        order = "e-l-j"
      },
      {
        type = "technology",
        name = "weapon-shooting-speed-5",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/weapon-shooting-speed.png",
        effects =
        {
          {
            type = "gun-speed",
            ammo_category = "bullet",
            modifier = 0.3
          },
          {
            type = "gun-speed",
            ammo_category = "shotgun-shell",
            modifier = 0.3
          },
          {
            type = "gun-speed",
            ammo_category = "rocket",
            modifier = 0.4
          },
          {
            type = "gun-speed",
            ammo_category = "cannon-shell",
            modifier = 0.3
          }
        },
        prerequisites = {"weapon-shooting-speed-4", "chemical-science-pack"},
        unit =
        {
          count = 400,
          ingredients =
          {
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"science-pack-3", 1},
            {"military-science-pack", 1}
          },
          time = 60
        },
        upgrade = true,
        order = "e-l-k"
      },
      {
        type = "technology",
        name = "weapon-shooting-speed-6",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/weapon-shooting-speed.png",
        effects =
        {
          {
            type = "gun-speed",
            ammo_category = "bullet",
            modifier = 0.4
          },
          {
            type = "gun-speed",
            ammo_category = "shotgun-shell",
            modifier = 0.4
          },
          {
            type = "gun-speed",
            ammo_category = "rocket",
            modifier = 0.6
          },
          {
            type = "gun-speed",
            ammo_category = "cannon-shell",
            modifier = 0.6
          }
        },
        prerequisites = {"weapon-shooting-speed-5", "utility-science-pack"},
        unit =
        {
          count = 800,
          ingredients =
          {
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"science-pack-3", 1},
            {"military-science-pack", 1},
            {"high-tech-science-pack", 1}
          },
          time = 60
        },
        upgrade = true,
        order = "e-l-l"
      },
      {
        type = "technology",
        name = "weapon-shooting-speed-7",
        icon_size = 128,
        icon = Constants.GraphicsModName .. "/graphics/weapon-shooting-speed.png",
        effects =
        {
          {
            type = "gun-speed",
            ammo_category = "rocket",
            modifier = 1
          },
          {
            type = "gun-speed",
            ammo_category = "cannon-shell",
            modifier = 1
          }
        },
        prerequisites = {"weapon-shooting-speed-6"},
        unit =
        {
          count = 1000,
          ingredients =
          {
            {"military-science-pack", 1},
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"science-pack-3", 1},
            {"high-tech-science-pack", 1}
          },
          time = 60
        },
        upgrade = true,
        order = "e-j-n"
      }
})
