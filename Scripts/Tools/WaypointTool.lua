local waypointModule = 
	{
		-- text labels
		{
			-- "WaypointText" 1
			{
				{"Name", "WaypointText"},

				{"AnchorPoint", Vector2.new(1, 1)},
				{"BackgroundTransparency", 1},
				{"BorderSizePixel", 0},
				{"Font", Enum.Font.Code},
				{"Position", UDim2.new(0.87, 0, 0.14, 0)},
				{"Size", UDim2.new(0.05, 0, 0.05, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"Text", "Select Name"},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 10},
				{"TextXAlignment", Enum.TextXAlignment.Right},
				{"ZIndex", 10}
			},
		},

		-- image labels
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

		-- text buttons
		{
			-- "GetCurrentPosition" 1
			{
				{"Name", "GetCurrentPosition"},

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

			-- "CreateWaypoint" 2
			{
				{"Name", "CreateWaypoint"},

				{"AnchorPoint", Vector2.new(0.5, 0)},
				{"BackgroundColor3", Color3.new(35/255, 35/255, 35/255)},
				{"BorderSizePixel", 1},
				{"BorderColor3", Color3.new(0/255, 0/255, 0/255)},
				{"Font", Enum.Font.Code},
				{"Position", UDim2.new(0.5, 0, 0.32, 0)},
				{"Size", UDim2.new(0.75, 0, 0.06, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"Text", "Create at specified transform"},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 13},
				{"ZIndex", 3},
			},
		},

		-- image buttons
		{

		},

		-- text boxes
		{
			-- "WaypointPositionInput" 1
			{
				{"Name", "WaypointPositionInput"},

				{"AnchorPoint", Vector2.new(0.5, 0)},
				{"BackgroundColor3", Color3.new(46/255, 46/255, 46/255)},
				{"BorderSizePixel", 1},
				{"BorderColor3", Color3.new(0/255, 0/255, 0/255)},
				{"Font", Enum.Font.Code},
				{"Position", UDim2.new(0.5, 0, 0.13, 0)},
				{"Size", UDim2.new(0.75, 0, 0.04, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"Text", ""},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 11},
				{"ZIndex", 3},
			},

			-- "WaypointRotationInput" 2
			{
				{"Name", "WaypointRotationInput"},

				{"AnchorPoint", Vector2.new(0.5, 0)},
				{"BackgroundColor3", Color3.new(46/255, 46/255, 46/255)},
				{"BorderSizePixel", 1},
				{"BorderColor3", Color3.new(0/255, 0/255, 0/255)},
				{"Font", Enum.Font.Code},
				{"Position", UDim2.new(0.5, 0, 0.21, 0)},
				{"Size", UDim2.new(0.75, 0, 0.04, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"Text", ""},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 11},
				{"ZIndex", 3},
			},
		},
	}


return waypointModule