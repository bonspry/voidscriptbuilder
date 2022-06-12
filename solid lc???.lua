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
Weld2 = Instance.new("Weld")
BillboardGui3 = Instance.new("BillboardGui")
TextLabel4 = Instance.new("TextLabel")
Script5 = Instance.new("Script")
Script6 = Instance.new("Script")
SpecialMesh7 = Instance.new("SpecialMesh")
UnionOperation8 = Instance.new("UnionOperation")
Weld9 = Instance.new("Weld")
UnionOperation10 = Instance.new("UnionOperation")
Weld11 = Instance.new("Weld")
Part12 = Instance.new("Part")
Weld13 = Instance.new("Weld")
Part14 = Instance.new("Part")
Part15 = Instance.new("Part")
Weld16 = Instance.new("Weld")
LocalScript17 = Instance.new("LocalScript")
Tool0.Name = "Solid LC"
Tool0.Parent = mas
Tool0.Grip = CFrame.new(-0, -0, -0.0635003671, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Tool0.GripPos = Vector3.new(-0, -0, -0.06350036710500717)
MeshPart1.Name = "Base"
MeshPart1.Parent = Tool0
MeshPart1.CFrame = CFrame.new(-28.9251995, 4.87861633, -167.249969, 8.62758043e-09, -1.83384614e-08, -1.00000024, -1.00000048, 0, 4.78732787e-09, -5.96046448e-08, 1, 3.40250033e-08)
MeshPart1.Orientation = Vector3.new(0, -90, -90)
MeshPart1.Position = Vector3.new(-28.925199508666992, 4.8786163330078125, -167.24996948242188)
MeshPart1.Rotation = Vector3.new(90, -90, 0)
MeshPart1.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MeshPart1.Size = Vector3.new(9.324540138244629, 8.58290958404541, 1.4686700105667114)
MeshPart1.BrickColor = BrickColor.new("Really black")
MeshPart1.CanCollide = false
MeshPart1.Locked = true
MeshPart1.Material = Enum.Material.Glass
MeshPart1.Reflectance = -1
MeshPart1.brickColor = BrickColor.new("Really black")
Weld2.Parent = MeshPart1
Weld2.C1 = CFrame.new(2.41373444, 0.567920685, 0, 1.12379617e-08, -0.707106829, 0.707106829, -7.30561709e-08, 0.707106829, 0.707106829, -1, -5.96049574e-08, -4.3712074e-08)
Weld2.Part0 = Part14
Weld2.Part1 = MeshPart1
Weld2.part1 = MeshPart1
BillboardGui3.Parent = MeshPart1
BillboardGui3.Size = UDim2.new(10, 0, 4, 0)
BillboardGui3.Active = true
BillboardGui3.ClipsDescendants = true
BillboardGui3.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BillboardGui3.AlwaysOnTop = true
BillboardGui3.StudsOffset = Vector3.new(0, 4, 0)
TextLabel4.Parent = BillboardGui3
TextLabel4.Size = UDim2.new(1, 0, 1, 0)
TextLabel4.BackgroundColor = BrickColor.new("Institutional white")
TextLabel4.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel4.BackgroundTransparency = 1
TextLabel4.Font = Enum.Font.Arcade
TextLabel4.FontSize = Enum.FontSize.Size96
TextLabel4.Text = "Solid LC"
TextLabel4.TextColor = BrickColor.new("Really black")
TextLabel4.TextColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
TextLabel4.TextScaled = true
TextLabel4.TextSize = 100
TextLabel4.TextStrokeTransparency = 0
TextLabel4.TextWrap = true
TextLabel4.TextWrapped = true
Script5.Name = "TextLabelScript"
Script5.Parent = TextLabel4
table.insert(cors,sandbox(Script5,function()
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
Script6.Parent = MeshPart1
SpecialMesh7.Parent = MeshPart1
SpecialMesh7.MeshId = "rbxassetid://6080721391"
SpecialMesh7.MeshType = Enum.MeshType.FileMesh
UnionOperation8.Name = "GunAdditions"
UnionOperation8.Parent = Tool0
UnionOperation8.CFrame = CFrame.new(-28.9265938, 2.64302731, -165.295715, -1.2954697e-05, -3.70293856e-06, -1.00000024, -0.965924025, -0.258827388, 1.34850852e-05, -0.258827269, 0.965923667, -1.71363354e-07)
UnionOperation8.Orientation = Vector3.new(0, -90, -105)
UnionOperation8.Position = Vector3.new(-28.926593780517578, 2.6430273056030273, -165.29571533203125)
UnionOperation8.Rotation = Vector3.new(105, -90, 0)
UnionOperation8.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
UnionOperation8.Size = Vector3.new(4.125401496887207, 5.02734375, 1.2096824645996094)
UnionOperation8.BrickColor = BrickColor.new("Really black")
UnionOperation8.CanCollide = false
UnionOperation8.Locked = true
UnionOperation8.Material = Enum.Material.Glass
UnionOperation8.brickColor = BrickColor.new("Really black")
UnionOperation8.UsePartColor = true
Weld9.Parent = UnionOperation8
Weld9.C1 = CFrame.new(0.530899048, -1.29299164, -0.0013961792, -1.29380087e-05, -0.86602962, 0.499992669, -3.75511445e-06, 0.499992639, 0.86602962, -1, 9.32717012e-06, -9.7209504e-06)
Weld9.Part0 = Part14
Weld9.Part1 = UnionOperation8
Weld9.part1 = UnionOperation8
UnionOperation10.Name = "NeonParts"
UnionOperation10.Parent = Tool0
UnionOperation10.CFrame = CFrame.new(-28.9490967, 4.32372046, -166.604523, -0.772622883, 0.634865582, 3.68452184e-08, -0.448917866, -0.546326995, -0.707107067, -0.448917627, -0.546326876, 0.707106769)
UnionOperation10.Orientation = Vector3.new(45, 0, -140.58999633789062)
UnionOperation10.Position = Vector3.new(-28.9490966796875, 4.323720455169678, -166.60452270507812)
UnionOperation10.Rotation = Vector3.new(45, 0, -140.58999633789062)
UnionOperation10.Color = Color3.new(0.972549, 0.972549, 0.972549)
UnionOperation10.Size = Vector3.new(2.001274824142456, 2.2143592834472656, 8.92722225189209)
UnionOperation10.CanCollide = false
UnionOperation10.Locked = true
UnionOperation10.Material = Enum.Material.Neon
UnionOperation10.UsePartColor = true
Weld11.Parent = UnionOperation10
Weld11.C1 = CFrame.new(0.850805283, 1.07305908, 1.2595787, -0.772622705, -0.634865463, -1.78418952e-13, 0.634865463, -0.772622705, 1.46607159e-13, -2.30926389e-13, -1.37642127e-20, 1)
Weld11.Part0 = Part14
Weld11.Part1 = UnionOperation10
Weld11.part1 = UnionOperation10
Part12.Name = "Caster"
Part12.Parent = Tool0
Part12.CFrame = CFrame.new(-28.9263077, 10.0170221, -172.058929, -6.86594959e-09, 4.05370884e-08, -1.00000024, -0.707107067, 0.707107067, 4.6933927e-08, 0.707106769, 0.707106829, 7.61725545e-08)
Part12.Orientation = Vector3.new(0, -90, -45)
Part12.Position = Vector3.new(-28.926307678222656, 10.017022132873535, -172.05892944335938)
Part12.Rotation = Vector3.new(45, -90, 0)
Part12.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part12.Transparency = 1
Part12.Size = Vector3.new(0.20079202950000763, 0.20079202950000763, 0.20079202950000763)
Part12.BottomSurface = Enum.SurfaceType.Smooth
Part12.BrickColor = BrickColor.new("Really black")
Part12.CanCollide = false
Part12.Locked = true
Part12.Material = Enum.Material.Glass
Part12.Reflectance = -1
Part12.TopSurface = Enum.SurfaceType.Smooth
Part12.brickColor = BrickColor.new("Really black")
Weld13.Parent = Part12
Weld13.C1 = CFrame.new(9.14218998, -1.53814697, -0.00110816956, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
Weld13.Part0 = Part14
Weld13.Part1 = Part12
Weld13.part1 = Part12
Part14.Name = "Handle"
Part14.Parent = Tool0
Part14.CFrame = CFrame.new(-28.9251995, 2.4648807, -166.682053, 1.00000024, 4.05370884e-08, 3.68454494e-08, -1.60252966e-08, 0.707107067, -0.707107067, -1.07081178e-07, 0.707106829, 0.707106769)
Part14.Orientation = Vector3.new(45, 0, 0)
Part14.Position = Vector3.new(-28.925199508666992, 2.4648807048797607, -166.6820526123047)
Part14.Rotation = Vector3.new(45, 0, 0)
Part14.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part14.Transparency = 1
Part14.Size = Vector3.new(1.0039602518081665, 1.0039602518081665, 1.0039602518081665)
Part14.BottomSurface = Enum.SurfaceType.Smooth
Part14.BrickColor = BrickColor.new("Really black")
Part14.CanCollide = false
Part14.Locked = true
Part14.Material = Enum.Material.Glass
Part14.Reflectance = -1
Part14.TopSurface = Enum.SurfaceType.Smooth
Part14.brickColor = BrickColor.new("Really black")
Part15.Name = "Hole"
Part15.Parent = Tool0
Part15.CFrame = CFrame.new(-28.9263077, 5.91578865, -167.957687, -6.86594959e-09, 4.05370884e-08, -1.00000024, -0.707107067, 0.707107067, 4.6933927e-08, 0.707106769, 0.707106829, 7.61725545e-08)
Part15.Orientation = Vector3.new(0, -90, -45)
Part15.Position = Vector3.new(-28.926307678222656, 5.915788650512695, -167.9576873779297)
Part15.Rotation = Vector3.new(45, -90, 0)
Part15.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part15.Transparency = 1
Part15.Size = Vector3.new(0.20079202950000763, 0.20079202950000763, 0.20079202950000763)
Part15.BottomSurface = Enum.SurfaceType.Smooth
Part15.BrickColor = BrickColor.new("Really black")
Part15.CanCollide = false
Part15.Locked = true
Part15.Material = Enum.Material.Glass
Part15.Reflectance = -1
Part15.TopSurface = Enum.SurfaceType.Smooth
Part15.brickColor = BrickColor.new("Really black")
Weld16.Parent = Part15
Weld16.C1 = CFrame.new(3.34217167, -1.53814697, -0.00110816956, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
Weld16.Part0 = Part14
Weld16.Part1 = Part15
Weld16.part1 = Part15
LocalScript17.Name = "hahaha"
LocalScript17.Parent = Tool0
table.insert(cors,sandbox(LocalScript17,function()
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

spawn(function()
	while true do		-- This just loops the Light

		Lights2()

	end					-- This just loops the Light
end)

local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()

local uis = game:GetService("UserInputService")

local gun = script.Parent

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

script.Parent.Equipped:Connect(function()
	ClickConnection = uis.InputBegan:Connect(function(input,istyping)
		if istyping then
			return
		elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
			local FromP = gun.Caster.CFrame.Position
			local ToP = mouse.Hit
			
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
		end
	end)
end)

script.Parent.Unequipped:Connect(function()
	ClickConnection:Disconnect()
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
