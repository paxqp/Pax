local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "ChicoBlocko GUI - Discord: onlybarbarian", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local autofarm = false
local LLAF = false
local gGrab = false

local doors = game:GetService("Workspace").clickdoors
local superGunToggle = false

local bb = game:GetService('VirtualUser')

-- Meow meow
game:service'Players'.LocalPlayer.Idled:connect(function()
	bb:CaptureController()bb:ClickButton2(Vector2.new())
end)



local function removeFade()
	if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("enterfade") then
		game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("enterfade"):Remove()
	else
	--nil
	end
end

local function bypass()
	OrionLib:MakeNotification({
		Name = "Bypassing.",
		Content = "Using Shag420's bypassing technique :p",
		Image = "rbxassetid://4483345998",
		Time = 5
	})
	
	fireclickdetector(doors.apartment1leave.ClickDetector)
    wait(2)
end


-- Super gun






----------------
----------------
----------------
--- AUTOFARM ---
----------------
----------------
----------------






local Tab = Window:MakeTab({
	Name = "Auto Farming",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Money Manufacture - LVL 15+",
	Default = false,
	Callback = function(Value)
		autofarm = Value
		
		while autofarm do
			removeFade()
    		local success, err = pcall(loadstring(game:HttpGet(('https://raw.githubusercontent.com/paxqp/Pax/main/main.lua'))))
    		if not success then
        		print("Error encountered:", err)
    		end
    		task.wait()
		end
	end
})

Tab:AddToggle({
	Name = "Cooker - LVL 5+ (Prob Safer from bans)",
	Default = false,
	Callback = function(Value)
		LLAF = Value
		
		while LLAF do
			removeFade()
    		local success, err = pcall(loadstring(game:HttpGet(('https://raw.githubusercontent.com/paxqp/Pax/main/lvl5.lua'))))
    		if not success then
        		print("Error encountered:", err)
    		end
    		task.wait()
		end
	end
})




----------------
----------------
----------------
--- EXPLOITS ---
----------------
----------------
----------------





local Tab = Window:MakeTab({
	Name = "Exploits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Gun Grab"
})

Tab:AddToggle({
	Name = "Grab Tools (You may die for teleporting too much)",
	Default = false,
	Callback = function(Value)
		gGrab = Value
		
		local plr = game.Players.LocalPlayer
			local ogPos = plr.Character.PrimaryPart.CFrame

			local function grabTool(tool)
				local plr = game.Players.LocalPlayer
				if tool:IsA("Tool") and tool:FindFirstChild("Handle") ~= nil and tool.Handle:FindFirstChild("ProximityPrompt") ~= nil and tool.Name ~= "Phone" then
					print(tool.Name)
					bypass()
					plr.Character:SetPrimaryPartCFrame(CFrame.new(tool.Handle.Position.X, tool.Handle.Position.Y +4, tool.Handle.Position.Z)* CFrame.Angles(0,0,0))
					wait(0.25)
					fireproximityprompt(tool.Handle.ProximityPrompt)
					wait(0.25)
				end
			end
		
		while gGrab do
			removeFade()
    		for _,tool in ipairs(game.Workspace:GetChildren()) do
				pcall(grabTool,tool)
				print(tool.Name)
			end
    		
    		task.wait(0.5)
		end
	end
})

Tab:AddButton({
	Name = "Grab All Tools",
	Callback = function()
			
			local plr = game.Players.LocalPlayer
			local ogPos = plr.Character.PrimaryPart.CFrame

			local function grabTool(tool)
				local plr=game.Players.LocalPlayer
				if tool:IsA("Tool") and tool:FindFirstChild("Handle") ~= nil and tool.Handle:FindFirstChild("ProximityPrompt") ~= nil and tool.Name ~= "Phone" then
					print(tool.Name)
					bypass()
					plr.Character:SetPrimaryPartCFrame(CFrame.new(tool.Handle.Position.X, tool.Handle.Position.Y +4, tool.Handle.Position.Z)* CFrame.Angles(0,0,0))
					wait(0.25)
					fireproximityprompt(tool.Handle.ProximityPrompt)
					wait(0.25)
				end
			end
			
			for _,tool in ipairs(game.Workspace:GetChildren()) do
				pcall(grabTool,tool)
			end
			
			bypass()
			plr.Character:SetPrimaryPartCFrame(ogPos)
			
      		
  	end    
})

local Section = Tab:AddSection({
	Name = "Super Gun"
})

Tab:AddToggle({
	Name = "Super Gun - Need 2+ Guns",
	Default = false,
	Callback = function(Value)
      	superGunToggle = Value
      	if Value then
	      	OrionLib:MakeNotification({
			Name = "WARNING | YOU MAY BE KICKED",
			Content = "When using the supergun feature. The guns must all be the same exact guns, or you may be kicked for messing with the sounds. Dont worry you wont be banned.",
			Image = "rbxassetid://4483345998",
			Time = 8
		})
		end
  	end  
})

Tab:AddButton({
	Name = "QBuy One Shot - Need 20k+",
	Callback = function()
			local ogPos = game.Players.LocalPlayer.Character.Head.Position
	
      		bypass()
      		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(game:GetService("Workspace").mapshopbuttons.GunPurchasingNPC.Position.X+4,game:GetService("Workspace").mapshopbuttons.GunPurchasingNPC.Position.Y,game:GetService("Workspace").mapshopbuttons.GunPurchasingNPC.Position.Z))
      		--wait(0.25)
      		--fireproximityprompt(game:GetService("Workspace").mapshopbuttons.GunPurchasingNPC.talk)
      		wait(0.25)
      		local gui = game.Players.LocalPlayer.PlayerGui:FindFirstChild("GunNPCSeller")
      		gui.MAINUI.FrontendBUYERSUI.ButtonHolder.Glock18Option.Buy.Button.BindBuy:FireServer()
      		gui.MAINUI.FrontendBUYERSUI.ButtonHolder.Glock18Option.Buy.Button.BindBuy:FireServer()
      		gui.MAINUI.FrontendBUYERSUI.ButtonHolder.Glock18Option.Buy.Button.BindBuy:FireServer()
      		gui.MAINUI.FrontendBUYERSUI.ButtonHolder.Glock18Option.Buy.Button.BindBuy:FireServer()
      		gui.MAINUI.FrontendBUYERSUI.ButtonHolder.Glock18Option.Buy.Button.BindBuy:FireServer()
      		gui.MAINUI.FrontendBUYERSUI.ButtonHolder.Glock18Option.Buy.Button.BindBuy:FireServer()
      		gui.MAINUI.FrontendBUYERSUI.ButtonHolder.Glock18Option.Buy.Button.BindBuy:FireServer()
      		gui.MAINUI.FrontendBUYERSUI.ButtonHolder.Glock18Option.Buy.Button.BindBuy:FireServer()
      		gui.MAINUI.FrontendBUYERSUI.ButtonHolder.Glock18Option.Buy.Button.BindBuy:FireServer()
      		wait(2)
      		bypass()
      		game.Players.LocalPlayer.Character:MoveTo(ogPos)
      		
      		
  	end    
})

Tab:AddBind({
	Name = "Hold Gun Then Press Bind",
	Default = Enum.KeyCode.F,
	Hold = false,
	Callback = function()
		local gunDo = nil
	
		if superGunToggle then
			for i,charGun in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if charGun:IsA("Tool") and charGun.Name ~= "Phone" and charGun.Name ~= "Fist" then 
					gunDo = charGun.Name  
					print(gunDo)
				end
			end
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				
				if v:IsA("Tool") and v.Name == gunDo then
					v.Parent = game.Players.LocalPlayer.Character
				end
				
			end
		end
	end 
})

local Section = Tab:AddSection({
	Name = "Quick Buy"
})

Tab:AddButton({
	Name = "Glock18",
	Callback = function()
			local ogPos = game.Players.LocalPlayer.Character.Head.Position
	
      		bypass()
      		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(game:GetService("Workspace").mapshopbuttons.GunPurchasingNPC.Position.X+4,game:GetService("Workspace").mapshopbuttons.GunPurchasingNPC.Position.Y,game:GetService("Workspace").mapshopbuttons.GunPurchasingNPC.Position.Z))
      		--wait(0.25)
      		--fireproximityprompt(game:GetService("Workspace").mapshopbuttons.GunPurchasingNPC.talk)
      		wait(0.25)
      		local gui = game.Players.LocalPlayer.PlayerGui:FindFirstChild("GunNPCSeller")
      		gui.MAINUI.FrontendBUYERSUI.ButtonHolder.Glock18Option.Buy.Button.BindBuy:FireServer()
      		wait(2)
      		bypass()
      		game.Players.LocalPlayer.Character:MoveTo(ogPos)
      		
      		
  	end    
})

Tab:AddButton({
	Name = "Beretta",
	Callback = function()
			local ogPos = game.Players.LocalPlayer.Character.Head.Position
	
      		bypass()
      		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(game:GetService("Workspace").mapshopbuttons.GunPurchasingNPC.Position.X+4,game:GetService("Workspace").mapshopbuttons.GunPurchasingNPC.Position.Y,game:GetService("Workspace").mapshopbuttons.GunPurchasingNPC.Position.Z))
      		--wait(0.25)
      		--fireproximityprompt(game:GetService("Workspace").mapshopbuttons.GunPurchasingNPC.talk)
      		wait(0.25)
      		local gui = game.Players.LocalPlayer.PlayerGui:FindFirstChild("GunNPCSeller")
      		gui.MAINUI.FrontendBUYERSUI.ButtonHolder.BerettaOption.Buy.Button.BindBuy:FireServer()
      		wait(2)
      		bypass()
      		game.Players.LocalPlayer.Character:MoveTo(ogPos)
      		
      		
  	end    
})



----------------
----------------
----------------
--- TELEPORT ---
----------------
----------------
----------------





local Tab = Window:MakeTab({
	Name = "Teleports",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Section = Tab:AddSection({
	Name = "Jobs & Locations"
})

Tab:AddButton({
	Name = "Money Manufacture",
	Callback = function()
      		fireclickdetector(doors.MoneyManufacture.MoneyManufactureENTER.ClickDetector)
  	end    
})

Tab:AddButton({
	Name = "Cook Job",
	Callback = function()
      		fireclickdetector(doors.cookjob1oblock.CookJob1Oblock.ClickDetector)
  	end    
})

Tab:AddButton({
	Name = "Money Manufacture Buyer",
	Callback = function()
			bypass()
      		game.Players.LocalPlayer.Character:MoveTo(game.Workspace.MoneyManufactureBUYER.HumanoidRootPart.Position)
  	end    
})

Tab:AddButton({
	Name = "Cooker Buyer",
	Callback = function()
			bypass()
      		game.Players.LocalPlayer.Character:MoveTo(game.Workspace.mapshopbuttons.sellbakingsoda.Position)
  	end    
})

local Section = Tab:AddSection({
	Name = "Player Customization"
})

Tab:AddButton({
	Name = "Accessory Shop",
	Callback = function()
      		fireclickdetector(doors.AccessorySHOP.OutletENTER.ClickDetector)
  	end    
})

Tab:AddButton({
	Name = "Ice Box",
	Callback = function()
      		fireclickdetector(doors.icebox.iceboxenter.ClickDetector)
  	end    
})

Tab:AddButton({
	Name = "Lit Cutz",
	Callback = function()
      		fireclickdetector(doors.litcutz.litcutsenter.ClickDetector)
  	end    
})

Tab:AddButton({
	Name = "Marks Thrift",
	Callback = function()
		bypass()
      		game.Players.LocalPlayer.Character:MoveTo(game:GetService("Workspace").gpslocations.marksthrift.Position)
  	end    
})

local Section = Tab:AddSection({
	Name = "Apartments & Cars"
})

Tab:AddButton({
	Name = "Budget Apartments",
	Callback = function()
      		fireclickdetector(doors.apartment1enter.ClickDetector)
  	end    
})

Tab:AddButton({
	Name = "Luxury Apartments",
	Callback = function()
      		bypass()
      		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(doors.LuxuryApartmentsEnter.Position.X+2, doors.LuxuryApartmentsEnter.Position.Y, doors.LuxuryApartmentsEnter.Position.Z))
  	end    
})

local Section = Tab:AddSection({
	Name = "Other"
})

Tab:AddButton({
	Name = "Gun NPC",
	Callback = function()
      		bypass()
      		game.Players.LocalPlayer.Character:MoveTo(Vector3.new(game:GetService("Workspace").mapshopbuttons.GunPurchasingNPC.Position.X+4,game:GetService("Workspace").mapshopbuttons.GunPurchasingNPC.Position.Y,game:GetService("Workspace").mapshopbuttons.GunPurchasingNPC.Position.Z))
  	end    
})

local Tab = Window:MakeTab({
	Name = "Other - Not Made By Me",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Aimbot + ESP",
	Callback = function()
      		pcall(loadstring(game:HttpGet(('https://raw.githubusercontent.com/Exunys/AirHub/main/AirHub.lua'))))
  	end    
})


OrionLib:Init()
