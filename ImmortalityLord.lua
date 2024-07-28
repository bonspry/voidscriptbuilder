--// Immortality Lord

warn("Immortality Lord by LuaQuack")
warn("Converted by typicalusername_")
task.spawn(error,"LOOK WHAT YOU DID WITH ALL THIS POWER.")

--// Converted Models

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

--task.spawn(function()
Part0 = Instance.new("Part")
SpecialMesh1 = Instance.new("SpecialMesh")
Part2 = Instance.new("Part")
SpecialMesh3 = Instance.new("SpecialMesh")
Part0.Name = "Eye1"
Part0.CFrame = CFrame.new(-16.2505035, 4.3221755, 11.1216135, 0.99999994, 0, 0, 0, 1, 0, 0, 0, 0.99999994)
Part0.Position = Vector3.new(-16.250503540039062, 4.3221755027771, 11.121613502502441)
Part0.Color = Color3.new(1, 1, 1)
Part0.Size = Vector3.new(0.05000000074505806, 0.5, 0.10000000149011612)
Part0.BrickColor = BrickColor.new("Institutional white")
Part0.CanCollide = false
Part0.Locked = true
Part0.Material = Enum.Material.Neon
Part0.brickColor = BrickColor.new("Institutional white")
Part0.Parent = mas
SpecialMesh1.Parent = Part0
SpecialMesh1.MeshType = Enum.MeshType.Sphere
Part2.Name = "Eye"
Part2.CFrame = CFrame.new(-15.9705029, 4.3221755, 11.0465879, 0.99999994, 0, 0, 0, 1, 0, 0, 0, 0.99999994)
Part2.Position = Vector3.new(-15.970502853393555, 4.3221755027771, 11.046587944030762)
Part2.Color = Color3.new(1, 1, 1)
Part2.Size = Vector3.new(0.05000000074505806, 0.5, 0.10000000149011612)
Part2.BrickColor = BrickColor.new("Institutional white")
Part2.CanCollide = false
Part2.Locked = true
Part2.Material = Enum.Material.Neon
Part2.brickColor = BrickColor.new("Institutional white")
Part2.Parent = mas
SpecialMesh3.Parent = Part2
SpecialMesh3.MeshType = Enum.MeshType.Sphere

UnionOperation0 = Part0:UnionAsync({Part2})
UnionOperation0.Name = "Eyes"
UnionOperation0.Parent = mas
UnionOperation0.CFrame = CFrame.new(-16.1145802, 4.32363796, 11.0817089, 1, 0, 0, 0, 1, 0, 0, 0, 1)
UnionOperation0.Position = Vector3.new(-16.114580154418945, 4.323637962341309, 11.081708908081055)
UnionOperation0.Size = Vector3.new(0.33816707134246826, 0.5056753158569336, 0.1702425479888916)
UnionOperation0.Anchored = true
UnionOperation0.CanCollide = false
UnionOperation0.Locked = true
UnionOperation0.Material = Enum.Material.Neon
UnionOperation0.UsePartColor = true

Part1 = Instance.new("Part")
SpecialMesh2 = Instance.new("SpecialMesh")
Decal3 = Instance.new("Decal")
Part4 = Instance.new("Part")
SpecialMesh5 = Instance.new("SpecialMesh")
Part6 = Instance.new("Part")
SpecialMesh7 = Instance.new("SpecialMesh")
Part8 = Instance.new("Part")
SpecialMesh9 = Instance.new("SpecialMesh")
Part10 = Instance.new("Part")
SpecialMesh11 = Instance.new("SpecialMesh")
Part12 = Instance.new("Part")
SpecialMesh13 = Instance.new("SpecialMesh")
Part14 = Instance.new("Part")
SpecialMesh15 = Instance.new("SpecialMesh")
Part16 = Instance.new("Part")
SpecialMesh17 = Instance.new("SpecialMesh")
Part1.Name = "Head"
Part1.Parent = mas
Part1.CFrame = CFrame.new(-3.13958001, 6.73850012, 11.081708, 1.00000119, 0, 0, 0, 1, 0, 0, 0, 1.00000119)
Part1.Position = Vector3.new(-3.139580011367798, 6.738500118255615, 11.081707954406738)
Part1.Color = Color3.new(0, 0, 0)
Part1.Size = Vector3.new(1.2000000476837158, 1.2000000476837158, 1.2000000476837158)
Part1.Anchored = true
Part1.BrickColor = BrickColor.new("Really black")
Part1.Material = Enum.Material.Slate
Part1.brickColor = BrickColor.new("Really black")
SpecialMesh2.Parent = Part1
SpecialMesh2.MeshId = "rbxasset://fonts/head.mesh"
SpecialMesh2.Scale = Vector3.new(1.001795768737793, 0.9979835748672485, 1.001795768737793)
SpecialMesh2.MeshType = Enum.MeshType.FileMesh
Decal3.Parent = Part1
Part4.Name = "Horns"
Part4.Parent = mas
Part4.CFrame = CFrame.new(-14.2645798, 6.73850012, 11.081708, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part4.Position = Vector3.new(-14.264579772949219, 6.738500118255615, 11.081707954406738)
Part4.Color = Color3.new(0, 0, 0)
Part4.Size = Vector3.new(1.4297200441360474, 1.4382991790771484, 0.5125069618225098)
Part4.Anchored = true
Part4.BrickColor = BrickColor.new("Really black")
Part4.Material = Enum.Material.Slate
Part4.brickColor = BrickColor.new("Really black")
SpecialMesh5.Parent = Part4
SpecialMesh5.MeshId = "rbxassetid://3957083206"
SpecialMesh5.MeshType = Enum.MeshType.FileMesh
Part6.Name = "LeftWing"
Part6.Parent = mas
Part6.CFrame = CFrame.new(-17.0077553, 6.73850012, 11.081708, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part6.Position = Vector3.new(-17.007755279541016, 6.738500118255615, 11.081707954406738)
Part6.Color = Color3.new(0, 0, 0)
Part6.Size = Vector3.new(2.3980000019073486, 4.323999881744385, 1.9220000505447388)
Part6.Anchored = true
Part6.BrickColor = BrickColor.new("Really black")
Part6.Material = Enum.Material.Slate
Part6.brickColor = BrickColor.new("Really black")
SpecialMesh7.Parent = Part6
SpecialMesh7.MeshId = "rbxassetid://1553468234"
SpecialMesh7.Scale = Vector3.new(0.04647801071405411, 0.04166604205965996, 0.038440000265836716)
SpecialMesh7.MeshType = Enum.MeshType.FileMesh
Part8.Name = "Limb"
Part8.Parent = mas
Part8.CFrame = CFrame.new(-21.0645809, 6.73850012, 11.081708, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part8.Position = Vector3.new(-21.0645809173584, 6.738500118255615, 11.081707954406738)
Part8.Color = Color3.new(0, 0, 0)
Part8.Size = Vector3.new(1, 2, 1)
Part8.Anchored = true
Part8.BrickColor = BrickColor.new("Really black")
Part8.Material = Enum.Material.Slate
Part8.brickColor = BrickColor.new("Really black")
SpecialMesh9.Parent = Part8
SpecialMesh9.MeshId = "rbxasset://fonts/rightarm.mesh"
SpecialMesh9.MeshType = Enum.MeshType.FileMesh
Part10.Name = "RightWing"
Part10.Parent = mas
Part10.CFrame = CFrame.new(-18.6145802, 6.73850012, 11.081708, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part10.Position = Vector3.new(-18.614580154418945, 6.738500118255615, 11.081707954406738)
Part10.Color = Color3.new(0, 0, 0)
Part10.Size = Vector3.new(2.3980000019073486, 4.323999881744385, 1.9220000505447388)
Part10.Anchored = true
Part10.BrickColor = BrickColor.new("Really black")
Part10.Material = Enum.Material.Slate
Part10.brickColor = BrickColor.new("Really black")
SpecialMesh11.Parent = Part10
SpecialMesh11.MeshId = "rbxassetid://1553468709"
SpecialMesh11.Scale = Vector3.new(0.03844571113586426, 0.03845309466123581, 0.038440000265836716)
SpecialMesh11.MeshType = Enum.MeshType.FileMesh
Part12.Name = "Swirl"
Part12.Parent = mas
Part12.CFrame = CFrame.new(-23.2645779, 7.26358604, 11.1567078, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part12.Position = Vector3.new(-23.264577865600586, 7.263586044311523, 11.156707763671875)
Part12.Color = Color3.new(0, 0, 0)
Part12.Size = Vector3.new(1, 1, 1)
Part12.Anchored = true
Part12.BrickColor = BrickColor.new("Really black")
Part12.CanCollide = false
Part12.Material = Enum.Material.Slate
Part12.brickColor = BrickColor.new("Really black")
SpecialMesh13.Parent = Part12
SpecialMesh13.MeshId = "rbxassetid://2671071329"
SpecialMesh13.Scale = Vector3.new(1.695001482963562, 19.92984962463379, 1.6739568710327148)
SpecialMesh13.MeshType = Enum.MeshType.FileMesh
Part14.Name = "Sword"
Part14.Parent = mas
Part14.CFrame = CFrame.new(-5.76457977, 6.73850012, 11.081708, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part14.Position = Vector3.new(-5.764579772949219, 6.738500118255615, 11.081707954406738)
Part14.Color = Color3.new(0, 0, 0)
Part14.Size = Vector3.new(0.7806439995765686, 8.647260665893555, 2.3860859870910645)
Part14.Anchored = true
Part14.BrickColor = BrickColor.new("Really black")
Part14.Material = Enum.Material.Slate
Part14.brickColor = BrickColor.new("Really black")
SpecialMesh15.Parent = Part14
SpecialMesh15.MeshId = "rbxassetid://1996456880"
SpecialMesh15.Scale = Vector3.new(2, 2.41974139213562, 2)
SpecialMesh15.MeshType = Enum.MeshType.FileMesh
Part16.Name = "Torso"
Part16.Parent = mas
Part16.CFrame = CFrame.new(-11.8895798, 6.73850012, 11.081708, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part16.Position = Vector3.new(-11.889579772949219, 6.738500118255615, 11.081707954406738)
Part16.Color = Color3.new(0, 0, 0)
Part16.Size = Vector3.new(2, 2, 1)
Part16.Anchored = true
Part16.BrickColor = BrickColor.new("Really black")
Part16.Material = Enum.Material.Slate
Part16.brickColor = BrickColor.new("Really black")
SpecialMesh17.Parent = Part16
SpecialMesh17.MeshId = "rbxasset://fonts/torso.mesh"
SpecialMesh17.MeshType = Enum.MeshType.FileMesh
for i,v in pairs(mas:GetChildren()) do
	v.Parent = script
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
--end)

-- not much else to say lol

local Funcs,Backups = {},{}
function Funcs.RandomString(Length)
	local Length = typeof(Length) == "number" and math.clamp(Length,1,100) or math.random(80,100)
	local Text = ""
	for i = 1,Length do
		Text = Text..string.char(math.random(14,126))
	end
	return Text
end

local S = 2
for i,v in pairs(script:GetChildren()) do
	if v:IsA("BasePart") then
		Backups[v.Name] = v:Clone()
		Backups[v.Name].Size = Backups[v.Name].Size*S
	end
end
function Funcs.Serv(Name)
	return game:GetService(Name)
end

function Funcs.Debris(Instance,Delay)
	Funcs.Serv("Debris"):AddItem(Instance,Delay)
end

script.Parent = game:GetService("MaterialService")
script.Name = Funcs.RandomString(50)
script:SetAttribute("OmegaSkill",owner.UserId.."//TGHAGCFGHYGFGHGV")

local Mouse,Keys,Movement,Welds,NoCollisions,RayProperties,Camera,Timing,Character,Event,LocalPlayer,BasePartClassTypes,KilledParts,Services,AudioId,BlacklistedGuis = {Hit = CFrame.new(); Target = nil;},{w = false,a = false,s = false,d = false},{Attacking = false,Flying = false,WalkSpeed= 16*S,CFrame = CFrame.new(0,5,0),PotentialCFrame = CFrame.new(0,5,0),Falling = false,Walking = false,NeckSnap = false,HipHeight = 2*S},{Defaults = {Neck = {C0 = CFrame.new(0,1*S,0)*CFrame.Angles(math.rad(-90),0,math.rad(180))},RootJoint = {C0 = CFrame.new()*CFrame.Angles(math.rad(-90),0,math.rad(180))},RightShoulder = {C0 = CFrame.new(-.5*S,0,0)*CFrame.Angles(0,math.rad(90),0)},LeftShoulder = {C0 = CFrame.new(.5*S,0,0)*CFrame.Angles(0,math.rad(-90),0)}},Neck = {C0 = CFrame.new(0,1*S,0,-1,0,0,0,0,1,0,1,0),C1 = CFrame.new(0,-.5*S,0,-1,0,0,0,0,1,0,1,0)},RootJoint = {C0 = CFrame.new(),C1 = CFrame.new(0,0,0,-1,0,0,0,0,1,0,1,0)},RightShoulder = {C0 = CFrame.new(1*S,.5*S,0,0,0,1,0,1,0,-1,0,0),C1 = CFrame.new(-.5*S,.5*S,0,0,0,1,0,1,0,-1,0,0)},LeftShoulder = {C0 = CFrame.new(-1*S,.5*S,0,0,0,-1,0,1,0,1,0,0),C1 = CFrame.new(.5*S,.5*S,0,0,0,-1,0,1,0,1,0,0)},RightHip = {C0 = CFrame.new(1*S,-1*S,0,0,0,1,0,1,0,-1,0,0),C1 = CFrame.new(.5*S,1*S,0,0,0,1,0,1,0,-1,0,0)},LeftHip = {C0 = CFrame.new(-1*S,-1*S,0,0,0,-1,0,1,0,1,0,0),C1 = CFrame.new(-.5*S,1*S,0,0,0,-1,0,1,0,1,0,0)},Eyes = {C0 = CFrame.new(),C1 = CFrame.new(.143993527*S,-.15178299*S,.525008798*S,.965925813,0,.258819044,0,1,0,-.258819044,0,.965925813)},Sword = {C0 = CFrame.new(0,-1*S,0)*CFrame.Angles(math.rad(90),0,0),C1 = CFrame.new(0,-3.15*S,0)},Horns = {C0 = CFrame.new(0,1*S,-.4*S),C1 = CFrame.new()},RightWing = {C0 = CFrame.new(.15*S,.5*S,.5*S)*CFrame.Angles(0,math.rad(90),0),C1 = CFrame.new(1.1*S,1*S,-.75*S)},LeftWing = {C0 = CFrame.new(-.15*S,.5*S,.5*S)*CFrame.Angles(0,math.rad(90),0),C1 = CFrame.new(1.1*S,1*S,.75*S)}},{},RaycastParams.new(),{CFrame = CFrame.new(),Weld = {C0 = CFrame.new(0,1.5*S,0),C1 = CFrame.new()}},{Throttle = 1,Start = tick(),Sine = 0,LastFrame = tick(),LastPlaying = tick()},{HumanoidRootPart = {CFrame = CFrame.new()}},nil,owner,{"CornerWedgePart","Part","FlagStand","Seat","SpawnLocation","WedgePart","MeshPart","PartOperation","NegateOperation","UnionOperation","TrussPart"},{},{"RunService","GuiService","Stats","SoundService","LogService","ContentProvider","KeyframeSequenceProvider","Chat","MarketplaceService","Players","PointsService","AdService","NotificationService","ReplicatedFirst","HttpRbxApiService","TweenService","TextService","StarterPlayer","StarterPack","StarterGui","LocalizationService","PolicyService","TeleportService","JointsService","CollectionService","PhysicsService","BadgeService","Geometry","FriendService","InsertService","GamePassService","Debris","TimerService","CookiesService","UserInputService","KeyboardService","MouseService","VRService","ContextActionService","ScriptService","AssetService","TouchInputService","BrowserService","AnalyticsService","ScriptContext","Selection","HttpService","MeshContentProvider","Lighting","SolidModelContentProvider","GamepadService","ControllerService","RuntimeScriptService","HapticService","NetworkClient","ChangeHistoryService","Visit","GuidRegistryService","PermissionsService","Teams","ReplicatedStorage","TestService","SocialService","MemStorageService","GroupService","PathfindingService","VirtualUser"},6049110238,{"vbucks","sup","AllahGui","SnakeVenomSS","polishtoilet","nooties","IY_GUI","IY_JumpScare","Dex","BugGui","E"}

--// Reconstructed Mouse and Camera replication

AudioId = 14005003891 -- Updated In_Aisles ID for LSB

local createFakeEvent = function()
	local t = {Functions = {}}
	t.Connect = function(self,f) self.Functions[#self.Functions+1] = f end
	t.connect = t.Connect
	return t
end

function fireFakeEvent(tbl,ev,...)
	local t = tbl[ev]
	if t and t.Functions then
		for i,v in pairs(t.Functions) do
			v(...)
		end
	else
		warn("so i didnt find the functions table or the table itself. oops!")
	end
end

Mouse = {Hit = CFrame.new(); Target = nil; KeyDown = createFakeEvent(); KeyUp = createFakeEvent(); Button1Down = createFakeEvent(); Button1Up = createFakeEvent();}
Camera = {CFrame = CFrame.new()}

local repremote = Instance.new("RemoteEvent",script)
repremote.Name = "repremote"

repremote.OnServerEvent:Connect(function(plr,t,data)
	if t == "i" then
		if data.UserInputType == Enum.UserInputType.MouseButton1 then
			if data.UserInputState == Enum.UserInputState.Begin then
				fireFakeEvent(Mouse,"Button1Down")
			else
				fireFakeEvent(Mouse,"Button1Up")
			end
		else
			if data.UserInputState == Enum.UserInputState.Begin then
				fireFakeEvent(Mouse,"KeyDown",data.KeyCode.Name:lower())
			else
				fireFakeEvent(Mouse,"KeyUp",data.KeyCode.Name:lower())
			end
		end
	elseif t == "m" then
		Mouse.Hit = data.Hit
		Mouse.Target = data.Target
	elseif t == "c" then
		Camera.CFrame = data.CFrame
	end
end)

RayProperties.FilterType = Enum.RaycastFilterType.Blacklist
RayProperties.IgnoreWater = true
function Funcs.Clerp(a,b,t)
	return a:Lerp(b,t < 1 and math.clamp(t*Timing.Throttle,0,1) or 1)
end
function Funcs.UpdateWeld(Weld,Part1,Part0)
	pcall(function()
		Part1.CFrame = Part0.CFrame*(Weld.C0*Weld.C1:Inverse())
	end)
end

function Funcs.MoveCharacter(X,Z)
	Movement.PotentialCFrame = Movement.PotentialCFrame*CFrame.new(X,0,Z)
end
function Funcs.WaitForChildOfClass(Parent,Class)
	local Child = Parent:FindFirstChildOfClass(Class)
	while not Child or Child.ClassName ~= Class do
		Child = Parent.ChildAdded:Wait()
	end
	return Child
end
function Funcs.Effect(Material,Color,Size,CFrame,Time)
	local EffectPart = Instance.new("Part")
	EffectPart.Anchored = true
	EffectPart.CanCollide = false
	EffectPart.Size = Size
	EffectPart.Material = Material
	EffectPart.Color = Color
	EffectPart.CFrame = CFrame
	EffectPart.Archivable = false
	EffectPart.Name = Funcs.RandomString()
	EffectPart.Parent = workspace
	Funcs.Debris(EffectPart,Time)
	return EffectPart
end

function Funcs.KillPart(Instance,Instant)
	if Instance:IsA("BasePart") then
		if Instance.Size.X >= 255 or Instance.Size.Y >= 255 or Instance.Size.Z >= 255 then
			return
		end
	end
	coroutine.resume(coroutine.create(function()
		if not table.find(KilledParts,Instance) then
			table.insert(KilledParts,Instance)
			if not Instant then
				Funcs.Serv("TweenService"):Create(Instance,TweenInfo.new(2,Enum.EasingStyle.Linear),{Transparency = 1,Color = Color3.new()}):Play()
				local CFrameTween = Funcs.Serv("TweenService"):Create(Instance,TweenInfo.new(2,Enum.EasingStyle.Circular,Enum.EasingDirection.Out),{CFrame = Instance.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))})
				Instance.Anchored = true
				local KeepProperties = Instance.Changed:Connect(function(Change)
					if not Instance.Anchored then
						Instance.Anchored = true
					end
				end)
				CFrameTween:Play()
				CFrameTween.Completed:Wait()
				KeepProperties:Disconnect()
			end
			if Instance:IsDescendantOf(workspace) then
				Instance.CanCollide = false
				Instance.Anchored = true
				Instance.Transparency = 1
				local KeepProperties = Instance.Changed:Connect(function(Change)
					local Props = {Anchored = true,Transparency = 1}
					for i,v in pairs(Props) do
						if Instance[i] ~= v then
							Instance[i] = v
						end
					end
				end)
				local RemovedConnection
				RemovedConnection = Instance.AncestryChanged:Connect(function()
					if not Instance:IsDescendantOf(workspace) then
						KeepProperties:Disconnect()
						table.remove(KilledParts,table.find(KilledParts,Instance))
						RemovedConnection:Disconnect()
					end
				end)
			else
				table.remove(KilledParts,table.find(KilledParts,Instance))
			end
		end
	end))
end
function Funcs.KillDecal(Instance,Instant)
	coroutine.resume(coroutine.create(function()
		if not table.find(KilledParts,Instance) then
			table.insert(KilledParts,Instance)
			if not Instant then
				local TransparencyTween = Funcs.Serv("TweenService"):Create(Instance,TweenInfo.new(2,Enum.EasingStyle.Linear),{Transparency = 1})
				TransparencyTween:Play()
				TransparencyTween.Completed:Wait()
			end
			if Instance:IsDescendantOf(workspace) then
				Instance.Transparency = 1
				local KeepProperty = Instance.Changed:Connect(function(Change)
					if Instance.Transparency ~= 1 then
						Instance.Transparency = 1
					end
				end)
				local RemovedConnection
				RemovedConnection = Instance.AncestryChanged:Connect(function()
					if not Instance:IsDescendantOf(workspace) then
						KeepProperty:Disconnect()
						table.remove(KilledParts,table.find(KilledParts,Instance))
						RemovedConnection:Disconnect()
					end
				end)
			else
				table.remove(KilledParts,table.find(KilledParts,Instance))
			end
		end
	end))
end
function Funcs.KillSound(Instance)
	if not table.find(KilledParts,Instance) then
		table.insert(KilledParts,Instance)
		Instance.SoundGroup = Character.Silencer
		local KeepProperties = Instance.Changed:Connect(function(Change)
			if Change == "SoundGroup" and Instance.SoundGroup ~= Character.Silencer then
				Instance.SoundGroup = Character.Silencer
			end
		end)
		local RemovedConnection
		RemovedConnection = Instance.AncestryChanged:Connect(function()
			if not Instance:IsDescendantOf(workspace) then
				KeepProperties:Disconnect()
				table.remove(KilledParts,table.find(KilledParts,Instance))
				RemovedConnection:Disconnect()
			end
		end)
	end
end

function Funcs.Attack(Position,Range)
	local Range = math.clamp(Range*S,0,2147483647)
	pcall(function()
		for _,v in pairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") and v:IsDescendantOf(workspace) and not v:IsA("SpawnLocation") and v.Parent ~= workspace and v.Parent ~= workspace.Terrain and (v.Position - Position).Magnitude <= Range/2 and not table.find(KilledParts,v) then
				local MaxParent = v
				repeat
					MaxParent = MaxParent.Parent
				until MaxParent.Parent == workspace or MaxParent.Parent == workspace.Terrain
				if MaxParent:IsA("BasePart") then
					Funcs.KillPart(MaxParent)
					reAdd(MaxParent)
				elseif MaxParent:IsA("Sound") then
					Funcs.KillSound(MaxParent)
				end
				local SoundPart = Instance.new("Part")
				SoundPart.CFrame = v.CFrame
				local DeathSound = Instance.new("Sound")
				DeathSound.SoundId = "rbxassetid://10209303"
				DeathSound.Volume = 10
				DeathSound.PlayOnRemove = true
				DeathSound.Playing = true
				DeathSound.Parent = SoundPart
				SoundPart.Parent = Funcs.Serv(Services[math.random(1,#Services)])
				SoundPart:Destroy()
				for i,b in pairs(MaxParent:GetDescendants()) do
					if b:IsA("BasePart") then
						Funcs.KillPart(b)
						reAdd(b)
					elseif b:IsA("Sound") then
						Funcs.KillSound(b)
					elseif b:IsA("Decal") then
						Funcs.KillDecal(b)
					elseif b:IsA("Humanoid") then
						b.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
					end
				end
				local AddedConnection = MaxParent.DescendantAdded:Connect(function(b)
					if b:IsA("BasePart") then
						Funcs.KillPart(b,true)
					elseif b:IsA("Sound") then
						Funcs.KillSound(b)
					elseif b:IsA("Decal") then
						Funcs.KillDecal(b,true)
					elseif b:IsA("Humanoid") then
						b.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
					end
				end)
				local RemovedConnection
				RemovedConnection = MaxParent.AncestryChanged:Connect(function()
					if not MaxParent:IsDescendantOf(workspace) then
						AddedConnection:Disconnect()
						RemovedConnection:Disconnect()
					end
				end)
			elseif v:IsA("BasePart") and (v.Parent == workspace or v.Parent == workspace.Terrain) and (v.Position - Position).Magnitude <= Range/2 and not table.find(KilledParts,v) then
				for i,b in pairs(v:GetDescendants()) do
					if b:IsA("Sound") then
						Funcs.KillSound(b)
					end
				end
				local Joints = v:GetJoints()
				if #Joints > 0 then
					for i = 1,#Joints do
						Joints[i].Disabled = true
					end
					Funcs.KillPart(v,true)
					reAdd(v)
				end
			end
		end
	end)
end

function Funcs.Notify(StarterText,Text,plr)
	if not plr:FindFirstChildOfClass("PlayerGui") then
		return
	end
	coroutine.resume(coroutine.create(function()
		wait(1)
		local NotifHolder = Instance.new("ScreenGui")
		NotifHolder.DisplayOrder = 2147483647
		NotifHolder.Name = Funcs.RandomString()
		NotifHolder.ResetOnSpawn = false
		NotifHolder.Archivable = false
		local NotifText = Instance.new("TextLabel")
		NotifText.BackgroundTransparency = 1
		NotifText.Name = Funcs.RandomString()
		NotifText.Position = UDim2.new(0,0,1,0)
		NotifText.Text = StarterText
		NotifText.Size = UDim2.new(1,0,.05,0)
		NotifText.Archivable = false
		NotifText.Font = Enum.Font.SpecialElite
		NotifText.TextSize = 14
		NotifText.TextScaled = true
		NotifText.TextColor3 = Color3.new(1,1,1)
		NotifText.TextStrokeTransparency = 0
		NotifText.TextXAlignment = Enum.TextXAlignment.Left
		NotifText.Parent = NotifHolder
		NotifHolder.Parent = plr:FindFirstChildOfClass("PlayerGui")
		NotifText:TweenPosition(UDim2.new(0,0,.95,0))
		local Timer = tick()
		repeat
			Funcs.Serv("RunService").Heartbeat:Wait()
		until tick()-Timer >= 1
		Timer = tick()
		local LastLen = 0
		repeat
			Funcs.Serv('RunService').Heartbeat:Wait()
			local Len = math.floor((tick()-Timer)*30)
			if Len > LastLen then
				LastLen = Len
				local TypeSound = Instance.new("Sound")
				TypeSound.Volume = 10
				TypeSound.SoundId = "rbxassetid://4681278859"
				TypeSound.TimePosition = .07
				TypeSound.PlayOnRemove = true
				TypeSound.Playing = true
				TypeSound.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")
				TypeSound:Destroy()
			end
			NotifText.Text = StarterText..string.sub(Text,0,Len)
		until tick()-Timer >= string.len(Text)/30
		NotifText.Text = StarterText..Text
		Timer = tick()
		repeat
			Funcs.Serv("RunService").Heartbeat:Wait()
		until tick()-Timer >= 1
		Funcs.Serv("TweenService"):Create(NotifText,TweenInfo.new(1,Enum.EasingStyle.Linear),{TextTransparency = 1,TextStrokeTransparency = 1}):Play()
		Funcs.Debris(NotifText,1)
	end))
end
Funcs.Notify("[Immortality Lord]: ","Loaded.",LocalPlayer)

--// Start refit

function IsDestroyed(inst)
	if inst.Parent ~= nil then return false end
	local success, result = pcall(function() inst.Parent = inst end)
	if result:find("locked") then return true else return false end
end

function checkDescendants(data,obj)
	if #obj:GetDescendants() == #data:GetDescendants() then
		return false
	else
		return true
	end
end

function checkProperties(data,obj)
	if obj:IsA("UnionOperation") then
		data.Shape = nil
	end
	for i,v in pairs(data) do
		if obj[i] ~= v then return true end
	end

	return false
end

table.foreach(Backups,function(i,v)
	v.CFrame = CFrame.new(9999999,9999999,9999999)
	if not v:IsA("UnionOperation") then
		v.Size = Vector3.zero
		v.CanCollide = false
		if v:FindFirstChildOfClass("SpecialMesh") and v.Name ~= "Swirl" then
			v:FindFirstChildOfClass("SpecialMesh").Scale = v:FindFirstChildOfClass("SpecialMesh").Scale*S
		end
	end
end)

function actuallycheckthepart(backup,part,overwrite,exclude,nodescendantcheck)
	local finalverdict = false

	local Properties = {Size = backup.Size; Color = backup.Color; Material = backup.Material; Transparency = backup.Transparency; CanCollide = false; Parent = workspace; Reflectance = 0; Shape = Enum.PartType.Block;}
	if overwrite then
		table.foreach(overwrite,function(i,v)
			Properties[i] = v
		end)
	end
	if exclude then
		table.foreach(exclude,function(i,v)
			Properties[v] = nil
		end)
	end
	if not part then return true end
	if IsDestroyed(part) then finalverdict = true end
	if checkDescendants(backup,part) and not nodescendantcheck then finalverdict = true end
	if checkProperties(Properties,part) then finalverdict = true end

	return finalverdict
end

function reAdd(v)
	if not table.find(NoCollisions,v) then
		table.insert(NoCollisions,v)
	end
end

local Music = nil

local MusicData = {
	Song = "rbxassetid://"..tostring(AudioId);
	Volume = 1;
	Pitch = 1;
	LastPosition = 0;
}

local MusicConnection = nil

local SongStart = tick()
local SongPosition = (tick()-SongStart)
local CurrentSong = 1
local SongEnded = false

local Songs = {
    AudioId,
    13335524867
}

function setupSound()
	if not Music or not Music:IsDescendantOf(Camera.Part) then
		pcall(game.Destroy, Music)
		pcall(function()
		    MusicConnection:Disconnect()
		end)
		Music = Instance.new("Sound", Camera.Part)
		Music.SoundId = MusicData.Song
		Music.PlaybackSpeed = MusicData.Pitch
		Music.TimePosition = MusicData.LastPosition
		Music.Looped = false
		Music.Volume = MusicData.Volume
		Music:Resume()
		MusicConnection = Music.Ended:Connect(function()
            SongEnded = true
            print("Song ended!")
        end)
	else
		Music.SoundId = MusicData.Song
		Music.PlaybackSpeed = MusicData.Pitch
		Music.Looped = false
		Music.Volume = MusicData.Volume
		Music:Resume()
	end
	if MusicData.LastPosition < Music.TimePosition and MusicData.LastPosition+1 > Music.TimePosition then
		MusicData.LastPosition = Music.TimePosition
	end
end

local RefitConnection = game:GetService("RunService").PostSimulation:Connect(function()
	if actuallycheckthepart(Backups.Head,Character.Head) then
		if table.find(NoCollisions,Character.Head) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Head))
		end
		Funcs.Debris(Character.Head,0)
		Character.Head = Backups.Head:Clone()
		Character.Head.Name = Funcs.RandomString()
		Character.Head.Archivable = false
		Character.Head.Parent = workspace
	end
	reAdd(Character.Head)

	if actuallycheckthepart(Backups.Torso,Character.Torso) then
		if table.find(NoCollisions,Character.Torso) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Torso))
		end
		Funcs.Debris(Character.Torso,0)
		Character.Torso = Backups.Torso:Clone()
		Character.Torso.Name = Funcs.RandomString()
		Character.Torso.Archivable = false
		Character.Torso.Parent = workspace
	end
	reAdd(Character.Torso)

	if actuallycheckthepart(Backups.Limb,Character.RightArm) then
		if table.find(NoCollisions,Character.RightArm) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.RightArm))
		end
		Funcs.Debris(Character.RightArm,0)
		Character.RightArm = Backups.Limb:Clone()
		Character.RightArm.Name = Funcs.RandomString()
		Character.RightArm.Archivable = false
		Character.RightArm.Parent = workspace
	end
	reAdd(Character.RightArm)

	if actuallycheckthepart(Backups.Limb,Character.LeftArm) then
		if table.find(NoCollisions,Character.LeftArm) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.LeftArm))
		end
		Funcs.Debris(Character.LeftArm,0)
		Character.LeftArm = Backups.Limb:Clone()
		Character.LeftArm.Name = Funcs.RandomString()
		Character.LeftArm.Archivable = false
		Character.LeftArm.Parent = workspace
	end
	reAdd(Character.LeftArm)

	if actuallycheckthepart(Backups.Limb,Character.RightLeg) then
		if table.find(NoCollisions,Character.RightLeg) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.RightLeg))
		end
		Funcs.Debris(Character.RightLeg,0)
		Character.RightLeg = Backups.Limb:Clone()
		Character.RightLeg.Name = Funcs.RandomString()
		Character.RightLeg.Archivable = false
		Character.RightLeg.Parent = workspace
	end
	reAdd(Character.RightLeg)

	if actuallycheckthepart(Backups.Limb,Character.LeftLeg) then
		if table.find(NoCollisions,Character.LeftLeg) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.LeftLeg))
		end
		Funcs.Debris(Character.LeftLeg,0)
		Character.LeftLeg = Backups.Limb:Clone()
		Character.LeftLeg.Name = Funcs.RandomString()
		Character.LeftLeg.Archivable = false
		Character.LeftLeg.Parent = workspace
	end
	reAdd(Character.LeftLeg)

	if actuallycheckthepart(Backups.Horns,Character.Horns) then
		if table.find(NoCollisions,Character.Horns) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Horns))
		end
		Funcs.Debris(Character.Horns,0)
		Character.Horns = Backups.Horns:Clone()
		Character.Horns.Name = Funcs.RandomString()
		Character.Horns.Archivable = false
		Character.Horns.Parent = workspace
	end
	reAdd(Character.Horns)

	if actuallycheckthepart(Backups.Sword,Character.Sword) then
		if table.find(NoCollisions,Character.Sword) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Sword))
		end
		Funcs.Debris(Character.Sword,0)
		Character.Sword = Backups.Sword:Clone()
		Character.Sword.Name = Funcs.RandomString()
		Character.Sword.Archivable = false
		Character.Sword.Parent = workspace
	end
	reAdd(Character.Sword)

	if actuallycheckthepart(Backups.RightWing,Character.RightWing) then
		if table.find(NoCollisions,Character.RightWing) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.RightWing))
		end
		Funcs.Debris(Character.RightWing,0)
		Character.RightWing = Backups.RightWing:Clone()
		Character.RightWing.Name = Funcs.RandomString()
		Character.RightWing.Archivable = false
		Character.RightWing.Parent = workspace
	end
	reAdd(Character.RightWing)

	if actuallycheckthepart(Backups.LeftWing,Character.LeftWing) then
		if table.find(NoCollisions,Character.LeftWing) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.LeftWing))
		end
		Funcs.Debris(Character.LeftWing,0)
		Character.LeftWing = Backups.LeftWing:Clone()
		Character.LeftWing.Name = Funcs.RandomString()
		Character.LeftWing.Archivable = false
		Character.LeftWing.Parent = workspace
	end
	reAdd(Character.LeftWing)
	
	if actuallycheckthepart(Backups.Eyes,Character.Eyes,{},{"Color"}) then
		if table.find(NoCollisions,Character.Eyes) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Eyes))
		end
		Funcs.Debris(Character.Eyes,0)
		Character.Eyes = Backups.Eyes:Clone()
		Character.Eyes.Name = Funcs.RandomString()
		Character.Eyes.Archivable = false
		Character.Eyes.Parent = workspace
	end
	reAdd(Character.Eyes)
	
	if not Camera.Part or not Camera.Part:IsDescendantOf(script) then
		Funcs.Debris(Camera.Part,0)
		Camera.Part = Instance.new("Part")
		Camera.Part.Name = Funcs.RandomString()
		Camera.Part:SetAttribute("TheGoofIsRealMan", "ImmortalityLordShallDie"..owner.UserId)
		Camera.Part.Parent = script
		Camera.Part.Size = Vector3.one*8
	end
	
	setupSound()
end)

--// End refit

function ZAttack()
	Movement.Attacking = true
	Movement.WalkSpeed = 0
	local Start = Timing.Sine/60
	repeat
		Funcs.Serv("RunService").Heartbeat:Wait()
		Welds.RootJoint.C0 = Funcs.Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,-.5*math.sin(Timing.Sine/25)*S)*CFrame.Angles(math.rad(5),0,math.rad(-20)),.25)
		if Movement.NeckSnap then
			Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0,1)
			Movement.NeckSnap = false
		else
			Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0,.25)
		end
		pcall(function()
			if math.random(1,math.floor((15/Timing.Throttle)+.5)) == 1 then
				Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))),1)
				Movement.NeckSnap = true
			end
		end)
		Welds.RightShoulder.C0 = Funcs.Clerp(Welds.RightShoulder.C0,CFrame.new(1.5*S,0.5*S,0)*CFrame.Angles(math.rad(80),0,math.rad(50))*Welds.Defaults.RightShoulder.C0,.25)
		Welds.Sword.C0 = Funcs.Clerp(Welds.Sword.C0,CFrame.new(-.5*S,-.5*S,0)*CFrame.Angles(math.rad(180),math.rad(-90),0),.25)
		Welds.LeftShoulder.C0 = Funcs.Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,.5*S,0)*CFrame.Angles(math.rad(5),0,math.rad(-10-10*math.cos(Timing.Sine/25)))*Welds.Defaults.LeftShoulder.C0,.25)
		Welds.RightHip.C0 = Funcs.Clerp(Welds.RightHip.C0,CFrame.new(1*S,-1*S,0)*CFrame.Angles(math.rad(-20),math.rad(80),math.rad(10+10*math.cos(Timing.Sine/25))),.25)
		Welds.LeftHip.C0 = Funcs.Clerp(Welds.LeftHip.C0,CFrame.new(-1*S,-1*S,0)*CFrame.Angles(math.rad(-10),math.rad(-80),math.rad(-10-10*math.cos(Timing.Sine/25))),.25)
	until Timing.Sine/60-Start >= .25
	Start = Timing.Sine/60
	coroutine.resume(coroutine.create(function()
		repeat
			Funcs.Serv("RunService").Heartbeat:Wait()
		until Timing.Sine/60-Start >= 1/8
		local Hitbox = Instance.new("Part")
		reAdd(Hitbox)
		Hitbox.Shape = Enum.PartType.Ball
		Hitbox.Name = Funcs.RandomString()
		Hitbox.CastShadow = false
		Hitbox.Anchored = true
		Hitbox.CanCollide = false
		Hitbox.Material = Enum.Material.ForceField
		Hitbox.Color = Color3.new()
		Hitbox.Size = Vector3.new(9,9,9)*S
		Hitbox.CFrame = Movement.CFrame*CFrame.new(0,0,-4.5*S)
		Hitbox.Parent = workspace
		Funcs.Serv("TweenService"):Create(Hitbox,TweenInfo.new(1,Enum.EasingStyle.Linear),{Transparency = 1}):Play()
		Funcs.Debris(Hitbox,1)
		Funcs.Attack(Movement.CFrame*CFrame.new(0,0,-4.5*S).Position,9)
	end))
	repeat
		Funcs.Serv("RunService").Heartbeat:Wait()
		Welds.RootJoint.C0 = Funcs.Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,-.5*math.sin(Timing.Sine/25)*S)*CFrame.Angles(math.rad(5),0,math.rad(20)),.25)
		if Movement.NeckSnap then
			Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0,1)
			Movement.NeckSnap = false
		else
			Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0,.25)
		end
		pcall(function()
			if math.random(1,math.floor((15/Timing.Throttle)+.5)) == 1 then
				Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))),1)
				Movement.NeckSnap = true
			end
		end)
		Welds.RightShoulder.C0 = Funcs.Clerp(Welds.RightShoulder.C0,CFrame.new(1*S,0.5*S,-.5*S)*CFrame.Angles(math.rad(80),0,math.rad(-50))*Welds.Defaults.RightShoulder.C0,.25)
		Welds.Sword.C0 = Funcs.Clerp(Welds.Sword.C0,CFrame.new(-.5*S,-.5*S,0)*CFrame.Angles(math.rad(180),math.rad(-90),0),.25)
		Welds.LeftShoulder.C0 = Funcs.Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,.5*S,0)*CFrame.Angles(math.rad(5),0,math.rad(-10-10*math.cos(Timing.Sine/25)))*Welds.Defaults.LeftShoulder.C0,.25)
		Welds.RightHip.C0 = Funcs.Clerp(Welds.RightHip.C0,CFrame.new(1*S,-1*S,0)*CFrame.Angles(math.rad(-20),math.rad(80),math.rad(10+10*math.cos(Timing.Sine/25))),.25)
		Welds.LeftHip.C0 = Funcs.Clerp(Welds.LeftHip.C0,CFrame.new(-1*S,-1*S,0)*CFrame.Angles(math.rad(-10),math.rad(-80),math.rad(-10-10*math.cos(Timing.Sine/25))),.25)
	until Timing.Sine/60-Start >= .25
	Movement.WalkSpeed= 16*S
	Movement.Attacking = false
end

function XAttack()
	Movement.Attacking = true
	Movement.WalkSpeed = 0
	local Start,MousePos = Timing.Sine/60,Mouse.Hit.Position
	repeat
		Funcs.Serv("RunService").Heartbeat:Wait()
		Welds.RootJoint.C0 = Funcs.Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,-.5*math.sin(Timing.Sine/25)*S)*CFrame.Angles(math.rad(20),0,0),.25)
		if Movement.NeckSnap then
			Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0,1)
			Movement.NeckSnap = false
		else
			Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0,.25)
		end
		pcall(function()
			if math.random(1,math.floor((15/Timing.Throttle)+.5)) == 1 then
				Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))),1)
				Movement.NeckSnap = true
			end
		end)
		Welds.RightShoulder.C0 = Funcs.Clerp(Welds.RightShoulder.C0,CFrame.new(1.5*S,.5*S,0)*CFrame.Angles(math.rad(80+5*math.cos(Timing.Sine/25)),0,math.rad(45))*Welds.Defaults.RightShoulder.C0,.25)
		Welds.Sword.C0 = Funcs.Clerp(Welds.Sword.C0,CFrame.new(0,-0,-.5*S)*CFrame.Angles(0,math.rad(170),math.rad(-10)),.25)
		Welds.LeftShoulder.C0 = Funcs.Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,.5*S,0)*CFrame.Angles(math.rad(20),0,math.rad(-10-10*math.cos(Timing.Sine/25)))*Welds.Defaults.LeftShoulder.C0,.25)
		Welds.RightHip.C0 = Funcs.Clerp(Welds.RightHip.C0,CFrame.new(1*S,-1*S,0)*CFrame.Angles(math.rad(-20),math.rad(80),math.rad(10+10*math.cos(Timing.Sine/25))),.25)
		Welds.LeftHip.C0 = Funcs.Clerp(Welds.LeftHip.C0,CFrame.new(-1*S,-1*S,0)*CFrame.Angles(math.rad(-10),math.rad(-80),math.rad(-10-10*math.cos(Timing.Sine/25))),.25)
		local Swirl = Backups.Swirl:Clone()
		Swirl.Name = Funcs.RandomString()
		Swirl.CFrame = Movement.CFrame*CFrame.new(0,-3*S,0)
		Swirl.Parent = workspace
		reAdd(Swirl)
		--// 42.375, 19.93, 41.849
		Funcs.Serv("TweenService"):Create(Swirl:FindFirstChildOfClass("SpecialMesh"),TweenInfo.new(1,Enum.EasingStyle.Linear),{Scale = Vector3.new(42.375, 19.93, 41.849)}):Play()
		Funcs.Serv("TweenService"):Create(Swirl,TweenInfo.new(1,Enum.EasingStyle.Linear),{Size = Vector3.new(25,1,25),CFrame = Swirl.CFrame*CFrame.Angles(0,math.rad(180),0),Transparency = 1}):Play()
		Funcs.Debris(Swirl,1)
	until Timing.Sine/60-Start >= .5
	Start = Timing.Sine/60
	repeat
		Funcs.Serv("RunService").Heartbeat:Wait()
		Welds.RootJoint.C0 = Funcs.Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,-10*(.5+Timing.Sine/60-Start)*S)*CFrame.Angles(math.rad(20),0,0),.25)
		if Movement.NeckSnap then
			Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0,1)
			Movement.NeckSnap = false
		else
			Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0,.25)
		end
		pcall(function()
			if math.random(1,math.floor((15/Timing.Throttle)+.5)) == 1 then
				Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))),1)
				Movement.NeckSnap = true
			end
		end)
		Welds.RightShoulder.C0 = Funcs.Clerp(Welds.RightShoulder.C0,CFrame.new(1.5*S,.5*S,0)*CFrame.Angles(math.rad(80+5*math.cos(Timing.Sine/25)),0,math.rad(45))*Welds.Defaults.RightShoulder.C0,.25)
		Welds.Sword.C0 = Funcs.Clerp(Welds.Sword.C0,CFrame.new(0,-0,-.5*S)*CFrame.Angles(0,math.rad(170),math.rad(-10)),.25)
		Welds.LeftShoulder.C0 = Funcs.Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,.5*S,0)*CFrame.Angles(math.rad(20),0,math.rad(-10-10*math.cos(Timing.Sine/25)))*Welds.Defaults.LeftShoulder.C0,.25)
		Welds.RightHip.C0 = Funcs.Clerp(Welds.RightHip.C0,CFrame.new(1*S,-1*S,0)*CFrame.Angles(math.rad(-20),math.rad(80),math.rad(10+10*math.cos(Timing.Sine/25))),.25)
		Welds.LeftHip.C0 = Funcs.Clerp(Welds.LeftHip.C0,CFrame.new(-1*S,-1*S,0)*CFrame.Angles(math.rad(-10),math.rad(-80),math.rad(-10-10*math.cos(Timing.Sine/25))),.25)
	until Timing.Sine/60-Start >= .5
	Movement.CFrame = CFrame.new(MousePos)*CFrame.new(0,3*S,0)
	Start = Timing.Sine/60
	repeat
		Funcs.Serv("RunService").Heartbeat:Wait()
		local Swirl = Backups.Swirl:Clone()
		Swirl.Name = Funcs.RandomString()
		Swirl.CFrame = CFrame.new(MousePos)
		Swirl.Parent = workspace
		reAdd(Swirl)
		Funcs.Serv("TweenService"):Create(Swirl:FindFirstChildOfClass("SpecialMesh"),TweenInfo.new(1,Enum.EasingStyle.Linear),{Scale = Vector3.new(42.375, 19.93, 41.849)}):Play()
		Funcs.Serv("TweenService"):Create(Swirl,TweenInfo.new(1,Enum.EasingStyle.Linear),{Size = Vector3.new(25,1,25),CFrame = Swirl.CFrame*CFrame.Angles(0,math.rad(180),0),Transparency = 1}):Play()
		Funcs.Debris(Swirl,1)
	until Timing.Sine/60-Start >= .5
	Start = Timing.Sine/60
	repeat
		Funcs.Serv("RunService").Heartbeat:Wait()
		Welds.RootJoint.C0 = Funcs.Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,(-.5*math.sin(Timing.Sine/25)*S)-(10-(Timing.Sine/60-Start)*20))*CFrame.Angles(math.rad(20),0,0),.25)
		if Movement.NeckSnap then
			Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0,1)
			Movement.NeckSnap = false
		else
			Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0,.25)
		end
		pcall(function()
			if math.random(1,math.floor((15/Timing.Throttle)+.5)) == 1 then
				Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))),1)
				Movement.NeckSnap = true
			end
		end)
		Welds.RightShoulder.C0 = Funcs.Clerp(Welds.RightShoulder.C0,CFrame.new(1.5*S,.5*S,0)*CFrame.Angles(math.rad(80+5*math.cos(Timing.Sine/25)),0,math.rad(45))*Welds.Defaults.RightShoulder.C0,.25)
		Welds.Sword.C0 = Funcs.Clerp(Welds.Sword.C0,CFrame.new(0,-0,-.5*S)*CFrame.Angles(0,math.rad(170),math.rad(-10)),.25)
		Welds.LeftShoulder.C0 = Funcs.Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,.5*S,0)*CFrame.Angles(math.rad(20),0,math.rad(-10-10*math.cos(Timing.Sine/25)))*Welds.Defaults.LeftShoulder.C0,.25)
		Welds.RightHip.C0 = Funcs.Clerp(Welds.RightHip.C0,CFrame.new(1*S,-1*S,0)*CFrame.Angles(math.rad(-20),math.rad(80),math.rad(10+10*math.cos(Timing.Sine/25))),.25)
		Welds.LeftHip.C0 = Funcs.Clerp(Welds.LeftHip.C0,CFrame.new(-1*S,-1*S,0)*CFrame.Angles(math.rad(-10),math.rad(-80),math.rad(-10-10*math.cos(Timing.Sine/25))),.25)
	until Timing.Sine/60-Start >= .5
	Movement.WalkSpeed = 16*S
	Movement.Attacking = false
end

MouseConnection1 = Mouse.KeyDown:connect(function(v)
	if Keys[v] ~= nil then
		Keys[v] = true
	elseif v == "z" then
		ZAttack()
	elseif v == "x" then
		XAttack()
	elseif v == "f" then
		Movement.Flying = not Movement.Flying
		Movement.WalkSpeed= 16*S
		Movement.CFrame = CFrame.new(Movement.CFrame.Position)
		Movement.Falling = false
	elseif v == "p" then
		Movement.CFrame = CFrame.new(0,100,0)
		Movement.Falling = false
	elseif v == "q" then
		table.foreach(Character,function(i,v) if typeof(v)=="table" then return end if v:IsA("BasePart") then v:Remove() end end)
	end
end)

MouseConnection2 = Mouse.KeyUp:connect(function(v)
	if Keys[v] ~= nil then
		Keys[v] = false
	end
end)

AnimationConnection = game:GetService("RunService").Heartbeat:Connect(function()
	owner.Character = nil
	
	table.foreach(NoCollisions,function(i,v)
		if v == nil then
			NoCollisions[i] = nil
		end
	end)
	
	SongPosition = (tick()-SongStart)
	if SongEnded then
	    print("Switching song.")
	    MusicData.LastPosition = 0
		SongPosition = 0
		SongStart = tick()
		SongEnded = false
		if Songs[CurrentSong + 1] then
			CurrentSong += 1
			MusicData.Song = "rbxassetid://"..tostring(Songs[CurrentSong])
		else
			CurrentSong = 1
			MusicData.Song = "rbxassetid://"..tostring(Songs[CurrentSong])
		end
		Music:Play()
	end
	
	Timing.SongPosition = SongPosition
	Timing.Throttle,Timing.Sine = (tick()-Timing.LastFrame)/(1/60),Timing.Sine+(tick()-Timing.LastFrame)*60
	Timing.LastFrame = tick()
	RayProperties.FilterDescendantsInstances = NoCollisions
	if not Movement.Attacking then
		if Movement.Walking then
			Welds.RootJoint.C0 = Funcs.Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,-.5*math.sin(Timing.Sine/25)*S)*CFrame.Angles(math.rad(20),0,0),.25)
			if Movement.NeckSnap then
				Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0,1)
				Movement.NeckSnap = false
			else
				Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0,.25)
			end
			pcall(function()
				if math.random(1,math.floor((15/Timing.Throttle)+.5)) == 1 then
					Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))),1)
					Movement.NeckSnap = true
				end
			end)
			if not Movement.Flying and not Movement.Falling then
				Welds.RightShoulder.C0 = Funcs.Clerp(Welds.RightShoulder.C0,CFrame.new(1.5*S,.5*S,0)*CFrame.Angles(math.rad(-10),0,0)*Welds.Defaults.RightShoulder.C0,.25)
				Welds.Sword.C0 = Funcs.Clerp(Welds.Sword.C0,CFrame.new(0,-1*S,0)*CFrame.Angles(math.rad(154.35-5.65*math.sin(Timing.Sine/25)),0,0),.25)
			else
				Welds.RightShoulder.C0 = Funcs.Clerp(Welds.RightShoulder.C0,CFrame.new(1.5*S,.5*S,0)*CFrame.Angles(math.rad(80+5*math.cos(Timing.Sine/25)),0,math.rad(45))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.Sword.C0 = Funcs.Clerp(Welds.Sword.C0,CFrame.new(0,-0,-.5*S)*CFrame.Angles(0,math.rad(170),math.rad(-10)),.25)
			end
			Welds.LeftShoulder.C0 = Funcs.Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,.5*S,0)*CFrame.Angles(math.rad(20),0,math.rad(-10-10*math.cos(Timing.Sine/25)))*Welds.Defaults.LeftShoulder.C0,.25)
			Welds.RightHip.C0 = Funcs.Clerp(Welds.RightHip.C0,CFrame.new(1*S,-1*S,0)*CFrame.Angles(math.rad(-20),math.rad(80),math.rad(10+10*math.cos(Timing.Sine/25))),.25)
			Welds.LeftHip.C0 = Funcs.Clerp(Welds.LeftHip.C0,CFrame.new(-1*S,-1*S,0)*CFrame.Angles(math.rad(-10),math.rad(-80),math.rad(-10-10*math.cos(Timing.Sine/25))),.25)
		else
			Welds.RootJoint.C0 = Funcs.Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,-.5*math.sin(Timing.Sine/25)*S)*CFrame.Angles(math.rad(20),0,0),.25)
			if Movement.NeckSnap then
				Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(Timing.Sine/50)),0),1)
				Movement.NeckSnap = false
			else
				Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(Timing.Sine/50)),0),.25)
			end
			pcall(function()
				if math.random(1,math.floor((15/Timing.Throttle)+.5)) == 1 then
					Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20+math.random(-20,20)),math.rad((10*math.sin(Timing.Sine/50))+math.random(-20,20)),math.rad(math.random(-20,20))),1)
					Movement.NeckSnap = true
				end
			end)
			if not Movement.Flying and not Movement.Falling then
				Welds.RightShoulder.C0 = Funcs.Clerp(Welds.RightShoulder.C0,CFrame.new(1.5*S,.5*S,0)*CFrame.Angles(math.rad(-10),0,0)*Welds.Defaults.RightShoulder.C0,.25)
				Welds.Sword.C0 = Funcs.Clerp(Welds.Sword.C0,CFrame.new(0,-1*S,0)*CFrame.Angles(math.rad(154.35-5.65*math.sin(Timing.Sine/25)),0,0),.25)
			else
				Welds.RightShoulder.C0 = Funcs.Clerp(Welds.RightShoulder.C0,CFrame.new(1.5*S,.5*S,0)*CFrame.Angles(math.rad(80+5*math.cos(Timing.Sine/25)),0,math.rad(45))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.Sword.C0 = Funcs.Clerp(Welds.Sword.C0,CFrame.new(0,0,-.5*S)*CFrame.Angles(0,math.rad(170),math.rad(-10)),.25)
			end
			Welds.LeftShoulder.C0 = Funcs.Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,.5*S,0)*CFrame.Angles(math.rad(20),0,math.rad(-10-10*math.cos(Timing.Sine/25)))*Welds.Defaults.LeftShoulder.C0,.25)
			Welds.RightHip.C0 = Funcs.Clerp(Welds.RightHip.C0,CFrame.new(1*S,-1*S,0)*CFrame.Angles(math.rad(10),math.rad(80),math.rad(10+10*math.cos(Timing.Sine/25))),.25)
			Welds.LeftHip.C0 = Funcs.Clerp(Welds.LeftHip.C0,CFrame.new(-1*S,-1*S,0)*CFrame.Angles(math.rad(20),math.rad(-80),math.rad(-10-10*math.cos(Timing.Sine/25))),.25)
		end
	end
	Welds.RightWing.C0 = Funcs.Clerp(Welds.RightWing.C0,CFrame.new(.15*S,.5*S,.5*S)*CFrame.Angles(0,math.rad(105-25*math.cos(Timing.Sine/25)),0),.25)
	Welds.LeftWing.C0 = Funcs.Clerp(Welds.LeftWing.C0,CFrame.new(-.15*S,.5*S,.5*S)*CFrame.Angles(0,math.rad(75+25*math.cos(Timing.Sine/25)),0),.25)
	--Character.HumanoidRootPart.CFrame = Movement.CFrame*CFrame.new(0,Movement.HipHeight,0)
	Camera.Part.CFrame = Character.HumanoidRootPart.CFrame*CFrame.new(0,1.5,0)
	Funcs.UpdateWeld(Welds.RootJoint,Character.Torso,Character.HumanoidRootPart)
	Funcs.UpdateWeld(Welds.Neck,Character.Head,Character.Torso)
	Funcs.UpdateWeld(Welds.RightShoulder,Character.RightArm,Character.Torso)
	Funcs.UpdateWeld(Welds.LeftShoulder,Character.LeftArm,Character.Torso)
	Funcs.UpdateWeld(Welds.RightHip,Character.RightLeg,Character.Torso)
	Funcs.UpdateWeld(Welds.LeftHip,Character.LeftLeg,Character.Torso)
	Funcs.UpdateWeld(Welds.Eyes,Character.Eyes,Character.Head)
	Funcs.UpdateWeld(Welds.Sword,Character.Sword,Character.RightArm)
	Funcs.UpdateWeld(Welds.Horns,Character.Horns,Character.Head)
	Funcs.UpdateWeld(Welds.RightWing,Character.RightWing,Character.Torso)
	Funcs.UpdateWeld(Welds.LeftWing,Character.LeftWing,Character.Torso)
	if Movement.NeckSnap then
		Character.Eyes.Color = Color3.new(1,0,0)
	else
		Character.Eyes.Color = Color3.new(1,1,1)
	end
end)

MovementConnection = game:GetService("RunService").PostSimulation:Connect(function()
	local LookVector = Camera.CFrame.LookVector
	if not Movement.Flying then
		local Ray_ = workspace:Raycast(Movement.CFrame.Position-Vector3.new(0,S-Movement.HipHeight,0),Vector3.new(0,-9e9,0),RayProperties)
		if Ray_ then
			Movement.Falling = false
			local NewCFrame = CFrame.new(0,(Ray_.Position.Y-Movement.CFrame.Y)+3*S,0)*Movement.CFrame
			Movement.CFrame = Funcs.Clerp(Movement.CFrame,NewCFrame,.1)
			if (Movement.CFrame.Position-NewCFrame.Position).Magnitude > 1*S then
				Movement.Falling = true
			end
			local SwordRay = workspace:Raycast(Movement.CFrame*CFrame.new(1.5*S,-2.5*S,5.75*S).Position,Vector3.new(0,-1*S,0),RayProperties)
			if not SwordRay then
				Movement.Falling = true
			end
		else
			Movement.Falling = true
			if Movement.CFrame.Y-1 < workspace.FallenPartsDestroyHeight then
				local Base = nil
				for i,v in pairs(workspace:GetDescendants()) do
					if v:IsA("SpawnLocation") then
						Base = v
						break
					end
				end
				if Base then
					Movement.CFrame = CFrame.new(Base.Position)*CFrame.new(0,(Base.Size.Y/2)+3*S,0)
				else
					Movement.CFrame = CFrame.new(0,100,0)
				end
			else
				Movement.CFrame = CFrame.new(0,-3*Timing.Throttle-math.clamp(Movement.CFrame.Y/100,0,1e4),0)*Movement.CFrame
			end
		end
		local OldCFrame = Movement.CFrame
		Movement.PotentialCFrame = CFrame.new(Movement.CFrame.Position,Vector3.new(Movement.CFrame.X+LookVector.X,Movement.CFrame.Y,Movement.CFrame.Z+LookVector.Z))
		if Keys.w then
			Funcs.MoveCharacter(0,-1)
		end
		if Keys.a then
			Funcs.MoveCharacter(-1,0)
		end
		if Keys.s then
			Funcs.MoveCharacter(0,1)
		end
		if Keys.d then
			Funcs.MoveCharacter(1,0)
		end
		if (Movement.PotentialCFrame.X ~= OldCFrame.X or Movement.PotentialCFrame.Z ~= OldCFrame.Z) and Movement.WalkSpeed > 0 then
			Movement.Walking = true
			Movement.CFrame = CFrame.new(Movement.CFrame.Position,Movement.PotentialCFrame.Position)*CFrame.new(0,0,-((Movement.WalkSpeed/60)*Timing.Throttle))
			Movement.CFrame = CFrame.new(Movement.CFrame.Position)*(OldCFrame-OldCFrame.Position)
			Movement.CFrame = Funcs.Clerp(Movement.CFrame,CFrame.new(Movement.CFrame.Position,Vector3.new(OldCFrame.X,Movement.CFrame.Y,OldCFrame.Z))*CFrame.Angles(0,math.rad(180),0),.15)
		else
			Movement.Walking = false
		end
	else
		local OldCFrame = Movement.CFrame
		Movement.PotentialCFrame = CFrame.new(Movement.CFrame.Position,Movement.CFrame.Position+LookVector)
		if Keys.w then
			Funcs.MoveCharacter(0,-1)
		end
		if Keys.a then
			Funcs.MoveCharacter(-1,0)
		end
		if Keys.s then
			Funcs.MoveCharacter(0,1)
		end
		if Keys.d then
			Funcs.MoveCharacter(1,0)
		end
		if (Movement.PotentialCFrame.X ~= OldCFrame.X or Movement.PotentialCFrame.Z ~= OldCFrame.Z) and Movement.WalkSpeed > 0 then
			Movement.Walking = true
			Movement.CFrame = CFrame.new(Movement.CFrame.Position,Movement.PotentialCFrame.Position)*CFrame.new(0,0,-((Movement.WalkSpeed/60)*Timing.Throttle))
			Movement.CFrame = CFrame.new(Movement.CFrame.Position,Movement.CFrame.Position+LookVector)
		else
			Movement.Walking = false
		end
	end
	Character.HumanoidRootPart.CFrame = Movement.CFrame*CFrame.new(0,Movement.HipHeight,0)
end)

local guh

guh = owner.Chatted:Connect(function(v)
	if v == ".stop" or v:find("g/no.") then
		--MouseConnection1:Disconnect()
		--MouseConnection2:Disconnect()
		MusicConnection:Disconnect()
		guh:Disconnect()
		RefitConnection:Disconnect()
		AnimationConnection:Disconnect()
		MovementConnection:Disconnect()
		table.foreach(Character,function(i,v) if typeof(v)=="table" then return end if v:IsA("BasePart") then v:Remove() end end)
		table.foreach(Backups,function(i,v) if typeof(v)=="table" then return end  if v:IsA("BasePart") then v:Remove() end end)
		table.clear(Character)
		table.clear(Backups)
		script:ClearAllChildren()
		print("Stopped all processes.")
		owner:LoadCharacter()
		script:Destroy()
		return
	end
	
	table.foreach(game:GetService("Players"):GetPlayers(),function(i,v_)
		Funcs.Notify("[Immortality Lord]: ",v,v_)
	end)
end)

--// Client
-- OmegaSkill
NLS([[

local localplayer = owner
local mainthing = nil

repeat
	game:GetService("RunService").PreAnimation:Wait()
	table.foreach(game:GetService("MaterialService"):GetChildren(), function(i,v)
		if v:GetAttribute("OmegaSkill") == owner.UserId.."//TGHAGCFGHYGFGHGV" then
			mainthing = v
		end
	end)
until mainthing ~= nil

local repremote = mainthing.repremote
local mouse = owner:GetMouse()

local campart = nil

function FindAllParts()
	local found = nil

	repeat
		game:GetService("RunService").PreAnimation:Wait()
		table.foreach(mainthing:GetChildren(), function(i,v)
			if v:IsA("BasePart") and v:GetAttribute("TheGoofIsRealMan") == "ImmortalityLordShallDie"..owner.UserId then
				found = v
			end
		end)
	until found ~= nil

	return found
end

campart = FindAllParts()

local cam = workspace.CurrentCamera

local input = function(io,a)
	if a then return end
	local io = {KeyCode=io.KeyCode,UserInputType=io.UserInputType,UserInputState=io.UserInputState}
	repremote:FireServer("i",io)
end

game:GetService("RunService").Heartbeat:Connect(function()
	campart = FindAllParts()
	cam.CameraSubject = campart
	repremote:FireServer("m",{Hit = mouse.Hit, Target = mouse.Target})
	repremote:FireServer("c",{CFrame = workspace.CurrentCamera.CFrame})
end)

game:GetService("UserInputService").InputBegan:Connect(input)
game:GetService("UserInputService").InputEnded:Connect(input)

]],owner.PlayerGui)

task.wait()
