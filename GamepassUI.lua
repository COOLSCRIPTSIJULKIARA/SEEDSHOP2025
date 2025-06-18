--[[
Modern UI "Buy Candy Blossom" Button for Roblox
- When clicked, prompts the player to purchase a gamepass.
- Replace GAMEPASS_ID with your actual Gamepass ID.
- Place this script in a LocalScript inside StarterGui.
--]]

local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")
local player = Players.LocalPlayer

-- Replace this with your actual Gamepass ID
local GAMEPASS_ID = 1256310976

-- Modern UI Creation
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CandyBlossomGui"
screenGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 340, 0, 120)
frame.Position = UDim2.new(0.5, -170, 0.5, -60)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
frame.BorderSizePixel = 0
frame.BackgroundTransparency = 0.1
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Parent = screenGui
frame.ClipsDescendants = true
frame.Active = true

-- Shadow (optional, for modern look)
local shadow = Instance.new("ImageLabel")
shadow.BackgroundTransparency = 1
shadow.Image = "rbxassetid://1316045217"
shadow.Size = UDim2.new(1, 40, 1, 40)
shadow.Position = UDim2.new(0, -20, 0, -20)
shadow.ImageTransparency = 0.6
shadow.Parent = frame
shadow.ZIndex = 0

-- Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 220, 0, 50)
button.Position = UDim2.new(0.5, -110, 0.5, -25)
button.BackgroundColor3 = Color3.fromRGB(255, 105, 180)
button.BackgroundTransparency = 0.06
button.Text = "Buy Candy Blossom"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextSize = 26
button.Font = Enum.Font.GothamSemibold
button.BorderSizePixel = 0
button.AutoButtonColor = true
button.Parent = frame
button.ZIndex = 2
button.AnchorPoint = Vector2.new(0.5, 0.5)
button.ClipsDescendants = true

-- Button Corner
local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 16)
buttonCorner.Parent = button

-- Frame Corner
local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 18)
frameCorner.Parent = frame

-- Button Glow
local buttonStroke = Instance.new("UIStroke")
buttonStroke.Parent = button
buttonStroke.Color = Color3.fromRGB(255, 211, 240)
buttonStroke.Thickness = 2
buttonStroke.Transparency = 0.2

-- Button Click Functionality
button.MouseButton1Click:Connect(function()
    MarketplaceService:PromptGamePassPurchase(player, GAMEPASS_ID)
end)

-- Optional: Button Hover effect
button.MouseEnter:Connect(function()
    button.BackgroundColor3 = Color3.fromRGB(255, 130, 210)
end)
button.MouseLeave:Connect(function()
    button.BackgroundColor3 = Color3.fromRGB(255, 105, 180)
end)
