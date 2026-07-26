-- Soft ambient music for the hangout
local SoundService = game:GetService("SoundService")

local music = Instance.new("Sound")
music.Name = "LoungeMusic"
music.SoundId = "rbxassetid://1843527428" -- calm ambient (replace with your own)
music.Volume = 0.3
music.Looped = true
music.Parent = SoundService
music:Play()

print("Lounge music playing")
