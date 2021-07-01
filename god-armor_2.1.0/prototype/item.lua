local godArmor = table.deepcopy(data.raw["armor"]["heavy-armor"])

godArmor.name = "god-armor"
godArmor.icons = {
  {
    icon = godArmor.icon,
    tint = {r=236,g=240,b=12,a=0.3}
  },
}

godArmor.resistances = {
    {
      type = "physical",
      decrease = 0,
      percent = 100
    },
    {
      type = "explosion",
      decrease = 0,
      percent = 100
    },
    {
      type = "acid",
      decrease = 0,
      percent = 100
    },
    {
      type = "fire",
      decrease = 0,
      percent = 100
    }
  }

local recipe = table.deepcopy(data.raw["recipe"]["heavy-armor"])
recipe.enabled = true
recipe.name = "god-armor"
recipe.ingredients = {{"copper-plate",1},{"steel-plate",1}}
recipe.result = "god-armor"

data:extend{godArmor,recipe}