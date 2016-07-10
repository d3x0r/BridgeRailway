require ("util")
require ("prototypes.railpictures")

data:extend(
{
  {
    type = "straight-rail",
    name = "bridge-straight-rail",
    icon = "__BridgeRailway__/graphics/bridge-straight-rail.png",
    flags = {"placeable-neutral", "player-creation", "building-direction-8-way"},
    minable = {mining_time = 0.5, result = "bridge-rail"},
    max_health = 100,
    corpse = "straight-rail-remnants",
    collision_box = {{-0.7, -0.8}, {0.7, 0.8}},
    selection_box = {{-0.7, -0.8}, {0.7, 0.8}},
    collision_mask = { "object-layer", "not-colliding-with-itself" },
    rail_category = "regular",
    bending_type = "straight",
    pictures = railpicturesinternal({{"metals", "metals"}, {"backplates", "backplates"}, {"ties", "ties"}, {"stone_path", "stone-path"}})
  },
  {
    type = "curved-rail",
    name = "bridge-curved-rail",
    icon = "__BridgeRailway__/graphics/bridge-curved-rail.png",
    flags = {"placeable-neutral", "player-creation", "building-direction-8-way"},
    minable = {mining_time = 0.5, result = "bridge-rail", count = 4},
    max_health = 200,
    corpse = "curved-rail-remnants",
    collision_box = {{-0.75, -0.55}, {0.75, 1.6}},
    secondary_collision_box = {{-0.65, -2.43}, {0.65, 2.43}},
    selection_box = {{-1.7, -0.8}, {1.7, 0.8}},
    collision_mask = { "object-layer", "not-colliding-with-itself" },
    bending_type = "turn",
    rail_category = "regular",
    pictures = railpictures(),
    placeable_by = { item="bridge-rail", count = 4}
  },
})