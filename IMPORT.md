# This document guides you on how to import the entirety of the plugin directly into your Roblox place.

## Step 1: Open up a new Roblox place.

Any place is fine.
However, if you do want to modify the plugin, I recommend doing so in a new Roblox place.

## Step 2: In the command bar, run the code below:

```lua
-- literally wrote this whole piece of code on github, so no intellisense lmaoooo
local InsertService = game:GetService("InsertService")
local SelectionService = game:GetService("Selection")

-- you may modify these two fields.
-- 'name' changes the model's name
-- 'dir' changes where the model shows up after importing. recommended to keep it in ServerStorage
local name = "ValkDevSuite"
local dir = game.ServerStorage

do
   local success, model = pcall(InsertService.LoadAsset, InsertService, 6988231623)
   if success and model then
      model.Name = name
      model.Parent = dir
      SelectionService:Set({dir:WaitForChild(name)})
      
      print("Model loaded successfully")
   else
      warn("Model failed to load!")
   end
end
```

## Step 3: Open up the model.

Roblox should automatically highlight the plugin model for you in the Explorer. You can open it up from there, and maybe have a good belly laugh at my horrible code.
