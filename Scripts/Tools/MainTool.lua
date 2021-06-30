local pluginv = require(script.Parent.Parent.Parent.Library.Plugin)


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

			-- "Waypoints" 3
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

			-- "Initialize" 4
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

			-- "Lighting" 5
			{
				{"Name", "Lighting"},

				{"Text", "Lighting"},
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

			-- "Settings" 6
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


mainModule.Parameters = 
	{
		SelectButton =
		{ },
		Waypoints =
		{ },
		Initialize =
		{ },
	}


function mainModule:Back(whatToHide, whatToShow)
	return function()
		for a, b in pairs(whatToHide) do
			b.Visible = false
		end

		for a, b in pairs(whatToShow) do
			b.Visible = true
		end
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

function mainModule:SelectButton(a, b, c)
	--pluginv:ShowPanelWithBackground(imageLabels[2], imageLabels[3], textButtons[1])
	pluginv:ShowPanelWithBackground(a, b, c)
end

function mainModule:Waypoints(a, b, c)
	--pluginv.ShowPanelWithBack(imageLabels[2], imageLabels[4], textButtons[1])
	pluginv:ShowPanelWithBackground(a, b, c)
end

function mainModule:Initialize(t1, b)
	for _, b in pairs(t1) do
		local a = Instance.new(b)
		a.Parent = b == true and game.Lighting or workspace.Camera
	end
end


return mainModule