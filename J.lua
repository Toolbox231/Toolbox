crashy = true
on = false
if game.CoreGui:FindFirstChild('gui') then
    game.CoreGui.ESP:Destroy()
elseif game.Players.LocalPlayer.PlayerGui:FindFirstChild('gui') then
    game.Players.LocalPlayer.PlayerGui.ESP:Destroy()
end
local main = Instance.new('Frame', V1)
local FPS = Instance.new("ScreenGui")
local V1 = Instance.new('Frame', main)
local S = Instance.new("ScreenGui")
local UICorner = Instance.new("UICorner")
local UICorner2 = Instance.new("UICorner")
local UICorner3 = Instance.new("UICorner")
local UICorner4 = Instance.new("UICorner")
local UICorner5 = Instance.new("UICorner")
local UICorner6 = Instance.new("UICorner")
local UICorner7 = Instance.new("UICorner")
local UICorner8 = Instance.new("UICorner")
local UICorner9 = Instance.new("UICorner")
local UICorner10 = Instance.new("UICorner")
local Open = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local InfAmmo = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Title2 = Instance.new("TextLabel")
local Esp = Instance.new("TextButton")
local Hitbox = Instance.new("TextButton")
local Xray = Instance.new("TextButton")
local bright = Instance.new("TextButton")
local Infjump = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")


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
UICorner5.Parent = InfAmmo
UICorner6.Parent = Esp
UICorner7.Parent = Hitbox
UICorner8.Parent = Xray
UICorner9.Parent = bright
UICorner10.Parent = Infjump

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
Title.Position = UDim2.new(0.25, 0, 0.005, 0)
Title.Size = UDim2.new(0.2, 0, 0.2, 0)
Title.Font = Enum.Font.SourceSans
Title.Text = "Flag"
Title.TextColor3 = Color3.fromRGB(0, 0, 255)
Title.TextSize = 23.000

Title2.Name = "Title2"
Title2.Parent = main
Title2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Title2.BackgroundTransparency = 1.000
Title2.BorderSizePixel = 0
Title2.Position = UDim2.new(0.51, 0, 0.005, 0)
Title2.Size = UDim2.new(0.2, 0, 0.2, 0)
Title2.Font = Enum.Font.SourceSans
Title2.Text = "Wars"
Title2.TextColor3 = Color3.fromRGB(255, 0, 0)
Title2.TextSize = 23.000


InfAmmo.Name = "InfAmmo"
InfAmmo.Parent = main
InfAmmo.AnchorPoint = Vector2.new(0.9, 0)
InfAmmo.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
InfAmmo.Position = UDim2.new(0.27, 0, 0.2, 0)
InfAmmo.Size = UDim2.new(0, 40, 0, 25)
InfAmmo.Font = Enum.Font.SourceSans
InfAmmo.Text = "Weapon"
InfAmmo.TextColor3 = Color3.fromRGB(255, 255, 255)
InfAmmo.TextSize = 14.000
InfAmmo.TextWrapped = true
InfAmmo.MouseButton1Down:Connect(function()
local mt = getrawmetatable(game)
setreadonly(mt, false)
local index = mt.__index

local Mods = {
    -- Guns (Spas, Sniper, etc)
    ["RecoilMax"] = 0,
    ["RecoilMin"] = 0,
    ["MuzzleFlashSize0"] = 0,
    ["MuzzleFlashSize1"] = 0,
    ["FlashBrightness"] = 0,
    ["AmmoCapacity"] = 1,
    ["ShotCooldown"] = 0,
    ["CurrentAmmo"] = 1,
    ["BulletSpeed"] = 9e9,
    ["FireMode"] = "Automatic",
    ["GravityFactor"] = 0,
    ["MaxSpread"] = 0,
    ["MinSpread"] = 0,
    ["HitDamage"] = 4000,
    ["NumProjectiles"] = 1,
    -- Melee (Shovel, Sword, etc)
    ["Cooldown"] = 0,
    ["Value"] = 0,
    ["DirtDamage"] = 9e9,
    ["SwingCooldown"] = 0,
    ["HitRate"] = 0,
}

mt.__index = function(a,b)
    if Mods[tostring(a)] then
        if tostring(b) == "Value" then
            return Mods[tostring(a)]
        end
    end
    return index(a,b)
end
end)

Esp.Name = "Esp"
Esp.Parent = main
Esp.AnchorPoint = Vector2.new(0.9, 0)
Esp.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Esp.Position = UDim2.new(0.57, 0, 0.2, 0)
Esp.Size = UDim2.new(0, 40, 0, 25)
Esp.Font = Enum.Font.SourceSans
Esp.Text = "Esp"
Esp.TextColor3 = Color3.fromRGB(255, 255, 255)
Esp.TextSize = 14.000
Esp.TextWrapped = true
Esp.MouseButton1Down:Connect(function()
local currPlayer = game:GetService("Players").LocalPlayer
local servPlayer = game:GetService("Players")
local RunService = game:GetService("RunService")
local teams = game:GetService("Teams")


local function numberRound(n)
    return math.floor(tonumber(n) + 0.5)
end

function isSameTeam(player)
    if player.team ~= currPlayer.team and player.team ~= teams["Neutral"] then
        return false
    else
        return true
    end
end

function isDead(player)
    if
        player == nil or player.Character == nil or player.Character:FindFirstChildWhichIsA("Humanoid") == nil or
            player.Character.Humanoid.Health <= 0
     then
        return true
    else
        return false
    end
end

function getEquippedWeapon(player)
    local char = player.Character
    local weapon = char and char:FindFirstChildWhichIsA("Tool")

    if weapon ~= nil then
        return weapon.Name
    else
        return "Holstered"
    end
end

function doESP()
    for _, v in next, servPlayer:GetPlayers() do
        if v ~= currPlayer and not isSameTeam(v) and not isDead(v) then
            for _, k in next, v.Character:GetChildren() do
                if not isSameTeam(v) and not isDead(v) and k:IsA("BasePart") and not k:FindFirstChild("dohmESP") then
                    local dohmESP = Instance.new("BoxHandleAdornment", k)
                    dohmESP.Name = "dohmESP"
                    dohmESP.AlwaysOnTop = true
                    dohmESP.ZIndex = 10
                    dohmESP.Size = k.Size
                    dohmESP.Adornee = k
                    dohmESP.Transparency = 0.7
                    dohmESP.Color3 = Color3.new(1, 0, 0)
                end
                if not isDead(v) and not v.Character.Head:FindFirstChild("dohmESPTag") then
                    local dohmESPTag = Instance.new("BillboardGui", v.Character.Head)
                    dohmESPTag.Name = "dohmESPTag"
                    dohmESPTag.Size = UDim2.new(1, 200, 1, 30)
                    dohmESPTag.Adornee = v.Character.Head
                    dohmESPTag.AlwaysOnTop = true

                    local topTag = Instance.new("TextLabel", dohmESPTag)
                    topTag.TextWrapped = true
                    topTag.Text =
                        (v.Name ..
                        " | " ..
                            numberRound((currPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) ..
                                "m" .. " | " .. getEquippedWeapon(v))
                    topTag.Size = UDim2.new(1, 0, 1, 0)
                    topTag.TextYAlignment = "Top"
                    topTag.TextColor3 = Color3.new(1, 1, 1)
                    topTag.BackgroundTransparency = 1
                else
                    v.Character.Head.dohmESPTag.TextLabel.Text =
                        (v.Name ..
                        " | " ..
                            numberRound((currPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) ..
                                "m" .. " | " .. getEquippedWeapon(v))
                end
            end
        end
    end
end

RunService.Stepped:Connect(function()
doESP()
end
)
end)

Hitbox.Name = "Hitbox"
Hitbox.Parent = main
Hitbox.AnchorPoint = Vector2.new(0.9, 0)
Hitbox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Hitbox.Position = UDim2.new(0.87, 0, 0.2, 0)
Hitbox.Size = UDim2.new(0, 40, 0, 25)
Hitbox.Font = Enum.Font.SourceSans
Hitbox.Text = "Hitbox"
Hitbox.TextColor3 = Color3.fromRGB(255, 255, 255)
Hitbox.TextSize = 14.000
Hitbox.TextWrapped = true
Hitbox.MouseButton1Down:Connect(function()
local currPlayer = game:GetService("Players").LocalPlayer
local servPlayer = game:GetService("Players")
local RunService = game:GetService("RunService")
local currTeams = game:GetService("Teams")

getgenv().Hitbox = {
    Settings = {
        ['hitpart'] = 'Head',
        ['hitsize'] = 6,
        ['transparency'] = 0.80,
        ['color'] =  BrickColor.new("Really blue")
    }
}

function isSameTeam(currTarget)
    if currTarget.team ~= currPlayer.team and currTarget.team ~= currTeams["Neutral"] then
        return false
    else
        return true
    end
end

function isDead(currTarget)
    if
        currTarget == nil or currTarget.Character == nil or
            currTarget.Character:FindFirstChildWhichIsA("Humanoid") == nil or
            currTarget.Character.Humanoid.Health <= 0
     then
        return true
    else
        return false
    end
end

RunService.Stepped:Connect(function()
for _, v in next, servPlayer:GetPlayers() do
    if v ~= currPlayer and not isSameTeam(v) and not isDead(v) then


       
                v.Character[getgenv().Hitbox.Settings.hitpart].Size = Vector3.new(getgenv().Hitbox.Settings.hitsize, getgenv().Hitbox.Settings.hitsize, getgenv().Hitbox.Settings.hitsize)
                v.Character[getgenv().Hitbox.Settings.hitpart].Transparency = getgenv().Hitbox.Settings.transparency
                v.Character[getgenv().Hitbox.Settings.hitpart].BrickColor = BrickColor.new("Really blue")
                v.Character[getgenv().Hitbox.Settings.hitpart].Material = "Neon"
                v.Character[getgenv().Hitbox.Settings.hitpart].CanCollide = false
    end
end
end)
end)

Xray.Name = "Xray"
Xray.Parent = main
Xray.AnchorPoint = Vector2.new(0.9, 0)
Xray.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Xray.Position = UDim2.new(0.27, 0, 0.4, 0)
Xray.Size = UDim2.new(0, 40, 0, 25)
Xray.Font = Enum.Font.SourceSans
Xray.Text = "Xray"
Xray.TextColor3 = Color3.fromRGB(255, 255, 255)
Xray.TextSize = 14.000
Xray.TextWrapped = true

bright.Name = "bright"
bright.Parent = main
bright.AnchorPoint = Vector2.new(0.9, 0)
bright.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
bright.Position = UDim2.new(0.57, 0, 0.4, 0)
bright.Size = UDim2.new(0, 40, 0, 25)
bright.Font = Enum.Font.SourceSans
bright.Text = "Fullbright"
bright.TextColor3 = Color3.fromRGB(255, 255, 255)
bright.TextSize = 14.000
bright.TextWrapped = true
bright.MouseButton1Click:Connect(function()
if not _G.FullBrightExecuted then

	_G.FullBrightEnabled = false

	_G.NormalLightingSettings = {
		Brightness = game:GetService("Lighting").Brightness,
		ClockTime = game:GetService("Lighting").ClockTime,
		FogEnd = game:GetService("Lighting").FogEnd,
		GlobalShadows = game:GetService("Lighting").GlobalShadows,
		Ambient = game:GetService("Lighting").Ambient
	}

	game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
		if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
			_G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Brightness = 1
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
		if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
			_G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").ClockTime = 12
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
		if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
			_G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").FogEnd = 786543
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
		if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
			_G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").GlobalShadows = false
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
		if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
			_G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
		end
	end)

	game:GetService("Lighting").Brightness = 1
	game:GetService("Lighting").ClockTime = 12
	game:GetService("Lighting").FogEnd = 786543
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)

	local LatestValue = true
	spawn(function()
		repeat
			wait()
		until _G.FullBrightEnabled
		while wait() do
			if _G.FullBrightEnabled ~= LatestValue then
				if not _G.FullBrightEnabled then
					game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
					game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
					game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
					game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
					game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
				else
					game:GetService("Lighting").Brightness = 1
					game:GetService("Lighting").ClockTime = 12
					game:GetService("Lighting").FogEnd = 786543
					game:GetService("Lighting").GlobalShadows = false
					game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
				end
				LatestValue = not LatestValue
			end
		end
	end)
end

_G.FullBrightExecuted = true
_G.FullBrightEnabled = not _G.FullBrightEnabled
end)

Infjump.Name = "Infjump"
Infjump.Parent = main
Infjump.AnchorPoint = Vector2.new(0.9, 0)
Infjump.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Infjump.Position = UDim2.new(0.87, 0, 0.4, 0)
Infjump.Size = UDim2.new(0, 40, 0, 25)
Infjump.Font = Enum.Font.SourceSans
Infjump.Text = "Infjump"
Infjump.TextColor3 = Color3.fromRGB(255, 255, 255)
Infjump.TextSize = 14.000
Infjump.TextWrapped = true

local function CKAW_fake_script() -- Xray.Script 
	local script = Instance.new('Script', Xray)

	local obj = game.workspace
	function XrayOn(obj) --Enables xray
	    for _,v in pairs(obj:GetChildren()) do
	        if (v:IsA("BasePart")) and not v.Parent:FindFirstChild("Humanoid") then
	            v.LocalTransparencyModifier = 0.75
	        end
	    XrayOn(v)
	    end
	end
	 
	function XrayOff(obj) --Disables xray
	    for _,v in pairs(obj:GetChildren()) do
	        if (v:IsA("BasePart")) and not v.Parent:FindFirstChild("Humanoid") then
	            v.LocalTransparencyModifier = 0
	        end XrayOff(v)
	    end
	end
	
	local toggle = false
		
		script.Parent.MouseButton1Click:Connect(function()	
			if toggle == false then
				toggle = true
			script.Parent.Text = "UnXray"
			XrayOn(obj)
			else
				toggle = false
			script.Parent.Text = "Xray"
			XrayOff(obj)
		end
	end)
end
coroutine.wrap(CKAW_fake_script)()

local function SPNLPQB_fake_script() -- Infjump.Script 
	local script = Instance.new('Script', Infjump)

	local Mouse = game.Players.LocalPlayer:GetMouse()
	local InfiniteJump = false
	
	script.Parent.MouseButton1Down:connect(function()
		if InfiniteJump == false then
			InfiniteJump = true
			script.Parent.Text = "UnInfJump"
		else
			InfiniteJump = false
			script.Parent.Text = "InfJump"
		end
	end)
	
	game:GetService("UserInputService").JumpRequest:connect(function()
		if InfiniteJump == true then
			game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
		end
	end)
end
coroutine.wrap(SPNLPQB_fake_script)()

local FPSFrame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

FPSFrame.Name = "FPSFrame"
FPSFrame.Parent = main
FPSFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
FPSFrame.BackgroundTransparency = 1.000
FPSFrame.Position = UDim2.new(0.17, 0, 0.7, 0)
FPSFrame.Size = UDim2.new(0, 119, 0, 25)

TextLabel.Parent = FPSFrame
TextLabel.Position = UDim2.new(0.225921139, 0, 0.29052633, 0)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 64, 0, 10)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "FPS:"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 24.000
TextLabel.TextWrapped = true

local function VYNYAI_fake_script()
	local script = Instance.new('LocalScript', TextLabel)
	
	local RS = game:GetService("RunService")

	local frames = 0

	
	RS.RenderStepped:Connect(function()
		frames = frames + 1
	end)

	
	while wait(1) do
		script.Parent.Text = "FPS: " .. frames
		frames = 0
	end
end

coroutine.wrap(VYNYAI_fake_script)()