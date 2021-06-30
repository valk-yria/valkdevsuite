local selectModule = 
	{
		-- text labels
		{
			-- "SelectNameText" 1
			{
				{"Name", "SelectNameText"},

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

			-- "SelectColorText" 2
			{
				{"Name", "SelectColorText"},

				{"AnchorPoint", Vector2.new(1, 1)},
				{"BackgroundTransparency", 1},
				{"BorderSizePixel", 0},
				{"Font", Enum.Font.Code},
				{"Position", UDim2.new(0.87, 0, 0.22, 0)},
				{"Size", UDim2.new(0.05, 0, 0.05, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"Text", "Select Color"},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 10},
				{"TextXAlignment", Enum.TextXAlignment.Right},
				{"ZIndex", 10}
			},

			-- "SelectMaterialText" 3
			{
				{"Name", "SelectMaterialText"},

				{"AnchorPoint", Vector2.new(1, 1)},
				{"BackgroundTransparency", 1},
				{"BorderSizePixel", 0},
				{"Font", Enum.Font.Code},
				{"Position", UDim2.new(0.87, 0, 0.3, 0)},
				{"Size", UDim2.new(0.05, 0, 0.05, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"Text", "Select Material"},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 10},
				{"TextXAlignment", Enum.TextXAlignment.Right},
				{"ZIndex", 10}
			}
		},

		-- image labels
		{
			-- "SelectMenu" 1
			{
				{"Name", "SelectMenu"},

				{"AnchorPoint", Vector2.new(0, 0)},
				{"BackgroundColor3", Color3.new(46/255, 46/255, 46/255)},
				{"BorderSizePixel", 0},
				{"Position", UDim2.new(0, 0, 0, 0)},
				{"Size", UDim2.new(1, 0, 1, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"ZIndex", 1}
			},
		},

		-- text buttons
		{
			-- "GetCurrentProperties" 1
			{
				{"Name", "GetCurrentProperties"},

				{"AnchorPoint", Vector2.new(0.5, 0)},
				{"BackgroundColor3", Color3.new(35/255, 35/255, 35/255)},
				{"BorderSizePixel", 1},
				{"BorderColor3", Color3.new(0/255, 0/255, 0/255)},
				{"Font", Enum.Font.Code},
				{"Position", UDim2.new(0.65, 0, 0.35, 0)},
				{"Size", UDim2.new(0.45, 0, 0.03, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"Text", "Get selected properties"},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 8},
				{"ZIndex", 3}
			},

			-- "SelectObjects" 2
			{
				{"Name", "SelectObjects"},

				{"AnchorPoint", Vector2.new(0.5, 0)},
				{"BackgroundColor3", Color3.new(35/255, 35/255, 35/255)},
				{"BorderSizePixel", 1},
				{"BorderColor3", Color3.new(0/255, 0/255, 0/255)},
				{"Font", Enum.Font.Code},
				{"Position", UDim2.new(0.5, 0, 0.4, 0)},
				{"Size", UDim2.new(0.75, 0, 0.06, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"Text", "Select by Properties"},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 16},
				{"ZIndex", 3}
			},
		},

		-- image buttons
		{

		},

		-- text boxes
		{
			-- "SelectNameInput" 1
			{
				{"Name", "SelectNameInput"},

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
				{"ZIndex", 3}
			},

			-- "SelectColorInput" 2
			{
				{"Name", "SelectColorInput"},

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
				{"ZIndex", 3}
			},

			-- "SelectMaterialInput" 3
			{
				{"Name", "SelectMaterialInput"},

				{"AnchorPoint", Vector2.new(0.5, 0)},
				{"BackgroundColor3", Color3.new(46/255, 46/255, 46/255)},
				{"BorderSizePixel", 1},
				{"BorderColor3", Color3.new(0/255, 0/255, 0/255)},
				{"Font", Enum.Font.Code},
				{"Position", UDim2.new(0.5, 0, 0.29, 0)},
				{"Size", UDim2.new(0.75, 0, 0.04, 0)},
				{"SizeConstraint", Enum.SizeConstraint.RelativeXY},
				{"Text", ""},
				{"TextColor3", Color3.new(255/255, 255/255, 255/255)},
				{"TextSize", 11},
				{"ZIndex", 3}
			},
		},
	}


return selectModule