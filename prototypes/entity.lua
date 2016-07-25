require ("util")
require ("prototypes.railpictures")

--debug function
function printTable(table, prefixIn)
	local prefix = prefixIn or ""
--	if prefix == nil then preifx = "" end
	for k,v in pairs(table) do
		if (type(v) == "table") then
			printTable(v, prefix .. "." .. k)
		elseif type(v) == "userdata" then
			print(k .."=<userdata>")
		elseif v == nil then
			print(k .. "=nil")
		else
--			print(type(v))
			print(k .. "=" .. v)
		end
	end
end

--data:extend(
--{
--  {
--    type = "straight-rail",
--    name = "bridge-straight-rail",
--    icon = "__BridgeRailway__/graphics/bridge-straight-rail.png",
--    flags = {"placeable-neutral", "player-creation", "building-direction-8-way"},
--    minable = {mining_time = 0.5, result = "bridge-rail"},
--    max_health = 100,
--    corpse = "straight-rail-remnants",
--    collision_box = {{-0.7, -0.8}, {0.7, 0.8}},
--    selection_box = {{-0.7, -0.8}, {0.7, 0.8}},
--    collision_mask = { "object-layer", "not-colliding-with-itself" },
--    rail_category = "regular",
--    bending_type = "straight",
--    pictures = railpicturesinternal({{"metals", "metals"}, {"backplates", "backplates"}, {"ties", "ties"}, {"stone_path", "stone-path"}})
--  },
--  {
--    type = "curved-rail",
--    name = "bridge-curved-rail",
--    icon = "__BridgeRailway__/graphics/bridge-curved-rail.png",
--    flags = {"placeable-neutral", "player-creation", "building-direction-8-way"},
--    minable = {mining_time = 0.5, result = "bridge-rail", count = 4},
--    max_health = 200,
--    corpse = "curved-rail-remnants",
--    collision_box = {{-0.75, -0.55}, {0.75, 1.6}},
--    secondary_collision_box = {{-0.65, -2.43}, {0.65, 2.43}},
--    selection_box = {{-1.7, -0.8}, {1.7, 0.8}},
--    collision_mask = { "object-layer", "not-colliding-with-itself" },
--    bending_type = "turn",
--    rail_category = "regular",
--    pictures = railpictures(),
--    placeable_by = { item="bridge-rail", count = 4}
--  },
--})
--trick learned from security camera mod
local stuff = {};
local thing;
--bridge-straight-rail
thing = util.table.deepcopy(data.raw["straight-rail"]["straight-rail"])
thing.name = "bridge-straight-rail"
thing.icon = "__BridgeRailway__/graphics/bridge-straight-rail.png"
thing.collision_mask = { "object-layer", "not-colliding-with-itself" }
thing.minable.result = "bridge-rail"
table.insert(stuff, thing)
--bridge-curved-rail
thing = util.table.deepcopy(data.raw["curved-rail"]["curved-rail"])
thing.name = "bridge-curved-rail"
thing.icon = "__BridgeRailway__/graphics/bridge-curved-rail.png"
thing.collision_mask = { "object-layer", "not-colliding-with-itself" }
thing.minable.result = "bridge-rail"
thing.placeable_by.item="bridge-rail"
table.insert(stuff, thing)
--bridge-rail-signal
thing = util.table.deepcopy(data.raw["rail-signal"]["rail-signal"])
--printTable(thing)
thing.name = "bridge-rail-signal"
thing.icon = "__BridgeRailway__/graphics/bridge-rail-signal.png"
thing.collision_mask = { "object-layer"}
thing.minable.result ="bridge-rail-signal"
table.insert(stuff, thing)
--bridge-rail-chain-signal
thing = util.table.deepcopy(data.raw["rail-chain-signal"]["rail-chain-signal"])
thing.name = "bridge-rail-chain-signal"
thing.icon = "__BridgeRailway__/graphics/bridge-rail-chain-signal.png"
thing.collision_mask = { "object-layer"}
thing.minable.result ="bridge-rail-chain-signal"
table.insert(stuff, thing)
--add all the things!
data:extend(stuff)







