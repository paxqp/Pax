local plr = game.Players.LocalPlayer

local manufactures = {game.Workspace.Manufacture1, game.Workspace.Manufacture2, game.Workspace.Manufacture3, game.Workspace.Manufacture4}
local messages = {"onlybarbarian on dizzy", "Need cash, add me on dizzy onlybarbarian.", "Don't off me, I am doing nothing to you", "TOO FAST!!!", "Boop", "onlybarbarian is the best coder"}

-- ANTI AFK
local virtualUser = game:service'VirtualUser'

-- Connect a function to the 'Idled' event of the player. This function runs when Roblox detects idling.
game.Players.LocalPlayer.Idled:connect(function() virtualUser:CaptureController() virtualUser:ClickButton2(Vector2.new()) end)


local function manuGrab()
	local manu = manufactures[math.random(#manufactures)] 
	if manu.UIProgressPART.PrintingPROGRESS.MAINUI.Background.LOADING.Size == UDim2.new(0,0,1,0) then return manu end
	wait(0.1)
	manuGrab()
end

local function selling()
	print("Selling")
	fireproximityprompt(game:GetService("Workspace").ManufactureSeller1.SellToggle)
	wait(2)
	if game.Players.LocalPlayer.Backpack:FindFirstChild("BriefcaseManufacture") ~= nil then
		Vector3.new(-783.9000244140625, 3.0349996089935303, -392.6236267089844)
		selling()
	end
end

local function main()
	wait(0.1)
	
	local char = plr.Character
	
	if char == nil or char.Humanoid.Health < 1 then print("Welp") return end
	-- local manu = manuGrab()
	local manu = manuGrab()
	
	-- Turn On Machine
	fireclickdetector(game:GetService("Workspace").clickdoors.MoneyManufacture.MoneyManufactureENTER.ClickDetector)
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(messages[math.random(#messages)] , "All")
	wait(2)
	char:MoveTo(manu.ActivateBUTTON.Position)
	wait(0.5)
	fireproximityprompt(manu.ActivateBUTTON.Toggle)
	wait(0.5)
	
	-- Hide
	if char == nil or char.Humanoid.Health <1 then return end
	fireclickdetector(game:GetService("Workspace").clickdoors.AccessorySHOP.OutletENTER.ClickDetector)
	
	char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
	wait(0.2)
	char:MoveTo(manufactures[math.random(#manufactures)].ActivateBUTTON.Position)
	wait(0.2)
	char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
	wait(0.2)
	char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
	wait(0.2)
	char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
	
	-- Collect Cash
	wait(40)
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(messages[math.random(#messages)] , "All")
	
	if char == nil or char.Humanoid.Health <1 then return end
	fireclickdetector(game:GetService("Workspace").clickdoors.MoneyManufacture.MoneyManufactureENTER.ClickDetector)
	wait(2)
	if char == nil or char.Humanoid.Health <1 then return end
	char:MoveTo(manu.ToggleABLES.CollectCashPART.Position)
	wait(0.15)
	fireproximityprompt(manu.ToggleABLES.CollectCashPART.Activate)
	wait(0.25)
	char:MoveTo(manufactures[math.random(#manufactures)].ActivateBUTTON.Position)
	wait(0.15)
	char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
	wait(0.15)
	char:MoveTo(manufactures[math.random(#manufactures)].ActivateBUTTON.Position)
	wait(0.15)
	char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
	wait(0.15)
	char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
	wait(0.2)
	char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
	
	-- Sell
	if char == nil or char.Humanoid.Health <1 then return end
	fireclickdetector(game:GetService("Workspace").clickdoors.apartment1leave:FindFirstChild("ClickDetector")) 
	
	char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
	wait(0.15)
	char:MoveTo(manufactures[math.random(#manufactures)].ActivateBUTTON.Position)
	wait(0.15)
	char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
	wait(0.15)
	char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
	wait(0.1)
	char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
	wait(0.1)
	char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
	
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false task.wait(2) game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-783.9000244140625, 3.0349996089935303, -392.6236267089844))
	if char == nil or char.Humanoid.Health <1 then return end
	wait(1)
	
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(messages[math.random(#messages)] , "All")
	selling()
end

while true do
    local success, err = pcall(main)
 	if not success then
        print(err)  -- print the error to the output
    end
end



pcall(main)
