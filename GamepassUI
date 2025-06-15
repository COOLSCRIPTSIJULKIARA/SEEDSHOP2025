-- Set up the button UI
local ScreenGui = Instance.new("ScreenGui")
local Button = Instance.new("Button")

ScreenGui.Parent = game.Players.LocalPlayer.UserInterface
Button.Parent = ScreenGui
Button.Position = UDim2.new(0.5, 0.5, 0.5, 0.5) -- Center the button on the screen
Button.Size = UDim2.new(0.2, 0.05, 0.2, 0.05) -- Size the button to be 20% wide and 5% high
Button.Text = "Buy Candy Blossom"

-- Function to handle button clicks
local function onButtonClick()
    -- Get the player's UserId and the gamepass Id
    local playerUserId = game.Players.LocalPlayer.UserId
    local gamepassId = 1256310976 -- Replace with your actual gamepass ID

    -- Check if the player has the gamepass
    local playerHasGamepass = game.ReplicatedStorage.GamePasses:FindFirstChild(playerUserId)

    -- If the player does not have the gamepass, attempt to purchase it
    if not playerHasGamepass then
        local success, message = pcall(function()
            game.MarketplaceService:PromptGamePassPurchase(gamepassId)
        end)

        if not success then
            message("Failed to purchase gamepass.")
        end
    else
        message("You already own the Candy Blossom gamepass.")
    end
end

-- Connect the button click event to the button
Button.MouseButton1Click:Connect(onButtonClick)

-- Function to animate the button press
local function animateButtonPress()
    -- Set the button's background color to indicate it's being pressed
    local buttonColor = Button.BackgroundColor
    Button.BackgroundColor = Color3.new(0.8, 0.8, 0.8)

    -- Create a tween to animate the button size and return it to normal
    local tween = TweenService:Create(Button, TweenInfo.new(0.1), {Size = UDim2.new(0.2, 0.05, 0.2, 0.04)})
    tween:Play()
    tween.Completed:Connect(function()
        tween:Reverse()
    end)
end

-- Connect the animation to the button's click event
Button.Activated:Connect(function()
    animateButtonPress()
end)
