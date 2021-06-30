-- get services
local PlayersService = game:GetService("Players")
local StarterGuiService = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")
local SelectionService = game:GetService("Selection")


-- vars
local localP = PlayersService.LocalPlayer
local cam = workspace.CurrentCamera





local pluginv = {}


-- plugin functions
function pluginv:DisableButtonWithDuration(func, inst, color3, newText, duration)
	local c3 = inst.BackgroundColor3
	local t = inst.Text
	local b = true

	local function r()
		if b == true then
			func()
			inst.BackgroundColor3 = color3
			inst.Text = newText
			inst.AutoButtonColor = false
			b = false

			wait(duration)
			inst.BackgroundColor3 = c3
			inst.Text = t
			inst.AutoButtonColor = true
			b = true
		end
	end

	return r
end

function pluginv:DoubleConfirm(func, inst, timeout, timeoutText, warnText1, warnText2, warnText3)
	local c = 0
	local t = timeout
	local to = false

	local function f()
		c += 1
		if c == 1 then
			warn(warnText1)
			to = true

		elseif c >= 2 then
			warn(warnText2)
			c = 0
			to = false
			t = timeout

			func()
		end

		while wait(.1) and to == true do
			t -= 0.1
			if t <= 0 then
				warn(timeoutText)
				c = 0
				to = false
				t = timeout
			end
		end
	end

	return f
end

function pluginv:ToggleButton(func, inst, color1, color2, bool)
	
end

function pluginv:ToggleElements(whatToHide, whatToShow)
	for a, b in pairs(whatToHide) do
		b.Visible = false
	end
	for a, b in pairs(whatToShow) do
		b.Visible = true
	end
end



return pluginv