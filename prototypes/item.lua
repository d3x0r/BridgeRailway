data:extend(
{
  {
    type = "rail-planner",
    name = "bridge-rail",
    icon = "__BridgeRailway__/graphics/bridge-straight-rail.png",
    flags = {"goes-to-quickbar"},
    subgroup = "transport",
    order = "a[train-system]-a[bridge-rail]",
    place_result = "bridge-straight-rail",
    stack_size = 100,
    straight_rail = "bridge-straight-rail",
    curved_rail = "bridge-curved-rail"
  },
  {
    type = "item",
    name = "bridge-rail-signal",
    icon = "__BridgeRailway__/graphics/bridge-rail-signal.png",
    flags = {"goes-to-quickbar"},
    subgroup = "transport",
    order = "a[train-system]-d[bridge-rail-signal]",
    place_result = "bridge-rail-signal",
    stack_size = 50
  },
  {
    type = "item",
    name = "bridge-rail-chain-signal",
    icon = "__BridgeRailway__/graphics/bridge-rail-chain-signal.png",
    flags = {"goes-to-quickbar"},
    subgroup = "transport",
    order = "a[train-system]-e[bridge-rail-signal-chain]",
    place_result = "bridge-rail-chain-signal",
    stack_size = 50
  },
})