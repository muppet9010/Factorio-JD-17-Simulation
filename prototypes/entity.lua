--assembling machine 1 has unlimited ingredient limit
data.raw["assembling-machine"]["assembling-machine-1"].ingredient_count = 255

--assembling machine 2 has new recipe, speed, power requirements and 6 ingredient limit
local assemblingMachine2 = data.raw["assembling-machine"]["assembling-machine-2"]
assemblingMachine2.crafting_speed = 1 --stated new speed
assemblingMachine2.energy_usage = "180kW" --scaled from current values
assemblingMachine2.energy_source.emissions = 4 / 300 --keeps pollution per tick same as before
assemblingMachine2.ingredient_count = 255

--assembling machine 1 has unlimited ingredient limit
data.raw["assembling-machine"]["assembling-machine-3"].ingredient_count = 255

--sets player character to have starting mining speed of iron axe. player animation is of usign a tool when digging by hands
local playerCharacter = data.raw["player"]["player"]
playerCharacter.mining_speed = 0.04
playerCharacter.animations[1].mining_with_hands = playerCharacter.animations[1].mining_with_tool
playerCharacter.animations[2].mining_with_hands = playerCharacter.animations[2].mining_with_tool
playerCharacter.animations[3].mining_with_hands = playerCharacter.animations[3].mining_with_tool

--car has rocket launcher as extra weapon
data.raw["car"]["car"].guns = { "vehicle-machine-gun", "car-rocket-launcher" }

--belt speeds increased to 15/30/45
data.raw["transport-belt"]["transport-belt"].speed = 0.03515625
data.raw["transport-belt"]["fast-transport-belt"].speed = 0.0703125
data.raw["transport-belt"]["express-transport-belt"].speed = 0.10546875
data.raw["splitter"]["splitter"].speed = 0.03515625
data.raw["splitter"]["fast-splitter"].speed = 0.0703125
data.raw["splitter"]["express-splitter"].speed = 0.10546875
data.raw["underground-belt"]["underground-belt"].speed = 0.03515625
data.raw["underground-belt"]["fast-underground-belt"].speed = 0.0703125
data.raw["underground-belt"]["express-underground-belt"].speed = 0.10546875

--stone mining hardness same as iron ore
data.raw["resource"]["stone"].minable.hardness = 0.9
