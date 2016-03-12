data:extend(
{
  {
    type = "item",
    name = "bridge-straight-rail",
    icon = "__BridgeRailway__/graphics/bridge-straight-rail.png",
    flags = {"goes-to-quickbar"},
    subgroup = "transport",
    order = "a[train-system]-a[straight-rail]",
    place_result = "bridge-straight-rail",
    stack_size = 100
  },
  {
    type = "item",
    name = "bridge-curved-rail",
    icon = "__BridgeRailway__/graphics/bridge-curved-rail.png",
    flags = {"goes-to-quickbar"},
    subgroup = "transport",
    order = "a[train-system]-b[curved-rail]",
    place_result = "bridge-curved-rail",
    stack_size = 50
  },
})