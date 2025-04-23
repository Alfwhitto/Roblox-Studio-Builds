-- this is the script that teleports a player to the next stage.
local part = script.Parent
local targetpart = game.Workspace["Stage 2"].TeleportToStage2 -- NOTE: Make sure 'TeleportToStage2' exists in Stage 2 and is the correct target part.

local function onTouch(hit)
	if hit and hit.Parent then
		local character = hit.Parent
		local player = game.Players:GetPlayerFromCharacter(character)
		if player then
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			if humanoid then
				-- Teleport the player
				hit.Parent.HumanoidRootPart.CFrame = targetpart.CFrame
				-- The targetpart is a SpawnLocation so this line of code is needed
				targetpart.Enabled = true 
			end
		end
	end
end

part.Touched:Connect(onTouch)

