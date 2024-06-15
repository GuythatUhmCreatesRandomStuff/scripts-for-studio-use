-- Assuming this script is a LocalScript and is a descendant of the player's character
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:FindFirstChild("HumanoidRootPart")
local humanoid = character:FindFirstChildOfClass("Humanoid") -- Find the Humanoid object
local flingme = Instance.new("Part", workspace)
flingme.Size = Vector3.new(1, 2, 2)
while task.wait(0.01) do
    flingme.Position = rootPart.Position
    humanoid:ChangeState(Enum.HumanoidStateType.FallingDown) -- Use the found Humanoid object
    rootPart.AssemblyAngularVelocity = rootPart.AssemblyAngularVelocity + Vector3.new(0, 0.05, 0)
end
