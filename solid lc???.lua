
--Converted with ttyyuu12345's model to script plugin v4
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Tool0 = Instance.new("Tool")
Script1 = Instance.new("Script")
RemoteEvent2 = Instance.new("RemoteEvent")
LocalScript3 = Instance.new("LocalScript")
MeshPart4 = Instance.new("MeshPart")
Weld5 = Instance.new("Weld")
BillboardGui6 = Instance.new("BillboardGui")
TextLabel7 = Instance.new("TextLabel")
Script8 = Instance.new("Script")
Script9 = Instance.new("Script")
UnionOperation10 = Instance.new("UnionOperation")
Weld11 = Instance.new("Weld")
UnionOperation12 = Instance.new("UnionOperation")
Weld13 = Instance.new("Weld")
Part14 = Instance.new("Part")
Weld15 = Instance.new("Weld")
Part16 = Instance.new("Part")
Part17 = Instance.new("Part")
Weld18 = Instance.new("Weld")
Tool0.Name = "Solid LC"
Tool0.Parent = mas
Tool0.Grip = CFrame.new(-0, -0, -0.0635003671, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Tool0.GripPos = Vector3.new(-0, -0, -0.06350036710500717)
Script1.Name = "stuff idk"
Script1.Parent = Tool0
table.insert(cors,sandbox(Script1,function()
--[[
\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//

lighnting canon omg!

Made by XanderGaming112 and no one else. Enjoy.

\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//
]]

local Player = nil
local Character = nil

local equipped = false

local debris = game:GetService("Debris")
local tweenservice = game:GetService("TweenService")

local music = Instance.new("Sound", script.Parent.NeonParts)
music.SoundId = "rbxassetid://348832364"
music.Volume = math.huge
music.MaxDistance = 200
music.Looped = true



local MRANDOM = math.random

function Cube(cframe,size,color,orientation,tweenedorientation,transparency,endsize,ttime,debtime)
	local cube = Instance.new("Part",script.Parent.Effects)
	cube.Size = size
	cube.Color = color
	cube.CanCollide = false
	cube.Anchored = true
	cube.Massless = true
	cube.Orientation = orientation
	cube.CFrame = cframe
	cube.Material = Enum.Material.Neon
	
	debris:AddItem(cube,debtime)
	
	tweenservice:Create(cube,TweenInfo.new(ttime),{Orientation=tweenedorientation,Transparency=transparency,Size=endsize}):Play()
end

function Swait(num)
	if num == 0 or num == nil then
		game:GetService("RunService").Heartbeat:Wait()
	else
		for i=1,num do
			game:GetService("RunService").Heartbeat:Wait()
		end
	end
end

script.Parent.Equipped:Connect(function()
	local plr = game:GetService("Players"):GetPlayerFromCharacter(script.Parent.Parent)
	Player = plr
	Character = plr.Character
	equipped = true
	music:Resume()
	
	while equipped do
		script.Parent.NeonParts.Color = Color3.fromHSV((tick()%5)/5,1,1)
		music.Volume = 10
		Swait()
	end
end)

script.Parent.Unequipped:Connect(function()
	equipped = false
	music:Pause()
end)

game:GetService("RunService").Heartbeat:Connect(function()
	if not script.Parent.NeonParts:FindFirstChild("ADSDUASD#$#(3☆223#$*#($*@$#DSDS_☆") then
		music=Instance.new("Sound",script.Parent.NeonParts)
		music.Volume=2
		music.MaxDistance = 200
		music.Looped=true
		music.SoundId="rbxassetid://348832364"
		music.Name = "ADSDUASD#$#(3☆223#$*#($*@$#DSDS_☆"
		if equipped == true then
			music:Resume()
		end
		wait()
	end
end)


function Kill(foe)
	foe:BreakJoints()

	pcall(function()
		local deathnoise = Instance.new("Sound",script.Parent.NeonParts)
		deathnoise.SoundId = "rbxassetid://5153156097"
		deathnoise.Volume = 10
		deathnoise:Play()
		debris:AddItem(deathnoise,5)
	end)

	if foe:FindFirstChild("HumanoidRootPart") then				
		coroutine.wrap(function()
			for i=1,15 do
				coroutine.wrap(function()
					local explodeeffect = Instance.new("Part",Character)
					explodeeffect.CFrame = foe:FindFirstChild("HumanoidRootPart").CFrame
					explodeeffect.CanCollide = false
					explodeeffect.Anchored = true
					explodeeffect.Material = Enum.Material.Neon
					explodeeffect.Shape = Enum.PartType.Ball
					local mrandom = MRANDOM(1,2)
					if mrandom == 1 then
						explodeeffect.Color = Color3.fromHSV((tick()%5)/5,1,1)
					else
						explodeeffect.Color = Color3.fromRGB(255, 255, 255)
					end
					debris:AddItem(explodeeffect,2)

					tweenservice:Create(explodeeffect,TweenInfo.new(1,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Transparency=1,Size=Vector3.new(30,30,30),Orientation=Vector3.new(MRANDOM(-360,360),MRANDOM(-360,360),MRANDOM(-360,360))}):Play()

					local cyl = Instance.new("Part",Character)
					cyl.CanCollide = false
					local mrandom2 = MRANDOM(1,2)
					if mrandom2 == 1 then
						cyl.Color = Color3.fromHSV((tick()%5)/5,1,1)
					else
						cyl.Color = Color3.fromRGB(255, 255, 255)
					end
					cyl.Size = Vector3.new(100,0,0)
					cyl.Anchored = true
					cyl.CFrame = explodeeffect.CFrame
					cyl.Material = Enum.Material.Neon
					cyl.Shape = Enum.PartType.Cylinder
					cyl.Orientation = Vector3.new(MRANDOM(-360,360),MRANDOM(-360,360),MRANDOM(-360,360))
					debris:AddItem(cyl,5)
					tweenservice:Create(cyl,TweenInfo.new(1),{Transparency=1,Size=Vector3.new(100,.5,.5),Orientation=Vector3.new(MRANDOM(-360,360),MRANDOM(-360,360),MRANDOM(-360,360))}):Play()
				end)()
			end
		end)()

		for i,v in pairs(foe:GetChildren()) do
			if v:IsA("BasePart") then
				coroutine.wrap(function()
					v.Material = Enum.Material.Neon
					v.Color = Color3.fromRGB(0,0,0)
					local tween = tweenservice:Create(v,TweenInfo.new(1),{Transparency=1})
					tween:Play()
					tween.Completed:Wait()
					v:Destroy()
				end)()
			elseif v:IsA("Accessory") then
				v:Destroy()
			elseif v:IsA("Decal") then
				v:Destroy()
			elseif v:IsA("Tool") then
				v:Destroy()
			elseif v:IsA("Clothing") then
				v:Destroy()
			elseif v:IsA("LuaSourceContainer") then
				v:Destroy()
			end
		end
	else
		if foe:FindFirstChild("Torso") then
			coroutine.wrap(function()
				for i=1,15 do
					coroutine.wrap(function()
						local explodeeffect = Instance.new("Part",Character)
						explodeeffect.CFrame = foe:FindFirstChild("Torso").CFrame
						explodeeffect.CanCollide = false
						explodeeffect.Anchored = true
						explodeeffect.Material = Enum.Material.Neon
						explodeeffect.Shape = Enum.PartType.Ball
						local mrandom = MRANDOM(1,2)
						if mrandom == 1 then
							explodeeffect.Color = Color3.fromHSV((tick()%5)/5,1,1)
						else
							explodeeffect.Color = Color3.fromRGB(255, 255, 255)
						end
						debris:AddItem(explodeeffect,2)

						tweenservice:Create(explodeeffect,TweenInfo.new(1,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Transparency=1,Size=Vector3.new(30,30,30),Orientation=Vector3.new(MRANDOM(-360,360),MRANDOM(-360,360),MRANDOM(-360,360))}):Play()

						local cyl = Instance.new("Part",Character)
						cyl.CanCollide = false
						local mrandom2 = MRANDOM(1,2)
						if mrandom2 == 1 then
							cyl.Color = Color3.fromHSV((tick()%5)/5,1,1)
						else
							cyl.Color = Color3.fromRGB(255, 255, 255)
						end
						cyl.Size = Vector3.new(100,0,0)
						cyl.Anchored = true
						cyl.CFrame = explodeeffect.CFrame
						cyl.Material = Enum.Material.Neon
						cyl.Shape = Enum.PartType.Cylinder
						cyl.Orientation = Vector3.new(MRANDOM(-360,360),MRANDOM(-360,360),MRANDOM(-360,360))
						debris:AddItem(cyl,5)
						tweenservice:Create(cyl,TweenInfo.new(1),{Transparency=1,Size=Vector3.new(100,.5,.5),Orientation=Vector3.new(MRANDOM(-360,360),MRANDOM(-360,360),MRANDOM(-360,360))}):Play()
					end)()
				end
			end)()

			for i,v in pairs(foe:GetChildren()) do
				if v:IsA("BasePart") then
					coroutine.wrap(function()
						v.Material = Enum.Material.Neon
						v.Color = Color3.fromRGB(0,0,0)
						local tween = tweenservice:Create(v,TweenInfo.new(1),{Transparency=1})
						tween:Play()
						tween.Completed:Wait()
						v:Destroy()
					end)()
				elseif v:IsA("Accessory") then
					v:Destroy()
				elseif v:IsA("Decal") then
					v:Destroy()
				elseif v:IsA("Tool") then
					v:Destroy()
				elseif v:IsA("Clothing") then
					v:Destroy()
				elseif v:IsA("LuaSourceContainer") then
					v:Destroy()
				end
			end
		end
	end
end
function CastProperRay(Start,Direction,Distance,Ignore)
	local NewRCP = RaycastParams.new()
	NewRCP.FilterDescendantsInstances = Ignore
	NewRCP.FilterType = Enum.RaycastFilterType.Blacklist
	NewRCP.IgnoreWater = true
	local RaycastResult = workspace:Raycast(Start,Direction * Distance,NewRCP)
	if not RaycastResult then
		return nil,Direction * Distance,nil
	end
	return RaycastResult.Instance,RaycastResult.Position,RaycastResult.Normal
end

local remote = script.Parent:WaitForChild("thefunnyshoot")

--def not stolen from lost hope :flushed: (not me!)
function Lightning(From,To,Number,Offset,Color,Time,StartSize,transparency)
	local magnitude = (From-To).magnitude
	local Table = {-Offset,Offset}
	
	for i=1,Number do
		local lightning = Instance.new("Part",Character)
		lightning.Anchored = true
		lightning.CanCollide = false
		lightning.Material = Enum.Material.Neon
		lightning.Color = Color
		lightning.Size = Vector3.new(2,2,magnitude/Number)
		
		local Offset = Vector3.new(Table[math.random(1, 2)], Table[math.random(1, 2)], Table[math.random(1, 2)])
		local pos = CFrame.new(To,From) * CFrame.new(0,0,magnitude/Number).p + Offset
		
		lightning.CFrame = CFrame.new(To,pos) * CFrame.new(0,0,magnitude/Number/2)
		
		if Number == i then
			local magnitude2 = (To-From).magnitude
			lightning.Size = Vector3.new(2,2,magnitude2)
			lightning.CFrame = CFrame.new(To, From) * CFrame.new(0,0,-magnitude2/2)
		else
			lightning.CFrame = CFrame.new(To, pos) * CFrame.new(0,0,magnitude/Number/2)
		end
		tweenservice:Create(lightning,TweenInfo.new(Time),{Size=Vector3.new(0,0,lightning.Size.Z),Transparency=transparency}):Play()
		To = lightning.CFrame * CFrame.new(0,0,magnitude/Number/2).p
		debris:AddItem(lightning,3)
	end
end

function ShootEffect(cfram,color)
	for i=1,5 do
		local lol = Instance.new("Part",Character)
		lol.CanCollide = false
		lol.Anchored = true
		lol.CFrame = cfram
		lol.Size = Vector3.new(0,0,0)
		lol.Color = color
		lol.Orientation = Vector3.new(math.random(-360,360),math.random(-360,360),math.random(-360,360))
		
		local gaming = Instance.new("SpecialMesh",lol)
		gaming.MeshId = "rbxassetid://662586858"
		gaming.Scale = Vector3.new(0,0,0)
		
		debris:AddItem(lol,5)
		
		tweenservice:Create(lol,TweenInfo.new(1.1),{Transparency=1,Orientation=Vector3.new(math.random(-360,360),math.random(-360,360),math.random(-360,360))}):Play()
		tweenservice:Create(gaming,TweenInfo.new(1,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Scale=Vector3.new(.1,.001,.1)}):Play()
	end
end

local mid = script.Parent.Caster

remote.OnServerEvent:Connect(function(player,FromP,ToP)
	
	local shoot1 = Instance.new("Sound", mid)
	shoot1.SoundId = "rbxassetid://642890855"
	shoot1.Volume = 10
	shoot1.PlaybackSpeed = .45
	shoot1:Play()
	
	debris:AddItem(shoot1,5)	
	local Dist = (FromP-ToP.Position).magnitude
	if Dist > 2048 then Dist = 2048 end
	local Part,Position,Normal = CastProperRay(FromP,(ToP.Position-FromP).unit*1000,Dist,{workspace:FindFirstChildOfClass("Terrain"),Character})
	if Dist < 50 then
		coroutine.wrap(function()
			for i=1,5 do
				Lightning(FromP,ToP.Position,4,1,Color3.fromHSV((tick()%5)/5,1,1),1,Vector3.new(0.5,3,0),1,false)
			end
		end)()
	else
		coroutine.wrap(function()
			for i=1,5 do
				Lightning(FromP,ToP.Position,10,2,Color3.fromHSV((tick()%5)/5,1,1),1,Vector3.new(0.5,3,0),1,false)
			end
		end)()
	end

	ShootEffect(script.Parent.Caster.CFrame,Color3.fromHSV((tick()%5)/5,1,1))
	ShootEffect(script.Parent.Caster.CFrame,Color3.fromRGB(255,255,255))
	
	local StartSquare = Instance.new("Part",Character)
	StartSquare.Color = Color3.fromHSV((tick()%5)/5,1,1)
	StartSquare.CanCollide = false
	StartSquare.Anchored = true
	StartSquare.CFrame = mid.CFrame
	StartSquare.Size = Vector3.new(0,0,0)
	StartSquare.Material = Enum.Material.Neon
	
	local EndSquare = Instance.new("Part",Character)
	EndSquare.Color = StartSquare.Color
	EndSquare.CanCollide = false
	EndSquare.Anchored = true
	EndSquare.CFrame = ToP
	EndSquare.Size = Vector3.new(0,0,0)
	EndSquare.Material = Enum.Material.Neon
	
	tweenservice:Create(StartSquare,TweenInfo.new(.7),{Size=Vector3.new(2,2,2),Transparency=1,Orientation=Vector3.new(MRANDOM(-360,360),MRANDOM(-360,360),MRANDOM(-360,360))}):Play()
	tweenservice:Create(EndSquare,TweenInfo.new(.7),{Size=Vector3.new(2,2,2),Transparency=1,Orientation=Vector3.new(MRANDOM(-360,360),MRANDOM(-360,360),MRANDOM(-360,360))}):Play()
	ShootEffect(EndSquare.CFrame,Color3.fromHSV((tick()%5)/5,1,1))
	ShootEffect(EndSquare.CFrame,Color3.fromRGB(255,255,255))
	debris:AddItem(StartSquare,1)
	debris:AddItem(EndSquare,1)
	
	if Part then
		if Part.Parent.ClassName == "Model" then
			if Part.Parent:FindFirstChildOfClass("Humanoid") then
				Kill(Part.Parent)
			end
		elseif Part.Parent.Parent.ClassName == "Model" then
			if Part.Parent.Parent:FindFirstChildOfClass("Humanoid") then
				Kill(Part.Parent.Parent)
			end
		end
	end
end)


function Lights2 ()

	script.Parent.NeonParts.Color = Color3.new(255/255,0/255,0/255)
	for i = 0,255,10 do
		wait()
		script.Parent.NeonParts.Color = Color3.new(255/255,i/255,0/255)
	end
	for i = 255,0,-10 do
		wait()
		script.Parent.NeonParts.Color = Color3.new(i/255,255/255,0/255)
	end
	for i = 0,255,10 do
		wait()
		script.Parent.NeonParts.Color = Color3.new(0/255,255/255,i/255)
	end
	for i = 255,0,-10 do
		wait()
		script.Parent.NeonParts.Color = Color3.new(0/255,i/255,255/255)
	end
	for i = 0,255,10 do
		wait()
		script.Parent.NeonParts.Color = Color3.new(i/255,0/255,255/255)
	end
	for i = 255,0,-10 do
		wait()
		script.Parent.NeonParts.Color = Color3.new(255/255,0/255,i/255)
	end

end

while true do		-- This just loops the Light

	Lights2()

end					-- This just loops the Light

end))
RemoteEvent2.Name = "thefunnyshoot"
RemoteEvent2.Parent = Tool0
LocalScript3.Name = "uis"
LocalScript3.Parent = RemoteEvent2
table.insert(cors,sandbox(LocalScript3,function()
local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()

local uis = game:GetService("UserInputService")

local shotlol = script.Parent

local gun = script.Parent.Parent

local ClickConnection

local KeyConnection

local held = false

function Swait(num)
	if num == 0 or num == nil then
		game:GetService("RunService").Heartbeat:Wait()
	else
		for i=1,num do
			game:GetService("RunService").Heartbeat:Wait()
		end
	end
end

script.Parent.Parent.Equipped:Connect(function()
	ClickConnection = uis.InputBegan:Connect(function(input,istyping)
		if istyping then
			return
		elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
			local FromP = gun.Caster.CFrame.Position
			local ToP = mouse.Hit
			shotlol:FireServer(FromP, ToP)			
		end
	end)
end)

script.Parent.Parent.Unequipped:Connect(function()
	ClickConnection:Disconnect()
end)

end))
MeshPart4.Name = "Base"
MeshPart4.Parent = Tool0
MeshPart4.CFrame = CFrame.new(-83.4935379, 21.8652077, 17.8238068, -0.156527206, -0.0747540444, -0.984840751, -0.984385014, 0.0931135118, 0.149386987, 0.0805346966, 0.992845297, -0.0881615058)
MeshPart4.Orientation = Vector3.new(-8.59000015258789, -95.12000274658203, -84.5999984741211)
MeshPart4.Position = Vector3.new(-83.49353790283203, 21.86520767211914, 17.823806762695312)
MeshPart4.Rotation = Vector3.new(-120.55000305175781, -80.01000213623047, 154.47000122070312)
MeshPart4.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MeshPart4.Size = Vector3.new(9.324540138244629, 8.58290958404541, 1.4686700105667114)
MeshPart4.BrickColor = BrickColor.new("Really black")
MeshPart4.CanCollide = false
MeshPart4.Locked = true
MeshPart4.Material = Enum.Material.Glass
MeshPart4.Reflectance = -1
MeshPart4.brickColor = BrickColor.new("Really black")
Weld5.Parent = MeshPart4
Weld5.C1 = CFrame.new(2.41373444, 0.567920685, 0, 1.12379617e-08, -0.707106829, 0.707106829, -7.30561709e-08, 0.707106829, 0.707106829, -1, -5.96049574e-08, -4.3712074e-08)
Weld5.Part0 = Part16
Weld5.Part1 = MeshPart4
Weld5.part1 = MeshPart4
BillboardGui6.Parent = MeshPart4
BillboardGui6.Size = UDim2.new(10, 0, 4, 0)
BillboardGui6.Active = true
BillboardGui6.ClipsDescendants = true
BillboardGui6.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BillboardGui6.AlwaysOnTop = true
BillboardGui6.StudsOffset = Vector3.new(0, 4, 0)
TextLabel7.Parent = BillboardGui6
TextLabel7.Size = UDim2.new(1, 0, 1, 0)
TextLabel7.BackgroundColor = BrickColor.new("Institutional white")
TextLabel7.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel7.BackgroundTransparency = 1
TextLabel7.Font = Enum.Font.Arcade
TextLabel7.FontSize = Enum.FontSize.Size96
TextLabel7.Text = "Solid LC"
TextLabel7.TextColor = BrickColor.new("Really black")
TextLabel7.TextColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
TextLabel7.TextScaled = true
TextLabel7.TextSize = 100
TextLabel7.TextStrokeTransparency = 0
TextLabel7.TextWrap = true
TextLabel7.TextWrapped = true
Script8.Name = "TextLabelScript"
Script8.Parent = TextLabel7
table.insert(cors,sandbox(Script8,function()
wait(0.5)

local ran = math.random()

function Lights2 ()

	script.Parent.TextColor3 = Color3.new(255/255,0/255,0/255)
	for i = 0,255,10 do
		wait()
		script.Parent.TextColor3 = Color3.new(255/255,i/255,0/255)
	end
	for i = 255,0,-10 do
		wait()
		script.Parent.TextColor3 = Color3.new(i/255,255/255,0/255)
	end
	for i = 0,255,10 do
		wait()
		script.Parent.TextColor3 = Color3.new(0/255,255/255,i/255)
	end
	for i = 255,0,-10 do
		wait()
		script.Parent.TextColor3 = Color3.new(0/255,i/255,255/255)
	end
	for i = 0,255,10 do
		wait()
		script.Parent.TextColor3 = Color3.new(i/255,0/255,255/255)
	end
	for i = 255,0,-10 do
		wait()
		script.Parent.TextColor3 = Color3.new(255/255,0/255,i/255)
	end

end

while true do		-- This just loops the Light

	Lights2()

end					-- This just loops the Light

end))
Script9.Parent = MeshPart4
UnionOperation10.Name = "GunAdditions"
UnionOperation10.Parent = Tool0
UnionOperation10.CFrame = CFrame.new(-83.9909363, 19.8467045, 19.9440079, -0.131857708, -0.112723812, -0.984838605, -0.974939108, -0.164844602, 0.149400234, -0.179186165, 0.979856968, -0.0881628022)
UnionOperation10.Orientation = Vector3.new(-8.59000015258789, -95.12000274658203, -99.5999984741211)
UnionOperation10.Position = Vector3.new(-83.99093627929688, 19.846704483032227, 19.944007873535156)
UnionOperation10.Rotation = Vector3.new(-120.55000305175781, -80.01000213623047, 139.47000122070312)
UnionOperation10.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
UnionOperation10.Size = Vector3.new(4.125401496887207, 5.02734375, 1.2096824645996094)
UnionOperation10.BrickColor = BrickColor.new("Really black")
UnionOperation10.CanCollide = false
UnionOperation10.Locked = true
UnionOperation10.Material = Enum.Material.Glass
UnionOperation10.brickColor = BrickColor.new("Really black")
UnionOperation10.UsePartColor = true
Weld11.Parent = UnionOperation10
Weld11.C1 = CFrame.new(0.530899048, -1.29299164, -0.0013961792, -1.29380087e-05, -0.86602962, 0.499992669, -3.75511445e-06, 0.499992639, 0.86602962, -1, 9.32717012e-06, -9.7209504e-06)
Weld11.Part0 = Part16
Weld11.Part1 = UnionOperation10
Weld11.part1 = UnionOperation10
UnionOperation12.Name = "NeonParts"
UnionOperation12.Parent = Tool0
UnionOperation12.CFrame = CFrame.new(-83.6521835, 21.3826447, 18.5072174, -0.79761982, 0.580566466, -0.163540483, -0.368288279, -0.683506846, -0.630224109, -0.477667838, -0.442448974, 0.758994222)
UnionOperation12.Orientation = Vector3.new(39.06999969482422, -12.15999984741211, -151.67999267578125)
UnionOperation12.Position = Vector3.new(-83.65218353271484, 21.382644653320312, 18.507217407226562)
UnionOperation12.Rotation = Vector3.new(39.70000076293945, -9.40999984741211, -143.9499969482422)
UnionOperation12.Color = Color3.new(0.972549, 0.972549, 0.972549)
UnionOperation12.Size = Vector3.new(2.001274824142456, 2.2143592834472656, 8.92722225189209)
UnionOperation12.CanCollide = false
UnionOperation12.Locked = true
UnionOperation12.Material = Enum.Material.Neon
UnionOperation12.UsePartColor = true
Weld13.Parent = UnionOperation12
Weld13.C1 = CFrame.new(0.850805283, 1.07305908, 1.2595787, -0.772622705, -0.634865463, -1.78418952e-13, 0.634865463, -0.772622705, 1.46607159e-13, -2.30926389e-13, -1.37642127e-20, 1)
Weld13.Part0 = Part16
Weld13.Part1 = UnionOperation12
Weld13.part1 = UnionOperation12
Part14.Name = "Caster"
Part14.Parent = Tool0
Part14.CFrame = CFrame.new(-82.3308411, 26.4757614, 12.6353474, -0.163540527, 0.0578224175, -0.984840751, -0.630224109, 0.761906445, 0.149387032, 0.758994222, 0.645100951, -0.0881614685)
Part14.Orientation = Vector3.new(-8.59000015258789, -95.12000274658203, -39.599998474121094)
Part14.Position = Vector3.new(-82.33084106445312, 26.47576141357422, 12.635347366333008)
Part14.Rotation = Vector3.new(-120.55000305175781, -80.01000213623047, -160.52999877929688)
Part14.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part14.Transparency = 1
Part14.Size = Vector3.new(0.20079202950000763, 0.20079202950000763, 0.20079202950000763)
Part14.BottomSurface = Enum.SurfaceType.Smooth
Part14.BrickColor = BrickColor.new("Really black")
Part14.CanCollide = false
Part14.Locked = true
Part14.Material = Enum.Material.Glass
Part14.Reflectance = -1
Part14.TopSurface = Enum.SurfaceType.Smooth
Part14.brickColor = BrickColor.new("Really black")
Weld15.Parent = Part14
Weld15.C1 = CFrame.new(9.14218998, -1.53814697, -0.00110816956, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
Weld15.Part0 = Part16
Weld15.Part1 = Part14
Weld15.part1 = Part14
Part16.Name = "Handle"
Part16.Parent = Tool0
Part16.CFrame = CFrame.new(-83.9138107, 19.5420437, 18.5820541, 0.984840751, 0.0578224175, -0.163540483, -0.149387002, 0.761906445, -0.630224109, 0.0881614387, 0.645100951, 0.758994222)
Part16.Orientation = Vector3.new(39.06999969482422, -12.15999984741211, -11.09000015258789)
Part16.Position = Vector3.new(-83.91381072998047, 19.542043685913086, 18.582054138183594)
Part16.Rotation = Vector3.new(39.70000076293945, -9.40999984741211, -3.359999895095825)
Part16.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part16.Transparency = 1
Part16.Size = Vector3.new(1.0039602518081665, 1.0039602518081665, 1.0039602518081665)
Part16.BottomSurface = Enum.SurfaceType.Smooth
Part16.BrickColor = BrickColor.new("Really black")
Part16.CanCollide = false
Part16.Locked = true
Part16.Material = Enum.Material.Glass
Part16.Reflectance = -1
Part16.TopSurface = Enum.SurfaceType.Smooth
Part16.brickColor = BrickColor.new("Really black")
Part17.Name = "Hole"
Part17.Parent = Tool0
Part17.CFrame = CFrame.new(-83.2793808, 22.8204498, 17.0375271, -0.163540527, 0.0578224175, -0.984840751, -0.630224109, 0.761906445, 0.149387032, 0.758994222, 0.645100951, -0.0881614685)
Part17.Orientation = Vector3.new(-8.59000015258789, -95.12000274658203, -39.599998474121094)
Part17.Position = Vector3.new(-83.27938079833984, 22.820449829101562, 17.037527084350586)
Part17.Rotation = Vector3.new(-120.55000305175781, -80.01000213623047, -160.52999877929688)
Part17.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part17.Transparency = 1
Part17.Size = Vector3.new(0.20079202950000763, 0.20079202950000763, 0.20079202950000763)
Part17.BottomSurface = Enum.SurfaceType.Smooth
Part17.BrickColor = BrickColor.new("Really black")
Part17.CanCollide = false
Part17.Locked = true
Part17.Material = Enum.Material.Glass
Part17.Reflectance = -1
Part17.TopSurface = Enum.SurfaceType.Smooth
Part17.brickColor = BrickColor.new("Really black")
Weld18.Parent = Part17
Weld18.C1 = CFrame.new(3.34217167, -1.53814697, -0.00110816956, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
Weld18.Part0 = Part16
Weld18.Part1 = Part17
Weld18.part1 = Part17
for i,v in pairs(mas:GetChildren()) do
	v.Parent = workspace
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
