local part = script.Parent

part.Touched:Connect(function(hit) -- this is the function to know if the player is hitting anything.
	local character = hit.Parent
	if character then
		local humanoid = character:FindFirstChild("Humanoid")
		if humanoid then
			local hrp = character:FindFirstChild("HumanoidRootPart")
			humanoid:TakeDamage(math.huge)
		end
	end
end)
