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
local assets = require(valuesFolder.Assets)



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


-- generates ui elements and sets their parents
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

local parents = 
	{
		imageLabels[1], imageLabels[2], imageLabels[3]
	}

local children = 
	{
		-- MainMenu
		{
			textLabels[1], textButtons[2], textButtons[3], textButtons[4], textButtons[5], textButtons[6], textButtons[7]
		},

		-- SelectMenu
		{
			textLabels[2], textLabels[3], textLabels[4], textButtons[8], textButtons[9], textBoxes[1], textBoxes[2], textBoxes[3]
		},

		-- WaypointMenu
		{
			textLabels[5], textButtons[10], textButtons[11], textBoxes[4], textBoxes[5]
		}
	}


for a, _ in ipairs(parents) do
	for _, b in ipairs(children[a]) do
		b.Parent = parents[a]
	end
end


-- debug stuff
do
	if debugMode == true then
		print(uiElements)
	end
end


-- sets up parameters and assigns functions
local params =
	{
		-- param 1
		{ { textButtons[1], imageLabels[2], imageLabels[3] }, { imageLabels[1] }, },
		-- param 2
		{  },
	}

-- this works, but now we have to set up all functions or this fails
for a, b in pairs(tools) do
	for c, d in pairs(textButtons) do
		b.Parameters[c] = params[c]
		d.MouseButton1Click:Connect(b[d.Name])
	end
end


-- put this in a for loop later
-- initializes the plugin, hiding what should not be seen
textButtons[1].Visible = true
imageLabels[2].Visible = false
imageLabels[3].Visible = false



-- handles dark mode
do
	local function ChangeColor()
		local themeCheck = settings().Studio.Theme.Name == "Dark" and Color3.new(46/255, 46/255, 46/255) or Color3.new(255/255, 255/255, 255/255)
		assets.studioTheme = themeCheck
	end

	ChangeColor()

	settings().Studio.ThemeChanged:Connect(ChangeColor)
end