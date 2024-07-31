local Assets = LoadAssets(18743642491)
table.foreach(Assets:Get("Stuff"):GetChildren(), function(i,v)
	local lol = v:Clone()
	lol.Parent = game.ReplicatedStorage
end)
