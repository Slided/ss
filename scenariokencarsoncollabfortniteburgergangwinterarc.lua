
local woahguysimtotallynotacheat = Instance.new("ScreenGui")
local Title = Instance.new("Frame")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local MultiplierBox = Instance.new("TextBox")
local ToggleButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local fortniteporncom = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")

woahguysimtotallynotacheat.Name = "woah guys im totally not a cheat"
woahguysimtotallynotacheat.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
woahguysimtotallynotacheat.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Title.Name = "Title"
Title.Parent = woahguysimtotallynotacheat
Title.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.352724582, 0, 0.321867317, 0)
Title.Size = UDim2.new(0, 400, 0, 45)

MainFrame.Name = "MainFrame"
MainFrame.Parent = Title
MainFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0, 0, 0.666038692, 0)
MainFrame.Size = UDim2.new(0, 400, 0, 199)

UICorner.CornerRadius = UDim.new(0, 7)
UICorner.Parent = MainFrame

MultiplierBox.Name = "MultiplierBox"
MultiplierBox.Parent = MainFrame
MultiplierBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
MultiplierBox.BorderColor3 = Color3.fromRGB(36, 36, 36)
MultiplierBox.Position = UDim2.new(0.292499989, 0, 0.27638191, 0)
MultiplierBox.Size = UDim2.new(0, 165, 0, 35)
MultiplierBox.Font = Enum.Font.FredokaOne
MultiplierBox.PlaceholderText = "Walkspeed Multiplier"
MultiplierBox.Text = ""
MultiplierBox.TextColor3 = Color3.fromRGB(0, 0, 0)
MultiplierBox.TextScaled = true
MultiplierBox.TextSize = 16.000
MultiplierBox.TextWrapped = true

ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = MainFrame
ToggleButton.BackgroundColor3 = Color3.fromRGB(219, 26, 26)
ToggleButton.BorderColor3 = Color3.fromRGB(36, 36, 36)
ToggleButton.Position = UDim2.new(0.4375, 0, 0.577889442, 0)
ToggleButton.Size = UDim2.new(0, 49, 0, 49)
ToggleButton.Font = Enum.Font.Unknown
ToggleButton.Text = "OFF"
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.TextScaled = true
ToggleButton.TextSize = 14.000
ToggleButton.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 13)
UICorner_2.Parent = Title

fortniteporncom.Name = "fortniteporn.com"
fortniteporncom.Parent = Title
fortniteporncom.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fortniteporncom.BackgroundTransparency = 1.000
fortniteporncom.BorderColor3 = Color3.fromRGB(0, 0, 0)
fortniteporncom.BorderSizePixel = 0
fortniteporncom.Size = UDim2.new(0, 400, 0, 20)
fortniteporncom.Font = Enum.Font.Unknown
fortniteporncom.Text = "fortnite burger gang alpha mango winter arc.gg"
fortniteporncom.TextColor3 = Color3.fromRGB(255, 255, 255)
fortniteporncom.TextSize = 29.000

UICorner_3.CornerRadius = UDim.new(0, 7)
UICorner_3.Parent = fortniteporncom

-- Scripts:

local function VXQGH_fake_script() -- Title.DragScript 
	local script = Instance.new('LocalScript', Title)

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.05
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
	
end
coroutine.wrap(VXQGH_fake_script)()
local function VWIR_fake_script() -- MainFrame.letmenutinyopussypleaseroxyfromfnaf 
	local script = Instance.new('LocalScript', MainFrame)

	local multiplierBox = script.Parent:WaitForChild("MultiplierBox")
	local toggleButton = script.Parent:WaitForChild("ToggleButton")
	
	local player = game.Players.LocalPlayer
	local humanoid = player.Character:WaitForChild("Humanoid")
	
	local isOn = false
	local originalWalkSpeed = humanoid.WalkSpeed
	local kevingatesfreakymultiplier = 1  
	
	local onColor = Color3.fromHex("#1edb1a")
	local offColor = Color3.fromHex("#db1a1a")
	
	multiplierBox:GetPropertyChangedSignal("Text"):Connect(function()
		local inputNumber = tonumber(multiplierBox.Text)
		if inputNumber then
			kevingatesfreakymultiplier = inputNumber
			print("Multiplier updated to:", kevingatesfreakymultiplier)
		else
			warn("Invalid input: Please enter a number")
		end
	end)
	
	local function toggleButtonState()
		isOn = not isOn
		if isOn then
	
			toggleButton.BackgroundColor3 = onColor
			toggleButton.Text = "On"
			humanoid.WalkSpeed = originalWalkSpeed * kevingatesfreakymultiplier
		else
	
			toggleButton.BackgroundColor3 = offColor
			toggleButton.Text = "Off"
			humanoid.WalkSpeed = originalWalkSpeed
		end
	end
	
	toggleButton.MouseButton1Click:Connect(toggleButtonState)
	
	game:GetService("RunService").Heartbeat:Connect(function()
		if isOn then
			humanoid.WalkSpeed = originalWalkSpeed * kevingatesfreakymultiplier
		end
	end)
	
end
coroutine.wrap(VWIR_fake_script)()
local function NKDAI_fake_script() -- Title.HideAndOpen 
	local script = Instance.new('LocalScript', Title)

	local GuiKey = Enum.KeyCode.RightShift  -- KEY TO HIDE/SHOW GUI
	local frame = script.Parent
	
	frame.Visible = true
	
	local function toggleFrameVisibility()
		frame.Visible = not frame.Visible
	end
	
	game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
		if input.KeyCode == GuiKey and not gameProcessed then
			toggleFrameVisibility()
		end
	end)
	
end
coroutine.wrap(NKDAI_fake_script)()
