-- Basic hangout setup
local Players = game:GetService("Players")

-- Ensure spawn locations exist
local function setupSpawns()
	local spawns = workspace:FindFirstChild("Spawns") or Instance.new("Folder")
	spawns.Name = "Spawns"
	spawns.Parent = workspace

	-- Add a default spawn if none exist
	if #spawns:GetChildren() == 0 then
		local spawn = Instance.new("SpawnLocation")
		spawn.Name = "MainSpawn"
		spawn.Position = Vector3.new(0, 5, 0)
		spawn.Anchored = true
		spawn.Parent = spawns
	end
end

setupSpawns()

print("Hangout space loaded")
