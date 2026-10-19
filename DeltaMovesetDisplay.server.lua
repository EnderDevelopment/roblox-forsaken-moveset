-- Delta Moveset Display Script

-- This script displays a 1x1x1x1 moveset on the top left of the screen for Delta.

local Players = game:GetService("Players")

-- Function to create a GUI for displaying the moveset
local function createMovesetGUI(player)
    -- Create a ScreenGui
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "DeltaMovesetDisplay"
    screenGui.Parent = player:WaitForChild("PlayerGui")

    -- Create a Frame to hold the moveset
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 200, 0, 100)
    frame.Position = UDim2.new(0, 10, 0, 10)
    frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    frame.BackgroundTransparency = 0.5
    frame.Parent = screenGui

    -- Create a TextLabel to display the moveset
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.Position = UDim2.new(0, 0, 0, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.Text = "1x1x1x1 Moveset"
    textLabel.TextScaled = true
    textLabel.Parent = frame
end

-- Connect to the PlayerAdded event to create the GUI for each player
Players.PlayerAdded:Connect(function(player)
    createMovesetGUI(player)
end)

-- Create the GUI for any players who are already in the game
for _, player in ipairs(Players:GetPlayers()) do
    createMovesetGUI(player)
end