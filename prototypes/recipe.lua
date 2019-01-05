--changed iron plate to steel plate
local assemblingMachine2 = data.raw["recipe"]["assembling-machine-2"]
assemblingMachine2.normal.ingredients = {
    {"steel-plate", 2},
    {"electronic-circuit", 3},
    {"iron-gear-wheel", 5},
    {"assembling-machine-1", 1}
}


--remove iron axe and steel axe recipes from the game
data.raw["recipe"]["iron-axe"] = nil
data.raw["recipe"]["steel-axe"] = nil


--changed added sticks
local mediumpole = data.raw["recipe"]["medium-electric-pole"]
mediumpole.ingredients = {
    {"steel-plate", 2},
    {"copper-plate", 3},
    {"iron-stick", 4},
}

--changed added sticks
local bigpole = data.raw["recipe"]["big-electric-pole"]
bigpole.ingredients = {
    {"steel-plate", 5},
    {"copper-plate", 5},
    {"iron-stick", 10},
}



--green science disabled at start now
local sciencePack2 = data.raw.recipe["science-pack-2"]
sciencePack2.enabled = false

--blue science ingredients and result count as per FFF. craft time in line with military.
local sciencePack3 = data.raw["recipe"]["science-pack-3"]
sciencePack3.energy_required = 12
sciencePack3.ingredients = {
	{"advanced-circuit", 3},
	{"engine-unit", 2},
	{"solid-fuel", 1},
}

--military science ingredients
data.raw["recipe"]["military-science-pack"].ingredients ={
	{"piercing-rounds-magazine", 1},
	{"grenade", 1},
	{"stone-wall", 2} --{"gun-turret", 1}
}

--production science time, ingrediants and results
local productionSciencePack = data.raw["recipe"]["production-science-pack"]
productionSciencePack.energy_required = 21
productionSciencePack.ingredients ={
	{"rail", 30},
	{"electric-furnace", 1},
	{"productivity-module", 1}
}
productionSciencePack.result_count = 3

--utility science
local utilityScience = data.raw["recipe"]["high-tech-science-pack"]
utilityScience.energy_required = 21
utilityScience.ingredients = {
			{"processing-unit", 2},
			{"flying-robot-frame", 1},
			{"low-density-structure", 3}
		}
utilityScience.result_count = 3

--LDS
data.raw["recipe"]["low-density-structure"].normal ={
	energy_required = 20,
	enabled = false,
	ingredients =
	{
		{"steel-plate", 2},
		{"copper-plate", 20},
		{"plastic-bar", 5}
	},
	result= "low-density-structure"
}

--blue chips to RCU
data.raw["recipe"]["atomic-bomb"].ingredients = {
	{"rocket-control-unit", 20},
	{"explosives", 10},
	{"uranium-235", 30}
}

--steel and blue chips both changed to LDS
data.raw["recipe"]["power-armor-mk2"].ingredients = {
	{"effectivity-module-3", 5},
	{"speed-module-3", 5},
	{"low-density-structure", 80}
}

--blue chips both changed to LDS
data.raw["recipe"]["energy-shield-mk2-equipment"].ingredients = {
	{"energy-shield-equipment", 10},
    {"low-density-structure", 10}
}

--blue chips both changed to LDS
data.raw["recipe"]["battery-mk2-equipment"].ingredients = {
	{"battery-equipment", 10},
	{"low-density-structure", 20}
}

--blue chips changed to LDS
data.raw["recipe"]["fusion-reactor-equipment"].ingredients = {
    {"low-density-structure", 250}
}

--steel changed to LDS and blue chips dropped
data.raw["recipe"]["personal-laser-defense-equipment"].ingredients = {
	{"low-density-structure", 5},
    {"laser-turret", 5}
}

--blue chips both changed to LDS
data.raw["recipe"]["personal-roboport-mk2-equipment"].ingredients = {
	{"personal-roboport-equipment", 5},
    {"low-density-structure", 100}
}
