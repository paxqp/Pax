wait()
local plr = game.Players.LocalPlayer
local char = plr.Character
local manufactures = {game.Workspace.Manufacture1, game.Workspace.Manufacture2, game.Workspace.Manufacture3, game.Workspace.Manufacture4}
local messages = {"Meow Meow :)", "Need cash, add me on dizzy onlybarbarian.", "Don't off me, I am doing nothing to you", "Mind your own business please :), i'm not doing anything to you", "Boop", "onlybarbarian is the best coder"}
local ranOnce = false

-- ANTI AFK
local virtualUser = game:service'VirtualUser'

-- Connect a function to the 'Idled' event of the player. This function runs when Roblox detects idling.
game.Players.LocalPlayer.Idled:connect(function() virtualUser:CaptureController() virtualUser:ClickButton2(Vector2.new()) end)

print("Script is running")
repeat wait() until plr.customizevalues.level.Value >=15

if char == nil or char.Humanoid.Health < 1 or autofarm == false then return end

local function manuGrab()
	if char == nil or char.Humanoid.Health < 1 or autofarm == false then return end
	print("Looking for manu")
	local manu = manufactures[math.random(#manufactures)] 
	if manu.UIProgressPART.PrintingPROGRESS.MAINUI.Background.LOADING.Size == UDim2.new(0,0,1,0) then return manu end
	wait(0.1)
	manuGrab()
end

local function selling()
	if char == nil or char.Humanoid.Health < 1 or autofarm == false then return end
	print("Selling")
	fireproximityprompt(game:GetService("Workspace").ManufactureSeller1.SellToggle)
	--wait(0.25)
	--game.Players.LocalPlayer.Character:MoveTo(Vector3.new(game.Workspace.MoneyManufactureBUYER.HumanoidRootPart.Position.X, game.Workspace.MoneyManufactureBUYER.HumanoidRootPart.Position.Y, game.Workspace.MoneyManufactureBUYER.HumanoidRootPart.Position.Z-1))
	wait(0.2)
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(game.Workspace.MoneyManufactureBUYER.HumanoidRootPart.Position.X, game.Workspace.MoneyManufactureBUYER.HumanoidRootPart.Position.Y, game.Workspace.MoneyManufactureBUYER.HumanoidRootPart.Position.Z-2))
	wait(0.2)
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(game.Workspace.MoneyManufactureBUYER.HumanoidRootPart.Position.X-2, game.Workspace.MoneyManufactureBUYER.HumanoidRootPart.Position.Y, game.Workspace.MoneyManufactureBUYER.HumanoidRootPart.Position.Z))
	wait(0.2)
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(game.Workspace.MoneyManufactureBUYER.HumanoidRootPart.Position.X+2, game.Workspace.MoneyManufactureBUYER.HumanoidRootPart.Position.Y, game.Workspace.MoneyManufactureBUYER.HumanoidRootPart.Position.Z-2))
	
	if game.Players.LocalPlayer.Backpack:FindFirstChild("BriefcaseManufacture") ~= nil then
		selling()
	end
	ranOnce = true
end

local char = plr.Character

if char == nil or char.Humanoid.Health < 1 then print("Welp") return end
-- local manu = manuGrab()
local manu = manuGrab()

-- Turn On Machine
fireclickdetector(game:GetService("Workspace").clickdoors.MoneyManufacture.MoneyManufactureENTER.ClickDetector)
if char == nil or char.Humanoid.Health < 1 or autofarm == false then return end
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(messages[math.random(#messages)] , "All")
wait(1.6)
if char == nil or char.Humanoid.Health < 1 or autofarm == false then return end
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
wait(0.2)
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
wait(0.2)
char:MoveTo(manu.ActivateBUTTON.Position)
wait(0.25)

fireproximityprompt(manu.ActivateBUTTON.Toggle)
wait(0.25)
if char == nil or char.Humanoid.Health < 1 or autofarm == false then return end
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
wait(0.2)
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
wait(0.2)
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
wait(0.2)
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
wait(0.2)
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
wait(0.2)
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
wait(0.2)
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
wait(0.2)
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
wait(0.2)
if char == nil or char.Humanoid.Health < 1 or autofarm == false then return end
-- Hide
if char == nil or char.Humanoid.Health <1 then return end
fireclickdetector(game:GetService("Workspace").clickdoors.AccessorySHOP.OutletENTER.ClickDetector)
if char == nil or char.Humanoid.Health < 1 or autofarm == false then return end
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
wait(0.2)
char:MoveTo(manufactures[math.random(#manufactures)].ActivateBUTTON.Position)
wait(0.2)
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
wait(0.2)
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
wait(0.2)
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
wait(0.2)
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
wait(0.1)
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
if char == nil or char.Humanoid.Health < 1 or autofarm == false then return end
-- Collect Cash
wait(39)
if char == nil or char.Humanoid.Health < 1 or autofarm == false then return end
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(messages[math.random(#messages)] , "All")
wait(0.1)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(messages[math.random(#messages)] , "All")

if char == nil or char.Humanoid.Health < 1 or autofarm == false then return end
fireclickdetector(game:GetService("Workspace").clickdoors.MoneyManufacture.MoneyManufactureENTER.ClickDetector)
wait(1.6)

if char == nil or char.Humanoid.Health < 1 or autofarm == false then return end
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
wait(0.2)
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
wait(0.2)
char:MoveTo(manu.ToggleABLES.CollectCashPART.Position)
wait(0.2)
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
wait(0.15)
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
wait(0.15)
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
wait(0.15)
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
wait(0.2)
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
if char == nil or char.Humanoid.Health < 1 or autofarm == false then return end
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
wait(0.1)
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
wait(0.1)
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
wait(0.1)
char:MoveTo(manufactures[math.random(#manufactures)].ToggleABLES.CollectCashPART.Position)
if char == nil or char.Humanoid.Health < 1 or autofarm == false then return end

game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false task.wait() game.Players.LocalPlayer.Character:MoveTo(game.Workspace.MoneyManufactureBUYER.HumanoidRootPart.Position)
if char == nil or char.Humanoid.Health < 1 or autofarm == false then return end
selling()
