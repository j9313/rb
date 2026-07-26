-- Simple proximity prompt for social interactions
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function addPromptToSeat(seat)
	if seat:IsA("Seat") or seat:IsA("VehicleSeat") then
		local prompt = Instance.new("ProximityPrompt")
		prompt.ActionText = "Sit"
		prompt.ObjectText = "Lounge Seat"
		prompt.MaxActivationDistance = 8
		prompt.Parent = seat
	end
end

-- Watch for new seats
workspace.DescendantAdded:Connect(function(obj)
	if obj:IsA("Seat") or obj:IsA("VehicleSeat") then
		addPromptToSeat(obj)
	end
end)

-- Existing seats
for _, obj in workspace:GetDescendants() do
	addPromptToSeat(obj)
end
