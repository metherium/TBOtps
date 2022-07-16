--gui shit
local gui = Instance.new("ScreenGui")
gui.Name = "ni"
local plr = game.Players.LocalPlayer
gui.Parent = game.CoreGui
local UICorner = Instance.new("UICorner")
local lgo = Instance.new("ImageLabel")
local header = Instance.new("TextLabel")
local frame = Instance.new("Frame")
local bu = Instance.new("TextButton")
local pp = Instance.new("TextLabel")
local btn = Instance.new("TextButton")

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
header.Text = "   TBO TPs"
header.TextColor3 = Color3.fromRGB(152, 41, 196)

lgo.Parent = frame
lgo.Image = "http://www.roblox.com/asset/?id=10245680976"
lgo.Size = UDim2.new(0.2, 0, 0.2, 0)
lgo.BackgroundTransparency = 1
--scriptin
bu.Parent = frame
bu.TextScaled = true
bu.Text = "TP"
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
local savedPos
local inputServ = game:GetService("UserInputService")
inputServ.InputBegan:Connect(function(insidious, kamToReikia)
    if insidious.UserInputType == Enum.UserInputType.Keyboard then
        if insidious.KeyCode == Enum.KeyCode.X then
            if not game.CoreGui:FindFirstChild("ni") == nil then
                local mouse = plr:GetMouse()
                local pos = mouse.Hit + Vector3.new(0,2.5,0)
                pos = CFrame.new(pos.X,pos.Y,pos.Z)
                plr.Character.HumanoidRootPart.CFrame = pos
                savedPos = pos
            end
        end
    end
end)
bu.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedPos
end)
