-- Load the library
local Library = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/yourusername/yourrepo/main/PuppyWare.lua"))()

-- Create window
local window = Library:CreateWindow({})

-- Create pages
local rage = window:CreatePage({Icon = "rbxassetid://8547236654"})
local aimbot = window:CreatePage({Icon = "rbxassetid://8547249956"})
local visuals = window:CreatePage({Icon = "rbxassetid://8547254518"})
local setting = window:CreatePage({Icon = "rbxassetid://8547256547"})
local skins = window:CreatePage({Icon = "rbxassetid://8547258459"})
local config = window:CreatePage({Icon = "rbxassetid://8547269749"})

-- Create sections in visuals page
local playeresp = visuals:CreateSection({Name = "Player ESP", Size = 330, Side = "Left"})
local coloredmodels = visuals:CreateSection({Name = "Colored models", Size = 158, Side = "Left"})
local otheresp = visuals:CreateSection({Name = "Other ESP", Size = 200, Side = "Right"})
local effects = visuals:CreateSection({Name = "Effects", Size = 288, Side = "Right"})

-- Add elements to playeresp section
local keybind = playeresp:CreateKeybind({
	Name = "Activation Type",
	Mode = "Hold",
	Callback = function(value)
		print("Keybind changed:", value)
	end
})

playeresp:CreateToggle({
	Name = "Teammates",
	State = false,
	Callback = function(value)
		print("Teammates toggled:", value)
	end
})

playeresp:CreateColorpicker({
	Name = "Visualize aimbot",
	State = Color3.fromRGB(255, 0, 0),
	Callback = function(value)
		print("Color changed:", value)
	end
})

playeresp:CreateColorpicker({
	Name = "Bounding Box",
	State = Color3.fromRGB(50, 100, 200),
	Callback = function(value)
		print("Bounding box color:", value)
	end
})

playeresp:CreateToggle({
	Name = "Dormant",
	State = false,
	Callback = function(value)
		print("Dormant:", value)
	end
})

playeresp:CreateToggle({
	Name = "Bounding Box",
	State = true,
	Callback = function(value)
		print("Bounding box toggle:", value)
	end
})

playeresp:CreateToggle({
	Name = "Health Bar",
	State = true,
	Callback = function(value)
		print("Health bar:", value)
	end
})

playeresp:CreateToggle({
	Name = "Name",
	State = true,
	Callback = function(value)
		print("Name ESP:", value)
	end
})

playeresp:CreateToggle({
	Name = "Flags",
	State = true,
	Callback = function(value)
		print("Flags:", value)
	end
})

playeresp:CreateToggle({
	Name = "Weapon Text",
	State = false,
	Callback = function(value)
		print("Weapon text:", value)
	end
})

playeresp:CreateToggle({
	Name = "Distance",
	State = false,
	Callback = function(value)
		print("Distance:", value)
	end
})

playeresp:CreateToggle({
	Name = "Glow",
	State = true,
	Callback = function(value)
		print("Glow:", value)
	end
})

playeresp:CreateToggle({
	Name = "Hit Marker",
	State = true,
	Callback = function(value)
		print("Hit marker:", value)
	end
})

playeresp:CreateToggle({
	Name = "Line of sight",
	State = false,
	Callback = function(value)
		print("Line of sight:", value)
	end
})

playeresp:CreateToggle({
	Name = "Skeleton",
	State = false,
	Callback = function(value)
		print("Skeleton:", value)
	end
})

playeresp:CreateToggle({
	Name = "Out of FOV arrow",
	State = true,
	Callback = function(value)
		print("FOV arrow:", value)
	end
})

playeresp:CreateSlider({
	State = 12,
	Max = 30,
	Min = 1,
	Decimals = 1,
	Suffix = "px",
	Callback = function(value)
		print("Slider value:", value)
	end
})

playeresp:CreateSlider({
	State = 100,
	Max = 100,
	Min = 1,
	Decimals = 1,
	Suffix = "%",
	Callback = function(value)
		print("Opacity:", value)
	end
})

-- Add elements to coloredmodels section
coloredmodels:CreateToggle({
	Name = "Player",
	State = false,
	Callback = function(value)
		print("Player colored model:", value)
	end
})

coloredmodels:CreateToggle({
	Name = "Player behind wall",
	State = false,
	Callback = function(value)
		print("Player behind wall:", value)
	end
})

coloredmodels:CreateToggle({
	Name = "Teammate",
	State = false,
	Callback = function(value)
		print("Teammate colored:", value)
	end
})

coloredmodels:CreateToggle({
	Name = "Local player",
	State = false,
	Callback = function(value)
		print("Local player colored:", value)
	end
})

coloredmodels:CreateToggle({
	Name = "Ragdolls",
	State = false,
	Callback = function(value)
		print("Ragdolls:", value)
	end
})

coloredmodels:CreateToggle({
	Name = "Hands",
	State = false,
	Callback = function(value)
		print("Hands colored:", value)
	end
})

coloredmodels:CreateToggle({
	Name = "Weapon viewmodel",
	State = false,
	Callback = function(value)
		print("Weapon viewmodel:", value)
	end
})

coloredmodels:CreateToggle({
	Name = "Disable model occlusion",
	State = false,
	Callback = function(value)
		print("Model occlusion:", value)
	end
})

-- Add elements to otheresp section
otheresp:CreateToggle({
	Name = "Radar",
	State = false,
	Callback = function(value)
		print("Radar:", value)
	end
})

otheresp:CreateMultibox({
	Name = "Dropped weapons",
	State = {1, 3, 4},
	Options = {"Icon", "Text", "Glow", "Ammo", "Distance"},
	Minimum = 0,
	Maximum = 5,
	Callback = function(value)
		print("Dropped weapons selected:", value)
	end
})

otheresp:CreateToggle({
	Name = "Grenades",
	State = false,
	Callback = function(value)
		print("Grenades ESP:", value)
	end
})

otheresp:CreateToggle({
	Name = "Crosshair",
	State = false,
	Callback = function(value)
		print("Crosshair:", value)
	end
})

otheresp:CreateToggle({
	Name = "Spectators",
	State = false,
	Callback = function(value)
		print("Spectators:", value)
	end
})

otheresp:CreateDropdown({
	Name = "Visual Recoil Adjustment",
	State = 1,
	Options = {"Off", "Remove Shake", "Remove All"},
	Callback = function(value)
		print("Recoil adjustment:", value)
	end
})

-- Add elements to effects section
effects:CreateToggle({
	Name = "Remove flashbang effects",
	State = false,
	Callback = function(value)
		print("Remove flashbang:", value)
	end
})

effects:CreateToggle({
	Name = "Remove smoke grenades",
	State = false,
	Callback = function(value)
		print("Remove smoke:", value)
	end
})

effects:CreateToggle({
	Name = "Remove fog",
	State = false,
	Callback = function(value)
		print("Remove fog:", value)
	end
})

effects:CreateToggle({
	Name = "Remove grass",
	State = false,
	Callback = function(value)
		print("Remove grass:", value)
	end
})

effects:CreateToggle({
	Name = "Remove skybox",
	State = false,
	Callback = function(value)
		print("Remove skybox:", value)
	end
})

effects:CreateSlider({
	Name = "Transparent walls",
	State = 50,
	Max = 100,
	Min = 0,
	Decimals = 1,
	Suffix = "%",
	Callback = function(value)
		print("Wall transparency:", value)
	end
})

effects:CreateSlider({
	Name = "Transparent props",
	State = 50,
	Max = 100,
	Min = 0,
	Decimals = 1,
	Suffix = "%",
	Callback = function(value)
		print("Props transparency:", value)
	end
})

effects:CreateDropdown({
	Name = "Brightness Adjustment",
	State = 1,
	Options = {"Off", "Night Mode", "Full Bright"},
	Callback = function(value)
		print("Brightness mode:", value)
	end
})

effects:CreateToggle({
	Name = "Remove scope overlay",
	State = false,
	Callback = function(value)
		print("Remove scope:", value)
	end
})

effects:CreateToggle({
	Name = "Disable post processing",
	State = false,
	Callback = function(value)
		print("Post processing:", value)
	end
})

effects:CreateToggle({
	Name = "Force third person (alive)",
	State = false,
	Callback = function(value)
		print("Third person alive:", value)
	end
})

effects:CreateToggle({
	Name = "Bullet tracers",
	State = false,
	Callback = function(value)
		print("Bullet tracers:", value)
	end
})

print("UI Loaded successfully!")
print("Press Z to toggle UI")
print("Press X to unload UI")
