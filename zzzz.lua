crashy = true
on = false
if game.CoreGui:FindFirstChild('ESP') then
    game.CoreGui.ESP:Destroy()
elseif game.Players.LocalPlayer.PlayerGui:FindFirstChild('ESP') then
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
local esp = Instance.new("TextButton")
local UICorner5 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UICorner6 = Instance.new("UICorner")

--Properties:
local gui = Instance.new('ScreenGui')
if crashy == false then
    gui.Parent = game.CoreGui
else
    gui.Parent = game.Players.LocalPlayer.PlayerGui
end
gui.Name = "ESP"
gui.ResetOnSpawn = false

S.Name = "S"
S.Parent = game.CoreGui
S.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

--Menu:
main.Parent = gui
main.AnchorPoint = Vector2.new(0.9, 0)
main.Active = true
main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
main.Position = UDim2.new(0.65, 0, 0.13, 0)
main.Size = UDim2.new(0, 140, 0, 100)
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
UICorner5.Parent = esp
UICorner6.Parent = mid

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
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.4, 0, 0.08, 0)
Title.Size = UDim2.new(0.2, 0, 0.2, 0)
Title.Font = Enum.Font.Cartoon
Title.Text = "Esp Gui"
Title.TextColor3 = Color3.fromRGB(255, 20, 147)
Title.TextSize = 25.000

esp.Name = "esp"
esp.Parent = main
esp.AnchorPoint = Vector2.new(0.9, 0)
esp.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
esp.Position = UDim2.new(0.69, 0, 0.43, 0)
esp.Size = UDim2.new(0, 72, 0, 30)
esp.Font = Enum.Font.SourceSans
esp.Text = "Esp on"
esp.TextColor3 = Color3.fromRGB(255, 255, 255)
esp.TextSize = 23.000
esp.MouseButton1Down:connect(function()
if esp.Text == "Esp on" then
esp.Text = "Esp off"
on = true
for i,v in pairs(game.Players:GetChildren()) do
    if v.Character ~= game.Players.LocalPlayer.Character and v.Character.Head:FindFirstChild('ScreenGui') == nil then
        if v.Character:FindFirstChild('Head') then
            local bill = Instance.new('BillboardGui',v.Character.Head)
            bill.Name = "thingyye"
            bill.AlwaysOnTop = true
            bill.Size = UDim2.new(0,0,0)
            bill.Adornee = v.Character.Head
            local txt = Instance.new('TextLabel',bill)
            txt.Text = v.Name
            txt.BackgroundTransparency = 1
            txt.Size = UDim2.new(1,0,1,0)
            txt.TextColor3 = v.TeamColor.Color
        end
        for a,c in pairs(v.Character:GetChildren()) do
            if c.ClassName == "MeshPart" and c.Transparency ~= 1 then
                doit(c)
            elseif c.ClassName == "Part" and c.Transparency ~= 1 then
            doit(c)
            end
        end
    end
end
else
    esp.Text = "Esp on"
    on = false
    for i,v in pairs(game.Players:GetChildren()) do
        undo(v.Character)
    end
end
end)
 
for i,v in pairs(game.Players:GetChildren()) do
    v.CharacterAdded:connect(function()
    v.Character:WaitForChild('Head')
    wait(1)
    if on == true then
    if v.Character ~= game.Players.LocalPlayer.Character and v.Character.Head:FindFirstChild('ScreenGui') == nil then
        if v.Character:FindFirstChild('Head') then
            local bill = Instance.new('BillboardGui',v.Character.Head)
            bill.Name = "thingyye"
            bill.AlwaysOnTop = true
            bill.Size = UDim2.new(0,0,0)
            bill.Adornee = v.Character.Head
            local txt = Instance.new('TextLabel',bill)
            txt.Text = v.Name
            txt.BackgroundTransparency = 1
            txt.Size = UDim2.new(1,0,1,0)
            txt.TextColor3 = v.TeamColor.Color
        end
        for a,c in pairs(v.Character:GetChildren()) do
            if c.ClassName == "MeshPart" and c.Transparency ~= 1 then
                doit(c)
            elseif c.ClassName == "Part" and c.Transparency ~= 1 then
            doit(c)
            end
        end
    end
    end
    end)
end  
 
game.Players.PlayerAdded:connect(function(v)
v.CharacterAdded:connect(function()
    v.Character:WaitForChild('Head')
    wait(1)
    if on == true then
    if v.Character ~= game.Players.LocalPlayer.Character and v.Character.Head:FindFirstChild('ScreenGui') == nil then
        if v.Character:FindFirstChild('Head') then
            local bill = Instance.new('BillboardGui',v.Character.Head)
            bill.Name = "thingyye"
            bill.AlwaysOnTop = true
            bill.Size = UDim2.new(0,0,0)
            bill.Adornee = v.Character.Head
            local txt = Instance.new('TextLabel',bill)
            txt.Text = v.Name
            txt.BackgroundTransparency = 1
            txt.Size = UDim2.new(1,0,1,0)
            txt.TextColor3 = v.TeamColor.Color
        end
        for a,c in pairs(v.Character:GetChildren()) do
            if c.ClassName == "MeshPart" and c.Transparency ~= 1 then
                doit(c)
            elseif c.ClassName == "Part" and c.Transparency ~= 1 then
            doit(c)
            end
        end
    end
    end
    end)
end)

function doit(hey)
    local Main = Instance.new('SurfaceGui',hey)
    Main.AlwaysOnTop = true
    local TR = Instance.new('Frame',Main)
    
    TR.Size = UDim2.new(1,0,1,0)
    TR.Transparency = 0.1
    TR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    
    local Main1 = Instance.new('SurfaceGui',hey)      
    Main1.AlwaysOnTop = true
    Main1.Face = Enum.NormalId.Right
    local TR1 = Instance.new('Frame',Main1)
    TR1.Size = UDim2.new(1,0,1,0)
    TR1.Transparency = 0.1
    TR1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    
    local Def = Instance.new('SurfaceGui',hey)
    Def.AlwaysOnTop = true
    Def.Face = Enum.NormalId.Left
    local TJ = Instance.new('Frame',Def)
    TJ.Size = UDim2.new(1,0,1,0)
    TJ.Transparency = 0.1
    TJ.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    
    local Hid = Instance.new('SurfaceGui',hey)
    Hid.AlwaysOnTop = true
    Hid.Face = Enum.NormalId.Back
    local TJ1 = Instance.new('Frame',Hid)
    TJ1.Size = UDim2.new(1,0,1,0)
    TJ1.Transparency = 0.1
    TJ1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    
    local Ased = Instance.new('SurfaceGui',hey)
    Ased.AlwaysOnTop = true
    Ased.Face = Enum.NormalId.Top
    local JEK = Instance.new('Frame',Ased)
    JEK.Size = UDim2.new(1,0,1,0)
    JEK.Transparency = 0.1
    JEK.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    
    local Zed = Instance.new('SurfaceGui',hey)
    Zed.AlwaysOnTop = true
    Zed.Face = Enum.NormalId.Bottom
    local Cer = Instance.new('Frame',Zed)
    Cer.Size = UDim2.new(1,0,1,0)
    Cer.Transparency = 0.1
    Cer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
end
function undo(chr)
    for i,v in pairs(chr:GetChildren()) do
        if v.ClassName == "Part" or v.ClassName == "MeshPart" then
            for a,c in pairs(v:GetChildren()) do
                if c.ClassName == "SurfaceGui" then
                    c:Destroy()
                end
                if c.ClassName == "BillboardGui" and c.Name == "thingyye" then
                    c:Destroy()
                end
            end
        end
    end
end