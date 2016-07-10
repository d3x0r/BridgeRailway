data:extend(
{
  {
    type = "technology",
    name = "bridge-railway",
    icon = "__BridgeRailway__/graphics/bridge-railway-tech.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bridge-rail"
      }
    },
    prerequisites = {"automated-rail-transportation"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "c-g-a",
  },
})