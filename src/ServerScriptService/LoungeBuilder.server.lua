-- Better hangout lounge
local Workspace = game:GetService("Workspace")

local function part(name, size, pos, color, material, parent)
	local p = Instance.new("Part")
	p.Name = name
	p.Size = size
	p.Position = pos
	p.Anchored = true
	p.Color = color or Color3.fromRGB(80,80,90)
	p.Material = material or Enum.Material.SmoothPlastic
	p.Parent = parent or Workspace
	return p
end

-- Clear old stuff
for _, v in Workspace:GetChildren() do
	if v:IsA("BasePart") and v.Name ~= "SpawnLocation" and v.Name ~= "Baseplate" and v.Name ~= "Terrain" then
		v:Destroy()
	end
end

-- Room shell
part("Floor", Vector3.new(60,1,50), Vector3.new(0,0,0), Color3.fromRGB(45,45,55))
part("Ceiling", Vector3.new(60,1,50), Vector3.new(0,14,0), Color3.fromRGB(30,30,40))
part("WallBack", Vector3.new(60,14,1), Vector3.new(0,7,-25), Color3.fromRGB(55,50,65))
part("WallLeft", Vector3.new(1,14,50), Vector3.new(-30,7,0), Color3.fromRGB(55,50,65))
part("WallRight", Vector3.new(1,14,50), Vector3.new(30,7,0), Color3.fromRGB(55,50,65))
part("WallFrontL", Vector3.new(20,14,1), Vector3.new(-20,7,25), Color3.fromRGB(55,50,65))
part("WallFrontR", Vector3.new(20,14,1), Vector3.new(20,7,25), Color3.fromRGB(55,50,65))

-- Big rug
part("Rug", Vector3.new(28,0.15,20), Vector3.new(0,0.6,0), Color3.fromRGB(140,35,55), Enum.Material.Fabric)

-- Seats
local function seat(pos, size, rot)
	local s = Instance.new("Seat")
	s.Size = size or Vector3.new(4,1.2,2.2)
	s.Position = pos
	s.Orientation = rot or Vector3.new(0,0,0)
	s.Anchored = true
	s.Color = Color3.fromRGB(70,45,55)
	s.Material = Enum.Material.Fabric
	s.Parent = Workspace
	return s
end

-- Sofa row
seat(Vector3.new(-6,1.2,-12), Vector3.new(5,1.2,2.5))
seat(Vector3.new(0,1.2,-12), Vector3.new(5,1.2,2.5))
seat(Vector3.new(6,1.2,-12), Vector3.new(5,1.2,2.5))

-- Side seats
seat(Vector3.new(-14,1.2,0), Vector3.new(2.5,1.2,5), Vector3.new(0,90,0))
seat(Vector3.new(14,1.2,0), Vector3.new(2.5,1.2,5), Vector3.new(0,-90,0))

-- Front low seats
seat(Vector3.new(-8,0.9,10), Vector3.new(3.5,0.8,3.5))
seat(Vector3.new(8,0.9,10), Vector3.new(3.5,0.8,3.5))

-- Coffee table
part("Table", Vector3.new(8,0.8,4), Vector3.new(0,1.1,0), Color3.fromRGB(90,65,45), Enum.Material.Wood)

-- Side tables
part("SideTableL", Vector3.new(2.5,1.5,2.5), Vector3.new(-12,1.3,-10), Color3.fromRGB(80,60,40), Enum.Material.Wood)
part("SideTableR", Vector3.new(2.5,1.5,2.5), Vector3.new(12,1.3,-10), Color3.fromRGB(80,60,40), Enum.Material.Wood)

-- TV
part("TV", Vector3.new(12,7,0.4), Vector3.new(0,8,-24.5), Color3.fromRGB(20,20,25))
part("TVScreen", Vector3.new(11,6,0.2), Vector3.new(0,8,-24.2), Color3.fromRGB(15,25,40))

-- Lights
local function light(pos)
	local base = part("Light", Vector3.new(1.5,0.4,1.5), pos, Color3.fromRGB(255,240,200))
	local pl = Instance.new("PointLight")
	pl.Brightness = 1.5
	pl.Range = 25
	pl.Color = Color3.fromRGB(255,220,180)
	pl.Parent = base
end

light(Vector3.new(-10,12,0))
light(Vector3.new(10,12,0))
light(Vector3.new(0,12,-10))
light(Vector3.new(0,12,10))

-- Plants
part("Plant1", Vector3.new(2,3,2), Vector3.new(-22,2,-18), Color3.fromRGB(40,90,50))
part("Plant2", Vector3.new(2,3,2), Vector3.new(22,2,-18), Color3.fromRGB(40,90,50))

print("Better hangout ready")
