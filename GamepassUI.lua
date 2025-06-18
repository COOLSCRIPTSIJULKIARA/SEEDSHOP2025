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
button.MouseLeave:Connect(function()
    button.BackgroundColor3 = Color3.fromRGB(255, 105, 180)
end)on.BackgroundColor3 = Color3.fromRGB(255, 105, 180)
end)
