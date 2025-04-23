-- this script sets the players spawnlocation to the one in stage 2.
local Players = game:GetService("Players")
local newspawn = script.Parent

local connection
connection = newspawn.Touched:Connect(function(hit)
	local character = hit.Parent
	local humanoid = character:FindFirstChildWhichIsA("Humanoid")

	if humanoid then
		local player = Players:GetPlayerFromCharacter(character)
		if player then
			-- Set the player's respawn location to this spawn point
			player.RespawnLocation = newspawn
			print(player.Name .. "'s respawn location set to " .. newspawn.Name)
			-- Disconnect the Touched event to stop further execution
			connection:Disconnect()
		end
	end
end)
