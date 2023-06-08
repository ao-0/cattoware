function new(verification, key, info)
	local framework = loadstring(game:HttpGet("https://gist.githubusercontent.com/ao-0/89de90cfc31534143b22f2f60889a7c8/raw/002e1f9e08a6bb0a3adcb112d53476cb5816edbd/$"))()
	local ScreenGui = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local Holder = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local Tabholder = Instance.new("Frame")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local UIPadding_2 = Instance.new("UIPadding")
	local Title = Instance.new("Frame")
	local UIPadding_3 = Instance.new("UIPadding")
	local TextLabel = Instance.new("TextLabel")
	local TabFolder = Instance.new("Folder")

	ScreenGui.Parent = game.CoreGui

	Main.Name = "Main"
	Main.Parent = ScreenGui
	Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.120078787, 0, 0.321472406, 0)
	Main.Size = UDim2.new(0, 477, 0, 352)
	Main.Active = true
	Main.Draggable = true
	TabFolder.Parent = Main

	Holder.Name = "Holder"
	Holder.Parent = Main
	Holder.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Holder.BorderSizePixel = 0
	Holder.Position = UDim2.new(0, 0, 0.0767045468, 0)
	Holder.Size = UDim2.new(0, 169, 0, 325)

	UIListLayout.Parent = Holder
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 4)

	Tabholder.Name = "Tabholder"
	Tabholder.Parent = Holder
	Tabholder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tabholder.BackgroundTransparency = 1.000
	Tabholder.Size = UDim2.new(0, 169, 1, 0)

	UIListLayout_2.Parent = Tabholder
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.Padding = UDim.new(0, 0)

	UIPadding_2.Parent = Tabholder

	Title.Name = "Title"
	Title.Parent = Main
	Title.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	Title.BorderSizePixel = 0
	Title.Size = UDim2.new(0, 477, 0, 27)

	UIPadding_3.Parent = Title
	UIPadding_3.PaddingLeft = UDim.new(0, 10)

	TextLabel.Parent = Title
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Size = UDim2.new(0, 200, 0, 27)
	TextLabel.Font = Enum.Font.Arial
	TextLabel.Text = key or "cattoware"
	TextLabel.TextColor3 = Color3.fromRGB(206, 206, 206)
	TextLabel.TextSize = 14.000
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	local asset_handler = {}
	local tabcount = 0
	function asset_handler.tab(key)
		-- tab connector #1
		tabcount = tabcount + 1
		local TabButton = Instance.new("TextButton")
		local UIPadding = Instance.new("UIPadding")
		TabButton.Name = "TabButton"
		TabButton.Parent = Tabholder
		TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabButton.BackgroundTransparency = 1.000
		TabButton.Size = UDim2.new(0, 169, 0, 36)
		TabButton.AutoButtonColor = false
		TabButton.Font = Enum.Font.Arial
		TabButton.Text = key
		TabButton.TextColor3 = Color3.fromRGB(193, 193, 193)
		TabButton.TextSize = 14.000
		TabButton.TextXAlignment = Enum.TextXAlignment.Left
		TabButton.TextTransparency = 0.2

		UIPadding.Parent = TabButton
		UIPadding.PaddingLeft = UDim.new(0, 15)

		-- tab flore
		local Tab = Instance.new("ScrollingFrame")
		local UIListLayout_3 = Instance.new("UIListLayout")
		local UIPadding_4 = Instance.new("UIPadding")
		Tab.Name = "Tab"
		Tab.Parent = TabFolder
		Tab.Active = true
		Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Tab.BackgroundTransparency = 1.000
		Tab.Position = UDim2.new(0.354297698, 0, 0.0767045468, 0)
		Tab.Size = UDim2.new(0, 308, 0, 325)
		Tab.CanvasSize = UDim2.new(0, 0, 0, 0)
		Tab.ScrollBarThickness = 0
		Tab.AutomaticCanvasSize = Enum.AutomaticSize.Y
		Tab.Visible = false

		UIListLayout_3.Parent = Tab
		UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_3.Padding = UDim.new(0, 0)
		TabButton.MouseButton1Down:Connect(function()
			for i,v in pairs(TabFolder:GetChildren()) do
				v.Visible = false
			end
			for i,v in pairs(Tabholder:GetChildren()) do
				if v:IsA'TextButton' then
					game.TweenService:Create(v, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
						TextTransparency = 0.2
					}):Play()
					game.TweenService:Create(v, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
						BackgroundTransparency = 1
					}):Play()
				end
			end
			game.TweenService:Create(TabButton, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
				TextTransparency = 0
			}):Play()
			game.TweenService:Create(TabButton, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
				BackgroundTransparency = 0.9
			}):Play()
			Tab.Visible = true
		end)
		if tabcount == 1 then
			game.TweenService:Create(TabButton, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
				TextTransparency = 0
			}):Play()
			game.TweenService:Create(TabButton, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
				BackgroundTransparency = 0.9
			}):Play()
			Tab.Visible = true
		end
		local tab_stuff = {}
		function tab_stuff.button(key, callback)
			local Button = Instance.new("TextButton")
			local UIPadding = Instance.new("UIPadding")

			--Properties:

			Button.Name = "Button"
			Button.Parent = Tab
			Button.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
			Button.BorderSizePixel = 0
			Button.Size = UDim2.new(1, 0, 0, 30)
			Button.AutoButtonColor = false
			Button.Font = Enum.Font.Arial
			Button.Text = key
			Button.TextColor3 = Color3.fromRGB(168, 168, 168)
			Button.TextSize = 11.000
			Button.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding.Parent = Button
			UIPadding.PaddingLeft = UDim.new(0, 13)
			Button.MouseEnter:Connect(function()
				game.TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
					BackgroundColor3 = Color3.fromRGB(57, 57, 57)
				}):Play()
			end)
			Button.MouseLeave:Connect(function()
				game.TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
					BackgroundColor3 = Color3.fromRGB(47, 47, 47)
				}):Play()
			end)
			Button.MouseButton1Down:Connect(function()
				Button.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
				spawn(callback)
				wait()
				Button.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
			end)
		end
		function tab_stuff.toggle(key, state, callback)
			local Toggle = Instance.new("TextButton")
			local UIPadding = Instance.new("UIPadding")
			local UIListLayout = Instance.new("UIListLayout")
			local CheckBox = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local Check = Instance.new("ImageButton")
			local UIListLayout_2 = Instance.new("UIListLayout")
			local toggled = false
			
			--Properties:

			Toggle.Name = "Toggle"
			Toggle.Parent = Tab
			Toggle.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
			Toggle.BorderSizePixel = 0
			Toggle.Size = UDim2.new(1, 0, 0, 30)
			Toggle.AutoButtonColor = false
			Toggle.Font = Enum.Font.Arial
			Toggle.Text = key
			Toggle.TextColor3 = Color3.fromRGB(168, 168, 168)
			Toggle.TextSize = 11.000
			Toggle.TextXAlignment = Enum.TextXAlignment.Left
			Toggle.MouseEnter:Connect(function()
				game.TweenService:Create(Toggle, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
					BackgroundColor3 = Color3.fromRGB(57, 57, 57)
				}):Play()
				if toggled == false then
				game.TweenService:Create(CheckBox, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
					BackgroundColor3 = Color3.fromRGB(67, 67, 67)
				}):Play()
				end
			end)
			Toggle.MouseLeave:Connect(function()
				game.TweenService:Create(Toggle, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
					BackgroundColor3 = Color3.fromRGB(47, 47, 47)
				}):Play()
				if toggled == false then
					game.TweenService:Create(CheckBox, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
						BackgroundColor3 = Color3.fromRGB(61, 61, 61)
					}):Play()
				end
			end)
			UIPadding.Parent = Toggle
			UIPadding.PaddingLeft = UDim.new(0, 13)
			UIPadding.PaddingRight = UDim.new(0, 7)

			UIListLayout.Parent = Toggle
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

			CheckBox.Name = "CheckBox"
			CheckBox.Parent = Toggle
			CheckBox.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
			CheckBox.BorderSizePixel = 0
			CheckBox.Size = UDim2.new(0, 17, 0, 17)

			UICorner.CornerRadius = UDim.new(0, 2)
			UICorner.Parent = CheckBox

			Check.Name = "Check"
			Check.Parent = CheckBox
			Check.BackgroundTransparency = 1.000
			Check.Position = UDim2.new(0.0882352889, 0, 0.0882352814, 0)
			Check.Size = UDim2.new(0, 13, 0, 13)
			Check.ZIndex = 2
			Check.Image = "rbxassetid://3926305904"
			Check.ImageRectOffset = Vector2.new(644, 204)
			Check.ImageRectSize = Vector2.new(36, 36)
			Check.ImageTransparency = 1

			UIListLayout_2.Parent = CheckBox
			UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
			local function clicked()
				if toggled then
					game.TweenService:Create(Check, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
						ImageTransparency = 1
					}):Play()
					game.TweenService:Create(CheckBox, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
						BackgroundColor3 = Color3.fromRGB(67, 67, 67)
					}):Play()
				else
					game.TweenService:Create(Check, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
						ImageTransparency = 0
					}):Play()
					game.TweenService:Create(CheckBox, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
						BackgroundColor3 = Color3.fromRGB(127, 177, 112)
					}):Play()
				end
				toggled = not toggled
				callback(toggled)
			end
			if state then
				clicked()
			end
			Toggle.MouseButton1Down:Connect(clicked)
			Check.MouseButton1Down:Connect(clicked)
		end
		function tab_stuff.slider(key, default, min, max, callback)
			local Slider = Instance.new("TextButton")
			local Status = Instance.new("TextLabel")
			local UIPadding = Instance.new("UIPadding")
			local SlidingFrame = Instance.new("Frame")

			--Properties:

			Slider.Name = "Slider"
			Slider.Parent = Tab
			Slider.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
			Slider.BorderSizePixel = 0
			Slider.Size = UDim2.new(1, 0, 0, 30)
			Slider.AutoButtonColor = false
			Slider.Font = Enum.Font.Arial
			Slider.Text = ""
			Slider.TextColor3 = Color3.fromRGB(168, 168, 168)
			Slider.TextSize = 11.000
			Slider.TextXAlignment = Enum.TextXAlignment.Left

			Status.Name = "Status"
			Status.Parent = Slider
			Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Status.BackgroundTransparency = 1.000
			Status.Size = UDim2.new(0, 300, 0, 30)
			Status.ZIndex = 2
			Status.Font = Enum.Font.Arial
			Status.Text = (key or "slider")..': '..default..'/'..max
			Status.TextColor3 = Color3.fromRGB(168, 168, 168)
			Status.TextSize = 11.000
			Status.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding.Parent = Status
			UIPadding.PaddingLeft = UDim.new(0, 13)

			SlidingFrame.Name = "SlidingFrame"
			SlidingFrame.Parent = Slider
			SlidingFrame.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
			SlidingFrame.BorderSizePixel = 0
			SlidingFrame.Size = UDim2.new(0, 82, 0, 30)
			SlidingFrame.BorderSizePixel = 0
			Slider.MouseEnter:Connect(function()
				game.TweenService:Create(Slider, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
					BackgroundColor3 = Color3.fromRGB(57, 57, 57)
				}):Play()
				game.TweenService:Create(SlidingFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
					BackgroundColor3 = Color3.fromRGB(43, 43, 43)
				}):Play()
			end)
			Slider.MouseLeave:Connect(function()
				game.TweenService:Create(Slider, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
					BackgroundColor3 = Color3.fromRGB(47, 47, 47)
				}):Play()
				game.TweenService:Create(SlidingFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
					BackgroundColor3 = Color3.fromRGB(41, 41, 41)
				}):Play()
			end)
			local slider = framework.sizeslider(Slider, SlidingFrame, min, max, 0.05)
			slider:set(default)

			slider.Updated:connect(function(value)
				callback(value)
				Status.Text = (key or "slider")..': '..value..'/'..max
			end)
			local stuff = {}
			function stuff.set(key)
				slider:set(key)
			end
			return stuff
		end
		function tab_stuff.keybind(key, default, callback)
			local Keybind = Instance.new("TextButton")
			local UIPadding = Instance.new("UIPadding")
			local UIListLayout = Instance.new("UIListLayout")
			local Binder = Instance.new("TextLabel")

			--Properties:

			Keybind.Name = "Keybind"
			Keybind.Parent = Tab
			Keybind.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
			Keybind.BorderSizePixel = 0
			Keybind.Size = UDim2.new(1, 0, 0, 30)
			Keybind.AutoButtonColor = false
			Keybind.Font = Enum.Font.Arial
			Keybind.Text = key
			Keybind.TextColor3 = Color3.fromRGB(168, 168, 168)
			Keybind.TextSize = 11.000
			Keybind.TextXAlignment = Enum.TextXAlignment.Left
			Keybind.MouseEnter:Connect(function()
				game.TweenService:Create(Keybind, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
					BackgroundColor3 = Color3.fromRGB(57, 57, 57)
				}):Play()
			end)
			Keybind.MouseLeave:Connect(function()
				game.TweenService:Create(Keybind, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
					BackgroundColor3 = Color3.fromRGB(47, 47, 47)
				}):Play()
			end)
			UIPadding.Parent = Keybind
			UIPadding.PaddingLeft = UDim.new(0, 13)
			UIPadding.PaddingRight = UDim.new(0, 10)

			UIListLayout.Parent = Keybind
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

			Binder.Name = "Binder"
			Binder.Parent = Keybind
			Binder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Binder.BackgroundTransparency = 1.000
			Binder.Position = UDim2.new(0.33453238, 0, 0.400000006, 0)
			Binder.Size = UDim2.new(0, 184, 0, 28)
			Binder.Font = Enum.Font.Arial
			Binder.Text = default or "E"
			Binder.TextColor3 = Color3.fromRGB(161, 161, 161)
			Binder.TextSize = 11.000
			Binder.TextXAlignment = Enum.TextXAlignment.Right
			local Awaiting
			local Input
			local Key = default
			Keybind.MouseButton1Click:Connect(function()
				Binder.Text = "..."
				Awaiting = true
				Input = game:GetService("UserInputService").InputBegan:wait()
				if Input.KeyCode.Name ~= "Unknown" then
					Binder.Text = Input.KeyCode.Name
					Key = Input.KeyCode.Name
					Awaiting = false
				else
					Awaiting = false
				end
			end)
			game:GetService("UserInputService").InputBegan:connect(function(a, b)
				if not b then
					if string.lower(a.KeyCode.Name) == string.lower(Key) and not Awaiting then
						Keybind.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
						spawn(callback)
						wait()
						Keybind.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
					end
				end
			end)
		end
		function tab_stuff.dropdown(key, default, list, callback)
			local Dropdown = Instance.new("TextButton")
			local UIPadding = Instance.new("UIPadding")
			local expand_more = Instance.new("ImageButton")
			local DropFrame = Instance.new("Frame")
			local UIListLayout = Instance.new("UIListLayout")
			local UIPadding_3 = Instance.new("UIPadding")

			--Properties:

			Dropdown.Name = "Dropdown"
			Dropdown.Parent = Tab
			Dropdown.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
			Dropdown.BorderSizePixel = 0
			Dropdown.Size = UDim2.new(1, 0, 0, 30)
			Dropdown.AutoButtonColor = false
			Dropdown.Font = Enum.Font.Arial
			Dropdown.Text = key
			Dropdown.TextColor3 = Color3.fromRGB(168, 168, 168)
			Dropdown.TextSize = 11.000
			Dropdown.TextXAlignment = Enum.TextXAlignment.Left
			Dropdown.MouseEnter:Connect(function()
				game.TweenService:Create(Dropdown, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
					BackgroundColor3 = Color3.fromRGB(57, 57, 57)
				}):Play()
			end)
			Dropdown.MouseLeave:Connect(function()
				game.TweenService:Create(Dropdown, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
					BackgroundColor3 = Color3.fromRGB(47, 47, 47)
				}):Play()
			end)
			UIPadding.Parent = Dropdown
			UIPadding.PaddingLeft = UDim.new(0, 13)
			UIPadding.PaddingRight = UDim.new(0, 7)

			expand_more.Name = "expand_more"
			expand_more.Parent = Dropdown
			expand_more.BackgroundTransparency = 1.000
			expand_more.Position = UDim2.new(0.923487544, 0, 0.133333325, 0)
			expand_more.Rotation = 180.000
			expand_more.Size = UDim2.new(0, 25, 0, 25)
			expand_more.ZIndex = 2
			expand_more.Image = "rbxassetid://3926305904"
			expand_more.ImageRectOffset = Vector2.new(564, 284)
			expand_more.ImageRectSize = Vector2.new(36, 36)
			expand_more.ImageTransparency = 0.500

			DropFrame.Name = "DropFrame"
			DropFrame.Parent = Tab
			DropFrame.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
			DropFrame.BorderSizePixel = 0
			DropFrame.Position = UDim2.new(0, 0, 0.409937888, 0)
			DropFrame.Size = UDim2.new(1, 0, 0, 29)
			DropFrame.Visible = false
			DropFrame.AutomaticSize = Enum.AutomaticSize.Y

			UIListLayout.Parent = DropFrame
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 3)

			UIPadding_3.Parent = DropFrame
			UIPadding_3.PaddingBottom = UDim.new(0, 5)
			UIPadding_3.PaddingTop = UDim.new(0, 5)
			local function open_drop()
				DropFrame.Visible = true
				game.TweenService:Create(expand_more, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
					Rotation = 180
				}):Play()
				for i,v in pairs(DropFrame:GetChildren()) do
					if v:IsA'TextButton' then
						v.Visible = true
						wait()
					end
				end
			end
			local function close_drop()
				for i,v in pairs(DropFrame:GetChildren()) do
					if v:IsA'TextButton' then
						v.Visible = false
						wait()
					end
				end
				DropFrame.Visible = false
				game.TweenService:Create(expand_more, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
					Rotation = 0
				}):Play()
			end
			local function toggle_drop()
				if DropFrame.Visible then
					close_drop()
				else
					open_drop()
				end
			end
			Dropdown.MouseButton1Down:Connect(toggle_drop)
			expand_more.MouseButton1Down:Connect(toggle_drop)

			for i, v in pairs(list) do
				if typeof(v) == 'string' then
					local DropButton = Instance.new("TextButton")
					local UIPadding_2 = Instance.new("UIPadding")
					DropButton.Name = "DropButton"
					DropButton.Parent = DropFrame
					DropButton.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
					DropButton.BorderSizePixel = 0
					DropButton.Position = UDim2.new(0.0283333343, 0, 0, 0)
					DropButton.Size = UDim2.new(0, 300, 0, 32)
					DropButton.AutoButtonColor = false
					DropButton.Font = Enum.Font.Arial
					DropButton.Text = v
					DropButton.TextColor3 = Color3.fromRGB(168, 168, 168)
					DropButton.TextSize = 11.000
					DropButton.TextXAlignment = Enum.TextXAlignment.Left

					UIPadding_2.Parent = DropButton
					UIPadding_2.PaddingLeft = UDim.new(0, 13)
					local function selected()
						callback(v)
						Dropdown.Text = key..' - '..v
						for i,v in pairs(DropFrame:GetChildren()) do
							if v:IsA'TextButton' then
								v.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
							end
						end
						DropButton.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
						wait()
						close_drop()
					end
					DropButton.MouseButton1Down:Connect(selected)
					if v == default then
						selected()
					end
				end
			end
		end
		return tab_stuff
	end
	return asset_handler
end

return new
