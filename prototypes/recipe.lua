data:extend(
{
  {
    type = "recipe",
    name = "bridge-rail",
    enabled = "false",
    ingredients =
    {
      {"stone", 1},
      {"wood", 1},
      {"iron-stick", 1},
      {"steel-plate", 2}
    },
    result = "bridge-rail",
    result_count = 2
  },
  {
  	type = "recipe",
  	name = "bridge-rail-signal",
  	enabled = "false",
  	ingredients = {
  		{"rail-signal", 1},
  		{"wood", 1}
  	},
  	result = "bridge-rail-signal"
  },
  {
  	type = "recipe",
  	name = "bridge-rail-chain-signal",
  	enabled = "false",
  	ingredients = {
  		{"rail-chain-signal", 1},
  		{"wood", 1}
  	},
  	result = "bridge-rail-chain-signal"
  }
  
})