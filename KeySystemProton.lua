local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "PROTON HUB",
   LoadingTitle = "Key System",
   LoadingSubtitle = "by T0X1C",
   Theme = {TextColor = Color3.fromRGB(240, 240, 240),

	Background = Color3.fromRGB(8, 28, 28),
	Topbar = Color3.fromRGB(12, 38, 38),
	Shadow = Color3.fromRGB(5, 20, 20),

	NotificationBackground = Color3.fromRGB(8, 28, 28),
	NotificationActionsBackground = Color3.fromRGB(20, 184, 166),

	TabBackground = Color3.fromRGB(15, 60, 58),
	TabStroke = Color3.fromRGB(20, 80, 77),
	TabBackgroundSelected = Color3.fromRGB(20, 184, 166),
	TabTextColor = Color3.fromRGB(200, 240, 235),
	SelectedTabTextColor = Color3.fromRGB(8, 28, 28),

	ElementBackground = Color3.fromRGB(13, 45, 43),
	ElementBackgroundHover = Color3.fromRGB(17, 55, 53),
	SecondaryElementBackground = Color3.fromRGB(10, 35, 34),
	ElementStroke = Color3.fromRGB(20, 80, 77),
	SecondaryElementStroke = Color3.fromRGB(17, 65, 63),

	SliderBackground = Color3.fromRGB(15, 60, 58),
	SliderProgress = Color3.fromRGB(20, 184, 166),
	SliderStroke = Color3.fromRGB(45, 212, 191),

	ToggleBackground = Color3.fromRGB(12, 38, 38),
	ToggleEnabled = Color3.fromRGB(20, 184, 166),
	ToggleDisabled = Color3.fromRGB(40, 70, 68),
	ToggleEnabledStroke = Color3.fromRGB(45, 212, 191),
	ToggleDisabledStroke = Color3.fromRGB(60, 95, 92),
	ToggleEnabledOuterStroke = Color3.fromRGB(20, 184, 166),
	ToggleDisabledOuterStroke = Color3.fromRGB(35, 65, 63),

	DropdownSelected = Color3.fromRGB(17, 55, 53),
	DropdownUnselected = Color3.fromRGB(12, 38, 38),

	InputBackground = Color3.fromRGB(12, 38, 38),
	InputStroke = Color3.fromRGB(25, 90, 87),
	PlaceholderColor = Color3.fromRGB(140, 190, 185)
},
})

local Tab = Window:CreateTab("Key", "key")

local enteredKey = ""

local InputKey = Tab:CreateInput({
   Name = "Input Key",
   CurrentValue = "",
   PlaceholderText = "Input the key...",   
   Callback = function(Text)
      enteredKey = Text
   end
})

local submitKey = Tab:CreateButton({
   Name = "Submit Key!",
   Callback = function()
      if enteredKey == "Proton-Hub_2026" or enteredKey == "Proton-Hub_2026 " then
         Rayfield:Notify({
            Title = "Key is correct",
            Content = "Loading Muscle Legends script...",
            Duration = 2,
            Image = "circle-check"
         })
         task.wait(1.5)
         Rayfield:Destroy()
         loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/96a8b303bc81c4ed98da3bc045897fc4.lua"))()
      else
         Rayfield:Notify({
            Title = "Key is incorrect",
            Content = "make sure you enter in the right key!",
            Duration = 3,
            Image = "circle-x"
         })
      end
   end
})

local getKey = Tab:CreateButton({
    Name = "Get Key",
    Callback = function()
      setclipboard("https://discord.gg/zFgkDf9ECq")
      Rayfield:Notify({Title = "Copied!", Content = "Discord link copied", Duration = 2})
    end
})