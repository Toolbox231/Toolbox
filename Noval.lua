crashy = true
on = false
if game.CoreGui:FindFirstChild('gui') then
    game.CoreGui.ESP:Destroy()
elseif game.Players.LocalPlayer.PlayerGui:FindFirstChild('gui') then
    game.Players.LocalPlayer.PlayerGui.ESP:Destroy()
end
local main = Instance.new('Frame', V1)
local V1 = Instance.new('Frame', main)
local S = Instance.new("ScreenGui")
local UICorner = Instance.new("UICorner")
local UICorner2 = Instance.new("UICorner")
local UICorner3 = Instance.new("UICorner")
local UICorner4 = Instance.new("UICorner")
local Open = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Title2 = Instance.new("TextLabel")
local UICorner5 = Instance.new("UICorner")
local TeleportToA = Instance.new("TextButton")
local TeleportToB = Instance.new("TextButton")
local UICorner6 = Instance.new("UICorner")
local TeleportToC = Instance.new("TextButton")
local UICorner7 = Instance.new("UICorner")
local KillAura = Instance.new("TextButton")
local UICorner8 = Instance.new("UICorner")
local UICorner9 = Instance.new("UICorner")
local iy = Instance.new("TextButton")
local UICorner10 = Instance.new("UICorner")
local Fly = Instance.new("TextButton")

--Properties:
local gui = Instance.new('ScreenGui')
if crashy == false then
    gui.Parent = game.CoreGui
else
    gui.Parent = game.Players.LocalPlayer.PlayerGui
end
gui.Name = "gui"
gui.ResetOnSpawn = false

S.Name = "S"
S.Parent = game.CoreGui
S.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

--Menu:
main.Parent = gui
main.AnchorPoint = Vector2.new(0.9, 0)
main.Active = true
main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
main.Position = UDim2.new(0.6, 0, 0.3, 0)
main.Size = UDim2.new(0, 180, 0, 150)
main.Draggable = true

V1.Parent = S
V1.AnchorPoint = Vector2.new(0.9, 0)
V1.Active = true
V1.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
V1.BackgroundTransparency = 1.000
V1.Position = UDim2.new(0.997, 0, 0.13, 0)
V1.Size = UDim2.new(0, 18, 0, 18)

--UICorner:
UICorner.Parent = main
UICorner2.Parent = Open
UICorner3.Parent = V1
UICorner4.Parent = Close
UICorner5.Parent = TeleportToA
UICorner6.Parent = TeleportToB
UICorner7.Parent = TeleportToC
UICorner8.Parent = KillAura
UICorner9.Parent = iy
UICorner10.Parent = Fly

Open.Name = "Open"
Open.Parent = V1
Open.AnchorPoint = Vector2.new(0.9, 0)
Open.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Open.Position = UDim2.new(0.898, 0, 0.0325, 0)
Open.Size = UDim2.new(0, 20, 0, 20)
Open.Font = Enum.Font.SourceSans
Open.Text = "+"
Open.TextColor3 = Color3.fromRGB(0, 153, 0)
Open.TextSize = 39.000
Open.Visible = false
Open.MouseButton1Down:Connect(function()
main.Visible = true
Open.Visible = false
Close.Visible = true
end)

Close.Name = "Close"
Close.Parent = V1
Close.AnchorPoint = Vector2.new(0.9, 0)
Close.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Close.Position = UDim2.new(0.898, 0, 0.0325, 0)
Close.Size = UDim2.new(0, 20, 0, 20)
Close.Font = Enum.Font.SourceSans
Close.Text = "-"
Close.TextColor3 = Color3.fromRGB(255, 0, 0)
Close.TextSize = 39.000
Close.MouseButton1Down:Connect(function()
main.Visible = false
Close.Visible = false
Open.Visible = true
end)

Title.Name = "Title"
Title.Parent = main
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.24, 0, 0.005, 0)
Title.Size = UDim2.new(0.2, 0, 0.2, 0)
Title.Font = Enum.Font.SourceSans
Title.Text = "Naval"
Title.TextColor3 = Color3.fromRGB(0, 0, 255)
Title.TextSize = 23.000

Title2.Name = "Title2"
Title2.Parent = main
Title2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Title2.BackgroundTransparency = 1.000
Title2.BorderSizePixel = 0
Title2.Position = UDim2.new(0.52, 0, 0.005, 0)
Title2.Size = UDim2.new(0.2, 0, 0.2, 0)
Title2.Font = Enum.Font.SourceSans
Title2.Text = "War"
Title2.TextColor3 = Color3.fromRGB(255, 0, 0)
Title2.TextSize = 23.000

TeleportToA.Name = "TeleportToA"
TeleportToA.Parent = main
TeleportToA.AnchorPoint = Vector2.new(0.9, 0)
TeleportToA.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
TeleportToA.Position = UDim2.new(0.28, 0, 0.2, 0)
TeleportToA.Size = UDim2.new(0, 40, 0, 25)
TeleportToA.Font = Enum.Font.SourceSans
TeleportToA.Text = "Teleport A"
TeleportToA.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportToA.TextSize = 10.000
TeleportToA.TextWrapped = true

TeleportToB.Name = "TeleportToB"
TeleportToB.Parent = main
TeleportToB.AnchorPoint = Vector2.new(0.9, 0)
TeleportToB.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
TeleportToB.Position = UDim2.new(0.58, 0, 0.2, 0)
TeleportToB.Size = UDim2.new(0, 40, 0, 25)
TeleportToB.Font = Enum.Font.SourceSans
TeleportToB.Text = "Teleport B"
TeleportToB.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportToB.TextSize = 10.000
TeleportToB.TextWrapped = true

TeleportToC.Name = "TeleportToC"
TeleportToC.Parent = main
TeleportToC.AnchorPoint = Vector2.new(0.9, 0)
TeleportToC.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
TeleportToC.Position = UDim2.new(0.88, 0, 0.2, 0)
TeleportToC.Size = UDim2.new(0, 40, 0, 25)
TeleportToC.Font = Enum.Font.SourceSans
TeleportToC.Text = "Teleport C"
TeleportToC.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleportToC.TextSize = 10.000
TeleportToC.TextWrapped = true

iy.Name = "iy"
iy.Parent = main
iy.AnchorPoint = Vector2.new(0.9, 0)
iy.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
iy.Position = UDim2.new(0.57, 0, 0.4, 0)
iy.Size = UDim2.new(0, 40, 0, 25)
iy.Font = Enum.Font.SourceSans
iy.Text = "Infinite Yield"
iy.TextColor3 = Color3.fromRGB(255, 255, 255)
iy.TextSize = 10.000
iy.TextWrapped = true
iy.MouseButton1Down:Connect(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)


Fly.Name = "Fly"
Fly.Parent = main
Fly.AnchorPoint = Vector2.new(0.9, 0)
Fly.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Fly.Position = UDim2.new(0.87, 0, 0.4, 0)
Fly.Size = UDim2.new(0, 40, 0, 25)
Fly.Font = Enum.Font.SourceSans
Fly.Text = "Fly"
Fly.TextColor3 = Color3.fromRGB(255, 255, 255)
Fly.TextSize = 11.000
Fly.TextWrapped = true
Fly.MouseButton1Down:Connect(function()
loadstring(game:HttpGet('https://pastebin.com/raw/YSL3xKYU'))()
end)

KillAura.Name = "KillAura"
KillAura.Parent = main
KillAura.AnchorPoint = Vector2.new(0.9, 0)
KillAura.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
KillAura.Position = UDim2.new(0.27, 0, 0.4, 0)
KillAura.Size = UDim2.new(0, 40, 0, 25)
KillAura.Font = Enum.Font.SourceSans
KillAura.Text = "KillAura"
KillAura.TextColor3 = Color3.fromRGB(255, 255, 255)
KillAura.TextSize = 14.000
KillAura.TextWrapped = true
KillAura.MouseButton1Down:Connect(function()
while true do
		wait(0.3) -- don't change this

		-- finding the characters
		for i, v in pairs(game.Workspace:GetChildren()) do
			if v.Name ~= game.Players.LocalPlayer.Name then
				if v:FindFirstChild("Humanoid") then

					-- team check
					local victimplayers = game.Players:GetPlayerFromCharacter(v)
					if victimplayers.TeamColor ~= game.Players.LocalPlayer.TeamColor then

						-- killing everyone
						local Event = game:GetService("ReplicatedStorage").Event
						Event:FireServer(
							"shootRifle",
							"",
							{
								v.Head
							}

						)
						Event:FireServer(
							"shootRifle",
							"hit",
							{
								v.Humanoid

							}

						)
					end
				end
			end
		end
	end
end)

local function DVPWL_fake_script() -- Frame.TeleportScript 
	local script = Instance.new('LocalScript', main)

	local players = game:GetService("Players")
	local localPlr = players.LocalPlayer
	
	script.Parent.TeleportToA.MouseButton1Click:Connect(function()
		local character = localPlr.Character
		if (not character) then return end
		character.HumanoidRootPart.CFrame = workspace.IslandA.Flag.Post.CFrame + Vector3.new(1,0,0)
		localPlr.PlayerGui.ScreenGui.RemoveUniform.Visible = false
	end)
	
	script.Parent.TeleportToB.MouseButton1Click:Connect(function()
		local character = localPlr.Character
		if (not character) then return end
		character.HumanoidRootPart.CFrame = workspace.IslandB.Flag.Post.CFrame + Vector3.new(1,0,0)
		localPlr.PlayerGui.ScreenGui.RemoveUniform.Visible = false
	end)
	
	script.Parent.TeleportToC.MouseButton1Click:Connect(function()
		local character = localPlr.Character
		if (not character) then return end
		character.HumanoidRootPart.CFrame = workspace.IslandC.Flag.Post.CFrame + Vector3.new(1,0,0)
		localPlr.PlayerGui.ScreenGui.RemoveUniform.Visible = false
	end)
end
coroutine.wrap(DVPWL_fake_script)()
for i, v in pairs(workspace:GetChildren()) do
	if v.Name == "Island" then
		v.Name = ("Island" .. v.IslandCode.Value)
	end
end
