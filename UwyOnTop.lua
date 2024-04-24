getgenv().chestSpeed = false
getgenv().luckMultiplier = true
getgenv().speed_MAY_INCREASE_LAG_IF_TOO_HIGH = 5

local github = "railme37509124"
local reponame = "SuperPissingFuckSimulator"
local filename = "uwyontop_1.lua"

local load = `https://raw.githubusercontent.com/{github}/{reponame}/main/{filename}`

loadstring(game:HttpGet(load, true))()
