local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer

RunService.RenderStepped:Connect(function()
    local target = nil
    local minDist = 60
    
    for _, v in pairs(Players:GetPlayers()) do
        if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("Head") then
            local dist = (v.Character.Head.Position - Camera.CFrame.Position).Magnitude
            if dist < minDist then
                target = v
                minDist = dist
            end
        end
    end
    
    if target then
        Camera.CFrame = CFrame.new(Camera.CFrame.Position, target.Character.Head.Position)
    end
end)# Testing
Testing.lua
 = 80
