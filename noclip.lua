local gui = Instance.new("ScreenGui")
local UICorner = Instance.new("UICorner")
local lgo = Instance.new("ImageLabel")
local header = Instance.new("TextLabel")
local frame = Instance.new("Frame")
local bu = Instance.new("TextButton")
local pp = Instance.new("TextLabel")
local btn = Instance.new("TextButton")
local plr =game.Players.LocalPlayer
local noclip = false
local rs = game:GetService("RunService")
local msg = Instance.new("Message", plr.PlayerGui)
local mouse = plr:GetMouse()


gui.Parent = game.CoreGui
gui.Name = "noclip"

frame.Parent = gui
frame.Position = UDim2.new(0, 0, 0, 0)
frame.Active = true
frame.Size = UDim2.new(0.2, 0, 0.3, 0)
frame.Draggable = true
frame.BackgroundColor3 = Color3.fromRGB(90, 9, 122)
frame.BorderSizePixel = 0
UICorner.Parent = frame

header.Parent = frame
UICorner:Clone().Parent = header
header.Size = UDim2.new(1, 0, 0.2, 0)
header.Position = UDim2.new(0, 0, 0, 0)
header.BackgroundColor3 = Color3.fromRGB(68, 33, 82)
header.TextScaled = true
header.Text = "   TBO Noclip"
header.TextColor3 = Color3.fromRGB(152, 41, 196)

lgo.Parent = frame
lgo.Image = "http://www.roblox.com/asset/?id=10245680976"
lgo.Size = UDim2.new(0.2, 0, 0.2, 0)
lgo.BackgroundTransparency = 1

bu.Parent = frame
bu.TextScaled = true
bu.Text = "Enable"
bu.BackgroundColor3 = Color3.fromRGB("53, 8, 71")
bu.Size = UDim2.new(0.8, 0, 0.2, 0)
UICorner:Clone().Parent = bu
bu.Position = UDim2.new(0.1, 0, 0.3, 0)

pp.Parent = frame
pp.Text = "Made by SBTBO and metherium"
pp.BackgroundColor3 = Color3.fromRGB("53, 8, 71")
pp.TextScaled = true
UICorner:Clone().Parent = pp
pp.TextWrapped = true
pp.BorderSizePixel = 0
pp.Font = "GothamSemibold"
pp.Size = UDim2.new(0.8, 0, 0.4, 0)
pp.Position = UDim2.new(0.1, 0, 0.55, 0)

mouse.KeyDown:Connect(function(key)
    if key == "t" then
        msg:Destroy()
    end
end)

local parts = {}
plr.Character.Head.touched:Connect(function(hit)
    if noclip then
        hit.CanCollide = false
        table.insert(parts,1,hit)
    end
end)

bu.MouseButton1Click:Connect(function()
    if noclip then
        msg.Text = "TBO Noclip Disabled, press T to destroy this message"
        bu.Text = "Enable"
        noclip = false
        for i, v in pairs(parts) do
            v.CanCollide = true
            table.remove(parts, 1)
        end
    else
       msg.Text = "TBO Noclip Enabled, press T to destroy this message"
       bu.Text = "Disable"
       noclip = true
    end
end)
