--This script was made by uwy5 on discord. Server for crystalhub: discord.gg/FJQXYfaAh2




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
