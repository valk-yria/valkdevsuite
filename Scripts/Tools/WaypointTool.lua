local pluginv = require(script.Parent.Parent.Parent.Library.Plugin)


local Selection = game:GetService("Selection")


local waypointModule = 
	{
		{
			-- "WaypointPositionText" 1
			{
				{"Name", "WaypointPositionText"},

				{"AnchorPoint", Vector2.new(1, 1)},
				{"BackgroundTransparency", 1},
				{"BorderSizePixel", 0},
				{"Font", Enum.Font.Code},
				{"Position", UDim2.new(0.87, 0, 0.14, 0)},
				{"Size", UDim2.new(0.05, 0, 0.05, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"Text", "Position"},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 10},
				{"TextXAlignment", Enum.TextXAlignment.Right},
				{"ZIndex", 10}
			},
			
			-- "WaypointRotationText" 2
			{
				{"Name", "WaypointRotationText"},

				{"AnchorPoint", Vector2.new(1, 1)},
				{"BackgroundTransparency", 1},
				{"BorderSizePixel", 0},
				{"Font", Enum.Font.Code},
				{"Position", UDim2.new(0.87, 0, 0.22, 0)},
				{"Size", UDim2.new(0.05, 0, 0.05, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"Text", "Rotation"},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 10},
				{"TextXAlignment", Enum.TextXAlignment.Right},
				{"ZIndex", 10}
			},
		},

		{
			-- "WaypointMenu" 1
			{
				{"Name", "WaypointMenu"},

				{"AnchorPoint", Vector2.new(0, 0)},
				{"BackgroundColor3", Color3.new(46/255, 46/255, 46/255)},
				{"BorderSizePixel", 0},
				{"Position", UDim2.new(0, 0, 0, 0)},
				{"Size", UDim2.new(1, 0, 1, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"ZIndex", 1},
			}
		},

		{
			-- "GetCurrentTransform" 1
			{
				{"Name", "GetCurrentTransform"},

				{"AnchorPoint", Vector2.new(0.5, 0)},
				{"BackgroundColor3", Color3.new(35/255, 35/255, 35/255)},
				{"BorderSizePixel", 1},
				{"BorderColor3", Color3.new(0/255, 0/255, 0/255)},
				{"Font", Enum.Font.Code},
				{"Position", UDim2.new(0.65, 0, 0.27, 0)},
				{"Size", UDim2.new(0.45, 0, 0.03, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"Text", "Get current transform"},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 8},
				{"ZIndex", 3},
			},

			-- "SaveWaypoint" 2
			{
				{"Name", "SaveWaypoint"},

				{"AnchorPoint", Vector2.new(0.5, 0)},
				{"BackgroundColor3", Color3.new(35/255, 35/255, 35/255)},
				{"BorderSizePixel", 1},
				{"BorderColor3", Color3.new(0/255, 0/255, 0/255)},
				{"Font", Enum.Font.Code},
				{"Position", UDim2.new(0.5, 0, 0.32, 0)},
				{"Size", UDim2.new(0.75, 0, 0.06, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"Text", "Save transform"},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 13},
				{"ZIndex", 3},
			},
		},

		{

		},

		{
			-- "WaypointPositionInputX" 1
			{
				{"Name", "WaypointPositionInputX"},

				{"AnchorPoint", Vector2.new(0.5, 0)},
				{"BackgroundColor3", Color3.new(46/255, 46/255, 46/255)},
				{"BorderSizePixel", 1},
				{"BorderColor3", Color3.new(180/255, 0/255, 0/255)},
				{"Font", Enum.Font.Code},
				{"PlaceholderText", "X"},
				{"PlaceholderColor3", Color3.new(255/255, 255/255, 255/255)},
				{"Position", UDim2.new(0.22, 0, 0.13, 0)},
				{"Size", UDim2.new(0.2, 0, 0.04, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"Text", ""},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 11},
				{"ZIndex", 3},
			},
			
			-- "WaypointPositionInputY" 2
			{
				{"Name", "WaypointPositionInputY"},

				{"AnchorPoint", Vector2.new(0.5, 0)},
				{"BackgroundColor3", Color3.new(46/255, 46/255, 46/255)},
				{"BorderSizePixel", 1},
				{"BorderColor3", Color3.new(0/255, 180/255, 0/255)},
				{"Font", Enum.Font.Code},
				{"PlaceholderText", "Y"},
				{"PlaceholderColor3", Color3.new(255/255, 255/255, 255/255)},
				{"Position", UDim2.new(0.5, 0, 0.13, 0)},
				{"Size", UDim2.new(0.2, 0, 0.04, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"Text", ""},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 11},
				{"ZIndex", 3},
			},
			
			-- "WaypointPositionInputZ" 3
			{
				{"Name", "WaypointPositionInputZ"},

				{"AnchorPoint", Vector2.new(0.5, 0)},
				{"BackgroundColor3", Color3.new(46/255, 46/255, 46/255)},
				{"BorderSizePixel", 1},
				{"BorderColor3", Color3.new(0/255, 0/255, 180/255)},
				{"Font", Enum.Font.Code},
				{"PlaceholderText", "Z"},
				{"PlaceholderColor3", Color3.new(255/255, 255/255, 255/255)},
				{"Position", UDim2.new(0.78, 0, 0.13, 0)},
				{"Size", UDim2.new(0.2, 0, 0.04, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"Text", ""},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 11},
				{"ZIndex", 3},
			},
			
			-- "WaypointRotationInputX" 4
			{
				{"Name", "WaypointRotationInputX"},

				{"AnchorPoint", Vector2.new(0.5, 0)},
				{"BackgroundColor3", Color3.new(46/255, 46/255, 46/255)},
				{"BorderSizePixel", 1},
				{"BorderColor3", Color3.new(180/255, 0/255, 0/255)},
				{"Font", Enum.Font.Code},
				{"PlaceholderText", "X"},
				{"PlaceholderColor3", Color3.new(255/255, 255/255, 255/255)},
				{"Position", UDim2.new(0.22, 0, 0.21, 0)},
				{"Size", UDim2.new(0.2, 0, 0.04, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"Text", ""},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 11},
				{"ZIndex", 3},
			},

			-- "WaypointRotationInputY" 5
			{
				{"Name", "WaypointRotationInputY"},

				{"AnchorPoint", Vector2.new(0.5, 0)},
				{"BackgroundColor3", Color3.new(46/255, 46/255, 46/255)},
				{"BorderSizePixel", 1},
				{"BorderColor3", Color3.new(0/255, 180/255, 0/255)},
				{"Font", Enum.Font.Code},
				{"PlaceholderText", "Y"},
				{"PlaceholderColor3", Color3.new(255/255, 255/255, 255/255)},
				{"Position", UDim2.new(0.5, 0, 0.21, 0)},
				{"Size", UDim2.new(0.2, 0, 0.04, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"Text", ""},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 11},
				{"ZIndex", 3},
			},

			-- "WaypointRotationInputZ" 6
			{
				{"Name", "WaypointRotationInputZ"},

				{"AnchorPoint", Vector2.new(0.5, 0)},
				{"BackgroundColor3", Color3.new(46/255, 46/255, 46/255)},
				{"BorderSizePixel", 1},
				{"BorderColor3", Color3.new(0/255, 0/255, 180/255)},
				{"Font", Enum.Font.Code},
				{"PlaceholderText", "Z"},
				{"PlaceholderColor3", Color3.new(255/255, 255/255, 255/255)},
				{"Position", UDim2.new(0.78, 0, 0.21, 0)},
				{"Size", UDim2.new(0.2, 0, 0.04, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"Text", ""},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 11},
				{"ZIndex", 3},
			},
		},
	}


function waypointModule:GetCurrentTransform(a, b, c, d, e, f)
	return function()
		local function RoundNumber(n, dp)
			return math.floor(n * 10^dp) / 10^dp
		end
		
		local dp = 5
		local cf = workspace.CurrentCamera.CFrame
		local p1, p2, p3, r1, r2, r3 = cf.Position.X, cf.Position.Y, cf.Position.Z, cf:ToEulerAnglesXYZ()

		local t1 = table.pack(a, b, c, d, e, f)
		local t2 = table.pack(p1, p2, p3, math.deg(r1), math.deg(r2), math.deg(r3))
		
		for i = 1, t1["n"], 1 do
			t1[i].Text = RoundNumber(t2[i], dp)
		end
	end
end
function waypointModule:SaveTransform(a, b, c, d, e, f, module)
	return function()
		local function CleanString(a)
			return string.gsub(a, "%.", "")
		end
		
		local check = false
		local str = "(" .. a.Text .. ", " .. b.Text .. ", " .. c.Text .. "), (" .. d.Text .. ", " .. e.Text .. ", " .. f.Text .. ")"
		local t = {}
		local t1 = table.pack(a, b, c, d, e, f)
		local key = ""
		for i1, i2 in ipairs(t1) do
			key = key .. CleanString(i2.Text)
			table.insert(t, #t + 1, i2.Text)
		end
		table.insert(t, 1, key)
		
		
		for i1, i2 in ipairs(module.Saved) do
			if i2[1] == key then
				check = true
			end
		end
		
		if check == true then
			warn("Transform already exists, save unsuccessful")
		else
			table.insert(module.Saved, #module.Saved + 1, t)
			warn("Saved transform " .. #module.Saved .. " at " .. str)
		end
	end
end


return waypointModule