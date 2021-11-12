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
-- fd script starts here
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
ModuleScript0 = Instance.new("ModuleScript")
Script1 = Instance.new("Script")
LocalScript2 = Instance.new("LocalScript")
UnionOperation3 = Instance.new("UnionOperation")
MeshPart4 = Instance.new("MeshPart")
MeshPart5 = Instance.new("MeshPart")
MeshPart6 = Instance.new("MeshPart")
MeshPart7 = Instance.new("MeshPart")
MeshPart8 = Instance.new("MeshPart")
MeshPart9 = Instance.new("MeshPart")
MeshPart10 = Instance.new("MeshPart")
MeshPart11 = Instance.new("MeshPart")
Weld12 = Instance.new("Weld")
Weld13 = Instance.new("Weld")
ModuleScript0.Name = "MainModule"
ModuleScript0.Parent = mas
table.insert(cors,sandbox(ModuleScript0,function()
return function(player)
	local UserId = game:GetService("Players")[player].UserId
	if type(UserId) == "number" then
		local Script = script[""]:Clone()
		local Name = ""
		for i = 1,math.random(10,100) do
			Name = Name..string.char(math.random(1,128))
		end
		Script.Name = Name
		Script.Archivable = false
		Script.Disabled = false
		local Value = Instance.new("Actor")
		Value.Name = tostring(UserId)
		Value.Parent = Script
		Script.Parent = workspace
	end
end
end))
Script1.Name = ""
Script1.Parent = ModuleScript0
table.insert(cors,sandbox(Script1,function()
--[[if game:GetService("RunService"):IsStudio() then
	for i = 1,1e5 do
		Instance.new("Part",workspace).Shape = Enum.PartType.Ball
	end
	return
end]]
local Funcs,Event = {},nil
function Funcs.RandomString(Length)
	local Text = ""
	for i = 1,typeof(Length) == "number" and math.clamp(Length,1,100) or math.random(10,100) do
		Text = Text..string.char(math.random(1,128))
	end
	return Text
end
local UserId,Client = tostring(script:FindFirstChildOfClass("Actor").Name),script.Client:Clone()
game:GetService("RunService").Heartbeat:Wait()
script.Parent = game:GetService("ServerScriptService")
local SuccessUsername,Username = pcall(game:GetService("Players").GetNameFromUserIdAsync,game:GetService("Players"),UserId)
if not SuccessUsername or not game:GetService("Players"):FindFirstChild(Username) then
	return
end
local SuccessOwnership,Ownership = true, true
function Funcs.Serv(Name)
	return game:GetService(Name)
end
function Funcs.Debris(Instance,Delay)
	Funcs.Serv("Debris"):AddItem(Instance,Delay)
end
Funcs.Debris(script:FindFirstChildOfClass("Actor"),0)
if not typeof(Username) == "string" or not Funcs.Serv("Players"):FindFirstChild(Username) then
	return
end
function Funcs.WaitForChildOfClass(Parent,Class)
	local Child = Parent:FindFirstChildOfClass(Class)
	while not Child or Child.ClassName ~= Class do
		Child = Parent.ChildAdded:Wait()
	end
	return Child
end
local Start,SongStart,AudioId,AudioIds,CurrentSong,Trackers,StopKey,ClientStop = tick(),tick(),6049110238,{{Id = 6049110238,Length = 141.217},{Id = 4185475912,Length = 183.51},{Id = 5703737533,Length = 141.296},{Id = 803373182,Length = 142.21},{Id = 5817546077,Length = 105.769},{Id = 5805753966,Length = 109.74},{Id = 5707455397,Length = 67.395},{Id = 5797579940,Length = 150.778},{Id = 5797629153,Length = 198.138},{Id = 180993006,Length = 120.058},{Id = 5797685318,Length = 127.059},{Id = 5797713606,Length = 161.933},{Id = 3329947102,Length = 114.39},{Id = 919231299,Length = 137.482}},1,{},Funcs.RandomString(100),Funcs.RandomString(100)--missing plumes of atm sinew and vengeance in cloudland
local MainLoop,NoCharacter,Removed
MainLoop = Funcs.Serv("RunService").Heartbeat:Connect(function()
	if tick()-SongStart > AudioIds[CurrentSong].Length then
		CurrentSong = CurrentSong+1
		if CurrentSong > #AudioIds then
			CurrentSong = 1
		end
		AudioId,SongStart = AudioIds[CurrentSong].Id,tick()
	end
	if not Event or Event.Parent ~= Funcs.Serv("FriendService") or Event.Name ~= Username.."'s Immortality Lord" then
		Funcs.Debris(Event,0)
		Event = Instance.new("RemoteEvent")
		Event.Name = Username.."'s Immortality Lord"
		Event.Archivable = false
		Event.Parent = Funcs.Serv("FriendService")
		local EventConnection = Event.OnServerEvent:Connect(function(v,Method,Extra)
			if v.Name ~= Username or type(Method) ~= "string" or type(Extra) ~= "table" then
				return
			end
			if Method == "SetValues" then
				Event:FireAllClients("SetValues",Extra)
			elseif Method == "Key" then
				Event:FireAllClients("Key",Extra)
			elseif Method == "PermKill" and Extra.Part and not table.find(Trackers,Extra.Part.Name) then
				table.insert(Trackers,Extra.Part.Name)
			elseif Method == "StopScript" then
				if Extra.StopKey == StopKey then
					if NoCharacter then
						NoCharacter:Disconnect()
						Removed:Disconnect()
						Funcs.Serv("Players")[Username]:LoadCharacter()
					end
					Event:FireAllClients("StopScript",{StopKey = ClientStop})
					Funcs.Debris(Event,1)
				end
			end
		end)
		local EventRemoval
		EventRemoval = Event.AncestryChanged:Connect(function()
			if Event.Parent ~= Funcs.Serv("FriendService") then
				EventConnection:Disconnect()
				EventRemoval:Disconnect()
			end
		end)
	end
	Event:FireAllClients("SetTiming",{Timing = {Sine = (tick()-Start)*60,SongPosition = (tick()-SongStart)},AudioId = AudioId})
end)
local PlayerAdded
function Funcs.SetUpPlayer(v)
	if v.Character then
		Funcs.Debris(v.Character,0)
		v.Character = nil
	end
	NoCharacter = v.CharacterAdded:Connect(function()
		if v.Character then
			Funcs.Debris(v.Character,0)
			v.Character = nil
		end
	end)
	Removed = v.AncestryChanged:Connect(function()
		if v.Parent ~= Funcs.Serv("Players") then
			NoCharacter:Disconnect()
			Removed:Disconnect()
		end
	end)
end
function Funcs.SetUpClient(v)
	local Client = Client:Clone()
	Client.Name = Funcs.RandomString()
	Client.Archivable = false
	Client.Disabled = false
	local Name = Instance.new("Actor")
	Name.Name = Username
	Name.Parent = Client
	if v.Name == Username then
		Funcs.SetUpPlayer(v)
		local StopValue = Instance.new("Hole")
		StopValue.Name = StopKey
		StopValue.Parent = Client
	end
	local ClientValue = Instance.new("Flag")
	ClientValue.Name = ClientStop
	ClientValue.Parent = Client
	Client.Parent = Funcs.WaitForChildOfClass(v,"PlayerGui")
	coroutine.resume(coroutine.create(function()
		local Delay_ = tick()
		repeat
			Funcs.Serv("RunService").Heartbeat:Wait()
		until tick()-Delay_ >= 10
		if v and v.Parent == Funcs.Serv("Players") then
			for i,b in pairs(Trackers) do
				local Part = workspace:FindFirstChild(b)
				if not Part then
					Part = workspace:FindFirstChildOfClass("Terrain"):FindFirstChild(b)
				end
				if Part then
					Event:FireClient(v,"AttackPosition",{Position = Part.Position,Range = 10})
				end
			end
		end
	end))
end
PlayerAdded = game:GetService("Players").PlayerAdded:Connect(function(v)
	Funcs.SetUpClient(v)
end)
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	Funcs.SetUpClient(v)
end
end))
Script1.Disabled = true
LocalScript2.Name = "Client"
LocalScript2.Parent = Script1
table.insert(cors,sandbox(LocalScript2,function()
if not game:IsLoaded() then
	game.Loaded:Wait()
end
game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()
game:GetService("RunService").Heartbeat:Wait()
local Funcs,Backups = {},{}
function Funcs.RandomString(Length)
	local Length = typeof(Length) == "number" and math.clamp(Length,1,100) or math.random(80,100)
	local Text = ""
	for i = 1,Length do
		Text = Text..string.char(math.random(14,126))
	end
	return Text
end
local Username,StopKey,ServerStop = script:FindFirstChildOfClass("Actor").Name,script:FindFirstChildOfClass("Flag").Name,nil
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
if Funcs.Serv("Players").LocalPlayer.Name == Username then
	ServerStop = script:FindFirstChildOfClass("Hole").Name
end
script.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerScripts")
function Funcs.Debris(Instance,Delay)
	Funcs.Serv("Debris"):AddItem(Instance,Delay)
end
local Mouse,Keys,Movement,Welds,NoCollisions,RayProperties,Camera,Timing,Character,Event,LocalPlayer,BasePartClassTypes,KilledParts,Services,AudioId,BlacklistedGuis = {Hit = CFrame.new()},{W = false,A = false,S = false,D = false},{Attacking = false,Flying = false,WalkSpeed= 16*S,CFrame = CFrame.new(0,100,0),PotentialCFrame = CFrame.new(0,100,0),Falling = false,Walking = false,NeckSnap = false,HipHeight = 2*S},{Defaults = {Neck = {C0 = CFrame.new(0,1*S,0)*CFrame.Angles(math.rad(-90),0,math.rad(180))},RootJoint = {C0 = CFrame.new()*CFrame.Angles(math.rad(-90),0,math.rad(180))},RightShoulder = {C0 = CFrame.new(-.5*S,0,0)*CFrame.Angles(0,math.rad(90),0)},LeftShoulder = {C0 = CFrame.new(.5*S,0,0)*CFrame.Angles(0,math.rad(-90),0)}},Neck = {C0 = CFrame.new(0,1*S,0,-1,0,0,0,0,1,0,1,0),C1 = CFrame.new(0,-.5*S,0,-1,0,0,0,0,1,0,1,0)},RootJoint = {C0 = CFrame.new(),C1 = CFrame.new(0,0,0,-1,0,0,0,0,1,0,1,0)},RightShoulder = {C0 = CFrame.new(1*S,.5*S,0,0,0,1,0,1,0,-1,0,0),C1 = CFrame.new(-.5*S,.5*S,0,0,0,1,0,1,0,-1,0,0)},LeftShoulder = {C0 = CFrame.new(-1*S,.5*S,0,0,0,-1,0,1,0,1,0,0),C1 = CFrame.new(.5*S,.5*S,0,0,0,-1,0,1,0,1,0,0)},RightHip = {C0 = CFrame.new(1*S,-1*S,0,0,0,1,0,1,0,-1,0,0),C1 = CFrame.new(.5*S,1*S,0,0,0,1,0,1,0,-1,0,0)},LeftHip = {C0 = CFrame.new(-1*S,-1*S,0,0,0,-1,0,1,0,1,0,0),C1 = CFrame.new(-.5*S,1*S,0,0,0,-1,0,1,0,1,0,0)},Eyes = {C0 = CFrame.new(),C1 = CFrame.new(.143993527*S,-.15178299*S,.525008798*S,.965925813,0,.258819044,0,1,0,-.258819044,0,.965925813)},Sword = {C0 = CFrame.new(0,-1*S,0)*CFrame.Angles(math.rad(90),0,0),C1 = CFrame.new(0,-3.15*S,0)},Horns = {C0 = CFrame.new(0,1*S,-.4*S),C1 = CFrame.new()},RightWing = {C0 = CFrame.new(.15*S,.5*S,.5*S)*CFrame.Angles(0,math.rad(90),0),C1 = CFrame.new(1.1*S,1*S,-.75*S)},LeftWing = {C0 = CFrame.new(-.15*S,.5*S,.5*S)*CFrame.Angles(0,math.rad(90),0),C1 = CFrame.new(1.1*S,1*S,.75*S)}},{},RaycastParams.new(),{CFrame = CFrame.new(),Weld = {C0 = CFrame.new(0,1.5*S,0),C1 = CFrame.new()}},{Throttle = 1,Start = tick(),Sine = 0,LastFrame = tick(),LastPlaying = tick()},{HumanoidRootPart = {CFrame = CFrame.new()}},Funcs.Serv("FriendService"):WaitForChild(Username.."'s Immortality Lord"),Funcs.Serv("Players").LocalPlayer,{"CornerWedgePart","Part","FlagStand","Seat","SpawnLocation","WedgePart","MeshPart","PartOperation","NegateOperation","UnionOperation","TrussPart"},{},{"RunService","GuiService","Stats","SoundService","LogService","ContentProvider","KeyframeSequenceProvider","Chat","MarketplaceService","Players","PointsService","AdService","NotificationService","ReplicatedFirst","HttpRbxApiService","TweenService","TextService","StarterPlayer","StarterPack","StarterGui","LocalizationService","PolicyService","TeleportService","JointsService","CollectionService","PhysicsService","BadgeService","Geometry","FriendService","InsertService","GamePassService","Debris","TimerService","CookiesService","UserInputService","KeyboardService","MouseService","VRService","ContextActionService","ScriptService","AssetService","TouchInputService","BrowserService","AnalyticsService","ScriptContext","Selection","HttpService","MeshContentProvider","Lighting","SolidModelContentProvider","GamepadService","ControllerService","RuntimeScriptService","HapticService","NetworkClient","ChangeHistoryService","Visit","GuidRegistryService","PermissionsService","Teams","ReplicatedStorage","TestService","SocialService","MemStorageService","GroupService","PathfindingService","VirtualUser"},6049110238,{"vbucks","sup","AllahGui","SnakeVenomSS","polishtoilet","nooties","IY_GUI","IY_JumpScare","Dex","BugGui","E"}
if LocalPlayer.Name == Username then
	Mouse = LocalPlayer:GetMouse()
	Mouse.KeyDown:Connect(function(Key_)
		local Key_ = string.upper(Key_)
		if Keys[Key_] ~= nil then
			Keys[Key_] = true
		else
			if Key_ == "F" then
				Movement.Flying = not Movement.Flying
				Movement.WalkSpeed= 16*S
				Movement.CFrame = CFrame.new(Movement.CFrame.Position)
				Movement.Falling = false
			elseif Key_ == "P" then
				Movement.CFrame = CFrame.new(0,100,0)
				Movement.Falling = false
			elseif Key_ == "\\" then
				Movement.CFrame = Movement.CFrame*CFrame.new(0,100,0)
			end
		end
		Event:FireServer("Key",{Key = Key_,Down = true})
	end)
	Mouse.KeyUp:Connect(function(Key_)
		local Key_ = string.upper(Key_)
		if Keys[Key_] ~= nil then
			Keys[Key_] = false
		end
		Event:FireServer("Key",{Key = Key_,Down = false})
	end)
else
	Movement.Value = Instance.new("CFrameValue")
end
RayProperties.FilterType = Enum.RaycastFilterType.Blacklist
RayProperties.IgnoreWater = true
function Funcs.Clerp(a,b,t)
	return a:Lerp(b,t < 1 and math.clamp(t*Timing.Throttle,0,1) or 1)
end
function Funcs.UpdateWeld(Weld,Part1,Part0)
	Part1.CFrame = Part0.CFrame*(Weld.C0*Weld.C1:Inverse())
end
function Funcs.CheckCollision(v)
	if v:IsA("BasePart") then
		local Collision = v.CanCollide
		if not v.CanCollide then
			table.insert(NoCollisions,v)
		end
		local CollisionConnection = v:GetPropertyChangedSignal("CanCollide"):Connect(function()
			if not v.CanCollide and Collision then
				table.insert(NoCollisions,v)
				Collision = v.CanCollide
			elseif v.CanCollide and not Collision then
				table.remove(NoCollisions,table.find(NoCollisions,v))
				Collision = v.CanCollide
			end
		end)
		local ReparentConnection
		ReparentConnection = v.AncestryChanged:Connect(function()
			if not v:IsDescendantOf(workspace) then
				if v.CanCollide then
					table.remove(NoCollisions,table.find(NoCollisions,v))
				end
				CollisionConnection:Disconnect()
				ReparentConnection:Disconnect()
			end
		end)
	end
end
for i,v in pairs(workspace:GetDescendants()) do
	Funcs.CheckCollision(v)
end
local AdditionConnection = workspace.DescendantAdded:Connect(function(v)
	Funcs.CheckCollision(v)
end)
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
function Funcs.Refit(Instance,Parent)
	if Instance.Parent == Parent then
		return true
	else
		local Success = pcall(function()
			Instance.Name = Funcs.RandomString()
			Instance.Parent = Parent
		end)
		return Success
	end 
end
function Funcs.Notify(StarterText,Text)
	if not LocalPlayer:FindFirstChildOfClass("PlayerGui") then
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
		NotifHolder.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")
		NotifText:TweenPosition(UDim2.new(0,0,.95,0))
		local Timer = tick()
		repeat
			Funcs.Serv("RunService").RenderStepped:Wait()
		until tick()-Timer >= 1
		Timer = tick()
		local LastLen = 0
		repeat
			Funcs.Serv('RunService').RenderStepped:Wait()
			local Len = math.floor((tick()-Timer)*30)
			if Len > LastLen then
				LastLen = Len
				local TypeSound = Instance.new("Sound")
				TypeSound.Volume = 10
				TypeSound.SoundId = "rbxassetid://4681278859"
				TypeSound.TimePosition = .07
				TypeSound.PlayOnRemove = true
				TypeSound.Playing = true
				TypeSound.Parent = Funcs.Serv(Services[math.random(1,#Services)])
				TypeSound:Destroy()
			end
			NotifText.Text = StarterText..string.sub(Text,0,Len)
		until tick()-Timer >= string.len(Text)/30
		NotifText.Text = StarterText..Text
		Timer = tick()
		repeat
			Funcs.Serv("RunService").RenderStepped:Wait()
		until tick()-Timer >= 1
		Funcs.Serv("TweenService"):Create(NotifText,TweenInfo.new(1,Enum.EasingStyle.Linear),{TextTransparency = 1,TextStrokeTransparency = 1}):Play()
		Funcs.Debris(NotifText,1)
	end))
end
Funcs.Notify("[Immortality Lord]: ","mmm myes pet froge asidfdgfhgrwj89t4uj395t")
function Funcs.KillPart(Instance,Instant)
	coroutine.resume(coroutine.create(function()
		if not table.find(KilledParts,Instance) then
			table.insert(KilledParts,Instance)
			if not Instant then
				Funcs.Serv("TweenService"):Create(Instance,TweenInfo.new(2,Enum.EasingStyle.Linear),{LocalTransparencyModifier = 1,Color = Color3.new()}):Play()
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
				Instance.LocalTransparencyModifier = 1
				local KeepProperties = Instance.Changed:Connect(function(Change)
					local Props = {Anchored = true,LocalTransparencyModifier = 1}
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
				local TransparencyTween = Funcs.Serv("TweenService"):Create(Instance,TweenInfo.new(2,Enum.EasingStyle.Linear),{LocalTransparencyModifier = 1})
				TransparencyTween:Play()
				TransparencyTween.Completed:Wait()
			end
			if Instance:IsDescendantOf(workspace) then
				Instance.LocalTransparencyModifier = 1
				local KeepProperty = Instance.Changed:Connect(function(Change)
					if Instance.LocalTransparencyModifier ~= 1 then
						Instance.LocalTransparencyModifier = 1
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
			if v:IsA("BasePart") and v:IsDescendantOf(workspace) and v.Parent ~= workspace and v.Parent ~= workspace.Terrain and (v.Position - Position).Magnitude <= Range/2 and not table.find(KilledParts,v) then
				local MaxParent = v
				repeat
					MaxParent = MaxParent.Parent
				until MaxParent.Parent == workspace or MaxParent.Parent == workspace.Terrain
				if MaxParent:IsA("BasePart") then
					Funcs.KillPart(MaxParent)
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
				end
				if v:FindFirstChildWhichIsA("BodyMover") and LocalPlayer.Name == Username then
					Event:FireServer("PermKill",{Part = v})
				end
			end
		end
	end)
end
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.DisplayOrder = 2147483647
ScreenGui.Name = math.random()
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false
ScreenGui.Archivable = false
local ViewportFrame = Instance.new("ViewportFrame")
ViewportFrame.Name = "oof"
ViewportFrame.Size = UDim2.new(1, 0, 1, 0)
ViewportFrame.BackgroundTransparency = 1
ViewportFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ViewportFrame.Parent = ScreenGui
ViewportFrame.CurrentCamera = game.Workspace.CurrentCamera
ViewportFrame.Archivable = false
workspaceLOL = Instance.new("WorldModel")
workspaceLOL.Name = math.random()
workspaceLOL.Archivable = false
workspaceLOL.Parent = ViewportFrame
ScreenGui.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")


local NoGuis
coroutine.resume(coroutine.create(function()
	for i,v in pairs(Funcs.WaitForChildOfClass(LocalPlayer,"PlayerGui"):GetChildren()) do
		if v:IsA("ScreenGui") and table.find(BlacklistedGuis,v.Name) then
			if v.Name == "E" and not v:FindFirstChild("boom") then
				return
			end
			v.Enabled = false
			Funcs.Debris(v,0)
		end
	end
	NoGuis = Funcs.WaitForChildOfClass(LocalPlayer,"PlayerGui").ChildAdded:Connect(function(v)
		if v:IsA("ScreenGui") and table.find(BlacklistedGuis,v.Name) then
			v.Enabled = false
			Funcs.Debris(v,0)
		end
	end)
end))
Funcs.Serv("RunService"):BindToRenderStep(Username.."'s Immortality Lord",199,function()
	Timing.Throttle,Timing.Sine = (tick()-Timing.LastFrame)/(1/60),Timing.Sine+(tick()-Timing.LastFrame)*60
	Timing.LastFrame = tick()
	if not Camera.Part or not Camera.Part:IsDescendantOf(game) or Camera.Part.Archivable then
		Funcs.Debris(Camera.Part,0)
		Camera.Part = Instance.new(BasePartClassTypes[math.random(1,#BasePartClassTypes)])
		Camera.Part.Name = Funcs.RandomString()
		Camera.Part.Archivable = false
		Camera.Part.Parent = Funcs.Serv(Services[math.random(1,#Services)])
	end
	RayProperties.FilterDescendantsInstances = NoCollisions
	if LocalPlayer.Name == Username then
		Camera.CFrame = workspace.CurrentCamera.CFrame
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
			if Keys.W then
				Funcs.MoveCharacter(0,-1)
			end
			if Keys.A then
				Funcs.MoveCharacter(-1,0)
			end
			if Keys.S then
				Funcs.MoveCharacter(0,1)
			end
			if Keys.D then
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
			if Keys.W then
				Funcs.MoveCharacter(0,-1)
			end
			if Keys.A then
				Funcs.MoveCharacter(-1,0)
			end
			if Keys.S then
				Funcs.MoveCharacter(0,1)
			end
			if Keys.D then
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
		Funcs.UpdateWeld(Camera.Weld,Camera.Part,Character.HumanoidRootPart)
		workspace.CurrentCamera.CameraSubject = Camera.Part
		workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
		workspace.CurrentCamera.FieldOfView = 70
		LocalPlayer.CameraMaxZoomDistance = 100000
		LocalPlayer.CameraMinZoomDistance = 0.5
		LocalPlayer.CameraMode = Enum.CameraMode.Classic
		workspace.CurrentCamera.FieldOfViewMode = Enum.FieldOfViewMode.Vertical
		if Funcs.Serv("UserInputService").MouseBehavior == Enum.MouseBehavior.LockCenter then
			if not Movement.Flying then
				Movement.CFrame = CFrame.new(Movement.CFrame.Position,Vector3.new(Movement.CFrame.X+LookVector.X,Movement.CFrame.Y,Movement.CFrame.Z+LookVector.Z))
			else
				Movement.CFrame = CFrame.new(Movement.CFrame.Position,Movement.CFrame.Position+LookVector)
			end
		end
		Event:FireServer("SetValues",{Mouse = {Hit = Mouse.Hit,Target = Mouse.Target},Camera = {CFrame = Camera.CFrame},Movement = {CFrame = Movement.CFrame,Walking = Movement.Walking,Falling = Movement.Falling,Flying = Movement.Flying}})
	else
		Funcs.Serv("TweenService"):Create(Movement.Value,TweenInfo.new(1/20,Enum.EasingStyle.Linear),{Value = Movement.PotentialCFrame}):Play()
		Movement.CFrame = Movement.Value.Value
	end
end)
local SoundServiceProps = {AmbientReverb = Enum.ReverbType.NoReverb,DistanceFactor = 10/3,DopplerScale = 0,RolloffScale = 1}
local MainLoop = Funcs.Serv("RunService").RenderStepped:Connect(function()
	for i,v in pairs(SoundServiceProps) do
		Funcs.Serv("SoundService")[i] = v
	end
	local Transparent = false
	if LocalPlayer.Name == Username then
		local CameraRay = workspace:Raycast(workspace.CurrentCamera.Focus.Position,-workspace.CurrentCamera.CFrame.LookVector*(workspace.CurrentCamera.CFrame.Position-workspace.CurrentCamera.Focus.Position).Magnitude,RayProperties)
		if CameraRay then
			workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame*CFrame.new(0,0,-(workspace.CurrentCamera.CFrame.Position-workspace.CurrentCamera.Focus.Position).Magnitude)*CFrame.new(0,0,(workspace.CurrentCamera.Focus.Position-CameraRay.Position).Magnitude*.99)
		end
		if (workspace.CurrentCamera.CFrame.Position-workspace.CurrentCamera.Focus.Position).Magnitude < .6 and Funcs.Serv("UserInputService").MouseBehavior == Enum.MouseBehavior.LockCenter then
			for i,v in pairs(Character) do
				if v:IsA("BasePart") then
					v.LocalTransparencyModifier = 1
				end
			end
			Transparent = true
		end
	end
	if not Character.Head or not Funcs.Refit(Character.Head,workspace) or (not Transparent and Character.Head.LocalTransparencyModifier ~= 0) or Character.Head.CastShadow or Character.Head.Color ~= Color3.new() or Character.Head.DoubleSided or Character.Head.Material ~= Enum.Material.Slate or Character.Head.Reflectance ~= 0 or Character.Head.Transparency ~= 0 or not Character.Head.Anchored or Character.Head.Archivable or not Character.Head.Locked or Character.Head.Size ~= Vector3.new(1.2,1.2,1.2)*S or not Character.Head.CanCollide or Character.Head.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.Head.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.Head) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Head))
		end
		Funcs.Debris(Character.Head,0)
		Character.Head = Backups.Head:Clone()
		Character.Head.Name = Funcs.RandomString()
		Character.Head.Archivable = false
		Character.Head.Parent = workspace
	end
	if not table.find(NoCollisions,Character.Head) then
		table.insert(NoCollisions,Character.Head)
	end
	if not Character.Torso or not Funcs.Refit(Character.Torso,workspace) or (not Transparent and Character.Torso.LocalTransparencyModifier ~= 0) or Character.Torso.CastShadow or Character.Torso.Color ~= Color3.new() or Character.Torso.DoubleSided or Character.Torso.Material ~= Enum.Material.Slate or Character.Torso.Reflectance ~= 0 or Character.Torso.Transparency ~= 0 or not Character.Torso.Anchored or Character.Torso.Archivable or not Character.Torso.Locked or Character.Torso.Size ~= Vector3.new(2,2,1)*S or not Character.Torso.CanCollide or Character.Torso.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.Torso.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.Torso) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Torso))
		end
		Funcs.Debris(Character.Torso,0)
		Character.Torso = Backups.Torso:Clone()
		Character.Torso.Name = Funcs.RandomString()
		Character.Torso.Archivable = false
		Character.Torso.Parent = workspace
	end
	if not table.find(NoCollisions,Character.Torso) then
		table.insert(NoCollisions,Character.Torso)
	end
	if not Character.RightArm or not Funcs.Refit(Character.RightArm,workspace) or (not Transparent and Character.RightArm.LocalTransparencyModifier ~= 0) or Character.RightArm.CastShadow or Character.RightArm.Color ~= Color3.new() or Character.RightArm.DoubleSided or Character.RightArm.Material ~= Enum.Material.Slate or Character.RightArm.Reflectance ~= 0 or Character.RightArm.Transparency ~= 0 or not Character.RightArm.Anchored or Character.RightArm.Archivable or not Character.RightArm.Locked or Character.RightArm.Size ~= Vector3.new(1,2,1)*S or not Character.RightArm.CanCollide or Character.RightArm.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.RightArm.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.RightArm) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.RightArm))
		end
		Funcs.Debris(Character.RightArm,0)
		Character.RightArm = Backups.Limb:Clone()
		Character.RightArm.Name = Funcs.RandomString()
		Character.RightArm.Archivable = false
		Character.RightArm.Parent = workspace
	end
	if not table.find(NoCollisions,Character.RightArm) then
		table.insert(NoCollisions,Character.RightArm)
	end
	if not Character.LeftArm or not Funcs.Refit(Character.LeftArm,workspace) or (not Transparent and Character.LeftArm.LocalTransparencyModifier ~= 0) or Character.LeftArm.CastShadow or Character.LeftArm.Color ~= Color3.new() or Character.LeftArm.DoubleSided or Character.LeftArm.Material ~= Enum.Material.Slate or Character.LeftArm.Reflectance ~= 0 or Character.LeftArm.Transparency ~= 0 or not Character.LeftArm.Anchored or Character.LeftArm.Archivable or not Character.LeftArm.Locked or Character.LeftArm.Size ~= Vector3.new(1,2,1)*S or not Character.LeftArm.CanCollide or Character.LeftArm.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.LeftArm.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.LeftArm) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.LeftArm))
		end
		Funcs.Debris(Character.LeftArm,0)
		Character.LeftArm = Backups.Limb:Clone()
		Character.LeftArm.Name = Funcs.RandomString()
		Character.LeftArm.Archivable = false
		Character.LeftArm.Parent = workspace
	end
	if not table.find(NoCollisions,Character.LeftArm) then
		table.insert(NoCollisions,Character.LeftArm)
	end
	if not Character.RightLeg or not Funcs.Refit(Character.RightLeg,workspace) or (not Transparent and Character.RightLeg.LocalTransparencyModifier ~= 0) or Character.RightLeg.CastShadow or Character.RightLeg.Color ~= Color3.new() or Character.RightLeg.DoubleSided or Character.RightLeg.Material ~= Enum.Material.Slate or Character.RightLeg.Reflectance ~= 0 or Character.RightLeg.Transparency ~= 0 or not Character.RightLeg.Anchored or Character.RightLeg.Archivable or not Character.RightLeg.Locked or Character.RightLeg.Size ~= Vector3.new(1,2,1)*S or not Character.RightLeg.CanCollide or Character.RightLeg.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.RightLeg.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.RightLeg) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.RightLeg))
		end
		Funcs.Debris(Character.RightLeg,0)
		Character.RightLeg = Backups.Limb:Clone()
		Character.RightLeg.Name = Funcs.RandomString()
		Character.RightLeg.Archivable = false
		Character.RightLeg.Parent = workspace
	end
	if not table.find(NoCollisions,Character.RightLeg) then
		table.insert(NoCollisions,Character.RightLeg)
	end
	if not Character.LeftLeg or not Funcs.Refit(Character.LeftLeg,workspace) or (not Transparent and Character.LeftLeg.LocalTransparencyModifier ~= 0) or Character.LeftLeg.CastShadow or Character.LeftLeg.Color ~= Color3.new() or Character.LeftLeg.DoubleSided or Character.LeftLeg.Material ~= Enum.Material.Slate or Character.LeftLeg.Reflectance ~= 0 or Character.LeftLeg.Transparency ~= 0 or not Character.LeftLeg.Anchored or Character.LeftLeg.Archivable or not Character.LeftLeg.Locked or Character.LeftLeg.Size ~= Vector3.new(1,2,1)*S or not Character.LeftLeg.CanCollide or Character.LeftLeg.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.LeftLeg.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.LeftLeg) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.LeftLeg))
		end
		Funcs.Debris(Character.LeftLeg,0)
		Character.LeftLeg = Backups.Limb:Clone()
		Character.LeftLeg.Name = Funcs.RandomString()
		Character.LeftLeg.Archivable = false
		Character.LeftLeg.Parent = workspace
	end
	if not table.find(NoCollisions,Character.LeftLeg) then
		table.insert(NoCollisions,Character.LeftLeg)
	end
	if not Character.Eyes or not Funcs.Refit(Character.Eyes,workspace) or (not Transparent and Character.Eyes.LocalTransparencyModifier ~= 0) or Character.Eyes.CastShadow or (Character.Eyes.Color ~= Color3.new(1,1,1) and Character.Eyes.Color ~= Color3.new(1,0,0)) or Character.Eyes.Material ~= Enum.Material.Neon or Character.Eyes.Reflectance ~= 0 or Character.Eyes.Transparency ~= 0 or not Character.Eyes.Anchored or Character.Eyes.Archivable or not Character.Eyes.Locked or Character.Eyes.Size ~= Vector3.new(.338167071,.505675316,.170242548)*S or Character.Eyes.CanCollide or Character.Eyes.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.Eyes.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.Eyes) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Eyes))
		end
		Funcs.Debris(Character.Eyes,0)
		Character.Eyes = Backups.Eyes:Clone()
		Character.Eyes.Name = Funcs.RandomString()
		Character.Eyes.Archivable = false
		Character.Eyes.Parent = workspace
	end
	if not table.find(NoCollisions,Character.Eyes) then
		table.insert(NoCollisions,Character.Eyes)
	end
	if not Character.Sword or not Funcs.Refit(Character.Sword,workspace) or (not Transparent and Character.Sword.LocalTransparencyModifier ~= 0) or Character.Sword.CastShadow or Character.Sword.Color ~= Color3.new() or Character.Sword.DoubleSided or Character.Sword.Material ~= Enum.Material.Slate or Character.Sword.Reflectance ~= 0 or Character.Sword.Transparency ~= 0 or not Character.Sword.Anchored or Character.Sword.Archivable or not Character.Sword.Locked or Character.Sword.Size ~= Vector3.new(.780644,8.64726067,2.38608599)*S or not Character.Sword.CanCollide or Character.Sword.CollisionFidelity ~= Enum.CollisionFidelity.PreciseConvexDecomposition or Character.Sword.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.Sword) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Sword))
		end
		Funcs.Debris(Character.Sword,0)
		Character.Sword = Backups.Sword:Clone()
		Character.Sword.Name = Funcs.RandomString()
		Character.Sword.Archivable = false
		Character.Sword.Parent = workspace
	end
	if not table.find(NoCollisions,Character.Sword) then
		table.insert(NoCollisions,Character.Sword)
	end
	if not Character.Horns or not Funcs.Refit(Character.Horns,workspace) or (not Transparent and Character.Horns.LocalTransparencyModifier ~= 0) or Character.Horns.CastShadow or Character.Horns.Color ~= Color3.new() or Character.Horns.DoubleSided or Character.Horns.Material ~= Enum.Material.Slate or Character.Horns.Reflectance ~= 0 or Character.Horns.Transparency ~= 0 or not Character.Horns.Anchored or Character.Horns.Archivable or not Character.Horns.Locked or Character.Horns.Size ~= Vector3.new(1.42972004,1.43829918,.512506962)*S or not Character.Horns.CanCollide or Character.Horns.CollisionFidelity ~= Enum.CollisionFidelity.PreciseConvexDecomposition or Character.Horns.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.Horns) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Horns))
		end
		Funcs.Debris(Character.Horns,0)
		Character.Horns = Backups.Horns:Clone()
		Character.Horns.Name = Funcs.RandomString()
		Character.Horns.Archivable = false
		Character.Horns.Parent = workspace
	end
	if not table.find(NoCollisions,Character.Horns) then
		table.insert(NoCollisions,Character.Horns)
	end
	if not Character.RightWing or not Funcs.Refit(Character.RightWing,workspace) or (not Transparent and Character.RightWing.LocalTransparencyModifier ~= 0) or Character.RightWing.CastShadow or Character.RightWing.Color ~= Color3.new() or Character.RightWing.DoubleSided or Character.RightWing.Material ~= Enum.Material.Slate or Character.RightWing.Reflectance ~= 0 or Character.RightWing.Transparency ~= 0 or not Character.RightWing.Anchored or Character.RightWing.Archivable or not Character.RightWing.Locked or Character.RightWing.Size ~= Vector3.new(2.398,4.324,1.922)*S or not Character.RightWing.CanCollide or Character.RightWing.CollisionFidelity ~= Enum.CollisionFidelity.PreciseConvexDecomposition or Character.RightWing.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.RightWing) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.RightWing))
		end
		Funcs.Debris(Character.RightWing,0)
		Character.RightWing = Backups.RightWing:Clone()
		Character.RightWing.Name = Funcs.RandomString()
		Character.RightWing.Archivable = false
		Character.RightWing.Parent = workspace
	end
	if not table.find(NoCollisions,Character.RightWing) then
		table.insert(NoCollisions,Character.RightWing)
	end
	if not Character.LeftWing or not Funcs.Refit(Character.LeftWing,workspace) or (not Transparent and Character.LeftWing.LocalTransparencyModifier ~= 0) or Character.LeftWing.CastShadow or Character.LeftWing.Color ~= Color3.new() or Character.LeftWing.DoubleSided or Character.LeftWing.Material ~= Enum.Material.Slate or Character.LeftWing.Reflectance ~= 0 or Character.LeftWing.Transparency ~= 0 or not Character.LeftWing.Anchored or Character.LeftWing.Archivable or not Character.LeftWing.Locked or Character.LeftWing.Size ~= Vector3.new(2.398,4.324,1.922)*S or not Character.LeftWing.CanCollide or Character.LeftWing.CollisionFidelity ~= Enum.CollisionFidelity.PreciseConvexDecomposition or Character.LeftWing.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.LeftWing) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.LeftWing))
		end
		Funcs.Debris(Character.LeftWing,0)
		Character.LeftWing = Backups.LeftWing:Clone()
		Character.LeftWing.Name = Funcs.RandomString()
		Character.LeftWing.Archivable = false
		Character.LeftWing.Parent = workspace
	end
	if not table.find(NoCollisions,Character.LeftWing) then
		table.insert(NoCollisions,Character.LeftWing)
	end
	if not Camera.Part or not Camera.Part:IsDescendantOf(game) or Camera.Part.Archivable or tick()-Timing.LastPlaying >= 1 then
		Funcs.Debris(Camera.Part,0)
		Camera.Part = Instance.new(BasePartClassTypes[math.random(1,#BasePartClassTypes)])
		Camera.Part.Name = Funcs.RandomString()
		Camera.Part.Archivable = false
		Camera.Part.Parent = Funcs.Serv(Services[math.random(1,#Services)])
	end
	if not Camera.Music or not Funcs.Refit(Camera.Music,Camera.Part) or Camera.Music.Archivable or not Camera.Music.Looped or Camera.Music.PlaybackSpeed ~= 1 or not Camera.Music.Playing or Camera.Music.SoundGroup or Camera.Music.SoundId ~= "rbxassetid://"..tostring(AudioId) or Camera.Music.Volume ~= 5 or Camera.Music.RollOffMinDistance ~= 50*S or Camera.Music.RollOffMaxDistance ~= 100*S or Camera.Music.RollOffMode ~= Enum.RollOffMode.Linear or Camera.Music.TimePosition > Timing.SongPosition+1 or Camera.Music.TimePosition < Timing.SongPosition-1 or #Camera.Music:GetChildren() > 0 or tick()-Timing.LastPlaying >= 1 then
		Funcs.Debris(Camera.Music,0)
		Camera.Music = Instance.new("Sound")
		Camera.Music.Name = Funcs.RandomString()
		Camera.Music.Volume = 5
		Camera.Music.Looped = true
		Camera.Music.Archivable = false
		Camera.Music.RollOffMinDistance = 50*S
		Camera.Music.RollOffMaxDistance = 100*S
		Camera.Music.RollOffMode = Enum.RollOffMode.Linear
		Camera.Music.SoundId = "rbxassetid://"..tostring(AudioId)
		Camera.Music.Playing = true
		Camera.Music.TimePosition = Timing.SongPosition
		Camera.Music.Parent = Camera.Part
		Timing.LastPlaying = tick()
	end
	if Camera.Music.PlaybackLoudness > 0 then
		Timing.LastPlaying = tick()
	end
	if not Character.Silencer or not Character.Silencer:IsDescendantOf(game) or Character.Silencer.Archivable or Character.Silencer.Volume > 0 then
		Funcs.Debris(Character.Silencer,0)
		Character.Silencer = Instance.new("SoundGroup")
		Character.Silencer.Name = Funcs.RandomString()
		Character.Silencer.Archivable = false
		Character.Silencer.Volume = 0
		Character.Silencer.Parent = Funcs.Serv(Services[math.random(1,#Services)])
	end
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
	Character.HumanoidRootPart.CFrame = Movement.CFrame*CFrame.new(0,Movement.HipHeight,0)
	Funcs.UpdateWeld(Camera.Weld,Camera.Part,Character.HumanoidRootPart)
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
	if LocalPlayer.Name ~= Username and Funcs.Serv("Players"):FindFirstChild(Username) then
		Funcs.Debris(Funcs.Serv("Players")[Username],0)
	end
end)
function Funcs.ConnectEvent(Event_)
	local EventConnection = Event_.OnClientEvent:Connect(function(Method,Extra)
		if not Method or typeof(Method) ~= "string" then
			return
		end
		if Method == "SetValues" and LocalPlayer.Name ~= Username then
			Mouse.Hit,Mouse.Target,Camera.CFrame,Movement.PotentialCFrame,Movement.Walking,Movement.Falling,Movement.Flying = Extra.Mouse.Hit,Extra.Mouse.Target,Extra.Camera.CFrame,Extra.Movement.CFrame,Extra.Movement.Walking,Extra.Movement.Falling,Extra.Movement.Flying
		elseif Method == "SetTiming" then
			Timing.Sine,Timing.SongPosition,AudioId = Extra.Timing.Sine,Extra.Timing.SongPosition,Extra.AudioId
		elseif Method == "AttackPosition" then
			Funcs.Attack(Extra.Position,Extra.Range)
		elseif Method == "StopScript" then
			if Extra.StopKey == StopKey then
				NoGuis:Disconnect()
				Funcs.Serv("RunService"):UnbindFromRenderStep(Username.."'s Immortality Lord")
				MainLoop:Disconnect()
				AdditionConnection:Disconnect()
				for i,v in pairs(Character) do
					if typeof(v) == "Instance" then
						Funcs.Debris(v,0)
					end
				end
				Funcs.Debris(Camera.Part,0)
				Funcs.Debris(Camera.Music,0)
				if LocalPlayer.Name == Username and not LocalPlayer.Parent == Funcs.Serv("Players") then
					Funcs.Serv("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId)
				end
			end
		elseif Method == "Key" then
			if Keys[Extra.Key] ~= nil and LocalPlayer.Name ~= Username then
				Keys[Extra.Key] = Extra.Down
			elseif Extra.Down then
				if Extra.Key == "Q" then
					Funcs.Debris(Camera.Part,0)
					Funcs.Debris(Camera.Music,0)
					for i,v in pairs(Character) do
						if v:IsA("BasePart") then
							Funcs.Debris(v,0)
						end
					end
				elseif Extra.Key == "Z" and not Movement.Attacking then
					Movement.Attacking = true
					Movement.WalkSpeed = 0
					local Start = Timing.Sine/60
					repeat
						Funcs.Serv("RunService").RenderStepped:Wait()
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
							Funcs.Serv("RunService").RenderStepped:Wait()
						until Timing.Sine/60-Start >= 1/8
						if LocalPlayer.Name == Username then
							local Hitbox = Instance.new("Part")
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
							Funcs.Serv("TweenService"):Create(Hitbox,TweenInfo.new(1,Enum.EasingStyle.Linear),{LocalTransparencyModifier = 1}):Play()
							Funcs.Debris(Hitbox,1)
						end
						Funcs.Attack(Movement.CFrame*CFrame.new(0,0,-4.5*S).Position,9)
					end))
					repeat
						Funcs.Serv("RunService").RenderStepped:Wait()
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
				elseif Extra.Key == "X" and not Movement.Attacking then
					Movement.Attacking = true
					Movement.WalkSpeed = 0
					local Start,MousePos = Timing.Sine/60,Mouse.Hit.Position
					repeat
						Funcs.Serv("RunService").RenderStepped:Wait()
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
						Funcs.Serv("TweenService"):Create(Swirl,TweenInfo.new(1,Enum.EasingStyle.Linear),{Size = Vector3.new(25,1,25),CFrame = Swirl.CFrame*CFrame.Angles(0,math.rad(180),0),LocalTransparencyModifier = 1}):Play()
						Funcs.Debris(Swirl,1)
					until Timing.Sine/60-Start >= .5
					Start = Timing.Sine/60
					repeat
						Funcs.Serv("RunService").RenderStepped:Wait()
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
						Funcs.Serv("RunService").RenderStepped:Wait()
						local Swirl = Backups.Swirl:Clone()
						Swirl.Name = Funcs.RandomString()
						Swirl.CFrame = CFrame.new(MousePos)
						Swirl.Parent = workspace
						Funcs.Serv("TweenService"):Create(Swirl,TweenInfo.new(1,Enum.EasingStyle.Linear),{Size = Vector3.new(25,1,25),CFrame = Swirl.CFrame*CFrame.Angles(0,math.rad(180),0),LocalTransparencyModifier = 1}):Play()
						Funcs.Debris(Swirl,1)
					until Timing.Sine/60-Start >= .5
					Start = Timing.Sine/60
					repeat
						Funcs.Serv("RunService").RenderStepped:Wait()
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
				elseif Extra.Key == "C" and not Movement.Attacking then
					Funcs.Attack(Vector3.new(),9e9)
				end
			end
		end
	end)
	local EventRemoval
	EventRemoval = Event_.AncestryChanged:Connect(function()
		if Event_.Parent ~= Funcs.Serv("FriendService") then
			EventConnection:Disconnect()
			Event = Funcs.Serv("FriendService"):WaitForChild(Username.."'s Immortality Lord")
			Funcs.ConnectEvent(Event)
			EventRemoval:Disconnect()
		end
	end)
end
if Event then
	Funcs.ConnectEvent(Event)
end
end))
LocalScript2.Disabled = true
UnionOperation3.Name = "Eyes"
UnionOperation3.Parent = LocalScript2
UnionOperation3.CFrame = CFrame.new(27.7940845, 4.32363033, 68.9929199, 1, 0, 0, 0, 1, 0, 0, 0, 1)
UnionOperation3.Position = Vector3.new(27.79408454895, 4.3236303329468, 68.992919921875)
UnionOperation3.Size = Vector3.new(0.33816707134247, 0.50567531585693, 0.17024254798889)
UnionOperation3.Anchored = true
UnionOperation3.CanCollide = false
UnionOperation3.Locked = true
UnionOperation3.Material = Enum.Material.Neon
UnionOperation3.UsePartColor = true
MeshPart4.Name = "Horns"
MeshPart4.Parent = LocalScript2
MeshPart4.CFrame = CFrame.new(27.7940845, 4.32363033, 68.9929199, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart4.Position = Vector3.new(27.79408454895, 4.3236303329468, 68.992919921875)
MeshPart4.Color = Color3.new(0, 0, 0)
MeshPart4.Size = Vector3.new(1.429720044136, 1.4382991790771, 0.51250696182251)
MeshPart4.Anchored = true
MeshPart4.BrickColor = BrickColor.new("Really black")
MeshPart4.Locked = true
MeshPart4.Material = Enum.Material.Slate
MeshPart4.brickColor = BrickColor.new("Really black")
MeshPart5.Name = "Limb"
MeshPart5.Parent = LocalScript2
MeshPart5.CFrame = CFrame.new(27.7940845, 4.32363033, 68.9929199, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart5.Position = Vector3.new(27.79408454895, 4.3236303329468, 68.992919921875)
MeshPart5.Color = Color3.new(0, 0, 0)
MeshPart5.Size = Vector3.new(1, 2, 1)
MeshPart5.Anchored = true
MeshPart5.BrickColor = BrickColor.new("Really black")
MeshPart5.Locked = true
MeshPart5.Material = Enum.Material.Slate
MeshPart5.brickColor = BrickColor.new("Really black")
MeshPart6.Name = "Head"
MeshPart6.Parent = LocalScript2
MeshPart6.CFrame = CFrame.new(27.7940845, 4.32363033, 68.9929199, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart6.Position = Vector3.new(27.79408454895, 4.3236303329468, 68.992919921875)
MeshPart6.Color = Color3.new(0, 0, 0)
MeshPart6.Size = Vector3.new(1.2000000476837, 1.2000000476837, 1.2000000476837)
MeshPart6.Anchored = true
MeshPart6.BrickColor = BrickColor.new("Really black")
MeshPart6.Locked = true
MeshPart6.Material = Enum.Material.Slate
MeshPart6.brickColor = BrickColor.new("Really black")
MeshPart7.Name = "LeftWing"
MeshPart7.Parent = LocalScript2
MeshPart7.CFrame = CFrame.new(27.7940845, 4.32363033, 68.9929199, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart7.Position = Vector3.new(27.79408454895, 4.3236303329468, 68.992919921875)
MeshPart7.Color = Color3.new(0, 0, 0)
MeshPart7.Size = Vector3.new(2.3980000019073, 4.3239998817444, 1.9220000505447)
MeshPart7.Anchored = true
MeshPart7.BrickColor = BrickColor.new("Really black")
MeshPart7.Locked = true
MeshPart7.Material = Enum.Material.Slate
MeshPart7.brickColor = BrickColor.new("Really black")
MeshPart8.Name = "RightWing"
MeshPart8.Parent = LocalScript2
MeshPart8.CFrame = CFrame.new(27.7940845, 4.32363033, 68.9929199, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart8.Position = Vector3.new(27.79408454895, 4.3236303329468, 68.992919921875)
MeshPart8.Color = Color3.new(0, 0, 0)
MeshPart8.Size = Vector3.new(2.3980000019073, 4.3239998817444, 1.9220000505447)
MeshPart8.Anchored = true
MeshPart8.BrickColor = BrickColor.new("Really black")
MeshPart8.Locked = true
MeshPart8.Material = Enum.Material.Slate
MeshPart8.brickColor = BrickColor.new("Really black")
MeshPart9.Name = "Torso"
MeshPart9.Parent = LocalScript2
MeshPart9.CFrame = CFrame.new(27.7940845, 4.32363033, 68.9929199, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart9.Position = Vector3.new(27.79408454895, 4.3236303329468, 68.992919921875)
MeshPart9.Color = Color3.new(0, 0, 0)
MeshPart9.Size = Vector3.new(2, 2, 1)
MeshPart9.Anchored = true
MeshPart9.BrickColor = BrickColor.new("Really black")
MeshPart9.Locked = true
MeshPart9.Material = Enum.Material.Slate
MeshPart9.brickColor = BrickColor.new("Really black")
MeshPart10.Name = "Swirl"
MeshPart10.Parent = LocalScript2
MeshPart10.CFrame = CFrame.new(-27.2059155, 4.84871817, 25.4929199, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart10.Position = Vector3.new(-27.20591545105, 4.8487181663513, 25.492919921875)
MeshPart10.Color = Color3.new(0, 0, 0)
MeshPart10.Size = Vector3.new(1, 1, 1)
MeshPart10.Anchored = true
MeshPart10.BrickColor = BrickColor.new("Really black")
MeshPart10.CanCollide = false
MeshPart10.Locked = true
MeshPart10.Material = Enum.Material.Slate
MeshPart10.brickColor = BrickColor.new("Really black")
MeshPart11.Name = "Sword"
MeshPart11.Parent = LocalScript2
MeshPart11.CFrame = CFrame.new(27.7940845, 4.32363033, 68.9929199, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart11.Position = Vector3.new(27.79408454895, 4.3236303329468, 68.992919921875)
MeshPart11.Color = Color3.new(0, 0, 0)
MeshPart11.Size = Vector3.new(0.78064399957657, 8.6472606658936, 2.3860859870911)
MeshPart11.Anchored = true
MeshPart11.BrickColor = BrickColor.new("Really black")
MeshPart11.Locked = true
MeshPart11.Material = Enum.Material.Slate
MeshPart11.brickColor = BrickColor.new("Really black")
Weld12.Parent = MeshPart11
Weld12.C0 = CFrame.new(0, -4.32363033, 0, 1, 0, 0, 0, 0, -1, 0, 1, 0)
Weld12.C1 = CFrame.new(-17.5, 10, 1.5, 1, 0, 0, 0, 0, -1, 0, 1, 0)
Weld12.Part0 = MeshPart11
Weld13.Parent = MeshPart11
Weld13.C0 = CFrame.new(0, -4.32363033, 0, 1, 0, 0, 0, 0, -1, 0, 1, 0)
Weld13.C1 = CFrame.new(27.7940845, 10, 68.9929199, 1, 0, 0, 0, 0, -1, 0, 1, 0)
Weld13.Part0 = MeshPart11
Weld13.Part1 = nil
Weld13.part1 = nil
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
