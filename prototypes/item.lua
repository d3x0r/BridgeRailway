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
  }
})