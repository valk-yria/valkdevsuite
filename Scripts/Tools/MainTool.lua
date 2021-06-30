local pluginv = require(script.Parent.Parent.Parent.Library.Plugin)


local Selection = game:GetService("Selection")


local mainModule = 
	{
		-- text label
		{
			-- "Version" 1
			{
				{"Name", "Version"},

				{"Text", "valkyria's development suite.\nversion 0.5."},
				{"AnchorPoint", Vector2.new(1, 1)},
				{"BackgroundTransparency", 1},
				{"BorderSizePixel", 0},
				{"Font", Enum.Font.Code},
				{"Position", UDim2.new(0.97, 0, 0.99, 0)},
				{"Size", UDim2.new(0.05, 0, 0.05, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"TextColor3", Color3.new(110/255, 110/255, 110/255)},
				{"TextSize", 11},
				{"TextXAlignment", Enum.TextXAlignment.Right},
				{"ZIndex", 10}
			},
		},

		-- image label
		{
			-- "MainMenu" 1
			{
				{"Name", "MainMenu"},

				{"AnchorPoint", Vector2.new(0, 0)},
				{"BackgroundColor3", Color3.new(46/255, 46/255, 46/255)},
				{"BorderSizePixel", 0},
				{"Position", UDim2.new(0, 0, 0, 0)},
				{"Size", UDim2.new(1, 0, 1, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"ZIndex", 0}
			},
		},

		-- text button
		{
			-- "Back" 1
			{
				{"Name", "Back"},

				{"Text", "Back"},
				{"AnchorPoint", Vector2.new(0, 0)},
				{"BackgroundColor3", Color3.new(35/255, 35/255, 35/255)},
				{"BorderSizePixel", 1},
				{"BorderColor3", Color3.new(0/255, 0/255, 0/255)},
				{"Font", Enum.Font.Code},
				{"Position", UDim2.new(0.12, 0, 0.05, 0)},
				{"Size", UDim2.new(0.2, 0, 0.04, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 16},
				{"ZIndex", 10}
			},

			-- "ScanMap" 2
			{
				{"Name", "ScanMap"},

				{"Text", "Scan Map"},
				{"AnchorPoint", Vector2.new(0.5, 0)},
				{"BackgroundColor3", Color3.new(38/255, 170/255, 38/255)},
				{"BorderSizePixel", 2},
				{"BorderColor3", Color3.new(0/255, 0/255, 0/255)},
				{"Font", Enum.Font.Code},
				{"Position", UDim2.new(0.5, 0, 0.05, 0)},
				{"Size", UDim2.new(0.75, 0, 0.12, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"TextColor3", Color3.new(0/255, 0/255, 0/255)},
				{"TextSize", 23},
				{"ZIndex", 3}
			},
			
			-- "Select" 3
			{
				{"Name", "Select"},

				{"AnchorPoint", Vector2.new(0.5, 0)},
				{"BackgroundColor3", Color3.new(35/255, 35/255, 35/255)},
				{"BorderSizePixel", 1},
				{"BorderColor3", Color3.new(0/255, 0/255, 0/255)},
				{"Font", Enum.Font.Code},
				{"Position", UDim2.new(0.5, 0, 0.2, 0)},
				{"Size", UDim2.new(0.75, 0, 0.06, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"Text", "Select Objects"},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 16},
				{"ZIndex", 3}
			},
			
			-- "Waypoints" 4
			{
				{"Name", "Waypoints"},

				{"Text", "Waypoints"},
				{"AnchorPoint", Vector2.new(0.5, 0)},
				{"BackgroundColor3", Color3.new(35/255, 35/255, 35/255)},
				{"BorderSizePixel", 1},
				{"BorderColor3", Color3.new(0/255, 0/255, 0/255)},
				{"Font", Enum.Font.Code},
				{"Position", UDim2.new(0.5, 0, 0.28, 0)},
				{"Size", UDim2.new(0.75, 0, 0.06, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 16},
				{"ZIndex", 3}
			},

			-- "Initialize" 5
			{
				{"Name", "Initialize"},

				{"Text", "Initialize Map"},
				{"AnchorPoint", Vector2.new(0.5, 0)},
				{"BackgroundColor3", Color3.new(35/255, 35/255, 35/255)},
				{"BorderSizePixel", 1},
				{"BorderColor3", Color3.new(0/255, 0/255, 0/255)},
				{"Font", Enum.Font.Code},
				{"Position", UDim2.new(0.5, 0, 0.36, 0)},
				{"Size", UDim2.new(0.75, 0, 0.06, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 16},
				{"ZIndex", 3}
			},

			-- "Lighting" 6
			{
				{"Name", "Lighting"},

				{"Text", "Lighting"},
				{"AnchorPoint", Vector2.new(0.5, 0)},
				{"BackgroundColor3", Color3.new(35/255, 35/255, 35/255)},
				{"BorderSizePixel", 1},
				{"BorderColor3", Color3.new(0/255, 0/255, 0/255)},
				{"Font", Enum.Font.Code},
				{"Position", UDim2.new(0.5, 0, 0.44, 0)},
				{"Size", UDim2.new(0.75, 0, 0.06, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 16},
				{"ZIndex", 3}
			},

			-- "Settings" 7
			{
				{"Name", "Settings"},

				{"Text", "Settings"},
				{"AnchorPoint", Vector2.new(0.5, 0)},
				{"BackgroundColor3", Color3.new(35/255, 35/255, 35/255)},
				{"BorderSizePixel", 1},
				{"BorderColor3", Color3.new(0/255, 0/255, 0/255)},
				{"Font", Enum.Font.Code},
				{"Position", UDim2.new(0.5, 0, 0.86, 0)},
				{"Size", UDim2.new(0.75, 0, 0.06, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 16},
				{"ZIndex", 3}
			},
		},

		-- image button
		{
			-- "Settings" 1
			--{
			--	{"Name", "Settings"},

			--	{"AnchorPoint", Vector2.new(0, 1)},
			--	{"BackgroundTransparency", 0},
			--	{"BackgroundColor3", Color3.new(38/255, 38/255, 38/255)},
			--	{"BorderSizePixel", 0},
			--	{"BorderColor3", Color3.new(0/255, 0/255, 0/255)},
			--	{"Image", "rbxassetid://2195243465"},
			--	{"ImageColor3", Color3.new(0/255, 0/255, 0/255)},
			--	{"Position", UDim2.new(0.07, 0, 0.98, 0)},
			--	{"Size", UDim2.new(0.03, 0, 0.03, 0)},
			--	{"SizeConstraint", Enum.SizeConstraint.RelativeYY},
			--	{"ZIndex", 3},
			--	{"Parent", widget}
			--}
		},

		-- text box
		{
		},
	}


function mainModule:Back(whatToHide, whatToShow)
	return function()
		pluginv:ToggleElements(whatToHide, whatToShow)
	end
end

function mainModule:ScanMap()
	return function()
		local partNames = 
			{
				"Part", "UnionOperation", "MeshPart", "Decal", "Texture",
				"SpotLight", "SurfaceLight", "PointLight", "Smoke", "Fire", "Sparkles", "ParticleEmitter",
				"Seat", "VehicleSeat", "SpawnLocation",
				--{},
				--{}
			}
		local allParts = 
			{
				0, 0, 0, 0, 0, 
				0, 0, 0, 0, 0, 0, 0,
				0, 0, 0,
			}

		warn("====   BEGIN SCAN")
		print("Total Instances: " .. #workspace:GetDescendants())
		for _, v in pairs(workspace:GetDescendants()) do
			for a, _ in ipairs(partNames) do
				if v.ClassName == partNames[a] then
					allParts[a] += 1
				end
			end
		end

		for c, _ in ipairs(partNames) do
			print(partNames[c] .. "(s): " .. allParts[c])
		end
		warn("====   END SCAN")
	end
end

function mainModule:Select(whatToHide, whatToShow)
	return function()
		pluginv:ToggleElements(whatToHide, whatToShow)
	end
end

function mainModule:Waypoints(whatToHide, whatToShow)
	return function()
		pluginv:ToggleElements(whatToHide, whatToShow)
	end
end

function mainModule:Initialize(t, bool)
	return function()
		local s = {}
		local dir = bool == true and game.Lighting or workspace.Camera
		
		local folder = Instance.new("Folder")
		folder.Name = "VDSLighting"
		
		for _, a in pairs(t) do
			local inst = Instance.new(a)
			inst.Parent = folder
		end
		
		folder.Parent = dir
		table.insert(s, #s + 1, folder)
		
		for _, a in pairs(dir.VDSLighting:GetDescendants()) do
			table.insert(s, #s + 1, a)
		end
		
		Selection:Set(s)
	end
end

function mainModule:Lighting()
	print("Lighting")
end

function mainModule:Settings()
	print("Settings")
end


return mainModule