local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

RunService.Heartbeat:Connect(function()
    for _, v in pairs(workspace:GetChildren()) do
        if v.Name == "Coin" and v:IsA("Part") then
            local dist = (v.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if dist < 50 then
                LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                wait(0.1)
            end
        end
    end
end)
