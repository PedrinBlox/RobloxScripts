-- this adds sprint mechanic to any game

local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local speed_fast = 50
local speed_normal = 16

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Sprint Script";
    Text = "Made by pedrin (github.com/PedrinBlox)";
    Duration = math.huge;
    Button1 = "Ok";
    Callback = function(notification)
        notification:Destroy()
    end
})

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.LeftShift or input.KeyCode == Enum.KeyCode.RightShift then
        if player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
            player.Character.Humanoid.WalkSpeed = speed_fast
        end
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.LeftShift or input.KeyCode == Enum.KeyCode.RightShift then
        if player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
            player.Character.Humanoid.WalkSpeed = speed_normal
        end
    end
end)
