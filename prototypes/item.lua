--tank machine gun reduced from 200% damage to 100%
data.raw["gun"]["tank-machine-gun"].attack_parameters.damage_modifier = 1

--tank cannon damaged increase by20%
data.raw["gun"]["tank-cannon"].attack_parameters.damage_modifier = 1.2

--car rocket launcher
data:extend({
    {
        type = "gun",
        name = "car-rocket-launcher",
        icon = "__base__/graphics/icons/rocket-launcher.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory", "hidden"},
        subgroup = "gun",
        order = "d[rocket-launcher]",
        attack_parameters =
        {
          type = "projectile",
          ammo_category = "rocket",
          movement_slow_down_factor = 0.8,
          cooldown = 60,
          projectile_creation_distance = 0.6,
          range = 22,
          projectile_center = {-0.17, 0},
          sound =
          {
            {
              filename = "__base__/sound/fight/rocket-launcher.ogg",
              volume = 0.7
            }
          }
        },
        stack_size = 5
    }
})

--Armors have near infinite durability
data.raw["armor"]["light-armor"].durability = 9007199254740992
data.raw["armor"]["heavy-armor"].durability = 9007199254740992
data.raw["armor"]["modular-armor"].durability = 9007199254740992
data.raw["armor"]["power-armor"].durability = 9007199254740992
data.raw["armor"]["power-armor-mk2"].durability = 9007199254740992
