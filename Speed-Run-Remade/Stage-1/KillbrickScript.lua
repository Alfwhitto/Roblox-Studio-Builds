local part = script.Parent

part.Touched:Connect(function(hit)
	local character = hit.Parent
	if character then
		local humanoid = character:FindFirstChild("Humanoid")
		if humanoid then
			local hrp = character:FindFirstChild("HumanoidRootPart")
			humanoid:TakeDamage(math.huge)
		end
	end
end)
