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
Folder0 = Instance.new("Folder")
Folder1 = Instance.new("Folder")
LocalScript2 = Instance.new("LocalScript")
IntValue3 = Instance.new("IntValue")
IntValue4 = Instance.new("IntValue")
Model5 = Instance.new("Model")
Model6 = Instance.new("Model")
UnionOperation7 = Instance.new("UnionOperation")
UnionOperation8 = Instance.new("UnionOperation")
UnionOperation9 = Instance.new("UnionOperation")
UnionOperation10 = Instance.new("UnionOperation")
UnionOperation11 = Instance.new("UnionOperation")
UnionOperation12 = Instance.new("UnionOperation")
MeshPart13 = Instance.new("MeshPart")
Part14 = Instance.new("Part")
BlockMesh15 = Instance.new("BlockMesh")
WedgePart16 = Instance.new("WedgePart")
SpecialMesh17 = Instance.new("SpecialMesh")
WedgePart18 = Instance.new("WedgePart")
SpecialMesh19 = Instance.new("SpecialMesh")
Part20 = Instance.new("Part")
BlockMesh21 = Instance.new("BlockMesh")
Part22 = Instance.new("Part")
BlockMesh23 = Instance.new("BlockMesh")
WedgePart24 = Instance.new("WedgePart")
SpecialMesh25 = Instance.new("SpecialMesh")
Part26 = Instance.new("Part")
ParticleEmitter27 = Instance.new("ParticleEmitter")
Model28 = Instance.new("Model")
MeshPart29 = Instance.new("MeshPart")
Script30 = Instance.new("Script")
Model31 = Instance.new("Model")
Script32 = Instance.new("Script")
Model33 = Instance.new("Model")
MeshPart34 = Instance.new("MeshPart")
Model35 = Instance.new("Model")
UnionOperation36 = Instance.new("UnionOperation")
UnionOperation37 = Instance.new("UnionOperation")
UnionOperation38 = Instance.new("UnionOperation")
UnionOperation39 = Instance.new("UnionOperation")
UnionOperation40 = Instance.new("UnionOperation")
UnionOperation41 = Instance.new("UnionOperation")
UnionOperation42 = Instance.new("UnionOperation")
UnionOperation43 = Instance.new("UnionOperation")
Trail44 = Instance.new("Trail")
UnionOperation45 = Instance.new("UnionOperation")
UnionOperation46 = Instance.new("UnionOperation")
Model47 = Instance.new("Model")
Script48 = Instance.new("Script")
Model49 = Instance.new("Model")
MeshPart50 = Instance.new("MeshPart")
Model51 = Instance.new("Model")
UnionOperation52 = Instance.new("UnionOperation")
Part53 = Instance.new("Part")
ParticleEmitter54 = Instance.new("ParticleEmitter")
Model55 = Instance.new("Model")
Script56 = Instance.new("Script")
Model57 = Instance.new("Model")
Part58 = Instance.new("Part")
Part59 = Instance.new("Part")
Part60 = Instance.new("Part")
Part61 = Instance.new("Part")
Part62 = Instance.new("Part")
Part63 = Instance.new("Part")
UnionOperation64 = Instance.new("UnionOperation")
Part65 = Instance.new("Part")
Model66 = Instance.new("Model")
MeshPart67 = Instance.new("MeshPart")
Model68 = Instance.new("Model")
Model69 = Instance.new("Model")
MeshPart70 = Instance.new("MeshPart")
Script71 = Instance.new("Script")
Model72 = Instance.new("Model")
Part73 = Instance.new("Part")
UnionOperation74 = Instance.new("UnionOperation")
UnionOperation75 = Instance.new("UnionOperation")
UnionOperation76 = Instance.new("UnionOperation")
UnionOperation77 = Instance.new("UnionOperation")
UnionOperation78 = Instance.new("UnionOperation")
UnionOperation79 = Instance.new("UnionOperation")
UnionOperation80 = Instance.new("UnionOperation")
Part81 = Instance.new("Part")
SpecialMesh82 = Instance.new("SpecialMesh")
UnionOperation83 = Instance.new("UnionOperation")
Model84 = Instance.new("Model")
Script85 = Instance.new("Script")
Model86 = Instance.new("Model")
MeshPart87 = Instance.new("MeshPart")
Model88 = Instance.new("Model")
UnionOperation89 = Instance.new("UnionOperation")
UnionOperation90 = Instance.new("UnionOperation")
UnionOperation91 = Instance.new("UnionOperation")
UnionOperation92 = Instance.new("UnionOperation")
UnionOperation93 = Instance.new("UnionOperation")
UnionOperation94 = Instance.new("UnionOperation")
UnionOperation95 = Instance.new("UnionOperation")
UnionOperation96 = Instance.new("UnionOperation")
Part97 = Instance.new("Part")
Part98 = Instance.new("Part")
ParticleEmitter99 = Instance.new("ParticleEmitter")
Weld100 = Instance.new("Weld")
UnionOperation101 = Instance.new("UnionOperation")
Part102 = Instance.new("Part")
BlockMesh103 = Instance.new("BlockMesh")
UnionOperation104 = Instance.new("UnionOperation")
UnionOperation105 = Instance.new("UnionOperation")
Model106 = Instance.new("Model")
Script107 = Instance.new("Script")
Model108 = Instance.new("Model")
MeshPart109 = Instance.new("MeshPart")
Model110 = Instance.new("Model")
Part111 = Instance.new("Part")
Part112 = Instance.new("Part")
MeshPart113 = Instance.new("MeshPart")
Trail114 = Instance.new("Trail")
ParticleEmitter115 = Instance.new("ParticleEmitter")
ParticleEmitter116 = Instance.new("ParticleEmitter")
Weld117 = Instance.new("Weld")
Model118 = Instance.new("Model")
Model119 = Instance.new("Model")
Part120 = Instance.new("Part")
CFrameValue121 = Instance.new("CFrameValue")
MeshPart122 = Instance.new("MeshPart")
CFrameValue123 = Instance.new("CFrameValue")
Part124 = Instance.new("Part")
ParticleEmitter125 = Instance.new("ParticleEmitter")
ParticleEmitter126 = Instance.new("ParticleEmitter")
PointLight127 = Instance.new("PointLight")
CFrameValue128 = Instance.new("CFrameValue")
Part129 = Instance.new("Part")
Sound130 = Instance.new("Sound")
Sound131 = Instance.new("Sound")
Sound132 = Instance.new("Sound")
Sound133 = Instance.new("Sound")
Script134 = Instance.new("Script")
Weld135 = Instance.new("Weld")
UnionOperation136 = Instance.new("UnionOperation")
StringValue137 = Instance.new("StringValue")
CFrameValue138 = Instance.new("CFrameValue")
MeshPart139 = Instance.new("MeshPart")
CFrameValue140 = Instance.new("CFrameValue")
MeshPart141 = Instance.new("MeshPart")
CFrameValue142 = Instance.new("CFrameValue")
MeshPart143 = Instance.new("MeshPart")
CFrameValue144 = Instance.new("CFrameValue")
MeshPart145 = Instance.new("MeshPart")
CFrameValue146 = Instance.new("CFrameValue")
UnionOperation147 = Instance.new("UnionOperation")
CFrameValue148 = Instance.new("CFrameValue")
UnionOperation149 = Instance.new("UnionOperation")
CFrameValue150 = Instance.new("CFrameValue")
UnionOperation151 = Instance.new("UnionOperation")
CFrameValue152 = Instance.new("CFrameValue")
MeshPart153 = Instance.new("MeshPart")
CFrameValue154 = Instance.new("CFrameValue")
MeshPart155 = Instance.new("MeshPart")
CFrameValue156 = Instance.new("CFrameValue")
UnionOperation157 = Instance.new("UnionOperation")
MeshPart158 = Instance.new("MeshPart")
CFrameValue159 = Instance.new("CFrameValue")
UnionOperation160 = Instance.new("UnionOperation")
CFrameValue161 = Instance.new("CFrameValue")
UnionOperation162 = Instance.new("UnionOperation")
CFrameValue163 = Instance.new("CFrameValue")
MeshPart164 = Instance.new("MeshPart")
CFrameValue165 = Instance.new("CFrameValue")
MeshPart166 = Instance.new("MeshPart")
CFrameValue167 = Instance.new("CFrameValue")
MeshPart168 = Instance.new("MeshPart")
CFrameValue169 = Instance.new("CFrameValue")
Part170 = Instance.new("Part")
ParticleEmitter171 = Instance.new("ParticleEmitter")
ParticleEmitter172 = Instance.new("ParticleEmitter")
PointLight173 = Instance.new("PointLight")
CFrameValue174 = Instance.new("CFrameValue")
Model175 = Instance.new("Model")
MeshPart176 = Instance.new("MeshPart")
Script177 = Instance.new("Script")
ScreenGui178 = Instance.new("ScreenGui")
Frame179 = Instance.new("Frame")
Frame180 = Instance.new("Frame")
Frame181 = Instance.new("Frame")
TextLabel182 = Instance.new("TextLabel")
Frame183 = Instance.new("Frame")
Frame184 = Instance.new("Frame")
Frame185 = Instance.new("Frame")
TextLabel186 = Instance.new("TextLabel")
TextLabel187 = Instance.new("TextLabel")
TextLabel188 = Instance.new("TextLabel")
TextLabel189 = Instance.new("TextLabel")
Folder0.Parent = mas
Folder1.Name = "Effects"
Folder1.Parent = Folder0
LocalScript2.Name = "CamShake"
LocalScript2.Parent = Folder1
LocalScript2.Enabled = false
table.insert(cors,sandbox(LocalScript2,function()
local me = game:service'Players'.localPlayer
local ch = me.Character
local hum = ch:FindFirstChildOfClass'Humanoid'

local times = script:WaitForChild'times'.Value
local intense = script:WaitForChild'intensity'.Value
local origin


coroutine.wrap(function()
	if(script:FindFirstChild'origin')then
		origin = script:FindFirstChild'origin'.Value
	end
end)()

local cam = workspace.CurrentCamera
local intensity = intense

local ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

local tf = 0
local allowframeloss = false
local tossremainder = false
local lastframe = tick()
local frame = 1/60
ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				ArtificialHB:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

function swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 0, num do
			ArtificialHB.Event:wait()
		end
	end
end

if(hum and not hum:FindFirstChild'CamShaking')then
	local cam = workspace.CurrentCamera
	local oCO = hum.CameraOffset
	local cs = Instance.new("BoolValue",hum)
	cs.Name = "CamShaking"
	for i = 1, times do
		local camDistFromOrigin
		if(typeof(origin) == 'Instance' and origin:IsA'BasePart')then
			camDistFromOrigin = math.floor( (cam.CoordinateFrame.p-origin.Position).magnitude )/12.5
		elseif(typeof(origin) == 'Vector3')then
			camDistFromOrigin = math.floor( (cam.CoordinateFrame.p-origin).magnitude )/12.5
		end
		if(camDistFromOrigin)then
			intensity = math.min(intense, math.floor(intense/camDistFromOrigin))
		end
		--cam.CoordinateFrame = cam.CoordinateFrame*CFrame.fromEulerAnglesXYZ(math.random(-intensity,intensity)/200,math.random(-intensity,intensity)/200,math.random(-intensity,intensity)/200)
		if(hum)then
			hum.CameraOffset = Vector3.new(math.random(-intensity,intensity)/50,math.random(-intensity,intensity)/50,math.random(-intensity,intensity)/50)
		end
		swait()
	end
	if(hum)then
		hum.CameraOffset = oCO
	end
	cs:destroy()
end
script:Destroy()
end))
LocalScript2.Disabled = true
IntValue3.Name = "intensity"
IntValue3.Parent = LocalScript2
IntValue3.Value = 16
IntValue4.Name = "times"
IntValue4.Parent = LocalScript2
IntValue4.Value = 5
Model5.Name = "AK"
Model5.Parent = Folder0
Model6.Name = "Weapon"
Model6.Parent = Model5
UnionOperation7.Parent = Model6
UnionOperation7.CFrame = CFrame.new(-189.401062, 6093.42236, -3.25642395, 4.3704361e-08, -7.83657583e-10, 1, -0.0179280043, -0.999839306, 0, 0.999839246, -0.0179280005, -4.37113883e-08)
UnionOperation7.Orientation = Vector3.new(0, 90, -178.97000122070312)
UnionOperation7.Position = Vector3.new(-189.40106201171875, 6093.42236328125, -3.2564239501953125)
UnionOperation7.Rotation = Vector3.new(-178.97000122070312, 90, 0)
UnionOperation7.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
UnionOperation7.Size = Vector3.new(0.7833306789398193, 0.5843572616577148, 0.15130533277988434)
UnionOperation7.BrickColor = BrickColor.new("Really black")
UnionOperation7.CanCollide = false
UnionOperation7.Material = Enum.Material.SmoothPlastic
UnionOperation7.brickColor = BrickColor.new("Really black")
UnionOperation7.UsePartColor = true
UnionOperation8.Parent = Model6
UnionOperation8.CFrame = CFrame.new(-189.401367, 6090.64355, -3.70640612, 0, -4.37113812e-08, 1, -0.99999994, 0, 0, 0, -0.999999881, -4.37113883e-08)
UnionOperation8.Orientation = Vector3.new(0, 90, -90)
UnionOperation8.Position = Vector3.new(-189.4013671875, 6090.6435546875, -3.7064061164855957)
UnionOperation8.Rotation = Vector3.new(-90, 90, 0)
UnionOperation8.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation8.Size = Vector3.new(1.2135430574417114, 0.43283718824386597, 0.16451001167297363)
UnionOperation8.BrickColor = BrickColor.new("Black")
UnionOperation8.CanCollide = false
UnionOperation8.Material = Enum.Material.Glass
UnionOperation8.brickColor = BrickColor.new("Black")
UnionOperation9.Parent = Model6
UnionOperation9.CFrame = CFrame.new(-189.408508, 6093.0127, -3.32357001, 0, -4.37113812e-08, 1, -0.99999994, 0, 0, 0, -0.999999881, -4.37113883e-08)
UnionOperation9.Orientation = Vector3.new(0, 90, -90)
UnionOperation9.Position = Vector3.new(-189.40850830078125, 6093.0126953125, -3.3235700130462646)
UnionOperation9.Rotation = Vector3.new(-90, 90, 0)
UnionOperation9.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation9.Size = Vector3.new(0.4110247790813446, 0.2907370626926422, 0.12944276630878448)
UnionOperation9.BrickColor = BrickColor.new("Black")
UnionOperation9.CanCollide = false
UnionOperation9.Material = Enum.Material.Glass
UnionOperation9.brickColor = BrickColor.new("Black")
UnionOperation10.Parent = Model6
UnionOperation10.CFrame = CFrame.new(-189.334717, 6092.7251, -3.692276, 0, -4.37113812e-08, 1, -0.99999994, 0, 0, 0, -0.999999881, -4.37113883e-08)
UnionOperation10.Orientation = Vector3.new(0, 90, -90)
UnionOperation10.Position = Vector3.new(-189.334716796875, 6092.72509765625, -3.6922760009765625)
UnionOperation10.Rotation = Vector3.new(-90, 90, 0)
UnionOperation10.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation10.Size = Vector3.new(1.770310401916504, 0.4887627065181732, 0.3027183413505554)
UnionOperation10.BrickColor = BrickColor.new("Black")
UnionOperation10.CanCollide = false
UnionOperation10.Material = Enum.Material.Glass
UnionOperation10.brickColor = BrickColor.new("Black")
UnionOperation11.Parent = Model6
UnionOperation11.CFrame = CFrame.new(-189.392029, 6091.68604, -3.66616797, 4.3704361e-08, -7.83657583e-10, 1, -0.0179280043, -0.999839306, 0, 0.999839246, -0.0179280005, -4.37113883e-08)
UnionOperation11.Orientation = Vector3.new(0, 90, -178.97000122070312)
UnionOperation11.Position = Vector3.new(-189.39202880859375, 6091.68603515625, -3.666167974472046)
UnionOperation11.Rotation = Vector3.new(-178.97000122070312, 90, 0)
UnionOperation11.Color = Color3.new(0, 0, 0)
UnionOperation11.Size = Vector3.new(0.46609997749328613, 0.8886861801147461, 0.15184633433818817)
UnionOperation11.BrickColor = BrickColor.new("Really black")
UnionOperation11.CanCollide = false
UnionOperation11.Material = Enum.Material.SmoothPlastic
UnionOperation11.brickColor = BrickColor.new("Really black")
UnionOperation11.UsePartColor = true
UnionOperation12.Parent = Model6
UnionOperation12.CFrame = CFrame.new(-189.398621, 6094.24121, -3.34983802, -4.32397673e-10, 1, 9.35557694e-08, -0.140306577, -9.2690982e-08, 0.990108013, 0.990107954, -1.26983899e-08, 0.140306562)
UnionOperation12.Orientation = Vector3.new(-81.93000030517578, 0, -90)
UnionOperation12.Position = Vector3.new(-189.39862060546875, 6094.2412109375, -3.3498380184173584)
UnionOperation12.Rotation = Vector3.new(-81.93000030517578, 0, -90)
UnionOperation12.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
UnionOperation12.Size = Vector3.new(0.638677716255188, 0.1386423110961914, 1.4755908250808716)
UnionOperation12.BrickColor = BrickColor.new("Really black")
UnionOperation12.CanCollide = false
UnionOperation12.Material = Enum.Material.SmoothPlastic
UnionOperation12.brickColor = BrickColor.new("Really black")
UnionOperation12.UsePartColor = true
MeshPart13.Name = "Meshes/AK-47 mag"
MeshPart13.Parent = Model6
MeshPart13.CFrame = CFrame.new(-189.404175, 6092.26709, -2.93439507, 0, -4.37113812e-08, 1, -0.99999994, 0, 0, 0, -0.999999881, -4.37113883e-08)
MeshPart13.Orientation = Vector3.new(0, 90, -90)
MeshPart13.Position = Vector3.new(-189.4041748046875, 6092.26708984375, -2.9343950748443604)
MeshPart13.Rotation = Vector3.new(-90, 90, 0)
MeshPart13.Color = Color3.new(0.105882, 0.164706, 0.207843)
MeshPart13.Size = Vector3.new(1.08330500125885, 1.1146513223648071, 0.16126202046871185)
MeshPart13.BrickColor = BrickColor.new("Black")
MeshPart13.CanCollide = false
MeshPart13.Material = Enum.Material.Glass
MeshPart13.brickColor = BrickColor.new("Black")
Part14.Parent = Model6
Part14.CFrame = CFrame.new(-189.400574, 6094.94727, -3.28234911, 0, -4.37113812e-08, 1, -0.99999994, 0, 0, 0, -0.999999881, -4.37113883e-08)
Part14.Orientation = Vector3.new(0, 90, -90)
Part14.Position = Vector3.new(-189.40057373046875, 6094.947265625, -3.282349109649658)
Part14.Rotation = Vector3.new(-90, 90, 0)
Part14.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part14.Size = Vector3.new(0.09452936798334122, 0.5832487940788269, 0.13474586606025696)
Part14.BottomSurface = Enum.SurfaceType.Smooth
Part14.BrickColor = BrickColor.new("Black")
Part14.CanCollide = false
Part14.Material = Enum.Material.Glass
Part14.TopSurface = Enum.SurfaceType.Smooth
Part14.brickColor = BrickColor.new("Black")
BlockMesh15.Parent = Part14
BlockMesh15.Scale = Vector3.new(0.26218894124031067, 1, 1)
WedgePart16.Parent = Model6
WedgePart16.CFrame = CFrame.new(-189.368103, 6091.91016, -3.90715003, -2.64927422e-08, 1, 1.27599904e-07, -0.919146121, -7.4614448e-08, 0.393916696, 0.393916756, -1.06847018e-07, 0.919145882)
WedgePart16.Orientation = Vector3.new(-23.200000762939453, 0, -90)
WedgePart16.Position = Vector3.new(-189.36810302734375, 6091.91015625, -3.9071500301361084)
WedgePart16.Rotation = Vector3.new(-23.200000762939453, 0, -90)
WedgePart16.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart16.Size = Vector3.new(0.09452936798334122, 0.0945294052362442, 0.09452938288450241)
WedgePart16.BottomSurface = Enum.SurfaceType.Smooth
WedgePart16.BrickColor = BrickColor.new("Black")
WedgePart16.CanCollide = false
WedgePart16.Material = Enum.Material.Glass
WedgePart16.brickColor = BrickColor.new("Black")
SpecialMesh17.Parent = WedgePart16
SpecialMesh17.Scale = Vector3.new(0.5063340067863464, 0.022643180564045906, 0.46213141083717346)
SpecialMesh17.MeshType = Enum.MeshType.Wedge
WedgePart18.Parent = Model6
WedgePart18.CFrame = CFrame.new(-189.329285, 6093.3667, -3.38145399, -4.91238659e-08, 1, 1.30797773e-07, -0.992304265, -3.25500444e-08, -0.123823002, -0.12382298, -1.35873847e-07, 0.992304206)
WedgePart18.Orientation = Vector3.new(7.110000133514404, 0, -90)
WedgePart18.Position = Vector3.new(-189.32928466796875, 6093.36669921875, -3.3814539909362793)
WedgePart18.Rotation = Vector3.new(7.110000133514404, 0, -90)
WedgePart18.Color = Color3.new(0.627451, 0.372549, 0.207843)
WedgePart18.Size = Vector3.new(0.29886800050735474, 0.0945294052362442, 0.1622081995010376)
WedgePart18.BottomSurface = Enum.SurfaceType.Smooth
WedgePart18.BrickColor = BrickColor.new("Dark orange")
WedgePart18.CanCollide = false
WedgePart18.Material = Enum.Material.Wood
WedgePart18.brickColor = BrickColor.new("Dark orange")
SpecialMesh19.Parent = WedgePart18
SpecialMesh19.Scale = Vector3.new(1, 0.08243508636951447, 1)
SpecialMesh19.MeshType = Enum.MeshType.Wedge
Part20.Parent = Model6
Part20.CFrame = CFrame.new(-189.400208, 6091.87109, -3.87095594, 0, -4.37113812e-08, 1, -0.99999994, 0, 0, 0, -0.999999881, -4.37113883e-08)
Part20.Orientation = Vector3.new(0, 90, -90)
Part20.Position = Vector3.new(-189.40020751953125, 6091.87109375, -3.8709559440612793)
Part20.Rotation = Vector3.new(-90, 90, 0)
Part20.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part20.Size = Vector3.new(0.09452936798334122, 0.0945294052362442, 0.09452938288450241)
Part20.BottomSurface = Enum.SurfaceType.Smooth
Part20.BrickColor = BrickColor.new("Black")
Part20.CanCollide = false
Part20.Material = Enum.Material.Glass
Part20.TopSurface = Enum.SurfaceType.Smooth
Part20.brickColor = BrickColor.new("Black")
BlockMesh21.Parent = Part20
BlockMesh21.Scale = Vector3.new(0.08129164576530457, 0.5404070019721985, 0.7018430233001709)
Part22.Parent = Model6
Part22.CFrame = CFrame.new(-189.392029, 6091.88721, -3.59260511, 4.3704361e-08, -7.83657583e-10, 1, -0.0179280043, -0.999839306, 0, 0.999839246, -0.0179280005, -4.37113883e-08)
Part22.Orientation = Vector3.new(0, 90, -178.97000122070312)
Part22.Position = Vector3.new(-189.39202880859375, 6091.88720703125, -3.5926051139831543)
Part22.Rotation = Vector3.new(-178.97000122070312, 90, 0)
Part22.Color = Color3.new(0.627451, 0.372549, 0.207843)
Part22.Size = Vector3.new(0.20845013856887817, 0.0945294052362442, 0.15184612572193146)
Part22.BottomSurface = Enum.SurfaceType.Smooth
Part22.BrickColor = BrickColor.new("Dark orange")
Part22.CanCollide = false
Part22.Material = Enum.Material.Sand
Part22.TopSurface = Enum.SurfaceType.Smooth
Part22.brickColor = BrickColor.new("Dark orange")
BlockMesh23.Parent = Part22
BlockMesh23.Scale = Vector3.new(1, 0.06526096910238266, 1)
WedgePart24.Parent = Part22
WedgePart24.CFrame = CFrame.new(-189.368103, 6091.90088, -3.90370202, -6.53696759e-08, 4.96822601e-08, -1, 0.863402188, 0.504516304, -3.13747996e-08, 0.504516244, -0.863402128, -7.58758247e-08)
WedgePart24.Orientation = Vector3.new(0, -90, 59.70000076293945)
WedgePart24.Position = Vector3.new(-189.36810302734375, 6091.90087890625, -3.9037020206451416)
WedgePart24.Rotation = Vector3.new(-59.70000076293945, -90, 0)
WedgePart24.Color = Color3.new(0.105882, 0.164706, 0.207843)
WedgePart24.Size = Vector3.new(0.09452936798334122, 0.0945294052362442, 0.09452938288450241)
WedgePart24.BottomSurface = Enum.SurfaceType.Smooth
WedgePart24.BrickColor = BrickColor.new("Black")
WedgePart24.CanCollide = false
WedgePart24.Material = Enum.Material.Metal
WedgePart24.brickColor = BrickColor.new("Black")
SpecialMesh25.Parent = WedgePart24
SpecialMesh25.Scale = Vector3.new(0.539990246295929, 0.49196791648864746, 0.022643184289336205)
SpecialMesh25.MeshType = Enum.MeshType.Wedge
Part26.Name = "Hole"
Part26.Parent = Model6
Part26.CFrame = CFrame.new(-189.391998, 6090.07764, -3.60206604, 1, 4.37113847e-08, -4.37113776e-08, 4.37113705e-08, -0.999999464, -4.23516474e-22, -4.37113776e-08, -1.91068462e-15, -0.999999464)
Part26.Orientation = Vector3.new(0, -180, 180)
Part26.Position = Vector3.new(-189.39199829101562, 6090.07763671875, -3.6020660400390625)
Part26.Rotation = Vector3.new(180, 0, 0)
Part26.Size = Vector3.new(0.05000000074505806, 0.050000011920928955, 0.05000000074505806)
Part26.BottomSurface = Enum.SurfaceType.Smooth
Part26.CanCollide = false
Part26.TopSurface = Enum.SurfaceType.Smooth
ParticleEmitter27.Parent = Part26
ParticleEmitter27.Speed = NumberRange.new(0.20000000298023224, 0.20000000298023224)
ParticleEmitter27.Rotation = NumberRange.new(-180, 180)
ParticleEmitter27.Color = ColorSequence.new(Color3.new(1, 0, 0),Color3.new(1, 0, 0))
ParticleEmitter27.LightEmission = 0.5
ParticleEmitter27.Texture = "http://www.roblox.com/asset/?id=304437537"
ParticleEmitter27.Transparency = NumberSequence.new(0.30000001192092896,0,1)
ParticleEmitter27.ZOffset = 0.20000000298023224
ParticleEmitter27.Size = NumberSequence.new(0.10000000149011612,0)
ParticleEmitter27.Acceleration = Vector3.new(0, 5, 0)
ParticleEmitter27.Lifetime = NumberRange.new(0.30000001192092896, 0.5)
ParticleEmitter27.Rate = 150
ParticleEmitter27.RotSpeed = NumberRange.new(-180, 180)
ParticleEmitter27.SpreadAngle = Vector2.new(360, 360)
ParticleEmitter27.VelocitySpread = 360
Model28.Name = "RightArm"
Model28.Parent = Model5
MeshPart29.Name = "REF"
MeshPart29.Parent = Model28
MeshPart29.CFrame = CFrame.new(-189.423828, 6094.30811, -3.02189589, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart29.Position = Vector3.new(-189.423828125, 6094.30810546875, -3.0218958854675293)
MeshPart29.Color = Color3.new(0.972549, 0.972549, 0.972549)
MeshPart29.Transparency = 1
MeshPart29.Size = Vector3.new(1, 2, 1)
MeshPart29.BrickColor = BrickColor.new("Institutional white")
MeshPart29.CanCollide = false
MeshPart29.Material = Enum.Material.SmoothPlastic
MeshPart29.brickColor = BrickColor.new("Institutional white")
Script30.Name = "qPerfectionWeld"
Script30.Parent = Model5
table.insert(cors,sandbox(Script30,function()
local NEVER_BREAK_JOINTS = false -- If you set this to true it will never break joints (this can create some welding issues, but can save stuff like hinges).


local function CallOnChildren(Instance, FunctionToCall)
	FunctionToCall(Instance)

	for _, Child in next, Instance:GetChildren() do
		CallOnChildren(Child, FunctionToCall)
	end
end

local function GetNearestParent(Instance, ClassName)
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
	CallOnChildren(StartInstance, function(Item)
		if Item:IsA("BasePart") then
			List[#List+1] = Item;
		end
	end)

	return List
end

local function Modify(Instance, Values)
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

local function WeldParts(Parts, MainPart, JointType)
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
end

local function PerfectionWeld()	
	local Tool = GetNearestParent(script, "Tool")

	local Parts = GetBricks(script.Parent)
	local PrimaryPart = script.Parent.RightArm.REF

	if PrimaryPart then
		WeldParts(Parts, PrimaryPart, "Weld")
	else
		warn("qWeld - Unable to weld part")
	end
	
	return Tool
end

local Tool = PerfectionWeld()


if Tool and script.ClassName == "Script" then
	script.Parent.AncestryChanged:connect(function()
		PerfectionWeld()
	end)
end
end))
Model31.Name = "Katana"
Model31.Parent = Folder0
Script32.Name = "qPerfectionWeld"
Script32.Parent = Model31
table.insert(cors,sandbox(Script32,function()
local NEVER_BREAK_JOINTS = false -- If you set this to true it will never break joints (this can create some welding issues, but can save stuff like hinges).


local function CallOnChildren(Instance, FunctionToCall)
	FunctionToCall(Instance)

	for _, Child in next, Instance:GetChildren() do
		CallOnChildren(Child, FunctionToCall)
	end
end

local function GetNearestParent(Instance, ClassName)
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
	CallOnChildren(StartInstance, function(Item)
		if Item:IsA("BasePart") then
			List[#List+1] = Item;
		end
	end)

	return List
end

local function Modify(Instance, Values)
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

local function WeldParts(Parts, MainPart, JointType)
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
end

local function PerfectionWeld()	
	local Tool = GetNearestParent(script, "Tool")

	local Parts = GetBricks(script.Parent)
	local PrimaryPart = script.Parent.RightArm.REF

	if PrimaryPart then
		WeldParts(Parts, PrimaryPart, "Weld")
	else
		warn("qWeld - Unable to weld part")
	end
	
	return Tool
end

local Tool = PerfectionWeld()


if Tool and script.ClassName == "Script" then
	script.Parent.AncestryChanged:connect(function()
		PerfectionWeld()
	end)
end
end))
Model33.Name = "RightArm"
Model33.Parent = Model31
MeshPart34.Name = "REF"
MeshPart34.Parent = Model33
MeshPart34.CFrame = CFrame.new(-153.983353, 6091.48975, -0.226437807, 1, -4.41333764e-13, 7.10542736e-15, -4.41333764e-13, 1, 0, 7.10542736e-15, 0, 1)
MeshPart34.Position = Vector3.new(-153.9833526611328, 6091.48974609375, -0.22643780708312988)
MeshPart34.Color = Color3.new(0.972549, 0.972549, 0.972549)
MeshPart34.Transparency = 1
MeshPart34.Size = Vector3.new(1, 2, 1)
MeshPart34.BrickColor = BrickColor.new("Institutional white")
MeshPart34.CanCollide = false
MeshPart34.Material = Enum.Material.SmoothPlastic
MeshPart34.brickColor = BrickColor.new("Institutional white")
Model35.Name = "Weapon"
Model35.Parent = Model31
UnionOperation36.Parent = Model35
UnionOperation36.CFrame = CFrame.new(-153.991531, 6090.49707, -3.15859699, -1, -4.36704659e-06, -7.43660351e-08, -4.36704522e-06, 1, -1.80372368e-07, 7.43668025e-08, -1.80372041e-07, -1)
UnionOperation36.Orientation = Vector3.new(0, -180, 0)
UnionOperation36.Position = Vector3.new(-153.9915313720703, 6090.4970703125, -3.158596992492676)
UnionOperation36.Rotation = Vector3.new(180, 0, 180)
UnionOperation36.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
UnionOperation36.Size = Vector3.new(0.05000000074505806, 0.32517489790916443, 4.013975143432617)
UnionOperation36.BrickColor = BrickColor.new("Really black")
UnionOperation36.CanCollide = false
UnionOperation36.Material = Enum.Material.SmoothPlastic
UnionOperation36.Reflectance = 0.10000000149011612
UnionOperation36.brickColor = BrickColor.new("Really black")
UnionOperation36.UsePartColor = true
UnionOperation37.Parent = Model35
UnionOperation37.CFrame = CFrame.new(-153.981461, 6090.39453, -0.958279729, -0.642787099, 1.89087658e-07, -0.766044974, -0.766044974, 8.33075902e-08, 0.642787099, 1.85360435e-07, 1, 9.13005778e-08)
UnionOperation37.Orientation = Vector3.new(-40, -90, -90)
UnionOperation37.Position = Vector3.new(-153.98146057128906, 6090.39453125, -0.9582797288894653)
UnionOperation37.Rotation = Vector3.new(-90, -50, -180)
UnionOperation37.Color = Color3.new(1, 0.34902, 0.34902)
UnionOperation37.Size = Vector3.new(0.6074066162109375, 0.09000110626220703, 0.5595436096191406)
UnionOperation37.BrickColor = BrickColor.new("Persimmon")
UnionOperation37.CanCollide = false
UnionOperation37.Material = Enum.Material.SmoothPlastic
UnionOperation37.brickColor = BrickColor.new("Persimmon")
UnionOperation38.Parent = Model35
UnionOperation38.CFrame = CFrame.new(-153.983902, 6090.39648, -0.965603828, -1, -4.36704659e-06, -7.43660351e-08, -4.36704522e-06, 1, -1.80372368e-07, 7.43668025e-08, -1.80372041e-07, -1)
UnionOperation38.Orientation = Vector3.new(0, -180, 0)
UnionOperation38.Position = Vector3.new(-153.98390197753906, 6090.396484375, -0.9656038284301758)
UnionOperation38.Rotation = Vector3.new(180, 0, 180)
UnionOperation38.Color = Color3.new(1, 0.34902, 0.34902)
UnionOperation38.Size = Vector3.new(0.20869512856006622, 0.28478166460990906, 0.05000000074505806)
UnionOperation38.BrickColor = BrickColor.new("Persimmon")
UnionOperation38.CanCollide = false
UnionOperation38.Material = Enum.Material.SmoothPlastic
UnionOperation38.brickColor = BrickColor.new("Persimmon")
UnionOperation38.UsePartColor = true
UnionOperation39.Parent = Model35
UnionOperation39.CFrame = CFrame.new(-153.991531, 6090.44824, -0.242093801, -1, -4.36462324e-06, 1.63360482e-07, -4.36704522e-06, 0.998518646, -0.0544114076, 7.43668025e-08, -0.0544114076, -0.998518646)
UnionOperation39.Orientation = Vector3.new(3.119999885559082, 180, 0)
UnionOperation39.Position = Vector3.new(-153.9915313720703, 6090.4482421875, -0.24209380149841309)
UnionOperation39.Rotation = Vector3.new(176.8800048828125, 0, 180)
UnionOperation39.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation39.Size = Vector3.new(0.1394457072019577, 0.23813442885875702, 1.2651581764221191)
UnionOperation39.BrickColor = BrickColor.new("Black")
UnionOperation39.CanCollide = false
UnionOperation39.Material = Enum.Material.SmoothPlastic
UnionOperation39.Reflectance = 0.05000000074505806
UnionOperation39.brickColor = BrickColor.new("Black")
UnionOperation39.UsePartColor = true
UnionOperation40.Parent = Model35
UnionOperation40.CFrame = CFrame.new(-153.966263, 6090.49707, -3.15859699, -1, -4.36704659e-06, -7.43660351e-08, -4.36704522e-06, 1, -1.80372368e-07, 7.43668025e-08, -1.80372041e-07, -1)
UnionOperation40.Orientation = Vector3.new(0, -180, 0)
UnionOperation40.Position = Vector3.new(-153.9662628173828, 6090.4970703125, -3.158596992492676)
UnionOperation40.Rotation = Vector3.new(180, 0, 180)
UnionOperation40.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
UnionOperation40.Size = Vector3.new(0.26899999380111694, 0.4489749073982239, 4.013975143432617)
UnionOperation40.BrickColor = BrickColor.new("Really black")
UnionOperation40.CanCollide = false
UnionOperation40.Material = Enum.Material.SmoothPlastic
UnionOperation40.Reflectance = 0.10000000149011612
UnionOperation40.brickColor = BrickColor.new("Really black")
UnionOperation40.UsePartColor = true
UnionOperation41.Parent = Model35
UnionOperation41.CFrame = CFrame.new(-153.991531, 6090.46289, 0.00982928276, -1, -4.36462324e-06, 1.63360482e-07, -4.36704522e-06, 0.998518646, -0.0544114076, 7.43668025e-08, -0.0544114076, -0.998518646)
UnionOperation41.Orientation = Vector3.new(3.119999885559082, 180, 0)
UnionOperation41.Position = Vector3.new(-153.9915313720703, 6090.462890625, 0.009829282760620117)
UnionOperation41.Rotation = Vector3.new(176.8800048828125, 0, 180)
UnionOperation41.Color = Color3.new(0.929412, 0.917647, 0.917647)
UnionOperation41.Size = Vector3.new(0.16975556313991547, 0.23845398426055908, 0.6526282429695129)
UnionOperation41.BrickColor = BrickColor.new("Lily white")
UnionOperation41.CanCollide = false
UnionOperation41.Material = Enum.Material.SmoothPlastic
UnionOperation41.brickColor = BrickColor.new("Lily white")
UnionOperation41.UsePartColor = true
UnionOperation42.Parent = Model35
UnionOperation42.CFrame = CFrame.new(-153.97847, 6090.41943, -1.06238282, -1, -4.36704659e-06, -7.43660351e-08, -4.36704522e-06, 1, -1.80372368e-07, 7.43668025e-08, -1.80372041e-07, -1)
UnionOperation42.Orientation = Vector3.new(0, -180, 0)
UnionOperation42.Position = Vector3.new(-153.9784698486328, 6090.41943359375, -1.0623828172683716)
UnionOperation42.Rotation = Vector3.new(180, 0, 180)
UnionOperation42.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
UnionOperation42.Size = Vector3.new(0.09775755554437637, 0.22624336183071136, 0.19789724051952362)
UnionOperation42.BrickColor = BrickColor.new("Really black")
UnionOperation42.CanCollide = false
UnionOperation42.Material = Enum.Material.SmoothPlastic
UnionOperation42.brickColor = BrickColor.new("Really black")
UnionOperation42.UsePartColor = true
UnionOperation43.Name = "Hitbox"
UnionOperation43.Parent = Model35
UnionOperation43.CFrame = CFrame.new(-153.97847, 6090.45361, -3.15859699, -1, -4.36704659e-06, -7.43660351e-08, -4.36704522e-06, 1, -1.80372368e-07, 7.43668025e-08, -1.80372041e-07, -1)
UnionOperation43.Orientation = Vector3.new(0, -180, 0)
UnionOperation43.Position = Vector3.new(-153.9784698486328, 6090.45361328125, -3.158596992492676)
UnionOperation43.Rotation = Vector3.new(180, 0, 180)
UnionOperation43.Color = Color3.new(0.705882, 0.823529, 0.894118)
UnionOperation43.Size = Vector3.new(0.05000000074505806, 0.32517489790916443, 4.013975143432617)
UnionOperation43.BrickColor = BrickColor.new("Light blue")
UnionOperation43.CanCollide = false
UnionOperation43.Material = Enum.Material.SmoothPlastic
UnionOperation43.Reflectance = 0.10000000149011612
UnionOperation43.brickColor = BrickColor.new("Light blue")
UnionOperation43.UsePartColor = true
Trail44.Parent = UnionOperation43
Trail44.Attachment0 = nil
Trail44.Attachment1 = nil
Trail44.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.635294, 0, 0))
Trail44.LightInfluence = 1
Trail44.TextureMode = Enum.TextureMode.Wrap
Trail44.Lifetime = 1
UnionOperation45.Parent = Model35
UnionOperation45.CFrame = CFrame.new(-153.991531, 6090.42969, -0.585843801, -1, -4.36462324e-06, 1.63360482e-07, -4.36704522e-06, 0.998518646, -0.0544114076, 7.43668025e-08, -0.0544114076, -0.998518646)
UnionOperation45.Orientation = Vector3.new(3.119999885559082, 180, 0)
UnionOperation45.Position = Vector3.new(-153.9915313720703, 6090.4296875, -0.5858438014984131)
UnionOperation45.Rotation = Vector3.new(176.8800048828125, 0, 180)
UnionOperation45.Color = Color3.new(0.929412, 0.917647, 0.917647)
UnionOperation45.Size = Vector3.new(0.16975553333759308, 0.23823167383670807, 0.5601669549942017)
UnionOperation45.BrickColor = BrickColor.new("Lily white")
UnionOperation45.CanCollide = false
UnionOperation45.Material = Enum.Material.SmoothPlastic
UnionOperation45.Reflectance = 0.10000000149011612
UnionOperation45.brickColor = BrickColor.new("Lily white")
UnionOperation45.UsePartColor = true
UnionOperation46.Parent = Model35
UnionOperation46.CFrame = CFrame.new(-153.991531, 6090.44141, -0.197171688, -1, -4.36704659e-06, -7.43660351e-08, -4.36704522e-06, 1, -1.80372368e-07, 7.43668025e-08, -1.80372041e-07, -1)
UnionOperation46.Orientation = Vector3.new(0, -180, 0)
UnionOperation46.Position = Vector3.new(-153.9915313720703, 6090.44140625, -0.19717168807983398)
UnionOperation46.Rotation = Vector3.new(180, 0, 180)
UnionOperation46.Color = Color3.new(1, 0.34902, 0.34902)
UnionOperation46.Size = Vector3.new(0.1706647127866745, 0.34559929370880127, 1.5464636087417603)
UnionOperation46.BrickColor = BrickColor.new("Persimmon")
UnionOperation46.CanCollide = false
UnionOperation46.Material = Enum.Material.SmoothPlastic
UnionOperation46.brickColor = BrickColor.new("Persimmon")
UnionOperation46.UsePartColor = true
Model47.Name = "Pistol"
Model47.Parent = Folder0
Script48.Name = "qPerfectionWeld"
Script48.Parent = Model47
table.insert(cors,sandbox(Script48,function()
local NEVER_BREAK_JOINTS = false -- If you set this to true it will never break joints (this can create some welding issues, but can save stuff like hinges).


local function CallOnChildren(Instance, FunctionToCall)
	FunctionToCall(Instance)

	for _, Child in next, Instance:GetChildren() do
		CallOnChildren(Child, FunctionToCall)
	end
end

local function GetNearestParent(Instance, ClassName)
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
	CallOnChildren(StartInstance, function(Item)
		if Item:IsA("BasePart") then
			List[#List+1] = Item;
		end
	end)

	return List
end

local function Modify(Instance, Values)
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

local function WeldParts(Parts, MainPart, JointType)
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
end

local function PerfectionWeld()	
	local Tool = GetNearestParent(script, "Tool")

	local Parts = GetBricks(script.Parent)
	local PrimaryPart = script.Parent.RightArm.REF

	if PrimaryPart then
		WeldParts(Parts, PrimaryPart, "Weld")
	else
		warn("qWeld - Unable to weld part")
	end
	
	return Tool
end

local Tool = PerfectionWeld()


if Tool and script.ClassName == "Script" then
	script.Parent.AncestryChanged:connect(function()
		PerfectionWeld()
	end)
end
end))
Model49.Name = "RightArm"
Model49.Parent = Model47
MeshPart50.Name = "REF"
MeshPart50.Parent = Model49
MeshPart50.CFrame = CFrame.new(-216.067047, 6097.05908, -0.696411014, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart50.Position = Vector3.new(-216.06704711914062, 6097.05908203125, -0.6964110136032104)
MeshPart50.Color = Color3.new(0.972549, 0.972549, 0.972549)
MeshPart50.Transparency = 1
MeshPart50.Size = Vector3.new(1, 2, 1)
MeshPart50.BrickColor = BrickColor.new("Institutional white")
MeshPart50.CanCollide = false
MeshPart50.Material = Enum.Material.SmoothPlastic
MeshPart50.brickColor = BrickColor.new("Institutional white")
Model51.Name = "Weapon"
Model51.Parent = Model47
UnionOperation52.Name = "M9Pistol"
UnionOperation52.Parent = Model51
UnionOperation52.CFrame = CFrame.new(-216.079193, 6095.60693, -0.961807013, -4.37113634e-08, -4.37113954e-08, 1, -0.999999821, -1.31134144e-07, -4.37113918e-08, 1.31134144e-07, -0.99999994, -4.37113812e-08)
UnionOperation52.Orientation = Vector3.new(0, 90, -90)
UnionOperation52.Position = Vector3.new(-216.07919311523438, 6095.60693359375, -0.9618070125579834)
UnionOperation52.Rotation = Vector3.new(-90, 90, 0)
UnionOperation52.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
UnionOperation52.Size = Vector3.new(1.9954197406768799, 1.23967444896698, 0.2818484604358673)
UnionOperation52.BrickColor = BrickColor.new("Really black")
UnionOperation52.CanCollide = false
UnionOperation52.Material = Enum.Material.Glass
UnionOperation52.brickColor = BrickColor.new("Really black")
UnionOperation52.UsePartColor = true
Part53.Name = "Hole"
Part53.Parent = Model51
Part53.CFrame = CFrame.new(-216.077301, 6094.62793, -1.38548303, -0.999999642, 6.09211384e-05, -2.99709463e-05, -6.09210911e-05, -0.999999821, -1.94067252e-06, -2.997093e-05, -1.93859341e-06, 0.999999821)
Part53.Orientation = Vector3.new(0, 0, -180)
Part53.Position = Vector3.new(-216.07730102539062, 6094.6279296875, -1.3854830265045166)
Part53.Rotation = Vector3.new(0, 0, -180)
Part53.Color = Color3.new(1, 1, 0)
Part53.Transparency = 1
Part53.Size = Vector3.new(0.10184846818447113, 0.08184847235679626, 0.10184846818447113)
Part53.BottomSurface = Enum.SurfaceType.Smooth
Part53.BrickColor = BrickColor.new("New Yeller")
Part53.CanCollide = false
Part53.Material = Enum.Material.Metal
Part53.TopSurface = Enum.SurfaceType.Smooth
Part53.brickColor = BrickColor.new("New Yeller")
Part53.FormFactor = Enum.FormFactor.Custom
Part53.formFactor = Enum.FormFactor.Custom
ParticleEmitter54.Parent = Part53
ParticleEmitter54.Speed = NumberRange.new(0.20000000298023224, 0.20000000298023224)
ParticleEmitter54.Rotation = NumberRange.new(-180, 180)
ParticleEmitter54.Color = ColorSequence.new(Color3.new(1, 0, 0),Color3.new(1, 0, 0))
ParticleEmitter54.LightEmission = 0.5
ParticleEmitter54.Texture = "http://www.roblox.com/asset/?id=304437537"
ParticleEmitter54.Transparency = NumberSequence.new(0.30000001192092896,0,1)
ParticleEmitter54.ZOffset = 0.20000000298023224
ParticleEmitter54.Size = NumberSequence.new(0.10000000149011612,0)
ParticleEmitter54.Acceleration = Vector3.new(0, 5, 0)
ParticleEmitter54.Lifetime = NumberRange.new(0.30000001192092896, 0.5)
ParticleEmitter54.Rate = 150
ParticleEmitter54.RotSpeed = NumberRange.new(-180, 180)
ParticleEmitter54.SpreadAngle = Vector2.new(360, 360)
ParticleEmitter54.VelocitySpread = 360
Model55.Name = "RailGun"
Model55.Parent = Folder0
Script56.Name = "qPerfectionWeld"
Script56.Parent = Model55
table.insert(cors,sandbox(Script56,function()
local NEVER_BREAK_JOINTS = false -- If you set this to true it will never break joints (this can create some welding issues, but can save stuff like hinges).


local function CallOnChildren(Instance, FunctionToCall)
	FunctionToCall(Instance)

	for _, Child in next, Instance:GetChildren() do
		CallOnChildren(Child, FunctionToCall)
	end
end

local function GetNearestParent(Instance, ClassName)
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
	CallOnChildren(StartInstance, function(Item)
		if Item:IsA("BasePart") then
			List[#List+1] = Item;
		end
	end)

	return List
end

local function Modify(Instance, Values)
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

local function WeldParts(Parts, MainPart, JointType)
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
end

local function PerfectionWeld()	
	local Tool = GetNearestParent(script, "Tool")

	local Parts = GetBricks(script.Parent)
	local PrimaryPart = script.Parent.RightArm.REF

	if PrimaryPart then
		WeldParts(Parts, PrimaryPart, "Weld")
	else
		warn("qWeld - Unable to weld part")
	end
	
	return Tool
end

local Tool = PerfectionWeld()


if Tool and script.ClassName == "Script" then
	script.Parent.AncestryChanged:connect(function()
		PerfectionWeld()
	end)
end
end))
Model57.Name = "Weapon"
Model57.Parent = Model55
Part58.Parent = Model57
Part58.CFrame = CFrame.new(-207.920212, 6089.81396, -78.0787354, -0.078989774, 0.128772259, -0.988522947, 0.993331432, 0.0936956108, -0.0671685785, 0.0839707032, -0.987237275, -0.135314986)
Part58.Orientation = Vector3.new(3.8499999046325684, -97.79000091552734, 84.61000061035156)
Part58.Position = Vector3.new(-207.9202117919922, 6089.81396484375, -78.0787353515625)
Part58.Rotation = Vector3.new(153.60000610351562, -81.30999755859375, -121.52999877929688)
Part58.Color = Color3.new(1, 0, 0)
Part58.Size = Vector3.new(1.929999828338623, 0.0899999588727951, 0.1899999976158142)
Part58.BottomSurface = Enum.SurfaceType.Smooth
Part58.BrickColor = BrickColor.new("Really red")
Part58.CanCollide = false
Part58.Material = Enum.Material.Neon
Part58.TopSurface = Enum.SurfaceType.Smooth
Part58.brickColor = BrickColor.new("Really red")
Part58.Shape = Enum.PartType.Cylinder
Part59.Parent = Model57
Part59.CFrame = CFrame.new(-208.022385, 6090.88721, -77.6220779, 0.98852402, 0.13743785, -0.0627074316, 0.0671685785, -0.0280592497, 0.99734211, 0.13531588, -0.990110278, -0.0369691961)
Part59.Orientation = Vector3.new(-85.81999969482422, -120.5199966430664, 112.66999816894531)
Part59.Position = Vector3.new(-208.0223846435547, 6090.88720703125, -77.62207794189453)
Part59.Rotation = Vector3.new(-92.12000274658203, -3.5999999046325684, -7.920000076293945)
Part59.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part59.Size = Vector3.new(0.1499987244606018, 0.1499987244606018, 0.1499987244606018)
Part59.BottomSurface = Enum.SurfaceType.Smooth
Part59.BrickColor = BrickColor.new("Really black")
Part59.CanCollide = false
Part59.Material = Enum.Material.DiamondPlate
Part59.TopSurface = Enum.SurfaceType.Smooth
Part59.brickColor = BrickColor.new("Really black")
Part59.Shape = Enum.PartType.Ball
Part60.Parent = Model57
Part60.CFrame = CFrame.new(-207.992035, 6090.88721, -77.8279114, 0.137438849, -0.988522768, -0.0627075806, -0.028059369, -0.0671685636, 0.997345746, -0.990112007, -0.135314941, -0.0369692072)
Part60.Orientation = Vector3.new(-85.81999969482422, -120.5199966430664, -157.3300018310547)
Part60.Position = Vector3.new(-207.99203491210938, 6090.88720703125, -77.82791137695312)
Part60.Rotation = Vector3.new(-92.12000274658203, -3.5999999046325684, 82.08000183105469)
Part60.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part60.Size = Vector3.new(0.43999990820884705, 0.13999997079372406, 0.2199999839067459)
Part60.BottomSurface = Enum.SurfaceType.Smooth
Part60.BrickColor = BrickColor.new("Really black")
Part60.CanCollide = false
Part60.Material = Enum.Material.DiamondPlate
Part60.Reflectance = 0.15000000596046448
Part60.TopSurface = Enum.SurfaceType.Smooth
Part60.brickColor = BrickColor.new("Really black")
Part60.Shape = Enum.PartType.Cylinder
Part61.Parent = Model57
Part61.CFrame = CFrame.new(-207.873199, 6089.771, -78.2176895, 0.0441484377, -0.990317762, 0.131606966, -0.997724712, -0.0369912237, 0.0563416667, -0.050927721, -0.133795395, -0.989698827)
Part61.Orientation = Vector3.new(-3.2300000190734863, 172.42999267578125, -92.12000274658203)
Part61.Position = Vector3.new(-207.87319946289062, 6089.77099609375, -78.21768951416016)
Part61.Rotation = Vector3.new(-176.74000549316406, 7.559999942779541, 87.44999694824219)
Part61.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part61.Size = Vector3.new(2.6399998664855957, 0.13999998569488525, 0.18999998271465302)
Part61.BottomSurface = Enum.SurfaceType.Smooth
Part61.BrickColor = BrickColor.new("Really black")
Part61.CanCollide = false
Part61.Material = Enum.Material.DiamondPlate
Part61.Reflectance = 0.15000000596046448
Part61.TopSurface = Enum.SurfaceType.Smooth
Part61.brickColor = BrickColor.new("Really black")
Part62.Parent = Model57
Part62.CFrame = CFrame.new(-207.957993, 6091.11328, -77.9831543, 0.988523901, 0.137437791, -0.0627074465, 0.0671685636, -0.0280592237, 0.99734199, 0.135315895, -0.99011004, -0.0369692221)
Part62.Orientation = Vector3.new(-85.81999969482422, -120.5199966430664, 112.66999816894531)
Part62.Position = Vector3.new(-207.95799255371094, 6091.11328125, -77.983154296875)
Part62.Rotation = Vector3.new(-92.12000274658203, -3.5999999046325684, -7.920000076293945)
Part62.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part62.Size = Vector3.new(0.2800000011920929, 0.2800000011920929, 0.2800000011920929)
Part62.BottomSurface = Enum.SurfaceType.Smooth
Part62.BrickColor = BrickColor.new("Really black")
Part62.CanCollide = false
Part62.Material = Enum.Material.DiamondPlate
Part62.TopSurface = Enum.SurfaceType.Smooth
Part62.brickColor = BrickColor.new("Really black")
Part63.Parent = Model57
Part63.CFrame = CFrame.new(-207.938004, 6090.26172, -77.9813919, 0.0441484414, -0.990317643, 0.131606877, -0.997724533, -0.0369912423, 0.0563417226, -0.0509276949, -0.133795381, -0.989698589)
Part63.Orientation = Vector3.new(-3.2300000190734863, 172.42999267578125, -92.12000274658203)
Part63.Position = Vector3.new(-207.93800354003906, 6090.26171875, -77.98139190673828)
Part63.Rotation = Vector3.new(-176.74000549316406, 7.559999942779541, 87.44999694824219)
Part63.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part63.Size = Vector3.new(1.7599998712539673, 0.18999998271465302, 0.2199999839067459)
Part63.BottomSurface = Enum.SurfaceType.Smooth
Part63.BrickColor = BrickColor.new("Really black")
Part63.CanCollide = false
Part63.Material = Enum.Material.DiamondPlate
Part63.Reflectance = 0.15000000596046448
Part63.TopSurface = Enum.SurfaceType.Smooth
Part63.brickColor = BrickColor.new("Really black")
UnionOperation64.Parent = Model57
UnionOperation64.CFrame = CFrame.new(-207.934814, 6089.66064, -77.7951736, 0.0596516542, -0.951892912, 0.300569057, -0.996820688, -0.040872924, 0.0683882833, -0.0528130382, -0.303693175, -0.951304793)
UnionOperation64.Orientation = Vector3.new(-3.9200000762939453, 162.47000122070312, -92.3499984741211)
UnionOperation64.Position = Vector3.new(-207.934814453125, 6089.66064453125, -77.79517364501953)
UnionOperation64.Rotation = Vector3.new(-175.88999938964844, 17.489999771118164, 86.41000366210938)
UnionOperation64.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
UnionOperation64.Size = Vector3.new(2.5800247192382812, 0.2390918731689453, 0.620941162109375)
UnionOperation64.BrickColor = BrickColor.new("Really black")
UnionOperation64.CanCollide = false
UnionOperation64.Material = Enum.Material.DiamondPlate
UnionOperation64.Reflectance = 0.15000000596046448
UnionOperation64.brickColor = BrickColor.new("Really black")
UnionOperation64.UsePartColor = true
Part65.Name = "Hole"
Part65.Parent = Model57
Part65.CFrame = CFrame.new(-207.822678, 6088.4624, -78.1942902, -0.0789896995, 0.12877202, -0.988522351, 0.9933303, 0.093695581, -0.0671685189, 0.0839705542, -0.987236321, -0.135314986)
Part65.Orientation = Vector3.new(3.8499999046325684, -97.79000091552734, 84.61000061035156)
Part65.Position = Vector3.new(-207.8226776123047, 6088.46240234375, -78.19429016113281)
Part65.Rotation = Vector3.new(153.60000610351562, -81.30999755859375, -121.52999877929688)
Part65.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part65.Transparency = 1
Part65.Size = Vector3.new(0.16999998688697815, 0.0899999588727951, 0.1899999976158142)
Part65.BottomSurface = Enum.SurfaceType.Smooth
Part65.BrickColor = BrickColor.new("Really black")
Part65.CanCollide = false
Part65.Material = Enum.Material.Neon
Part65.TopSurface = Enum.SurfaceType.Smooth
Part65.brickColor = BrickColor.new("Really black")
Part65.Shape = Enum.PartType.Cylinder
Model66.Name = "RightArm"
Model66.Parent = Model55
MeshPart67.Name = "REF"
MeshPart67.Parent = Model66
MeshPart67.CFrame = CFrame.new(-207.835556, 6091.33545, -77.5827408, 0.997247756, 0.0368788466, 0.0643243939, -0.0353550874, 0.999070227, -0.0246672332, -0.0651743114, 0.0223249849, 0.997624636)
MeshPart67.Orientation = Vector3.new(1.409999966621399, 3.690000057220459, -2.0299999713897705)
MeshPart67.Position = Vector3.new(-207.83555603027344, 6091.33544921875, -77.5827407836914)
MeshPart67.Rotation = Vector3.new(1.4199999570846558, 3.690000057220459, -2.119999885559082)
MeshPart67.Color = Color3.new(0.972549, 0.972549, 0.972549)
MeshPart67.Transparency = 1
MeshPart67.Size = Vector3.new(1, 2, 1)
MeshPart67.BrickColor = BrickColor.new("Institutional white")
MeshPart67.CanCollide = false
MeshPart67.Material = Enum.Material.SmoothPlastic
MeshPart67.brickColor = BrickColor.new("Institutional white")
Model68.Name = "Shotty"
Model68.Parent = Folder0
Model69.Name = "RightArm"
Model69.Parent = Model68
MeshPart70.Name = "REF"
MeshPart70.Parent = Model69
MeshPart70.CFrame = CFrame.new(-188.570312, 6090.69775, -57.271904, 1, 0, 0, 0, -5.96046448e-08, -1, 0, 1, -5.96046448e-08)
MeshPart70.Orientation = Vector3.new(90, 0, 0)
MeshPart70.Position = Vector3.new(-188.5703125, 6090.69775390625, -57.27190399169922)
MeshPart70.Rotation = Vector3.new(90, 0, 0)
MeshPart70.Color = Color3.new(0.972549, 0.972549, 0.972549)
MeshPart70.Transparency = 1
MeshPart70.Size = Vector3.new(1, 2, 1)
MeshPart70.BrickColor = BrickColor.new("Institutional white")
MeshPart70.CanCollide = false
MeshPart70.Material = Enum.Material.SmoothPlastic
MeshPart70.brickColor = BrickColor.new("Institutional white")
Script71.Name = "qPerfectionWeld"
Script71.Parent = Model68
table.insert(cors,sandbox(Script71,function()
local NEVER_BREAK_JOINTS = false -- If you set this to true it will never break joints (this can create some welding issues, but can save stuff like hinges).


local function CallOnChildren(Instance, FunctionToCall)
	FunctionToCall(Instance)

	for _, Child in next, Instance:GetChildren() do
		CallOnChildren(Child, FunctionToCall)
	end
end

local function GetNearestParent(Instance, ClassName)
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
	CallOnChildren(StartInstance, function(Item)
		if Item:IsA("BasePart") then
			List[#List+1] = Item;
		end
	end)

	return List
end

local function Modify(Instance, Values)
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

local function WeldParts(Parts, MainPart, JointType)
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
end

local function PerfectionWeld()	
	local Tool = GetNearestParent(script, "Tool")

	local Parts = GetBricks(script.Parent)
	local PrimaryPart = script.Parent.RightArm.REF

	if PrimaryPart then
		WeldParts(Parts, PrimaryPart, "Weld")
	else
		warn("qWeld - Unable to weld part")
	end
	
	return Tool
end

local Tool = PerfectionWeld()


if Tool and script.ClassName == "Script" then
	script.Parent.AncestryChanged:connect(function()
		PerfectionWeld()
	end)
end
end))
Model72.Name = "Weapon"
Model72.Parent = Model68
Part73.Name = "Trigger"
Part73.Parent = Model72
Part73.CFrame = CFrame.new(-188.617233, 6090.49658, -58.5303802, 0.999974489, 0.000814548053, -0.00711023621, -0.000859000429, 0.999980092, -0.00625105714, 0.00710500311, 0.00625700457, 0.999955237)
Part73.Orientation = Vector3.new(0.36000001430511475, -0.4099999964237213, -0.05000000074505806)
Part73.Position = Vector3.new(-188.6172332763672, 6090.49658203125, -58.53038024902344)
Part73.Rotation = Vector3.new(0.36000001430511475, -0.4099999964237213, -0.05000000074505806)
Part73.Color = Color3.new(1, 1, 0)
Part73.Transparency = 1
Part73.Size = Vector3.new(0.20000000298023224, 0.20000000298023224, 0.20000000298023224)
Part73.BottomSurface = Enum.SurfaceType.Smooth
Part73.BrickColor = BrickColor.new("New Yeller")
Part73.CanCollide = false
Part73.Material = Enum.Material.Metal
Part73.TopSurface = Enum.SurfaceType.Smooth
Part73.brickColor = BrickColor.new("New Yeller")
Part73.FormFactor = Enum.FormFactor.Custom
Part73.formFactor = Enum.FormFactor.Custom
UnionOperation74.Name = "BoltBack"
UnionOperation74.Parent = Model72
UnionOperation74.CFrame = CFrame.new(-188.606598, 6090.72607, -59.3690491, -0.999974489, -0.00709967175, 0.000878330495, 0.000923000451, -0.00629099971, 0.999979854, -0.00709400326, 0.999954998, 0.00629739184)
UnionOperation74.Orientation = Vector3.new(-89.63999938964844, 7.940000057220459, 171.64999389648438)
UnionOperation74.Position = Vector3.new(-188.60659790039062, 6090.72607421875, -59.369049072265625)
UnionOperation74.Rotation = Vector3.new(-89.63999938964844, 0.05000000074505806, 179.58999633789062)
UnionOperation74.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation74.Transparency = 1
UnionOperation74.Size = Vector3.new(0.22499997913837433, 2.4209988117218018, 0.41849902272224426)
UnionOperation74.BrickColor = BrickColor.new("Black")
UnionOperation74.CanCollide = false
UnionOperation74.Material = Enum.Material.SmoothPlastic
UnionOperation74.brickColor = BrickColor.new("Black")
UnionOperation75.Name = "Bolt"
UnionOperation75.Parent = Model72
UnionOperation75.CFrame = CFrame.new(-188.606598, 6090.72607, -59.9990501, -0.999974489, -0.00709967175, 0.000878330495, 0.000923000451, -0.00629099971, 0.999979854, -0.00709400326, 0.999954998, 0.00629739184)
UnionOperation75.Orientation = Vector3.new(-89.63999938964844, 7.940000057220459, 171.64999389648438)
UnionOperation75.Position = Vector3.new(-188.60659790039062, 6090.72607421875, -59.99905014038086)
UnionOperation75.Rotation = Vector3.new(-89.63999938964844, 0.05000000074505806, 179.58999633789062)
UnionOperation75.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation75.Size = Vector3.new(0.22499997913837433, 2.4209988117218018, 0.41849902272224426)
UnionOperation75.BrickColor = BrickColor.new("Black")
UnionOperation75.CanCollide = false
UnionOperation75.Material = Enum.Material.SmoothPlastic
UnionOperation75.brickColor = BrickColor.new("Black")
UnionOperation76.Name = "Iron"
UnionOperation76.Parent = Model72
UnionOperation76.CFrame = CFrame.new(-188.616211, 6090.97656, -58.6174774, -0.999974489, -0.00709967175, 0.000878330495, 0.000923000451, -0.00629099971, 0.999979854, -0.00709400326, 0.999954998, 0.00629739184)
UnionOperation76.Orientation = Vector3.new(-89.63999938964844, 7.940000057220459, 171.64999389648438)
UnionOperation76.Position = Vector3.new(-188.6162109375, 6090.9765625, -58.61747741699219)
UnionOperation76.Rotation = Vector3.new(-89.63999938964844, 0.05000000074505806, 179.58999633789062)
UnionOperation76.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation76.Size = Vector3.new(0.14400003850460052, 0.20100004971027374, 0.09299986809492111)
UnionOperation76.BrickColor = BrickColor.new("Black")
UnionOperation76.CanCollide = false
UnionOperation76.Material = Enum.Material.SmoothPlastic
UnionOperation76.brickColor = BrickColor.new("Black")
UnionOperation77.Parent = Model72
UnionOperation77.CFrame = CFrame.new(-188.621735, 6090.39795, -57.9091301, -0.000860999746, -0.00710599869, -0.99997437, -0.999979734, -0.00631072326, 0.000905849389, -0.00631699851, 0.999954879, -0.00710042007)
UnionOperation77.Orientation = Vector3.new(-0.05000000074505806, -90.41000366210938, -90.36000061035156)
UnionOperation77.Position = Vector3.new(-188.62173461914062, 6090.39794921875, -57.90913009643555)
UnionOperation77.Rotation = Vector3.new(-172.72999572753906, -89.58999633789062, 96.91000366210938)
UnionOperation77.Color = Color3.new(0.639216, 0.635294, 0.647059)
UnionOperation77.Size = Vector3.new(0.7066693902015686, 2.597105026245117, 0.21300022304058075)
UnionOperation77.BrickColor = BrickColor.new("Medium stone grey")
UnionOperation77.CanCollide = false
UnionOperation77.Material = Enum.Material.SmoothPlastic
UnionOperation77.brickColor = BrickColor.new("Medium stone grey")
UnionOperation78.Name = "Mag"
UnionOperation78.Parent = Model72
UnionOperation78.CFrame = CFrame.new(-188.603561, 6090.84961, -58.9980621, 0.00710600009, 0.000855998194, 0.99997437, 0.00628900016, 0.999979854, -0.000900693645, -0.999954998, 0.00629523955, 0.00710047269)
UnionOperation78.Orientation = Vector3.new(0.05000000074505806, 89.58999633789062, 0.36000001430511475)
UnionOperation78.Position = Vector3.new(-188.6035614013672, 6090.849609375, -58.99806213378906)
UnionOperation78.Rotation = Vector3.new(7.230000019073486, 89.58999633789062, -6.869999885559082)
UnionOperation78.Color = Color3.new(0.388235, 0.372549, 0.384314)
UnionOperation78.Transparency = 1
UnionOperation78.Size = Vector3.new(0.3604033291339874, 0.14959989488124847, 0.1496008336544037)
UnionOperation78.BrickColor = BrickColor.new("Dark stone grey")
UnionOperation78.CanCollide = false
UnionOperation78.Material = Enum.Material.SmoothPlastic
UnionOperation78.brickColor = BrickColor.new("Dark stone grey")
UnionOperation79.Parent = Model72
UnionOperation79.CFrame = CFrame.new(-188.624222, 6090.45898, -57.5486603, -0.999974489, -0.000878240971, -0.00709968293, 0.000923000451, -0.999979734, -0.00630360888, -0.00709400326, -0.00631000055, 0.999954998)
UnionOperation79.Orientation = Vector3.new(0.36000001430511475, -0.4099999964237213, 179.9499969482422)
UnionOperation79.Position = Vector3.new(-188.6242218017578, 6090.458984375, -57.54866027832031)
UnionOperation79.Rotation = Vector3.new(0.36000001430511475, -0.4099999964237213, 179.9499969482422)
UnionOperation79.Color = Color3.new(0.388235, 0.372549, 0.384314)
UnionOperation79.Size = Vector3.new(0.21300891041755676, 0.7998613119125366, 1.5004364252090454)
UnionOperation79.BrickColor = BrickColor.new("Dark stone grey")
UnionOperation79.CanCollide = false
UnionOperation79.Material = Enum.Material.SmoothPlastic
UnionOperation79.brickColor = BrickColor.new("Dark stone grey")
UnionOperation79.UsePartColor = true
UnionOperation80.Parent = Model72
UnionOperation80.CFrame = CFrame.new(-188.601242, 6090.80518, -60.7395401, -0.999974489, -0.00709967175, 0.000878330495, 0.000923000451, -0.00629099971, 0.999979854, -0.00709400326, 0.999954998, 0.00629739184)
UnionOperation80.Orientation = Vector3.new(-89.63999938964844, 7.940000057220459, 171.64999389648438)
UnionOperation80.Position = Vector3.new(-188.6012420654297, 6090.80517578125, -60.739540100097656)
UnionOperation80.Rotation = Vector3.new(-89.63999938964844, 0.05000000074505806, 179.58999633789062)
UnionOperation80.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation80.Size = Vector3.new(0.1650000363588333, 2.811000347137451, 0.42599985003471375)
UnionOperation80.BrickColor = BrickColor.new("Black")
UnionOperation80.CanCollide = false
UnionOperation80.Material = Enum.Material.SmoothPlastic
UnionOperation80.brickColor = BrickColor.new("Black")
Part81.Name = "Chamber"
Part81.Parent = Model72
Part81.CFrame = CFrame.new(-188.593475, 6090.80713, -59.0284348, 0.0730364248, -0.107335217, -0.991538465, 7.26431537e-08, 0.994193673, -0.107622623, 0.997329354, 0.00786021166, 0.072612077)
Part81.Orientation = Vector3.new(6.179999828338623, -85.80999755859375, 0)
Part81.Position = Vector3.new(-188.59347534179688, 6090.80712890625, -59.02843475341797)
Part81.Rotation = Vector3.new(55.9900016784668, -82.54000091552734, 55.77000045776367)
Part81.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part81.Transparency = 1
Part81.Size = Vector3.new(0.20000000298023224, 0.20000000298023224, 0.3899936378002167)
Part81.BrickColor = BrickColor.new("Black")
Part81.CanCollide = false
Part81.brickColor = BrickColor.new("Black")
Part81.FormFactor = Enum.FormFactor.Custom
Part81.formFactor = Enum.FormFactor.Custom
SpecialMesh82.Parent = Part81
SpecialMesh82.MeshId = "http://www.roblox.com/asset/?id=94248124"
SpecialMesh82.Scale = Vector3.new(0.5, 0.5, 0.5)
SpecialMesh82.TextureId = "http://www.roblox.com/asset/?id=94219470"
SpecialMesh82.MeshType = Enum.MeshType.FileMesh
UnionOperation83.Parent = Model72
UnionOperation83.CFrame = CFrame.new(-188.615128, 6090.76367, -58.7894516, 0.00710600009, -0.000855998194, -0.99997437, 0.00628900016, -0.999979854, 0.000900693645, -0.999954998, -0.00629523955, -0.00710047269)
UnionOperation83.Orientation = Vector3.new(-0.05000000074505806, -90.41000366210938, 179.63999938964844)
UnionOperation83.Position = Vector3.new(-188.61512756347656, 6090.763671875, -58.789451599121094)
UnionOperation83.Rotation = Vector3.new(-172.77000427246094, -89.58999633789062, 6.869999885559082)
UnionOperation83.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation83.Size = Vector3.new(1.08979070186615, 0.38848876953125, 0.1950002908706665)
UnionOperation83.BrickColor = BrickColor.new("Black")
UnionOperation83.CanCollide = false
UnionOperation83.Material = Enum.Material.SmoothPlastic
UnionOperation83.brickColor = BrickColor.new("Black")
Model84.Name = "Sniper"
Model84.Parent = Folder0
Script85.Name = "qPerfectionWeld"
Script85.Parent = Model84
table.insert(cors,sandbox(Script85,function()
local NEVER_BREAK_JOINTS = false -- If you set this to true it will never break joints (this can create some welding issues, but can save stuff like hinges).


local function CallOnChildren(Instance, FunctionToCall)
	FunctionToCall(Instance)

	for _, Child in next, Instance:GetChildren() do
		CallOnChildren(Child, FunctionToCall)
	end
end

local function GetNearestParent(Instance, ClassName)
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
	CallOnChildren(StartInstance, function(Item)
		if Item:IsA("BasePart") then
			List[#List+1] = Item;
		end
	end)

	return List
end

local function Modify(Instance, Values)
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

local function WeldParts(Parts, MainPart, JointType)
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
end

local function PerfectionWeld()	
	local Tool = GetNearestParent(script, "Tool")

	local Parts = GetBricks(script.Parent)
	local PrimaryPart = script.Parent.RightArm.REF

	if PrimaryPart then
		WeldParts(Parts, PrimaryPart, "Weld")
	else
		warn("qWeld - Unable to weld part")
	end
	
	return Tool
end

local Tool = PerfectionWeld()


if Tool and script.ClassName == "Script" then
	script.Parent.AncestryChanged:connect(function()
		PerfectionWeld()
	end)
end
end))
Model86.Name = "RightArm"
Model86.Parent = Model84
MeshPart87.Name = "REF"
MeshPart87.Parent = Model86
MeshPart87.CFrame = CFrame.new(-229.269287, 6096.02637, -3.19166589, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart87.Position = Vector3.new(-229.269287109375, 6096.0263671875, -3.1916658878326416)
MeshPart87.Color = Color3.new(0.972549, 0.972549, 0.972549)
MeshPart87.Transparency = 1
MeshPart87.Size = Vector3.new(1, 2, 1)
MeshPart87.BrickColor = BrickColor.new("Institutional white")
MeshPart87.CanCollide = false
MeshPart87.Material = Enum.Material.SmoothPlastic
MeshPart87.brickColor = BrickColor.new("Institutional white")
Model88.Name = "Weapon"
Model88.Parent = Model84
UnionOperation89.Parent = Model88
UnionOperation89.CFrame = CFrame.new(-229.271118, 6094.52197, -3.9980619, -8.7422741e-08, -4.37113847e-08, 0.99999994, -0.999999881, 4.37113812e-08, -8.74227695e-08, -4.37113741e-08, -0.999999881, -4.37113989e-08)
UnionOperation89.Orientation = Vector3.new(0, 90, -90)
UnionOperation89.Position = Vector3.new(-229.2711181640625, 6094.52197265625, -3.9980618953704834)
UnionOperation89.Rotation = Vector3.new(116.56999969482422, 89.9800033569336, 153.42999267578125)
UnionOperation89.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation89.Size = Vector3.new(1.287001132965088, 0.05000000074505806, 0.11440103501081467)
UnionOperation89.BrickColor = BrickColor.new("Black")
UnionOperation89.CanCollide = false
UnionOperation89.Material = Enum.Material.SmoothPlastic
UnionOperation89.brickColor = BrickColor.new("Black")
UnionOperation89.UsePartColor = true
UnionOperation90.Parent = Model88
UnionOperation90.CFrame = CFrame.new(-229.271118, 6094.64795, -3.75401306, -8.7422741e-08, -4.37113847e-08, 0.99999994, -0.999999881, 4.37113812e-08, -8.74227695e-08, -4.37113741e-08, -0.999999881, -4.37113989e-08)
UnionOperation90.Orientation = Vector3.new(0, 90, -90)
UnionOperation90.Position = Vector3.new(-229.2711181640625, 6094.64794921875, -3.7540130615234375)
UnionOperation90.Rotation = Vector3.new(116.56999969482422, 89.9800033569336, 153.42999267578125)
UnionOperation90.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation90.Size = Vector3.new(1.5496001243591309, 0.47060009837150574, 0.24960175156593323)
UnionOperation90.BrickColor = BrickColor.new("Black")
UnionOperation90.CanCollide = false
UnionOperation90.Material = Enum.Material.Glass
UnionOperation90.brickColor = BrickColor.new("Black")
UnionOperation90.UsePartColor = true
UnionOperation91.Parent = Model88
UnionOperation91.CFrame = CFrame.new(-229.271057, 6095.45654, -3.26101708, -8.7422741e-08, -4.37113847e-08, 0.99999994, -0.999999881, 4.37113812e-08, -8.74227695e-08, -4.37113741e-08, -0.999999881, -4.37113989e-08)
UnionOperation91.Orientation = Vector3.new(0, 90, -90)
UnionOperation91.Position = Vector3.new(-229.27105712890625, 6095.45654296875, -3.261017084121704)
UnionOperation91.Rotation = Vector3.new(116.56999969482422, 89.9800033569336, 153.42999267578125)
UnionOperation91.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation91.Size = Vector3.new(0.4471069872379303, 0.8214610815048218, 0.14092114567756653)
UnionOperation91.BrickColor = BrickColor.new("Black")
UnionOperation91.CanCollide = false
UnionOperation91.Material = Enum.Material.Glass
UnionOperation91.brickColor = BrickColor.new("Black")
UnionOperation91.UsePartColor = true
UnionOperation92.Name = "Grip"
UnionOperation92.Parent = Model88
UnionOperation92.CFrame = CFrame.new(-229.271118, 6093.47412, -3.3477931, -8.7422741e-08, -4.37113847e-08, 0.99999994, -0.999999881, 4.37113812e-08, -8.74227695e-08, -4.37113741e-08, -0.999999881, -4.37113989e-08)
UnionOperation92.Orientation = Vector3.new(0, 90, -90)
UnionOperation92.Position = Vector3.new(-229.2711181640625, 6093.47412109375, -3.3477931022644043)
UnionOperation92.Rotation = Vector3.new(116.56999969482422, 89.9800033569336, 153.42999267578125)
UnionOperation92.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation92.Size = Vector3.new(1.0322000980377197, 0.413400262594223, 0.09620111435651779)
UnionOperation92.BrickColor = BrickColor.new("Black")
UnionOperation92.CanCollide = false
UnionOperation92.Material = Enum.Material.Glass
UnionOperation92.brickColor = BrickColor.new("Black")
UnionOperation92.UsePartColor = true
UnionOperation93.Parent = Model88
UnionOperation93.CFrame = CFrame.new(-229.273682, 6094.64795, -3.39588904, -8.7422741e-08, -4.37113847e-08, 0.99999994, -0.999999881, 4.37113812e-08, -8.74227695e-08, -4.37113741e-08, -0.999999881, -4.37113989e-08)
UnionOperation93.Orientation = Vector3.new(0, 90, -90)
UnionOperation93.Position = Vector3.new(-229.273681640625, 6094.64794921875, -3.3958890438079834)
UnionOperation93.Rotation = Vector3.new(116.56999969482422, 89.9800033569336, 153.42999267578125)
UnionOperation93.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation93.Size = Vector3.new(1.549600601196289, 0.39000192284584045, 0.40560054779052734)
UnionOperation93.BrickColor = BrickColor.new("Black")
UnionOperation93.CanCollide = false
UnionOperation93.Material = Enum.Material.Glass
UnionOperation93.brickColor = BrickColor.new("Black")
UnionOperation93.UsePartColor = true
UnionOperation94.Parent = Model88
UnionOperation94.CFrame = CFrame.new(-229.271057, 6095.72412, -3.45570397, -8.7422741e-08, -4.37113847e-08, 0.99999994, -0.999999881, 4.37113812e-08, -8.74227695e-08, -4.37113741e-08, -0.999999881, -4.37113989e-08)
UnionOperation94.Orientation = Vector3.new(0, 90, -90)
UnionOperation94.Position = Vector3.new(-229.27105712890625, 6095.72412109375, -3.4557039737701416)
UnionOperation94.Rotation = Vector3.new(116.56999969482422, 89.9800033569336, 153.42999267578125)
UnionOperation94.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation94.Size = Vector3.new(1.7784018516540527, 0.9775991439819336, 0.3951999247074127)
UnionOperation94.BrickColor = BrickColor.new("Black")
UnionOperation94.CanCollide = false
UnionOperation94.Material = Enum.Material.Glass
UnionOperation94.brickColor = BrickColor.new("Black")
UnionOperation94.UsePartColor = true
UnionOperation95.Parent = Model88
UnionOperation95.CFrame = CFrame.new(-229.271118, 6093.0127, -3.74690199, -8.7422741e-08, -4.37113847e-08, 0.99999994, -0.999999881, 4.37113812e-08, -8.74227695e-08, -4.37113741e-08, -0.999999881, -4.37113989e-08)
UnionOperation95.Orientation = Vector3.new(0, 90, -90)
UnionOperation95.Position = Vector3.new(-229.2711181640625, 6093.0126953125, -3.7469019889831543)
UnionOperation95.Rotation = Vector3.new(116.56999969482422, 89.9800033569336, 153.42999267578125)
UnionOperation95.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation95.Size = Vector3.new(1.7212003469467163, 0.3848000168800354, 0.3068004846572876)
UnionOperation95.BrickColor = BrickColor.new("Black")
UnionOperation95.CanCollide = false
UnionOperation95.Material = Enum.Material.Glass
UnionOperation95.brickColor = BrickColor.new("Black")
UnionOperation95.UsePartColor = true
UnionOperation96.Parent = Model88
UnionOperation96.CFrame = CFrame.new(-229.271118, 6092.09033, -3.78590393, -8.7422741e-08, -4.37113847e-08, 0.99999994, -0.999999881, 4.37113812e-08, -8.74227695e-08, -4.37113741e-08, -0.999999881, -4.37113989e-08)
UnionOperation96.Orientation = Vector3.new(0, 90, -90)
UnionOperation96.Position = Vector3.new(-229.2711181640625, 6092.09033203125, -3.7859039306640625)
UnionOperation96.Rotation = Vector3.new(116.56999969482422, 89.9800033569336, 153.42999267578125)
UnionOperation96.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
UnionOperation96.Size = Vector3.new(4.080700874328613, 0.1793999820947647, 0.17940063774585724)
UnionOperation96.BrickColor = BrickColor.new("Really black")
UnionOperation96.CanCollide = false
UnionOperation96.Material = Enum.Material.Glass
UnionOperation96.brickColor = BrickColor.new("Really black")
UnionOperation96.UsePartColor = true
Part97.Name = "Trigger"
Part97.Parent = Model88
Part97.CFrame = CFrame.new(-229.268188, 6094.99365, -3.39747596, 0.99999994, -6.10770003e-05, 8.46275228e-08, -8.64888392e-08, -3.04729256e-05, 0.999999881, -6.10770003e-05, -0.999999881, -3.0472931e-05)
Part97.Orientation = Vector3.new(-89.97000122070312, 179.83999633789062, -179.83999633789062)
Part97.Position = Vector3.new(-229.2681884765625, 6094.99365234375, -3.3974759578704834)
Part97.Rotation = Vector3.new(-90, 0, 0)
Part97.Color = Color3.new(1, 1, 0)
Part97.Transparency = 1
Part97.Size = Vector3.new(0.20000000298023224, 0.20000000298023224, 0.20000000298023224)
Part97.BottomSurface = Enum.SurfaceType.Smooth
Part97.BrickColor = BrickColor.new("New Yeller")
Part97.CanCollide = false
Part97.Material = Enum.Material.Metal
Part97.TopSurface = Enum.SurfaceType.Smooth
Part97.brickColor = BrickColor.new("New Yeller")
Part97.FormFactor = Enum.FormFactor.Custom
Part97.formFactor = Enum.FormFactor.Custom
Part98.Name = "Hole"
Part98.Parent = Model88
Part98.CFrame = CFrame.new(-229.274109, 6090.07861, -3.78654504, 0.99999994, -6.08404516e-05, -7.33058812e-07, 7.31186901e-07, -3.0807143e-05, 0.999999762, -6.08404443e-05, -0.999999762, -3.08071139e-05)
Part98.Orientation = Vector3.new(-89.95999908447266, -178.63999938964844, 178.63999938964844)
Part98.Position = Vector3.new(-229.27410888671875, 6090.07861328125, -3.7865450382232666)
Part98.Rotation = Vector3.new(-90, 0, 0)
Part98.Color = Color3.new(1, 1, 0)
Part98.Transparency = 1
Part98.Size = Vector3.new(0.20000000298023224, 0.20000000298023224, 0.20000000298023224)
Part98.BottomSurface = Enum.SurfaceType.Smooth
Part98.BrickColor = BrickColor.new("New Yeller")
Part98.CanCollide = false
Part98.Material = Enum.Material.Metal
Part98.TopSurface = Enum.SurfaceType.Smooth
Part98.brickColor = BrickColor.new("New Yeller")
Part98.FormFactor = Enum.FormFactor.Custom
Part98.formFactor = Enum.FormFactor.Custom
ParticleEmitter99.Parent = Part98
ParticleEmitter99.Speed = NumberRange.new(0.20000000298023224, 0.20000000298023224)
ParticleEmitter99.Rotation = NumberRange.new(-180, 180)
ParticleEmitter99.Color = ColorSequence.new(Color3.new(1, 0, 0),Color3.new(1, 0, 0))
ParticleEmitter99.LightEmission = 0.5
ParticleEmitter99.Texture = "http://www.roblox.com/asset/?id=304437537"
ParticleEmitter99.Transparency = NumberSequence.new(0.30000001192092896,0,1)
ParticleEmitter99.ZOffset = 0.20000000298023224
ParticleEmitter99.Size = NumberSequence.new(0.10000000149011612,0)
ParticleEmitter99.Acceleration = Vector3.new(0, 5, 0)
ParticleEmitter99.Lifetime = NumberRange.new(0.30000001192092896, 0.5)
ParticleEmitter99.Rate = 150
ParticleEmitter99.RotSpeed = NumberRange.new(-180, 180)
ParticleEmitter99.SpreadAngle = Vector2.new(360, 360)
ParticleEmitter99.VelocitySpread = 360
Weld100.Parent = Part98
Weld100.C0 = CFrame.new(-256, 10, 256, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Weld100.C1 = CFrame.new(-117.201065, -266.507568, -0.108141631, -0.99999994, -6.08404443e-05, 7.31186901e-07, 6.08404516e-05, -0.999999762, -3.0807143e-05, 7.33058812e-07, -3.08071139e-05, 0.999999762)
Weld100.Part1 = Part98
Weld100.part1 = Part98
UnionOperation101.Name = "Bolt"
UnionOperation101.Parent = Model88
UnionOperation101.CFrame = CFrame.new(-229.142639, 6094.78711, -3.66569495, -8.7422741e-08, 9.03990838e-08, 0.999999285, -0.999999881, 4.37113421e-08, -8.74227197e-08, -4.37113741e-08, -0.999999225, 9.03990696e-08)
UnionOperation101.Orientation = Vector3.new(0, 90, -90)
UnionOperation101.Position = Vector3.new(-229.14263916015625, 6094.787109375, -3.6656949520111084)
UnionOperation101.Rotation = Vector3.new(44.040000915527344, 89.93000030517578, -134.0399932861328)
UnionOperation101.Color = Color3.new(0.388235, 0.372549, 0.384314)
UnionOperation101.Size = Vector3.new(1.2194008827209473, 0.5263856053352356, 0.5117579698562622)
UnionOperation101.BrickColor = BrickColor.new("Dark stone grey")
UnionOperation101.CanCollide = false
UnionOperation101.Material = Enum.Material.SmoothPlastic
UnionOperation101.brickColor = BrickColor.new("Dark stone grey")
UnionOperation101.UsePartColor = true
Part102.Name = "SightMark"
Part102.Parent = Model88
Part102.CFrame = CFrame.new(-229.271423, 6090.88672, -4.1858902, 0.99999994, -6.10770003e-05, 8.46275228e-08, -8.64888392e-08, -3.04729256e-05, 0.999999881, -6.10770003e-05, -0.999999881, -3.0472931e-05)
Part102.Orientation = Vector3.new(-89.97000122070312, 179.83999633789062, -179.83999633789062)
Part102.Position = Vector3.new(-229.27142333984375, 6090.88671875, -4.185890197753906)
Part102.Rotation = Vector3.new(-90, 0, 0)
Part102.Color = Color3.new(1, 1, 0)
Part102.Transparency = 1
Part102.Size = Vector3.new(0.20000000298023224, 0.20000000298023224, 0.20000000298023224)
Part102.BottomSurface = Enum.SurfaceType.Smooth
Part102.BrickColor = BrickColor.new("New Yeller")
Part102.CanCollide = false
Part102.Material = Enum.Material.Metal
Part102.TopSurface = Enum.SurfaceType.Smooth
Part102.brickColor = BrickColor.new("New Yeller")
Part102.FormFactor = Enum.FormFactor.Custom
Part102.formFactor = Enum.FormFactor.Custom
BlockMesh103.Parent = Part102
BlockMesh103.Offset = Vector3.new(0, 0, 2.799999952316284)
BlockMesh103.Scale = Vector3.new(1.2999999523162842, 1.2999999523162842, 1.100000023841858)
UnionOperation104.Name = "Scope"
UnionOperation104.Parent = Model88
UnionOperation104.CFrame = CFrame.new(-229.271912, 6094.20117, -4.15589905, -8.74227624e-08, 8.7422741e-08, 0.99999994, 4.37113847e-08, 0.999999881, -8.74227837e-08, -0.999999881, 4.37113741e-08, -8.74227766e-08)
UnionOperation104.Orientation = Vector3.new(0, 90, 0)
UnionOperation104.Position = Vector3.new(-229.27191162109375, 6094.201171875, -4.1558990478515625)
UnionOperation104.Rotation = Vector3.new(135, 89.9800033569336, -135)
UnionOperation104.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
UnionOperation104.Size = Vector3.new(0.5220001339912415, 2.4255011081695557, 0.44099995493888855)
UnionOperation104.BrickColor = BrickColor.new("Really black")
UnionOperation104.CanCollide = false
UnionOperation104.Material = Enum.Material.Glass
UnionOperation104.brickColor = BrickColor.new("Really black")
UnionOperation105.Name = "Mag"
UnionOperation105.Parent = Model88
UnionOperation105.CFrame = CFrame.new(-229.271118, 6094.52051, -3.24058509, -8.7422741e-08, -4.37113847e-08, 0.99999994, -0.999999881, 4.37113812e-08, -8.74227695e-08, -4.37113741e-08, -0.999999881, -4.37113989e-08)
UnionOperation105.Orientation = Vector3.new(0, 90, -90)
UnionOperation105.Position = Vector3.new(-229.2711181640625, 6094.5205078125, -3.2405850887298584)
UnionOperation105.Rotation = Vector3.new(116.56999969482422, 89.9800033569336, 153.42999267578125)
UnionOperation105.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation105.Size = Vector3.new(0.6292000412940979, 0.6642236113548279, 0.16640064120292664)
UnionOperation105.BrickColor = BrickColor.new("Black")
UnionOperation105.CanCollide = false
UnionOperation105.Material = Enum.Material.Glass
UnionOperation105.brickColor = BrickColor.new("Black")
UnionOperation105.UsePartColor = true
Model106.Name = "Swordo"
Model106.Parent = Folder0
Script107.Name = "qPerfectionWeld"
Script107.Parent = Model106
table.insert(cors,sandbox(Script107,function()
local NEVER_BREAK_JOINTS = false -- If you set this to true it will never break joints (this can create some welding issues, but can save stuff like hinges).


local function CallOnChildren(Instance, FunctionToCall)
	FunctionToCall(Instance)

	for _, Child in next, Instance:GetChildren() do
		CallOnChildren(Child, FunctionToCall)
	end
end

local function GetNearestParent(Instance, ClassName)
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
	CallOnChildren(StartInstance, function(Item)
		if Item:IsA("BasePart") then
			List[#List+1] = Item;
		end
	end)

	return List
end

local function Modify(Instance, Values)
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

local function WeldParts(Parts, MainPart, JointType)
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
end

local function PerfectionWeld()	
	local Tool = GetNearestParent(script, "Tool")

	local Parts = GetBricks(script.Parent)
	local PrimaryPart = script.Parent.RightArm.REF

	if PrimaryPart then
		WeldParts(Parts, PrimaryPart, "Weld")
	else
		warn("qWeld - Unable to weld part")
	end
	
	return Tool
end

local Tool = PerfectionWeld()


if Tool and script.ClassName == "Script" then
	script.Parent.AncestryChanged:connect(function()
		PerfectionWeld()
	end)
end
end))
Model108.Name = "RightArm"
Model108.Parent = Model106
MeshPart109.Name = "REF"
MeshPart109.Parent = Model108
MeshPart109.CFrame = CFrame.new(-7.12033081, 6090.05078, -1.27673304, 0, 0, -1, -0.999701738, -0.0244210958, 0, -0.0244210958, 0.999701738, 0)
MeshPart109.Orientation = Vector3.new(0, -90, -91.4000015258789)
MeshPart109.Position = Vector3.new(-7.120330810546875, 6090.05078125, -1.2767330408096313)
MeshPart109.Rotation = Vector3.new(91.4000015258789, -90, 0)
MeshPart109.Color = Color3.new(0.972549, 0.972549, 0.972549)
MeshPart109.Transparency = 1
MeshPart109.Size = Vector3.new(1, 2, 1)
MeshPart109.BrickColor = BrickColor.new("Institutional white")
MeshPart109.CanCollide = false
MeshPart109.Material = Enum.Material.SmoothPlastic
MeshPart109.brickColor = BrickColor.new("Institutional white")
Model110.Name = "Weapon"
Model110.Parent = Model106
Part111.Name = "Light"
Part111.Parent = Model110
Part111.CFrame = CFrame.new(-3.81532311, 6090.09863, -2.08689904, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part111.Position = Vector3.new(-3.8153231143951416, 6090.0986328125, -2.0868990421295166)
Part111.Color = Color3.new(1, 0, 0)
Part111.Size = Vector3.new(2.2299997806549072, 0.1599999964237213, 0.05000000074505806)
Part111.BottomSurface = Enum.SurfaceType.Smooth
Part111.BrickColor = BrickColor.new("Really red")
Part111.CanCollide = false
Part111.Material = Enum.Material.Neon
Part111.TopSurface = Enum.SurfaceType.Smooth
Part111.brickColor = BrickColor.new("Really red")
Part112.Name = "Light"
Part112.Parent = Model110
Part112.CFrame = CFrame.new(-3.75532508, 6090.09863, -2.21690392, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part112.Position = Vector3.new(-3.7553250789642334, 6090.0986328125, -2.2169039249420166)
Part112.Color = Color3.new(1, 0, 0)
Part112.Size = Vector3.new(2.929999828338623, 0.1599999964237213, 0.1499999761581421)
Part112.BottomSurface = Enum.SurfaceType.Smooth
Part112.BrickColor = BrickColor.new("Really red")
Part112.CanCollide = false
Part112.Material = Enum.Material.Neon
Part112.TopSurface = Enum.SurfaceType.Smooth
Part112.brickColor = BrickColor.new("Really red")
MeshPart113.Name = "swrd"
MeshPart113.Parent = Model110
MeshPart113.CFrame = CFrame.new(-4.3704071, 6090.09326, -2.25645399, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart113.Position = Vector3.new(-4.3704071044921875, 6090.09326171875, -2.2564539909362793)
MeshPart113.Size = Vector3.new(7.876815319061279, 0.24206289649009705, 1.5726858377456665)
MeshPart113.CanCollide = false
MeshPart113.TextureID = "rbxassetid://5706553043"
Trail114.Parent = MeshPart113
Trail114.Attachment0 = nil
Trail114.Attachment1 = nil
Trail114.Color = ColorSequence.new(Color3.new(0.454902, 0.627451, 1),Color3.new(0.360784, 1, 0.980392),Color3.new(0.623529, 0.992157, 0.807843),Color3.new(0.454902, 0.627451, 1))
Trail114.LightEmission = 0.10000000149011612
Trail114.LightInfluence = 0.699999988079071
Trail114.TextureLength = 3.875
Trail114.Transparency = NumberSequence.new(0.800000011920929,0.800000011920929)
Trail114.Lifetime = 0.30000001192092896
ParticleEmitter115.Name = "Lightning1"
ParticleEmitter115.Parent = MeshPart113
ParticleEmitter115.Speed = NumberRange.new(0.10000000149011612, 0.10000000149011612)
ParticleEmitter115.Rotation = NumberRange.new(0, 360)
ParticleEmitter115.Color = ColorSequence.new(Color3.new(1, 0, 0.0156863),Color3.new(0.345098, 0, 0),Color3.new(0.988235, 0, 0.294118),Color3.new(1, 0, 0.0156863))
ParticleEmitter115.LightEmission = 0.6000000238418579
ParticleEmitter115.Texture = "rbxassetid://203216563"
ParticleEmitter115.Transparency = NumberSequence.new(1,0.7777780294418335,0.9800000190734863)
ParticleEmitter115.Size = NumberSequence.new(0.3125,0.5625,0.6050959825515747,0.5,0.38216501474380493)
ParticleEmitter115.Lifetime = NumberRange.new(1, 3)
ParticleEmitter115.LockedToPart = true
ParticleEmitter115.Rate = 4
ParticleEmitter115.RotSpeed = NumberRange.new(-500, 500)
ParticleEmitter115.SpreadAngle = Vector2.new(360, 360)
ParticleEmitter115.VelocitySpread = 360
ParticleEmitter116.Parent = MeshPart113
ParticleEmitter116.Speed = NumberRange.new(0, 0)
ParticleEmitter116.Rotation = NumberRange.new(0, 360)
ParticleEmitter116.Color = ColorSequence.new(Color3.new(1, 0, 0),Color3.new(1, 0, 0))
ParticleEmitter116.LightEmission = 1
ParticleEmitter116.Texture = "http://www.roblox.com/asset/?id=243098098"
ParticleEmitter116.ZOffset = 1
ParticleEmitter116.Lifetime = NumberRange.new(0.10000000149011612, 0.10000000149011612)
Weld117.Parent = MeshPart113
Weld117.C0 = CFrame.new(-256, 10, 256, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Weld117.C1 = CFrame.new(-440.199921, -0.114551, 264.984558, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Weld117.Part1 = MeshPart113
Weld117.part1 = MeshPart113
Model118.Name = "snipe"
Model118.Parent = Folder0
Model119.Name = "Weapon"
Model119.Parent = Model118
Part120.Name = "Chamber"
Part120.Parent = Model119
Part120.CFrame = CFrame.new(-179.464951, 6091.10352, 2.9125669, 0, -1.00000761e-06, -1.00000024, 0, 1.00000024, -1.00000761e-06, 1, 0, 0)
Part120.Orientation = Vector3.new(0, -90, 0)
Part120.Position = Vector3.new(-179.46495056152344, 6091.103515625, 2.912566900253296)
Part120.Rotation = Vector3.new(0, -90, 0)
Part120.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part120.Transparency = 1
Part120.Size = Vector3.new(0.31738802790641785, 0.317388653755188, 0.3173883259296417)
Part120.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part120.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part120.BrickColor = BrickColor.new("Really black")
Part120.CanCollide = false
--Part120.CustomPhysicalProperties = 0.699999988, 0.200000003, 0.5, 1, 1
Part120.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part120.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part120.Material = Enum.Material.SmoothPlastic
Part120.Reflectance = 0.10000000149011612
Part120.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part120.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part120.brickColor = BrickColor.new("Really black")
Part120.FormFactor = Enum.FormFactor.Custom
Part120.formFactor = Enum.FormFactor.Custom
CFrameValue121.Name = "weldCF"
CFrameValue121.Parent = Part120
CFrameValue121.Value = CFrame.new(-0.000175476074, 0.764995754, -0.282989502, 7.25187101e-06, -1.06042717e-06, -1.00000012, -1.74115746e-06, 0.999998152, -1.0614749e-06, 0.999998093, 1.74370064e-06, 7.2518551e-06)
MeshPart122.Name = "ColorShift"
MeshPart122.Parent = Model119
MeshPart122.CFrame = CFrame.new(-179.465271, 6091.04541, 1.24618495, 0, -0.000277000043, -1.00000012, 0, 1.00000012, -0.000277000043, 1, 0, 0)
MeshPart122.Orientation = Vector3.new(0.019999999552965164, -90, 0)
MeshPart122.Position = Vector3.new(-179.46527099609375, 6091.04541015625, 1.2461849451065063)
MeshPart122.Rotation = Vector3.new(0, -90, 0)
MeshPart122.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MeshPart122.Size = Vector3.new(8.791640281677246, 0.24667000770568848, 0.24667099118232727)
MeshPart122.BrickColor = BrickColor.new("Really black")
MeshPart122.CanCollide = false
--MeshPart122.CustomPhysicalProperties = 0.699999988, 0.300000012, 0.200000003, 1, 1
MeshPart122.Material = Enum.Material.Neon
MeshPart122.brickColor = BrickColor.new("Really black")
CFrameValue123.Name = "weldCF"
CFrameValue123.Parent = MeshPart122
CFrameValue123.Value = CFrame.new(-0.000497817993, 0.706974208, -1.94937897, -9.75639637e-07, -0.000276544772, -1, 4.95463109e-06, 0.999999046, -0.000276544975, 0.999999046, -4.95463109e-06, -9.74268687e-07)
Part124.Name = "Main"
Part124.Parent = Model119
Part124.CFrame = CFrame.new(-179.46489, 6091.04541, -3.30446577, 1.00000024, 0, 0, 0, 1.00000024, 0, 0, 0, 1)
Part124.Position = Vector3.new(-179.4648895263672, 6091.04541015625, -3.3044657707214355)
Part124.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part124.Transparency = 1
Part124.Size = Vector3.new(0.31738802790641785, 0.317388653755188, 0.3173883259296417)
Part124.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part124.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part124.BrickColor = BrickColor.new("Really black")
Part124.CanCollide = false
--Part124.CustomPhysicalProperties = 0.699999988, 0.200000003, 0.5, 1, 1
Part124.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part124.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part124.Material = Enum.Material.SmoothPlastic
Part124.Reflectance = 0.10000000149011612
Part124.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part124.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part124.brickColor = BrickColor.new("Really black")
Part124.FormFactor = Enum.FormFactor.Custom
Part124.formFactor = Enum.FormFactor.Custom
ParticleEmitter125.Name = "1FlashFX[Smoke]"
ParticleEmitter125.Parent = Part124
ParticleEmitter125.Speed = NumberRange.new(5, 7)
ParticleEmitter125.Rotation = NumberRange.new(0, 360)
ParticleEmitter125.Color = ColorSequence.new(Color3.new(0.27451, 0.27451, 0.27451),Color3.new(0.27451, 0.27451, 0.27451))
ParticleEmitter125.Enabled = false
ParticleEmitter125.LightEmission = 0.10000000149011612
ParticleEmitter125.Texture = "http://www.roblox.com/asset/?id=244514423"
ParticleEmitter125.Transparency = NumberSequence.new(0.6000000238418579,1)
ParticleEmitter125.Size = NumberSequence.new(0,0)
ParticleEmitter125.Lifetime = NumberRange.new(1.25, 1.5)
ParticleEmitter125.Rate = 100
ParticleEmitter125.RotSpeed = NumberRange.new(10, 10)
ParticleEmitter125.SpreadAngle = Vector2.new(15, 15)
ParticleEmitter125.VelocitySpread = 15
ParticleEmitter126.Name = "FlashFX[Flash]"
ParticleEmitter126.Parent = Part124
ParticleEmitter126.Color = ColorSequence.new(Color3.new(1, 1, 0.498039),Color3.new(1, 1, 0.498039))
ParticleEmitter126.Enabled = false
ParticleEmitter126.LightEmission = 1
ParticleEmitter126.Texture = "rbxassetid://257430870"
ParticleEmitter126.Transparency = NumberSequence.new(1,0.8999999761581421,0.887499988079071,1)
ParticleEmitter126.Lifetime = NumberRange.new(0.05000000074505806, 0.07500000298023224)
ParticleEmitter126.Rate = 1000
ParticleEmitter126.RotSpeed = NumberRange.new(22, 22)
PointLight127.Name = "FlashFX[Light]"
PointLight127.Parent = Part124
PointLight127.Color = Color3.new(1, 1, 0.498039)
PointLight127.Enabled = false
PointLight127.Range = 0
PointLight127.Brightness = 10
CFrameValue128.Name = "weldCF"
CFrameValue128.Parent = Part124
CFrameValue128.Value = CFrame.new(-0.000120162964, 0.706967771, -6.50000763, 1.00000012, 4.65661287e-10, 1.13686838e-13, 4.65661287e-10, 0.999998152, 2.69429118e-10, 1.13686838e-13, 2.69429118e-10, 0.999998093)
Part129.Name = "Handle"
Part129.Parent = Model119
Part129.CFrame = CFrame.new(-179.464661, 6090.14648, 3.19560194, 1, -0.000658927136, -0.000224214149, 0.00065900007, 0.999999821, 0.000324852299, 0.000224000003, -0.000324999943, 1)
Part129.Orientation = Vector3.new(-0.019999999552965164, -0.009999999776482582, 0.03999999910593033)
Part129.Position = Vector3.new(-179.46466064453125, 6090.146484375, 3.1956019401550293)
Part129.Rotation = Vector3.new(-0.019999999552965164, -0.009999999776482582, 0.03999999910593033)
Part129.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part129.Transparency = 1
Part129.Size = Vector3.new(0.31738802790641785, 0.317388653755188, 0.3173883259296417)
Part129.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part129.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part129.BrickColor = BrickColor.new("Really black")
Part129.CanCollide = false
--Part129.CustomPhysicalProperties = 0.699999988, 0.200000003, 0.5, 1, 1
Part129.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part129.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part129.Material = Enum.Material.SmoothPlastic
Part129.Reflectance = 0.10000000149011612
Part129.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part129.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part129.brickColor = BrickColor.new("Really black")
Part129.FormFactor = Enum.FormFactor.Custom
Part129.formFactor = Enum.FormFactor.Custom
Sound130.Name = "MagIn"
Sound130.Parent = Part129
Sound130.SoundId = "rbxassetid://457043231"
Sound130.Volume = 1
Sound131.Name = "MagOut"
Sound131.Parent = Part129
Sound131.SoundId = "rbxassetid://457042936"
Sound131.Volume = 1
Sound132.Name = "Prime"
Sound132.Parent = Part129
Sound132.Pitch = 0.699999988079071
Sound132.PlaybackSpeed = 0.699999988079071
Sound132.SoundId = "rbxassetid://307871546"
Sound132.Volume = 1
Sound133.Name = "FireSound"
Sound133.Parent = Part129
Sound133.TimePosition = 0.1
Sound133.MaxDistance = 1000
Sound133.SoundId = "rbxassetid://168436671"
Sound133.Volume = 0.4000000059604645
Script134.Name = "Remover"
Script134.Parent = Sound133
Script134.Enabled = false
table.insert(cors,sandbox(Script134,function()
wait(script.Parent.TimeLength)
script.Parent:Destroy()
end))
Script134.Disabled = true
Weld135.Parent = Part129
Weld135.C0 = CFrame.new(-256, 10, 256, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Weld135.C1 = CFrame.new(-265.047577, -0.0774616078, 259.591858, -0.999999881, 0.000224000003, 0.000659000012, 0.000658927136, -0.000324999943, 0.999999762, 0.000224214135, 1, 0.00032485227)
Weld135.Part1 = Part129
Weld135.part1 = Part129
UnionOperation136.Name = "Bipod"
UnionOperation136.Parent = Model119
UnionOperation136.CFrame = CFrame.new(-179.468643, 6090.51172, 0.134925961, 1.00000012, -0.000277000043, -3.20000036e-05, 0.000277000043, 1.00000012, -8.86400109e-09, 3.19999999e-05, 0, 1)
UnionOperation136.Orientation = Vector3.new(0, 0, 0.019999999552965164)
UnionOperation136.Position = Vector3.new(-179.46864318847656, 6090.51171875, 0.1349259614944458)
UnionOperation136.Rotation = Vector3.new(0, 0, 0.019999999552965164)
UnionOperation136.Color = Color3.new(0.105882, 0.164706, 0.207843)
UnionOperation136.Size = Vector3.new(1.3137792348861694, 1.0249959230422974, 0.09527632594108582)
UnionOperation136.BrickColor = BrickColor.new("Black")
UnionOperation136.CanCollide = false
--UnionOperation136.CustomPhysicalProperties = 7.8499999, 0.400000006, 0.25, 1, 1
UnionOperation136.Material = Enum.Material.Metal
UnionOperation136.brickColor = BrickColor.new("Black")
UnionOperation136.UsePartColor = true
StringValue137.Name = "Bipod by gotoabarn"
StringValue137.Parent = UnionOperation136
CFrameValue138.Name = "weldCF"
CFrameValue138.Parent = UnionOperation136
CFrameValue138.Value = CFrame.new(-0.00386428833, 0.173481107, -3.06061554, 0.999999344, -0.000276449078, -3.36271987e-05, 0.000276545063, 0.999999404, 1.6810176e-05, 3.36077719e-05, -1.68193892e-05, 0.99999845)
MeshPart139.Name = "Bolt"
MeshPart139.Parent = Model119
MeshPart139.CFrame = CFrame.new(-179.337875, 6091.09521, 4.60675001, 0, -0.500240207, -0.865886927, 0, 0.865886927, -0.500240207, 1, 0, 0)
MeshPart139.Orientation = Vector3.new(30.020000457763672, -90, 0)
MeshPart139.Position = Vector3.new(-179.33787536621094, 6091.09521484375, 4.606750011444092)
MeshPart139.Rotation = Vector3.new(90, -59.97999954223633, 90)
MeshPart139.Color = Color3.new(0.388235, 0.372549, 0.384314)
MeshPart139.Transparency = 1
MeshPart139.Size = Vector3.new(0.07579398155212402, 0.0881350040435791, 0.15307599306106567)
MeshPart139.BrickColor = BrickColor.new("Dark stone grey")
MeshPart139.CanCollide = false
--MeshPart139.CustomPhysicalProperties = 7.8499999, 0.400000006, 0.25, 1, 1
MeshPart139.Material = Enum.Material.Metal
MeshPart139.brickColor = BrickColor.new("Dark stone grey")
CFrameValue140.Name = "weldCF"
CFrameValue140.Parent = MeshPart139
CFrameValue140.Value = CFrame.new(0.126928329, 0.690810621, 0.811187744, -9.75639637e-07, -0.000276544772, -1, 4.95463109e-06, 0.999999046, -0.000276544975, 0.999999046, -4.95463109e-06, -9.74268687e-07)
MeshPart141.Name = "Bolt1"
MeshPart141.Parent = Model119
MeshPart141.CFrame = CFrame.new(-179.337875, 6091.09521, 4.60675001, 0, -0.500240207, -0.865886927, 0, 0.865886927, -0.500240207, 1, 0, 0)
MeshPart141.Orientation = Vector3.new(30.020000457763672, -90, 0)
MeshPart141.Position = Vector3.new(-179.33787536621094, 6091.09521484375, 4.606750011444092)
MeshPart141.Rotation = Vector3.new(90, -59.97999954223633, 90)
MeshPart141.Color = Color3.new(0.388235, 0.372549, 0.384314)
MeshPart141.Transparency = 1
MeshPart141.Size = Vector3.new(0.07579398155212402, 0.0881350040435791, 0.15307599306106567)
MeshPart141.BrickColor = BrickColor.new("Dark stone grey")
MeshPart141.CanCollide = false
--MeshPart141.CustomPhysicalProperties = 7.8499999, 0.400000006, 0.25, 1, 1
MeshPart141.Material = Enum.Material.Metal
MeshPart141.brickColor = BrickColor.new("Dark stone grey")
CFrameValue142.Name = "weldCF"
CFrameValue142.Parent = MeshPart141
CFrameValue142.Value = CFrame.new(0.126928329, 0.690810621, 0.811187744, -9.75639637e-07, -0.000276544772, -1, 4.95463109e-06, 0.999999046, -0.000276544975, 0.999999046, -4.95463109e-06, -9.74268687e-07)
MeshPart143.Name = "Bolt2"
MeshPart143.Parent = Model119
MeshPart143.CFrame = CFrame.new(-179.33786, 6091.0293, 4.00674391, 0, -0.000277000043, -1.00000012, 0, 1.00000012, -0.000277000043, 1, 0, 0)
MeshPart143.Orientation = Vector3.new(0.019999999552965164, -90, 0)
MeshPart143.Position = Vector3.new(-179.33786010742188, 6091.029296875, 4.006743907928467)
MeshPart143.Rotation = Vector3.new(0, -90, 0)
MeshPart143.Color = Color3.new(0.388235, 0.372549, 0.384314)
MeshPart143.Size = Vector3.new(0.07579398155212402, 0.0881350040435791, 0.15307599306106567)
MeshPart143.BrickColor = BrickColor.new("Dark stone grey")
MeshPart143.CanCollide = false
--MeshPart143.CustomPhysicalProperties = 7.8499999, 0.400000006, 0.25, 1, 1
MeshPart143.Material = Enum.Material.Metal
MeshPart143.brickColor = BrickColor.new("Dark stone grey")
CFrameValue144.Name = "weldCF"
CFrameValue144.Parent = MeshPart143
CFrameValue144.Value = CFrame.new(0.126928329, 0.690810621, 0.811187744, -9.75639637e-07, -0.000276544772, -1, 4.95463109e-06, 0.999999046, -0.000276544975, 0.999999046, -4.95463109e-06, -9.74268687e-07)
MeshPart145.Name = "Bolt3"
MeshPart145.Parent = Model119
MeshPart145.CFrame = CFrame.new(-179.33786, 6091.0293, 4.00674391, 0, -0.000277000043, -1.00000012, 0, 1.00000012, -0.000277000043, 1, 0, 0)
MeshPart145.Orientation = Vector3.new(0.019999999552965164, -90, 0)
MeshPart145.Position = Vector3.new(-179.33786010742188, 6091.029296875, 4.006743907928467)
MeshPart145.Rotation = Vector3.new(0, -90, 0)
MeshPart145.Color = Color3.new(0.388235, 0.372549, 0.384314)
MeshPart145.Size = Vector3.new(0.07579398155212402, 0.0881350040435791, 0.15307599306106567)
MeshPart145.BrickColor = BrickColor.new("Dark stone grey")
MeshPart145.CanCollide = false
--MeshPart145.CustomPhysicalProperties = 7.8499999, 0.400000006, 0.25, 1, 1
MeshPart145.Material = Enum.Material.Metal
MeshPart145.brickColor = BrickColor.new("Dark stone grey")
CFrameValue146.Name = "weldCF"
CFrameValue146.Parent = MeshPart145
CFrameValue146.Value = CFrame.new(0.126928329, 0.690810621, 0.811187744, -9.75639637e-07, -0.000276544772, -1, 4.95463109e-06, 0.999999046, -0.000276544975, 0.999999046, -4.95463109e-06, -9.74268687e-07)
UnionOperation147.Name = "Dials"
UnionOperation147.Parent = Model119
UnionOperation147.CFrame = CFrame.new(-179.462036, 6091.47168, 2.91012597, -1.00000012, 0.000277000043, 0, -0.000277000043, -1.00000012, 0, 0, 0, 1)
UnionOperation147.Orientation = Vector3.new(0, 0, -179.97999572753906)
UnionOperation147.Position = Vector3.new(-179.4620361328125, 6091.4716796875, 2.910125970840454)
UnionOperation147.Rotation = Vector3.new(0, 0, -179.97999572753906)
UnionOperation147.Color = Color3.new(0.388235, 0.372549, 0.384314)
UnionOperation147.Size = Vector3.new(0.3882755935192108, 0.2840172052383423, 0.1509961187839508)
UnionOperation147.BrickColor = BrickColor.new("Dark stone grey")
UnionOperation147.CanCollide = false
--UnionOperation147.CustomPhysicalProperties = 7.8499999, 0.400000006, 0.25, 1, 1
UnionOperation147.Material = Enum.Material.Metal
UnionOperation147.brickColor = BrickColor.new("Dark stone grey")
UnionOperation147.UsePartColor = true
CFrameValue148.Name = "weldCF"
CFrameValue148.Parent = UnionOperation147
CFrameValue148.Value = CFrame.new(0.00275611877, 1.13318729, -0.285438538, -1, 0.000276544772, -9.75639637e-07, -0.000276544975, -0.999999046, 4.95463109e-06, -9.74268687e-07, 4.95463109e-06, 0.999999046)
UnionOperation149.Name = "Frame"
UnionOperation149.Parent = Model119
UnionOperation149.CFrame = CFrame.new(-179.462006, 6091.37451, 3.00718689, 0, 0.000277000043, -1.00000012, 0, -1.00000012, -0.000277000043, -1, 0, 0)
UnionOperation149.Orientation = Vector3.new(0.019999999552965164, -90, 180)
UnionOperation149.Position = Vector3.new(-179.46200561523438, 6091.37451171875, 3.0071868896484375)
UnionOperation149.Rotation = Vector3.new(-180, -90, 0)
UnionOperation149.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
UnionOperation149.Size = Vector3.new(0.9131649136543274, 0.3343477249145508, 0.2732303738594055)
UnionOperation149.BrickColor = BrickColor.new("Really black")
UnionOperation149.CanCollide = false
--UnionOperation149.CustomPhysicalProperties = 2.69099998, 0.400000006, 0.200000003, 1, 1
UnionOperation149.Material = Enum.Material.Slate
UnionOperation149.brickColor = BrickColor.new("Really black")
UnionOperation149.UsePartColor = true
CFrameValue150.Name = "weldCF"
CFrameValue150.Parent = UnionOperation149
CFrameValue150.Value = CFrame.new(0.00278282166, 1.03611875, -0.188369751, 9.75639637e-07, 0.000276544772, -1, -4.95463109e-06, -0.999999046, -0.000276544975, -0.999999046, 4.95463109e-06, -9.74268687e-07)
UnionOperation151.Name = "Glass"
UnionOperation151.Parent = Model119
UnionOperation151.CFrame = CFrame.new(-179.46199, 6091.40527, 3.68667603, 0.000277000043, 0, -1.00000012, -1.00000012, 0, -0.000277000043, 0, 1, 0)
UnionOperation151.Orientation = Vector3.new(0.019999999552965164, -90, -90)
UnionOperation151.Position = Vector3.new(-179.4619903564453, 6091.4052734375, 3.686676025390625)
UnionOperation151.Rotation = Vector3.new(90, -90, 0)
UnionOperation151.Color = Color3.new(0.972549, 0.972549, 0.972549)
UnionOperation151.Transparency = 0.75
UnionOperation151.Size = Vector3.new(0.17256657779216766, 0.06471246480941772, 0.17256659269332886)
UnionOperation151.CanCollide = false
--UnionOperation151.CustomPhysicalProperties = 0.699999988, 0.200000003, 0.5, 1, 1
UnionOperation151.Material = Enum.Material.SmoothPlastic
UnionOperation151.Reflectance = 1
UnionOperation151.UsePartColor = true
CFrameValue152.Name = "weldCF"
CFrameValue152.Parent = UnionOperation151
CFrameValue152.Value = CFrame.new(0.00277519226, 1.06668091, 0.491111755, 0.000276544772, -9.75639637e-07, -1, -0.999999046, 4.95463109e-06, -0.000276544975, 4.95463109e-06, 0.999999046, -9.74268687e-07)
MeshPart153.Name = "GreyTubingS"
MeshPart153.Parent = Model119
MeshPart153.CFrame = CFrame.new(-179.465271, 6091.04541, 2.75054908, 0, -0.000277000043, -1.00000012, 0, 1.00000012, -0.000277000043, 1, 0, 0)
MeshPart153.Orientation = Vector3.new(0.019999999552965164, -90, 0)
MeshPart153.Position = Vector3.new(-179.46527099609375, 6091.04541015625, 2.750549077987671)
MeshPart153.Rotation = Vector3.new(0, -90, 0)
MeshPart153.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MeshPart153.Size = Vector3.new(5.888708114624023, 0.2402360439300537, 0.24023598432540894)
MeshPart153.BrickColor = BrickColor.new("Really black")
MeshPart153.CanCollide = false
--MeshPart153.CustomPhysicalProperties = 7.8499999, 0.400000006, 0.25, 1, 1
MeshPart153.Material = Enum.Material.Metal
MeshPart153.brickColor = BrickColor.new("Really black")
CFrameValue154.Name = "weldCF"
CFrameValue154.Parent = MeshPart153
CFrameValue154.Value = CFrame.new(-0.00050163269, 0.706979573, -0.445014954, -9.75639637e-07, -0.000276544772, -1, 4.95463109e-06, 0.999999046, -0.000276544975, 0.999999046, -4.95463109e-06, -9.74268687e-07)
MeshPart155.Name = "HandlePart"
MeshPart155.Parent = Model119
MeshPart155.CFrame = CFrame.new(-179.465118, 6090.50439, 3.02764893, 0, -0.000277000043, -1.00000012, 0, 1.00000012, -0.000277000043, 1, 0, 0)
MeshPart155.Orientation = Vector3.new(0.019999999552965164, -90, 0)
MeshPart155.Position = Vector3.new(-179.46511840820312, 6090.50439453125, 3.02764892578125)
MeshPart155.Rotation = Vector3.new(0, -90, 0)
MeshPart155.Color = Color3.new(0.239216, 0.227451, 0.235294)
MeshPart155.Size = Vector3.new(1.357235074043274, 0.9901089668273926, 0.2003280222415924)
MeshPart155.BrickColor = BrickColor.new("Medium brown")
MeshPart155.CanCollide = false
--MeshPart155.CustomPhysicalProperties = 7.8499999, 0.400000006, 0.25, 1, 1
MeshPart155.Material = Enum.Material.Metal
MeshPart155.brickColor = BrickColor.new("Medium brown")
CFrameValue156.Name = "weldCF"
CFrameValue156.Parent = MeshPart155
CFrameValue156.Value = CFrame.new(-0.000352859497, 0.166058928, -0.167900085, -9.75639637e-07, -0.000276544772, -1, 4.95463109e-06, 0.999999046, -0.000276544975, 0.999999046, -4.95463109e-06, -9.74268687e-07)
UnionOperation157.Name = "Mag"
UnionOperation157.Parent = Model119
UnionOperation157.CFrame = CFrame.new(-179.446976, 6091.04541, 2.95603895, -0.000276922918, -0.0105658127, -0.999943972, 1.00000072, -5.2513119e-06, -0.000276885577, -2.10106623e-06, -0.999944985, 0.0105657987)
UnionOperation157.Orientation = Vector3.new(0.019999999552965164, -89.38999938964844, 90)
UnionOperation157.Position = Vector3.new(-179.4469757080078, 6091.04541015625, 2.9560389518737793)
UnionOperation157.Rotation = Vector3.new(1.5, -89.38999938964844, 91.5)
UnionOperation157.Color = Color3.new(0.996078, 0.952941, 0.733333)
UnionOperation157.Size = Vector3.new(0.3998699486255646, 0.3998699486255646, 0.3998699486255646)
UnionOperation157.BrickColor = BrickColor.new("Buttermilk")
UnionOperation157.CanCollide = false
--UnionOperation157.CustomPhysicalProperties = 7.8499999, 0.400000006, 0.25, 1, 1
UnionOperation157.Material = Enum.Material.Metal
UnionOperation157.brickColor = BrickColor.new("Buttermilk")
MeshPart158.Name = "Panel"
MeshPart158.Parent = Model119
MeshPart158.CFrame = CFrame.new(-179.465179, 6090.73926, 5.03767395, 0, -0.000277000043, -1.00000012, 0, 1.00000012, -0.000277000043, 1, 0, 0)
MeshPart158.Orientation = Vector3.new(0.019999999552965164, -90, 0)
MeshPart158.Position = Vector3.new(-179.46517944335938, 6090.7392578125, 5.0376739501953125)
MeshPart158.Rotation = Vector3.new(0, -90, 0)
MeshPart158.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MeshPart158.Size = Vector3.new(1.1486492156982422, 0.750607967376709, 0.05000000074505806)
MeshPart158.BrickColor = BrickColor.new("Really black")
MeshPart158.CanCollide = false
--MeshPart158.CustomPhysicalProperties = 7.8499999, 0.400000006, 0.25, 1, 1
MeshPart158.Material = Enum.Material.Metal
MeshPart158.brickColor = BrickColor.new("Really black")
CFrameValue159.Name = "weldCF"
CFrameValue159.Parent = MeshPart158
CFrameValue159.Value = CFrame.new(-0.000419616699, 0.400971174, 1.84212494, -9.75639637e-07, -0.000276544772, -1, 4.95463109e-06, 0.999999046, -0.000276544975, 0.999999046, -4.95463109e-06, -9.74268687e-07)
UnionOperation160.Name = "Reticle"
UnionOperation160.Parent = Model119
UnionOperation160.CFrame = CFrame.new(-179.46199, 6091.40527, 1.38577998, 0, -0.000277000043, -1.00000012, 0, 1.00000012, -0.000277000043, 1, 0, 0)
UnionOperation160.Orientation = Vector3.new(0.019999999552965164, -90, 0)
UnionOperation160.Position = Vector3.new(-179.4619903564453, 6091.4052734375, 1.3857799768447876)
UnionOperation160.Rotation = Vector3.new(0, -90, 0)
UnionOperation160.Color = Color3.new(0.639216, 0.635294, 0.647059)
UnionOperation160.Transparency = 0.75
UnionOperation160.Size = Vector3.new(0.05000000074505806, 0.2876109182834625, 0.2876109480857849)
UnionOperation160.BrickColor = BrickColor.new("Medium stone grey")
UnionOperation160.CanCollide = false
--UnionOperation160.CustomPhysicalProperties = 0.699999988, 0.200000003, 0.5, 1, 1
UnionOperation160.Material = Enum.Material.SmoothPlastic
UnionOperation160.Reflectance = 1
UnionOperation160.brickColor = BrickColor.new("Medium stone grey")
CFrameValue161.Name = "weldCF"
CFrameValue161.Parent = UnionOperation160
CFrameValue161.Value = CFrame.new(0.00277709961, 1.06666946, -1.80977631, -9.75639637e-07, -0.000276544772, -1, 4.95463109e-06, 0.999999046, -0.000276544975, 0.999999046, -4.95463109e-06, -9.74268687e-07)
UnionOperation162.Name = "Scope"
UnionOperation162.Parent = Model119
UnionOperation162.CFrame = CFrame.new(-179.46019, 6091.40527, 2.53263807, 0.000277000043, 0, -1.00000012, -1.00000012, 0, -0.000277000043, 0, 1, 0)
UnionOperation162.Orientation = Vector3.new(0.019999999552965164, -90, -90)
UnionOperation162.Position = Vector3.new(-179.46018981933594, 6091.4052734375, 2.5326380729675293)
UnionOperation162.Rotation = Vector3.new(90, -90, 0)
UnionOperation162.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
UnionOperation162.Size = Vector3.new(0.3091818392276764, 2.37998366355896, 0.3127768635749817)
UnionOperation162.BrickColor = BrickColor.new("Really black")
UnionOperation162.CanCollide = false
--UnionOperation162.CustomPhysicalProperties = 7.8499999, 0.400000006, 0.25, 1, 1
UnionOperation162.Material = Enum.Material.Metal
UnionOperation162.brickColor = BrickColor.new("Really black")
UnionOperation162.UsePartColor = true
CFrameValue163.Name = "weldCF"
CFrameValue163.Parent = UnionOperation162
CFrameValue163.Value = CFrame.new(0.00457191467, 1.06667566, -0.66292572, 0.000276544772, -9.75639637e-07, -1, -0.999999046, 4.95463109e-06, -0.000276544975, 4.95463109e-06, 0.999999046, -9.74268687e-07)
MeshPart164.Name = "ScopeAttachment"
MeshPart164.Parent = Model119
MeshPart164.CFrame = CFrame.new(-179.465317, 6091.22217, 2.8717041, 0, -0.000277000043, -1.00000012, 0, 1.00000012, -0.000277000043, 1, 0, 0)
MeshPart164.Orientation = Vector3.new(0.019999999552965164, -90, 0)
MeshPart164.Position = Vector3.new(-179.46531677246094, 6091.22216796875, 2.8717041015625)
MeshPart164.Rotation = Vector3.new(0, -90, 0)
MeshPart164.Color = Color3.new(0.388235, 0.372549, 0.384314)
MeshPart164.Size = Vector3.new(0.8009589910507202, 0.16986298561096191, 0.14284801483154297)
MeshPart164.BrickColor = BrickColor.new("Dark stone grey")
MeshPart164.CanCollide = false
--MeshPart164.CustomPhysicalProperties = 7.8499999, 0.400000006, 0.25, 1, 1
MeshPart164.Material = Enum.Material.Metal
MeshPart164.brickColor = BrickColor.new("Dark stone grey")
CFrameValue165.Name = "weldCF"
CFrameValue165.Parent = MeshPart164
CFrameValue165.Value = CFrame.new(-0.000551223755, 0.884002388, -0.323860168, -9.75639637e-07, -0.000276544772, -1, 4.95463109e-06, 0.999999046, -0.000276544975, 0.999999046, -4.95463109e-06, -9.74268687e-07)
MeshPart166.Name = "Stock"
MeshPart166.Parent = Model119
MeshPart166.CFrame = CFrame.new(-179.465195, 6090.74219, 5.73196411, 0, -0.000277000043, -1.00000012, 0, 1.00000012, -0.000277000043, 1, 0, 0)
MeshPart166.Orientation = Vector3.new(0.019999999552965164, -90, 0)
MeshPart166.Position = Vector3.new(-179.46519470214844, 6090.7421875, 5.731964111328125)
MeshPart166.Rotation = Vector3.new(0, -90, 0)
MeshPart166.Color = Color3.new(0.239216, 0.227451, 0.235294)
MeshPart166.Size = Vector3.new(0.24959087371826172, 0.9310640096664429, 0.3450000286102295)
MeshPart166.BrickColor = BrickColor.new("Medium brown")
MeshPart166.CanCollide = false
--MeshPart166.CustomPhysicalProperties = 7.8499999, 0.400000006, 0.25, 1, 1
MeshPart166.Material = Enum.Material.Metal
MeshPart166.brickColor = BrickColor.new("Medium brown")
CFrameValue167.Name = "weldCF"
CFrameValue167.Parent = MeshPart166
CFrameValue167.Value = CFrame.new(-0.000419616699, 0.404059589, 2.5364151, -9.75639637e-07, -0.000276544772, -1, 4.95463109e-06, 0.999999046, -0.000276544975, 0.999999046, -4.95463109e-06, -9.74268687e-07)
MeshPart168.Name = "Trigger"
MeshPart168.Parent = Model119
MeshPart168.CFrame = CFrame.new(-179.465179, 6090.65186, 2.85055494, 0, -0.000277000043, -1.00000012, 0, 1.00000012, -0.000277000043, 1, 0, 0)
MeshPart168.Orientation = Vector3.new(0.019999999552965164, -90, 0)
MeshPart168.Position = Vector3.new(-179.46517944335938, 6090.65185546875, 2.850554943084717)
MeshPart168.Rotation = Vector3.new(0, -90, 0)
MeshPart168.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MeshPart168.Size = Vector3.new(0.07528209686279297, 0.16214799880981445, 0.05000000074505806)
MeshPart168.BrickColor = BrickColor.new("Really black")
MeshPart168.CanCollide = false
--MeshPart168.CustomPhysicalProperties = 7.8499999, 0.400000006, 0.25, 1, 1
MeshPart168.Material = Enum.Material.Metal
MeshPart168.brickColor = BrickColor.new("Really black")
CFrameValue169.Name = "weldCF"
CFrameValue169.Parent = MeshPart168
CFrameValue169.Value = CFrame.new(-0.000392913818, 0.313616514, -0.344993591, -9.75639637e-07, -0.000276544772, -1, 4.95463109e-06, 0.999999046, -0.000276544975, 0.999999046, -4.95463109e-06, -9.74268687e-07)
Part170.Name = "AimPart"
Part170.Parent = Model119
Part170.CFrame = CFrame.new(-179.464981, 6091.39941, 4.44553423, 1.00000024, 0, 0, 0, 1.00000024, 0, 0, 0, 1)
Part170.Position = Vector3.new(-179.46498107910156, 6091.3994140625, 4.4455342292785645)
Part170.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part170.Transparency = 1
Part170.Size = Vector3.new(0.31738802790641785, 0.317388653755188, 0.3173883259296417)
Part170.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part170.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part170.BrickColor = BrickColor.new("Really black")
Part170.CanCollide = false
--Part170.CustomPhysicalProperties = 0.699999988, 0.200000003, 0.5, 1, 1
Part170.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part170.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part170.Material = Enum.Material.SmoothPlastic
Part170.Reflectance = 0.10000000149011612
Part170.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part170.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part170.brickColor = BrickColor.new("Really black")
Part170.FormFactor = Enum.FormFactor.Custom
Part170.formFactor = Enum.FormFactor.Custom
ParticleEmitter171.Name = "1FlashFX[Smoke]"
ParticleEmitter171.Parent = Part170
ParticleEmitter171.Speed = NumberRange.new(5, 7)
ParticleEmitter171.Rotation = NumberRange.new(0, 360)
ParticleEmitter171.Color = ColorSequence.new(Color3.new(0.27451, 0.27451, 0.27451),Color3.new(0.27451, 0.27451, 0.27451))
ParticleEmitter171.Enabled = false
ParticleEmitter171.LightEmission = 0.10000000149011612
ParticleEmitter171.Texture = "http://www.roblox.com/asset/?id=244514423"
ParticleEmitter171.Transparency = NumberSequence.new(0.6000000238418579,1)
ParticleEmitter171.Size = NumberSequence.new(0,0)
ParticleEmitter171.Lifetime = NumberRange.new(1.25, 1.5)
ParticleEmitter171.Rate = 100
ParticleEmitter171.RotSpeed = NumberRange.new(10, 10)
ParticleEmitter171.SpreadAngle = Vector2.new(15, 15)
ParticleEmitter171.VelocitySpread = 15
ParticleEmitter172.Name = "FlashFX[Flash]"
ParticleEmitter172.Parent = Part170
ParticleEmitter172.Color = ColorSequence.new(Color3.new(1, 1, 0.498039),Color3.new(1, 1, 0.498039))
ParticleEmitter172.Enabled = false
ParticleEmitter172.LightEmission = 1
ParticleEmitter172.Texture = "rbxassetid://257430870"
ParticleEmitter172.Transparency = NumberSequence.new(1,0.8999999761581421,0.887499988079071,1)
ParticleEmitter172.Lifetime = NumberRange.new(0.05000000074505806, 0.07500000298023224)
ParticleEmitter172.Rate = 1000
ParticleEmitter172.RotSpeed = NumberRange.new(22, 22)
PointLight173.Name = "FlashFX[Light]"
PointLight173.Parent = Part170
PointLight173.Color = Color3.new(1, 1, 0.498039)
PointLight173.Enabled = false
PointLight173.Range = 0
PointLight173.Brightness = 10
CFrameValue174.Name = "weldCF"
CFrameValue174.Parent = Part170
CFrameValue174.Value = CFrame.new(-0.000225067139, 1.06100583, 1.24998474, 1.00000012, 4.65661287e-10, 1.13686838e-13, 4.65661287e-10, 0.999998152, 2.69429118e-10, 1.13686838e-13, 2.69429118e-10, 0.999998093)
Model175.Name = "RightArm"
Model175.Parent = Model118
MeshPart176.Name = "REF"
MeshPart176.Parent = Model175
MeshPart176.CFrame = CFrame.new(-179.300781, 6090.43359, 4.07615614, 1.00000012, 0, 0, 0, 0, -1.00000012, 0, 1, 0)
MeshPart176.Orientation = Vector3.new(90, 0, 0)
MeshPart176.Position = Vector3.new(-179.30078125, 6090.43359375, 4.076156139373779)
MeshPart176.Rotation = Vector3.new(90, 0, 0)
MeshPart176.Color = Color3.new(0.972549, 0.972549, 0.972549)
MeshPart176.Transparency = 1
MeshPart176.Size = Vector3.new(1, 2, 1)
MeshPart176.BrickColor = BrickColor.new("Institutional white")
MeshPart176.CanCollide = false
MeshPart176.Material = Enum.Material.SmoothPlastic
MeshPart176.brickColor = BrickColor.new("Institutional white")
Script177.Name = "qPerfectionWeld"
Script177.Parent = Model118
table.insert(cors,sandbox(Script177,function()
local NEVER_BREAK_JOINTS = false -- If you set this to true it will never break joints (this can create some welding issues, but can save stuff like hinges).


local function CallOnChildren(Instance, FunctionToCall)
	FunctionToCall(Instance)

	for _, Child in next, Instance:GetChildren() do
		CallOnChildren(Child, FunctionToCall)
	end
end

local function GetNearestParent(Instance, ClassName)
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
	CallOnChildren(StartInstance, function(Item)
		if Item:IsA("BasePart") then
			List[#List+1] = Item;
		end
	end)

	return List
end

local function Modify(Instance, Values)
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

local function WeldParts(Parts, MainPart, JointType)
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
end

local function PerfectionWeld()	
	local Tool = GetNearestParent(script, "Tool")

	local Parts = GetBricks(script.Parent)
	local PrimaryPart = script.Parent.RightArm.REF

	if PrimaryPart then
		WeldParts(Parts, PrimaryPart, "Weld")
	else
		warn("qWeld - Unable to weld part")
	end
	
	return Tool
end

local Tool = PerfectionWeld()


if Tool and script.ClassName == "Script" then
	script.Parent.AncestryChanged:connect(function()
		PerfectionWeld()
	end)
end
end))
ScreenGui178.Name = "GUI"
ScreenGui178.Parent = Folder0
Frame179.Parent = ScreenGui178
Frame179.Position = UDim2.new(0.0915461779, 0, 0.799844027, 0)
Frame179.Rotation = -15
Frame179.Size = UDim2.new(0, 277, 0, 100)
Frame179.BackgroundColor = BrickColor.new("Medium brown")
Frame179.BackgroundColor3 = Color3.new(0.247059, 0.247059, 0.247059)
Frame179.BackgroundTransparency = 1
Frame179.BorderSizePixel = 0
Frame180.Name = "Quad"
Frame180.Parent = Frame179
Frame180.Position = UDim2.new(-0.590019345, 0, 0.540000021, 0)
Frame180.Rotation = 45
Frame180.Size = UDim2.new(0, 50, 0, 50)
Frame180.BackgroundColor = BrickColor.new("Black metallic")
Frame180.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
Frame180.BorderSizePixel = 0
Frame180.LayoutOrder = 1
Frame180.ZIndex = 999999999
Frame181.Name = "Quad"
Frame181.Parent = Frame179
Frame181.Position = UDim2.new(0.725927234, 0, 0.540000021, 0)
Frame181.Rotation = 45
Frame181.Size = UDim2.new(0, 50, 0, 50)
Frame181.BackgroundColor = BrickColor.new("Black metallic")
Frame181.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
Frame181.BorderSizePixel = 0
Frame181.LayoutOrder = 1
Frame181.ZIndex = 999999999
TextLabel182.Name = "TEXT"
TextLabel182.Parent = Frame179
TextLabel182.Position = UDim2.new(-0.502322853, 0, 0.439999998, 0)
TextLabel182.Size = UDim2.new(0, 364, 0, 71)
TextLabel182.BackgroundColor = BrickColor.new("Black metallic")
TextLabel182.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
TextLabel182.BorderSizePixel = 0
TextLabel182.LayoutOrder = 2
TextLabel182.ZIndex = 999999999
TextLabel182.Font = Enum.Font.Arcade
TextLabel182.FontSize = Enum.FontSize.Size24
TextLabel182.Text = "Bloodwater V2"
TextLabel182.TextColor = BrickColor.new("Institutional white")
TextLabel182.TextColor3 = Color3.new(1, 1, 1)
TextLabel182.TextSize = 24
TextLabel182.TextStrokeTransparency = 0
TextLabel182.TextWrap = true
TextLabel182.TextWrapped = true
Frame183.Name = "epic"
Frame183.Parent = ScreenGui178
Frame183.Position = UDim2.new(0.892191112, 0, 0.674369752, 0)
Frame183.Rotation = -5
Frame183.Size = UDim2.new(0, 162, 0, 294)
Frame183.BackgroundColor = BrickColor.new("Black metallic")
Frame183.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
Frame183.BorderSizePixel = 0
Frame184.Name = "Quad"
Frame184.Parent = Frame183
Frame184.Position = UDim2.new(0.355556875, 0, -0.0518366918, 0)
Frame184.Rotation = 45
Frame184.Size = UDim2.new(0, 50, 0, 50)
Frame184.BackgroundColor = BrickColor.new("Black metallic")
Frame184.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
Frame184.BorderSizePixel = 0
Frame184.LayoutOrder = 1
Frame184.ZIndex = 999999999
Frame185.Name = "Quad"
Frame185.Parent = Frame183
Frame185.Position = UDim2.new(0.37294364, 0, 0.903945684, 0)
Frame185.Rotation = 45
Frame185.Size = UDim2.new(0, 50, 0, 50)
Frame185.BackgroundColor = BrickColor.new("Black metallic")
Frame185.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
Frame185.BorderSizePixel = 0
Frame185.LayoutOrder = 1
Frame185.ZIndex = 999999999
TextLabel186.Name = "hhh"
TextLabel186.Parent = Frame183
TextLabel186.Position = UDim2.new(0.172642082, 0, 0.118515536, 0)
TextLabel186.Size = UDim2.new(0, 114, 0, 50)
TextLabel186.BackgroundColor = BrickColor.new("Institutional white")
TextLabel186.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel186.BackgroundTransparency = 1
TextLabel186.BorderSizePixel = 0
TextLabel186.Font = Enum.Font.Arcade
TextLabel186.FontSize = Enum.FontSize.Size24
TextLabel186.Text = "MODES:"
TextLabel186.TextColor = BrickColor.new("Institutional white")
TextLabel186.TextColor3 = Color3.new(1, 1, 1)
TextLabel186.TextSize = 24
TextLabel187.Name = "aaa"
TextLabel187.Parent = Frame183
TextLabel187.Position = UDim2.new(0.166469246, 0, 0.223957703, 0)
TextLabel187.Size = UDim2.new(0, 114, 0, 50)
TextLabel187.BackgroundColor = BrickColor.new("Institutional white")
TextLabel187.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel187.BackgroundTransparency = 1
TextLabel187.BorderSizePixel = 0
TextLabel187.Font = Enum.Font.Arcade
TextLabel187.FontSize = Enum.FontSize.Size18
TextLabel187.Text = "1-7"
TextLabel187.TextColor = BrickColor.new("Institutional white")
TextLabel187.TextColor3 = Color3.new(1, 1, 1)
TextLabel187.TextSize = 17
TextLabel188.Name = "YAY"
TextLabel188.Parent = Frame183
TextLabel188.Position = UDim2.new(0.179300949, 0, 0.475780874, 0)
TextLabel188.Size = UDim2.new(0, 116, 0, 50)
TextLabel188.BackgroundColor = BrickColor.new("Institutional white")
TextLabel188.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel188.BackgroundTransparency = 1
TextLabel188.BorderSizePixel = 0
TextLabel188.Font = Enum.Font.Arcade
TextLabel188.FontSize = Enum.FontSize.Size24
TextLabel188.Text = "MODE:"
TextLabel188.TextColor = BrickColor.new("Institutional white")
TextLabel188.TextColor3 = Color3.new(1, 1, 1)
TextLabel188.TextSize = 24
TextLabel189.Name = "ModeT"
TextLabel189.Parent = Frame183
TextLabel189.Position = UDim2.new(0.241029337, 0, 0.605032563, 0)
TextLabel189.Rotation = -5
TextLabel189.Size = UDim2.new(0, 116, 0, 50)
TextLabel189.BackgroundColor = BrickColor.new("Institutional white")
TextLabel189.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel189.BackgroundTransparency = 1
TextLabel189.BorderSizePixel = 0
TextLabel189.Font = Enum.Font.Arcade
TextLabel189.FontSize = Enum.FontSize.Size18
TextLabel189.Text = "BLOODWATER"
TextLabel189.TextColor = BrickColor.new("Institutional white")
TextLabel189.TextColor3 = Color3.new(1, 1, 1)
TextLabel189.TextSize = 18
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
wait(2)
-- VEIL TEMPLATE LOL XDDDD, ebics note: Yea yea, Aux's Note: I never cared veil about that re-uploaded template
wait(1/60)



warn([[" 
 _           _     _     _              _    ___    __    _    \    /   __ 
|_)   |     / \   / \   | \   \    /   |_|    |    |_    |_)    \  /     _)
|_)   |__   \_/   \_/   |_/    \/\/    | |    |    |__   | \     \/     /__


░█▀▀█ █░░█ █░█ █▀▀▄ █▀▀█ █▀▀ 　 ▀█▀ █▀▀ 　 ░█▀▀█ 　 ▒█▀▀█ █▀▀█ █▀▀█ █░░ 　 ▒█░▄▀ ░▀░ █▀▀▄ 
▒█▄▄█ █░░█ ▄▀▄ █░░█ █░░█ ▀▀█ 　 ▒█░ ▀▀█ 　 ▒█▄▄█ 　 ▒█░░░ █░░█ █░░█ █░░ 　 ▒█▀▄░ ▀█▀ █░░█ 
▒█░▒█ ░▀▀▀ ▀░▀ ▀░░▀ ▀▀▀▀ ▀▀▀ 　 ▄█▄ ▀▀▀ 　 ▒█░▒█ 　 ▒█▄▄█ ▀▀▀▀ ▀▀▀▀ ▀▀▀ 　 ▒█░▒█ ▀▀▀ ▀▀▀░

░█▀▀▀ █▀▀▄ ─▀─ █▀▀ 　 ▀█▀ █▀▀ 　 ─█▀▀█ 　 ░█▀▀█ █▀▀ █▀▀█ █── █── █──█ 　 ░█▀▀█ █▀▀█ █▀▀█ █── 　 ░█─▄▀ ─▀─ █▀▀▄ 
░█▀▀▀ █▀▀▄ ▀█▀ █── 　 ░█─ ▀▀█ 　 ░█▄▄█ 　 ░█▄▄▀ █▀▀ █▄▄█ █── █── █▄▄█ 　 ░█─── █──█ █──█ █── 　 ░█▀▄─ ▀█▀ █──█ 
░█▄▄▄ ▀▀▀─ ▀▀▀ ▀▀▀ 　 ▄█▄ ▀▀▀ 　 ░█─░█ 　 ░█─░█ ▀▀▀ ▀──▀ ▀▀▀ ▀▀▀ ▄▄▄█ 　 ░█▄▄█ ▀▀▀▀ ▀▀▀▀ ▀▀▀ 　 ░█─░█ ▀▀▀ ▀▀▀─

Not sure if anyone reads these.
Logging means you fat


Auxnos Says:
I add new modes sometimes and new weapons ok bye.



--Walk By Auxnos/Axvryys B)
"]])
local S = setmetatable({},{__index = function(s,i) return game:service(i) end})
local CF = {N=CFrame.new,A=CFrame.Angles,fEA=CFrame.fromEulerAnglesXYZ}
local C3 = {tRGB= function(c3) return c3.r*255,c3.g*255,c3.b*255 end,N=Color3.new,RGB=Color3.fromRGB,HSV=Color3.fromHSV,tHSV=Color3.toHSV}
local V3 = {N=Vector3.new,FNI=Vector3.FromNormalId,A=Vector3.FromAxis}
local M = {C=math.cos,R=math.rad,S=math.sin,P=math.pi,RNG=math.random,MRS=math.randomseed,H=math.huge,RRNG = function(min,max,div) return math.rad(math.random(min,max)/(div or 1)) end}
local R3 = {N=Region3.new}
local De = S.Debris
local WS = workspace
local Lght = S.Lighting
local RepS = S.ReplicatedStorage
local IN = Instance.new
local Plrs = S.Players

Player = game.Players.LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local TIME = 0
local fakerot = 0
local sick = Instance.new("Sound",Torso)
sick = Instance.new("Sound", Torso)
sick.Volume = 10
sick.TimePosition = 0
sick.PlaybackSpeed = 1
sick.Pitch = 0.9
sick.SoundId = "rbxassetid://4835535512"
sick.Name = "wrecked"
sick.Looped = true
sick:Play()

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

Animation_Speed = 3
local FORCERESET = false
Frame_Speed = 1 / 60
local Speed = 16
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local HOODC0 = CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
local DAMAGEMULTIPLIER = 1
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = true
local COMBO = 3
local Rooted = false
local SINE = 5
Player_Size = 1
SIZE = 1
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local VALUE1 = false
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
--ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
--ROBLOXIDLEANIMATION.Parent = Humanoid
local Weapon = IT("Model")
Weapon.Name = "Adds"
local Effects = IT("Folder", Weapon)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character:FindFirstChild("Animate")
local UNANCHOR = true
local TOBANISH = {}
local TAIL = {}
local Func = Instance.new("RemoteFunction")
local MODE = "BloodWater"
pcall(function()
local WEAPONGUI = script.Folder.GUI
WEAPONGUI.Parent = PlayerGui
end)
pcall(function()
local MText = WEAPONGUI.epic.ModeT.Text
end)

local NAMEBILL = Instance.new("BillboardGui",Character)
NAMEBILL.AlwaysOnTop = true
NAMEBILL.Size = UDim2.new(7,35,3,15)
NAMEBILL.StudsOffset = Vector3.new(0,2,0)
NAMEBILL.MaxDistance = 10000
NAMEBILL.Adornee = Head
NAMEBILL.Name = "NameBillboard"
local NAMEMODE = Instance.new("TextLabel",NAMEBILL)
NAMEMODE.BackgroundTransparency = 1
NAMEMODE.TextScaled = false
NAMEMODE.BorderSizePixel = 0
NAMEMODE.Text = "B L O O D W A T E R"
NAMEMODE.Font = "Antique"
NAMEMODE.TextSize = 30
NAMEMODE.TextStrokeTransparency = 0
NAMEMODE.Size = UDim2.new(1,0,0.5,0)
NAMEMODE.Parent = NAMEBILL
NAMEMODE.TextColor3 = Color3.fromRGB(0,0,0)
NAMEMODE.TextStrokeColor3 = Color3.new(0,0,0)

--//=================================\\
--\\=================================//

--//=================================\\
--||          COMPATIBILTY
--\\=================================//

cf = CF
angles = ANGLES
sine = SINE
mouse = Mouse
RH = RightHip
LH = LeftHip
RW = RightShoulder
LW = LeftShoulder
clerp = Clerp
necko = NECKC0
RootCF = ROOTC0

--//=================================\\
--|| SAZERENOS' ARTIFICIAL HEARTBEAT
--\\=================================//

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")

frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)


--//=================================\\
--\\=================================//

--//=================================\\
--|| 	      SOME FUNCTIONS
--\\=================================//

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end

NewInstance = function(instance,parent,properties)
	local inst = Instance.new(instance)
	inst.Parent = parent
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end

FXFolder = script.Folder.Effects
FXFolder.Parent = nil

function CamShake(who,times,intense,origin) 
	coroutine.wrap(function()
		if(FXFolder:FindFirstChild'CamShake')then
			local cam = FXFolder.CamShake:Clone()
			cam:WaitForChild'intensity'.Value = intense
			cam:WaitForChild'times'.Value = times

			if(origin)then NewInstance((typeof(origin) == 'Instance' and "ObjectValue" or typeof(origin) == 'Vector3' and 'Vector3Value'),cam,{Name='origin',Value=origin}) end
			cam.Parent = who
			wait()
			cam.Disabled = false
		end
	end)()
end

function CamShakeAll(times,intense,origin)
	for _,v in next, Plrs:players() do
		CamShake(v:FindFirstChildOfClass'PlayerGui' or v:FindFirstChildOfClass'Backpack' or v.Character,times,intense,origin)
	end
end

function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

local function weldBetween(a, b)
	local weldd = Instance.new("ManualWeld")
	weldd.Part0 = a
	weldd.Part1 = b
	weldd.C0 = CFrame.new()
	weldd.C1 = b.CFrame:inverse() * a.CFrame
	weldd.Parent = a
	return weldd
end


function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end

function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end

function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end

function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = TEXTCOLOR
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = false
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end

function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
end

function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end

local S = IT("Sound")
function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat wait(1) until NEWSOUND.Playing == false or NEWSOUND.Parent ~= PARENT
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end

function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

--WACKYEFFECT({EffectType = "", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
function WACKYEFFECT(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or VT(1,1,1))
	local ENDSIZE = (Table.Size2 or VT(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or C3(1,1,1))
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1,1,1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0,0,0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = VT(SIZE.X,SIZE.X,SIZE.X)
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X,SIZE.X,0.1), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			for LOOP = 1, TIME+1 do
				Swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = VT(0,0,-MSH.Scale.X/8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
				else
					EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
				end
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				SOUND.Stopped:Connect(function()
					EFFECT:remove()
				end)
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end



function CreatePart2(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

function CreateWeldOrSnapOrMotor2(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end


function ChangeName(Text)
	NAMEMODE.Text = Text
end

-- 1x_0c Weld Weapons, bruh.

local AKWeld = script.Folder.AK.RightArm:WaitForChild'REF'
for i,v in pairs(script.Folder.AK.RightArm:GetChildren()) do
	v.Anchored = false
end
local SRightAWeld = IT("Weld")
SRightAWeld.Parent = RightArm
SRightAWeld.Part0 = RightArm
SRightAWeld.Part1 = AKWeld
SRightAWeld.Name = "AK47"
SRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local BanishGun = script.Folder.AK
local Hole = BanishGun.Weapon.Hole
BanishGun.Parent = Character

local PistolWeld = script.Folder.Pistol.RightArm:WaitForChild'REF'
for i,v in pairs(script.Folder.Pistol.RightArm:GetChildren()) do
	v.Anchored = false
end
local SRightAWeld = IT("Weld")
SRightAWeld.Parent = RightArm
SRightAWeld.Part0 = RightArm
SRightAWeld.Part1 = PistolWeld
SRightAWeld.Name = "Pistol"
SRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local PistolGun = script.Folder.Pistol
local PistolHole = PistolGun.Weapon.Hole
PistolGun.Parent = nil


local SniperWeld = script.Folder.Sniper.RightArm:WaitForChild'REF'
for i,v in pairs(script.Folder.Sniper.RightArm:GetChildren()) do
	v.Anchored = false
end
local SRightAWeld = IT("Weld")
SRightAWeld.Parent = RightArm
SRightAWeld.Part0 = RightArm
SRightAWeld.Part1 = SniperWeld
SRightAWeld.Name = "Sniper"
SRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local SniperGun = script.Folder.Sniper
local SniperHole = SniperGun.Weapon.Hole
SniperGun.Parent = nil

local snip = script.Folder.snipe.RightArm:WaitForChild'REF'
for i,v in pairs(script.Folder.snipe.RightArm:GetChildren()) do
	v.Anchored = false
end
local SRightAWeld = IT("Weld")
SRightAWeld.Parent = RightArm
SRightAWeld.Part0 = RightArm
SRightAWeld.Part1 = snip
SRightAWeld.Name = "snipe"
SRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local sniper = script.Folder.snipe
sniper.Parent = nil

local RailWeld = script.Folder.RailGun.RightArm:WaitForChild'REF'
for i,v in pairs(script.Folder.RailGun.RightArm:GetChildren()) do
	v.Anchored = false
end 
local RRRightAWeld = IT("Weld")
RRRightAWeld.Parent = RightArm
RRRightAWeld.Part0 = RightArm
RRRightAWeld.Part1 = RailWeld
RRRightAWeld.Name = "Railgun"
RRRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local RailGun = script.Folder.RailGun
local Railyy = RailGun.Weapon.Hole
RailGun.Parent = nil

local ShottyWeld = script.Folder.Shotty.RightArm:WaitForChild'REF'
for i,v in pairs(script.Folder.Shotty.RightArm:GetChildren()) do
	v.Anchored = false
end 
local SSSRightAWeld = IT("Weld")
SSSRightAWeld.Parent = RightArm
SSSRightAWeld.Part0 = RightArm
SSSRightAWeld.Part1 = ShottyWeld
SSSRightAWeld.Name = "Shotty"
SSSRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local Shotty = script.Folder.Shotty
Shotty.Parent = nil

local Weldy = script.Folder.Swordo.RightArm:WaitForChild'REF'
for i,v in pairs(script.Folder.Swordo.RightArm:GetChildren()) do
	v.Anchored = false
end
local KATSRightAWeld = IT("Weld")
KATSRightAWeld.Parent = RightArm
KATSRightAWeld.Part0 = RightArm
KATSRightAWeld.Part1 = Weldy
KATSRightAWeld.Name = "Swordo"
KATSRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local Swordo = script.Folder.Swordo
--local KatanaHit = Swordo.Weapon.Hitbox
Swordo.Parent = nil

local KatanaWeld = script.Folder.Katana.RightArm:WaitForChild'REF'
for i,v in pairs(script.Folder.Katana.RightArm:GetChildren()) do
	v.Anchored = false
end
local KATSRightAWeld = IT("Weld")
KATSRightAWeld.Parent = RightArm
KATSRightAWeld.Part0 = RightArm
KATSRightAWeld.Part1 = KatanaWeld
KATSRightAWeld.Name = "Katana"
KATSRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local Katana = script.Folder.Folder.Katana
local KatanaHit = Katana.Weapon.Hitbox
Katana.Parent = nil


function chatfunc(text)
	local chat = coroutine.wrap(function()
		if Character:FindFirstChild("TalkingBillBoard")~= nil then
			Character:FindFirstChild("TalkingBillBoard"):destroy()
		end
		local Bill = Instance.new("BillboardGui",Character)
		Bill.Size = UDim2.new(0,35,0,18)
		Bill.StudsOffset = Vector3.new(0,4.5,0)
		Bill.Adornee = Character.Head
		Bill.Name = "TalkingBillBoard"
		local Hehe = Instance.new("TextLabel",Bill)
		Hehe.BackgroundTransparency = 1
		Hehe.BorderSizePixel = 0
		Hehe.Text = ""
		Hehe.Font = "SourceSansLight"
		Hehe.TextSize = 35
		Hehe.TextStrokeTransparency = 1
		Hehe.Size = UDim2.new(1,0,0.5,0)
		local Hehe2 = Instance.new("TextLabel",Bill)
		Hehe2.BackgroundTransparency = 1
		Hehe2.BorderSizePixel = 0
		Hehe2.Text = ""
		Hehe2.Font = "SourceSansLight"
		Hehe2.TextSize = 34
		Hehe2.TextStrokeTransparency = 1
		Hehe2.Size = UDim2.new(1,0,0.5,0)
		coroutine.resume(coroutine.create(function()
			while Hehe ~= nil do
				wait()	
				Hehe.Position = UDim2.new(math.random(-.4,.4),math.random(-1,1),.05,math.random(-1,1))	
				Hehe.TextColor3 = Color3.new(sick.PlaybackLoudness/500,0,0)
				Hehe.Rotation = 0+5*M.C(SINE/32)
				Hehe2.Position = UDim2.new(math.random(-.4,.4),math.random(-1,1),.05,math.random(-1,1))	
				Hehe2.TextColor3 = Color3.new(sick.PlaybackLoudness/500,0,0)
				Hehe2.Rotation = 0+5*M.C(SINE/32)
				Hehe.Rotation = 0+15*COS(SINE / 18)
				Hehe2.Rotation = 0+13*COS(SINE / 18)
				--SKILL1FRAME.Rotation = MRANDOM(-66,66)/2
			end
		end))
		for i = 1,string.len(text),1 do
			wait()
			Hehe.Text = string.sub(text,1,i)
			Hehe2.Text = string.sub(text,1,i)
		end
		wait(3)
		for i = 0, 5, .025 do
			wait()
			Bill.ExtentsOffset = Vector3.new(math.random(-i, i), math.random(-i, i), math.random(-i, i))
			Hehe.TextTransparency = i
			Hehe2.TextTransparency = i
		end
		Bill:Destroy()
	end)
	chat()
end

function onChatted(msg)
	chatfunc(msg)
end

Player.Chatted:connect(onChatted)

local Love = {"G u i l t","B L O O D W A T E R","H e l L","D e V i L","D e M o N S","B L o o D","A d d I c T","G u I l T","S e c R e T","G u I L t","L o V e ! ?","H-H E R o ! ?"," H E R"}
local memer = {"toXiC","TOxIc","H A H A H A","Toxicity"}
function Kanani()
	ATTACK = true
	Rooted = true
	BanishGun.Parent = nil
	PistolGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
	RailGun.Parent = nil
	Shotty.Parent = nil
	Swordo.Parent = nil
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end

	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "Kanani"
	ChangeName("Kanani")
	pcall(function()
	WEAPONGUI.epic.ModeT.Text = "Kanani's Mode"
	end)
	sick.Pitch = 1
	sick.SoundId = "rbxassetid://5202503035"
	sick.Volume = 10
	sick.PlaybackSpeed = 1
	ATTACK = false
	Rooted = false
	PistolGun.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Shotty.Parent = Character
	RailGun.Parent = nil
	Swordo.Parent = nil
	Katana.Parent = nil
end
function secret()
	ATTACK = true
	Rooted = true
	BanishGun.Parent = nil
	Shotty.Parent = nil
	PistolGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
	RailGun.Parent = nil
	Swordo.Parent = nil
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "Secret"
	ChangeName("Secret")
	pcall(function()
	WEAPONGUI.epic.ModeT.Text = "Secret"
	end)
	sick.SoundId = "rbxassetid://460439241"
	sick.Volume = 10
	sick.Pitch = 1
	sick.PlaybackSpeed = 1
	ATTACK = false
	Rooted = false
	PistolGun.Parent = Character
	BanishGun.Parent = nil
	Swordo.Parent = nil
	Shotty.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
end
function Blood()
	ATTACK = true
	Rooted = true
	BanishGun.Parent = nil
	PistolGun.Parent = nil
	Shotty.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
	Swordo.Parent = nil
	RailGun.Parent = nil
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end

	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "Blood"
	ChangeName("B l o o d")
	pcall(function()
	WEAPONGUI.epic.ModeT.Text = "B L O O D"
	end)
	sick.SoundId = "rbxassetid://849713469"
	sick.Volume = 10
	sick.Pitch = 1
	sick.PlaybackSpeed = 1
	ATTACK = false
	Rooted = false
	PistolGun.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Shotty.Parent = nil
	Swordo.Parent = nil
	RailGun.Parent = Character
	Katana.Parent = nil
end



function AAAAAA()
	ATTACK = true
	Rooted = true
	BanishGun.Parent = nil
	Swordo.Parent = nil
	PistolGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
	RailGun.Parent = nil
	Shotty.Parent = nil
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end

	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "???"
	pcall(function()
	WEAPONGUI.epic.ModeT.Text = Love[math.random(1,13)]
	end)
	ChangeName(Love[math.random(1,13)])
	sick.SoundId = "rbxassetid://5301495179"
	sick.Volume = 10
	sick.PlaybackSpeed = 1
	sick.Pitch = 1
	ATTACK = false
	Rooted = false
	PistolGun.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Shotty.Parent = nil
	RailGun.Parent = nil
	Swordo.Parent = nil
	Katana.Parent = nil
end


function memeee()
	ATTACK = true
	Rooted = true
	BanishGun.Parent = nil
	PistolGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
	Swordo.Parent = nil
	RailGun.Parent = nil
	Shotty.Parent = nil
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end

	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "meme"
	pcall(function()
	WEAPONGUI.epic.ModeT.Text = "C0RRUPT"
	end)
	ChangeName(memer[math.random(1,4)])
	sick.SoundId = "rbxassetid://1416035124"
	sick.Volume = 10
	sick.PlaybackSpeed = .065
	sick.Pitch = .89
	ATTACK = false
	Rooted = false
	PistolGun.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Shotty.Parent = nil
	RailGun.Parent = nil
	Swordo.Parent = Character
	Katana.Parent = nil

end

function katana()
	ATTACK = true
	Rooted = true
	BanishGun.Parent = nil
	PistolGun.Parent = nil
	Shotty.Parent = nil
	SniperGun.Parent = nil
	RailGun.Parent = Character
	Katana.Parent = nil
	Swordo.Parent = nil
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "Katana"
	ChangeName("A D D I C T")
	pcall(function()
	WEAPONGUI.epic.ModeT.Text = "ADDICT"
	end)
	sick.SoundId = "rbxassetid://5368276808"
	sick.Volume = 10
	sick.PlaybackSpeed = 0.87
	sick.Pitch = 0.8
	--sick:Play()
	ATTACK = false
	Rooted = false
	Katana.Parent = Character
	BanishGun.Parent = nil
	Swordo.Parent = nil
	PistolGun.Parent = nil
	Shotty.Parent = nil
	SniperGun.Parent = nil
	RailGun.Parent = nil
end

function burn()
	ATTACK = true
	Rooted = true
	BanishGun.Parent = nil
	PistolGun.Parent = nil
	Swordo.Parent = nil
	SniperGun.Parent = nil
	RailGun.Parent = nil
	Shotty.Parent = nil
	Katana.Parent = nil
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "burning"
	ChangeName("Hell")
	pcall(function()
	WEAPONGUI.epic.ModeT.Text = "H3LL"
	end)
	sick.SoundId = "rbxassetid://3471734768"
	sick.Volume = 5
	sick.Pitch = 1
	sick.PlaybackSpeed = 1
	ATTACK = false
	Rooted = false
	BanishGun.Parent = Character
	PistolGun.Parent = nil
	SniperGun.Parent = nil
	Swordo.Parent = nil
	RailGun.Parent = nil
	Katana.Parent = nil
	Shotty.Parent = nil
end

function BloodWater()
	ATTACK = true
	Rooted = true
	BanishGun.Parent = nil
	PistolGun.Parent = nil
	RailGun.Parent = nil
	SniperGun.Parent = nil
	Swordo.Parent = nil
	Katana.Parent = nil
	Shotty.Parent = nil
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "BloodWater"
	pcall(function()
	WEAPONGUI.epic.ModeT.Text = "BLOODWATER"
	end)
	ChangeName("B L O O D W A T E R")
	sick.SoundId = "rbxassetid://4835535512"
	sick.Volume = 10
	sick.Pitch = 0.9
	sick.PlaybackSpeed = 1
	ATTACK = false
	Rooted = false
	BanishGun.Parent = Character
	PistolGun.Parent = nil
	Shotty.Parent = nil
	Swordo.Parent = nil
	SniperGun.Parent = nil
	RailGun.Parent = nil
	Katana.Parent = nil
end
function help()
	ATTACK = true
	Rooted = true
	BanishGun.Parent = nil
	Swordo.Parent = nil
	PistolGun.Parent = nil
	SniperGun.Parent = nil
	RailGun.Parent = nil
	Katana.Parent = nil
	Shotty.Parent = nil
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "Devil"
	ChangeName("D e v i l")
	pcall(function()
	WEAPONGUI.epic.ModeT.Text = "D3VIL"
	end)
	sick.SoundId = 'rbxassetid://930541401'
	sick.Volume = 10
	sick.PlaybackSpeed = 0.85
	ATTACK = false
	Rooted = false
	SniperGun.Parent = Character
	BanishGun.Parent = nil
	PistolGun.Parent = nil
	Swordo.Parent = nil
	RailGun.Parent = nil
	Shotty.Parent = nil
	Katana.Parent = nil
end

function OCTO()
	ATTACK = true
	Rooted = true
	BanishGun.Parent = nil
	Swordo.Parent = nil
	PistolGun.Parent = nil
	SniperGun.Parent = nil
	RailGun.Parent = nil
	Katana.Parent = nil
	Shotty.Parent = nil
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CamShakeAll(35,50)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	MODE = "Octo"
	ChangeName("OCTOGON")
	pcall(function()
	WEAPONGUI.epic.ModeT.Text = "OCTOGON!1!"
	end)
	sick.SoundId = 'rbxassetid://3727388982'
	sick.Volume = 10
	sick.PlaybackSpeed = 1
	sick.Pitch = 1
	ATTACK = false
	Rooted = false
	SniperGun.Parent = nil
	BanishGun.Parent = nil
	PistolGun.Parent = nil
	Swordo.Parent = nil
	RailGun.Parent = nil
	Shotty.Parent = nil
	Katana.Parent = nil
end

local Particle = IT("ParticleEmitter",nil)
Particle.Enabled = false
Particle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.3),NumberSequenceKeypoint.new(0.3,0),NumberSequenceKeypoint.new(1,1)})
Particle.LightEmission = 0.5
Particle.Rate = 150
Particle.ZOffset = 0.2
Particle.Rotation = NumberRange.new(-180, 180)
Particle.RotSpeed = NumberRange.new(-180, 180)
Particle.Texture = "http://www.roblox.com/asset/?id=304437537"
Particle.Color = ColorSequence.new(C3(0,0,0),C3(1,0,0))
--ParticleEmitter({Speed = 5, Drag = 0, Size1 = 1, Size2 = 5, Lifetime1 = 1, Lifetime2 = 1.5, Parent = Torso, Emit = 100, Offset = 360, Enabled = false})
function ParticleEmitter(Table)
	local PRTCL = Particle:Clone()
	local Speed = Table.Speed or 5
	local Drag = Table.Drag or 0
	local Size1 = Table.Size1 or 1
	local Size2 = Table.Size2 or 5
	local Lifetime1 = Table.Lifetime1 or 1
	local Lifetime2 = Table.Lifetime2 or 1.5
	local Parent = Table.Parent or Torso
	local Emit = Table.Emit or 100
	local Offset = Table.Offset or 360
	local Acel = Table.Acel or VT(0,0,0)
	local Enabled = Table.Enabled or false
	PRTCL.Parent = Parent
	PRTCL.Size = NumberSequence.new(Size1,Size2)
	PRTCL.Lifetime = NumberRange.new(Lifetime1,Lifetime2)
	PRTCL.Speed = NumberRange.new(Speed)
	PRTCL.VelocitySpread = Offset
	PRTCL.Drag = Drag
	PRTCL.Acceleration = Acel
	if Enabled == false then
		PRTCL:Emit(Emit)
		Debris:AddItem(PRTCL,Lifetime2)
	else
		PRTCL.Enabled = true
	end
	return PRTCL
end

local LASTPART = Torso
for i = 1, 45 do
	local MATH = 1 - i / 60
	if LASTPART == Torso then
		local Tail = CreatePart(3, Character, "Neon", 0, 0, "", "Tail", VT(0.25 * MATH, 0.25, 0.25 * MATH), false)
		local WLD = CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Tail, CF(0, -0.75, 0.5) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
		LASTPART = Tail	
		Tail.Color =  Color3.new(sick.PlaybackLoudness/500,0,0)
		Tail.Material = Enum.Material.Neon
		table.insert(TAIL, WLD)
		coroutine.resume(coroutine.create(function()
			while true do
				Swait()
				Tail.Color = Color3.new(sick.PlaybackLoudness/500,0,0)
			end
		end))
	else
		local Tail = CreatePart(3, Character, "Neon", 0, 0, "", "Tail", VT(0.25 * MATH, 0.25, 0.25 * MATH), false)
		local WLD = CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Tail, CF(0, Tail.Size.Y / 2, 0) * ANGLES(RAD(-1.2), RAD(0), RAD(0)), CF(0, 0, 0))
		LASTPART = Tail
		Tail.Material = Enum.Material.Neon
		table.insert(TAIL, WLD)
		coroutine.resume(coroutine.create(function()
			while true do
				Swait()
				Tail.Color =  Color3.new(sick.PlaybackLoudness/500,0,0)
			end
		end))

	end
end

local Heads = IT("Folder", Character)
Heads.Name = "Heads"

local PRT = CreatePart(3, Heads, "Fabric", 0, 0, "Really black", "Hood", VT(1,1,1),false)

local HoodWeld = CreateWeldOrSnapOrMotor("Weld", Head, Head, PRT, CF(0,0.85,0), CF(0, 0, 0))
CreateMesh("SpecialMesh", PRT, "FileMesh", 471124075, "", VT(1,1,1)*0.009, VT(0,0,0))
PRT.Material = Enum.Material.Neon

coroutine.resume(coroutine.create(function()
	while wait() do
		if MODE == "meme" then
			HoodWeld.C0 = Clerp(HoodWeld.C0, HOODC0 * CF(0,0.85,0) * ANGLES(RAD(MRANDOM(-0.5,0.5)), RAD(MRANDOM(-0.5,0.5)), RAD(MRANDOM(-0.5,0.5))), 0.2 / Animation_Speed)
			PRT.Color = Color3.fromRGB(MRANDOM(1,255),0,0)
			PRT.Parent = Character
		elseif MODE == "Insane" then
			HoodWeld.C0 = Clerp(HoodWeld.C0, HOODC0 * CF(0,0.85,0) * ANGLES(RAD(MRANDOM(-15,15)), RAD(MRANDOM(-15,15)), RAD(MRANDOM(-15,15))), 3 / Animation_Speed)
			PRT.Color = Color3.fromRGB(MRANDOM(1,255),MRANDOM(1,255),MRANDOM(1,255))
			PRT.Parent = Character
		else
			PRT.Parent = nil
		end
	end
end))


local Blk = CreatePart(0,LeftArm,"Neon",1,1,Color3.new(0.596078, 0.705882, 1),"aa",VT(0.005,0.005,0.005),false)
local BW = CreateWeldOrSnapOrMotor("Weld",LeftArm,LeftArm,Blk,CF(0,-2,0),CF(0,0,0))

local FaceGradient = IT("Folder", Character)
FaceGradient.Name = "FaceGradient"
for i = 1, 50 do
	local FACE = CreatePart(3, FaceGradient, "Fabric", 0, 0+(i-1)/35.2, "Dark stone grey", "FaceGradient", VT(1.01,0.5,1.01),false)
	FACE.Color = C3(0,0,0)
	Head:FindFirstChildOfClass("SpecialMesh"):Clone().Parent = FACE
	CreateWeldOrSnapOrMotor("Weld", Head, Head, FACE, CF(0,0.35-(i-1)/75,0), CF(0, 0, 0))
end


function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end

function SpawnTrail(FROM,TO,BIG)
	local TRAIL = CreatePart(3, Effects, "Neon", 0, 0.5, "Really red", "Trail", VT(0,0,0))
	MakeForm(TRAIL,"Cyl")
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL.Size = VT(0.5,DIST,0.5)
	else
		TRAIL.Size = VT(0.25,DIST,0.25)
	end
	TRAIL.CFrame = CF(FROM, TO) * CF(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 5 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.1
		end
		TRAIL:remove()
	end))
end

Debris = game:GetService("Debris")

function SpawnTrail2(FROM,TO,BIG)
	local TRAIL2 = CreatePart(3, Effects, "Neon", 0, 0.5, "Really red", "Trail", VT(0,0,0))
	MakeForm(TRAIL2,"Cyl")
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL2.Size = VT(0.8,DIST,0.8)
	else
		TRAIL2.Size = VT(0.25,DIST,0.25)
	end
	TRAIL2.CFrame = CF(FROM, TO) * CF(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 5 do
			Swait()
			TRAIL2.Transparency = TRAIL2.Transparency + 0.1
		end
		TRAIL2:remove()
	end))
end

function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos,EndPos).lookVector
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end

function turnto(position)
	RootPart.CFrame=CFrame.new(RootPart.CFrame.p,VT(position.X,RootPart.Position.Y,position.Z)) * CFrame.new(0, 0, 0)
end

LIGHT = game.Lighting

local Tintt = Instance.new("ColorCorrectionEffect")
Tintt.TintColor = Color3.new(1, 1, 1)
Tintt.Parent = LIGHT

local Blur = Instance.new("BlurEffect")
Blur.Size = 1
Blur.Parent = LIGHT

--//=================================\\
--||	     WEAPON CREATION
--\\=================================//

local LASTPART = Head
for i = 1, 35 do
	local MATH = (1-(i/20))
	if LASTPART == Head then
		local Horn = CreatePart2(3, Character, "Neon", 0, 0, "Black", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor2("Weld", LASTPART, LASTPART, Horn, CF(0.3, 0.7, -0.35) * ANGLES(RAD(-55), RAD(15), RAD(-15)), CF(0, 0, 0))
		LASTPART = Horn
		coroutine.resume(coroutine.create(function()
			while true do
				Swait()
				Horn.Color = Color3.new(sick.PlaybackLoudness/500,0,0)
			end
		end))
	else
		local Horn = CreatePart2(3, Character, "Neon", 0, 0, "Black", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor2("Weld", LASTPART, LASTPART, Horn, CF(0, Horn.Size.Y/3.8, 0) * ANGLES(RAD(6), RAD(-0.3), RAD(0)), CF(0, 0, 0))
		LASTPART = Horn
		Horn.Color = Color3.new(sick.PlaybackLoudness/500,0,0)
		Horn.Material = "Neon"
		coroutine.resume(coroutine.create(function()
			while true do
				Swait()
				Horn.Color = Color3.new(sick.PlaybackLoudness/500,0,0)
			end
		end))
	end
end
local LASTPART = Head
for i = 1, 35 do
	local MATH = (1-(i/20))
	if LASTPART == Head then
		local Horn = CreatePart2(3, Character, "Neon", 0, 0, "Black", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor2("Weld", LASTPART, LASTPART, Horn, CF(-0.3, 0.7, -0.35) * ANGLES(RAD(-55), RAD(-15), RAD(15)), CF(0, 0, 0))
		LASTPART = Horn
		coroutine.resume(coroutine.create(function()
			while true do
				Swait()
				Horn.Color = Color3.new(sick.PlaybackLoudness/500,0,0)
			end
		end))
	else
		local Horn = CreatePart2(3, Character, "Neon", 0, 0, "Black", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor2("Weld", LASTPART, LASTPART, Horn, CF(0, Horn.Size.Y/3.8, 0) * ANGLES(RAD(6), RAD(0.3), RAD(0)), CF(0, 0, 0))
		LASTPART = Horn
		Horn.Color = C3(1,0,0)
		Horn.Material = "Neon"
		coroutine.resume(coroutine.create(function()
			while true do
				Swait()
				Horn.Color = Color3.new(sick.PlaybackLoudness/500,0,0)
			end
		end))
	end
end

local Particle = IT("ParticleEmitter",nil)
Particle.Enabled = false
Particle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.3),NumberSequenceKeypoint.new(0.3,0),NumberSequenceKeypoint.new(1,1)})
Particle.LightEmission = 0.5
Particle.Rate = 150
Particle.ZOffset = 0.2
Particle.Rotation = NumberRange.new(-180, 180)--You can change the rot
Particle.RotSpeed = NumberRange.new(-180, 180)---You can change the rotspeed
Particle.Texture = "http://www.roblox.com/asset/?id=304437537"--You can change the texture

--ParticleEmitter({Speed = 5, Drag = 0, Size1 = 1, Size2 = 5, Lifetime1 = 1, Lifetime2 = 1.5, Parent = Torso, Emit = 100, Offset = 360, Enabled = false})
function ParticleEmitter(Table)
	local PRTCL = Particle:Clone()
	local Speed = Table.Speed or 5
	local Drag = Table.Drag or 0
	local Size1 = Table.Size1 or 1
	local Size2 = Table.Size2 or 5
	local Lifetime1 = Table.Lifetime1 or 1
	local Lifetime2 = Table.Lifetime2 or 1.5
	local Parent = Table.Parent or Torso
	local Emit = Table.Emit or 100
	local Offset = Table.Offset or 360
	local Acel = Table.Acel or VT(0,0,0)
	local Enabled = Table.Enabled or false
	PRTCL.Parent = Parent
	PRTCL.Size = NumberSequence.new(Size1,Size2)
	PRTCL.Lifetime = NumberRange.new(Lifetime1,Lifetime2)
	PRTCL.Speed = NumberRange.new(Speed)
	PRTCL.VelocitySpread = Offset
	PRTCL.Drag = Drag
	PRTCL.Acceleration = Acel
	if Enabled == false then
		PRTCL:Emit(Emit)
		Debris:AddItem(PRTCL,Lifetime2)
	else
		PRTCL.Enabled = true
	end
	return PRTCL
end

Weapon.Parent = Character
for _, c in pairs(BanishGun:GetChildren()) do
	if c.ClassName == "Part" then
		c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end

local SKILLTEXTCOLOR = C3(1,0,0)---change the color of this if u want
local SKILLFONT = "Antique"--You can change the font
local SKILLTEXTSIZE = 7--change the textsize if you want

Humanoid.Died:connect(function()
	ATTACK = true
end)



function printbye(Name)
	local MESSAGES = {"You cannot struggle, ","Your existance is an insult, ","Fade, ","Your existance is not desired, ","You are not permitted here, ","You are not to decide your fate, ","Be gone, ","You are already dead, ","Your life is an anomaly, ","Don't dare to return, ","Why are you resisting, ","You cannot exist here, ","Why are you struggling, ","There is no escape from death, ","Sayonara, ","Burn in hell,",""}
	warn(MESSAGES[MRANDOM(1,#MESSAGES)]..Name..".")	
end

workspace.ChildAdded:connect(function(instance)
	for BANISH = 1, #TOBANISH do
		if TOBANISH[BANISH] ~= nil then
			if instance.Name == TOBANISH[BANISH] then
				coroutine.resume(coroutine.create(function()
					printbye(instance.Name)
					instance:ClearAllChildren()
					Debris:AddItem(instance,0.0005)
				end))
			end
		end
	end
end)

function sit()
	ATTACK = true
	Rooted = true
	local LOOP = true
	BanishGun.Parent = nil
	PistolGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
	KEY = Mouse.KeyDown:connect(function(NEWKEY)
		if NEWKEY == "t" then
			KEY:Disconnect()
			LOOP = false
		end
	end)
	repeat
		for i = 0, 0.4, 0.1 / Animation_Speed do
			Swait()
			if LOOP == false then
				break
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -1.70) * ANGLES(RAD(-40), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.3, 0.10) * ANGLES(RAD(-40), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.3, 0.10) * ANGLES(RAD(-40), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(45), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(45), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until LOOP == false
	ATTACK = false
	Rooted = false
	if MODE == "BloodWater" or MODE == "burning" or MODE == "???" then
		BanishGun.Parent = Character
	elseif MODE == "Secret" then
		PistolGun.Parent = Character
	elseif MODE == "Katana" then
		Katana.Parent = Character
	elseif MODE == "Devil" then
		SniperGun.Parent = Character
	elseif MODE == "Blood" then
		RailGun.Parent = Character
	elseif MODE == "Kanani" then
		Shotty.Parent = Character
	end
end




--//=================================\\
--||			DAMAGING
--\\=================================//

function Banish(Foe)
	if Foe then
		coroutine.resume(coroutine.create(function()
			--if game.Players:FindFirstChild(Foe.Name) then
			table.insert(TOBANISH,Foe.Name)
			printbye(Foe.Name)
			--end
			Foe.Archivable = true
			local CLONE = Foe:Clone()
			Foe:Destroy()
			CLONE.Parent = Effects
			CLONE:BreakJoints()
			local MATERIALS = {"Glass","Neon"}
			for _, c in pairs(CLONE:GetDescendants()) do
				if c:IsA("BasePart") then
					if c.Name == "Torso" or c.Name == "UpperTorso" or c == CLONE.PrimaryPart then
						CreateSound(340722848, c, 10, 1, false)
					end
					c.Anchored = true
					c.Transparency = c.Transparency + 0.2
					c.Material = MATERIALS[MRANDOM(1,2)]
					c.Color = C3(1,0,0)
					if c.ClassName == "MeshPart" then
						c.TextureID = ""
					end
					if c:FindFirstChildOfClass("SpecialMesh") then
						c:FindFirstChildOfClass("SpecialMesh").TextureId = ""
					end
					if c:FindFirstChildOfClass("Decal") then
						c:FindFirstChildOfClass("Decal"):remove()
					end
					c.Name = "Banished"
					c.CanCollide = false
				else
					c:remove()
				end
			end
			local A = false
			for i = 1, 35 do
				if A == false then
					A = true
				elseif A == true then
					A = false
				end
				for _, c in pairs(CLONE:GetDescendants()) do
					if c:IsA("BasePart") then
						c.Anchored = true
						c.Material = MATERIALS[MRANDOM(1,2)]
						c.Transparency = c.Transparency + 0.8/35
						if A == false then
							c.CFrame = c.CFrame*CF(MRANDOM(-45,45)/45,MRANDOM(-45,45)/45,MRANDOM(-45,45)/45)
						elseif A == true then
							c.CFrame = c.CFrame*CF(MRANDOM(-45,45)/45,MRANDOM(-45,45)/45,MRANDOM(-45,45)/45)						
						end
					end
				end
				Swait()
			end
			CLONE:remove()
		end))
	end
end

function ApplyAoE(POSITION,RANGE,ISBANISH)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						if ISBANISH == true then
							Banish(CHILD)
						else
							if ISBANISH == "Gravity" then
								HUM.PlatformStand = true
								if TORSO:FindFirstChild("V3BanishForce"..Player.Name) then
									local grav = Instance.new("BodyPosition",TORSO)
									grav.D = 15
									grav.P = 20000
									grav.maxForce = Vector3.new(math.huge,math.huge,math.huge)
									grav.position = TORSO.Position
									grav.Name = "V3BanishForce"..Player.Name
								else
									TORSO:FindFirstChild("V3BanishForce"..Player.Name).position = TORSO.Position+VT(0,0.3,0)
									TORSO.RotVelocity = VT(MRANDOM(-25,25),MRANDOM(-25,25),MRANDOM(-25,25))
								end
							else
								HUM.PlatformStand = false
							end
						end
					elseif ISBANISH == "Gravity" then
						if TORSO:FindFirstChild("V3BanishForce"..Player.Name) then
							TORSO:FindFirstChild("V3BanishForce"..Player.Name):remove()
							HUM.PlatformStand = false
						end
					end
				end
			end
		end
	end
end

function MagicSphere(SIZE,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Effect", VT(1,1,1), true)
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "Sphere"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			wave.Transparency = wave.Transparency + (1/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function CreateRing(SIZE,DOESROT,ROT,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			if DOESROT == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0,ROT,0)
			end
			wave.Transparency = wave.Transparency + (0.5/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function BANNEAREST(POS,RANGE)
	for i,v in ipairs(workspace:GetChildren()) do
		local body = v:GetChildren()
		for part = 1, #body do
			if((body[part].ClassName == "Part" or body[part].ClassName == "MeshPart") and v ~= Character) then
				if(body[part].Position - POS).Magnitude < RANGE then
					if v:FindFirstChildOfClass("Humanoid") then
						Banish(v)
					end
				end
			end
		end
	end
end

function Slice(SIZE,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(1,1,1), true)
	local mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "448386996", "", VT(0,SIZE/10,SIZE/10), VT(0,0,0))
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale * GROW
			wave.Transparency = wave.Transparency + (0.5/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//
Player.Chatted:connect(function(chat)
	if chat:sub(1,5) == "Song/" and MODE == "???" then
		sick.SoundId = "rbxassetid://"..chat:sub(6)
	elseif chat:sub(1,6) == "pitch/" and MODE == "???" then
		sick.PlaybackSpeed = chat:sub(7)
	elseif chat:sub(1,4) == "vol/" and MODE == "???" then
		sick.Volume = chat:sub(5) 
	elseif chat:sub(1,3) == "Time/" and MODE == "???" then
		sick.TimePosition = chat:sub(4)
	end
end)


Player.Chatted:connect(function(chat)
	if chat:sub(1,5) == "Song/" and MODE == "meme" then
		sick.SoundId = "rbxassetid://"..chat:sub(6)
	elseif chat:sub(1,6) == "pitch/" and MODE == "meme" then
		sick.PlaybackSpeed = chat:sub(7)
	elseif chat:sub(1,4) == "vol/" and MODE == "meme" then
		sick.Volume = chat:sub(5) 
	elseif chat:sub(1,3) == "Time/" and MODE == "meme" then
		sick.TimePosition = chat:sub(4)
	end
end)


function Shot()

	if BanishGun.Parent == nil then return end
	ATTACK = true
	Rooted = false
	repeat
		for i=0, 0.2, 0.3 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.5 / Animation_Speed)  
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(62)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-40)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(68), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-86), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(Hole.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(Hole.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = Hole.CFrame, MoveToPos = Hole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 541909814, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = Hole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 1905402432, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,Hole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 541909814, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,Hole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 541909814, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		for i=0, 0.3, 0.3 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.5 / Animation_Speed)
			if MRANDOM(1,30) == 10 then
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + MRANDOM(-25,25) - 4 * COS(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(-45)), 1.5 / Animation_Speed)
			end 
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.5 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(65)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(110), RAD(0), RAD(62)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(68), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-86), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end
function DeadlyBeam()
	if RailGun.Parent == nil then
		return
	end
	ATTACK = true
	Rooted = false
	repeat
		for i=0, 5, 0.05 / Animation_Speed do
			Swait()
			CreateSound(342793847, Railyy, 1, 0.9, false)
			WACKYEFFECT({Time = 25, EffectType = "Round Slash", Size = VT(0.1,0.1,0.1), Size2 = VT(0.1,0.1,0.1), Transparency = 0, Transparency2 = 1, CFrame = Railyy.CFrame, MoveToPos = Railyy.CFrame*CF(0,0.5,0).p, RotationX= math.rad(math.random(0,360)) , RotationY = math.rad(math.random(0,360)), RotationZ = math.rad(math.random(0,360)), Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil , SoundVolume = 1})
			WACKYEFFECT({Time = 25, EffectType = "Round Slash", Size = VT(0.1,0.1,0.1), Size2 = VT(0.1,0.1,0.1), Transparency = 0, Transparency2 = 1, CFrame = Railyy.CFrame, MoveToPos = Railyy.CFrame*CF(0,0.5,0).p, RotationX= math.rad(math.random(-360,0)) , RotationY = math.rad(math.random(-360,0)), RotationZ = math.rad(math.random(-360,0)), Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil , SoundVolume = 1})
			WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0.3,0.3,0.3), Size2 = VT(2,2,2), Transparency = 0, Transparency2 = 1, CFrame = Railyy.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = 8})
		end
		for i=0, 3, 0.3 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.5 / Animation_Speed)  
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(62)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-40)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(68), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-86), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(Railyy.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail2(Railyy.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Round Slash", Size = VT(0.4,0.4,0.4), Size2 = VT(0.4,0.4,0.4), Transparency = 0, Transparency2 = 1, CFrame = Railyy.CFrame, MoveToPos = Railyy.CFrame*CF(0,0.5,0).p, RotationX= math.rad(math.random(0,360)) , RotationY = math.rad(math.random(0,360)), RotationZ = math.rad(math.random(0,360)), Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil , SoundVolume = 1})
		WACKYEFFECT({Time = 25, EffectType = "Round Slash", Size = VT(0.4,0.4,0.4), Size2 = VT(0.4,0.4,0.4), Transparency = 0, Transparency2 = 1, CFrame = Railyy.CFrame, MoveToPos = Railyy.CFrame*CF(0,0.5,0).p, RotationX= math.rad(math.random(-360,0)) , RotationY = math.rad(math.random(-360,0)), RotationZ = math.rad(math.random(-360,0)), Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil , SoundVolume = 1})
		WACKYEFFECT({Time = 40, EffectType = "Crystal", Size = VT(0.4,0.4,0.4), Size2 = VT(10,10,10), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = Torso.CFrame*CF(0,0.5,0).p, RotationX= math.rad(math.random(0,360)) , RotationY = math.rad(math.random(0,360)), RotationZ = math.rad(math.random(0,360)), Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil , SoundVolume = 1})
		WACKYEFFECT({Time = 40, EffectType = "Crystal", Size = VT(0.4,0.4,0.4), Size2 = VT(10,10,10), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = Torso.CFrame*CF(0,0.5,0).p, RotationX= math.rad(math.random(-360,0)) , RotationY = math.rad(math.random(-360,0)), RotationZ = math.rad(math.random(-360,0)), Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil , SoundVolume = 1})
		WACKYEFFECT({Time = 40, EffectType = "Crystal", Size = VT(0.4,0.4,0.4), Size2 = VT(10,10,10), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = Torso.CFrame*CF(0,0.5,0).p, RotationX= math.rad(math.random(0,360)) , RotationY = math.rad(math.random(0,360)), RotationZ = math.rad(math.random(0,360)), Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil , SoundVolume = 1})
		WACKYEFFECT({Time = 40, EffectType = "Crystal", Size = VT(0.4,0.4,0.4), Size2 = VT(10,10,10), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = Torso.CFrame*CF(0,0.5,0).p, RotationX= math.rad(math.random(-360,0)) , RotationY = math.rad(math.random(-360,0)), RotationZ = math.rad(math.random(-360,0)), Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil , SoundVolume = 1})
		WACKYEFFECT({Time = 25, EffectType = "Block", Size = VT(0.3,0.3,0.3), Size2 = VT(10,10,10), Transparency = 0, Transparency2 = 1, CFrame = Railyy.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 138677306, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Block", Size = VT(0.3,0.3,0.3), Size2 = VT(10,10,10), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,Railyy.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 138677306, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		WACKYEFFECT({Time = 25, EffectType = "Round Slash", Size = VT(0.3,0.3,0.3), Size2 = VT(0.5,0.5,0.5), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,Railyy.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 138677306, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		for i=0, 0.3, 0.3 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.5 / Animation_Speed)
			if MRANDOM(1,30) == 10 then
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + MRANDOM(-25,25) - 4 * COS(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(-45)), 1.5 / Animation_Speed)
			end 
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.5 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(65)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(110), RAD(0), RAD(62)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(68), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-86), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

function SniperShot()
	if SniperGun.Parent == nil then return end
	ATTACK = true
	Rooted = false
	repeat
		for i=0, 5, 0.3 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -1.3 + 0.1 * COS(SINE / 24)) * ANGLES(RAD(0 - 4 * SIN(SINE / 24)), RAD(0 + 1 * COS(SINE / 24)), RAD(-10)), 0.1 / Animation_Speed)            
			Neck.C0 = Clerp(Neck.C0, NECKC0* CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(7 - 2 * SIN(SINE / 20)), RAD(-20), RAD(0)), 0.1 / Animation_Speed)              
			RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.1 - 0.1 * COS(SINE / 24) - RAD(0 + 1 * COS(SINE / 24)), -0.3) * ANGLES(RAD(13 - 6 * SIN(SINE / 24)), RAD(90), RAD(0)), 0.1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1.3 - 0.1 * COS(SINE / 24) + RAD(0 + 1 * COS(SINE / 24)), -0.15) * ANGLES(RAD(-90 - 6 * SIN(SINE / 24)), RAD(-90), RAD(0)), 0.1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.8, 0.4 + 0.1 * SIN(SINE / 35), 0.5) * ANGLES(RAD(90), RAD(90), RAD(0)), 0.1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.3, 0.7 + 0.1 * SIN(SINE / 35), -1.5) * ANGLES(RAD(80), RAD(0 + 4 * SIN(SINE / 35)), RAD(50 + 3 * SIN(SINE / 35))), 0.1 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(SniperHole.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(SniperHole.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Block", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = SniperHole.CFrame, MoveToPos = SniperHole.CFrame*CF(0,0.5,0).p, RotationX = -360, RotationY = -360, RotationZ = -360, Material = "Neon", Color = C3(1,0,0), SoundID = 136523485, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		WACKYEFFECT({Time = 25, EffectType = "Block", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = SniperHole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 136523485, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(15,15,15), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,SniperHole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 136523485, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(15,15,1), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,SniperHole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 136523485, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		for i=0, 0.3, 0.3 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -1.3 + 0.1 * COS(SINE / 24)) * ANGLES(RAD(0 - 4 * SIN(SINE / 24)), RAD(0 + 1 * COS(SINE / 24)), RAD(-10)), 0.1 / Animation_Speed)            
			Neck.C0 = Clerp(Neck.C0, NECKC0* CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(7 - 2 * SIN(SINE / 20)), RAD(-20), RAD(0)), 0.1 / Animation_Speed)              
			RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.1 - 0.1 * COS(SINE / 24) - RAD(0 + 1 * COS(SINE / 24)), -0.3) * ANGLES(RAD(13 - 6 * SIN(SINE / 24)), RAD(90), RAD(0)), 0.1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1.3 - 0.1 * COS(SINE / 24) + RAD(0 + 1 * COS(SINE / 24)), -0.15) * ANGLES(RAD(-90 - 6 * SIN(SINE / 24)), RAD(-90), RAD(0)), 0.1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.8, 0.4 + 0.1 * SIN(SINE / 35), 0.5) * ANGLES(RAD(90), RAD(90), RAD(0)), 0.1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.3, 0.7 + 0.1 * SIN(SINE / 35), -1.5) * ANGLES(RAD(80), RAD(0 + 4 * SIN(SINE / 35)), RAD(50 + 3 * SIN(SINE / 35))), 0.1 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

function PistolShot()
	if PistolGun.Parent == nil then return end
	ATTACK = true
	Rooted = false
	for i=0, 0.4, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(PistolHole.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(PistolHole.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = PistolHole.CFrame, MoveToPos = PistolHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = PistolHole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 904440937, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,PistolHole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,PistolHole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		for i=0, 0.3, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

function Slash()
	if Katana.Parent == nil then return end
	ATTACK = true
	Rooted = true
	local STOPPP = false
	MagicSphere(VT(0,0,0),15,RootPart.CFrame,"Really black",VT(2,2,2))
	MagicSphere(VT(0,0,0),15,RootPart.CFrame,"Really black",VT(2,2,2))
	MagicSphere(VT(0,0,0),15,RootPart.CFrame,"Really black",VT(2,2,2))
	MagicSphere(VT(0,0,0),15,RootPart.CFrame,"Really black",VT(2,2,2))
	coroutine.wrap(function()
		while true do
			Swait()
			WACKYEFFECT({Time = 15, EffectType = "Crystal", Size = VT(1,5,1), Size2 = VT(1,25,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,0,0)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Glass", Color = BRICKC"Really red".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({Time = 15, EffectType = "Crystal", Size = VT(1,5,1), Size2 = VT(1,25,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,0,0)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Glass", Color = BRICKC"Really red".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({Time = 15, EffectType = "Crystal", Size = VT(1,5,1), Size2 = VT(1,25,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,0,0)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Glass", Color = BRICKC"Really red".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({Time = 15, EffectType = "Crystal", Size = VT(1,5,1), Size2 = VT(1,25,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,0,0)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Glass", Color = BRICKC"Really red".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({Time = 15, EffectType = "Crystal", Size = VT(1,5,1), Size2 = VT(1,25,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,0,0)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Glass", Color = BRICKC"Really red".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			if STOPPP == true then
				break
			end
		end
	end)()
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		CreateRing(VT(0,0,0),false,0,5,CF(RootPart.Position-VT(0,3,0))*ANGLES(RAD(90),RAD(0),RAD(0)),"Really black",VT(1,1,0))
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE, 0*SIZE, -0.5*SIZE) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0*SIZE, 0*SIZE, 0*SIZE + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(75)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(90), RAD(-45), RAD(45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.2*SIZE, 0.5*SIZE, -1*SIZE) * ANGLES(RAD(0), RAD(0), RAD(90)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -0.5*SIZE, -0.5*SIZE) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE, -0.01*SIZE) * ANGLES(RAD(-45), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	for i=0,0.1, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE, 0*SIZE, 0*SIZE) * ANGLES(RAD(0), RAD(0), RAD(75)), 0.5)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0*SIZE, 0*SIZE, 0*SIZE + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.5)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(90), RAD(-45), RAD(0)) * RIGHTSHOULDERC0, 0.5)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5*SIZE, 0.5*SIZE, -1*SIZE) * ANGLES(RAD(90), RAD(0), RAD(75)) * LEFTSHOULDERC0, 0.5)
		RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -1*SIZE, -0.01*SIZE) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE, -0.01*SIZE) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
	end
	local SOUND = CreateSound("rbxasset://sounds/swordlunge.wav", Torso, 10, 0.6)
	SOUND.SoundId = "rbxasset://sounds/swordlunge.wav"
	CreateSound(62339698, Torso, 10, 0.4)
	BANNEAREST(RootPart.Position, 55)
	WACKYEFFECT({Time = 25, EffectType = "Block", Size = VT(5,5,5), Size2 = VT(100,100,100)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/1000,100/1000), RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 3923230963, SoundPitch = MRANDOM(1,1.1), SoundVolume = 10})
	WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(1,0,1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-4,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(1,0,1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-4,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(1,0,1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-4,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	STOPPP = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		Humanoid.CameraOffset = VT(MRANDOM(-500,500)/2.5,MRANDOM(-50,50)/2.5,MRANDOM(-500,500)/2.5)/30
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE, 0*SIZE, 0*SIZE) * ANGLES(RAD(0), RAD(0), RAD(75)), 0.5)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0*SIZE, 0*SIZE, 0*SIZE + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.5)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1*SIZE, 0.5*SIZE, -1*SIZE) * ANGLES(RAD(90), RAD(0), RAD(-75)) * RIGHTSHOULDERC0, 0.5)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5*SIZE, 0.5*SIZE, -1*SIZE) * ANGLES(RAD(90), RAD(0), RAD(75)) * LEFTSHOULDERC0, 0.5)
		RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -1*SIZE, -0.01*SIZE) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE, -0.01*SIZE) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
	end
	Humanoid.CameraOffset = VT(0,0,0)
	ATTACK = false
	Rooted = false
end

function AttackTemplate()
	ATTACK = true
	Rooted = false
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end


--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

function MouseDown(Mouse)
	if ATTACK == false then
	end
end

function MouseUp(Mouse)
	HOLD = false
end

function KeyDown(Key)
	KEYHOLD = true

	if Key == "z" and ATTACK == false then
		Shot()
	end

	if Key == "z" and ATTACK == false and MODE == "Blood"  then
		DeadlyBeam()
	end
	if Key == "v" and ATTACK == false then
		SniperShot()
	end

	if Key == "x" and ATTACK == false then
		PistolShot()
	end

	if Key == "c" and ATTACK == false then
		Slash()
	end

	if Key == "1" and ATTACK == false and MODE ~= "BloodWater" then
		BloodWater()
	end

	if Key == "2" and ATTACK == false and MODE ~= "burning" then
		burn()
	end
	if Key == "3" and ATTACK == false and MODE ~= "Blood" then
		Blood()
	end
	if Key == "7" and ATTACK == false and MODE ~= "???" then
		AAAAAA()
	end

	if Key == "4" and ATTACK == false and MODE ~= "Devil" then
		help()
	end

	if Key == "5" and ATTACK == false and MODE ~= "Secret" then
		secret()
	end

	if Key == "e" and ATTACK == false and MODE == "Blood" then
		OCTO()
	end

	if Key == "6" and ATTACK == false and MODE ~= "Katana" then
		katana()
	end
	if Key == "9" and ATTACK == false and MODE ~= "meme" and Player.Name == "Axvryys" then
		memeee()
	end
	if Key == "9" and ATTACK == false and MODE ~= "meme" and Player.Name == "LuaaScripers" then
		memeee()
	end
	if Key == "9" and ATTACK == false and MODE ~= "meme" and Player.Name == "CChronophobia" then
		memeee()
	end
	if Key == "8" and ATTACK == false and MODE ~= "Kanani" and Player.Name == "KananiHearts" then --Aux dont change this its for a friend
		Kanani()
	end
	if Key == "t" and ATTACK == false then
		sit()
	end

end

coroutine.resume(coroutine.create(function()
	while true do
		Swait()
		pcall(function()
		WEAPONGUI.epic.ModeT.Rotation = 0+13*COS(SINE / 25)
		WEAPONGUI.epic.aaa.Rotation = 0+13*COS(SINE / 25)
		WEAPONGUI.epic.YAY.Rotation = 0+2.52*COS(SINE / 21.2)
		WEAPONGUI.epic.hhh.Rotation = 0+2.52*COS(SINE / 21.2)
		end)
	end
end))
function KeyUp(Key)
	KEYHOLD = false
end

Mouse.Button1Down:connect(function(NEWKEY)
	MouseDown(NEWKEY)
end)
Mouse.Button1Up:connect(function(NEWKEY)
	MouseUp(NEWKEY)
end)
Mouse.KeyDown:connect(function(NEWKEY)
	KeyDown(NEWKEY)
end)
Mouse.KeyUp:connect(function(NEWKEY)
	KeyUp(NEWKEY)
end)

--//=================================\\
--\\=================================//


function unanchor()
	if UNANCHOR == true then
		g = Character:GetChildren()
		for i = 1, #g do
			if g[i].ClassName == "Part" then
				g[i].Anchored = false
			end
		end
	end
end


--//=================================\\
--||	WRAP THE WHOLE SCRIPT UP
--\\=================================//

Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true) then
		Humanoid.Jump = false
	end
end)

local CONNECT = nil

while true do
	Swait()
	ANIMATE.Parent = nil
	ANIMATOR.Parent = nil
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
		v:Stop();
	end
	if Character:FindFirstChildOfClass("Humanoid") == nil then
		Humanoid = IT("Humanoid",Character)
	end
	for T = 1, #TAIL do
		if TAIL[T] ~= nil then
			TAIL[T].C1 = Clerp(TAIL[T].C1, CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(4 * SIN(SINE / 12))), 0.7 / Animation_Speed)
		end
	end
	SINE = SINE + CHANGE
	sine = sine + CHANGE*0.1+sick.PlaybackLoudness/450
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / Speed)
	if ANIM == "Walk" and TORSOVELOCITY > 1 and Rooted == false then
		if MODE == "meme" then
		elseif MODE == "Octo" then --its here octogon is here guys!11!!1!1!

		else
			RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, -0.15 * COS(SINE / (WALKSPEEDVALUE / 2))) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(0)), 2 * (Humanoid.WalkSpeed / 24) / Animation_Speed)
			Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 24) / Animation_Speed)
			RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 0.875 - 0.555 * SIN(SINE / WALKSPEEDVALUE) - 0.25 * COS(SINE / WALKSPEEDVALUE*2), -0.125 * COS(SINE / WALKSPEEDVALUE) +0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(76 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 0.875 + 0.555 * SIN(SINE / WALKSPEEDVALUE) - 0.25 * COS(SINE / WALKSPEEDVALUE*2), 0.125 * COS(SINE / WALKSPEEDVALUE) +0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(76 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		end
	elseif (ANIM ~= "Walk") or (TORSOVELOCITY < 1) or Rooted == true then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
	end
	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
		ANIM = "Jump"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(45), RAD(0), RAD(25))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 0.2 / Animation_Speed)
		end
	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
		ANIM = "Fall"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(45), RAD(0), RAD(25))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 0.2 / Animation_Speed)
		end
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
		ANIM = "Idle"
		DOUBLED = false
		READYTODOUBLE = false
		if MODE == "BloodWater" and ATTACK == false then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.4 - 0.1 * COS(SINE / 12), -1) * ANGLES(RAD(70), RAD(0), RAD(-70)) * ANGLES(RAD(20), RAD(25), RAD(-15)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.1 - 0.1 * COS(SINE / 12), -0.5) * ANGLES(RAD(25), RAD(0), RAD(85)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.025 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
		end
		if MODE == "burning" and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.1, -0.1 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(30), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-15, 25) - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-15, 25)), RAD(MRANDOM(-15, 25))), 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(30), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(30), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(8 * SIN(SINE / 50)), RAD(0), RAD(50 + 8.5 * SIN(SINE / 25))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.45, 0.2, 0) * ANGLES(RAD(MRANDOM(25, 30)), RAD(0), RAD(MRANDOM(5, 10))) * LEFTSHOULDERC0, 1 / Animation_Speed)
		end
		if MODE == "???" and ATTACK == false then
			ChangeName(Love[math.random(1,13)])
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0,0,0+.1*COS(SINE / 18))*ANGLES(RAD(0+1*COS(SINE / 18)),RAD(0),RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-1+-2*COS(SINE / 32)), RAD(0), RAD(10)), 1 / Animation_Speed) 
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(8 * SIN(SINE / 50)), RAD(0), RAD(50 + 8.5 * SIN(SINE / 25))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(40+sick.PlaybackLoudness/7.5), RAD(0), RAD(-10)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.1*COS(SINE / 18), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1+0.08+sick.PlaybackLoudness/1100, -0.6 +.001*COS(SINE / 60)) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
		if MODE == "Secret" and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 - 0.1 * SIN(SINE / 25)) * ANGLES(RAD(0), RAD(0), RAD(25)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(8 * SIN(SINE / 26)), RAD(-25 - 8.5 * SIN(SINE / 25))), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(8 * SIN(SINE / 50)), RAD(60), RAD(50 + 8.5 * SIN(SINE / 25))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.8, 0.4, -0.7) * ANGLES(RAD(90), RAD(0), RAD(86)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.1 * SIN(SINE / 25), -0.01) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.1 * SIN(SINE / 25), -0.01) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
		if MODE == "Devil" and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -1.3 + 0.1 * COS(SINE / 24)) * ANGLES(RAD(0 - 4 * SIN(SINE / 24)), RAD(0 + 1 * COS(SINE / 24)), RAD(-10)), 0.1 / Animation_Speed)            
			Neck.C0 = Clerp(Neck.C0, NECKC0* CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(7 - 2 * SIN(SINE / 20)), RAD(-20), RAD(0)), 0.1 / Animation_Speed)              
			RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.1 - 0.1 * COS(SINE / 24) - RAD(0 + 1 * COS(SINE / 24)), -0.3) * ANGLES(RAD(13 - 6 * SIN(SINE / 24)), RAD(90), RAD(0)), 0.1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1.3 - 0.1 * COS(SINE / 24) + RAD(0 + 1 * COS(SINE / 24)), -0.15) * ANGLES(RAD(-90 - 6 * SIN(SINE / 24)), RAD(-90), RAD(0)), 0.1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.8, 0.4 + 0.1 * SIN(SINE / 35), 0.5) * ANGLES(RAD(90), RAD(90), RAD(0)), 0.1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.3, 0.7 + 0.1 * SIN(SINE / 35), -1.5) * ANGLES(RAD(80), RAD(0 + 4 * SIN(SINE / 35)), RAD(50 + 3 * SIN(SINE / 35))), 0.1 / Animation_Speed)
		end
		if MODE == "Katana" and ATTACK == false then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(2 + 6.0 * SIN(SINE / 15)), RAD(0), RAD(-25)), 3 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0- 0.1 * COS(SINE / 30), 0 + 0.1 * COS(SINE / 15)) * ANGLES(RAD(0+ 5 * COS(SINE / 30)), RAD(0), RAD(25)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0+6.0 * COS(SINE / 30)), RAD(0), RAD(12))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0+6.0 * COS(SINE / 30)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.1 * COS(SINE / 15), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-6-2.5 * COS(SINE / 30)), RAD(0), RAD(0+ 5 * COS(SINE / 30))), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE / 15), -0.01) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(-6+2.5 * COS(SINE / 30)), RAD(0), RAD(0- 5 * COS(SINE / 30))), 1 / Animation_Speed)
		end
		if MODE == "meme" and ATTACK == false then --Made By Auxnos
			ChangeName(memer[math.random(1,4)])

			if MRANDOM(1,1200) == 30 then
				local MATERIALS = {"Plastic","Brick","Cobblestone","ForceField","Grass","Granite","Marble","Metal","WoodPlanks","Wood","Sand","Slate"}
				local pl = sick.PlaybackLoudness / 550
				RightArm.Material = "ForceField"
				LeftArm.Material = "ForceField"
				Head.Material = "ForceField"
				Torso.Material = "ForceField"
				LeftLeg.Material = "ForceField"
				RightLeg.Material = "ForceField"
				PRT.Material = "ForceField"
				WACKYEFFECT({Time = 35, EffectType = "Spike", Size = VT(3,4,3), Size2 = VT(6,7,6), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,5,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = (MATERIALS[MRANDOM(1,#MATERIALS)]), Color = Color3.fromRGB(0 +pl/3,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				CreateSound(155202884, Torso, 5, MRANDOM(9,15)/11, false)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0+ MRANDOM(-0.5,0.5) , 0+ MRANDOM(-2,2) , 0 + MRANDOM(-2,2)) * ANGLES(RAD(0), RAD(0), RAD(-50)), 2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(MRANDOM(-30,30)), RAD(MRANDOM(-30,30)), RAD(50 +MRANDOM(-10,10))), 2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1+ MRANDOM(-2,2), 0.5 + 0.15 * COS(SINE / 24)+ MRANDOM(-2,2), 0.2+ MRANDOM(-2,2)) * ANGLES(RAD(-45), RAD(0), RAD(-30))* RIGHTSHOULDERC0, 2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1+ MRANDOM(-2,2), 0.5 + 0.15 * COS(SINE / 24)+ MRANDOM(-2,2), 0.2+ MRANDOM(-2,2)) * ANGLES(RAD(-45), RAD(0), RAD(30)) * LEFTSHOULDERC0, 2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1+ MRANDOM(-2,2), -1+ MRANDOM(-2,2), 0+ MRANDOM(-2,2)) * ANGLES(RAD(0), RAD(-10), RAD(0)) * ANGLES(RAD(0), RAD(90), RAD(0)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1+ MRANDOM(-2,2), -1+ MRANDOM(-2,2) , 0+ MRANDOM(-2,2)) * ANGLES(RAD(0), RAD(10), RAD(0)) * ANGLES(RAD(0), RAD(-90), RAD(0)), 2 / Animation_Speed)
				wait(0.5)
				RightArm.Material = "Plastic"
				LeftArm.Material = "Plastic"
				Head.Material = "Plastic"
				Torso.Material = "Plastic"
				LeftLeg.Material = "Plastic"
				RightLeg.Material = "Plastic"
				PRT.Material = "Plastic"
			end
			fakerot = fakerot + 1 * sick.PlaybackLoudness/200
			local bouncyboi = sick.PlaybackLoudness / 1200
			-------------------------------------------------
			--RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1.4 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(4 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(12 + 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
			--Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + 4.5 * SIN(SINE / 12)), RAD(0), RAD(-12 - 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
			--RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12+2)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			--LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, 0.5+0.1*COS(SINE / 80))* ANGLES(RAD(-20), RAD(-.9), RAD(43)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			--RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			--LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1.4 + 0.25 * COS(sine / 12)) * ANGLES(RAD(4 + 2.5 * SIN(sine / 12)), RAD(0), RAD(12 + 2.5 * SIN(sine / 12))), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + 4.5 * SIN(sine / 12)), RAD(0), RAD(-12 - 2.5 * SIN(sine / 12))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12+2)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, 0.5+0.1*COS(sine / 80))* ANGLES(RAD(-20), RAD(-.9), RAD(43)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-2.5 * SIN(sine / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(sine / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-2.5 * SIN(sine / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(sine / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		if MODE == "Blood" and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(-45),RAD(0),RAD(75)),0.1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-0 - 2.9 * SIN(SINE / 12)), RAD(0), RAD(37 *COS(SINE/40))), 0.7 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(95),RAD(-10),RAD(90)),0.1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),0.1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1,0,-0.5) * ANGLES(RAD(0),RAD(110),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),0.1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-110),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),0.1 / Animation_Speed)
		end
		if MODE == "Kanani" and ATTACK == false then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.4 - 0.1 * COS(SINE / 12), -1) * ANGLES(RAD(70), RAD(0), RAD(-70)) * ANGLES(RAD(20), RAD(25), RAD(-15)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.1 - 0.1 * COS(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.025 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
		end
		if MODE == "Octo" and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0+ MRANDOM(-0.5,0.5) , 0+ MRANDOM(-2,2) , 0 + MRANDOM(-2,2)) * ANGLES(RAD(0), RAD(0), RAD(-50)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(MRANDOM(-30,30)), RAD(MRANDOM(-30,30)), RAD(50 +MRANDOM(-10,10))), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1+ MRANDOM(-2,2), 0.5 + 0.15 * COS(SINE / 24)+ MRANDOM(-2,2), 0.2+ MRANDOM(-2,2)) * ANGLES(RAD(-45), RAD(0), RAD(-30))* RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1+ MRANDOM(-2,2), 0.5 + 0.15 * COS(SINE / 24)+ MRANDOM(-2,2), 0.2+ MRANDOM(-2,2)) * ANGLES(RAD(-45), RAD(0), RAD(30)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1+ MRANDOM(-2,2), -1+ MRANDOM(-2,2), 0+ MRANDOM(-2,2)) * ANGLES(RAD(0), RAD(-10), RAD(0)) * ANGLES(RAD(0), RAD(90), RAD(0)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1+ MRANDOM(-2,2), -1+ MRANDOM(-2,2) , 0+ MRANDOM(-2,2)) * ANGLES(RAD(0), RAD(10), RAD(0)) * ANGLES(RAD(0), RAD(-90), RAD(0)), 2 / Animation_Speed)
		end
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
		ANIM = "Walk"
		if ATTACK == false then
			if MODE == "BloodWater" or MODE == "Devil" or MODE == "burning" then
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-15, 25) - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-15, 25)), RAD(MRANDOM(-15, 25))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.4 - 0.1 * COS(SINE / 12), -1) * ANGLES(RAD(70), RAD(0), RAD(-70)) * ANGLES(RAD(20), RAD(25), RAD(-15)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.1 - 0.1 * COS(SINE / 12), -0.5) * ANGLES(RAD(25), RAD(0), RAD(85)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1,  0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 0.5 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 0.5 / Animation_Speed)
			elseif MODE == "Secret" or MODE == "Katana"  then
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-15, 25) - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-15, 25)), RAD(MRANDOM(-15, 25))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(35 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(5)) * RIGHTSHOULDERC0, 0.35 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1,  0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 0.5 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 0.5 / Animation_Speed)
			elseif MODE == "meme" then
				ChangeName(memer[math.random(1,4)])
				RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0 - 0.15 * COS(SINE / 47),-0.5,2.5 + 0.25 * COS(SINE / 28))*ANGLES(RAD(70),RAD(0 - RootPart.RotVelocity.Y),RAD(0 - RootPart.RotVelocity.Y *4.5 + 3 * COS(SINE / 47))),.05)
				Neck.C0=Clerp(Neck.C0,NECKC0*ANGLES(RAD(-17 - 5 * COS(SINE / 52)),RAD(0 - 3 * COS(SINE / 37)),RAD(0 + 2 * COS(SINE / 78))),.2)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(13 - 4.10 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-13 + 4.10 * SIN(SINE / 12))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.001*COS(SINE / 7), -0.01) * ANGLES(RAD(-10-.1*COS(SINE/12)), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / 10)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -.5-.001*COS(SINE/7), -0.5) * ANGLES(RAD(-25-.1*COS(SINE/12)), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / 10)
			elseif MODE == "Octo" then
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(25), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-50), RAD(0 + MRANDOM(-25,25) - 4 * COS(SINE / 12)), RAD(0)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-50), RAD(0 + MRANDOM(-25,25) - 4 * COS(SINE / 12)),RAD(0)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			else
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-15, 25) - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-15, 25)), RAD(MRANDOM(-15, 25))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(5)) * RIGHTSHOULDERC0, 0.35 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1,  0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 0.5 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 0.5 / Animation_Speed)
			end	
			if MODE == "???" then
				ChangeName(Love[math.random(1,13)])
			elseif MODE == "meme" then
				ChangeName(Love[math.random(1,13)])
			end
		end
	end
	unanchor()
	Humanoid.MaxHealth = math.huge
	Humanoid.Health = math.huge
	NAMEMODE.Rotation = 0+5*M.C(SINE/32)
	NAMEMODE.TextColor3 = Color3.new(sick.PlaybackLoudness/500,0,0)
	if MODE == "Katana" then
		CamShakeAll(sick.PlaybackLoudness/75,sick.PlaybackLoudness/75)
	end
	if MODE == "BloodWater" or "Devil" or "Blood" or "burning" or "Katana" or "Secret" then
		Tintt.TintColor = Color3.new(1,1,1)
		Blur.Size = 1
	end
	if MODE == "???" then
		Blur.Size = 2 + (sick.PlaybackLoudness/100)
		WACKYEFFECT({Time = 10, EffectType = "Sphere", Size = VT(1+ sick.PlaybackLoudness/20,1+ sick.PlaybackLoudness/20,1+ sick.PlaybackLoudness/20), Size2 = VT(1+sick.PlaybackLoudness/20,1+sick.PlaybackLoudness/20,1+sick.PlaybackLoudness/20), Transparency = 0, Transparency2 = 0.5, CFrame = Torso.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = MRANDOM(500,500), RotationY = MRANDOM(500,500), RotationZ = MRANDOM(500,500), Material = "ForceField", Color =  Color3.new(sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		Tintt.TintColor = BrickColor.new(255,sick.PlaybackLoudness/1000,sick.PlaybackLoudness/1000).Color
		CamShakeAll(sick.PlaybackLoudness/225,sick.PlaybackLoudness/225,workspace)
	end
	RightArm.Color = Color3.new(sick.PlaybackLoudness/500,0,0)
	LeftArm.Color = Color3.new(sick.PlaybackLoudness/500,0,0)
	Torso.Color = Color3.new(sick.PlaybackLoudness/500,0,0)
	Head.Color = Color3.new(sick.PlaybackLoudness/500,0,0)
	LeftLeg.Color = Color3.new(sick.PlaybackLoudness/500,0,0)
	RightLeg.Color = Color3.new(sick.PlaybackLoudness/500,0,0)
	if MODE == "meme" then
		Speed = 24
	elseif MODE == "Octo" then
		Speed = 24+sick.PlaybackLoudness/450
	else
		Speed = 16
	end

	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end

end




--//=================================\\
--\\=================================//





--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--
