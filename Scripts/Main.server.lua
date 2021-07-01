-- for debugging only, disable when not in use
local debugMode = true


-- get services
local SelectionService = game:GetService("Selection")
local RunService = game:GetService("RunService")
local ChangeHistoryService = game:GetService("ChangeHistoryService")


-- get folders
local globalFolder = script.Parent.Parent

local scriptFolder = globalFolder.Scripts
local toolsFolder = globalFolder.Scripts.Tools
local materialsFolder = globalFolder.Materials
local valuesFolder = globalFolder.Values


-- get libraries
local pluginv = require(globalFolder.Library.Plugin)


local mainTool = require(toolsFolder.MainTool)
local lightingTool = require(toolsFolder.LightingTool)
local selectTool = require(toolsFolder.SelectTool)
local waypointTool = require(toolsFolder.WaypointTool)


local tools = { mainTool, lightingTool, selectTool, waypointTool }


-- values
local resources = require(materialsFolder.Resources)
local assets = require(valuesFolder.Assets)
local waypoints = require(valuesFolder.Waypoints)


-- vars
local cam = workspace.CurrentCamera


-- gui vars
local enable = false
	

-- set up plugin toolbar and widget
local toolbar = plugin:CreateToolbar("Valkyria's Dev Suite")
local widgetButton = toolbar:CreateButton("Map Tools", "Activates toolbar that assists in map development, etc.", assets.pluginButtonImage)

local widgetInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Right, false, true, 1500, 150, 280, 310)
local widget = plugin:CreateDockWidgetPluginGui("Valkyria Suite", widgetInfo)
widget.Title = "Map Tools"

-- properly handle plugin/widget closing
do
	widgetButton.Click:Connect(function()
		enable = not enable
		widget.Enabled = enable
		plugin:Activate(enable)
		widgetButton:SetActive(enable)
	end)

	widget:BindToClose(function()
		enable = false
		widgetButton:SetActive(enable)
		widget.Enabled = enable
	end)
end


-- generates ui elements
local uiElements = {{}, {}, {}, {}, {}}

local textLabels = uiElements[1]
local imageLabels = uiElements[2]
local textButtons = uiElements[3]
local imageButtons = uiElements[4]
local textBoxes = uiElements[5]

do
	uiNames = {"TextLabel", "ImageLabel", "TextButton", "ImageButton", "TextBox"}

	-- iterates through all tool modules
	for a, b in pairs(tools) do
		-- iterates through all ui names above
		for c, d in pairs(uiNames) do
			-- iterates through all ui info collections
			for e, f in pairs(b[c]) do
				local elem = Instance.new(d)
				table.insert(uiElements[c], #uiElements[c] + 1, elem)
				-- assigns properties
				for g, h in pairs(f) do
					elem[h[1]] = h[2]
				end
				elem.Parent = widget
			end
		end
	end
end


-- sets their parents
do
	local parents = 
		{ 
			imageLabels[1], imageLabels[2], imageLabels[3], imageLabels[4] 
		}
	local children = 
		{
			{ textLabels[1], textButtons[2], textButtons[3], textButtons[4], textButtons[5], textButtons[6], textButtons[7], },
			{  },
			{ textLabels[2], textLabels[3], textLabels[4], textButtons[8], textButtons[9], textBoxes[1], textBoxes[2], textBoxes[3], },
			{ textLabels[5], textLabels[6], textButtons[10], textButtons[11], textBoxes[4], textBoxes[5], textBoxes[6], textBoxes[7], textBoxes[8], textBoxes[9] },
		}

	for a, b in pairs(parents) do
		for c, d in pairs(children[a]) do
			d.Parent = b
		end
	end
end


-- debug stuff
do
	if debugMode == true then
		print(uiElements)
		widget.Enabled = true
	end
end


-- assigns functions
do
	local funcs = 
		{
			{
				mainTool:Back({textButtons[1], imageLabels[2], imageLabels[3], imageLabels[4]}, {imageLabels[1]}),
				mainTool:ScanMap(),
				mainTool:Select({imageLabels[1]}, {imageLabels[3], textButtons[1]}),
				mainTool:Waypoints({imageLabels[1]}, {imageLabels[4], textButtons[1]}),
				mainTool:Lighting(),
				mainTool:Initialize(resources.lightingResources, true),
				mainTool:Settings(),
			},
			{
				waypointTool:GetCurrentTransform(textBoxes[4], textBoxes[5], textBoxes[6], textBoxes[7], textBoxes[8], textBoxes[9]),
				waypointTool:SaveTransform(textBoxes[4], textBoxes[5], textBoxes[6], textBoxes[7], textBoxes[8], textBoxes[9], waypoints),
			}
		}
	
	for a, b in pairs(funcs[1]) do
		textButtons[a].MouseButton1Click:Connect(b)
	end
	
	textButtons[10].MouseButton1Click:Connect(funcs[2][1])
	textButtons[11].MouseButton1Click:Connect(funcs[2][2])
end


-- put this in a for loop later
-- initializes the plugin, hiding what should not be seen
do
	textButtons[1].Visible = false
	imageLabels[2].Visible = false
	imageLabels[3].Visible = false
	imageLabels[4].Visible = false
end


-- handles dark mode
do
	local function ChangeColor()
		local themeCheck = settings().Studio.Theme.Name == "Dark" and Color3.new(46/255, 46/255, 46/255) or Color3.new(255/255, 255/255, 255/255)
		assets.studioTheme = themeCheck
	end

	ChangeColor()

	settings().Studio.ThemeChanged:Connect(ChangeColor)
end
