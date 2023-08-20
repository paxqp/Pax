local doors = game:GetService("Workspace").clickdoors
local plr = game.Players.LocalPlayer

-- Enter
local CJ = game:GetService("Workspace"):FindFirstChild("CookingJob")
if CJ.Interaction.progress.progressback.mainprogress.Size ~= UDim2.new(0,0,0,15) then return end

fireclickdetector(doors.cookjob1oblock.CookJob1Oblock.ClickDetector)
wait(1.7)

plr.Character:MoveTo(CJ.Interaction.Position)
wait(0.25)
fireproximityprompt(CJ.Interaction.CookingInteraction)
wait(0.25)

-- Hide
plr.Character:MoveTo(game:GetService("Workspace").labtabellong.Part.Position)
wait(0.25)
plr.Character:MoveTo(CJ.Interaction.Position)
wait(0.25)
plr.Character:MoveTo(game:GetService("Workspace")["Electric box"].Union.Position)
wait(0.25)
plr.Character:MoveTo(game:GetService("Workspace").labtabellong.Part.Position)
wait(0.25)
plr.Character:MoveTo(CJ.Interaction.Position)
wait(0.25)
plr.Character:MoveTo(game:GetService("Workspace")["Electric box"].Union.Position)
wait(0.25)
plr.Character:MoveTo(CJ.Interaction.Position)
wait(0.1)

fireclickdetector(game:GetService("Workspace").clickdoors.AccessorySHOP.OutletENTER.ClickDetector)

wait(58)

-- Grab Ba
plr.Character:MoveTo(CJ.Interaction.Position)
wait(3)

----------
-- Sell --
----------

fireclickdetector(doors.apartment1leave.ClickDetector)

-- Dodge
plr.Character:MoveTo(game:GetService("Workspace").labtabellong.Part.Position)
wait(0.25)
plr.Character:MoveTo(CJ.Interaction.Position)
wait(0.25)
plr.Character:MoveTo(game:GetService("Workspace")["Electric box"].Union.Position)
wait(0.25)
plr.Character:MoveTo(game:GetService("Workspace").labtabellong.Part.Position)
wait(0.25)
plr.Character:MoveTo(CJ.Interaction.Position)
wait(0.25)
plr.Character:MoveTo(game:GetService("Workspace")["Electric box"].Union.Position)
wait(0.25)
plr.Character:MoveTo(game:GetService("Workspace").labtabellong.Part.Position)
wait(0.25)
plr.Character:MoveTo(CJ.Interaction.Position)
wait(0.1)
plr.Character:MoveTo(game:GetService("Workspace")["Electric box"].Union.Position)


game.Players.LocalPlayer.Character:MoveTo(Vector3.new(game.Workspace.mapshopbuttons.sellbakingsoda.Position.X, game.Workspace.mapshopbuttons.sellbakingsoda.Position.Y, game.Workspace.mapshopbuttons.sellbakingsoda.Position.Z - 3))
wait(0.25)
fireproximityprompt(game.Workspace.mapshopbuttons.sellbakingsoda.sellbakingsoda)
wait(5)
