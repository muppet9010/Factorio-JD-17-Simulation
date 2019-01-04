--PLD does 1/2 damage at 1/3 power usage and power storage
local pld = data.raw["active-defense-equipment"]["personal-laser-defense-equipment"]
pld.attack_parameters.damage_modifier = 7
pld.attack_parameters.ammo_type.energy_consumption = "70kJ"
pld.energy_source.buffer_capacity = "75kJ"
