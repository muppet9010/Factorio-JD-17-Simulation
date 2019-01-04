--assembling machine 1 has 6 ingredient limit
data.raw["assembling-machine"]["assembling-machine-1"].ingredient_count = 6

--assembling machine 2 has new recipe, speed, power requirements and 6 ingredient limit
local assemblingMachine2 = data.raw["assembling-machine"]["assembling-machine-2"]
assemblingMachine2.crafting_speed = 1 --stated new speed
assemblingMachine2.energy_usage = "180kW" --scaled from current values
assemblingMachine2.energy_source.emissions = 4 / 300 --keeps pollution per tick same as before
assemblingMachine2.ingredient_count = 6

--sets player character to have starting mining speed of iron axe. player animation is of usign a tool when digging by hands
local playerCharacter = data.raw["player"]["player"]
playerCharacter.mining_speed = 0.04
playerCharacter.animations[1].mining_with_hands = playerCharacter.animations[1].mining_with_tool
playerCharacter.animations[2].mining_with_hands = playerCharacter.animations[2].mining_with_tool
playerCharacter.animations[3].mining_with_hands = playerCharacter.animations[3].mining_with_tool

--car has rocket launcher as extra weapon
data.raw["car"]["car"].guns = { "vehicle-machine-gun", "car-rocket-launcher" }
