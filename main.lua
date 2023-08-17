local plr = game.Players.LocalPlayer

local manufactures = {game.Workspace.Manufacture1, game.Workspace.Manufacture2, game.Workspace.Manufacture3, game.Workspace.Manufacture4}
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("onlybarbarian Made It :)", "All")


local function manuGrab()
	local manu = manufactures[math.random(#manufactures)] 
	if manu.UIProgressPART.PrintingPROGRESS.MAINUI.Background.LOADING.Size == UDim2.new(0,0,1,0) then return manu end
	manuGrab()
end

local function main()
	local char = plr.Character
	-- local manu = manuGrab()
	local manu = game.Workspace.Manufacture1
	-- Turn On Machine
	fireclickdetector(game:GetService("Workspace").clickdoors.MoneyManufacture.MoneyManufactureENTER.ClickDetector)
	wait(2)
	char:MoveTo(manu.ActivateBUTTON.Position)
	wait(0.5)
	fireproximityprompt(manu.ActivateBUTTON.Toggle)
	wait(0.5)
	
	-- Hide
	fireclickdetector(game:GetService("Workspace").clickdoors.AccessorySHOP.OutletENTER.ClickDetector)
	
	char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
	wait(0.15)
	char:MoveTo(manufactures[math.random(#manufactures)].ActivateBUTTON.Position)
	wait(0.15)
	char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
	wait(0.15)
	char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
	wait(0.15)
	char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
	wait(0.15)
	char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
	
	-- Collect Cash
	wait(40)
	
	fireclickdetector(game:GetService("Workspace").clickdoors.MoneyManufacture.MoneyManufactureENTER.ClickDetector)
	wait(2)
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
	
	-- Sell
	fireclickdetector(game:GetService("Workspace").clickdoors.apartment1leave:FindFirstChild("ClickDetector")) 
	
	char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
	wait(0.15)
	char:MoveTo(manufactures[math.random(#manufactures)].ActivateBUTTON.Position)
	wait(0.15)
	char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
	wait(0.15)
	char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
	wait(0.15)
	char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
	
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false task.wait(2) game.Players.LocalPlayer.Character:MoveTo(game:GetService("Workspace").MoneyManufactureBUYER.HumanoidRootPart.Position)
	
	wait(1)
	fireproximityprompt(game:GetService("Workspace").ManufactureSeller1.SellToggle)
	wait(3)
end

while true do
	main()
end
