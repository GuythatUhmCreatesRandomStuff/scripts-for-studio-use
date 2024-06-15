local player = game.Players.LocalPlayer
local newPart = Instance.new("Part", workspace)
newPart.Transparency = 0
while task.wait(0.01) do
    local character = player.Character
    if character then
        local humanoid = character:WaitForChild("Humanoid")
        local rootPart = character:WaitForChild("HumanoidRootPart")
        local position = rootPart.Position
        newPart.Position = rootPart.Position + Vector3.new(0, -3.8, 0)
        newPart.Rotation = rootPart.Rotation + Vector3.new(0, 90, 0)
        if newPart.AssemblyLinearVelocity.Y <= -150 then
            newPart.AssemblyLinearVelocity = Vector3.new(
                newPart.AssemblyLinearVelocity.X,
                -150,
                newPart.AssemblyLinearVelocity.Z
            )

        end
        newPart.AssemblyAngularVelocity = rootPart.AssemblyAngularVelocity
    end
end
