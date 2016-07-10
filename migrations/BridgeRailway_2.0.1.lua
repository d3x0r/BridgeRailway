
for index, force in pairs(game.forces) do

  local technologies = force.technologies;
  local recipes = force.recipes;
  if technologies["bridge-railway"].researched then
    recipes["bridge-rail"].enabled = true
  end
end