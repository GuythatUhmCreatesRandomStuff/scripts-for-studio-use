local player = game.Players.LocalPlayer
local character = player.Character
while task.wait(0.01) do
    if character then
        local humanoid = character:WaitForChild("Humanoid")
        local rootPart = character:WaitForChild("HumanoidRootPart")
        local position = rootPart.Position
        -- Create a new part and set its position
        local newPart = Instance.new("Part", workspace)    
        newPart.Position = rootPart.Position
    end
end
