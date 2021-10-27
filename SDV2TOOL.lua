--https://github.com/Mokiros/roblox-FE-compatibility
if game:GetService("RunService"):IsClient() then error("Script must be server-side in order to work; use h/ and not hl/") end
local Player,game,owner = owner,game
local RealPlayer = Player
do
	print("FE Compatibility code V2 by Mokiros")
	local RealPlayer = RealPlayer
	script.Parent = RealPlayer.Character

	--Fake event to make stuff like Mouse.KeyDown work
	local Disconnect_Function = function(this)
		this[1].Functions[this[2]] = nil
	end
	local Disconnect_Metatable = {__index={disconnect=Disconnect_Function,Disconnect=Disconnect_Function}}
	local FakeEvent_Metatable = {__index={
		Connect = function(this,f)
			local i = tostring(math.random(0,10000))
			while this.Functions[i] do
				i = tostring(math.random(0,10000))
			end
			this.Functions[i] = f
			return setmetatable({this,i},Disconnect_Metatable)
		end
	}}
	FakeEvent_Metatable.__index.connect = FakeEvent_Metatable.__index.Connect
	local function fakeEvent()
		return setmetatable({Functions={}},FakeEvent_Metatable)
	end

	--Creating fake input objects with fake variables
    local FakeMouse = {Hit=CFrame.new(),KeyUp=fakeEvent(),KeyDown=fakeEvent(),Button1Up=fakeEvent(),Button1Down=fakeEvent(),Button2Up=fakeEvent(),Button2Down=fakeEvent()}
    FakeMouse.keyUp = FakeMouse.KeyUp
    FakeMouse.keyDown = FakeMouse.KeyDown
	local UIS = {InputBegan=fakeEvent(),InputEnded=fakeEvent()}
	local CAS = {Actions={},BindAction=function(self,name,fun,touch,...)
		CAS.Actions[name] = fun and {Name=name,Function=fun,Keys={...}} or nil
	end}
	--Merged 2 functions into one by checking amount of arguments
	CAS.UnbindAction = CAS.BindAction

	--This function will trigger the events that have been :Connect()'ed
	local function TriggerEvent(self,ev,...)
		for _,f in pairs(self[ev].Functions) do
			f(...)
		end
	end
	FakeMouse.TriggerEvent = TriggerEvent
	UIS.TriggerEvent = TriggerEvent

	--Client communication
	local Event = Instance.new("RemoteEvent")
	Event.Name = "UserInput_Event"
	Event.OnServerEvent:Connect(function(plr,io)
	    if plr~=RealPlayer then return end
		FakeMouse.Target = io.Target
		FakeMouse.Hit = io.Hit
		if not io.isMouse then
			local b = io.UserInputState == Enum.UserInputState.Begin
			if io.UserInputType == Enum.UserInputType.MouseButton1 then
				return FakeMouse:TriggerEvent(b and "Button1Down" or "Button1Up")
			end
			if io.UserInputType == Enum.UserInputType.MouseButton2 then
				return FakeMouse:TriggerEvent(b and "Button2Down" or "Button2Up")
			end
			for _,t in pairs(CAS.Actions) do
				for _,k in pairs(t.Keys) do
					if k==io.KeyCode then
						t.Function(t.Name,io.UserInputState,io)
					end
				end
			end
			FakeMouse:TriggerEvent(b and "KeyDown" or "KeyUp",io.KeyCode.Name:lower())
			UIS:TriggerEvent(b and "InputBegan" or "InputEnded",io,false)
	    end
	end)
	Event.Parent = NLS([==[local Event = script:WaitForChild("UserInput_Event")
	local Mouse = owner:GetMouse()
	local UIS = game:GetService("UserInputService")
	local input = function(io,RobloxHandled)
		if RobloxHandled then return end
		--Since InputObject is a client-side instance, we create and pass table instead
		Event:FireServer({KeyCode=io.KeyCode,UserInputType=io.UserInputType,UserInputState=io.UserInputState,Hit=Mouse.Hit,Target=Mouse.Target})
	end
	UIS.InputBegan:Connect(input)
	UIS.InputEnded:Connect(input)

	local h,t
	--Give the server mouse data every second frame, but only if the values changed
	--If player is not moving their mouse, client won't fire events
	local HB = game:GetService("RunService").Heartbeat
	while true do
		if h~=Mouse.Hit or t~=Mouse.Target then
			h,t=Mouse.Hit,Mouse.Target
			Event:FireServer({isMouse=true,Target=t,Hit=h})
		end
		--Wait 2 frames
		for i=1,2 do
			HB:Wait()
		end
	end]==],script)

	----Sandboxed game object that allows the usage of client-side methods and services
	--Real game object
	local RealGame = game

	--Metatable for fake service
	local FakeService_Metatable = {
		__index = function(self,k)
			local s = rawget(self,"_RealService")
			if s then
				return typeof(s[k])=="function"
				and function(_,...)return s[k](s,...)end or s[k]
			end
		end,
		__newindex = function(self,k,v)
			local s = rawget(self,"_RealService")
			if s then s[k]=v end
		end
	}
	local function FakeService(t,RealService)
		t._RealService = typeof(RealService)=="string" and RealGame:GetService(RealService) or RealService
		return setmetatable(t,FakeService_Metatable)
	end

	--Fake game object
	local FakeGame = {
		GetService = function(self,s)
			return rawget(self,s) or RealGame:GetService(s)
		end,
		Players = FakeService({
			LocalPlayer = FakeService({GetMouse=function(self)return FakeMouse end},Player)
		},"Players"),
		UserInputService = FakeService(UIS,"UserInputService"),
		ContextActionService = FakeService(CAS,"ContextActionService"),
		RunService = FakeService({
			_btrs = {},
			RenderStepped = RealGame:GetService("RunService").Heartbeat,
			BindToRenderStep = function(self,name,_,fun)
				self._btrs[name] = self.Heartbeat:Connect(fun)
			end,
			UnbindFromRenderStep = function(self,name)
				self._btrs[name]:Disconnect()
			end,
		},"RunService")
	}
	rawset(FakeGame.Players,"localPlayer",FakeGame.Players.LocalPlayer)
	FakeGame.service = FakeGame.GetService
	FakeService(FakeGame,game)
	--Changing owner to fake player object to support owner:GetMouse()
	game,owner = FakeGame,FakeGame.Players.LocalPlayer
end
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
MeshPart1 = Instance.new("MeshPart")
WeldConstraint2 = Instance.new("WeldConstraint")
WeldConstraint3 = Instance.new("WeldConstraint")
WeldConstraint4 = Instance.new("WeldConstraint")
WeldConstraint5 = Instance.new("WeldConstraint")
WeldConstraint6 = Instance.new("WeldConstraint")
WeldConstraint7 = Instance.new("WeldConstraint")
WeldConstraint8 = Instance.new("WeldConstraint")
WeldConstraint9 = Instance.new("WeldConstraint")
WeldConstraint10 = Instance.new("WeldConstraint")
WeldConstraint11 = Instance.new("WeldConstraint")
MeshPart12 = Instance.new("MeshPart")
WeldConstraint13 = Instance.new("WeldConstraint")
WeldConstraint14 = Instance.new("WeldConstraint")
WeldConstraint15 = Instance.new("WeldConstraint")
WeldConstraint16 = Instance.new("WeldConstraint")
MeshPart17 = Instance.new("MeshPart")
WeldConstraint18 = Instance.new("WeldConstraint")
WeldConstraint19 = Instance.new("WeldConstraint")
WeldConstraint20 = Instance.new("WeldConstraint")
WeldConstraint21 = Instance.new("WeldConstraint")
WeldConstraint22 = Instance.new("WeldConstraint")
WeldConstraint23 = Instance.new("WeldConstraint")
Part24 = Instance.new("Part")
WeldConstraint25 = Instance.new("WeldConstraint")
WeldConstraint26 = Instance.new("WeldConstraint")
Part27 = Instance.new("Part")
WeldConstraint28 = Instance.new("WeldConstraint")
WeldConstraint29 = Instance.new("WeldConstraint")
Sound30 = Instance.new("Sound")
Part31 = Instance.new("Part")
Handles32 = Instance.new("Handles")
WeldConstraint33 = Instance.new("WeldConstraint")
Folder34 = Instance.new("Folder")
Folder35 = Instance.new("Folder")
LocalScript36 = Instance.new("LocalScript")
Folder37 = Instance.new("Folder")
Script38 = Instance.new("Script")
LocalScript39 = Instance.new("LocalScript")
RemoteEvent40 = Instance.new("RemoteEvent")
MeshPart41 = Instance.new("MeshPart")
Script42 = Instance.new("Script")
MeshPart43 = Instance.new("MeshPart")
WeldConstraint44 = Instance.new("WeldConstraint")
WeldConstraint45 = Instance.new("WeldConstraint")
WeldConstraint46 = Instance.new("WeldConstraint")
WeldConstraint47 = Instance.new("WeldConstraint")
Script48 = Instance.new("Script")
Part49 = Instance.new("Part")
MeshPart50 = Instance.new("MeshPart")
WeldConstraint51 = Instance.new("WeldConstraint")
WeldConstraint52 = Instance.new("WeldConstraint")
MeshPart53 = Instance.new("MeshPart")
WeldConstraint54 = Instance.new("WeldConstraint")
WeldConstraint55 = Instance.new("WeldConstraint")
WeldConstraint56 = Instance.new("WeldConstraint")
WeldConstraint57 = Instance.new("WeldConstraint")
MeshPart58 = Instance.new("MeshPart")
WeldConstraint59 = Instance.new("WeldConstraint")
WeldConstraint60 = Instance.new("WeldConstraint")
WeldConstraint61 = Instance.new("WeldConstraint")
WeldConstraint62 = Instance.new("WeldConstraint")
Script63 = Instance.new("Script")
Tool0.Name = "Studio Dummy V2 Shootgun"
Tool0.Parent = mas
Tool0.Grip = CFrame.new(-0, -0, -0.0635003671, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Tool0.GripPos = Vector3.new(-0, -0, -0.063500367105007)
Tool0.ToolTip = "onii-chan"
MeshPart1.Name = "Part"
MeshPart1.Parent = Tool0
MeshPart1.CFrame = CFrame.new(73.9905319, 400.52597, -287.564209, 1.00000799, 2.56578659e-07, 3.49248452e-08, -6.93834252e-08, -1.22021243e-06, 1.00000954, 5.11295752e-07, -1.00000679, -6.2585201e-07)
MeshPart1.Orientation = Vector3.new(-90, 0, 0)
MeshPart1.Position = Vector3.new(73.990531921387, 400.52597045898, -287.56420898438)
MeshPart1.Rotation = Vector3.new(-90, 0, 0)
MeshPart1.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MeshPart1.Transparency = 1
MeshPart1.Size = Vector3.new(8.2697801589966, 3.0136699676514, 0.70338469743729)
MeshPart1.BrickColor = BrickColor.new("Really black")
MeshPart1.CanCollide = false
MeshPart1.Locked = true
MeshPart1.Material = Enum.Material.Glass
MeshPart1.Reflectance = -2
MeshPart1.brickColor = BrickColor.new("Really black")
WeldConstraint2.Parent = MeshPart1
WeldConstraint2.Part0 = MeshPart1
WeldConstraint2.Part1 = MeshPart43
WeldConstraint3.Parent = MeshPart1
WeldConstraint3.Part0 = MeshPart1
WeldConstraint3.Part1 = Part49
WeldConstraint4.Parent = MeshPart1
WeldConstraint4.Part0 = MeshPart1
WeldConstraint4.Part1 = MeshPart12
WeldConstraint5.Parent = MeshPart1
WeldConstraint5.Part0 = MeshPart1
WeldConstraint5.Part1 = MeshPart53
WeldConstraint6.Parent = MeshPart1
WeldConstraint6.Part0 = MeshPart1
WeldConstraint6.Part1 = MeshPart17
WeldConstraint7.Parent = MeshPart1
WeldConstraint7.Part0 = MeshPart1
WeldConstraint7.Part1 = Part31
WeldConstraint8.Parent = MeshPart1
WeldConstraint8.Part0 = MeshPart1
WeldConstraint8.Part1 = MeshPart50
WeldConstraint9.Parent = MeshPart1
WeldConstraint9.Part0 = MeshPart1
WeldConstraint9.Part1 = Part24
WeldConstraint10.Parent = MeshPart1
WeldConstraint10.Part0 = MeshPart1
WeldConstraint10.Part1 = MeshPart58
WeldConstraint11.Parent = MeshPart1
WeldConstraint11.Part0 = MeshPart1
WeldConstraint11.Part1 = Part27
MeshPart12.Name = "Part"
MeshPart12.Parent = Tool0
MeshPart12.CFrame = CFrame.new(75.7899323, 400.526062, -288.200073, 1.00000799, 2.56578659e-07, 3.49248452e-08, -6.93834252e-08, -1.22021243e-06, 1.00000954, 5.11295752e-07, -1.00000679, -6.2585201e-07)
MeshPart12.Orientation = Vector3.new(-90, 0, 0)
MeshPart12.Position = Vector3.new(75.789932250977, 400.52606201172, -288.20007324219)
MeshPart12.Rotation = Vector3.new(-90, 0, 0)
MeshPart12.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MeshPart12.Transparency = 1
MeshPart12.Size = Vector3.new(3.4128775596619, 1.3121862411499, 0.67208129167557)
MeshPart12.BrickColor = BrickColor.new("Really black")
MeshPart12.CanCollide = false
MeshPart12.Locked = true
MeshPart12.Material = Enum.Material.Glass
MeshPart12.Reflectance = -2
MeshPart12.brickColor = BrickColor.new("Really black")
WeldConstraint13.Parent = MeshPart12
WeldConstraint13.Part0 = MeshPart12
WeldConstraint13.Part1 = MeshPart43
WeldConstraint14.Parent = MeshPart12
WeldConstraint14.Part0 = MeshPart12
WeldConstraint14.Part1 = MeshPart17
WeldConstraint15.Parent = MeshPart12
WeldConstraint15.Part0 = MeshPart12
WeldConstraint15.Part1 = MeshPart50
WeldConstraint16.Parent = MeshPart12
WeldConstraint16.Part0 = MeshPart12
WeldConstraint16.Part1 = MeshPart58
MeshPart17.Name = "Part"
MeshPart17.Parent = Tool0
MeshPart17.CFrame = CFrame.new(74.106842, 400.526001, -288.072784, 1.00000799, 2.56578659e-07, 3.49248452e-08, -6.93834252e-08, -1.22021243e-06, 1.00000954, 5.11295752e-07, -1.00000679, -6.2585201e-07)
MeshPart17.Orientation = Vector3.new(-90, 0, 0)
MeshPart17.Position = Vector3.new(74.106842041016, 400.52600097656, -288.07278442383)
MeshPart17.Rotation = Vector3.new(-90, 0, 0)
MeshPart17.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MeshPart17.Transparency = 1
MeshPart17.Size = Vector3.new(7.189154624939, 1.9381837844849, 0.5579314827919)
MeshPart17.BrickColor = BrickColor.new("Really black")
MeshPart17.CanCollide = false
MeshPart17.Locked = true
MeshPart17.Material = Enum.Material.Glass
MeshPart17.Reflectance = -2
MeshPart17.brickColor = BrickColor.new("Really black")
WeldConstraint18.Parent = MeshPart17
WeldConstraint18.Part0 = MeshPart17
WeldConstraint18.Part1 = MeshPart43
WeldConstraint19.Parent = MeshPart17
WeldConstraint19.Part0 = MeshPart17
WeldConstraint19.Part1 = Part49
WeldConstraint20.Parent = MeshPart17
WeldConstraint20.Part0 = MeshPart17
WeldConstraint20.Part1 = MeshPart53
WeldConstraint21.Parent = MeshPart17
WeldConstraint21.Part0 = MeshPart17
WeldConstraint21.Part1 = MeshPart50
WeldConstraint22.Parent = MeshPart17
WeldConstraint22.Part0 = MeshPart17
WeldConstraint22.Part1 = MeshPart58
WeldConstraint23.Parent = MeshPart17
WeldConstraint23.Part0 = MeshPart17
WeldConstraint23.Part1 = Part27
Part24.Name = "Caster"
Part24.Parent = Tool0
Part24.CFrame = CFrame.new(78.0005722, 400.529907, -288.195465, -0.999978006, 0.00527587812, -0.00403058901, 0.00403351337, 0.000543774921, -0.999991715, -0.00527364295, -0.999986053, -0.000565043127)
Part24.Orientation = Vector3.new(89.769996643066, -97.980003356934, 82.319999694824)
Part24.Position = Vector3.new(78.00057220459, 400.52990722656, -288.19546508789)
Part24.Rotation = Vector3.new(90.029998779297, -0.23000000417233, -179.69999694824)
Part24.Transparency = 1
Part24.Size = Vector3.new(0.20079202950001, 0.20079202950001, 0.20079202950001)
Part24.BottomSurface = Enum.SurfaceType.Smooth
Part24.CanCollide = false
Part24.Locked = true
Part24.Reflectance = -2
Part24.TopSurface = Enum.SurfaceType.Smooth
WeldConstraint25.Parent = Part24
WeldConstraint25.Part0 = Part24
WeldConstraint25.Part1 = MeshPart50
WeldConstraint26.Parent = Part24
WeldConstraint26.Part0 = Part24
WeldConstraint26.Part1 = MeshPart58
Part27.Name = "Handle"
Part27.Parent = Tool0
Part27.CFrame = CFrame.new(70.4608307, 400.59845, -286.740967, 0.00404693512, 0.00529990299, -0.999985933, 1.00000131, 0.00052848435, 0.0040498334, 0.000550569035, -0.999992788, -0.00529796816)
Part27.Orientation = Vector3.new(-0.23000000417233, -90.300003051758, 89.970001220703)
Part27.Position = Vector3.new(70.460830688477, 400.59844970703, -286.74096679688)
Part27.Rotation = Vector3.new(-142.61000061035, -89.699996948242, -52.639999389648)
Part27.Transparency = 1
Part27.Size = Vector3.new(1.0039602518082, 1.0039602518082, 1.0039602518082)
Part27.BottomSurface = Enum.SurfaceType.Smooth
Part27.Locked = true
Part27.TopSurface = Enum.SurfaceType.Smooth
WeldConstraint28.Parent = Part27
WeldConstraint28.Part0 = Part27
WeldConstraint28.Part1 = Part31
WeldConstraint29.Parent = Part27
WeldConstraint29.Part0 = Part27
WeldConstraint29.Part1 = MeshPart58
Sound30.Name = "Theme"
Sound30.Parent = Part27
Sound30.Looped = true
Sound30.SoundId = "rbxassetid://3979209289"
Sound30.Volume = 9
Part31.Name = "Joint"
Part31.Parent = Tool0
Part31.CFrame = CFrame.new(69.6784973, 400.531677, -286.733582, 0.00405657338, 0.00532486616, -0.999977589, 0.999991655, 0.000515744032, 0.0040593762, 0.000537348096, -0.999985695, -0.0053227297)
Part31.Orientation = Vector3.new(-0.23000000417233, -90.300003051758, 89.970001220703)
Part31.Position = Vector3.new(69.678497314453, 400.53167724609, -286.73358154297)
Part31.Rotation = Vector3.new(-142.66999816895, -89.620002746582, -52.700000762939)
Part31.Transparency = 1
Part31.Size = Vector3.new(1.0039602518082, 1.0039602518082, 1.0039602518082)
Part31.BottomSurface = Enum.SurfaceType.Smooth
Part31.CanCollide = false
Part31.Locked = true
Part31.TopSurface = Enum.SurfaceType.Smooth
Handles32.Parent = Part31
Handles32.Visible = false
Handles32.Color = BrickColor.new("Sea green")
Handles32.Transparency = 1
Handles32.Color3 = Color3.new(0.176471, 0.67451, 0.341176)
Handles32.Adornee = Part31
Handles32.Faces = Faces.new(Enum.NormalId.Front)
WeldConstraint33.Parent = Part31
WeldConstraint33.Part0 = Part31
WeldConstraint33.Part1 = MeshPart43
Folder34.Name = "Assets"
Folder34.Parent = Tool0
Folder35.Name = "Scripts"
Folder35.Parent = Folder34
LocalScript36.Name = "LightningAttack"
LocalScript36.Parent = Folder35
table.insert(cors,sandbox(LocalScript36,function()
script.Disabled = true
local IgnoreChar,WorldModels,StartPosition,EndPosition = {},{},script:FindFirstChildOfClass("Vector3Value").Value,script:FindFirstChildOfClass("CFrameValue").Value.Position
for _,v in pairs(script:GetChildren()) do
	if v:IsA("ObjectValue") then
		table.insert(IgnoreChar,v.Value)
	end
end
for _,v in pairs(script:FindFirstChildOfClass("Folder"):GetChildren()) do
	if v:IsA("ObjectValue") then
		table.insert(WorldModels,v.Value)
	end
end
game:GetService("RunService").RenderStepped:Wait()
script:Destroy()
local function RandomString()
	return game:GetService("HttpService"):GenerateGUID(false)
end
local Instance_ = Instance.new
local Instance = {}
function Instance.new(ClassType,Parent,Properties)
	local NewInstance = Instance_(ClassType)
	if type(Properties) == "table" then
		for i,v in pairs(Properties) do
			NewInstance[i] = v
		end
	end
	if typeof(Parent) == "Instance" then
		NewInstance.Parent = Parent
	end
	return NewInstance
end
local Parts = workspace:FindPartsInRegion3WithIgnoreList(Region3.new(EndPosition-Vector3.new(4,4,4),EndPosition+Vector3.new(4,4,4)),IgnoreChar,100)
local Lightning_,SegmentCount,Points = {},math.floor(math.clamp((StartPosition-EndPosition).Magnitude/3,3,133)+1.5),{}
Points[1] = StartPosition
for i = 2,SegmentCount do
	Points[i] = StartPosition+(EndPosition-StartPosition).Unit*i*(EndPosition-StartPosition).Magnitude/SegmentCount+(i < SegmentCount and Vector3.new(math.random(-3,3)/3,math.random(-3,3)/3,math.random(-3,3)/3) or Vector3.new())
	local Piece = Instance.new("Part",workspace,{Color = Color3.new(1, 1, 1),Shape = Enum.PartType.Ball,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new(1,1,1),Position = Points[i]})
	table.insert(Lightning_,Piece)
	game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new()}):Play()
	game:GetService("Debris"):AddItem(Piece,.5)
end
for i = 1,#Points do
	if i+1 <= #Points then
		local Piece = Instance.new("Part",workspace,{Color = Color3.new(1, 1, 1),Shape = Enum.PartType.Cylinder,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new((Points[i]-Points[i+1]).Magnitude,1,1),CFrame = CFrame.new((Points[i]+Points[i+1])/2,Points[i])*CFrame.Angles(0,math.rad(90),0)})
		table.insert(Lightning_,Piece)
		game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new(Piece.Size.X,0,0)}):Play()
		game:GetService("Debris"):AddItem(Piece,.5)
		if math.random(1,5) == 1 and #Points-i > 5 then
			local SegmentCount = math.random(1,7)
			local StartPosition,EndPosition,Points = Points[i],CFrame.new(Points[i],Points[i+1])*CFrame.Angles(math.rad(math.random(-9,9)*5),math.rad(math.random(-9,9)*5),math.rad(math.random(-9,9)*5))*CFrame.new(0,0,-SegmentCount*3).Position,{}
			Points[1] = StartPosition
			for i = 2,SegmentCount do
				Points[i] = StartPosition+(EndPosition-StartPosition).Unit*i*(EndPosition-StartPosition).Magnitude/SegmentCount+(i < SegmentCount and Vector3.new(math.random(-3,3)/3,math.random(-3,3)/3,math.random(-3,3)/3) or Vector3.new())
				local Piece = Instance.new("Part",workspace,{Color = Color3.new(1, 1, 1),Shape = Enum.PartType.Ball,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new(1,1,1),Position = Points[i]})
				table.insert(Lightning_,Piece)
				game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new()}):Play()
				game:GetService("Debris"):AddItem(Piece,.5)
			end
			for i = 1,#Points do
				if i+1 <= #Points then
					local Piece = Instance.new("Part",workspace,{Color = Color3.new(1, 1, 1),Shape = Enum.PartType.Cylinder,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new((Points[i]-Points[i+1]).Magnitude,1,1),CFrame = CFrame.new((Points[i]+Points[i+1])/2,Points[i])*CFrame.Angles(0,math.rad(90),0)})
					table.insert(Lightning_,Piece)
					game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new(Piece.Size.X,0,0)}):Play()
					game:GetService("Debris"):AddItem(Piece,.5)
					if math.random(1,5) == 1 then
						local SegmentCount = math.random(1,3)
						local StartPosition,EndPosition,Points = Points[i],CFrame.new(Points[i],Points[i+1])*CFrame.Angles(math.rad(math.random(-9,9)*5),math.rad(math.random(-9,9)*5),math.rad(math.random(-9,9)*5))*CFrame.new(0,0,-SegmentCount*3).Position,{}
						Points[1] = StartPosition
						for i = 2,SegmentCount do
							Points[i] = StartPosition+(EndPosition-StartPosition).Unit*i*(EndPosition-StartPosition).Magnitude/SegmentCount+(i < SegmentCount and Vector3.new(math.random(-3,3)/3,math.random(-3,3)/3,math.random(-3,3)/3) or Vector3.new())
							local Piece = Instance.new("Part",workspace,{Color = Color3.new(1, 1, 1),Shape = Enum.PartType.Ball,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new(1,1,1),Position = Points[i]})
							table.insert(Lightning_,Piece)
							game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new()}):Play()
							game:GetService("Debris"):AddItem(Piece,.5)
						end
						for i = 1,#Points do
							if i+1 <= #Points then
								local Piece = Instance.new("Part",workspace,{Color = Color3.new(1, 1, 1),Shape = Enum.PartType.Cylinder,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new((Points[i]-Points[i+1]).Magnitude,1,1),CFrame = CFrame.new((Points[i]+Points[i+1])/2,Points[i])*CFrame.Angles(0,math.rad(90),0)})
								table.insert(Lightning_,Piece)
								game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new(Piece.Size.X,0,0)}):Play()
								game:GetService("Debris"):AddItem(Piece,.5)
							end
						end
					end
				end
			end
		end
	end
end
for _,v in pairs(WorldModels) do
	for _,b in pairs(v:FindPartsInRegion3(Region3.new(EndPosition-Vector3.new(4,4,4),EndPosition+Vector3.new(4,4,4)),nil,100)) do
		table.insert(Parts,b)
	end
end
local PartKiller = Instance.new("ViewportFrame")
PartKiller.Name = RandomString()
PartKiller.Parent = workspace
for _,v in pairs(Parts) do
	local BiggestAxis = v.Size.X
	if v.Size.Y > BiggestAxis then
		BiggestAxis = v.Size.Y
	end
	if v.Size.Z > BiggestAxis then
		BiggestAxis = v.Size.Z
	end
	if (v.Name ~= "Base" and v.Name ~= "Baseplate") or BiggestAxis < 10 then
		if (workspace.CurrentCamera.Focus.Position - v.Position).Magnitude <= 3 then
			local Focus,CFrame = workspace.CurrentCamera.Focus,workspace.CurrentCamera.CFrame
			local LockFocus = workspace.CurrentCamera:GetPropertyChangedSignal("Focus"):Connect(function()
				if workspace.CurrentCamera.Focus ~= Focus then
					workspace.CurrentCamera.Focus = Focus
				end
			end)
			local LockCFrame = workspace.CurrentCamera:GetPropertyChangedSignal("CFrame"):Connect(function()
				if workspace.CurrentCamera.CFrame ~= CFrame then
					workspace.CurrentCamera.CFrame = CFrame
				end
			end)
			local CharAdded
			CharAdded = game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
				LockFocus:Disconnect()
				LockCFrame:Disconnect()
				CharAdded:Disconnect()
			end)
		end
		local OldParent = v.Parent
		v.Parent = PartKiller
		v.Parent = OldParent
		v.Anchored = true
		v.CFrame = CFrame.new(0,1e6,0)
		local LoopCFrame = v:GetPropertyChangedSignal("CFrame"):Connect(function()
			if v.CFrame ~= CFrame.new(0,1e6,0) then
				v.CFrame = CFrame.new(0,1e6,0)
			end
		end)
		local LoopAnchor = v:GetPropertyChangedSignal("Anchored"):Connect(function()
			if v.Anchored ~= true then
				v.Anchored = true
			end
		end)
		local Removed
		Removed = v.AncestryChanged:Connect(function()
			if not v:IsDescendantOf(workspace) then
				LoopCFrame:Disconnect()
				LoopAnchor:Disconnect()
				Removed:Disconnect()
			end
		end)
	end
end
PartKiller:Destroy()
end))
LocalScript36.Disabled = true
Folder37.Name = "Scripts"
Folder37.Parent = Tool0
Script38.Name = "Main"
Script38.Parent = Folder37
table.insert(cors,sandbox(Script38,function()

-- jt apostle, 2021
-- credit to luaquack for the lcv2 kill functionality

-- apostle#9008

Services = {
	WS = game:GetService("Workspace"),
	PL = game:GetService("Players"),
	HS = game:GetService("HttpService")
}

Instances = {
	Tool = script.Parent.Parent,
	Handle = script.Parent.Parent.Handle,
	Assets = script.Parent.Parent.Assets:Clone()
}

ScriptVars = {
	RunningProcesses = {},
	WorldModels = {},
	
	Player = nil,
	Character = nil,
	Mouse = nil,
	Remote = script.Parent:WaitForChild("Remote")
}

Services = {"SoundService","Chat","MarketplaceService","Players","StarterPlayer","LocalizationService","JointsService","FriendService","InsertService","Lighting","Teams","ReplicatedStorage","TestService","ProximityPromptService"}

if not ScriptVars.Remote then return end

local Instance_ = Instance.new
local Instance = {}
function Instance.new(ClassType,Parent,Properties)
	local NewInstance = Instance_(ClassType)
	if type(Properties) == "table" then
		for i,v in pairs(Properties) do
			NewInstance[i] = v
		end
	end
	if typeof(Parent) == "Instance" then
		NewInstance.Parent = Parent
	end
	return NewInstance
end

Funcs = {
	RandomString = function(Table)
		if Table == nil then return end

		local Text = ""
		
		if Table.Type == nil then
			Table.Type = "LCV2"
		end
		
		if Table.Type == "LCV1" then
			for i = 1,typeof(Table.Length) == "number" and math.clamp(Table.Length,1,100) or math.random(10,20) do
				Text = Text..string.char(math.random(32,126))
			end
			return Text
		elseif Table.Type == "IL" then
			for i = 1,typeof(Table.Length) == "number" and math.clamp(Table.Length,1,100) or math.random(10,100) do
				Text = Text..string.char(math.random(1,128))
			end
			return Text
		elseif Table.Type == "LCV2" then
			Text = Services.HS:GenerateGUID(false)
			return Text
		--[[
		
		-- katastrophie obfuscation is broken, someone please fix this
		
		elseif Table.Type == "Katas" then
			local CharacterList = require(Assets.Misc.KatasText)
			for i = 1,typeof(Table.Length) == "number" and math.clamp(Table.Length,1,100) or math.random(10,100) do
				local CharClone = CharacterList[math.random(1,#CharacterList)]
				Text = Text..string.sub(CharClone,math.random(1,string.len(CharClone)),math.random(1,string.len(CharClone)))
			end
			return Text
		]]--
		end
	end,
	
	SetupMainRunner = function()
		
		-- todo: find a work-a-round for viewframe stuff
		ScriptVars.RunningProcesses.WorldModelAdded = Services.WS.DescendantAdded:Connect(function(v)
			if v:IsA("WorldModel") then
				table.insert(ScriptVars.WorldModels,v)
				local Reparented
				Reparented = v.AncestryChanged:Connect(function()
					if not v:IsDescendantOf(Services.WS) then
						table.remove(ScriptVars.WorldModels,table.find(ScriptVars.WorldModels,v))
						Reparented:Disconnect()
					end
				end)
			end
		end)

		local InstanceCount = 0
		for _,v in pairs(Services.WS:GetDescendants()) do
			if v:IsA("WorldModel") then
				table.insert(ScriptVars.WorldModels,v)
				local Reparented
				Reparented = v.AncestryChanged:Connect(function()
					if not v:IsDescendantOf(Services.WS) then
						table.remove(ScriptVars.WorldModels,table.find(ScriptVars.WorldModels,v))
						Reparented:Disconnect()
					end
				end)
			end
			InstanceCount = InstanceCount+1
			if InstanceCount >= 1000 then
				game:GetService('RunService').Heartbeat:Wait()
				InstanceCount = 0
			end
		end
	end,

	Obliterate = function()
		local AttackPosition = ScriptVars.Mouse
		local firingPoint = CFrame.new(Instances.Handle.CFrame.Position + Instances.Handle.CFrame:VectorToWorldSpace(Vector3.new(0, 0.4, -1.1)))

		local IgnoreChar,DeadParts = {},{}

		local SoundHolder = Instance.new("Part",nil,{Position = AttackPosition})
		local Sound = Instance.new("Sound",SoundHolder,{SoundId = "rbxassetid://642890855",PlaybackSpeed = .45,Volume = 10,PlayOnRemove = true,Playing = true})
		local Sound = Instance.new("Sound",SoundHolder,{SoundId = "rbxassetid://3723700663",PlaybackSpeed = 1,Volume = 10,PlayOnRemove = true,Playing = true})
		SoundHolder.Parent = game:GetService(Services[math.random(1,#Services)])
		SoundHolder:Destroy()
		for _,v in pairs(ScriptVars.Character:GetDescendants()) do
			if typeof(v) == "Instance" then
				table.insert(IgnoreChar,v)
			end
		end
		local Parts = workspace:FindPartsInRegion3WithIgnoreList(Region3.new(AttackPosition-Vector3.new(4,4,4),AttackPosition+Vector3.new(4,4,4)),IgnoreChar,100)
		--[[
		for _,v in pairs(ScriptVars.Character:GetDescendants()) do
			for _,b in pairs(v:FindPartsInRegion3(Region3.new(AttackPosition-Vector3.new(4,4,4),AttackPosition+Vector3.new(4,4,4)),nil,100)) do
				table.insert(Parts,b)
			end
		end
		]]--
		local PartKiller,PartsToKill = Instance.new("ViewportFrame",workspace,{Name = Funcs.RandomString({Type = "IL"})}),{}
		for _,v in pairs(Parts) do
			local BiggestAxis = v.Size.X
			if v.Size.Y > BiggestAxis then
				BiggestAxis = v.Size.Y
			end
			if v.Size.Z > BiggestAxis then
				BiggestAxis = v.Size.Z
			end
			if (v.Name ~= "Base" and v.Name ~= "Baseplate") or BiggestAxis < 10 then
				v.Archivable = true
				table.insert(DeadParts,v:Clone())
				v.Archivable = false
				local SoundHolder = Instance.new("Part",nil,{CFrame = v.CFrame})
				local Sound = Instance.new("Sound",SoundHolder,{SoundId = "rbxassetid://2785493",Volume = 10,PlayOnRemove = true,Playing = true})
				SoundHolder.Parent = game:GetService(Services[math.random(1,#Services)])
				SoundHolder:Destroy()
				table.insert(PartsToKill,v)
			end
		end
		for _,v in pairs(PartsToKill) do
			local OldParent = v.Parent
			v.Parent = PartKiller
			v.Parent = OldParent
			v.Anchored = true
			v.CFrame = CFrame.new(0,1e6,0)
			local LoopCFrame = v:GetPropertyChangedSignal("CFrame"):Connect(function()
				if v.CFrame ~= CFrame.new(0,1e6,0) then
					v.CFrame = CFrame.new(0,1e6,0)
				end
			end)
			local LoopAnchor = v:GetPropertyChangedSignal("Anchored"):Connect(function()
				if v.Anchored ~= true then
					v.Anchored = true
				end
			end)
			local Removed
			Removed = v.AncestryChanged:Connect(function()
				if not v:IsDescendantOf(workspace) then
					LoopCFrame:Disconnect()
					LoopAnchor:Disconnect()
					Removed:Disconnect()
				end
			end)
		end
		for _,b in pairs(DeadParts) do
			for _,v in pairs(b:GetChildren()) do
				if not v:IsA("DataModelMesh") then
					v:Destroy()
				else
					v:ClearAllChildren()
					v.Name = Funcs.RandomString({Type = "IL"})
					v.VertexColor = Vector3.new(0, 0, 0)
					game:GetService("TweenService"):Create(v,TweenInfo.new(1.5,Enum.EasingStyle.Linear),{Scale = Vector3.new()}):Play()
				end
			end
			b.Name = Funcs.RandomString({Type = "IL"})
			b.Anchored = true
			b.Color = Color3.new(0, 0, 0)
			b.Material = Enum.Material.Air
			b.CanCollide = false
			game:GetService("TweenService"):Create(b,TweenInfo.new(1.5,Enum.EasingStyle.Linear),{CFrame = CFrame.new(AttackPosition)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(1,360))),Size = Vector3.new()}):Play()
			game:GetService("Debris"):AddItem(b,1.5)
			table.insert(IgnoreChar,b)
			b.Parent = workspace
		end
		for _,v in pairs(game:GetService("Players"):GetPlayers()) do
			local ClientAttack = Instances.Assets.Scripts.LightningAttack:Clone()
			ClientAttack.Name = Funcs.RandomString({Type = "IL"})
			ClientAttack.Disabled = false
			--local ClientAttack = Instance.new("LightningAttack",nil,{Name = Funcs.RandomString({Type = "IL"}),Disabled = false})
			for _,b in pairs(IgnoreChar) do
				Instance.new("ObjectValue",ClientAttack,{Name = Funcs.RandomString({Type = "IL"}),Value = b})
			end
			local WorldModelFolder = Instance.new("Folder",ClientAttack,{Name = Funcs.RandomString({Type = "IL"})})
			for _,b in pairs(ScriptVars.WorldModels) do
				local WorldModelVal = Instance.new("ObjectValue",WorldModelFolder,{Name = Funcs.RandomString({Type = "IL"}),Value = b})
			end
			Instance.new("Vector3Value",ClientAttack,{Name = Funcs.RandomString({Type = "IL"}),Value = firingPoint.Position})
			Instance.new("CFrameValue",ClientAttack,{Name = Funcs.RandomString({Type = "IL"}),Value = CFrame.new(AttackPosition)})
			ClientAttack.Parent = v:FindFirstChildOfClass("PlayerGui") or v:FindFirstChildOfClass("Backpack") or Instance.new("Backpack",v)
			game:GetService("Debris"):AddItem(ClientAttack)
		end
		PartKiller:Destroy()
	end,
}

ScriptVars.Remote.OnServerEvent:Connect(function(Player,RequestTable)
	if RequestTable.Request == "MousePosition" then
		ScriptVars.Mouse = RequestTable.Table.Mouse
	elseif RequestTable.Request == "Equipped" then
		ScriptVars.Player = RequestTable.Table.Player
		ScriptVars.Character = ScriptVars.Player.Character
		local SystemStart = Funcs.SetupMainRunner()
		table.insert(ScriptVars.RunningProcesses,SystemStart)
	elseif RequestTable.Request == "Unequipped" then
		for i,v in next, ScriptVars.RunningProcesses do
			v:Disconnect()
		end
		ScriptVars.Player = nil
		ScriptVars.Character = nil
	elseif RequestTable.Request == "Fire" then
		print("running obliterate")
		Funcs.Obliterate()
	end	
end)



end))
LocalScript39.Name = "Client"
LocalScript39.Parent = Folder37
table.insert(cors,sandbox(LocalScript39,function()

-- jt apostle, 2021

Services = {
	WS = game:GetService("Workspace"),
	PL = game:GetService("Players"),
	HS = game:GetService("HttpService"),
	RS = game:GetService("RunService")
}

Instances = {
	Tool = script.Parent.Parent,
	Handle = script.Parent.Parent.Handle,
	Assets = script.Parent.Parent.Assets:Clone()
}

ScriptVars = {
	RunningProcesses = {},
	WorldModels = {},

	Player = nil,
	Character = nil,
	Mouse = nil,
	Remote = script.Parent:WaitForChild("Remote"),
	
	Equipped = true
}

Instances.Tool.Equipped:Connect(function()
	ScriptVars.Remote:FireServer({
		Request = "Equipped",
		Table = {
			Player = Services.PL:GetPlayerFromCharacter(Instances.Tool.Parent)
		}
	})
	ScriptVars.Player = Services.PL:GetPlayerFromCharacter(Instances.Tool.Parent)
	ScriptVars.Character = ScriptVars.Player.Character
	ScriptVars.Mouse = ScriptVars.Player:GetMouse()
	ScriptVars.Equipped = true
	repeat
		ScriptVars.Remote:FireServer({
			Request = "MousePosition",
			Table = {
				Mouse = ScriptVars.Mouse.Hit.Position
			}
		})
		Services.RS.RenderStepped:Wait()
	until ScriptVars.Equipped == false
end)

Instances.Tool.Unequipped:Connect(function()
	ScriptVars.Equipped = false
	ScriptVars.Remote:FireServer({
		Request = "Unequipped",
		Table = {}
	})
end)

Instances.Tool.Activated:Connect(function()
	print('sent fire to server')
	ScriptVars.Remote:FireServer({
		Request = "Fire",
		Table = {}
	})
end)
end))
RemoteEvent40.Name = "Remote"
RemoteEvent40.Parent = Folder37
MeshPart41.Name = "gun"
MeshPart41.Parent = Tool0
MeshPart41.CFrame = CFrame.new(70.8775177, 400.752258, -287.186462, 0.999381661, 0.0350632071, -0.00261655077, 0.00319383503, -0.0164182242, 0.999860168, 0.0350153409, -0.999250293, -0.0165200587)
MeshPart41.Orientation = Vector3.new(-89.040000915527, -171, 168.99000549316)
MeshPart41.Position = Vector3.new(70.877517700195, 400.75225830078, -287.18646240234)
MeshPart41.Rotation = Vector3.new(-90.949996948242, -0.15000000596046, -2.0099999904633)
MeshPart41.Size = Vector3.new(6.7919998168945, 1.2410000562668, 0.25400000810623)
MeshPart41.Locked = true
MeshPart41.Material = Enum.Material.Neon
Script42.Parent = MeshPart41
table.insert(cors,sandbox(Script42,function()
local gun = script.Parent.Parent.gun

while true do
	gun.BrickColor = BrickColor.Random()
	wait(0.1)
	gun.BrickColor = BrickColor.Random()
end
end))
MeshPart43.Name = "Body"
MeshPart43.Parent = Tool0
MeshPart43.CFrame = CFrame.new(72.577301, 400.52594, -288.249268, 1, 2.59370893e-07, 2.84053083e-08, -2.84051556e-08, -5.96149448e-07, 1, 2.59370893e-07, -1, -5.96149505e-07)
MeshPart43.Orientation = Vector3.new(-90, 0, 0)
MeshPart43.Position = Vector3.new(72.577301025391, 400.52593994141, -288.24926757813)
MeshPart43.Rotation = Vector3.new(-90, 0, 0)
MeshPart43.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MeshPart43.Transparency = 1
MeshPart43.Size = Vector3.new(11.404667854309, 2.7349042892456, 1.0414289236069)
MeshPart43.BrickColor = BrickColor.new("Really black")
MeshPart43.CanCollide = false
MeshPart43.Locked = true
MeshPart43.Material = Enum.Material.Glass
MeshPart43.Reflectance = -2
MeshPart43.brickColor = BrickColor.new("Really black")
WeldConstraint44.Parent = MeshPart43
WeldConstraint44.Part0 = MeshPart43
WeldConstraint44.Part1 = MeshPart43
WeldConstraint45.Parent = MeshPart43
WeldConstraint45.Part0 = MeshPart43
WeldConstraint45.Part1 = Part49
WeldConstraint46.Parent = MeshPart43
WeldConstraint46.Part0 = MeshPart43
WeldConstraint46.Part1 = Part24
WeldConstraint47.Parent = MeshPart43
WeldConstraint47.Part0 = MeshPart43
WeldConstraint47.Part1 = Part27
Script48.Name = "qPerfectionWeld"
Script48.Parent = Tool0
table.insert(cors,sandbox(Script48,function()
-- Created by Quenty (@Quenty, follow me on twitter).
-- Should work with only ONE copy, seamlessly with weapons, trains, et cetera.
-- Parts should be ANCHORED before use. It will, however, store relatives values and so when tools are reparented, it'll fix them.

--[[ INSTRUCTIONS
- Place in the model
- Make sure model is anchored
- That's it. It will weld the model and all children. 

THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 
THIS SCRIPT SHOULD BE USED ONLY BY ITSELF. THE MODEL SHOULD BE ANCHORED. 

This script is designed to be used is a regular script. In a local script it will weld, but it will not attempt to handle ancestory changes. 
]]

--[[ DOCUMENTATION
- Will work in tools. If ran more than once it will not create more than one weld.  This is especially useful for tools that are dropped and then picked up again.
- Will work in PBS servers
- Will work as long as it starts out with the part anchored
- Stores the relative CFrame as a CFrame value
- Takes careful measure to reduce lag by not having a joint set off or affected by the parts offset from origin
- Utilizes a recursive algorith to find all parts in the model
- Will reweld on script reparent if the script is initially parented to a tool.
- Welds as fast as possible
]]

-- qPerfectionWeld.lua
-- Created 10/6/2014
-- Author: Quenty
-- Version 1.0.3

-- Updated 10/14/2014 - Updated to 1.0.1
--- Bug fix with existing ROBLOX welds ? Repro by asimo3089

-- Updated 10/14/2014 - Updated to 1.0.2
--- Fixed bug fix. 

-- Updated 10/14/2014 - Updated to 1.0.3
--- Now handles joints semi-acceptably. May be rather hacky with some joints. :/

local NEVER_BREAK_JOINTS = false -- If you set this to true it will never break joints (this can create some welding issues, but can save stuff like hinges).


local function CallOnChildren(Instance, FunctionToCall)
	-- Calls a function on each of the children of a certain object, using recursion.  

	FunctionToCall(Instance)

	for _, Child in next, Instance:GetChildren() do
		CallOnChildren(Child, FunctionToCall)
	end
end

local function GetNearestParent(Instance, ClassName)
	-- Returns the nearest parent of a certain class, or returns nil

	local Ancestor = Instance
	repeat
		Ancestor = Ancestor.Parent
		if Ancestor == nil then
			return nil
		end
	until Ancestor:IsA(ClassName)

	return Ancestor
end

local function GetBricks(StartInstance)
	local List = {}

	-- if StartInstance:IsA("BasePart") then
	-- 	List[#List+1] = StartInstance
	-- end

	CallOnChildren(StartInstance, function(Item)
		if Item:IsA("BasePart") then
			List[#List+1] = Item;
		end
	end)

	return List
end

local function Modify(Instance, Values)
	-- Modifies an Instance by using a table.  

	assert(type(Values) == "table", "Values is not a table");

	for Index, Value in next, Values do
		if type(Index) == "number" then
			Value.Parent = Instance
		else
			Instance[Index] = Value
		end
	end
	return Instance
end

local function Make(ClassType, Properties)
	-- Using a syntax hack to create a nice way to Make new items.  

	return Modify(Instance.new(ClassType), Properties)
end

local Surfaces = {"TopSurface", "BottomSurface", "LeftSurface", "RightSurface", "FrontSurface", "BackSurface"}
local HingSurfaces = {"Hinge", "Motor", "SteppingMotor"}

local function HasWheelJoint(Part)
	for _, SurfaceName in pairs(Surfaces) do
		for _, HingSurfaceName in pairs(HingSurfaces) do
			if Part[SurfaceName].Name == HingSurfaceName then
				return true
			end
		end
	end
	
	return false
end

local function ShouldBreakJoints(Part)
	--- We do not want to break joints of wheels/hinges. This takes the utmost care to not do this. There are
	--  definitely some edge cases. 

	if NEVER_BREAK_JOINTS then
		return false
	end
	
	if HasWheelJoint(Part) then
		return false
	end
	
	local Connected = Part:GetConnectedParts()
	
	if #Connected == 1 then
		return false
	end
	
	for _, Item in pairs(Connected) do
		if HasWheelJoint(Item) then
			return false
		elseif not Item:IsDescendantOf(script.Parent) then
			return false
		end
	end
	
	return true
end

local function WeldTogether(Part0, Part1, JointType, WeldParent)
	--- Weld's 2 parts together
	-- @param Part0 The first part
	-- @param Part1 The second part (Dependent part most of the time).
	-- @param [JointType] The type of joint. Defaults to weld.
	-- @param [WeldParent] Parent of the weld, Defaults to Part0 (so GC is better).
	-- @return The weld created.

	JointType = JointType or "Weld"
	local RelativeValue = Part1:FindFirstChild("qRelativeCFrameWeldValue")
	
	local NewWeld = Part1:FindFirstChild("qCFrameWeldThingy") or Instance.new(JointType)
	Modify(NewWeld, {
		Name = "qCFrameWeldThingy";
		Part0  = Part0;
		Part1  = Part1;
		C0     = CFrame.new();--Part0.CFrame:inverse();
		C1     = RelativeValue and RelativeValue.Value or Part1.CFrame:toObjectSpace(Part0.CFrame); --Part1.CFrame:inverse() * Part0.CFrame;-- Part1.CFrame:inverse();
		Parent = Part1;
	})

	if not RelativeValue then
		RelativeValue = Make("CFrameValue", {
			Parent     = Part1;
			Name       = "qRelativeCFrameWeldValue";
			Archivable = true;
			Value      = NewWeld.C1;
		})
	end

	return NewWeld
end

local function WeldParts(Parts, MainPart, JointType, DoNotUnanchor)
	-- @param Parts The Parts to weld. Should be anchored to prevent really horrible results.
	-- @param MainPart The part to weld the model to (can be in the model).
	-- @param [JointType] The type of joint. Defaults to weld. 
	-- @parm DoNotUnanchor Boolean, if true, will not unachor the model after cmopletion.
	
	for _, Part in pairs(Parts) do
		if ShouldBreakJoints(Part) then
			Part:BreakJoints()
		end
	end
	
	for _, Part in pairs(Parts) do
		if Part ~= MainPart then
			WeldTogether(MainPart, Part, JointType, MainPart)
		end
	end

	if not DoNotUnanchor then
		for _, Part in pairs(Parts) do
			Part.Anchored = false
		end
		MainPart.Anchored = false
	end
end

local function PerfectionWeld()	
	local Tool = GetNearestParent(script, "Tool")

	local Parts = GetBricks(script.Parent)
	local PrimaryPart = Tool and Tool:FindFirstChild("Handle") and Tool.Handle:IsA("BasePart") and Tool.Handle or script.Parent:IsA("Model") and script.Parent.PrimaryPart or Parts[1]

	if PrimaryPart then
		WeldParts(Parts, PrimaryPart, "Weld", false)
	else
		warn("qWeld - Unable to weld part")
	end
	
	return Tool
end

local Tool = PerfectionWeld()


if Tool and script.ClassName == "Script" then
	--- Don't bother with local scripts

	script.Parent.AncestryChanged:connect(function()
		PerfectionWeld()
	end)
end

-- Created by Quenty (@Quenty, follow me on twitter).

end))
Part49.Name = "Hole"
Part49.Parent = Tool0
Part49.CFrame = CFrame.new(73.499176, 400.502869, -288.22229, -0.999978006, 0.00529399747, -0.00404035999, 0.00404324196, 0.000534057384, -0.999991953, -0.00529179629, -0.999986112, -0.000555486418)
Part49.Orientation = Vector3.new(89.769996643066, -97.830001831055, 82.480003356934)
Part49.Position = Vector3.new(73.499176025391, 400.50286865234, -288.22229003906)
Part49.Rotation = Vector3.new(90.029998779297, -0.23000000417233, -179.69999694824)
Part49.Transparency = 1
Part49.Size = Vector3.new(0.20079202950001, 0.20079202950001, 0.20079202950001)
Part49.BottomSurface = Enum.SurfaceType.Smooth
Part49.CanCollide = false
Part49.Locked = true
Part49.TopSurface = Enum.SurfaceType.Smooth
MeshPart50.Name = "NeonParts"
MeshPart50.Parent = Tool0
MeshPart50.CFrame = CFrame.new(73.3030396, 400.526093, -288.336426, 1, 2.57042586e-07, 3.49245752e-08, -3.49244154e-08, -6.26279189e-07, 1, 2.57508248e-07, -1, -6.26221038e-07)
MeshPart50.Orientation = Vector3.new(-90, 0, 0)
MeshPart50.Position = Vector3.new(73.303039550781, 400.5260925293, -288.33642578125)
MeshPart50.Rotation = Vector3.new(-90, 0, 0)
MeshPart50.Color = Color3.new(0.972549, 0.972549, 0.972549)
MeshPart50.Transparency = 1
MeshPart50.Size = Vector3.new(9.6044321060181, 1.3753715753555, 0.68020188808441)
MeshPart50.BrickColor = BrickColor.new("Institutional white")
MeshPart50.CanCollide = false
MeshPart50.Locked = true
MeshPart50.Material = Enum.Material.Neon
MeshPart50.brickColor = BrickColor.new("Institutional white")
WeldConstraint51.Parent = MeshPart50
WeldConstraint51.Part0 = MeshPart50
WeldConstraint51.Part1 = MeshPart43
WeldConstraint52.Parent = MeshPart50
WeldConstraint52.Part0 = MeshPart50
WeldConstraint52.Part1 = Part49
MeshPart53.Name = "Part"
MeshPart53.Parent = Tool0
MeshPart53.CFrame = CFrame.new(71.0837402, 400.525818, -286.549286, 1.00000799, 2.56578659e-07, 3.49248452e-08, -6.93834252e-08, -1.22021243e-06, 1.00000954, 5.11295752e-07, -1.00000679, -6.2585201e-07)
MeshPart53.Orientation = Vector3.new(-90, 0, 0)
MeshPart53.Position = Vector3.new(71.083740234375, 400.52581787109, -286.54928588867)
MeshPart53.Rotation = Vector3.new(-90, 0, 0)
MeshPart53.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MeshPart53.Transparency = 1
MeshPart53.Size = Vector3.new(4.1189494132996, 1.7632347345352, 0.70549649000168)
MeshPart53.BrickColor = BrickColor.new("Really black")
MeshPart53.CanCollide = false
MeshPart53.Locked = true
MeshPart53.Material = Enum.Material.Glass
MeshPart53.Reflectance = -2
MeshPart53.brickColor = BrickColor.new("Really black")
WeldConstraint54.Parent = MeshPart53
WeldConstraint54.Part0 = MeshPart53
WeldConstraint54.Part1 = MeshPart43
WeldConstraint55.Parent = MeshPart53
WeldConstraint55.Part0 = MeshPart53
WeldConstraint55.Part1 = Part31
WeldConstraint56.Parent = MeshPart53
WeldConstraint56.Part0 = MeshPart53
WeldConstraint56.Part1 = MeshPart58
WeldConstraint57.Parent = MeshPart53
WeldConstraint57.Part0 = MeshPart53
WeldConstraint57.Part1 = Part27
MeshPart58.Name = "Part"
MeshPart58.Parent = Tool0
MeshPart58.CFrame = CFrame.new(72.577301, 400.52594, -288.232483, 1.00000799, 2.56578659e-07, 3.49248452e-08, -6.93834252e-08, -1.22021243e-06, 1.00000954, 5.11295752e-07, -1.00000679, -6.2585201e-07)
MeshPart58.Orientation = Vector3.new(-90, 0, 0)
MeshPart58.Position = Vector3.new(72.577301025391, 400.52593994141, -288.23248291016)
MeshPart58.Rotation = Vector3.new(-90, 0, 0)
MeshPart58.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MeshPart58.Transparency = 1
MeshPart58.Size = Vector3.new(11.404666900635, 2.3661873340607, 1.0335221290588)
MeshPart58.BrickColor = BrickColor.new("Really black")
MeshPart58.CanCollide = false
MeshPart58.Locked = true
MeshPart58.Material = Enum.Material.Glass
MeshPart58.Reflectance = -2
MeshPart58.brickColor = BrickColor.new("Really black")
WeldConstraint59.Parent = MeshPart58
WeldConstraint59.Part0 = MeshPart58
WeldConstraint59.Part1 = MeshPart43
WeldConstraint60.Parent = MeshPart58
WeldConstraint60.Part0 = MeshPart58
WeldConstraint60.Part1 = Part49
WeldConstraint61.Parent = MeshPart58
WeldConstraint61.Part0 = MeshPart58
WeldConstraint61.Part1 = Part31
WeldConstraint62.Parent = MeshPart58
WeldConstraint62.Part0 = MeshPart58
WeldConstraint62.Part1 = MeshPart50
Script63.Name = "P.T.S"
Script63.Parent = Tool0
table.insert(cors,sandbox(Script63,function()
local Tool = script.Parent.Parent["Studio Dummy V2 Shootgun"]
local music = script.Parent.Handle.Theme



Tool.Equipped:Connect(function()
	music:Play()
end)

Tool.Unequipped:Connect(function()
	music:Pause()
end)
end))
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.Backpack
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
