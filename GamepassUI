local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

local player = Players.LocalPlayer

local gamepasses = {
    {Name = "Buy Racoon", Id = 1258234209},
    {Name = "Buy Candy Blossom", Id = 1256310976},
    {Name = "Buy Red Fox", Id = 1255206635}
}

local playerGui = player:WaitForChild("PlayerGui")

-- Création du ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "GamepassShop"
gui.ResetOnSpawn = false
gui.Parent = playerGui

-- Création du fond semi-transparent
local background = Instance.new("Frame")
background.Size = UDim2.new(0.3, 0, 0.5, 0)
background.Position = UDim2.new(0.35, 0, 0.25, 0)
background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
background.BackgroundTransparency = 0.5
background.BorderSizePixel = 0
background.Parent = gui

-- Fonction pour créer les boutons
for i, pass in ipairs(gamepasses) do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.8, 0, 0, 50)
    button.Position = UDim2.new(0.1, 0, 0.1 + (i - 1) * 0.2, 0)
    button.Text = pass.Name
    button.Parent = background
    button.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.GothamBold
    button.TextSize = 22
    button.BorderSizePixel = 0
    button.AutoButtonColor = true

    button.MouseButton1Click:Connect(function()
        if pass.Id and pass.Id ~= 0 then
            MarketplaceService:PromptGamePassPurchase(player, pass.Id)
        else
            warn("Gamepass ID non défini pour : "..pass.Name)
        end
    end)
end
