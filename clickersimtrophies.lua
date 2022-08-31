local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wally2", true))()
local w = library:CreateWindow('Clicker Simulator')
w:Section('Trophies')
local b = w:Button("Collect Trophies", function()
    local playerHead = game.Players.LocalPlayer.Character.Head

    for i, v in pairs(game:GetService("Workspace").Zones.HalfYear.Drops:GetDescendants()) do
        if v.Name =="TouchInterest" and v.Parent then
            firetouchinterest(playerHead, v.Parent, 0)
            wait(0.01) -- set any cd
            firetouchinterest(playerHead, v.Parent, 1)
        end
    end
end)
