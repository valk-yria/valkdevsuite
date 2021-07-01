-- NOTE: THIS IS INCREDIBLY OLD. LIKE, ANCIENT KIND OF OLD.
-- This was before I did a code overhaul because the entire script was getting too long and illegible.
-- I intend to copy and paste some of the code I've wrote here to the other scripts.



---- declare functions
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