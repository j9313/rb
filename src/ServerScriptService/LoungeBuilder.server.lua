-- Builds a basic hangout lounge on server start
local Workspace = game:GetService("Workspace")

local function createPart(name, size, pos, color, material)
	local p = Instance.new("Part")
	p.Name = name
	p.Size = size
	p.Position = pos
	p.Anchored = true
	p.Color = color or Color3.fromRGB(100, 100, 100)
	p.Material = material or Enum.Material.SmoothPlastic
	p.Parent = Workspace
	return p
end

-- Floor
createPart("Floor", Vector3.new(80, 1, 80), Vector3.new(0, 0, 0), Color3.fromRGB(60, 60, 70))

-- Walls (simple open lounge)
createPart("WallN", Vector3.new(80, 12, 1), Vector3.new(0, 6, -40), Color3.fromRGB(40, 40, 50))
createPart("WallS", Vector3.new(80, 12, 1), Vector3.new(0, 6, 40), Color3.fromRGB(40, 40, 50))
createPart("WallE", Vector3.new(1, 12, 80), Vector3.new(40, 6, 0), Color3.fromRGB(40, 40, 50))
createPart("WallW", Vector3.new(1, 12, 80), Vector3.new(-40, 6, 0), Color3.fromRGB(40, 40, 50))

-- Ceiling
createPart("Ceiling", Vector3.new(80, 1, 80), Vector3.new(0, 12, 0), Color3.fromRGB(30, 30, 40))

-- Center rug / platform
createPart("Rug", Vector3.new(20, 0.2, 20), Vector3.new(0, 0.6, 0), Color3.fromRGB(120, 40, 60), Enum.Material.Fabric)

-- Seats (couches)
local function makeSeat(pos, rot)
	local seat = Instance.new("Seat")
	seat.Size = Vector3.new(4, 1, 2)
	seat.Position = pos
	seat.Orientation = rot or Vector3.new(0, 0, 0)
	seat.Anchored = true
	seat.Color = Color3.fromRGB(80, 50, 40)
	seat.Material = Enum.Material.Fabric
	seat.Parent = Workspace
	return seat
end

makeSeat(Vector3.new(-8, 1.5, -6), Vector3.new(0, 30, 0))
makeSeat(Vector3.new(8, 1.5, -6), Vector3.new(0, -30, 0))
makeSeat(Vector3.new(0, 1.5, 8), Vector3.new(0, 180, 0))
makeSeat(Vector3.new(-12, 1.5, 4), Vector3.new(0, 90, 0))
makeSeat(Vector3.new(12, 1.5, 4), Vector3.new(0, -90, 0))

-- Table
createPart("Table", Vector3.new(6, 1, 3), Vector3.new(0, 1.5, 0), Color3.fromRGB(90, 60, 40), Enum.Material.Wood)

-- Lighting
local light = Instance.new("PointLight")
light.Brightness = 2
light.Range = 40
light.Color = Color3.fromRGB(255, 220, 180)
light.Parent = createPart("LightBase", Vector3.new(1, 1, 1), Vector3.new(0, 10, 0), Color3.fromRGB(255, 255, 200))

print("Lounge built")
