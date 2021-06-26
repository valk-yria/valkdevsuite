-- NOTE: THIS IS INCREDIBLY OLD. LIKE, ANCIENT KIND OF OLD.
-- This was before I did a code overhaul because the entire script was getting too long and illegible.
-- I intend to copy and paste some of the code I've wrote here to the other scripts.



---- declare functions




--local function InitializeButton()
--	local t = {}
--	local workspaceItems = resourcesFolder.Workspace
--	local lightingItems = resourcesFolder.Lighting
	
--	local a = workspaceItems:Clone()
--	local b = lightingItems:Clone()
--	a.Parent = workspace
--	b.Parent = game.Lighting
--	table.insert(t, #t + 1, a)
--	table.insert(t, #t + 1, b)
	
--	warn("Initialize complete, added the following. Click on them to highlight them in the Explorer.")
--	warn(t)
--end

--local function SelectByProperties()
--	local t = {}
--	local p = {}
	
--	for _, v in pairs(workspace:GetDescendants()) do
--		if (textBoxes[1].Text ~= "") then
--			table.insert(p, #p, v)
--		end
--	end
	
--	SelectionService:Set(t)
--	warn("Selected parts in workspace by properties.")
	
--	for i = 1, 3, 1 do
--		textBoxes[i].Text = ""
--	end
--end

--local function GetCurrentTransformButton()
--	local cf = cam.CFrame
--	local x, y, z = cf:ToEulerAnglesXYZ()
--	--textBoxes[4].Text = 
--	--textBoxes[5].Text = 
--end

--local WrappedScanMapButton = pluginv.DisableButton(ScanMapButton, textButtons[2], disabledColor3.Value, "Cooldown")
--local WrappedInitializeButton = pluginv.DoubleConfirm(InitializeButton, textButtons[3], 3, "Request timed out.", "Click again to confirm initializing the map. Expires in 3 seconds.", "Initializing...")


---- bind functions to events
--textButtons[1].MouseButton1Click:Connect(BackButton)
--textButtons[2].MouseButton1Click:Connect(WrappedScanMapButton)
--textButtons[3].MouseButton1Click:Connect(SelectButton)
--textButtons[4].MouseButton1Click:Connect(WaypointButton)
--textButtons[5].MouseButton1Click:Connect(WrappedInitializeButton)
--textButtons[8].MouseButton1Click:Connect(SelectByProperties)
--textButtons[9].MouseButton1Click:Connect(GetCurrentTransformButton)

--local x, y, z = workspace.CurrentCamera.CFrame:ToEulerAnglesXYZ()
--local a = Instance.new("Part")
--a.Position = workspace.CurrentCamera.CFrame.Position
--a.Rotation = Vector3.new(math.deg(x), math.deg(y), math.deg(z))
--a.Parent = workspace