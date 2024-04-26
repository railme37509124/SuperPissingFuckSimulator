--uwy on top of u skids tryna read the code LOL
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
