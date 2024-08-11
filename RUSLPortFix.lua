local Assets = LoadAssets(18908282847)
table.foreach(Assets:Get("RUSL"):GetChildren(), function(i,v)
	local lol = v:Clone()
	lol.Parent = game:GetService("Chat")
end)
local Funcs, Event = {}, nil
local Event2 = Instance.new("BindableEvent", game.ReplicatedStorage)
Event2.Name = "BindableEvent2RUSL"
function Funcs.RandomString(Length)
	local Text = ""
	for i = 1, typeof(Length) == "number" and math.clamp(Length, 1, 100) or math.random(10, 100) do
		Text = Text..string.char(math.random(1, 128))
	end
	return Text
end
local scriptstuff = [==[
local OldRun = game:GetService("RunService")
local RunSteps = {}
local RunService = {
	BindToRenderStep = function(_,Name,Prio,Func)
		RunSteps[Name] = Func
	end,
	UnbindFromRenderStep = function(_,Name)
		RunSteps[Name] = nil
	end,
	RenderStepped = OldRun.Heartbeat
} 

setmetatable(RunService,{
	__index = function(self, Index)
		return OldRun[Index]
	end,
	__newindex = function(self, Index, New)
		OldRun[Index] = New
	end
})

OldRun.Heartbeat:Connect(function()
	for _,v in pairs(RunSteps) do
		v()
	end
end)
local Tick, AbleToLeave = tick(), true
game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()
game:GetService("RunService").Heartbeat:Wait()
local Funcs,Backups,Version = {},{},"0.12.1"
function Funcs.RandomString(Length)
	local Length = typeof(Length) == "number" and math.clamp(Length,1,100) or math.random(80,100)
	local Text = ""
	for i = 1,Length do
		Text = Text..string.char(math.random(1,128))
	end
	return Text
end
local function RandomString()
	return Funcs.RandomString(100)
end
local function randomstring()
	return Funcs.RandomString(100)
end
local Username,StopKey,ServerStop,AccessKey = script:FindFirstChildOfClass("FaceControls").Name,script:FindFirstChildOfClass("ManualGlue").Name,nil,nil
local S, OriginalLighting = 2, {
	Ambient = Color3.fromRGB(138, 138, 138);
	Brightness = 2;
	ColorShift_Bottom = Color3.new();
	ColorShift_Top = Color3.new();
	GlobalShadows = true;
	OutdoorAmbient = Color3.fromRGB(128, 128, 128);
	ShadowSoftness = 0.2;
	ClockTime = 14;
	FogColor = Color3.fromRGB(192, 192, 192);
	FogEnd = 9e9;
	FogStart = 0;
	ExposureCompensation = 0;
	EnvironmentDiffuseScale = 0;
	EnvironmentSpecularScale = 0;
	GeographicLatitude = 41.733
}
for i,v in pairs(game:GetService("Chat").troll:GetChildren()) do
	pcall(function()
		if v:IsA("BasePart") then
			Backups[v.Name] = v:Clone()
			Backups[v.Name].Size = Backups[v.Name].Size*S
		end
	end)
end
function Funcs.Serv(Name)
	return game:GetService(Name)
end
local leaveGui = nil
local ScreenGui = Instance.new("ScreenGui")
if Funcs.Serv("Players"):FindFirstChild(Username).Name == Username then
	ServerStop = script:FindFirstChildOfClass("AnimationRigData").Name
	AccessKey = script:FindFirstChildOfClass("KeyframeMarker").Name
end
script:Destroy()
function Funcs.Debris(Instance,Delay)
	Funcs.Serv("Debris"):AddItem(Instance,Delay)
end
local Mouse,Keys,Movement,Welds,NoCollisions,RayProperties,Camera,Timing,Character,Event,LocalPlayer,BasePartClassTypes,KilledParts,Services,AudioId,LoopColor,VisualizerEnabled = {Hit = CFrame.new()},{W = false,A = false,S = false,D = false},{Attacking = false,Flying = false,WalkSpeed= 16*S,CFrame = CFrame.new(0,100,0),PotentialCFrame = CFrame.new(0,100,0),Falling = false,Walking = false,NeckSnap = false,HipHeight = 2*S,SunFloat = true},{
	Defaults = {
		Neck = {
			C0 = CFrame.new(0,1*S,0)*CFrame.Angles(math.rad(-90),0,math.rad(180))
		},
		RootJoint = {
			C0 = CFrame.new()*CFrame.Angles(math.rad(-90),0,math.rad(180))
		},
		RightShoulder = {
			C0 = CFrame.new(-.5*S,0,0)*CFrame.Angles(0,math.rad(90),0)
		},
		LeftShoulder = {
			C0 = CFrame.new(.5*S,0,0)*CFrame.Angles(0,math.rad(-90),0)
		}
	},
	Neck = {C0 = CFrame.new(0,1*S,0,-1,0,0,0,0,1,0,1,0),C1 = CFrame.new(0,-.5*S,0,-1,0,0,0,0,1,0,1,0)},
	RootJoint = {C0 = CFrame.new(),C1 = CFrame.new(0,0,0,-1,0,0,0,0,1,0,1,0)},
	RightShoulder = {C0 = CFrame.new(1*S,.5*S,0,0,0,1,0,1,0,-1,0,0),C1 = CFrame.new(-.5*S,.5*S,0,0,0,1,0,1,0,-1,0,0)},
	LeftShoulder = {C0 = CFrame.new(-1*S,.5*S,0,0,0,-1,0,1,0,1,0,0),C1 = CFrame.new(.5*S,.5*S,0,0,0,-1,0,1,0,1,0,0)},
	RightHip = {C0 = CFrame.new(1*S,-1*S,0,0,0,1,0,1,0,-1,0,0),C1 = CFrame.new(.5*S,1*S,0,0,0,1,0,1,0,-1,0,0)},
	LeftHip = {C0 = CFrame.new(-1*S,-1*S,0,0,0,-1,0,1,0,1,0,0),C1 = CFrame.new(-.5*S,1*S,0,0,0,-1,0,1,0,1,0,0)},
	Eyes = {C0 = CFrame.new(),C1 = CFrame.new(.143993527*S,-.15178299*S,.525008798*S,.965925813,0,.258819044,0,1,0,-.258819044,0,.965925813)},
	Sword = {C0 = CFrame.new(0,-1*S,0)*CFrame.Angles(math.rad(90),0,0),C1 = CFrame.new(0,-3.15*S,0)},
	Horns = {C0 = CFrame.new(0,1*S,-.4*S),C1 = CFrame.new()},
	RightWing = {C0 = CFrame.new(.15*S,.5*S,.5*S)*CFrame.Angles(0,math.rad(90),0),C1 = CFrame.new(1.1*S,1*S,-.75*S)},
	LeftWing = {C0 = CFrame.new(-.15*S,.5*S,.5*S)*CFrame.Angles(0,math.rad(90),0),C1 = CFrame.new(1.1*S,1*S,.75*S)},
	None = {C0 = CFrame.new(),C1 = CFrame.new()},
	VisualizerPos = {C0 = CFrame.new(0,-2.925-(2*S),0),C1 = CFrame.new(0,0,0)},
	GunJoint = {
		C0 = CFrame.new(.05*S, -1*S, -.15*S) * CFrame.Angles(math.rad(-90), 0, 0),
		C1 = CFrame.new()
	},
	Hair = {
		C0 = CFrame.new(.16*S, .5*S, 0) * CFrame.Angles(0, math.rad(180), 0),
		C1 = CFrame.new()
	},
	GunBase = {
		C0 = CFrame.new(0, 1.305*S, -2.108*S) * CFrame.Angles(0, math.rad(-90), math.rad(-45)),
		C1 = CFrame.new()
	},
	GunGlow = {
		C0 = CFrame.new(-.024*S, 1.369*S, -1.26*S) * CFrame.Angles(0, 0, math.rad(-140.59)),
		C1 = CFrame.new()
	},
	GunAdditions = {
		C0 = CFrame.new(-.004*S, 1.204*S, .505*S) * CFrame.Angles(0, math.rad(-90), 0),
		C1 = CFrame.new()
	},
	GEARWELD = {
		C0 = CFrame.new(0, -0.6, 0.7),
		C1 = CFrame.new()
	},
	GEARWELD2 = {
		C0 = CFrame.new(0, -0.6, 0.7),
		C1 = CFrame.new()
	},
	GEARWELD3 = {
		C0 = CFrame.new(0, -0.6, 0.7),
		C1 = CFrame.new()
	},
	Hole = {
		C0 = CFrame.new(-.001*S, 1.538*S, -3.342*S) * CFrame.Angles(0, math.rad(-90), 0),
		C1 = CFrame.new()
	},
	Hole2 = {
		C0 = CFrame.new(-.001*S, 1.538*S, -9.142*S),
		C1 = CFrame.new()
	}
},{},RaycastParams.new(),{CFrame = CFrame.new(),Weld = {C0 = CFrame.new(0,1.5*S,0),C1 = CFrame.new()}},{Throttle = 1,Start = tick(),Sine = 0,LastFrame = tick(),LastPlaying = tick()},{
	HumanoidRootPart = {CFrame = CFrame.new()},
	GunHandle = {
		CFrame = CFrame.new()
	},
	Hole = {
		CFrame = CFrame.new()
	},
	Hole2 = {
		CFrame = CFrame.new()
	}
},nil,Funcs.Serv("Players"):FindFirstChild(Username),{"CornerWedgePart","Part","FlagStand","Seat","SpawnLocation","WedgePart","MeshPart","PartOperation","NegateOperation","UnionOperation","TrussPart"},{},{"RunService","GuiService","Stats","SoundService","LogService","ContentProvider","KeyframeSequenceProvider","Chat","MarketplaceService","Players","PointsService","AdService","NotificationService","ReplicatedFirst","HttpRbxApiService","TweenService","TextService","StarterPlayer","StarterPack","StarterGui","LocalizationService","PolicyService","TeleportService","JointsService","CollectionService","PhysicsService","BadgeService","Geometry","InsertService","InsertService","GamePassService","Debris","TimerService","CookiesService",--[["UserInputService"]]"KeyboardService","MouseService","VRService",--[["ContextActionService"]]{},"ScriptService","AssetService","TouchInputService","BrowserService","AnalyticsService","ScriptContext","Selection","HttpService","MeshContentProvider","Lighting","SolidModelContentProvider","GamepadService","ControllerService","HapticService","ChangeHistoryService","Visit","GuidRegistryService","PermissionsService","Teams","ReplicatedStorage","TestService","SocialService","MemStorageService","GroupService","PathfindingService","VirtualUser"},6049110238,0,false
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local KeyPress = Instance.new("RemoteEvent", game.ReplicatedStorage)
KeyPress.Name = "KeyPress"
local KeyRelease = Instance.new("RemoteEvent", game.ReplicatedStorage)
KeyRelease.Name = "KeyRelease"
local Button1Press = Instance.new("RemoteEvent", game.ReplicatedStorage)
Button1Press.Name = "Button1Press"
if LocalPlayer.Name == Username then
	Mouse = {}
	KeyPress.OnServerEvent:Connect(function(player, Key_)
		if Keys[Key_] ~= nil then
			Keys[Key_] = true
		else
			if Key_ == "F" then
				Movement.Flying = not Movement.Flying
				Movement.WalkSpeed = 16 * Movement.WalkSpeed  -- Assuming S is some predefined multiplier
				Movement.CFrame = CFrame.new(Movement.CFrame.Position)
				Movement.Falling = false
			elseif Key_ == "P" then
				Movement.CFrame = CFrame.new(0, 100, 0)
				Movement.Falling = false
			elseif Key_ == "\\" then
				Movement.CFrame = Movement.CFrame * CFrame.new(0, 100, 0)
			end
		end
		Event:Fire("Key", { Key = Key_, Down = true }, AccessKey)
	end)

	-- Function to handle key release
	KeyRelease.OnServerEvent:Connect(function(player, Key_)
		if Keys[Key_] ~= nil then
			Keys[Key_] = false
		end
		Event:Fire("Key", { Key = Key_, Down = false }, AccessKey)
	end)

	-- Function to handle mouse button 1 press
	Button1Press.OnServerEvent:Connect(function(player)
		Event:Fire("Button1Down", {}, AccessKey)
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
function Funcs.ClearChildren(Instance)
	for _, v in pairs(Instance:GetChildren()) do
		pcall(function()
			if v ~= Event then
				--Funcs.Debris(v, 0)
			end
		end)
	end
end
function Funcs.SystemMessage(Text, Color)
	pcall(function()
		Funcs.Serv("StarterGui"):SetCore("ChatMakeSystemMessage", {
			Text = Text;
			Color = Color;
		})
	end)
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
local R1 = 255
local G1 = 255
local B1 = 0
coroutine.resume(coroutine.create(function()
	while Funcs.Serv("RunService").Heartbeat:Wait() do
		for i = 0, 254/5 do
			Funcs.Serv("RunService").Heartbeat:Wait()
			G1 = G1 - 5
			R1 = R1 - 5
			B1 = B1 + 5
		end
		for i = 0, 254/5 do
			Funcs.Serv("RunService").Heartbeat:Wait()
			G1 = G1 + 5
			R1 = R1 + 5
			B1 = B1 - 5
		end
	end
end))
local pi    = math.pi
local abs   = math.abs
local clamp = math.clamp
local exp   = math.exp
local rad   = math.rad
local sign  = math.sign
local sqrt  = math.sqrt
local tan   = math.tan
local ContextActionService = --[[Funcs.Serv("ContextActionService")]]{}
local Players = Funcs.Serv("Players")
local RunService = RunService
local StarterGui = Funcs.Serv("StarterGui")
local UserInputService = Funcs.Serv("UserInputService")
local Workspace = Funcs.Serv("Workspace")
local FREECAM_Camera = Workspace.CurrentCamera
Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
	local newCamera = Workspace.CurrentCamera
	if newCamera then
		FREECAM_Camera = newCamera
	end
end)
local TOGGLE_INPUT_PRIORITY = Enum.ContextActionPriority.Low.Value
local INPUT_PRIORITY = Enum.ContextActionPriority.High.Value
local NAV_GAIN = Vector3.new(1, 1, 1)*64
local PAN_GAIN = Vector2.new(0.75, 1)*8
local FOV_GAIN = 300
local PITCH_LIMIT = rad(90)
local VEL_STIFFNESS = 1.5
local PAN_STIFFNESS = 1.0
local FOV_STIFFNESS = 4.0
local Spring = {} do
	Spring.__index = Spring

	function Spring.new(freq, pos)
		local self = setmetatable({}, Spring)
		self.f = freq
		self.p = pos
		self.v = pos*0
		return self
	end

	function Spring:Update(dt, goal)
		local f = self.f*2*pi
		local p0 = self.p
		local v0 = self.v

		local offset = goal - p0
		local decay = exp(-f*dt)

		local p1 = goal + (v0*dt - offset*(f*dt + 1))*decay
		local v1 = (f*dt*(offset*f - v0) + v0)*decay

		self.p = p1
		self.v = v1

		return p1
	end

	function Spring:Reset(pos)
		self.p = pos
		self.v = pos*0
	end
end
local cameraPos = Vector3.new()
local cameraRot = Vector2.new()
local cameraFov = 0
local velSpring = Spring.new(VEL_STIFFNESS, Vector3.new())
local panSpring = Spring.new(PAN_STIFFNESS, Vector2.new())
local fovSpring = Spring.new(FOV_STIFFNESS, 0)
local Input = {} do
	local thumbstickCurve do
		local K_CURVATURE = 2.0
		local K_DEADZONE = 0.15

		local function fCurve(x)
			return (exp(K_CURVATURE*x) - 1)/(exp(K_CURVATURE) - 1)
		end

		local function fDeadzone(x)
			return fCurve((x - K_DEADZONE)/(1 - K_DEADZONE))
		end

		function thumbstickCurve(x)
			return sign(x)*clamp(fDeadzone(abs(x)), 0, 1)
		end
	end

	local gamepad = {
		ButtonX = 0,
		ButtonY = 0,
		DPadDown = 0,
		DPadUp = 0,
		ButtonL2 = 0,
		ButtonR2 = 0,
		Thumbstick1 = Vector2.new(),
		Thumbstick2 = Vector2.new(),
	}

	local keyboard = {
		W = 0,
		A = 0,
		S = 0,
		D = 0,
		E = 0,
		Q = 0,
		U = 0,
		H = 0,
		J = 0,
		K = 0,
		I = 0,
		Y = 0,
		Up = 0,
		Down = 0,
		LeftShift = 0,
		RightShift = 0,
	}

	local mouse = {
		Delta = Vector2.new(),
		MouseWheel = 0,
	}

	local NAV_GAMEPAD_SPEED  = Vector3.new(1, 1, 1)
	local NAV_KEYBOARD_SPEED = Vector3.new(1, 1, 1)
	local PAN_MOUSE_SPEED    = Vector2.new(1, 1)*(pi/64)
	local PAN_GAMEPAD_SPEED  = Vector2.new(1, 1)*(pi/8)
	local FOV_WHEEL_SPEED    = 1.0
	local FOV_GAMEPAD_SPEED  = 0.25
	local NAV_ADJ_SPEED      = 0.75
	local NAV_SHIFT_MUL      = 0.25

	local navSpeed = 1

	function Input.Vel(dt)
		navSpeed = clamp(navSpeed + dt*(keyboard.Up - keyboard.Down)*NAV_ADJ_SPEED, 0.01, 4)

		local kGamepad = Vector3.new(
			thumbstickCurve(gamepad.Thumbstick1.X),
			thumbstickCurve(gamepad.ButtonR2) - thumbstickCurve(gamepad.ButtonL2),
			thumbstickCurve(-gamepad.Thumbstick1.Y)
		)*NAV_GAMEPAD_SPEED

		local kKeyboard = Vector3.new(
			keyboard.D - keyboard.A + keyboard.K - keyboard.H,
			keyboard.E - keyboard.Q + keyboard.I - keyboard.Y,
			keyboard.S - keyboard.W + keyboard.J - keyboard.U
		)*NAV_KEYBOARD_SPEED

		local shift = {}--UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)

		return (kGamepad + kKeyboard)*(navSpeed*(shift and NAV_SHIFT_MUL or 1))
	end

	function Input.Pan(dt)
		local kGamepad = Vector2.new(
			thumbstickCurve(gamepad.Thumbstick2.Y),
			thumbstickCurve(-gamepad.Thumbstick2.X)
		)*PAN_GAMEPAD_SPEED
		local kMouse = mouse.Delta*PAN_MOUSE_SPEED
		mouse.Delta = Vector2.new()
		return kGamepad + kMouse
	end

	function Input.Fov(dt)
		local kGamepad = (gamepad.ButtonX - gamepad.ButtonY)*FOV_GAMEPAD_SPEED
		local kMouse = mouse.MouseWheel*FOV_WHEEL_SPEED
		mouse.MouseWheel = 0
		return kGamepad + kMouse
	end

	do
		local function Keypress(action, state, input)
			keyboard[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
			return Enum.ContextActionResult.Sink
		end

		local function GpButton(action, state, input)
			gamepad[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
			return Enum.ContextActionResult.Sink
		end

		local function MousePan(action, state, input)
			local delta = input.Delta
			mouse.Delta = Vector2.new(-delta.y, -delta.x)
			return Enum.ContextActionResult.Sink
		end

		local function Thumb(action, state, input)
			gamepad[input.KeyCode.Name] = input.Position
			return Enum.ContextActionResult.Sink
		end

		local function Trigger(action, state, input)
			gamepad[input.KeyCode.Name] = input.Position.z
			return Enum.ContextActionResult.Sink
		end

		local function MouseWheel(action, state, input)
			mouse[input.UserInputType.Name] = -input.Position.z
			return Enum.ContextActionResult.Sink
		end

		local function Zero(t)
			for k, v in pairs(t) do
				t[k] = v*0
			end
		end

		function Input.StartCapture()
			--[[ContextActionService:BindActionAtPriority("FreecamKeyboard", Keypress, false, INPUT_PRIORITY,
				Enum.KeyCode.W, Enum.KeyCode.U,
				Enum.KeyCode.A, Enum.KeyCode.F7,
				Enum.KeyCode.S, Enum.KeyCode.J,
				Enum.KeyCode.D, Enum.KeyCode.K,
				Enum.KeyCode.E, Enum.KeyCode.I,
				Enum.KeyCode.Q, Enum.KeyCode.Y,
				Enum.KeyCode.Up, Enum.KeyCode.Down
			)
			ContextActionService:BindActionAtPriority("FreecamMousePan",          MousePan,   false, INPUT_PRIORITY, Enum.UserInputType.MouseMovement)
			ContextActionService:BindActionAtPriority("FreecamMouseWheel",        MouseWheel, false, INPUT_PRIORITY, Enum.UserInputType.MouseWheel)
			ContextActionService:BindActionAtPriority("FreecamGamepadButton",     GpButton,   false, INPUT_PRIORITY, Enum.KeyCode.ButtonX, Enum.KeyCode.ButtonY)
			ContextActionService:BindActionAtPriority("FreecamGamepadTrigger",    Trigger,    false, INPUT_PRIORITY, Enum.KeyCode.ButtonR2, Enum.KeyCode.ButtonL2)
			ContextActionService:BindActionAtPriority("FreecamGamepadThumbstick", Thumb,      false, INPUT_PRIORITY, Enum.KeyCode.Thumbstick1, Enum.KeyCode.Thumbstick2)]]
		end

		function Input.StopCapture()
			navSpeed = 1
			Zero(gamepad)
			Zero(keyboard)
			Zero(mouse)
			--[[ContextActionService:UnbindAction("FreecamKeyboard")
			ContextActionService:UnbindAction("FreecamMousePan")
			ContextActionService:UnbindAction("FreecamMouseWheel")
			ContextActionService:UnbindAction("FreecamGamepadButton")
			ContextActionService:UnbindAction("FreecamGamepadTrigger")
			ContextActionService:UnbindAction("FreecamGamepadThumbstick")]]
		end
	end
end

local function GetFocusDistance(cameraFrame)
	local znear = 0.1
	local viewport = FREECAM_Camera.ViewportSize
	local projy = 2*tan(cameraFov/2)
	local projx = viewport.x/viewport.y*projy
	local fx = cameraFrame.rightVector
	local fy = cameraFrame.upVector
	local fz = cameraFrame.lookVector

	local minVect = Vector3.new()
	local minDist = 512

	for x = 0, 1, 0.5 do
		for y = 0, 1, 0.5 do
			local cx = (x - 0.5)*projx
			local cy = (y - 0.5)*projy
			local offset = fx*cx - fy*cy + fz
			local origin = cameraFrame.p + offset*znear
			local _, hit = Workspace:FindPartOnRay(Ray.new(origin, offset.unit*minDist))
			local dist = (hit - origin).magnitude
			if minDist > dist then
				minDist = dist
				minVect = offset.unit
			end
		end
	end

	return fz:Dot(minVect)*minDist
end

------------------------------------------------------------------------

local function StepFreecam(dt)
	local vel = velSpring:Update(dt, Input.Vel(dt))
	local pan = panSpring:Update(dt, Input.Pan(dt))
	local fov = fovSpring:Update(dt, Input.Fov(dt))

	local zoomFactor = sqrt(tan(rad(70/2))/tan(rad(cameraFov/2)))

	cameraFov = clamp(cameraFov + fov*FOV_GAIN*(dt/zoomFactor), 1, 120)
	cameraRot = cameraRot + pan*PAN_GAIN*(dt/zoomFactor)
	cameraRot = Vector2.new(clamp(cameraRot.x, -PITCH_LIMIT, PITCH_LIMIT), cameraRot.y%(2*pi))

	local cameraCFrame = CFrame.new(cameraPos)*CFrame.fromOrientation(cameraRot.x, cameraRot.y, 0)*CFrame.new(vel*NAV_GAIN*dt)
	cameraPos = cameraCFrame.p

	FREECAM_Camera.CFrame = cameraCFrame
	FREECAM_Camera.Focus = cameraCFrame*CFrame.new(0, 0, -GetFocusDistance(cameraCFrame))
	FREECAM_Camera.FieldOfView = cameraFov
end

------------------------------------------------------------------------

local PlayerState = {} do
	local mouseBehavior
	local mouseIconEnabled
	local cameraType
	local cameraFocus
	local cameraCFrame
	local cameraFieldOfView
	local screenGuis = {}
	local coreGuis = {
		Backpack = true,
		Chat = true,
		Health = true,
		PlayerList = true,
	}
	local setCores = {
		BadgesNotificationsActive = true,
		PointsNotificationsActive = true,
	}

	-- Save state and set up for freecam
	function PlayerState.Push()
		for name in pairs(coreGuis) do
			--[[coreGuis[name] = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType[name])
			StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], false)]]
		end
		for name in pairs(setCores) do
			--setCores[name] = StarterGui:GetCore(name)
			--StarterGui:SetCore(name, false)
		end
		local playergui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
		if playergui then
			for _, gui in pairs(playergui:GetChildren()) do
				if gui:IsA("ScreenGui") and gui.Enabled and gui ~= ScreenGui then
					screenGuis[#screenGuis + 1] = gui
					gui.Enabled = false
				end
			end
		end

		cameraFieldOfView = FREECAM_Camera.FieldOfView
		FREECAM_Camera.FieldOfView = 70

		cameraType = FREECAM_Camera.CameraType
		FREECAM_Camera.CameraType = Enum.CameraType.Custom

		cameraCFrame = FREECAM_Camera.CFrame
		cameraFocus = FREECAM_Camera.Focus

		--mouseIconEnabled = UserInputService.MouseIconEnabled
		--UserInputService.MouseIconEnabled = false

		--mouseBehavior = UserInputService.MouseBehavior
		--UserInputService.MouseBehavior = Enum.MouseBehavior.Default
	end

	-- Restore state
	function PlayerState.Pop()
		for name, isEnabled in pairs(coreGuis) do
			--StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], isEnabled)
		end
		for name, isEnabled in pairs(setCores) do
			--StarterGui:SetCore(name, isEnabled)
		end
		for _, gui in pairs(screenGuis) do
			if gui.Parent then
				gui.Enabled = true
			end
		end

		FREECAM_Camera.FieldOfView = cameraFieldOfView
		cameraFieldOfView = nil

		FREECAM_Camera.CameraType = cameraType
		cameraType = nil

		FREECAM_Camera.CFrame = cameraCFrame
		cameraCFrame = nil

		FREECAM_Camera.Focus = cameraFocus
		cameraFocus = nil

		--UserInputService.MouseIconEnabled = mouseIconEnabled
		mouseIconEnabled = nil

		--UserInputService.MouseBehavior = mouseBehavior
		mouseBehavior = nil
	end
end

local function StartFreecam()
	local cameraCFrame = FREECAM_Camera.CFrame
	cameraRot = Vector2.new(cameraCFrame:toEulerAnglesYXZ())
	cameraPos = cameraCFrame.p
	cameraFov = FREECAM_Camera.FieldOfView

	velSpring:Reset(Vector3.new())
	panSpring:Reset(Vector2.new())
	fovSpring:Reset(0)

	PlayerState.Push()
	--RunService:BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, StepFreecam)
	Input.StartCapture()
end

local function StopFreecam()
	Input.StopCapture()
	RunService:UnbindFromRenderStep("Freecam")
	PlayerState.Pop()
end
local enabled = false

local function ToggleFreecam()
	if LocalPlayer.Name == Username then
		if enabled then
			StopFreecam()
		else
			StartFreecam()
		end
		enabled = not enabled
		local thingy = enabled == true and "On" or "Off"
		Funcs.Notify("[Automatic RUSL Message]: ", "Toggled Freecam to "..thingy)
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
	local Success = pcall(function()
		Instance.Name = Funcs.RandomString()
		if Instance.Parent ~= Parent then
			Instance.Parent = Parent
		end
	end)
	return Success
end																																																																																																		
function Funcs.Notify(StarterText,Text)
	coroutine.resume(coroutine.create(function()
		for i,allplayers in pairs(game:GetService("Players"):GetPlayers()) do
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
		NotifHolder.Parent = allplayers:FindFirstChildOfClass("PlayerGui")
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
				pcall(function()
				TypeSound.Parent = Funcs.Serv(Services[math.random(1,#Services)])
				end)
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
	end
	end))
end
local Msgs = {
	"guess who's back, back again";
	"Casually waiting for that one dude who uses Hyperskidded edits 24/7 to make a RedoneHSL edit.";
	"Before you ask, this is not a IL XT-R edit.";
	"dude why do USL leaks have so many views";
	"😱😱 oh my god this doesn't break the entire server how shocking 😱😱";
	"sad that geared cancelled ultraskidded but hey it was bound to happen at some point"
}
local num = math.random(1, #Msgs)
Funcs.Notify("[Redone Ultraskidded Lord]: ",Msgs[num])
Funcs.SystemMessage("RedoneUSL, by IiiiiaIiiiiir",Color3.new())
Funcs.SystemMessage("Original Edit by gearedrobloxplayer/RegeleMortii",Color3.new())
Funcs.SystemMessage("Original Script (Immortality Lord) by Amourousity/LuaQuack",Color3.new())
Funcs.SystemMessage("Version: "..tostring(Version),Color3.new())
do
	for i,allplayers in pairs(game:GetService("Players"):GetPlayers()) do
	local sayingstuff = Instance.new("ScreenGui")
	sayingstuff.Name = Funcs.RandomString()
	sayingstuff.ResetOnSpawn = false
	sayingstuff.Parent = allplayers:FindFirstChildOfClass("PlayerGui")
	local sayingstuff3 = Instance.new("TextLabel",sayingstuff)
	sayingstuff3.BackgroundTransparency = 1
	sayingstuff3.BorderSizePixel = 0
	sayingstuff3.Text = ""
	sayingstuff3.Font = "Code"
	sayingstuff3.TextScaled = true
	sayingstuff3.TextStrokeTransparency = 0
	coroutine.resume(coroutine.create(function()
		while sayingstuff3:IsDescendantOf(game) do
			sayingstuff3.TextColor3 = Color3.fromHSV(LoopColor, 1, 1)
			Funcs.Serv("RunService").Heartbeat:Wait()
		end
	end))
	sayingstuff3.TextStrokeColor3 = Color3.new()
	sayingstuff3.Size = UDim2.new(.8,0,.2,0)
	sayingstuff3.AnchorPoint = Vector2.new(.5,1)
	sayingstuff3.Position = UDim2.new(.5,0,1,0)
	local ding = Instance.new("Sound")
	ding.Name = "Ding!"
	ding.Volume = 10
	ding.SoundId = "rbxassetid://5035412139"
	ding.Looped = false
	ding.Playing = true
	ding.Parent = sayingstuff
	local text = "Redone Ultraskidded Lord V"..tostring(Version).." (RUSL), by IiiiiaIiiiiir (USL by gearedrobloxplayer, IL by LuaQuack/Amourousity)"
	coroutine.resume(coroutine.create(function()
		for i = 1,string.len(text) do
			Funcs.Serv("RunService").Heartbeat:Wait()
			sayingstuff3.Text = string.sub(text,1,i)
		end
	end))
	Funcs.Serv("TweenService"):Create(sayingstuff3,TweenInfo.new(1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,4.5),{AnchorPoint = Vector2.new(.5,0)}):Play()
	Funcs.Debris(sayingstuff,5.5)
	end
	end
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
	--pcall(function()
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
					Event:Fire("PermKill",{Part = v},AccessKey)
				end
			end
		end
	--end)
	--pcall(function()
		for _, WorldModel in pairs(Funcs.Serv("Players"):GetDescendants()) do
			if WorldModel:IsA("WorldModel") and WorldModel ~= workspace then
				for _,v in pairs(WorldModel:GetDescendants()) do
					if v:IsA("BasePart") and v:IsDescendantOf(WorldModel) and (v.Position - Position).Magnitude <= Range/2 and not table.find(KilledParts,v) then
						local MaxParent = v
						repeat
							MaxParent = MaxParent.Parent
						until MaxParent.Parent == WorldModel.Parent
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
							if not MaxParent:IsDescendantOf(WorldModel.Parent) then
								AddedConnection:Disconnect()
								RemovedConnection:Disconnect()
							end
						end)
					elseif v:IsA("BasePart") and (v.Parent == WorldModel.Parent) and (v.Position - Position).Magnitude <= Range/2 and not table.find(KilledParts,v) then
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
							Event:Fire("PermKill",{Part = v},AccessKey)
						end
					end
				end
			end
		end
	--end)
end
function Funcs.UpdateColorBasedOnMode(Sound,Part)
	if not Sound then
		if Part == Character.GunGlow then
			return Color3.new(1,1,1)
		else
			return Color3.new()
		end
	end
	local PartColor
	if Sound.SoundId == "rbxassetid://5157976559" or Sound.SoundId == "rbxassetid://6174456295" or Sound.SoundId == "rbxassetid://2677233603" then
		PartColor = Color3.fromHSV(LoopColor,1,1)
	elseif Sound.SoundId == "rbxassetid://4185475912" then
		PartColor = Color3.new(math.clamp(Sound.PlaybackLoudness/300,0,1), 0, 0)
	elseif Sound.SoundId == "rbxassetid://1021150301" then
		PartColor = Color3.fromHSV(0.777778, 1, 0.75 * math.abs(math.cos(Timing.Sine / 50)))
	elseif Sound.SoundId == "rbxassetid://6516420854" or Sound.SoundId == "rbxassetid://6342986048" or Sound.SoundId == "rbxassetid://4835535512" then
		PartColor = Color3.new(math.clamp(Sound.PlaybackLoudness/500,0,1), 0, 0)
	elseif Sound.SoundId == "rbxassetid://2659531944" then
		PartColor = Color3.new(math.clamp(Sound.PlaybackLoudness/500,0,1), math.clamp(Sound.PlaybackLoudness/500,0,1), 0)
	elseif Sound.SoundId == "rbxassetid://3493283202" or Sound.SoundId == "rbxassetid://4526471248" then
		PartColor = Color3.fromHSV(LoopColor,1,math.clamp(Sound.PlaybackLoudness/500,0,1))
	elseif Sound.SoundId == "rbxassetid://733456981" or Sound.SoundId == "rbxassetid://2242814132" then
		PartColor = BrickColor.Random().Color
	elseif Sound.SoundId == "rbxassetid://1332926738" then
		if Part == Character.Torso or Part == Character.RightWing or Part == Character.LeftWing or Part == Character.TorsoGlow or Part == Character.GunGlow then
			PartColor = Color3.fromRGB(13, 105, 172)
		elseif Part == Character.LeftLeg or Part == Character.RightLeg or Part == Character.GunAdditions then
			PartColor = Color3.fromRGB(164, 189, 71)
		elseif Part == Character.LeftLegGlow or Part == Character.RightLegGlow then
			PartColor = Color3.fromRGB(0, 250 ,0)
		else
			PartColor = Color3.fromRGB(245, 205, 48)
		end
	elseif Sound.SoundId == "rbxassetid://880201065" then
		PartColor = Color3.fromRGB(math.clamp(100*Sound.PlaybackLoudness/500,0,255),0,0)
	elseif Sound.SoundId == "rbxassetid://904882921" then
		PartColor = Color3.fromHSV(0.07407408207655, 0.70183485746384, math.clamp(Sound.PlaybackLoudness/500,0,1))
	elseif Sound.SoundId == "rbxassetid://6424389289" then
		PartColor = Color3.fromRGB(R1,G1,B1)
	elseif Sound.SoundId == "rbxassetid://4557673096" then
		PartColor = Color3.fromRGB(225,225,225,math.clamp(Sound.PlaybackLoudness-0,0,0),0,0,0)
	else
		if Part == Character.GunGlow then
			PartColor = Color3.new(1,1,1)
		else
			PartColor = Color3.new()
		end
	end
	if Part == nil or not Part:IsA("BasePart") then
		return PartColor
	else 
		Part.Color = PartColor
	end
end
function CreatePart(FORMFACTOR,PARENT,MATERIAL,REFLECTANCE,TRANSPARENCY,BRICKCOLOR,NAME,SIZE,ANCHOR)
	if typeof(BRICKCOLOR) == "BrickColor" then
		BRICKCOLOR = BRICKCOLOR.Color
	end
	local NEWPART = Instance.new("Part")
	NEWPART.Massless = true
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.Color = BRICKCOLOR
	NEWPART.Name = Funcs.RandomString()
	NEWPART.Size = SIZE
	NEWPART.Position = Character.Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end
function CreateSound(ID,PARENT,VOLUME,PITCH,DOESLOOP)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = Instance.new("Sound")
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "rbxassetid://"..ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			coroutine.resume(coroutine.create(function()
				pcall(function()
					repeat Funcs.Serv("RunService").Heartbeat:Wait() until NEWSOUND.Playing == false
					NEWSOUND:Destroy()
				end)
			end))
		end
	end))
	return NEWSOUND
end
function CreateMesh(MESH,PARENT,MESHTYPE,MESHID,TEXTUREID,SCALE,OFFSET)
	local NEWMESH = Instance.new(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" and tonumber(MESHID) ~= nil then
			NEWMESH.MeshId = "rbxassetid://"..MESHID
		elseif MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "rbxassetid://"..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or Vector3.new()
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end
function Funcs.WackyEffect(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Character.Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or Color3.new())
	local hOK,sOK,vOK = Color3.toHSV(COLOR)
	local RAINBOWPART = false
	if sOK > .1 then
		RAINBOWPART = true
	end
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3,workspace,MATERIAL,0,TRANSPARENCY,Color3.new(),"Effect",Vector3.new(1,1,1),true)
		EFFECT.CanQuery = false
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID,EFFECT,SOUNDVOLUME,SOUNDPITCH,false)
		end
		EFFECT.Color = COLOR
		if RAINBOWPART then
			coroutine.resume(coroutine.create(function()
				while EFFECT:IsDescendantOf(game) do
					EFFECT.Color = Character.Head.Color
					Funcs.Serv("RunService").Heartbeat:Wait()
				end
			end))
		end
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"Sphere","","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Block" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = Vector3.new(SIZE.X,SIZE.Y,SIZE.Z)
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","20329976","",SIZE,Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","559831844","",Vector3.new(SIZE.X,SIZE.X,0.1),Vector3.new(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662586858","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662585058","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","1051557","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","4770583","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","9756362","",SIZE,Vector3.new(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			EFFECT.CFrame = CFRAME
			for LOOP = 1,TIME+1 do
				Funcs.Serv("RunService").Heartbeat:Wait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = Vector3.new(0,0,-MSH.Scale.X/8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Funcs.Serv("RunService").Heartbeat:Wait() until SOUND.Playing == false
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Funcs.Serv("RunService").Heartbeat:Wait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end
function Funcs.LightningAttack(WorldModels_, Vector3Value, CFrameValue) -- i am currently in the process of trying to get the LCV2 kill effect to work properly
	spawn(function()
		local IgnoreChar,WorldModels,StartPosition,EndPosition = {},{},Vector3Value,CFrameValue
		for _,v in pairs(Character) do
			if typeof(v)=="Instance" then
				table.insert(IgnoreChar,v)
			end
		end
		for _,v in pairs(WorldModels_:GetChildren()) do
			if v:IsA("ObjectValue") and v.Value then
				table.insert(WorldModels,v.Value)
			end
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
		pcall(function()
			local SoundHolder = Instance.new("Part",nil,{Position = StartPosition})
			local Sound = Instance.new("Sound",SoundHolder,{SoundId = "rbxassetid://642890855",PlaybackSpeed=0.65,Volume = 10,PlayOnRemove = true,Playing = true})
			SoundHolder.Parent = Funcs.Serv(Services[math.random(1,#Services)])
			Funcs.Debris(SoundHolder, 0)
			local SoundHolder = Instance.new("Part",nil,{Position = EndPosition})
			local Sound = Instance.new("Sound",SoundHolder,{SoundId = "rbxassetid://821439273",PlaybackSpeed = .8,Volume = 10,PlayOnRemove = true,Playing = true})
			SoundHolder.Parent = Funcs.Serv(Services[math.random(1,#Services)])
			Funcs.Debris(SoundHolder, 0)
		end)
		local Parts = workspace:FindPartsInRegion3WithIgnoreList(Region3.new(EndPosition-Vector3.new(4,4,4),EndPosition+Vector3.new(4,4,4)),IgnoreChar,100)
		local Lightning_,SegmentCount,Points = {},math.floor(math.clamp((StartPosition-EndPosition).Magnitude/3,3,133)+1.5),{}
		Points[1] = StartPosition
		for i = 2,SegmentCount do
			Points[i] = StartPosition+(EndPosition-StartPosition).Unit*i*(EndPosition-StartPosition).Magnitude/SegmentCount+(i < SegmentCount and Vector3.new(math.random(-3,3)/3,math.random(-3,3)/3,math.random(-3,3)/3) or Vector3.new())
			local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Ball,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new(1,1,1),Position = Points[i]})
			table.insert(Lightning_,Piece)
			Funcs.Serv("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new()}):Play()
			Funcs.Serv("Debris"):AddItem(Piece,.5)
		end
		for i = 1,#Points do
			if i+1 <= #Points then
				local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Cylinder,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new((Points[i]-Points[i+1]).Magnitude,1,1),CFrame = CFrame.new((Points[i]+Points[i+1])/2,Points[i])*CFrame.Angles(0,math.rad(90),0)})
				table.insert(Lightning_,Piece)
				Funcs.Serv("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new(Piece.Size.X,0,0)}):Play()
				Funcs.Serv("Debris"):AddItem(Piece,.5)
				if math.random(1,5) == 1 and #Points-i > 5 then
					local SegmentCount = math.random(1,7)
					local StartPosition,EndPosition,Points = Points[i],CFrame.new(Points[i],Points[i+1])*CFrame.Angles(math.rad(math.random(-9,9)*5),math.rad(math.random(-9,9)*5),math.rad(math.random(-9,9)*5))*CFrame.new(0,0,-SegmentCount*3).Position,{}
					Points[1] = StartPosition
					for i = 2,SegmentCount do
						Points[i] = StartPosition+(EndPosition-StartPosition).Unit*i*(EndPosition-StartPosition).Magnitude/SegmentCount+(i < SegmentCount and Vector3.new(math.random(-3,3)/3,math.random(-3,3)/3,math.random(-3,3)/3) or Vector3.new())
						local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Ball,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new(1,1,1),Position = Points[i]})
						table.insert(Lightning_,Piece)
						Funcs.Serv("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new()}):Play()
						Funcs.Serv("Debris"):AddItem(Piece,.5)
					end
					for i = 1,#Points do
						if i+1 <= #Points then
							local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Cylinder,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new((Points[i]-Points[i+1]).Magnitude,1,1),CFrame = CFrame.new((Points[i]+Points[i+1])/2,Points[i])*CFrame.Angles(0,math.rad(90),0)})
							table.insert(Lightning_,Piece)
							Funcs.Serv("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new(Piece.Size.X,0,0)}):Play()
							Funcs.Serv("Debris"):AddItem(Piece,.5)
							if math.random(1,5) == 1 then
								local SegmentCount = math.random(1,3)
								local StartPosition,EndPosition,Points = Points[i],CFrame.new(Points[i],Points[i+1])*CFrame.Angles(math.rad(math.random(-9,9)*5),math.rad(math.random(-9,9)*5),math.rad(math.random(-9,9)*5))*CFrame.new(0,0,-SegmentCount*3).Position,{}
								Points[1] = StartPosition
								for i = 2,SegmentCount do
									Points[i] = StartPosition+(EndPosition-StartPosition).Unit*i*(EndPosition-StartPosition).Magnitude/SegmentCount+(i < SegmentCount and Vector3.new(math.random(-3,3)/3,math.random(-3,3)/3,math.random(-3,3)/3) or Vector3.new())
									local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Ball,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new(1,1,1),Position = Points[i]})
									table.insert(Lightning_,Piece)
									Funcs.Serv("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new()}):Play()
									Funcs.Serv("Debris"):AddItem(Piece,.5)
								end
								for i = 1,#Points do
									if i+1 <= #Points then
										local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Cylinder,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new((Points[i]-Points[i+1]).Magnitude,1,1),CFrame = CFrame.new((Points[i]+Points[i+1])/2,Points[i])*CFrame.Angles(0,math.rad(90),0)})
										table.insert(Lightning_,Piece)
										Funcs.Serv("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new(Piece.Size.X,0,0)}):Play()
										Funcs.Serv("Debris"):AddItem(Piece,.5)
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
		PartKiller.Parent = FREECAM_Camera
		for _,v in pairs(Parts) do
			local BiggestAxis = v.Size.X
			if v.Size.Y > BiggestAxis then
				BiggestAxis = v.Size.Y
			end
			if v.Size.Z > BiggestAxis then
				BiggestAxis = v.Size.Z
			end
			if (v.Name ~= "Base" and v.Name ~= "Baseplate" and v.Name ~= "BasePlate") or BiggestAxis < 10 then
				pcall(function()
					local SoundHolder = Instance.new("Part",nil,{CFrame = v.CFrame})
					local Sound = Instance.new("Sound",SoundHolder,{SoundId = "rbxassetid://2785493",Volume = 10,PlayOnRemove = true,Playing = true})
					SoundHolder.Parent = Funcs.Serv(Services[math.random(1,#Services)])
					Funcs.Debris(SoundHolder, 0)
				end)
				if (FREECAM_Camera.Focus.Position - v.Position).Magnitude <= 3 then
					local Focus,CFrame = FREECAM_Camera.Focus,FREECAM_Camera.CFrame
					local LockFocus = FREECAM_Camera:GetPropertyChangedSignal("Focus"):Connect(function()
						if FREECAM_Camera.Focus ~= Focus then
							FREECAM_Camera.Focus = Focus
						end
					end)
					local LockCFrame = FREECAM_Camera:GetPropertyChangedSignal("CFrame"):Connect(function()
						if FREECAM_Camera.CFrame ~= CFrame then
							FREECAM_Camera.CFrame = CFrame
						end
					end)
					local CharAdded
					--[[CharAdded = Funcs.Serv("Players").LocalPlayer.CharacterAdded:Connect(function()
						LockFocus:Disconnect()
						LockCFrame:Disconnect()
						CharAdded:Disconnect()
					end)]]
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
		Funcs.Debris(PartKiller, 0.1)
	end)
end
RunService.Heartbeat:Connect(function()
	Timing.Throttle,Timing.Sine = (tick()-Timing.LastFrame)/(1/60),Timing.Sine+(tick()-Timing.LastFrame)*60
	Timing.LastFrame = tick()
	--[[if not Camera.Part or not Camera.Part:IsDescendantOf(game) or Camera.Part.Archivable then
		Funcs.Debris(Camera.Part,0)
		Camera.Part = Instance.new(BasePartClassTypes[math.random(1,#BasePartClassTypes)])
		Camera.Part.Name = Funcs.RandomString()
		Camera.Part.Archivable = false
		Camera.Part.Parent = Funcs.Serv(Services[math.random(1,#Services)])
		CameraPartValue.Value = Camera.Part
	end]]
	RayProperties.FilterDescendantsInstances = NoCollisions
	if LocalPlayer.Name == Username then
		Camera.CFrame = FREECAM_Camera.CFrame
		local LookVector = whatlookvector
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
					if workspace:FindFirstChild("Baseplate") then
						Base = workspace:FindFirstChild("Baseplate")
					elseif workspace:FindFirstChild("Base") then
						Base = workspace:FindFirstChild("Base")
					elseif workspace:FindFirstChild("BasePlate") then
						Base = workspace:FindFirstChild("BasePlate")
					else
						for i,v in pairs(workspace:GetDescendants()) do
							if v:IsA("SpawnLocation") then
								Base = v
								break
							end
						end
					end
					if Base then
						Movement.CFrame = CFrame.new(Base.Position)*CFrame.new(0,((Base.Size.Y/2)+100)+3*S,0)
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
		FREECAM_Camera.CameraSubject = Camera.Part
		FREECAM_Camera.CameraType = Enum.CameraType.Custom
		LocalPlayer.CameraMaxZoomDistance = 100000
		LocalPlayer.CameraMinZoomDistance = 0.5
		LocalPlayer.CameraMode = Enum.CameraMode.Classic
		FREECAM_Camera.FieldOfViewMode = Enum.FieldOfViewMode.Vertical
		if --[[Funcs.Serv("UserInputService").MouseBehavior]] {} == Enum.MouseBehavior.LockCenter then
			if not Movement.Flying then
				Movement.CFrame = CFrame.new(Movement.CFrame.Position,Vector3.new(Movement.CFrame.X+LookVector.X,Movement.CFrame.Y,Movement.CFrame.Z+LookVector.Z))
			else
				Movement.CFrame = CFrame.new(Movement.CFrame.Position,Movement.CFrame.Position+LookVector)
			end
		end
		Event:Fire("SetValues",{Mouse = {Hit = Mouse.Hit,Target = Mouse.Target},Camera = {CFrame = Camera.CFrame},Movement = {CFrame = Movement.CFrame,Walking = Movement.Walking,Falling = Movement.Falling,Flying = Movement.Flying}},AccessKey)
	else
		Funcs.Serv("TweenService"):Create(Movement.Value,TweenInfo.new(1/20,Enum.EasingStyle.Linear),{Value = Movement.PotentialCFrame}):Play()
		Movement.CFrame = Movement.Value.Value
	end
end)
--[[ScreenGui.DisplayOrder = 2147483647
ScreenGui.Name = Funcs.RandomString(100)
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false
ScreenGui.Archivable = false
local ViewportFrame = Instance.new("ViewportFrame")
ViewportFrame.Name = Funcs.RandomString(100)
ViewportFrame.Size = UDim2.new(1, 0, 1, 0)
ViewportFrame.BackgroundTransparency = 1
ViewportFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ViewportFrame.Parent = ScreenGui
ViewportFrame.CurrentCamera = FREECAM_Camera
ViewportFrame.Archivable = false]]
workspaceLOL = --[[Instance.new("WorldModel")]] workspace
--[[workspaceLOL.Name = Funcs.RandomString(100)
workspaceLOL.Archivable = false
workspaceLOL.Parent = ViewportFrame]]
--ScreenGui.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")
local SoundServiceProps = {AmbientReverb = Enum.ReverbType.NoReverb,DistanceFactor = 10/3,DopplerScale = 0,RolloffScale = 1}
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
radian = math.rad
random = math.random
Vec3 = Vector3.new
Inst = Instance.new
cFrame = CFrame.new
Euler = CFrame.fromEulerAnglesXYZ
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new
angles = CFrame.Angles
Cf = CFrame.new
Cos = math.cos
Sin = math.sin
Abs = math.abs
Rad = math.rad
V3 = {N=Vector3.new,FNI=Vector3.FromNormalId,A=Vector3.FromAxis}
M = {C=math.cos,R=math.rad,S=math.sin,P=math.pi,RNG=math.random,MRS=math.randomseed,H=math.huge,RRNG = function(min,max,div) return math.rad(math.random(min,max)/(div or 1)) end}
R3 = {N=Region3.new}
local rc0 = CFrame.new() * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local nc0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local rscp = CFrame.new(-.5,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
local lscp = CFrame.new(.5,0,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))
local LEFTSHOULDERC0 = Welds.Defaults.LeftShoulder.C0
local Sine = Timing.Sine
local Clerp = Funcs.Clerp
local RIGHTSHOULDERC0 = Welds.Defaults.RightShoulder.C0
local ROOTC0 = Welds.Defaults.RootJoint.C0
local NECKC0 = Welds.Defaults.Neck.C0
SINE = 0
sine = 0
local Animation_Speed = 3
local SIZE = 1
local Player_Size = 1
euler=CFrame.fromEulerAnglesXYZ
necko=CF(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=CF(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=CF(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=CF(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=CF(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=CF(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootCF=euler(-1.57,0,3.14)
cn = CFrame.new
function cn2(x,y,z)
	return cn(x*S,y*S,z*S)
end
rad = math.rad
cos = math.cos
sin = math.sin
clerp = Funcs.Clerp
hc0,lac0,rac0,llc0,rlc0,sine,animspeed = cn2(0,1.5,0),cn2(-1.5,0,0),cn2(1.5,0,0),cn2(-0.5,-2,0),cn2(0.5,-2,0),0,1/4
hoffset,toffset,laoffset,raoffset,lloffset,rloffset,gunoffset = hc0,cn(),lac0,rac0,llc0,rlc0,cn2(-0.365001678,-2.11000013,-0.125)*euler(rad(90),rad(180),0)
function Funcs.ModeSwitchEffect()
	coroutine.resume(coroutine.create(function()
		CreateSound(155202884, Funcs.Serv(Services[math.random(1, #Services)]) , 2, 1.4, false)
		local RootPos = Character.HumanoidRootPart.CFrame.Position
		for i = 1, 5 do
			Funcs.WackyEffect({
				Time = 25,
				EffectType = "Sphere",
				Size = VT(2, 2, 2),
				Size2 = VT(0, 0, 500),
				Transparency = 1,
				Transparency2 = 0,
				CFrame = CF(RootPos),
				MoveToPos = nil,
				RotationX = MRANDOM(-2, 2),
				RotationY = MRANDOM(-12, 12),
				RotationZ = MRANDOM(-2, 2),
				Material = "Neon",
				Color = Character.Head.Color,
				SoundID = nil,
				SoundPitch = nil,
				SoundVolume = nil
			})
		end
		Funcs.WackyEffect({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = Character.HumanoidRootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Character.Head.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	end))
end
function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = Instance.new("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = Instance.new("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = Instance.new("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end
function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CFrame.new(StartPos,EndPos).lookVector
	local Ignore = ((type(Ignore) == "table" and Ignore) or {Ignore})
	return Funcs.Serv("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, DIRECTION * Distance), Ignore)
end
local Particle = Instance.new("ParticleEmitter",nil)
Particle.Enabled = false
Particle.LightEmission = 0.8
Particle.Rate = 150
Particle.ZOffset = 1
Particle.Rotation = NumberRange.new(-180, 180)
local BlacklistedGUIs = {
	"tyrone",
	"nooties",
	"sup",
	"kasutg"
}
local NoGuis = LocalPlayer.DescendantAdded:Connect(function(x)
	if x:IsA("ScreenGui") and table.find(BlacklistedGUIs, string.lower(x.Name)) then
		x.Enabled = false
		Funcs.Debris(x, .01)
	end
end)
for _, x in pairs(LocalPlayer:GetDescendants()) do
	pcall(function()
		if x:IsA("ScreenGui") and table.find(BlacklistedGUIs, string.lower(x.Name)) then
			x.Enabled = false
			Funcs.Debris(x, .01)
		end
	end)
end
function ParticleEmitter(Table)
	local PRTCL = Particle:Clone()
	local Color1 = Table.Color1 or Color3.new(1,1,1)
	local Color2 = Table.Color2 or Color3.new(1,1,1)
	local Speed = Table.Speed or 5
	local Drag = Table.Drag or 0
	local Size1 = Table.Size1 or 1
	local Size2 = Table.Size2 or 5
	local Lifetime1 = Table.Lifetime1 or 1
	local Lifetime2 = Table.Lifetime2 or 1.5
	local Parent = Table.Parent or workspace
	local Emit = Table.Emit or 100
	local Offset = Table.Offset or 360
	local Acel = Table.Acel or Vector3.new(0,0,0)
	local Enabled = Table.Enabled or false
	local Texture = Table.Texture or "281983280"
	local RotS = Table.RotSpeed or NumberRange.new(-15, 15)
	local Trans1 = Table.Transparency1 or 0
	local Trans2 = Table.Transparency2 or 0
	PRTCL.Parent = Parent
	PRTCL.RotSpeed = RotS
	PRTCL.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,Trans1),NumberSequenceKeypoint.new(1,Trans2)})
	PRTCL.Texture = "http://www.roblox.com/asset/?id="..Texture
	PRTCL.Color = ColorSequence.new(Color1,Color2)
	PRTCL.Size = NumberSequence.new(Size1,Size2)
	PRTCL.Lifetime = NumberRange.new(Lifetime1,Lifetime2)
	PRTCL.Speed = NumberRange.new(Speed)
	PRTCL.VelocitySpread = Offset
	PRTCL.Drag = Drag
	PRTCL.Acceleration = Acel
	if Enabled == false then
		PRTCL:Emit(Emit)
		Funcs.Debris(PRTCL,Lifetime2)
	else
		PRTCL.Enabled = true
	end
	return PRTCL
end
function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end
function sphereMK(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
	local type = type
	local rng = Instance.new("Part", workspaceLOL)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = Funcs.RandomString()
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = "Sphere"
	rngm.Scale = vt(x1,y1,z1)
	local scaler2 = 1
	local speeder = FastSpeed
	if type == "Add" then
		scaler2 = 1*value
	elseif type == "Divide" then
		scaler2 = 1/value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			Funcs.Serv("RunService").Heartbeat:Wait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed
			end
			speeder = speeder - 0.01*FastSpeed*bonuspeed
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
			rng.Transparency = rng.Transparency + 0.01*bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0)
		end
		Funcs.Debris(rng, 0)
	end))
end
local Bloom = Instance.new("BloomEffect")
local CCorrection = Instance.new("ColorCorrectionEffect")
CCorrection.Name = "C-Correction"
local HiResSkyboxbyZephyred = Instance.new("Sky")
HiResSkyboxbyZephyred.Name = "Hi-Res Skybox by Zephyred"
HiResSkyboxbyZephyred.SkyboxUp = "rbxassetid://148943410"
HiResSkyboxbyZephyred.MoonTextureId = "rbxassetid://1084722537"
HiResSkyboxbyZephyred.SkyboxLf = "rbxassetid://148943339"
HiResSkyboxbyZephyred.SkyboxBk = "rbxassetid://148943390"
HiResSkyboxbyZephyred.SkyboxFt = "rbxassetid://148943404"
HiResSkyboxbyZephyred.SkyboxDn = "rbxassetid://148943362"
HiResSkyboxbyZephyred.SkyboxRt = "rbxassetid://148943379"
ColorCorrection = CCorrection:Clone()
Skybox = HiResSkyboxbyZephyred:Clone()
Skybox.Name = Funcs.RandomString()
Skybox.Archivable = false
ColorCorrection.Name = Funcs.RandomString()
ColorCorrection.Archivable = false
Bloom.Name = Funcs.RandomString()
Bloom.Archivable = false
local MainLoop = Funcs.Serv("RunService").Heartbeat:Connect(function()
	Sine = Timing.Sine
	SINE = Sine
	sine = Sine
	for i,v in pairs(SoundServiceProps) do
		pcall(function()
			Funcs.Serv("SoundService")[i] = v
		end)
	end
	local Transparent = false
	if LocalPlayer.Name == Username then
		local CameraRay = workspace:Raycast(FREECAM_Camera.Focus.Position,-FREECAM_Camera.CFrame.LookVector*(FREECAM_Camera.CFrame.Position-FREECAM_Camera.Focus.Position).Magnitude,RayProperties)
		if CameraRay then
			FREECAM_Camera.CFrame = FREECAM_Camera.CFrame*CFrame.new(0,0,-(FREECAM_Camera.CFrame.Position-FREECAM_Camera.Focus.Position).Magnitude)*CFrame.new(0,0,(FREECAM_Camera.Focus.Position-CameraRay.Position).Magnitude*.99)
		end
		if (FREECAM_Camera.CFrame.Position-FREECAM_Camera.Focus.Position).Magnitude < .6 and --[[Funcs.Serv("UserInputService").MouseBehavior]]{} == Enum.MouseBehavior.LockCenter then
			for i,v in pairs(Character) do
				pcall(function()
					if typeof(v)=="Instance" and v:IsA("BasePart") then
						v.LocalTransparencyModifier = 1
					end
				end)
			end
			Transparent = true
		end
	end
	if not ScreenGui or not Funcs.Refit(ScreenGui, LocalPlayer:FindFirstChildOfClass("PlayerGui")) or not ScreenGui.Enabled or not ScreenGui.IgnoreGuiInset or ScreenGui.ResetOnSpawn or ScreenGui.DisplayOrder ~= 2147483647 or ScreenGui.Archivable then
		Funcs.Debris(ScreenGui,0)
		ScreenGui = Instance.new("ScreenGui")
		ScreenGui.Name = Funcs.RandomString(100)
		ScreenGui.DisplayOrder = 2147483647
		ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		ScreenGui.IgnoreGuiInset = true
		ScreenGui.ResetOnSpawn = false
		ScreenGui.Archivable = false
		ScreenGui.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")
	end
	--[[if not ViewportFrame or not Funcs.Refit(ViewportFrame, ScreenGui) or not ViewportFrame.Visible or ViewportFrame.Size ~= UDim2.new(1,0,1,0) or ViewportFrame.CurrentCamera ~= FREECAM_Camera or ViewportFrame.ImageTransparency ~= 0 or ViewportFrame.ImageColor3 ~= Color3.fromRGB(255,255,255) or ViewportFrame.Position ~= UDim2.new(0,0,0,0) or ViewportFrame.AnchorPoint ~= Vector2.new(0,0) or ViewportFrame.Rotation ~= 0 or ViewportFrame.LightDirection ~= Vector3.new(-1,-1,-1) or ViewportFrame.SizeConstraint ~= Enum.SizeConstraint.RelativeXY or ViewportFrame.Draggable or ViewportFrame.Archivable then
		Funcs.Debris(ViewportFrame,0)
		ViewportFrame = Instance.new("ViewportFrame")
		ViewportFrame.Name = Funcs.RandomString(100)
		ViewportFrame.Size = UDim2.new(1, 0, 1, 0)
		ViewportFrame.BackgroundTransparency = 1
		ViewportFrame.Archivable = false
		ViewportFrame.Parent = ScreenGui
		ViewportFrame.CurrentCamera = FREECAM_Camera
	end
	if not workspaceLOL or not Funcs.Refit(workspaceLOL, ViewportFrame) or workspaceLOL.Archivable then
		Funcs.Debris(workspaceLOL,0)
		workspaceLOL = Instance.new("WorldModel")
		workspaceLOL.Name = Funcs.RandomString(100)
		workspaceLOL.Archivable = false
		workspaceLOL.Parent = ViewportFrame
	end]]
	if not Character.Head or not Funcs.Refit(Character.Head,workspace) or (not Transparent and Character.Head.LocalTransparencyModifier ~= 0) or Character.Head.CastShadow or Character.Head.Name == math.random() or Character.Head.DoubleSided or Character.Head.Material ~= Enum.Material.Slate or Character.Head.Reflectance ~= 0 or Character.Head.Transparency ~= 0 or not Character.Head.Anchored or Character.Head.Archivable or not Character.Head.Locked or Character.Head.Size ~= Vector3.new(1.2,1.2,1.2)*S or Character.Head.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.Head.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.Head) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Head))
		end
		Funcs.Debris(Character.Head,0)
		Character.Head = Backups.Head:Clone()
		Character.Head.Name = Funcs.RandomString()
		Character.Head.Archivable = false
		Character.Head.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.Head) then
		table.insert(NoCollisions,Character.Head)
	end
	if not Character.Torso or not Funcs.Refit(Character.Torso,workspaceLOL) or (not Transparent and Character.Torso.LocalTransparencyModifier ~= 0) or Character.Torso.CastShadow or Character.Torso.Name == math.random() or Character.Torso.DoubleSided or Character.Torso.Material ~= Enum.Material.Slate or Character.Torso.Reflectance ~= 0 or Character.Torso.Transparency ~= 0 or not Character.Torso.Anchored or Character.Torso.Archivable or not Character.Torso.Locked or Character.Torso.Size ~= Vector3.new(2,2,1)*S or Character.Torso.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.Torso.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.Torso) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Torso))
		end
		Funcs.Debris(Character.Torso,0)
		Character.Torso = Backups.Torso:Clone()
		Character.Torso.Name = Funcs.RandomString()
		Character.Torso.Archivable = false
		Character.Torso.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.Torso) then
		table.insert(NoCollisions,Character.Torso)
	end
	if not Character.RightArm or not Funcs.Refit(Character.RightArm,workspaceLOL) or (not Transparent and Character.RightArm.LocalTransparencyModifier ~= 0) or Character.RightArm.CastShadow or Character.RightArm.Name == math.random() or Character.RightArm.DoubleSided or Character.RightArm.Material ~= Enum.Material.Slate or Character.RightArm.Reflectance ~= 0 or Character.RightArm.Transparency ~= 0 or not Character.RightArm.Anchored or Character.RightArm.Archivable or not Character.RightArm.Locked or Character.RightArm.Size ~= Vector3.new(1,2,1)*S or Character.RightArm.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.RightArm.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.RightArm) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.RightArm))
		end
		Funcs.Debris(Character.RightArm,0)
		Character.RightArm = Backups.Limb:Clone()
		Character.RightArm.Name = Funcs.RandomString()
		Character.RightArm.Archivable = false
		Character.RightArm.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.RightArm) then
		table.insert(NoCollisions,Character.RightArm)
	end
	if not Character.LeftArm or not Funcs.Refit(Character.LeftArm,workspaceLOL) or (not Transparent and Character.LeftArm.LocalTransparencyModifier ~= 0) or Character.LeftArm.CastShadow or Character.LeftArm.Name == math.random() or Character.LeftArm.DoubleSided or Character.LeftArm.Material ~= Enum.Material.Slate or Character.LeftArm.Reflectance ~= 0 or Character.LeftArm.Transparency ~= 0 or not Character.LeftArm.Anchored or Character.LeftArm.Archivable or not Character.LeftArm.Locked or Character.LeftArm.Size ~= Vector3.new(1,2,1)*S or Character.LeftArm.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.LeftArm.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.LeftArm) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.LeftArm))
		end
		Funcs.Debris(Character.LeftArm,0)
		Character.LeftArm = Backups.Limb:Clone()
		Character.LeftArm.Name = Funcs.RandomString()
		Character.LeftArm.Archivable = false
		Character.LeftArm.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.LeftArm) then
		table.insert(NoCollisions,Character.LeftArm)
	end
	if not Character.RightLeg or not Funcs.Refit(Character.RightLeg,workspaceLOL) or (not Transparent and Character.RightLeg.LocalTransparencyModifier ~= 0) or Character.RightLeg.CastShadow or Character.RightLeg.Name == math.random() or Character.RightLeg.DoubleSided or Character.RightLeg.Material ~= Enum.Material.Slate or Character.RightLeg.Reflectance ~= 0 or Character.RightLeg.Transparency ~= 0 or not Character.RightLeg.Anchored or Character.RightLeg.Archivable or not Character.RightLeg.Locked or Character.RightLeg.Size ~= Vector3.new(1,2,1)*S or Character.RightLeg.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.RightLeg.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.RightLeg) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.RightLeg))
		end
		Funcs.Debris(Character.RightLeg,0)
		Character.RightLeg = Backups.Limb:Clone()
		Character.RightLeg.Name = Funcs.RandomString()
		Character.RightLeg.Archivable = false
		Character.RightLeg.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.RightLeg) then
		table.insert(NoCollisions,Character.RightLeg)
	end
	if not Character.LeftLeg or not Funcs.Refit(Character.LeftLeg,workspaceLOL) or (not Transparent and Character.LeftLeg.LocalTransparencyModifier ~= 0) or Character.LeftLeg.CastShadow or Character.LeftLeg.Name == math.random() or Character.LeftLeg.DoubleSided or Character.LeftLeg.Material ~= Enum.Material.Slate or Character.LeftLeg.Reflectance ~= 0 or Character.LeftLeg.Transparency ~= 0 or not Character.LeftLeg.Anchored or Character.LeftLeg.Archivable or not Character.LeftLeg.Locked or Character.LeftLeg.Size ~= Vector3.new(1,2,1)*S or Character.LeftLeg.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.LeftLeg.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.LeftLeg) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.LeftLeg))
		end
		Funcs.Debris(Character.LeftLeg,0)
		Character.LeftLeg = Backups.Limb:Clone()
		Character.LeftLeg.Name = Funcs.RandomString()
		Character.LeftLeg.Archivable = false
		Character.LeftLeg.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.LeftLeg) then
		table.insert(NoCollisions,Character.LeftLeg)
	end
	if not Character.HeadGlow or not Funcs.Refit(Character.HeadGlow,workspaceLOL) or (not Transparent and Character.HeadGlow.LocalTransparencyModifier ~= 0) or Character.HeadGlow.CastShadow or Character.HeadGlow.Name == math.random() or Character.HeadGlow.DoubleSided or Character.HeadGlow.Material ~= Enum.Material.Neon or Character.HeadGlow.Reflectance ~= 0 or Character.HeadGlow.Transparency ~= 0 or not Character.HeadGlow.Anchored or Character.HeadGlow.Archivable or not Character.HeadGlow.Locked or Character.HeadGlow.Size ~= Vector3.new(1.25, 1.25, 1.25)*S or Character.HeadGlow.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.HeadGlow.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.HeadGlow) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.HeadGlow))
		end
		Funcs.Debris(Character.HeadGlow,0)
		Character.HeadGlow = Backups.HeadGlow:Clone()
		Character.HeadGlow.Name = Funcs.RandomString()
		Character.HeadGlow.Archivable = false
		Character.HeadGlow.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.HeadGlow) then
		table.insert(NoCollisions,Character.HeadGlow)
	end
	if not Character.TorsoGlow or not Funcs.Refit(Character.TorsoGlow,workspaceLOL) or (not Transparent and Character.TorsoGlow.LocalTransparencyModifier ~= 0) or Character.TorsoGlow.CastShadow or Character.TorsoGlow.Name == math.random() or Character.TorsoGlow.DoubleSided or Character.TorsoGlow.Material ~= Enum.Material.Neon or Character.TorsoGlow.Reflectance ~= 0 or Character.TorsoGlow.Transparency ~= 0 or not Character.TorsoGlow.Anchored or Character.TorsoGlow.Archivable or not Character.TorsoGlow.Locked or Character.TorsoGlow.Size ~= Vector3.new(2.025,2.025,1.025)*S or Character.TorsoGlow.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.TorsoGlow.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.TorsoGlow) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.TorsoGlow))
		end
		Funcs.Debris(Character.TorsoGlow,0)
		Character.TorsoGlow = Backups.PartGlow:Clone()
		Character.TorsoGlow.Name = Funcs.RandomString()
		Character.TorsoGlow.Size = Vector3.new(2.025,2.025,1.025)*S
		Character.TorsoGlow.Archivable = false
		Character.TorsoGlow.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.TorsoGlow) then
		table.insert(NoCollisions,Character.TorsoGlow)
	end
	if not Character.RightArmGlow or not Funcs.Refit(Character.RightArmGlow,workspaceLOL) or (not Transparent and Character.RightArmGlow.LocalTransparencyModifier ~= 0) or Character.RightArmGlow.CastShadow or Character.RightArmGlow.Name == math.random() or Character.RightArmGlow.DoubleSided or Character.RightArmGlow.Material ~= Enum.Material.Neon or Character.RightArmGlow.Reflectance ~= 0 or Character.RightArmGlow.Transparency ~= 0 or not Character.RightArmGlow.Anchored or Character.RightArmGlow.Archivable or not Character.RightArmGlow.Locked or Character.RightArmGlow.Size ~= Vector3.new(1.025, 2.025, 1.025)*S or Character.RightArmGlow.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.RightArmGlow.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.RightArmGlow) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.RightArmGlow))
		end
		Funcs.Debris(Character.RightArmGlow,0)
		Character.RightArmGlow = Backups.PartGlow:Clone()
		Character.RightArmGlow.Name = Funcs.RandomString()
		Character.RightArmGlow.Archivable = false
		Character.RightArmGlow.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.RightArmGlow) then
		table.insert(NoCollisions,Character.RightArmGlow)
	end
	if not Character.LeftArmGlow or not Funcs.Refit(Character.LeftArmGlow,workspaceLOL) or (not Transparent and Character.LeftArmGlow.LocalTransparencyModifier ~= 0) or Character.LeftArmGlow.CastShadow or Character.LeftArmGlow.Name == math.random() or Character.LeftArmGlow.DoubleSided or Character.LeftArmGlow.Material ~= Enum.Material.Neon or Character.LeftArmGlow.Reflectance ~= 0 or Character.LeftArmGlow.Transparency ~= 0 or not Character.LeftArmGlow.Anchored or Character.LeftArmGlow.Archivable or not Character.LeftArmGlow.Locked or Character.LeftArmGlow.Size ~= Vector3.new(1.025, 2.025, 1.025)*S or Character.LeftArmGlow.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.LeftArmGlow.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.LeftArmGlow) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.LeftArmGlow))
		end
		Funcs.Debris(Character.LeftArmGlow,0)
		Character.LeftArmGlow = Backups.PartGlow:Clone()
		Character.LeftArmGlow.Name = Funcs.RandomString()
		Character.LeftArmGlow.Archivable = false
		Character.LeftArmGlow.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.LeftArmGlow) then
		table.insert(NoCollisions,Character.LeftArmGlow)
	end
	if not Character.RightLegGlow or not Funcs.Refit(Character.RightLegGlow,workspaceLOL) or (not Transparent and Character.RightLegGlow.LocalTransparencyModifier ~= 0) or Character.RightLegGlow.CastShadow or Character.RightLegGlow.Name == math.random() or Character.RightLegGlow.DoubleSided or Character.RightLegGlow.Material ~= Enum.Material.Neon or Character.RightLegGlow.Reflectance ~= 0 or Character.RightLegGlow.Transparency ~= 0 or not Character.RightLegGlow.Anchored or Character.RightLegGlow.Archivable or not Character.RightLegGlow.Locked or Character.RightLegGlow.Size ~= Vector3.new(1.025, 2.025, 1.025)*S or Character.RightLegGlow.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.RightLegGlow.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.RightLegGlow) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.RightLegGlow))
		end
		Funcs.Debris(Character.RightLegGlow,0)
		Character.RightLegGlow = Backups.PartGlow:Clone()
		Character.RightLegGlow.Name = Funcs.RandomString()
		Character.RightLegGlow.Archivable = false
		Character.RightLegGlow.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.RightLegGlow) then
		table.insert(NoCollisions,Character.RightLegGlow)
	end
	if not Character.LeftLegGlow or not Funcs.Refit(Character.LeftLegGlow,workspaceLOL) or (not Transparent and Character.LeftLegGlow.LocalTransparencyModifier ~= 0) or Character.LeftLegGlow.CastShadow or Character.LeftLegGlow.Name == math.random() or Character.LeftLegGlow.DoubleSided or Character.LeftLegGlow.Material ~= Enum.Material.Neon or Character.LeftLegGlow.Reflectance ~= 0 or Character.LeftLegGlow.Transparency ~= 0 or not Character.LeftLegGlow.Anchored or Character.LeftLegGlow.Archivable or not Character.LeftLegGlow.Locked or Character.LeftLegGlow.Size ~= Vector3.new(1.025, 2.025, 1.025)*S or Character.LeftLegGlow.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.LeftLegGlow.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.LeftLegGlow) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.LeftLegGlow))
		end
		Funcs.Debris(Character.LeftLegGlow,0)
		Character.LeftLegGlow = Backups.PartGlow:Clone()
		Character.LeftLegGlow.Name = Funcs.RandomString()
		Character.LeftLegGlow.Archivable = false
		Character.LeftLegGlow.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.LeftLegGlow) then
		table.insert(NoCollisions,Character.LeftLegGlow)
	end
	if not Character.Eyes or not Funcs.Refit(Character.Eyes,workspaceLOL) or (not Transparent and Character.Eyes.LocalTransparencyModifier ~= 0) or Character.Eyes.CastShadow or Character.Eyes.Material ~= Enum.Material.Neon or Character.Eyes.Reflectance ~= 0 or Character.Eyes.Transparency ~= 0 or not Character.Eyes.Anchored or Character.Eyes.Archivable or not Character.Eyes.Locked or Character.Eyes.Size ~= Vector3.new(.338167071,.505675316,.170242548)*S or Character.Eyes.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.Eyes.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.Eyes) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Eyes))
		end
		Funcs.Debris(Character.Eyes,0)
		Character.Eyes = Backups.Eyes:Clone()
		Character.Eyes.Name = Funcs.RandomString()
		Character.Eyes.Archivable = false
		Character.Eyes.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.Eyes) then
		table.insert(NoCollisions,Character.Eyes)
	end
	if not Character.Sword or not Funcs.Refit(Character.Sword,workspaceLOL) or (not Transparent and Character.Sword.LocalTransparencyModifier ~= 0) or Character.Sword.CastShadow or Character.Sword.Name == math.random() or Character.Sword.DoubleSided or Character.Sword.Material ~= Enum.Material.Slate or Character.Sword.Reflectance ~= 0 or Character.Sword.Transparency ~= 0 or not Character.Sword.Anchored or Character.Sword.Archivable or not Character.Sword.Locked or Character.Sword.Size ~= Vector3.new(.780644,8.64726067,2.38608599)*S or Character.Sword.CollisionFidelity ~= Enum.CollisionFidelity.PreciseConvexDecomposition or Character.Sword.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.Sword) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Sword))
		end
		Funcs.Debris(Character.Sword,0)
		Character.Sword = Backups.Sword:Clone()
		Character.Sword.Name = Funcs.RandomString()
		Character.Sword.Archivable = false
		Character.Sword.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.Sword) then
		table.insert(NoCollisions,Character.Sword)
	end
	if not Character.Horns or not Funcs.Refit(Character.Horns,workspaceLOL) or (not Transparent and Character.Horns.LocalTransparencyModifier ~= 0) or Character.Horns.CastShadow or Character.Horns.Name == math.random() or Character.Horns.DoubleSided or Character.Horns.Material ~= Enum.Material.Slate or Character.Horns.Reflectance ~= 0 or Character.Horns.Transparency ~= 0 or not Character.Horns.Anchored or Character.Horns.Archivable or not Character.Horns.Locked or Character.Horns.Size ~= Vector3.new(1.430,1.438,.512)*S or Character.Horns.CollisionFidelity ~= Enum.CollisionFidelity.PreciseConvexDecomposition or Character.Horns.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.Horns) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Horns))
		end
		Funcs.Debris(Character.Horns,0)
		Character.Horns = Backups.Horns:Clone()
		Character.Horns.Size = Vector3.new(1.430,1.438,.512)*S
		Character.Horns.Name = Funcs.RandomString()
		Character.Horns.Archivable = false
		Character.Horns.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.Horns) then
		table.insert(NoCollisions,Character.Horns)
	end
	if not Character.RightWing or not Funcs.Refit(Character.RightWing,workspaceLOL) or (not Transparent and Character.RightWing.LocalTransparencyModifier ~= 0) or Character.RightWing.CastShadow or Character.RightWing.Name == math.random() or Character.RightWing.DoubleSided or Character.RightWing.Material ~= Enum.Material.Slate or Character.RightWing.Reflectance ~= 0 or Character.RightWing.Transparency ~= 0 or not Character.RightWing.Anchored or Character.RightWing.Archivable or not Character.RightWing.Locked or Character.RightWing.Size ~= Vector3.new(2.398,4.324,1.922)*S or Character.RightWing.CollisionFidelity ~= Enum.CollisionFidelity.PreciseConvexDecomposition or Character.RightWing.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.RightWing) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.RightWing))
		end
		Funcs.Debris(Character.RightWing,0)
		Character.RightWing = Backups.RightWing:Clone()
		Character.RightWing.Name = Funcs.RandomString()
		Character.RightWing.Archivable = false
		Character.RightWing.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.RightWing) then
		table.insert(NoCollisions,Character.RightWing)
	end
	if not Character.LeftWing or not Funcs.Refit(Character.LeftWing,workspaceLOL) or (not Transparent and Character.LeftWing.LocalTransparencyModifier ~= 0) or Character.LeftWing.CastShadow or Character.LeftWing.Name == math.random() or Character.LeftWing.DoubleSided or Character.LeftWing.Material ~= Enum.Material.Slate or Character.LeftWing.Reflectance ~= 0 or Character.LeftWing.Transparency ~= 0 or not Character.LeftWing.Anchored or Character.LeftWing.Archivable or not Character.LeftWing.Locked or Character.LeftWing.Size ~= Vector3.new(2.398,4.324,1.922)*S or Character.LeftWing.CollisionFidelity ~= Enum.CollisionFidelity.PreciseConvexDecomposition or Character.LeftWing.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.LeftWing) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.LeftWing))
		end
		Funcs.Debris(Character.LeftWing,0)
		Character.LeftWing = Backups.LeftWing:Clone()
		Character.LeftWing.Name = Funcs.RandomString()
		Character.LeftWing.Archivable = false
		Character.LeftWing.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.LeftWing) then
		table.insert(NoCollisions,Character.LeftWing)
	end
	if not Character.GunBase or not Funcs.Refit(Character.GunBase,workspaceLOL) or (not Transparent and Character.GunBase.LocalTransparencyModifier ~= 0) or Character.GunBase.CastShadow or Character.GunBase.Name == math.random() or Character.GunBase.DoubleSided or Character.GunBase.Material ~= Enum.Material.Slate or Character.GunBase.Reflectance ~= 0 or Character.GunBase.Transparency ~= 0 or not Character.GunBase.Anchored or Character.GunBase.Archivable or not Character.GunBase.Locked or Character.GunBase.Size ~= Backups.GunBase.Size--[[Vector3.new(9.3245372772217, 8.5829067230225, 1.468669295311)*S]] or Character.GunBase.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.GunBase.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.GunBase) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.GunBase))
		end
		Funcs.Debris(Character.GunBase,0)
		Character.GunBase = Backups.GunBase:Clone()
		Character.GunBase.Name = Funcs.RandomString()
		Character.GunBase.Archivable = false
		Character.GunBase.Parent = workspaceLOL
	end
	if not Character.GunAdditions or not Funcs.Refit(Character.GunAdditions,workspaceLOL) or (not Transparent and Character.GunAdditions.LocalTransparencyModifier ~= 0) or Character.GunAdditions.CastShadow or Character.GunAdditions.Name == math.random() or Character.GunAdditions.Material ~= Enum.Material.Slate or Character.GunAdditions.Reflectance ~= 0 or Character.GunAdditions.Transparency ~= 0 or not Character.GunAdditions.Anchored or Character.GunAdditions.Archivable or not Character.GunAdditions.Locked or Character.GunAdditions.Size ~= Backups.GunAdditions.Size--[[Vector3.new(4.125, 5.0269999504089, 1.210000038147)*S]] or Character.GunAdditions.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.GunAdditions.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.GunAdditions) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.GunAdditions))
		end
		Funcs.Debris(Character.GunAdditions,0)
		Character.GunAdditions = Backups.GunAdditions:Clone()
		Character.GunAdditions.Name = Funcs.RandomString()
		Character.GunAdditions.Archivable = false
		Character.GunAdditions.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.GunAdditions) then
		table.insert(NoCollisions,Character.GunAdditions)
	end
	if not Character.GunGlow or not Funcs.Refit(Character.GunGlow,workspaceLOL) or (not Transparent and Character.GunGlow.LocalTransparencyModifier ~= 0) or Character.GunGlow.CastShadow or Character.GunGlow.Name == math.random() or Character.GunGlow.Material ~= Enum.Material.Neon or Character.GunGlow.Reflectance ~= 0 or Character.GunGlow.Transparency ~= 0 or not Character.GunGlow.Anchored or Character.GunGlow.Archivable or not Character.GunGlow.Locked or Character.GunGlow.Size ~= Backups.GunGlow.Size--[[Vector3.new(2.0009999275208, 2.2139999866486, 8.9270000457764)*S]] or Character.GunGlow.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.GunGlow.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.GunGlow) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.GunGlow))
		end
		Funcs.Debris(Character.GunGlow,0)
		Character.GunGlow = Backups.GunGlow:Clone()
		Character.GunGlow.Name = Funcs.RandomString()
		Character.GunGlow.Archivable = false
		Character.GunGlow.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.GunGlow) then
		table.insert(NoCollisions,Character.GunGlow)
	end
	if not Character.Hair or not Funcs.Refit(Character.Hair,workspaceLOL) or (not Transparent and Character.Hair.LocalTransparencyModifier ~= 0) or Character.Hair.CastShadow or Character.Hair.Name == math.random() or Character.Hair.DoubleSided or Character.Hair.Material ~= Enum.Material.Slate or Character.Hair.Reflectance ~= 0 or Character.Hair.Transparency ~= 0 or not Character.Hair.Anchored or Character.Hair.Archivable or not Character.Hair.Locked or Character.Hair.Size ~= Backups.Hair.Size--[[Vector3.new(1.7439999580383, 1.5418449640274, 1.4467949867249)*S]] or Character.Hair.CollisionFidelity ~= Enum.CollisionFidelity.Box or Character.Hair.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.Hair) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Hair))
		end
		Funcs.Debris(Character.Hair,0)
		Character.Hair = Backups.Hair:Clone()
		Character.Hair.Name = Funcs.RandomString()
		Character.Hair.Archivable = false
		Character.Hair.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.Hair) then
		table.insert(NoCollisions,Character.Hair)
	end
	if not Character.Sun or not Funcs.Refit(Character.Sun,workspaceLOL) or (not Transparent and Character.Sun.LocalTransparencyModifier ~= 0) or Character.Sun.CastShadow or Character.Sun.DoubleSided or Character.Sun.Material ~= Enum.Material.Neon or Character.Sun.Reflectance ~= 0 or Character.Sun.Transparency ~= 0 or not Character.Sun.Anchored or Character.Sun.Archivable or not Character.Sun.Locked or Character.Sun.Size ~= Vector3.new(12,12,12)*S or Character.Sun.CanCollide or Character.Sun.CollisionFidelity ~= Enum.CollisionFidelity.Default or Character.Sun.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.Sun) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Sun))
		end
		Funcs.Debris(Character.Sun,0)
		Character.Sun = Backups.Sun:Clone()
		Character.Sun.Name = Funcs.RandomString()
		Character.Sun.Archivable = false
		Character.Sun.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.Sun) then
		table.insert(NoCollisions,Character.Sun)
	end
	if not Character.Gear1 or not Funcs.Refit(Character.Gear1,workspaceLOL) or (not Transparent and Character.Gear1.LocalTransparencyModifier ~= 0) or Character.Gear1.CastShadow or Character.Gear1.DoubleSided or Character.Gear1.Material ~= Enum.Material.Slate or Character.Gear1.Reflectance ~= 0 or Character.Gear1.Transparency ~= 0 or not Character.Gear1.Anchored or Character.Gear1.Archivable or not Character.Gear1.Locked or Character.Gear1.Size ~= Vector3.new(14, 12.44, 0.78)*S or Character.Gear1.CanCollide or Character.Gear1.CollisionFidelity ~= Enum.CollisionFidelity.Default or Character.Gear1.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.Gear1) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Gear1))
		end
		Funcs.Debris(Character.Gear1,0)
		Character.Gear1 = Backups.Gear:Clone()
		Character.Gear1.Name = Funcs.RandomString()
		Character.Gear1.Archivable = false
		Character.Gear1.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.Gear1) then
		table.insert(NoCollisions,Character.Gear1)
	end
	if not Character.Gear2 or not Funcs.Refit(Character.Gear2,workspaceLOL) or (not Transparent and Character.Gear2.LocalTransparencyModifier ~= 0) or Character.Gear2.CastShadow or Character.Gear2.DoubleSided or Character.Gear2.Material ~= Enum.Material.Slate or Character.Gear2.Reflectance ~= 0 or Character.Gear2.Transparency ~= 0 or not Character.Gear2.Anchored or Character.Gear2.Archivable or not Character.Gear2.Locked or Character.Gear2.Size ~= Vector3.new(14, 12.44, 0.78)*S or Character.Gear2.CanCollide or Character.Gear2.CollisionFidelity ~= Enum.CollisionFidelity.Default or Character.Gear2.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.Gear2) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Gear2))
		end
		Funcs.Debris(Character.Gear2,0)
		Character.Gear2 = Backups.Gear:Clone()
		Character.Gear2.Name = Funcs.RandomString()
		Character.Gear2.Archivable = false
		Character.Gear2.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.Gear2) then
		table.insert(NoCollisions,Character.Gear2)
	end
	if not Character.Gear3 or not Funcs.Refit(Character.Gear3,workspaceLOL) or (not Transparent and Character.Gear3.LocalTransparencyModifier ~= 0) or Character.Gear3.CastShadow or Character.Gear3.DoubleSided or Character.Gear3.Material ~= Enum.Material.Slate or Character.Gear3.Reflectance ~= 0 or Character.Gear3.Transparency ~= 0 or not Character.Gear3.Anchored or Character.Gear3.Archivable or not Character.Gear3.Locked or Character.Gear3.Size ~= Vector3.new(14, 12.44, 0.78)*S or Character.Gear3.CanCollide or Character.Gear3.CollisionFidelity ~= Enum.CollisionFidelity.Default or Character.Gear3.CollisionGroupId ~= 0 then
		if table.find(NoCollisions,Character.Gear3) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Gear3))
		end
		Funcs.Debris(Character.Gear3,0)
		Character.Gear3 = Backups.Gear:Clone()
		Character.Gear3.Name = Funcs.RandomString()
		Character.Gear3.Archivable = false
		Character.Gear3.Parent = workspaceLOL
	end
	if not table.find(NoCollisions,Character.Gear3) then
		table.insert(NoCollisions,Character.Gear3)
	end
	if not Character.Visualizer1 or not Funcs.Refit(Character.Visualizer1,workspaceLOL) then
		if table.find(NoCollisions,Character.Visualizer1) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Visualizer1))
		end
		Funcs.Debris(Character.Visualizer1,0)
		Character.Visualizer1 = Backups.Visualizer1:Clone()
		Character.Visualizer1.Name = Funcs.RandomString()
		Character.Visualizer1.Archivable = false
		Character.Visualizer1.Parent = workspaceLOL
	end	
	if not table.find(NoCollisions,Character.Visualizer1) then
		table.insert(NoCollisions,Character.Visualizer1)
	end
	if not Character.Visualizer2 or not Funcs.Refit(Character.Visualizer2,workspaceLOL) then
		if table.find(NoCollisions,Character.Visualizer2) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Visualizer2))
		end
		Funcs.Debris(Character.Visualizer2,0)
		Character.Visualizer2 = Backups.Visualizer2:Clone()
		Character.Visualizer2.Name = Funcs.RandomString()
		Character.Visualizer2.Archivable = false
		Character.Visualizer2.Parent = workspaceLOL
	end		
	if not table.find(NoCollisions,Character.Visualizer2) then
		table.insert(NoCollisions,Character.Visualizer2)
	end
	if not Camera.Part or not Camera.Part:IsDescendantOf(game) or Camera.Part.Archivable then
		pcall(function()
		Funcs.Debris(Camera.Part,0)
		Camera.Part = Instance.new(BasePartClassTypes[math.random(1,#BasePartClassTypes)])
		Camera.Part.Name = Funcs.RandomString()
		Camera.Part.Archivable = false
		Camera.Part.Parent = Funcs.Serv(Services[math.random(1,#Services)])
		if not CameraPartValue then
			CameraPartValue = Instance.new("ObjectValue", game.ReplicatedStorage)
			CameraPartValue.Name = "CameraPartValue"
		end
		CameraPartValue.Value = Camera.Part
		end)
	end
	if CameraPartValue.Value ~= Camera.Part then
		CameraPartValue.Value = Camera.Part
	end
	if not Camera.Music or not Funcs.Refit(Camera.Music,Camera.Part) or Camera.Music.Archivable or not Camera.Music.Looped or Camera.Music.PlaybackSpeed ~= 1 or not Camera.Music.Playing or Camera.Music.SoundGroup or Camera.Music.SoundId ~= "rbxassetid://"..tostring(AudioId) or Camera.Music.Volume ~= 5 or Camera.Music.RollOffMinDistance ~= 1e6*S or Camera.Music.RollOffMaxDistance ~= 1e6*S or Camera.Music.RollOffMode ~= Enum.RollOffMode.Linear or Camera.Music.TimePosition > Timing.SongPosition+1 or Camera.Music.TimePosition < Timing.SongPosition-1 or #Camera.Music:GetChildren() > 0 or tick()-Timing.LastPlaying >= 1 then
		Funcs.Debris(Camera.Music,0)
		Camera.Music = Instance.new("Sound")
		Camera.Music.Name = Funcs.RandomString()
		Camera.Music.Volume = 5
		Camera.Music.Looped = true
		Camera.Music.Archivable = false
		Camera.Music.RollOffMinDistance = 1e6*S
		Camera.Music.RollOffMaxDistance = 1e6*S
		Camera.Music.RollOffMode = Enum.RollOffMode.Linear
		Camera.Music.SoundId = "rbxassetid://"..tostring(AudioId)
		Camera.Music.Playing = true
		pcall(function()
		Camera.Music.TimePosition = Timing.SongPosition
		end)
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

	local KatasData = { -- From Katastrophie
		Idle = {
			RightHip = {
				CF = CFrame.new(1*S,-0.4*S,-0.5*S)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))*CFrame.Angles(math.rad(-3),math.rad(0 - 1 * math.cos(Timing.Sine / 56)),math.rad(-14 - 5 * math.cos(Timing.Sine / 48))),
				Alpha = 0.1
			},
			LeftHip = {
				CF = CFrame.new(-1*S,-1*S,0)*CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))*CFrame.Angles(math.rad(-3),math.rad(0 - 1 * math.cos(Timing.Sine / 56)),math.rad(15 + 7 * math.cos(Timing.Sine / 51))),
				Alpha = 0.1
			},
			RootJoint = {
				CF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)*CFrame.new((0 + 0.25 * math.cos(Timing.Sine / 43))*S,(0 - 0.25 * math.cos(Timing.Sine / 53))*S,(6 + 1 * math.cos(Timing.Sine / 32))*S)*CFrame.Angles(math.rad(0 - 2 * math.cos(Timing.Sine / 32)),math.rad(0),math.rad(0)),
				Alpha = 0.1
			},
			Neck = {
				CF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)*CFrame.Angles(math.rad(-20 - 2 * math.cos(Timing.Sine / 180)),math.rad(0 + 1 * math.cos(Timing.Sine / 58)),math.rad(0 + 2 * math.cos(Timing.Sine / 53))),
				Alpha = 0.1
			},
			RightShoulder = {
				CF = CFrame.new(1.5*S,(0.5 + 0.025 * math.cos(Timing.Sine / 45))*S,0)*CFrame.Angles(math.rad(13 + 6 * math.cos(Timing.Sine / 72)),math.rad(3 - 2 * math.cos(Timing.Sine / 58)),math.rad(28 + 2 * math.cos(Timing.Sine / 45))),
				Alpha = 0.1
			},
			LeftShoulder = {
				CF = CFrame.new(-1.5*S,(0.5 + 0.025 * math.cos(Timing.Sine / 45))*S,0)*CFrame.Angles(math.rad(13 - 7 * math.cos(Timing.Sine / 66)),math.rad(4 - 3 * math.cos(Timing.Sine / 59)),math.rad(-23 - 4 * math.cos(Timing.Sine / 45))),
				Alpha = 0.1
			}
		},

		Move = {
			RightHip = {
				CF = CFrame.new(1*S,(-1 + 0.05 * math.cos(Timing.Sine / 4))*S,0)*CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(90),math.rad(0))*CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0 + 5 * math.cos(Timing.Sine / 8)),math.rad(0 + 35 * math.cos(Timing.Sine / 8))),
				Alpha = 0.1
			},
			LeftHip = {
				CF = CFrame.new(-1*S,(-1 + 0.05 * math.cos(Timing.Sine / 4))*S,0)*CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(-90),math.rad(0))*CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0 + 5 * math.cos(Timing.Sine / 8)),math.rad(0 + 35 * math.cos(Timing.Sine / 8))),
				Alpha = 0.1
			},
			RootJoint = {
				CF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)*CFrame.new(0,-0.05*S,(-0.05 - 0.05 * math.cos(Timing.Sine / 4))*S)*CFrame.fromEulerAnglesXYZ(math.rad(5 + 3 * math.cos(Timing.Sine / 4)),math.rad(0 + Character.Torso.RotVelocity.Y/1.5),math.rad(0 - Character.Torso.RotVelocity.Y - 5 * math.cos(Timing.Sine / 8))),
				Alpha = 0.1
			},
			Neck = {
				CF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)*CFrame.fromEulerAnglesXYZ(math.rad(10 - 3 * math.cos(Timing.Sine / 4)),math.rad(0 + Character.Head.RotVelocity.Y/1.5),math.rad(0 - Character.Head.RotVelocity.Y*1.5 + 5 * math.cos(Timing.Sine / 8))),
				Alpha = 0.1
			},
			RightShoulder = {
				CF = CFrame.new(1.5*S,0.5*S,(0 + 0.25 * math.cos(Timing.Sine / 8))*S)*CFrame.fromEulerAnglesXYZ(math.rad(0 - 50 * math.cos(Timing.Sine / 8)),math.rad(0),math.rad(5 - 10 * math.cos(Timing.Sine / 4))),
				Alpha = 0.1
			},
			LeftShoulder = {
				CF = CFrame.new(-1.5*S,0.5*S,(0 - 0.25 * math.cos(Timing.Sine / 8))*S)*CFrame.fromEulerAnglesXYZ(math.rad(0 + 50 * math.cos(Timing.Sine / 8)),math.rad(0),math.rad(-5 + 10 * math.cos(Timing.Sine / 4))),
				Alpha = 0.1
			}
		}
	}
	local AscenData = {
		Idle = {
			RightHip = {
				CF = CFrame.new(1*S,(-1 - 0.1 * math.cos(Timing.Sine / 32))*S,0)*CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(90),math.rad(0))*CFrame.fromEulerAnglesXYZ(math.rad(-3),math.rad(-5.5 - 2 * math.cos(Timing.Sine / 56)),math.rad(-12 - 2 * math.cos(Timing.Sine / 32))),
				Alpha = 0.1
			},
			LeftHip = {
				CF = CFrame.new(-1*S,(-1 - 0.1 * math.cos(Timing.Sine / 32))*S,0)*CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(-90),math.rad(0))*CFrame.fromEulerAnglesXYZ(math.rad(-6),math.rad(22 - 2 * math.cos(Timing.Sine / 56)),math.rad(-1 + 2 * math.cos(Timing.Sine / 32))),
				Alpha = 0.1
			},
			RootJoint = {
				CF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)*CFrame.new(0,0.01 + 0.03 * math.cos(Timing.Sine / 32),0 + 0.1 * math.cos(Timing.Sine / 32))*CFrame.fromEulerAnglesXYZ(math.rad(1 - 2 * math.cos(Timing.Sine / 32)),math.rad(0),math.rad(-22 + 2 * math.cos(Timing.Sine / 56))),
				Alpha = 0.1
			},
			Neck = {
				CF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)*CFrame.fromEulerAnglesXYZ(math.rad(23 - 2 * math.cos(Timing.Sine / 37)),math.rad(0 + 5 * math.cos(Timing.Sine / 43) - 5 * math.cos(Timing.Sine / 0.25)),math.rad(22 - 2 * math.cos(Timing.Sine / 56))),
				Alpha = 0.1
			},
			RightShoulder = {
				CF = CFrame.new(1.5*S,(0.5 + 0.025 * math.cos(Timing.Sine / 45))*S,0)*CFrame.fromEulerAnglesXYZ(math.rad(5 + 3 * math.cos(Timing.Sine / 43)),math.rad(-16 - 5 * math.cos(Timing.Sine / 52)),math.rad(13 + 9 * math.cos(Timing.Sine / 45))),
				Alpha = 0.1
			},
			LeftShoulder = {
				CF = CFrame.new(-1.35*S,(1 + 0.025 * math.cos(Timing.Sine / 45))*S,-0.2*S)*CFrame.fromEulerAnglesXYZ(math.rad(148 - 2 * math.cos(Timing.Sine / 51)),math.rad(0 - 4 * math.cos(Timing.Sine / 64)),math.rad(22 - 2 * math.cos(Timing.Sine / 45))),
				Alpha = 0.1
			}
		},
		Move = {
			RightHip = {
				CF = CFrame.new(1*S,(-1 + 0.05 * math.cos(Timing.Sine / 4))*S,0)*CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(90),math.rad(0))*CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0 + 5 * math.cos(Timing.Sine / 8)),math.rad(0 + 35 * math.cos(Timing.Sine / 8))),
				Alpha = 0.1
			},
			LeftHip = {
				CF = CFrame.new(-1*S,(-1 + 0.05 * math.cos(Timing.Sine / 4))*S,0)*CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(-90),math.rad(0))*CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0 + 5 * math.cos(Timing.Sine / 8)),math.rad(0 + 35 * math.cos(Timing.Sine / 8))),
				Alpha = 0.1
			},
			RootJoint = {
				CF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)*CFrame.new(0,-0.05,-0.05 - 0.05 * math.cos(Timing.Sine / 4))*CFrame.fromEulerAnglesXYZ(math.rad(5 + 3 * math.cos(Timing.Sine / 4)),math.rad(0 + Character.Torso.RotVelocity.Y/1.5),math.rad(0 - Character.Torso.RotVelocity.Y - 5 * math.cos(Timing.Sine / 8))),
				Alpha = 0.1
			},
			Neck = {
				CF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)*CFrame.fromEulerAnglesXYZ(math.rad(10 - 3 * math.cos(Timing.Sine / 4)),math.rad(0 + Character.Head.RotVelocity.Y/1.5),math.rad(0 - Character.Head.RotVelocity.Y*1.5 + 5 * math.cos(Timing.Sine / 8))),
				Alpha = 0.1
			},
			RightShoulder = {
				CF = CFrame.new(1.5*S,0.5*S,(0 + 0.25 * math.cos(Timing.Sine / 8))*S)*CFrame.fromEulerAnglesXYZ(math.rad(0 - 50 * math.cos(Timing.Sine / 8)),math.rad(0),math.rad(5 - 10 * math.cos(Timing.Sine / 4))),
				Alpha = 0.1
			},
			LeftShoulder = {
				CF = CFrame.new(-1.5*S,0.5*S,(0 - 0.25 * math.cos(Timing.Sine / 8))*S)*CFrame.fromEulerAnglesXYZ(math.rad(0 + 50 * math.cos(Timing.Sine / 8)),math.rad(0),math.rad(-5 + 10 * math.cos(Timing.Sine / 4))),
				Alpha = 0.1
			}
		}
	}

	local WALKSPEEDVALUE = 6
	local eee = Camera.Music
	local sick = Camera.Music

	if not Movement.Attacking then
		if Camera.Music.SoundId == "rbxassetid://5157976559" then -- Animations: Solid LC
			Movement.HipHeight = 2*S
			if Movement.Walking then
				Welds.Sword.C0 = Clerp(Welds.Sword.C0,CFrame.new(.05*S,-1*S,-.15*S) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new((.5*math.cos(Sine/50))*S,0,(-.5*math.sin(Sine/50)*S))*CFrame.Angles(math.rad(40),0,0),.25)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.new(0,-.25*S,0)*CFrame.Angles(math.rad(-40),0,0),.25)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CFrame.new(1.55*S, 0.5*S, 0.5*S) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0, 1 / 3)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,.5*S,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(Sine/19)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1*S,-.5*S,-.5*S)*CFrame.Angles(math.rad(-20+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(Sine/37)),0,0),.25)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1*S,-1*S,0)*CFrame.Angles(math.rad(-20-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
			else
				Welds.Sword.C0 = Clerp(Welds.Sword.C0,CFrame.new(.05*S,-1*S,-.15*S) * CFrame.Angles(math.rad(-120),math.rad(0),math.rad(0)),1/2)
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new((0 + .5 * math.cos(Sine/50))*S,0,(0 - .5 * math.sin(Sine/50))*S)*CFrame.Angles(math.rad(-25+5*math.sin(Sine/50)),0,0),.7/3)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.new(0,0 ,(0 + ((1) - 1))) * CFrame.Angles(math.rad(30+5*math.sin(Sine/50)),math.rad(0),math.rad(0)),0.7/3)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.55*S, 0.5*S, 0.5*S) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0, 1 / 3)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,0.5*S,0) * CFrame.Angles(math.rad(-20 + 8.5 * math.cos(Sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(Sine/25))) * LEFTSHOULDERC0,0.7/3)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1*S,-0.5*S,-0.5*S) * CFrame.Angles(math.rad(-5 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),0.7/3)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1*S,-1*S,0) * CFrame.Angles(math.rad(13 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),0.7/3)
			end
		elseif Camera.Music.SoundId == "rbxassetid://4185475912" then
			Movement.HipHeight = 2*S
			if Movement.Walking then -- Animations: LCV2
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,math.cos(Sine/25)*S,-math.sin(Sine/25)*S)*CFrame.Angles(math.rad(5*math.sin(Sine/25)),0,math.rad(70)),.25)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(0,0,math.rad(-70))*CFrame.Angles(math.rad(5*math.cos(Sine/25)),0,0),.25)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1*S,.5*S,-.25*S)*CFrame.Angles(0,math.rad(-10),math.rad(-90))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,.5*S,0)*CFrame.Angles(0,0,math.rad(-20+5*math.sin(Sine/25)))*Welds.Defaults.LeftShoulder.C0,.25)
			else
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,math.cos(Sine/25)*S,-math.sin(Sine/25)*S)*CFrame.Angles(math.rad(5*math.sin(Sine/25)),0,0),.25)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(5*math.cos(Sine/25)),0,0),.25)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.5*S,.5*S,0)*CFrame.Angles(math.rad(160),0,math.rad(15-5*math.sin(Sine/25)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,.5*S,0)*CFrame.Angles(0,0,math.rad(-15+5*math.sin(Sine/25)))*Welds.Defaults.LeftShoulder.C0,.25)
			end
			Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1*S,(-1-.1*math.sin(Sine/25))*S,-.01*S)*CFrame.Angles(0,math.rad(80),0),.25)
			Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1*S,(-.5-.25*math.sin(Sine/25))*S,-.51*S)*CFrame.Angles(math.rad(-10),math.rad(-80),0),.25)
			Welds.Sword.C0 = Clerp(Welds.Sword.C0,CFrame.new(.05*S,-1*S,-.15*S)*CFrame.Angles(math.rad(-90),0,0),.25)
		elseif Camera.Music.SoundId == "rbxassetid://1021150301" then
			Movement.HipHeight = 0
			local LoadedData = KatasData
			if Movement.Walking then -- Animations: Katastrophie (altered)
				Welds.RightHip.C0 = Funcs.Clerp(Welds.RightHip.C0,LoadedData.Move.RightHip.CF,LoadedData.Move.RightHip.Alpha)
				Welds.LeftHip.C0 = Funcs.Clerp(Welds.LeftHip.C0,LoadedData.Move.LeftHip.CF,LoadedData.Move.LeftHip.Alpha)
				Welds.RootJoint.C0 = Funcs.Clerp(Welds.RootJoint.C0,LoadedData.Move.RootJoint.CF,LoadedData.Move.RootJoint.Alpha)
				Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,LoadedData.Move.Neck.CF,LoadedData.Move.Neck.Alpha)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CFrame.new(1.55*S, 0.5*S, 0.5*S) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0, 1 / 3)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,.5*S,0)*CFrame.Angles(0,0,math.rad(-20+5*math.sin(Sine/25)))*Welds.Defaults.LeftShoulder.C0,.25)
			else
				Welds.RightHip.C0 = Funcs.Clerp(Welds.RightHip.C0,LoadedData.Idle.RightHip.CF,LoadedData.Idle.RightHip.Alpha)
				Welds.LeftHip.C0 = Funcs.Clerp(Welds.LeftHip.C0,LoadedData.Idle.LeftHip.CF,LoadedData.Idle.LeftHip.Alpha)
				Welds.RootJoint.C0 = Funcs.Clerp(Welds.RootJoint.C0,LoadedData.Idle.RootJoint.CF,LoadedData.Idle.RootJoint.Alpha)
				Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,LoadedData.Idle.Neck.CF,LoadedData.Idle.Neck.Alpha)
				Welds.RightShoulder.C0 = Funcs.Clerp(Welds.RightShoulder.C0,LoadedData.Idle.RightShoulder.CF,LoadedData.Idle.RightShoulder.Alpha)
				Welds.LeftShoulder.C0 = Funcs.Clerp(Welds.LeftShoulder.C0,LoadedData.Idle.LeftShoulder.CF,LoadedData.Idle.LeftShoulder.Alpha)
			end
			Welds.Sword.C0 = Clerp(Welds.Sword.C0,CFrame.new(.05*S,-1*S,-.15*S)*CFrame.Angles(math.rad(-90),0,0),.25)
		elseif Camera.Music.SoundId == "rbxassetid://2659531944" then
			Movement.HipHeight = 0
			local LoadedData = AscenData
			if Movement.Walking then -- Animations: Katastrophie (altered)
				Welds.RightHip.C0 = Funcs.Clerp(Welds.RightHip.C0,LoadedData.Move.RightHip.CF,LoadedData.Move.RightHip.Alpha)
				Welds.LeftHip.C0 = Funcs.Clerp(Welds.LeftHip.C0,LoadedData.Move.LeftHip.CF,LoadedData.Move.LeftHip.Alpha)
				Welds.RootJoint.C0 = Funcs.Clerp(Welds.RootJoint.C0,LoadedData.Move.RootJoint.CF,LoadedData.Move.RootJoint.Alpha)
				Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,LoadedData.Move.Neck.CF,LoadedData.Move.Neck.Alpha)
				Welds.RightShoulder.C0 = Funcs.Clerp(Welds.RightShoulder.C0,LoadedData.Move.RightShoulder.CF,LoadedData.Move.RightShoulder.Alpha)
				Welds.LeftShoulder.C0 = Funcs.Clerp(Welds.LeftShoulder.C0,LoadedData.Idle.LeftShoulder.CF,LoadedData.Idle.LeftShoulder.Alpha)
			else
				Welds.RightHip.C0 = Funcs.Clerp(Welds.RightHip.C0,LoadedData.Idle.RightHip.CF,LoadedData.Idle.RightHip.Alpha)
				Welds.LeftHip.C0 = Funcs.Clerp(Welds.LeftHip.C0,LoadedData.Idle.LeftHip.CF,LoadedData.Idle.LeftHip.Alpha)
				Welds.RootJoint.C0 = Funcs.Clerp(Welds.RootJoint.C0,LoadedData.Idle.RootJoint.CF,LoadedData.Idle.RootJoint.Alpha)
				Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,LoadedData.Idle.Neck.CF,LoadedData.Idle.Neck.Alpha)
				Welds.RightShoulder.C0 = Funcs.Clerp(Welds.RightShoulder.C0,LoadedData.Idle.RightShoulder.CF,LoadedData.Idle.RightShoulder.Alpha)
				Welds.LeftShoulder.C0 = Funcs.Clerp(Welds.LeftShoulder.C0,LoadedData.Idle.LeftShoulder.CF,LoadedData.Idle.LeftShoulder.Alpha)
			end
			Welds.Sword.C0 = Clerp(Welds.Sword.C0,CFrame.new(.05*S,-1*S,-.15*S)*CFrame.Angles(math.rad(-90),0,0),.25)
		elseif Camera.Music.SoundId == "rbxassetid://3493283202" then
			Movement.HipHeight = 0
			local RH,LH,RootJoint,Torso,RW,LW,GunJoint = Welds.RightHip,Welds.LeftHip,Welds.RootJoint,{Neck = Welds.Neck},Welds.RightShoulder,Welds.LeftShoulder,Welds.Sword
			if Movement.Walking then -- Animations: ???
				RH.C0=clerp(RH.C0,cf(1*S,(-1-.4*math.cos(sine/6)/2)*S,(.8*math.cos(sine/6)/2)*S)*angles(math.rad(0-65*math.cos(sine/6))-math.sin(sine/6)/1.5,0,0)*angles(0,math.rad(90),0),.1)
				LH.C0=clerp(LH.C0,cf(-1*S,(-1+.4*math.cos(sine/6)/2)*S,(-.8*math.cos(sine/6)/2)*S)*angles(math.rad(0+65*math.cos(sine/6))+math.sin(sine/6)/1.5,0,0)*angles(0,math.rad(-90),0),.1)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,(-0.125 + 0.125 * math.cos(sine / 3))*S)*angles(math.rad(20),math.rad(0),math.rad(0 - 15 * math.cos(sine / 6))),.1)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10 + 2.5 * math.cos(sine / 100)),math.rad(0),math.rad(0 + 15 * math.cos(sine / 6))),.1)
				RW.C0=clerp(RW.C0,cf(1.5*S,0.5*S,0.3*S)*angles(math.rad(-50 + 10 * math.cos(sine / 3)),math.rad(-10),math.rad(7 + 5 * math.cos(sine / 6))),.1)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,.5*S,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(Sine/19)))*Welds.Defaults.LeftShoulder.C0,.25)
				GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05*S,-1*S,-0.15*S) * CFrame.Angles(math.rad(-93.75+7.25*math.cos(sine/12)),math.rad(0),math.rad(0)),1 / 2)
			else
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, (3 + 1 * SIN(sine / 26))*S) * ANGLES(RAD(-10 - 2.5*SIN(sine/24)), RAD(0), RAD(0)), 1/3)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(0)), 1/3)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CF(1.5*S, 0.5*S, 0) * ANGLES(RAD(120 - 13*SIN(sine/12)), RAD(0), RAD(12 - 4.10 * SIN(sine / 12*3))) * RIGHTSHOULDERC0, 1/3)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0, CF(-1.5*S, 0.5*S, 0) * ANGLES(RAD(0), RAD(MRANDOM(-25,25)), RAD(-12)) * LEFTSHOULDERC0, 1/3)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0, CF(1*S, (-.5 - 0.02 * SIN(SINE / 12))*S, -0.5*S) * ANGLES(RAD(-20 - 2.5 * SIN(sine / 12*2)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1/3)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0, CF(-1*S, (-1 - 0.02 * SIN(SINE / 12))*S, -0.01*S) * ANGLES(RAD(-40 - 2.5 * SIN(sine / 16)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1/3)
				Welds.Sword.C0 = Clerp(Welds.Sword.C0,CFrame.new(.05*S,-1*S,-.15*S)*CFrame.Angles(math.rad(-90),0,0),.25)
			end
		elseif Camera.Music.SoundId == "rbxassetid://6516420854" then
			Movement.HipHeight = 0
			if Movement.Walking then -- Animations: Snake Banisher V3/V4
				Welds.RootJoint.C0 = Funcs.Clerp(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, -0.1*S) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(1, 2) - 2.5 * SIN(Sine / 12)), RAD(MRANDOM(1, 2)), RAD(MRANDOM(1, 2))), 1 / Animation_Speed)
				Welds.RightShoulder.C0 = Funcs.Clerp(Welds.RightShoulder.C0,CFrame.new(1.5*S,(.5+.2*math.sin(Sine/12))*S,-.25*S)*CFrame.Angles(math.rad(165-15*math.cos(Sine/12)),math.rad(-10+5*math.sin(Sine/12)),math.rad(10))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = Funcs.Clerp(Welds.LeftShoulder.C0, CF(-1.5*S, 0.5*S, 0) * ANGLES(RAD(0), RAD(0), RAD(-10-5*SIN(Sine/24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				Welds.RightHip.C0 = Funcs.Clerp(Welds.RightHip.C0, CF(1*S , (-1 - 0.15 * COS(Sine / Movement.WalkSpeed*2))*S, (-0.2+ 0.2 * COS(Sine / Movement.WalkSpeed))*S) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
				Welds.LeftHip.C0 = Funcs.Clerp(Welds.LeftHip.C0, CF(-1*S, (-1 - 0.15 * COS(Sine / Movement.WalkSpeed*2))*S, (-0.2+ -0.2 * COS(Sine / Movement.WalkSpeed))*S) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
			else
				Welds.RootJoint.C0 = Funcs.Clerp(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, (0+.15*SIN(Sine/32))*S) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(40), RAD(-10), RAD(0)), 0.15 / Animation_Speed)
				Welds.RightShoulder.C0 = Funcs.Clerp(Welds.RightShoulder.C0,CFrame.new(1.5*S,.5*S,0)*CFrame.Angles(math.rad(160),0,math.rad(15-5*math.sin(Sine/25)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = Funcs.Clerp(Welds.LeftShoulder.C0, CF(-1.5*S, 0.5*S, 0) * ANGLES(RAD(0), RAD(0), RAD(-10-5*SIN(Sine/24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				Welds.RightHip.C0 = Funcs.Clerp(Welds.RightHip.C0, CF(1*S, (-1-.15*SIN(Sine/32))*S, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(Sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.LeftHip.C0 = Funcs.Clerp(Welds.LeftHip.C0, CF(-1*S, (-1-.15*SIN(Sine/32))*S, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(Sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			end
			Welds.Sword.C0 = Clerp(Welds.Sword.C0,CFrame.new(.05*S,-1*S,-.15*S)*CFrame.Angles(math.rad(-90),0,0),.25)
		elseif Camera.Music.SoundId == "rbxassetid://4835535512" then
			Movement.HipHeight = 0
			if Movement.Walking then -- Animations: Bloodwater
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, -0.1*S) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-15, 25) - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-15, 25)), RAD(MRANDOM(-15, 25))), 1 / Animation_Speed)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CF(1.55*S, 0.5*S, 0.5*S) * ANGLES(RAD(250), RAD(20), RAD(-80))* RIGHTSHOULDERC0, 1 / Animation_Speed)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0, CF(-1.5*S, 0.5*S, 0) * ANGLES(RAD(-35 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0, CF(1*S , (-1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2))*S, (-0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE))*S) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0, CF(-1*S, (-1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2))*S, (-0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE))*S) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
			else
				Welds.Neck.C0 = Clerp(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CF(0.75*S, (0.4 - 0.1 * COS(SINE / 12))*S, -1*S) * ANGLES(RAD(70), RAD(0), RAD(-70)) * ANGLES(RAD(20), RAD(25), RAD(-15)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, (0 + 0.05 * COS(SINE / 12))*S) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0, CF(-1*S, (0.1 - 0.1 * COS(SINE / 12))*S, -0.5*S) * ANGLES(RAD(25), RAD(0), RAD(85)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0, CF(1*S, (-1 - 0.025 * COS(SINE / 12))*S, -0.01*S) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0, CF(-1*S, (-1 - 0.05 * COS(SINE / 12))*S, -0.01*S) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			end
			Welds.Sword.C0 = Clerp(Welds.Sword.C0,CFrame.new(.05*S,-1*S,-.15*S)*CFrame.Angles(math.rad(-90),0,0),.25)
		elseif Camera.Music.SoundId == "rbxassetid://6174456295" then
			Movement.HipHeight = 2*S
			if Movement.Walking then -- Animations: Lightning Cannon
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new((.5*math.cos(Sine/50))*S,0,(-.5*math.sin(Sine/50))*S)*CFrame.Angles(math.rad(40),0,0),.25)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.new(0,-.25*S,0)*CFrame.Angles(math.rad(-40),0,0),.25)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1*S,.5*S,-.25*S)*CFrame.Angles(0,math.rad(-10),math.rad(-90))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,.5*S,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(Sine/19)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1*S,-.5*S,-.5*S)*CFrame.Angles(math.rad(-20+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(Sine/37)),0,0),.25)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1*S,-1*S,0)*CFrame.Angles(math.rad(-20-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
			else
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new((.5*math.cos(Sine/50))*S,0,(-.5*math.sin(Sine/50))*S),.25)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20),0,0),.25)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.5*S,.5*S,0)*CFrame.Angles(math.rad(135+8.5*math.cos(Sine/50)),0,math.rad(25))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,.5*S,0)*CFrame.Angles(math.rad(25+8.5*math.cos(Sine/50)),0,math.rad(-25-5*math.cos(Sine/25)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1*S,-.5*S,-.5*S)*CFrame.Angles(math.rad(-15+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(Sine/37)),0,0),.25)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1*S,-1*S,0)*CFrame.Angles(math.rad(-15-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
			end
			Welds.Sword.C0 = Clerp(Welds.Sword.C0,CFrame.new(.05*S,-1*S,-.15*S)*CFrame.Angles(math.rad(-90),0,0),.25)
		elseif Camera.Music.SoundId == "rbxassetid://733456981" then
			local RootPart = Character.Torso
			local bouncyboi = sick.PlaybackLoudness / 1200
			Movement.HipHeight = 0
			if Movement.Walking then -- Animations: literally any script with a karma mode (the one i used was godcat banisher)
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,ROOTC0 * CF((0 + .25*Cos(sine/63)+.92*Sin(sine/95))*S, 0, (1 + 1 * SIN(SINE / 53))*S) * ANGLES(RAD(70), RAD(0-RootPart.RotVelocity.y), RAD(0 - RootPart.RotVelocity.Y * 4.5 + 3 * COS(SINE / 47))), 0.15 / Animation_Speed)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CF(1.5*S, 0.5*S, 0) * ANGLES(RAD(0), RAD(0), RAD(12 - 4.10 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0, CF(-1.5*S, 0.5*S, 0) * ANGLES(RAD(0), RAD(0), RAD(-12 + 4.10 * SIN(SINE / 12))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0, CF(1*S, (-.5 - 0.02 * SIN(SINE / 12))*S, -0.5*S) * ANGLES(RAD(-10 - 2.5 * SIN(SINE / 21)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0, CF(-1*S, (-1 - 0.02 * SIN(SINE / 12))*S, -0.01*S) * ANGLES(RAD(-20 - 2.5 * SIN(SINE / 51)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.Sword.C0 = Funcs.Clerp(Welds.Sword.C0,CFrame.new(0,-1*S,0)*CFrame.Angles(math.rad(154.35-5.65*math.sin(Timing.Sine/25)),0,0),.25)
			else
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,ROOTC0 * CF(0, -0.1*S, (-0.1 + 0.05 * COS(SINE / 12) + bouncyboi)*S) * ANGLES(RAD(15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.RightShoulder.C0 = Funcs.Clerp(Welds.RightShoulder.C0,CFrame.new(1.5*S,.5*S,0)*CFrame.Angles(math.rad(80+5*math.cos(Timing.Sine/25)),0,math.rad(45))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.Sword.C0 = Funcs.Clerp(Welds.Sword.C0,CFrame.new(0,-0,-.5*S)*CFrame.Angles(0,math.rad(170),math.rad(-10)),.25)
				Welds.LeftShoulder.C0 = Funcs.Clerp(Welds.LeftShoulder.C0, CF(-1.5*S, 0.5*S, 0) * ANGLES(RAD(0), RAD(0), RAD(-10-5*SIN(Sine/24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0, CF(1*S, (-1 - 0.05 * COS(SINE / 12) - bouncyboi)*S, -0.01*S) * ANGLES(RAD(20), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0, CF(-1*S, (-1 - 0.05 * COS(SINE / 12) - bouncyboi)*S, -0.01*S) * ANGLES(RAD(5), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25 + MRANDOM(-5,5) - 4 * COS(SINE / 12)), RAD(MRANDOM(-5,5)), RAD(15)), 1 / Animation_Speed)
			end
		elseif Camera.Music.SoundId == "rbxassetid://2242814132" then
			if Movement.Walking then -- Animations: Kickisher Rewrite
				Welds.RootJoint.C0 = Funcs.Clerp(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, (3 + 0.5 * COS(Sine / 22))*S) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.RightShoulder.C0 = Funcs.Clerp(Welds.RightShoulder.C0, CF(1.5*S, 0.1*S, -0.4*S) * ANGLES(RAD(150), RAD(0), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				Welds.LeftShoulder.C0 = Funcs.Clerp(Welds.LeftShoulder.C0, CF(-1.5*S, 0.5*S, 0) * ANGLES(RAD(0), RAD(0), RAD(-10-5*SIN(Sine/24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				Welds.RightHip.C0 = Funcs.Clerp(Welds.RightHip.C0, CF(1*S , -1*S, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(-15)), 0.15 / Animation_Speed)
				Welds.LeftHip.C0 = Funcs.Clerp(Welds.LeftHip.C0, CF(-1*S, -1*S, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(15)), 0.15 / Animation_Speed)
			else
				Welds.RootJoint.C0 = Funcs.Clerp(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, (3 + 0.5 * COS(Sine / 22))*S) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(Sine / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.RightShoulder.C0 = Funcs.Clerp(Welds.RightShoulder.C0, CF(1.2*S, (0.5 + 0.05 * SIN(Sine / 24))*S, -0.7*S) * ANGLES(RAD(180), RAD(0), RAD(0)) * ANGLES(RAD(5), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				Welds.LeftShoulder.C0 = Funcs.Clerp(Welds.LeftShoulder.C0, CF(-1.5*S, 0.5*S, 0) * ANGLES(RAD(0), RAD(0), RAD(-10-5*SIN(Sine/24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				Welds.RightHip.C0 = Funcs.Clerp(Welds.RightHip.C0, CF(1*S, -0.8*S, -0.01*S) * ANGLES(RAD(0), RAD(70), RAD(-20+10*COS(Sine/22))) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.LeftHip.C0 = Funcs.Clerp(Welds.LeftHip.C0, CF(-1*S, -0.8*S, -0.01*S) * ANGLES(RAD(0), RAD(-70), RAD(25-10*COS(Sine/22))) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			end
			Welds.Sword.C0 = Clerp(Welds.Sword.C0,CFrame.new(.05*S,-1*S,-.15*S)*CFrame.Angles(math.rad(-90),0,0),.25)
		elseif Camera.Music.SoundId == "rbxassetid://880201065" then
			Movement.HipHeight = 0
			if Movement.Walking==false then -- Animations: Echo (altered)
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,ROOTC0 * CF(0 , 0 , (-0.2 + 0.2*COS(SINE / 13))*S ) * ANGLES(RAD(-20), RAD(0), RAD(0)), 0.35 / 3)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-20+MRANDOM(-15-eee.PlaybackLoudness/200,15+eee.PlaybackLoudness/200)), RAD(0+MRANDOM(-15-eee.PlaybackLoudness/200,15+eee.PlaybackLoudness/200)), RAD(0+MRANDOM(-15-eee.PlaybackLoudness/200,15+eee.PlaybackLoudness/200))), 0.35 / 3)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CF(1.5*S, (0.5+ 0.2*COS(SINE / 13))*S, 0) * ANGLES(RAD(-20+MRANDOM(-15-eee.PlaybackLoudness/200,15+eee.PlaybackLoudness/200)), RAD(0+MRANDOM(-15-eee.PlaybackLoudness/200,15+eee.PlaybackLoudness/200)), RAD(0+MRANDOM(-15-eee.PlaybackLoudness/200,15+eee.PlaybackLoudness/200)))* RIGHTSHOULDERC0, 0.35 / 3)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0, CF(-1.5*S, (0.5+ 0.2*COS(SINE / 13))*S, 0) * ANGLES(RAD(-20+MRANDOM(-15-eee.PlaybackLoudness/200,15+eee.PlaybackLoudness/200)), RAD(0+MRANDOM(-15-eee.PlaybackLoudness/200,15+eee.PlaybackLoudness/200)), RAD(0+MRANDOM(-15-eee.PlaybackLoudness/200,15+eee.PlaybackLoudness/200))) * LEFTSHOULDERC0, 0.35 / 3)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0, CF(1*S, (-1- 0.2*COS(SINE / 13))*S, 0) * ANGLES(RAD(-20), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(90), RAD(0)), 0.35 / 3)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0, CF(-1*S, (-1- 0.2*COS(SINE / 13))*S , 0) * ANGLES(RAD(-20), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(-90), RAD(0)), 0.35 / 3)
			else
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, -0.1*S) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / 3)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15))), 0.35 / 3)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CF(1.5*S, 0.5*S, 0) * ANGLES(RAD(60 * COS(SINE / (10 / 1))), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.35 / 3)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0, CF(-1.5*S, 0.5*S, 0) * ANGLES(RAD(-60 * COS(SINE / (10 / 1))), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.35 / 3)
				Welds.RightHip.C0 = Funcs.Clerp(Welds.RightHip.C0, CF(1*S , (-1 - 0.15 * COS(Sine / Movement.WalkSpeed*2*S))*S, (-0.2+ 0.2 * COS(Sine / Movement.WalkSpeed*S))*S) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
				Welds.LeftHip.C0 = Funcs.Clerp(Welds.LeftHip.C0, CF(-1*S, (-1 - 0.15 * COS(Sine / Movement.WalkSpeed*2*S))*S, (-0.2+ -0.2 * COS(Sine / Movement.WalkSpeed*S))*S) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
			end
			Welds.Sword.C0 = Clerp(Welds.Sword.C0,CFrame.new(.05*S,-1*S,-.15*S) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
		elseif Camera.Music.SoundId == "rbxassetid://4557673096" then
			Movement.HipHeight = 0
			if not Movement.Walking then -- Animations: not entirely sure but one of the comments on the song said it was from lc switcher and i know that the same anims were used in USC as well
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 , 0 , (0 - .5 * math.sin(sine/25))*S) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.8 / 3)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(0.25,3)), math.rad(math.random(0.25,3)), math.rad(math.random(0.25,3))), .7 / 3)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CFrame.new(1.5*S, 0.5*S, 0) * CFrame.Angles(math.rad(-41.6-4*math.sin(sine/25)), math.rad(math.random(-0.25,3)), math.rad(math.random(0.25,3)))* RIGHTSHOULDERC0, .7 / 3)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0, CFrame.new(-1.5*S, 0.5*S, 0) * CFrame.Angles(math.rad(20), math.rad(5+2* math.sin(sine/25+math.random(-0.25,3))), math.rad(-2+5*math.sin(sine / 25))) * LEFTSHOULDERC0, .7 / 3)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0, CFrame.new(1*S, -1*S, 0) * CFrame.Angles(math.rad(-20-4*math.sin(sine/25-math.random(0.25,3))), math.rad(80), math.rad(0)), .7 / 3)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0, CFrame.new(-1*S, -1*S , 0) * CFrame.Angles(math.rad(-10-4*math.sin(sine/25-math.random(-0.25,3))), math.rad(-80), math.rad(0)), .7 / 3)
			else
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 , 0 , (0 - .5 * math.sin(sine/25))*S) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.8 / 3)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(25-math.rad(math.random(0.25,3)), math.rad(math.random(0.25,3)), math.rad(math.random(0.25,3))), .7 / 3)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CFrame.new(1.5*S, 0.5*S, 0) * CFrame.Angles(math.rad(-41.6-4*math.sin(sine/25)), math.rad(math.random(-0.25,3)), math.rad(math.random(0.25,3)))* RIGHTSHOULDERC0, .7 / 3)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0, CFrame.new(-1.5*S, 0.5*S, 0) * CFrame.Angles(math.rad(90-4*math.sin(sine/25)), math.rad(5+2* math.sin(sine/25+math.random(-0.25,3))), math.rad(-2+5*math.sin(sine / 25))) * LEFTSHOULDERC0, .7 / 3)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0, CFrame.new(1*S, -1*S, 0) * CFrame.Angles(math.rad(-30-4*math.sin(sine/25-math.random(0.25,3))), math.rad(80), math.rad(0)), .7 / 3)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0, CFrame.new(-1*S, -1*S , 0) * CFrame.Angles(math.rad(-20-4*math.sin(sine/25-math.random(-0.25,3))), math.rad(-80), math.rad(0)), .7 / 3)
			end
			Welds.Sword.C0 = Clerp(Welds.Sword.C0,CFrame.new(.05*S,-1*S,-.15*S) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
		elseif Camera.Music.SoundId == "rbxassetid://2677233603" then
			Movement.HipHeight = 0
			if not Movement.Walking then -- Animations: Star Glitcher (Idle), SBV2 / Bloodwater (Walk)
				Welds.RightHip.C0=Clerp(Welds.RightHip.C0,CFrame.new(1*S,-0.25*S,-0.5*S)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.1)
				Welds.LeftHip.C0=Clerp(Welds.LeftHip.C0,CFrame.new(-1*S,-1*S,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.1)
				Welds.RootJoint.C0=Clerp(Welds.RootJoint.C0,ROOTC0*CFrame.new(0,0,(1.5 + 0.1 * math.cos(sine / 28))*S)*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
				Welds.Neck.C0=Clerp(Welds.Neck.C0,NECKC0*angles(math.rad(15),math.rad(0),math.rad(0)),.1)
				Welds.RightShoulder.C0=Clerp(Welds.RightShoulder.C0,CFrame.new(1.5*S,0.5*S,0)*angles(math.rad(10),math.rad(0),math.rad(20 + 2.5 * math.cos(sine / 28))),.1)
				Welds.LeftShoulder.C0=Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,0.5*S,0)*angles(math.rad(10),math.rad(0),math.rad(-20 - 2.5 * math.cos(sine / 28))),.1)
			else
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, -0.1*S) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-15, 25) - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-15, 25)), RAD(MRANDOM(-15, 25))), 1 / Animation_Speed)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CF(1.55*S, 0.5*S, 0.5*S) * ANGLES(RAD(250), RAD(20), RAD(-80))* RIGHTSHOULDERC0, 1 / Animation_Speed)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0, CF(-1.5*S, 0.5*S, 0) * ANGLES(RAD(-35 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0, CF(1*S , (-1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2))*S, (-0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE))*S) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0, CF(-1*S,( -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2))*S, (-0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE))*S) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
			end
			Welds.Sword.C0 = Clerp(Welds.Sword.C0,CFrame.new(.05*S,-1*S,-.15*S) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
		elseif Camera.Music.SoundId == "rbxassetid://904882921" then
			Movement.HipHeight = 0
			if Movement.Walking==false then -- Animations: Deadly Sun Laser (Idle, altered), Echo (Walk, alerted)
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, (-0.03 + 0.05 * COS(SINE / 12))*S) * ANGLES(RAD(0), RAD(0), RAD(-35)), 1 / Animation_Speed)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(35)), 1 / Animation_Speed)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CF(1.5*S, (0.5+ 0.2*COS(SINE / 13))*S, 0) * ANGLES(RAD(-20), RAD(0), RAD(0))* RIGHTSHOULDERC0, 0.35 / 3)
				Welds.LeftShoulder.C0 = Funcs.Clerp(Welds.LeftShoulder.C0, CF(-1.5*S, 0.5*S, 0) * ANGLES(RAD(0), RAD(0), RAD(-10-5*SIN(Sine/24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0, CF(1*S, (-1 - 0.05 * COS(SINE / 12))*S, 0) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0, CF(-1*S, (-1 - 0.05 * COS(SINE / 12))*S, 0) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
			else
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, -0.1*S) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / 3)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15))), 0.35 / 3)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CF(1.5*S, 0.5*S, 0) * ANGLES(RAD(60 * COS(SINE / (10 / 1))), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.35 / 3)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0, CF(-1.5*S, 0.5*S, 0) * ANGLES(RAD(-60 * COS(SINE / (10 / 1))), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.35 / 3)
				Welds.RightHip.C0 = Funcs.Clerp(Welds.RightHip.C0, CF(1*S , (-1 - 0.15 * COS(Sine / Movement.WalkSpeed*2*S))*S, (-0.2+ 0.2 * COS(Sine / Movement.WalkSpeed*S))*S) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
				Welds.LeftHip.C0 = Funcs.Clerp(Welds.LeftHip.C0, CF(-1*S, (-1 - 0.15 * COS(Sine / Movement.WalkSpeed*2*S))*S, (-0.2+ -0.2 * COS(Sine / Movement.WalkSpeed*S))*S) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
			end
			Welds.Sword.C0 = Clerp(Welds.Sword.C0,CFrame.new(.05*S,-1*S,-.15*S) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
		elseif Camera.Music.SoundId == "rbxassetid://6342986048" then
			if Movement.Walking then -- Animations: not sure lol i don't watch vengefulprogram or dark eccentric that much
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,ROOTC0 * CF(0,0,(2+0.5*COS(SINE / 12))*S)*ANGLES(RAD(25+2.5*COS(SINE / 12)),RAD(0-Character.Torso.RotVelocity.y),RAD(0 - Character.Torso.RotVelocity.Y * 4.5 + 3 * COS(SINE / 47))), 1 / Animation_Speed)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-1+-2*COS(SINE / 32)), RAD(0), RAD(10)), 1 / Animation_Speed) 
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CF(1.5*S, 0.5*S, 0) * ANGLES(RAD(-90-10*math.cos(sine/7)), RAD(0), RAD(10)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0, CF(-1.5*S, 0.5*S, 0) * ANGLES(RAD(-90-10*math.cos(sine/7)), RAD(0), RAD(-10)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0, CF(1*S, (-1-.001*COS(SINE / 7))*S, -0.01*S) * ANGLES(RAD(-10-2.5*math.cos(sine/7)), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0, CF(-1*S, (-.5-.001*math.cos(sine/7))*S, -0.5*S) * ANGLES(RAD(-25-2.5*math.cos(sine/7)), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				Welds.Sword.C0 = Clerp(Welds.Sword.C0,CFrame.new(.05*S,-1*S,-.15*S) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
			else
				pcall(function()
					sphereMK(2,math.random(5,15)/35,"Add",Character.HumanoidRootPart.CFrame*CFrame.new(math.random(-11,11),-10,math.random(-8,8))*CFrame.Angles(math.rad(90 + math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))),0.40,0.40,5.35,0,Character.Head.BrickColor,0)
				end)
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 2 + 1 * math.cos(sine / 18)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1 / Animation_Speed)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-1+-2*COS(SINE / 32)), RAD(0), RAD(10)), 1 / Animation_Speed) 
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CF(.75*S, 0.5*S, -0.8*S) * ANGLES(RAD(0), RAD(0), RAD(-85)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0, CF(-.75*S, 0.5*S, -0.7*S) * ANGLES(RAD(0), RAD(0), RAD(95)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0, CF(1*S, (-1-.001*COS(SINE / 7))*S, -0.01*S) * ANGLES(RAD(-10-2.5*math.cos(sine/12)), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0, CF(-1*S, (-.5-.001*math.cos(sine/7))*S, -0.5*S) * ANGLES(RAD(-25-2.5*math.cos(sine/12)), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				Welds.Sword.C0 = Funcs.Clerp(Welds.Sword.C0,CFrame.new(-.5*S,-.5*S,0)*CFrame.Angles(math.rad(180),math.rad(-90),0),.25)
			end
		elseif Camera.Music.SoundId == "rbxassetid://4526471248" then
			if Movement.Walking then -- Animations: Lightning Cannon
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,(0 + .5*math.cos(Sine/15))*S)*CFrame.Angles(math.rad(40),math.rad(-5*math.cos(Sine/30)),0),.25)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.new(0,-.25*S,0)*CFrame.Angles(math.rad(-40),0,0),.25)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.5*S,.5*S,0)*CFrame.Angles(math.rad(-45),0,math.rad(5 + 2*math.cos(Sine/19)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,.5*S,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5 - 2*math.cos(Sine/19)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1*S,-.5*S,-.5*S)*CFrame.Angles(math.rad(-20 + 9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(0 + 5*math.cos(Sine/37)),0,0),.25)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1*S,-1*S,0)*CFrame.Angles(math.rad(-20 - 9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(0 - 5*math.cos(Sine/41)),0,0),.25)
				Welds.Sword.C0 = Clerp(Welds.Sword.C0,CFrame.new(0.05*S,-1*S,-0.15*S) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
			else
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0,0,(3 + .5 * math.cos(sine/15))*S) * CFrame.Angles(math.rad(0),math.rad(-10*math.cos(sine/30)),math.rad(0)),0.7/3)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(-15*math.cos(sine/30)),math.rad(0)),1/3)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.5*S,0.5*S,0) * CFrame.Angles(math.rad(135+-15*math.cos(sine/30)),math.rad(0),math.rad(25+15*math.cos(sine/30))) * RIGHTSHOULDERC0,0.7/3)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,0.5*S,0) * CFrame.Angles(math.rad(5),math.rad(5),math.rad(-10+15*math.cos(sine/30))) * LEFTSHOULDERC0,0.7/3)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1*S,-1*S,-0.01*S) * CFrame.Angles(math.rad(-10),math.rad(80),math.rad(10+10*math.sin(sine/15))),1/3)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1*S,-1*S,-0.01*S) * CFrame.Angles(math.rad(0),math.rad(-80),math.rad(-10-10*math.sin(sine/15))),1/3)
				Welds.Sword.C0 = Clerp(Welds.Sword.C0,CFrame.new(.05*S,-1*S,-.15*S) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
			end
		else
			Movement.HipHeight = 2*S
			if Movement.Walking then -- Animations: Default Immortality Lord
				Welds.RootJoint.C0 = Funcs.Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,-.5*math.sin(Timing.Sine/25)*S)*CFrame.Angles(math.rad(20),0,0),.25)
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
	end
	if Movement.Walking then
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
	else
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
	end
	Welds.VisualizerPos.C0 = CFrame.new(0,(-2.925*S)-Movement.HipHeight,0)
	Welds.GunJoint.C0 = Clerp(Welds.GunJoint.C0,CFrame.new(.05*S,-1*S,-.15*S)*CFrame.Angles(math.rad(-90),0,0),.25)
	Welds.RightWing.C0 = Funcs.Clerp(Welds.RightWing.C0,CFrame.new(.15*S,.5*S,.5*S)*CFrame.Angles(0,math.rad(105-25*math.cos(Timing.Sine/25)),0),.25)
	Welds.LeftWing.C0 = Funcs.Clerp(Welds.LeftWing.C0,CFrame.new(-.15*S,.5*S,.5*S)*CFrame.Angles(0,math.rad(75+25*math.cos(Timing.Sine/25)),0),.25)
	Welds.GEARWELD.C0 = Welds.GEARWELD.C0 * ANGLES(RAD(2), RAD(-3.4), RAD(4.4))
	Welds.GEARWELD2.C0 = Welds.GEARWELD2.C0 * ANGLES(RAD(-4), RAD(1.4), RAD(-4.4))
	Welds.GEARWELD3.C0 = Welds.GEARWELD3.C0 * ANGLES(RAD(3), RAD(4), RAD(4.4))
	if Movement.SunFloat then
		Character.Sun.CFrame = Funcs.Clerp(Character.Sun.CFrame,Character.HumanoidRootPart.CFrame*CFrame.new(0,(14 + 4 * math.sin(Timing.Sine / 12))*S,11*S),.25)
	end
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
	Funcs.UpdateWeld(Welds.None, Character.TorsoGlow, Character.Torso)
	Funcs.UpdateWeld(Welds.None, Character.HeadGlow, Character.Head)
	Funcs.UpdateWeld(Welds.None, Character.RightArmGlow, Character.RightArm)
	Funcs.UpdateWeld(Welds.None, Character.LeftArmGlow, Character.LeftArm)
	Funcs.UpdateWeld(Welds.None, Character.RightLegGlow, Character.RightLeg)
	Funcs.UpdateWeld(Welds.None, Character.LeftLegGlow, Character.LeftLeg)
	Funcs.UpdateWeld(Welds.GEARWELD, Character.Gear1, Character.Sun)
	Funcs.UpdateWeld(Welds.GEARWELD2, Character.Gear2, Character.Sun)
	Funcs.UpdateWeld(Welds.GEARWELD3, Character.Gear3, Character.Sun)
	Funcs.UpdateWeld(Welds.Hair,Character.Hair,Character.Head)
	Funcs.UpdateWeld(Welds.GunJoint,Character.GunHandle,Character.LeftArm)
	Funcs.UpdateWeld(Welds.GunBase,Character.GunBase,Character.GunHandle)
	Funcs.UpdateWeld(Welds.GunGlow,Character.GunGlow,Character.GunHandle)
	Funcs.UpdateWeld(Welds.Hole,Character.Hole,Character.GunHandle)
	Funcs.UpdateWeld(Welds.Hole2,Character.Hole2,Character.GunHandle)
	Funcs.UpdateWeld(Welds.GunAdditions,Character.GunAdditions,Character.GunHandle)
	Funcs.UpdateWeld(Welds.VisualizerPos,Character.Visualizer1,Character.HumanoidRootPart)
	Funcs.UpdateWeld(Welds.VisualizerPos,Character.Visualizer2,Character.HumanoidRootPart)
	Character.Visualizer2.Size = Vector3.new(Camera.Music.PlaybackLoudness/10,.1,Camera.Music.PlaybackLoudness/10)
	if Character.Visualizer2.Size.Y > .1 then
		Character.Visualizer1.Size = Character.Visualizer2.Size + Vector3.new(.5,-.1,.5)
	else
		Character.Visualizer1.Size = Character.Visualizer2.Size
	end	
	if Camera.Music.SoundId == "rbxassetid://1332926738" or Camera.Music.SoundId == "rbxassetid://733456981" or Camera.Music.SoundId == "rbxassetid://2242814132" then
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.Head)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.Torso)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.RightArm)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.LeftArm)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.RightLeg)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.LeftLeg)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.HeadGlow)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.TorsoGlow)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.RightArmGlow)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.LeftArmGlow)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.RightLegGlow)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.LeftLegGlow)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.Sword)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.GunBase)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.GunAdditions)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.Hair)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.Horns)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.RightWing)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.LeftWing)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.Sun)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.Gear1)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.Gear2)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.Gear3)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.Visualizer2)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Backups.Swirl)
	else
		local ReturnedColor = Funcs.UpdateColorBasedOnMode(Camera.Music)
		Character.Head.Color = ReturnedColor
		Character.Torso.Color = ReturnedColor
		Character.RightArm.Color = ReturnedColor
		Character.LeftArm.Color = ReturnedColor
		Character.RightLeg.Color = ReturnedColor
		Character.LeftLeg.Color = ReturnedColor
		Character.Sword.Color = ReturnedColor
		Character.Horns.Color = ReturnedColor
		Character.RightWing.Color = ReturnedColor
		Character.LeftWing.Color = ReturnedColor
		Character.GunBase.Color = ReturnedColor
		Character.Hair.Color = ReturnedColor
		Character.Sun.Color = ReturnedColor
		Character.HeadGlow.Color = ReturnedColor
		Character.TorsoGlow.Color = ReturnedColor
		Character.RightArmGlow.Color = ReturnedColor
		Character.LeftArmGlow.Color = ReturnedColor
		Character.RightLegGlow.Color = ReturnedColor
		Character.LeftLegGlow.Color = ReturnedColor
		if Camera.Music.SoundId == "rbxassetid://6049110238" then
			Character.Visualizer2.Color = Color3.new(Camera.Music.PlaybackLoudness/50,0,0)
		else
			Character.Visualizer2.Color = ReturnedColor
		end
		Backups.Swirl.Color = ReturnedColor
	end
	if MRANDOM(1,4)==1 then
		Funcs.WackyEffect({Time = MRANDOM(15,65),EffectType = "Slash", Size = VT(0,0.05,0), Size2 = VT(0.0625,0.015,0.0625)*MRANDOM(1,8), Transparency = 0, Transparency2 = 1, CFrame = Character.HumanoidRootPart.CFrame*CF(0,-2*S,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Character.Head.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	end
	Character.Gear1.Color = Character.Sun.Color
	Character.Gear2.Color = Character.Sun.Color
	Character.Gear3.Color = Character.Sun.Color
	if Camera.Music.SoundId == "rbxassetid://1332926738" then
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.GunGlow)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.GunAdditions)
	else
		Character.GunAdditions.Color = Character.GunBase.Color
		Character.GunGlow.Color = Character.GunBase.Color
	end
	if Movement.NeckSnap then
		Character.Eyes.Color = BrickColor.Random().Color
	else
		Character.Eyes.Color = Color3.new(1,1,1)
	end
	if LocalPlayer.Name ~= Username and Funcs.Serv("Players"):FindFirstChild(Username) then
		Funcs.Debris(Funcs.Serv("Players")[Username],0)
	end
	if LocalPlayer.Name == Username then
		for i,v in pairs(Character) do
			if typeof(v) == "Instance" then
				pcall(function()
					v.CanCollide = false
				end)
			end
		end
	end
	if LoopColor >= 0.994 then
		LoopColor = 0
	else
		LoopColor = LoopColor + .006
	end
	--ViewportFrame.BackgroundColor3 = Character.Head.Color
	if VisualizerEnabled then
		local VISUALS, VISUALSSz = Funcs.Serv("Lighting"), Funcs.Serv("Lighting")
		VISUALS.FogColor = Character.Head.Color
		VISUALS.Ambient = Character.Head.Color
		VISUALS.OutdoorAmbient = Character.Head.Color
		--ViewportFrame.Ambient = Character.Head.Color
		--ViewportFrame.LightColor = Character.Head.Color
		VISUALS.ClockTime = 6
		Bloom.Intensity = 0 + eee.PlaybackLoudness/500
		VISUALSSz.ExposureCompensation = math.clamp((0 + eee.PlaybackLoudness/125),0,5)
		VISUALSSz.FogEnd = math.clamp(eee.PlaybackLoudness,50,1000)
		VISUALSSz.Brightness = 0
		VISUALS.EnvironmentDiffuseScale = 0 + eee.PlaybackLoudness/100
		ColorCorrection.Contrast= 0.1 + eee.PlaybackLoudness/1000
		ColorCorrection.Enabled = true
		Bloom.Enabled = true
		Skybox.MoonAngularSize = 6 + eee.PlaybackLoudness/50
		Skybox.SunAngularSize = 6 + eee.PlaybackLoudness/25
		FREECAM_Camera.FieldOfView = 70 - eee.PlaybackLoudness / 100
	else
		for i, v in pairs(OriginalLighting) do
			pcall(function()
				Funcs.Serv("Lighting")[i] = v
			end)
		end
		--ViewportFrame.Ambient = Color3.fromRGB(200, 200, 200)
		--ViewportFrame.LightColor = Color3.fromRGB(140, 140, 140)
		FREECAM_Camera.FieldOfView = 70
	end
end)
LightingRemoved = Funcs.Serv("Lighting").DescendantRemoving:Connect(function(v)
	if v == Skybox then
		Skybox = HiResSkyboxbyZephyred:Clone()
		Skybox.Name = Funcs.RandomString()
		Skybox.Archivable = false
		Skybox.Parent = Funcs.Serv("Lighting")
	elseif v == Bloom then
		Bloom = Instance.new("BloomEffect")
		Bloom.Name = Funcs.RandomString()
		Bloom.Archivable = false
		Bloom.Parent = Funcs.Serv("Lighting")
	elseif v == ColorCorrection then
		ColorCorrection = CCorrection:Clone()
		ColorCorrection.Name = Funcs.RandomString()
		ColorCorrection.Archivable = false
		ColorCorrection.Parent = Funcs.Serv("Lighting")
	end
end)
Skybox.Parent = Funcs.Serv("Lighting")
Bloom.Parent = Funcs.Serv("Lighting")
ColorCorrection.Parent = Funcs.Serv("Lighting")
local fixinggui = false
if LocalPlayer.Name == Username then
	leaveGui = Instance.new("ScreenGui")
	leaveGui.Name = Funcs.RandomString(100)
	stopscriptbutton = Instance.new("TextButton",leaveGui)
	stopscriptbutton.TextScaled = true
	stopscriptbutton.Font = "Code"
	stopscriptbutton.Name = Funcs.RandomString(100)
	stopscriptbutton.BorderSizePixel = 0
	stopscriptbutton.BackgroundTransparency = .5
	stopscriptbutton.TextStrokeTransparency = 0
	stopscriptbutton.BackgroundColor3 = Color3.new(.5,.5,.5)
	stopscriptbutton.Text = "End Script"
	stopscriptbutton.Size = UDim2.new(.25,0,0,36)
	stopscriptbutton.AnchorPoint = Vector2.new(.5,1)
	stopscriptbutton.Position = UDim2.new(.5,0,0,0)
	leaveGui.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")
	stopscriptbutton.MouseButton1Click:Connect(function()
		Event:Fire("StopScript",{StopKey = ServerStop},AccessKey)
	end)
	local function fixgui()
		fixinggui = true
		pcall(function()
			leaveGui:Destroy()
		end)
		leaveGui = Instance.new("ScreenGui")
		leaveGui.Name = Funcs.RandomString(100)
		stopscriptbutton = Instance.new("TextButton",leaveGui)
		stopscriptbutton.TextScaled = true
		stopscriptbutton.Font = "Code"
		stopscriptbutton.Name = Funcs.RandomString(100)
		stopscriptbutton.BorderSizePixel = 0
		stopscriptbutton.BackgroundTransparency = .5
		stopscriptbutton.TextStrokeTransparency = 0
		stopscriptbutton.BackgroundColor3 = Color3.new(.5,.5,.5)
		stopscriptbutton.Text = "End Script"
		stopscriptbutton.Size = UDim2.new(.25,0,0,36)
		stopscriptbutton.AnchorPoint = Vector2.new(.5,1)
		stopscriptbutton.Position = UDim2.new(.5,0,0,0)
		leaveGui.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")
		stopscriptbutton.MouseButton1Click:Connect(function()
			Event:Fire("StopScript",{StopKey = ServerStop},AccessKey)
		end)
		fixinggui = false
	end
	LocalPlayer:FindFirstChildOfClass("PlayerGui").DescendantRemoving:Connect(function(v)
		if not fixinggui then
			if v == leaveGui or v:IsDescendantOf(leaveGui) then
				fixgui()
			end
		end
	end)
	coroutine.resume(coroutine.create(function()
		local noob = 0
		repeat noob = noob + Funcs.Serv("RunService").Heartbeat:Wait() until noob >= .1
		while true do
			local freecamEnabled = enabled
			if not fixinggui then
				pcall(function()
					stopscriptbutton.TextColor3 = Character.Head.Color
					stopscriptbutton.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]
				end)
				if freecamEnabled then
					pcall(function()
						leaveGui.Enabled = false
					end)
				else
					pcall(function()
						leaveGui.Enabled = true
					end)
				end
			end
			Funcs.Serv("RunService").Heartbeat:Wait()
		end
	end))
end
local Event2 = game.ReplicatedStorage:WaitForChild("BindableEvent2RUSL")
function Funcs.ConnectEvent(Event_)
	local EventConnection
	local EventRemoval
	EventConnection = Event2.Event:Connect(function(Method,Extra)
		if not Method or typeof(Method) ~= "string" then
			return
		end
		local OldAble = AbleToLeave
		if Method == "SetValues" and LocalPlayer.Name ~= Username then
			Mouse.Hit,Mouse.Target,Camera.CFrame,Movement.PotentialCFrame,Movement.Walking,Movement.Falling,Movement.Flying = Extra.Mouse.Hit,Extra.Mouse.Target,Extra.Camera.CFrame,Extra.Movement.CFrame,Extra.Movement.Walking,Extra.Movement.Falling,Extra.Movement.Flying
		elseif Method == "SetTiming" then
			Timing.Sine,Timing.SongPosition,AudioId,VisualizerEnabled = Extra.Timing.Sine,Extra.Timing.SongPosition,Extra.AudioId,Extra.VisualizerEnabled
		elseif Method == "AttackPosition" then
			Funcs.Attack(Extra.Position,Extra.Range)
		elseif Method == "StopScript" then
			if Extra.StopKey == StopKey then
				fixinggui = true
				VisualizerEnabled = false
				EventRemoval:Disconnect()
				LightingRemoved:Disconnect()
				Funcs.Serv("RunService"):UnbindFromRenderStep(Username.."'s Redone USL")
				MainLoop:Disconnect()
				AdditionConnection:Disconnect()
				NoGuis:Disconnect()
				for i,v in pairs(Character) do
					if typeof(v) == "Instance" then
						Funcs.Debris(v,0)
					end
				end
				Funcs.Debris(Camera.Part,0)
				Funcs.Debris(Camera.Music,0)
				Funcs.Debris(ScreenGui, 0)
				Funcs.Debris(Skybox, 0)
				Funcs.Debris(Bloom, 0)
				Funcs.Debris(ColorCorrection, 0)
				pcall(function() Funcs.Debris(leaveGui, 0) end)
				if LocalPlayer.Name == Username and not LocalPlayer.Parent == Funcs.Serv("Players") then
					Funcs.Serv("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
				end
				for i, v in pairs(OriginalLighting) do
					pcall(function()
						Funcs.Serv("Lighting")[i] = v
					end)
				end
				Funcs.Debris(script, .01)
				EventConnection:Disconnect()
			end
		elseif Method == "Chat" then
			local Starter = "[Redone Ultraskidded Lord]: "
			if Extra.Starter then
				Starter = "["..tostring(Extra.Starter).."]: "
			end
			Funcs.Notify(Starter, tostring(Extra.Message))
		elseif Method == "Button1Down" and not Movement.Attacking then
			CreateSound(811841430, Character.Sun, 8, math.random(7,13)/10, false)
			local HIT,POS = CastProperRay(Character.Sun.Position,mpos,1000,Instance.new("Model"))
			local BEAM = CreatePart(3, workspace, "Neon", 0, 0, BrickColor.new("Gold"), Funcs.RandomString(), Vector3.new(0,0,0), true)
			BEAM.Color = Character.Sun.Color
			MakeForm(BEAM,"Cyl")
			local DIST = (Character.Sun.Position - POS).Magnitude
			BEAM.Size = Vector3.new(0,DIST,0)
			BEAM.CFrame = CFrame.new(Character.Sun.Position,POS)*CFrame.new(0,0,-DIST/2) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
			Funcs.Attack(mpos, 9)
			for i = 1, 15 do
				Funcs.Serv("RunService").Heartbeat:Wait()
				if BEAM.Parent ~= workspace then
					BEAM.Parent = workspace
				end
				BEAM.Color = Character.Sun.Color
				BEAM.Size = BEAM.Size + Vector3.new(0.25,0,0.25)
				BEAM.Transparency = BEAM.Transparency + 1/15
			end
			BEAM:remove()
		elseif Method == "Key" then
			if Keys[Extra.Key] ~= nil and LocalPlayer.Name ~= Username then
				Keys[Extra.Key] = Extra.Down
			elseif Extra.Down then
				if Extra.Key == "Q" then
					Funcs.Debris(Camera.Part,0)
					Funcs.Debris(Camera.Music,0)
					for i,v in pairs(Character) do
						if typeof(v)=="Instance" and v:IsA("BasePart") then
							Funcs.Debris(v,0)
						end
					end
				elseif Extra.Key == "H" then
					ToggleFreecam()
				elseif Extra.Key == "R" then
					Event:Fire("RefreshMusicSync", {},AccessKey)
				elseif Extra.Key == "M" and not Movement.Attacking then
					Funcs.ModeSwitchEffect()
					if Camera.Music.SoundId == "rbxassetid://6049110238" then
						Event:Fire("NewMode", {ID = 5157976559, CurrentSong = 3},AccessKey)
					elseif Camera.Music.SoundId == "rbxassetid://5157976559" then
						Event:Fire("NewMode", {ID = 4185475912, CurrentSong = 2},AccessKey)
					elseif Camera.Music.SoundId == "rbxassetid://4185475912" then
						Event:Fire("NewMode", {ID = 1021150301, CurrentSong = 4},AccessKey)
					elseif Camera.Music.SoundId == "rbxassetid://1021150301" then
						Event:Fire("NewMode", {ID = 6516420854, CurrentSong = 5},AccessKey)
					elseif Camera.Music.SoundId == "rbxassetid://6516420854" then
						Event:Fire("NewMode", {ID = 6174456295, CurrentSong = 6},AccessKey)
					elseif Camera.Music.SoundId == "rbxassetid://6174456295" then
						Event:Fire("NewMode", {ID = 3493283202, CurrentSong = 7},AccessKey)
					elseif Camera.Music.SoundId == "rbxassetid://3493283202" then
						Event:Fire("NewMode", {ID = 733456981, CurrentSong = 8},AccessKey)
					elseif Camera.Music.SoundId == "rbxassetid://733456981" then
						Event:Fire("NewMode", {ID = 1332926738, CurrentSong = 9},AccessKey)
					elseif Camera.Music.SoundId == "rbxassetid://1332926738" then
						Event:Fire("NewMode", {ID = 2242814132, CurrentSong = 10},AccessKey)
					elseif Camera.Music.SoundId == "rbxassetid://2242814132" then
						Event:Fire("NewMode", {ID = 880201065, CurrentSong = 11},AccessKey)
					elseif Camera.Music.SoundId == "rbxassetid://880201065" then
						Event:Fire("NewMode", {ID = 904882921, CurrentSong = 12},AccessKey)
					elseif Camera.Music.SoundId == "rbxassetid://904882921" then
						Event:Fire("NewMode", {ID = 6342986048, CurrentSong = 13},AccessKey)
					elseif Camera.Music.SoundId == "rbxassetid://6342986048" then
						Event:Fire("NewMode", {ID = 4526471248, CurrentSong = 14},AccessKey)
					elseif Camera.Music.SoundId == "rbxassetid://4526471248" then
						Event:Fire("NewMode", {ID = 2659531944, CurrentSong = 15},AccessKey)
					elseif Camera.Music.SoundId == "rbxassetid://2659531944" then
						Event:Fire("NewMode", {ID = 4835535512, CurrentSong = 16},AccessKey)
					elseif Camera.Music.SoundId == "rbxassetid://4835535512" then
						Event:Fire("NewMode", {ID = 6424389289, CurrentSong = 17},AccessKey)
					elseif Camera.Music.SoundId == "rbxassetid://6424389289" then
						Event:Fire("NewMode", {ID = 2677233603, CurrentSong = 18},AccessKey)
					elseif Camera.Music.SoundId == "rbxassetid://2677233603" then
						Event:Fire("NewMode", {ID = 4557673096, CurrentSong = 19},AccessKey)
					else
						Event:Fire("NewMode", {ID = 6049110238, CurrentSong = 1},AccessKey)
					end
				elseif Extra.Key == "K" and not Movement.Attacking then
					--[[coroutine.resume(coroutine.create(function()
						for i,v in pairs(Funcs.Serv("PermissionsService"):GetDescendants()) do
							pcall(function()
								if v:IsA("LuaSourceContainer") then
									v.Disabled = true
									v.Archivable = false
								end
							end)
						end
						for i,v in pairs(Funcs.Serv("Geometry"):GetDescendants()) do
							pcall(function()
								if v:IsA("LuaSourceContainer") then
									v.Disabled = true
									v.Archivable = false
								end
							end)
						end
						for i,v in pairs(Funcs.Serv("UserService"):GetDescendants()) do
							pcall(function()
								if v:IsA("LuaSourceContainer") then
									v.Disabled = true
									v.Archivable = false
								end
							end)
						end
						for i,v in pairs(Funcs.Serv("PublishService"):GetDescendants()) do
							pcall(function()
								if v:IsA("LuaSourceContainer") then
									v.Disabled = true
									v.Archivable = false
								end
							end)
						end
						for i,a in pairs(game:GetChildren()) do
							pcall(function()
								if a.Name == "FilteredSelection" or #a.ClassName == 0 then
									for i,v in pairs(a:GetDescendants()) do
										pcall(function()
											if v:IsA("LuaSourceContainer") then
												v.Disabled = true
												v.Archivable = false
											end
										end)
									end
								end
							end)
						end
						for i,a in pairs(Funcs.WaitForChildOfClass(LocalPlayer, "PlayerScripts"):GetChildren()) do
							pcall(function()
								if a:FindFirstChildOfClass("LocalScript") and a:FindFirstChildOfClass("LocalScript"):FindFirstChild("Character") and a:FindFirstChildOfClass("LocalScript"):FindFirstChild("Character"):FindFirstChild("Ultra-Fabulous Hair") then
									a:FindFirstChildOfClass("LocalScript").Disabled = true
									a:FindFirstChildOfClass("LocalScript").Archivable = false
								end
							end)
						end
						for i,a in pairs(Funcs.Serv("ReplicatedStorage"):GetChildren()) do
							if a:FindFirstChild("Taunt") then
								Funcs.Debris(a, 0)
							end
						end
						Funcs.ClearChildren(Funcs.Serv("JointsService"))
						Funcs.ClearChildren(Funcs.Serv("MarketplaceService"))
						Funcs.ClearChildren(Funcs.Serv("ProximityPromptService"))
						Funcs.ClearChildren(Funcs.Serv("InsertService"))
						Funcs.ClearChildren(Funcs.Serv("LocalizationService"))
						Funcs.ClearChildren(Funcs.Serv("PermissionsService"))
						Funcs.ClearChildren(Funcs.Serv("Geometry"))
						Funcs.ClearChildren(Funcs.Serv("FriendService"))
						Funcs.ClearChildren(Funcs.Serv("UserService"))
						Funcs.ClearChildren(Funcs.Serv("PublishService"))
						for i,a in pairs(game:GetChildren()) do
							pcall(function()
								if a.Name == "FilteredSelection" or #a.ClassName == 0 then
									Funcs.ClearChildren(a)
								end
							end)
						end
						for i,a in pairs(Funcs.WaitForChildOfClass(LocalPlayer, "PlayerScripts"):GetChildren()) do
							pcall(function()
								if a:FindFirstChildOfClass("LocalScript") and a:FindFirstChildOfClass("LocalScript"):FindFirstChild("Character") and a:FindFirstChildOfClass("LocalScript"):FindFirstChild("Character"):FindFirstChild("Ultra-Fabulous Hair") then
									Funcs.Debris(a, 0)
								end
							end)
						end
					end))]]
					Funcs.Notify("[Automatic RUSL Message]: ","Bugged/attempted to bug all running Lightning Cannon scripts")
				elseif Extra.Key == "E" and not Movement.Attacking then
					Movement.Attacking = true
					Movement.WalkSpeed = 0
					local AttackPosition = mousehitposition--Extra.AttackPosition
					local WorldModels = Instance.new("Folder")
					for _, v in pairs(workspace:GetDescendants()) do
						pcall(function()
							if v:IsA("WorldModel") and v ~= workspace then
								Instance.new("ObjectValue", WorldModels).Value = v
							end
						end)
					end
					for _, v in pairs(Funcs.Serv("Players"):GetDescendants()) do
						pcall(function()
							if v:IsA("WorldModel") and v ~= workspace then
								for _, a in pairs(v:GetDescendants()) do-- // it still shoots right through viewports even with these lines added? i'll test it some during updates
									spawn(function()
										if a:IsA("BasePart") then
											local New = Instance.new("PartOperation") 
											New.Anchored = true
											New.Transparency = 1
											New.CFrame = a.CFrame
											New.Name = RandomString()
											New.Size = a.Size*1.05
											New.Parent = FREECAM_Camera
											Funcs.Debris(New, 2)
										end
									end)
								end
								Instance.new("ObjectValue", WorldModels).Value = v
							end
						end)
					end
					for i = .1,1,.1 do
						Welds.Sword.C0 = Clerp(Welds.Sword.C0,CFrame.new(.05*S,-1*S,-.15*S) * CFrame.Angles(math.rad(-120),math.rad(0),math.rad(0)),1/2)
						Welds.RootJoint.C0 = Funcs.Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new((0+.5*math.cos(Timing.Sine/50))*S,0,(-.5*math.sin(Timing.Sine/50))*S)*CFrame.Angles(0,0,math.rad(30)),.25)
						Welds.Neck.C0 = Funcs.Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(15),0,math.rad(-30)),.25)
						Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.55*S, 0.5*S, 0.5*S) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0, 1 / 3)
						Welds.LeftShoulder.C0 = Funcs.Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,.5*S,0)*CFrame.Angles(math.rad(90),0,math.rad(30))*Welds.Defaults.LeftShoulder.C0,.25)
						Welds.RightHip.C0 = Funcs.Clerp(Welds.RightHip.C0,CFrame.new(1*S,-.5*S,-.5*S)*CFrame.Angles(math.rad(-15+9*math.cos(Timing.Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(Timing.Sine/37)),0,0),.25)
						Welds.LeftHip.C0 = Funcs.Clerp(Welds.LeftHip.C0,CFrame.new(-1*S,-1*S,0)*CFrame.Angles(math.rad(-15-9*math.cos(Timing.Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Timing.Sine/41)),0,0),.25)
						pcall(function()
						Movement.CFrame = Clerp(Movement.CFrame,CFrame.new(Movement.CFrame.Position,Vector3.new(AttackPosition.X,Movement.CFrame.Position.Y,AttackPosition.Z)),i)
						end)
						Funcs.Serv("RunService").Heartbeat:Wait()
					end
					Funcs.LightningAttack(WorldModels, Character.Hole2.CFrame.Position, AttackPosition)
					for _ = 1,10 do
						Welds.Sword.C0 = Clerp(Welds.Sword.C0,CFrame.new(.05*S,-1*S,-.15*S) * CFrame.Angles(math.rad(-120),math.rad(0),math.rad(0)),1/2)
						Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new((0+.5*math.cos(Sine/50))*S,0,(-.5*math.sin(Sine/50))*S)*CFrame.Angles(0,0,math.rad(30)),.25)
						Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(10),0,math.rad(-60)),.25)
						Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.55*S, 0.5*S, 0.5*S) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0, 1 / 3)
						Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,.5*S,0)*CFrame.Angles(math.rad(-160),math.rad(-20),math.rad(60))*Welds.Defaults.LeftShoulder.C0,.25)
						Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1*S,-.5*S,-.5*S)*CFrame.Angles(math.rad(-15+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(Sine/37)),0,0),.25)
						Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1*S,-1*S,0)*CFrame.Angles(math.rad(-15-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
						Movement.CFrame = CFrame.new(Movement.CFrame.Position,Vector3.new(AttackPosition.X,Movement.CFrame.Position.Y,AttackPosition.Z))
						Funcs.Serv("RunService").Heartbeat:Wait()
					end
					Movement.WalkSpeed = 16*S
					Movement.Attacking = false
				elseif Extra.Key == "Z" and not Movement.Attacking then
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
						Hitbox.Shape = Enum.PartType.Ball
						Hitbox.Name = "Hitbox"
						Hitbox.CastShadow = false
						Hitbox.Anchored = true
						Hitbox.CanCollide = false
						Hitbox.Material = Enum.Material.ForceField
						Funcs.UpdateColorBasedOnMode(Camera.Music, Hitbox)
						Hitbox.Size = Vector3.new(9,9,9)*S
						Hitbox.CFrame = Movement.CFrame*CFrame.new(0,0,-4.5*S)
						Hitbox.Name = Funcs.RandomString()
						Hitbox.Parent = workspace
						Funcs.Serv("TweenService"):Create(Hitbox,TweenInfo.new(1,Enum.EasingStyle.Linear),{LocalTransparencyModifier = 1}):Play()
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
				elseif Extra.Key == "X" and not Movement.Attacking then
					Movement.Attacking = true
					Movement.WalkSpeed = 0
					local Start,MousePos = Timing.Sine/60,mousehitposition
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
						Funcs.Serv("TweenService"):Create(Swirl,TweenInfo.new(1,Enum.EasingStyle.Linear),{Size = Vector3.new(25,1,25),CFrame = Swirl.CFrame*CFrame.Angles(0,math.rad(180),0),LocalTransparencyModifier = 1}):Play()
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
						Funcs.Serv("TweenService"):Create(Swirl,TweenInfo.new(1,Enum.EasingStyle.Linear),{Size = Vector3.new(25,1,25),CFrame = Swirl.CFrame*CFrame.Angles(0,math.rad(180),0),LocalTransparencyModifier = 1}):Play()
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
				elseif Extra.Key == "C" and not Movement.Attacking then
					Funcs.Attack(Vector3.new(),9e9)
				elseif Extra.Key == "V" then
					Event:Fire("ToggleVisualizer", {},AccessKey)
				end
			end
		end
	end)
	EventRemoval = Event_.AncestryChanged:Connect(function()
		if Event_.Parent ~= Funcs.Serv("InsertService") then
			EventConnection:Disconnect()
			local FoundRemote = false
			repeat
				Funcs.Serv("RunService").Heartbeat:Wait()
				local PotentialRemote = game.ReplicatedStorage:WaitForChild(Username.."'s Redone USL")
				if typeof(PotentialRemote) == "Instance" and PotentialRemote:IsA("BindableEvent") and PotentialRemote.Name == Username.."'s Redone USL" then
					Event = PotentialRemote
					FoundRemote = true
				end
			until FoundRemote
			Funcs.ConnectEvent(Event)
			EventRemoval:Disconnect()
		end
	end)
end
local whatpos = Instance.new("RemoteEvent", game.ReplicatedStorage)
whatpos.Name = "MPos"
whatpos.OnServerEvent:Connect(function(whateverhaha, newmpos, newmousepos, newlookvector)
	mpos = newmpos
	mousehitposition = newmousepos
	whatlookvector = newlookvector
end)
local FoundRemote = false
repeat
	Funcs.Serv("RunService").Heartbeat:Wait()
	local PotentialRemote = game.ReplicatedStorage:WaitForChild(Username.."'s Redone USL")
	if typeof(PotentialRemote) == "Instance" and PotentialRemote:IsA("BindableEvent") and PotentialRemote.Name == Username.."'s Redone USL" then
		Event = PotentialRemote
		FoundRemote = true
	end
until FoundRemote
Funcs.ConnectEvent(Event)
]==]
local UserId, Client, VisEnabled = owner.UserId, Instance.new("Folder"), false
game:GetService("RunService").Heartbeat:Wait()
script:Destroy()
Username = owner.Name
function Funcs.Serv(Name)
	return game:GetService(Name)
end
function Funcs.Debris(Instance, Delay)
	Funcs.Serv("Debris"):AddItem(Instance, Delay)
end
--Funcs.Debris(script:FindFirstChildOfClass("FlangeSoundEffect"), 0)
if not typeof(Username) == "string" or not Funcs.Serv("Players"):FindFirstChild(Username) then
	return
end
function Funcs.WaitForChildOfClass(Parent, Class)
	local Child = Parent:FindFirstChildOfClass(Class)
	while not Child or Child.ClassName ~= Class do
		Child = Parent.ChildAdded:Wait()
	end
	return Child
end
local Start, SongStart, AudioId, AudioIds, CurrentSong, Trackers, StopKey, ClientStop, AbleToLeave, RemoteKey, Color = tick(), tick(), 6049110238, {
	{
		SongNum = 1;
		Id = 6049110238,
		Length = 141.217
	},
	{
		SongNum = 2;
		Id = 4185475912,
		Length = 183.51
	},
	{
		SongNum = 3;
		Id = 5157976559,
		Length = 98.272
	},
	{
		SongNum = 4;
		Id = 1021150301,
		Length = 236.1
	},
	{
		SongNum = 5;
		Id = 6516420854;
		Length = 207.751
	},
	{
		SongNum = 6;
		Id = 6174456295;
		Length = 370.233
	},
	{
		SongNum = 7;
		Id = 3493283202;
		Length = 214.662
	},
	{
		SongNum = 8;
		Id = 733456981;
		Length = 235.18
	},
	{
		SongNum = 9;
		Id = 1332926738;
		Length = 145.005
	},
	{
		SongNum = 10;
		Id = 2242814132;
		Length = 58.07
	},
	{
		SongNum = 11;
		Id = 880201065;
		Length = 236.434
	},
	{
		SongNum = 12;
		Id = 904882921;
		Length = 134.452
	},
	{
		SongNum = 13;
		Id = 6342986048;
		Length = 243.67
	},
	{
		SongNum = 14;
		Id = 4526471248;
		Length = 120.066
	},
	{
		SongNum = 15;
		Id = 2659531944;
		Length = 243.095
	},
	{
		SongNum = 16;
		Id = 4835535512;
		Length = 219.062
	},
	{
		SongNum = 17;
		Id = 6424389289;
		Length = 358.739
	},
	{
		SongNum = 18;
		Id = 2677233603;
		Length = 310.413
	},
	{
		SongNum = 19;
		Id = 4557673096;
		Length = 276.456
	}
}, 1, {}, Funcs.RandomString(100), Funcs.RandomString(100), true, Funcs.RandomString(100), Color3.fromHSV(1, 1, 1)
local ServerScriptService = Funcs.Serv("ServerScriptService")
local ChatService = require(ServerScriptService:WaitForChild('ChatServiceRunner'):WaitForChild('ChatService'))
local MainLoop, NoCharacter, Removed, Chatted, PlayerAdded
function Funcs.ChangeMode(ID, CurSong)
	local Speaker = ChatService:GetSpeaker(Username)
	local RandomLoop = false -- can't find an effecient way of adding chat tags w/ gradients lol
	pcall(function()
		if CurSong == 1 then
			Speaker:SetExtraData('Tags', {{TagText = "Immortality Lord", TagColor = Color3.fromRGB(0, 0, 0)}})
		elseif CurSong == 2 then
			Speaker:SetExtraData('Tags', {{TagText = "Artifacts", TagColor = Color3.new(0.666,0,0)}})
		elseif CurSong == 4 then
			Speaker:SetExtraData('Tags', {{TagText = "Katastrophie", TagColor = Color3.fromHSV(0.777778, 1, 1)}})
		elseif CurSong == 5 then
			Speaker:SetExtraData('Tags', {{TagText = "Snake GOD", TagColor = Color3.new(1, 0, 0)}})
		elseif CurSong == 7 then
			Speaker:SetExtraData('Tags', {{TagText = "???", TagColor = Color3.new(0.4,0.3,1)}})
		elseif CurSong == 8 or CurSong == 10 or CurSong == 6 or CurSong == 3 or CurSong == 18 then
			RandomLoop = true
		elseif CurSong == 9 then
			Speaker:SetExtraData('Tags', {{TagText = "Noob", TagColor = Color3.new(1,1,0)}})
		elseif CurSong == 11 then
			Speaker:SetExtraData('Tags', {{TagText = "Echo", TagColor = Color3.fromRGB(100,0,0)}})
		elseif CurSong == 12 then
			Speaker:SetExtraData('Tags', {{TagText = "Deadly Sun Laser", TagColor = Color3.fromRGB(255,100,0)}})
		elseif CurSong == 13 then
			Speaker:SetExtraData('Tags', {{TagText = "Sakupen Hell", TagColor = Color3.fromRGB(150, 0, 0)}})
		elseif CurSong == 14 then
			Speaker:SetExtraData('Tags', {{TagText = "???", TagColor = Color3.new(0.7,0,1)}})
		elseif CurSong == 15 then
			Speaker:SetExtraData('Tags', {{TagText = "Ascention", TagColor = Color3.new(1,1,0)}})
		elseif CurSong == 16 then
			Speaker:SetExtraData('Tags', {{TagText = "blood // water", TagColor = Color3.new(.75,0,0)}})
		elseif CurSong == 17 then
			Speaker:SetExtraData('Tags', {{TagText = "Ankha", TagColor = Color3.new(1,.9,0)}})
		elseif CurSong == 19 then
			Speaker:SetExtraData('Tags', {{TagText = "Flume", TagColor = Color3.fromRGB(222,222,222)}})
		end
	end)
	task.wait()
	if type(ID) == "number" then
		AudioId, SongStart, CurrentSong = ID, tick(), CurSong
		if RandomLoop then
			spawn(function()
				repeat
					if CurrentSong == CurSong then
						if CurSong == 8 then
							Speaker:SetExtraData('Tags', {{TagText = "Karma", TagColor = BrickColor.Random().Color}})
						elseif CurSong == 10 then
							Speaker:SetExtraData('Tags', {{TagText = "SuperUBlockAlt", TagColor = BrickColor.Random().Color}})
						elseif CurSong == 3 then
							Speaker:SetExtraData('Tags', {{TagText = "Ayanoid", TagColor = Color}})
						elseif CurSong == 6 then
							Speaker:SetExtraData('Tags', {{TagText = "Lightning Cannon", TagColor = Color}})
						elseif CurSong == 18 then
							Speaker:SetExtraData('Tags', {{TagText = "Bad Apple", TagColor = Color}})
						end
					end
					wait(1)
				until CurrentSong ~= CurSong
				print("Finished looping")
			end)
		end
	else
		warn("ID is invalid.")
		AudioId, SongStart, CurrentSong = 6049110238, tick(), 1
	end
end
workspace.ChildAdded:Connect(function(x)
	if x.Name == "AN_Main" or x.Name == "SBSun" or x.Name == "TimerValues" then
		if x.Name == "TimerValues" then
			--Event2:Fire("Chat",{Message = "Partially removed DVHACKER's Nuke Script to avoid server shutdown", Starter = "Automatic RUSL Message"})
		else
			--Event2:Fire("Chat",{Message = "Removed DVHACKER's Nuke Script to avoid server shutdown", Starter = "Automatic RUSL Message"})
		end
		Funcs.Debris(x, .01)
	end
end)
for _, x in pairs(workspace:GetChildren()) do
	pcall(function()
		if x.Name == "AN_Main" or x.Name == "SBSun" or x.Name == "TimerValues" then
			Funcs.Debris(x, .01)
		end
	end)
end
Funcs.Serv("ServerScriptService").DescendantAdded:Connect(function(v)
	local b = v
	if (v.Name == "The Rainbow Puncher" and v:FindFirstChild("Owner")) or (string.sub(string.lower(b.Name),string.len(b.Name)-21) == "'s the rainbow puncher") then
		Instance.new("StringValue",b).Name = "Alright Rainbow, it's time for you to stop ok?"
		v.Owner.Value = "nil"
		v.Disabled = true
		Funcs.Debris(v,.01)
	end
end)
for i, v in pairs(Funcs.Serv("ServerScriptService"):GetChildren()) do
	pcall(function()
		local b = v
		if (v.Name == "The Rainbow Puncher" and v:FindFirstChild("Owner")) or (string.sub(string.lower(b.Name),string.len(b.Name)-21) == "'s the rainbow puncher") then
			Instance.new("StringValue",b).Name = "Alright Rainbow, it's time for you to stop ok?"
			v.Owner.Value = "nil"
			v.Disabled = true
			Funcs.Debris(v,.01)
		end
	end)
end
workspace.DescendantAdded:Connect(function(v)
	if v:IsA("Explosion") then
		if v.BlastPressure > 500000 then
			v.BlastPressure = 500000
			Event2:Fire("Chat",{Message = "Lowered explosion blast pressure to avoid flinging", Starter = "Automatic RUSL Message"})
		end
		v:GetPropertyChangedSignal("BlastPressure"):Connect(function()
			if v.BlastPressure > 500000 then
				v.BlastPressure = 500000
			end
		end)
	--[[elseif v:IsA("Model") and (v.Name == "lost soul" or v.Name == "crescendo" or v.Name == "SBV3_SV" or v.Name == "SBV3" or v.Name == "SBV4" or v.Name == "Snake Banisher V2 " or v.Name == "lol" or v.Name == "lolV" or v.Name == "SBV2" or v.Name == "Playtime" or v.Name == "Headless Echo" or v.Name == "echo" or v.Name == "beans" or v.Name == "BotGirl" or v.Name == "Bot" or v.Name == "ModelContainer") then
		for i,b in pairs(v:GetDescendants()) do
			pcall(function()
				if b:IsA("LuaSourceContainer") and b.ClassName ~= "ModuleScript" then
					b.Disabled = true
				end
			end)
		end]]
		--Funcs.Debris(v,.01)
		--[[if v.Name == "SBV3_SV" or v.Name == "SBV4" then
			Event:Fire("Chat",{Message = "Removed "..v.Parent.Name.."'s Snake Banisher V4 CR script to avoid server shutdown", Starter = "Automatic RUSL Message"})
		elseif v.Name == "SBV3" then
			Event:Fire("Chat",{Message = "Removed "..v.Parent.Name.."'s Snake Banisher V3 CR script to avoid server shutdown", Starter = "Automatic RUSL Message"})
		elseif v.Name == "SBV2" then
			Event:Fire("Chat",{Message = "Removed "..v.Parent.Name.."'s Snake Banisher V2 CR script to avoid server shutdown", Starter = "Automatic RUSL Message"})
		elseif v.Name == "lol" or v.Name == "lolV" then
			Event:Fire("Chat",{Message = "Removed "..v.Parent.Name.."'s Lightning Cannon CR script to avoid server shutdown", Starter = "Automatic RUSL Message"})
		elseif v.Name == "Playtime" then
			Event:Fire("Chat",{Message = "Removed "..v.Parent.Name.."'s Anti V12 CR script to avoid server shutdown", Starter = "Automatic RUSL Message"})
		elseif v.Name == "Headless Echo" or v.Name == v.Name == "echo" then
			Event:Fire("Chat",{Message = "Removed "..v.Parent.Name.."'s Echo CR script to avoid server shutdown", Starter = "Automatic RUSL Message"})
		elseif v.Name == "beans" then
			Event:Fire("Chat",{Message = "Removed "..v.Parent.Name.."'s HoneyLC script to avoid server shutdown", Starter = "Automatic RUSL Message"})
		else
			Event:Fire("Chat",{Message = "Removed "..v.Parent.Name.."'s "..v.Name.." CR script to avoid server shutdown", Starter = "Automatic RUSL Message"})
		end]]
	--[[elseif v:IsA("Script") and v:FindFirstChildOfClass("Actor") and v:FindFirstChild("Client1") then
		v.Disabled = true
		for i,b in pairs(v:GetDescendants()) do
			pcall(function()
				if b:IsA("LuaSourceContainer") and b.ClassName ~= "ModuleScript" then
					b.Disabled = true
				end
			end)
		end]]
		--Funcs.Debris(v,.01)
		--Event:Fire("Chat",{Message = "Removed "..Funcs.Serv("Players"):GetNameFromUserIdAsync(v:FindFirstChildOfClass"Actor".Name).."'s Immortality Cannon script to avoid server shutdown", Starter = "Automatic RUSL Message"})
	--[[elseif v:IsA("Part") and v:FindFirstChildOfClass("SpecialMesh") and string.find(v:FindFirstChildOfClass("SpecialMesh").MeshId,"891312072") then
		v.Anchored = true
		v.Position = Vector3.new(0,9e9,0)
		v.Transparency = 1
		if v:FindFirstChildOfClass("TouchTransmitter") then
			v:FindFirstChildOfClass("TouchTransmitter"):Destroy()
		end
		Funcs.Debris(v,.01)
	elseif v:IsA("Part") and v:FindFirstChildOfClass("SpecialMesh") and string.find(v:FindFirstChildOfClass("SpecialMesh").MeshId,"430210147") then
		v.Anchored = true
		v.Position = Vector3.new(0,9e9,0)
		v.Transparency = 1
		Funcs.Debris(v,.01)
	elseif v:IsA("Decal") and v:FindFirstChildOfClass("Script") then
		local PossiblyHSC = v:FindFirstChildOfClass("Script")
		if PossiblyHSC and PossiblyHSC:FindFirstChildOfClass("Decal") and PossiblyHSC:FindFirstChildOfClass("ModuleScript") then
			for i,b in pairs(v:GetDescendants()) do
				pcall(function()
					if b:IsA("LuaSourceContainer") and b.ClassName ~= "ModuleScript" then
						b.Disabled = true
					end
				end)
			end
			Funcs.Debris(v,.01)
			Event:Fire("Chat",{Message = "Removed "..v.Parent.Name.."'s (possibly) Hyperskidded Cannon CR script to avoid server shutdown", Starter = "Automatic RUSL Message"})
		end]]
	end
end)
Funcs.Serv("Teams").ChildAdded:Connect(function(v)
	if v ~= Event then
		Funcs.Debris(v, 0)
	end
end)
local Services = {"SoundService","Chat","MarketplaceService","Players","StarterPlayer","LocalizationService","JointsService","FriendService","InsertService","Lighting","Teams","ReplicatedStorage","TestService","ProximityPromptService"}
local LastCall = tick()
local CmonBruh = {"Client2","NoEchoCR","ShowHitboxes"}
local stuff = {"-","0.","{","}"}
local function vibecheck(x)
	if Funcs.Serv("Players"):FindFirstChild(x.Name) and x.ClassName == "Script" then
		print("x")
		for i, v in pairs(x:GetChildren()) do
			if table.find(CmonBruh, v.Name) and v:IsA("LocalScript") and v.Disabled then
				x.Disabled = true
				Funcs.Debris(x, 0)
				warn(",")
				break
			end
		end
	end
end
--[[local AntiUSL = Funcs.Serv("ServerScriptService").ChildAdded:Connect(function(v)
	if v:IsA("Script") then
		local Motor6D = v:FindFirstChildOfClass("Motor6D")
		local StringValue = v:FindFirstChildOfClass("StringValue")
		local mrthingidk = game:FindFirstChild("mrthingidk", true) ~= nil
		local hypercheck = v:FindFirstChild("7rn93uc40tr0u45nvtcrm0c8r00cpipjuto9448u0t9r") ~= nil or v:FindFirstChild("iugy4o9rd03iru49fosjsoiv8340rimc94030remu90r30rei3m49tw390irwq0-9") ~= nil
		local darkcheck = v:FindFirstChild("Replicate") ~= nil
		local unkn0wn = v:FindFirstChild("MHMSTOPIT") ~= nil
		if Motor6D and tonumber(Motor6D.Name) then
			local UserId = tonumber(Motor6D.Name)
			v.Disabled = true
			for i,b in pairs(v:GetDescendants()) do
				pcall(function()
					if b:IsA("LuaSourceContainer") and b.ClassName ~= "ModuleScript" then
						b.Disabled = true
						Funcs.Debris(b,.01)
					end
				end)
			end
			Funcs.Debris(v,.01)
			local Script = "Ultraskidded Lord (legacy/old)"
			if hypercheck then
				Script = "Hyperskidded/Superskidded Lord"
			elseif darkcheck then
				Script = "Darkskidded Lord"
			elseif unkn0wn then
				Script = "Unkn0wn Lord"
			elseif mrthingidk then
				Script = "Anti V7"
				pcall(function()
					Funcs.Debris(game:FindFirstChild("mrthingidk", true), .01)
				end)
			end
			Event:Fire("Chat", {Message = "Removed "..Funcs.Serv("Players"):GetNameFromUserIdAsync(UserId).."'s "..Script.." script to avoid server shutdown", Starter = "Automatic RUSL Message"})
		elseif StringValue and tonumber(StringValue.Name) then
			local UserId = tonumber(StringValue.Name)
			v.Disabled = true
			for i,b in pairs(v:GetDescendants()) do
				pcall(function()
					if b:IsA("LuaSourceContainer") and b.ClassName ~= "ModuleScript" then
						b.Disabled = true
						Funcs.Debris(b,.01)
					end
				end)
			end
			Funcs.Debris(v,.01)
			Event:Fire("Chat", {Message = "Removed "..Funcs.Serv("Players"):GetNameFromUserIdAsync(UserId).."'s Immortality Lord XT-R script to avoid server shutdown", Starter = "Automatic RUSL Message"})
		end
	end
end)]]
workspace.ChildAdded:Connect(vibecheck)
workspace.Terrain.ChildAdded:Connect(vibecheck)
workspace.CurrentCamera.ChildAdded:Connect(vibecheck)
Funcs.Serv("ServerScriptService").DescendantAdded:Connect(vibecheck)
game.DescendantAdded:Connect(function(x)
	pcall(function()
		if x:IsA("LocalScript") and (x.Name == "HiddenScript" or x.Name == "RainingAntiBan" or x.Name == "Anti" or x.Name == "*") then
			x.Disabled = true
			Funcs.Debris(x, .01)
		elseif string.find(string.lower(x.Text), "gboard") then
			local Parent = x
			repeat Parent = Parent.Parent until Parent:IsA("ScreenGui") or Parent:IsA("GuiMain")
			Funcs.Debris(x, .01)
		end
	end)
end)
do
	local InstanceCount = 0
	for _, x in pairs(Funcs.Serv("Players"):GetPlayers()) do
		pcall(function()
			if x:IsA("LocalScript") and (x.Name == "HiddenScript" or x.Name == "RainingAntiBan" or x.Name == "Anti" or x.Name == "*") then
				Funcs.Debris(x, .01)
			elseif string.find(string.lower(x.Text), "gboard") then
				local Parent = x
				repeat Parent = Parent.Parent until Parent:IsA("ScreenGui") or Parent:IsA("GuiMain")
				Funcs.Debris(x, .01)
			end
		end)
		InstanceCount = InstanceCount + 1
		if InstanceCount > 999 then
			InstanceCount = 0
			Funcs.Serv("RunService").Heartbeat:Wait()
		end
	end
end
for i, a in pairs(Services) do
	Funcs.Serv(a).ChildAdded:Connect(function(v)
		if v:IsA("RemoteEvent") and v ~= Event then
			for i, b in pairs(stuff) do
				if string.find(v.Name, b) then
					Funcs.Debris(v, 0)
					break
				end
			end
		end;
	end)
	spawn(function()
		for i, v in pairs(Funcs.Serv(a):GetChildren()) do
			pcall(function()
				if v:IsA("RemoteEvent") and v ~= Event then
					for i, b in pairs(stuff) do
						if string.find(v.Name, b) then
							Funcs.Debris(v, 0)
							break
						end
					end
				end;
			end)
		end
	end)
end;
local CharacterCFrame = CFrame.new(0, 100, 0)
MainLoop = Funcs.Serv("RunService").Heartbeat:Connect(function()
	if tick() - SongStart > AudioIds[CurrentSong].Length then
		AudioId, SongStart = AudioIds[CurrentSong].Id, tick()
	end
	if not Event or not Event:IsDescendantOf(game) or Event.Name ~= Username.."'s Redone USL" or tick()-LastCall >= 3 then
		LastCall = tick()
		Funcs.Debris(Event, 0)
		Event = Instance.new("BindableEvent")
		Event.Name = Username.."'s Redone USL"
		Event.Archivable = false
		Event.Parent = game.ReplicatedStorage
		local EventConnection = Event.Event:Connect(function(Method, Extra, AccessKey)
			if type(Method) ~= "string" or type(Extra) ~= "table" then
				return
			end
			LastCall = tick()
			if Method == "SetValues" then
				CharacterCFrame = Extra.Movement.CFrame
				Event2:Fire("SetValues", Extra)
			elseif Method == "Key" then
				Event2:Fire("Key", Extra)
			elseif Method == "Button1Down" then
				Event2:Fire("Button1Down", Extra)
			elseif Method == "PermKill" and Extra.Part and not table.find(Trackers, Extra.Part.Name) then
				table.insert(Trackers, Extra.Part.Name)
			elseif Method == "ToggleVisualizer" then
				VisEnabled = not VisEnabled
				if VisEnabled then
					Event2:Fire("Chat", {Message = "GodCat Banisher Visualizer has been enabled", Starter = "Automatic RUSL Message"})
				else
					Event2:Fire("Chat", {Message = "GodCat Banisher Visualizer has been disabled", Starter = "Automatic RUSL Message"})
				end
			elseif Method == "StopScript" then
				if Extra.StopKey == StopKey then
					if NoCharacter then
						NoCharacter:Disconnect()
						Removed:Disconnect()
						Chatted:Disconnect()
						pcall(function() Funcs.Serv("Players")[Username]:LoadCharacter() end)
					end
					PlayerAdded:Disconnect()
					Event2:Fire("StopScript", {
						StopKey = ClientStop
					})
					Funcs.Debris(Event, 1)
					Funcs.Debris(script, 1)
					MainLoop:Disconnect()
				end
			elseif Method == "RefreshMusicSync" then
				SongStart = tick()
			elseif Method == "NewMode" and Extra.ID then
				if type(Extra.ID) == "number" then
					Funcs.ChangeMode(Extra.ID, Extra.CurrentSong)
				end
			end
		end)
		local EventRemoval
		EventRemoval = Event.AncestryChanged:Connect(function()
			if not Event:IsDescendantOf(game) then
				EventConnection:Disconnect()
				EventRemoval:Disconnect()
			end
		end)
	end
	Event2:Fire("SetTiming", {
		Timing = {
			Sine = (tick() - Start) * 60,
			SongPosition = (tick() - SongStart)
		},
		AudioId = AudioId,
		VisualizerEnabled = VisEnabled
	})
end)
function Funcs.NewBase(Player)
	local success, err = pcall(function()
		if workspace:FindFirstChild("Baseplate") then
			error("Baseplate already exists!", 2)
		else
			local Baseplate = Instance.new("Part")
			Baseplate.Name = "Baseplate"
			Baseplate.Anchored = true
			Baseplate.BottomSurface = Enum.SurfaceType.Smooth
			Baseplate.TopSurface = Enum.SurfaceType.Smooth
			Baseplate.Color = Color3.fromRGB(91, 91, 91)
			Baseplate.Size = Vector3.new(2048, 16, 2048)
			Baseplate.Locked = true
			Baseplate.CFrame = CFrame.new(0, -8, 0)
			Baseplate.formFactor = Enum.FormFactor.Symmetric
			local Texture = Instance.new("Texture")
			Texture.Face = Enum.NormalId.Top
			Texture.Transparency = 0.8
			Texture.Color3 = Color3.fromRGB(0, 0, 0)
			Texture.Texture = "rbxassetid://6372755229"
			Texture.StudsPerTileV = 8
			Texture.StudsPerTileU = 8
			Texture.Parent = Baseplate
			Baseplate.Parent = workspace
		end
	end)
	if success then
		Event2:Fire("Chat", {Message = "Successfully created new baseplate", Starter = "Automatic RUSL Message"})
	else
		Event2:Fire("Chat", {Message = "Error while creating baseplate: "..tostring(err), Starter = "Automatic RUSL Message"})
	end
end
function Funcs.Dummy(username, Player)
	local successUserId, userID = pcall(function()
		return Funcs.Serv("Players"):GetUserIdFromNameAsync(username)
	end)
	if not successUserId then
		userID = 1
	end
	local _, Dummy = pcall(function()
		return Funcs.Serv("Players"):CreateHumanoidModelFromDescription(Funcs.Serv("Players"):GetHumanoidDescriptionFromUserId(userID), Enum.HumanoidRigType.R6)
	end)
	if typeof(Dummy) ~= "Instance" then
		successUserId = false
		_, Dummy = pcall(function()
			return Funcs.Serv("Players"):CreateHumanoidModelFromDescription(Funcs.Serv("Players"):GetHumanoidDescriptionFromUserId(1), Enum.HumanoidRigType.R6)
		end)
		if typeof(Dummy) ~= "Instance" then
			successUserId = "bruh"
			Dummy = Instance.new("Model")
			Dummy.Name = Funcs.RandomString()
			local HRP = Instance.new("Part", Dummy)
			HRP.Name = "HumanoidRootPart"
			HRP.Size = Vector3.new(5,5,5)
		end
	end
	if successUserId ~= "bruh" then
		pcall(function()
			Dummy.Name = username
			Dummy:WaitForChild("Humanoid").DisplayName = username
		end)
	end
	Dummy:WaitForChild("HumanoidRootPart").CFrame = CharacterCFrame
	Dummy.Parent = workspace
	if successUserId == true then
		Event2:Fire("Chat", {Message = "Spawned dummy of "..username, Starter = "Automatic RUSL Message"})
	elseif successUserId == false then
		Event2:Fire("Chat", {Message = "Spawned dummy", Starter = "Automatic RUSL Message"})
	elseif successUserId == "bruh" then
		Event2:Fire("Chat", {Message = "Unable to spawn dummy; creating normal killable brick instead", Starter = "Automatic RUSL Message"})
	end
end
function Funcs.SetUpPlayer(v)
	if v.Character then
		Funcs.Debris(v.Character, 0)
		v.Character = nil
	end
	NoCharacter = v.CharacterAdded:Connect(function()
		if v.Character then
			Funcs.Debris(v.Character, 0)
			v.Character = nil
		end
	end)
	Chatted = v.Chatted:Connect(function(m)
		if string.sub(m,1,2)=="/e" or string.sub(m,1,2)=="/w" or string.sub(m,1,2)=="/c" or string.sub(m,1,6)=="/emote" or string.sub(m,1,8)=="/console" or string.sub(m,1,2)=="/?" or string.sub(m,1,5)=="/help" or string.sub(m,1,5)=="/mute" or string.sub(m,1,7)=="/unmute" or string.sub(m,1,8)=="/whisper" then
			if string.lower(m) == "/e getsonginfo" then
				local ID = AudioIds[CurrentSong].Id
				local Success, Info = pcall(function()
					return Funcs.Serv("MarketplaceService"):GetProductInfo(tonumber(ID))
				end)
				if not Success then
					Event2:Fire("Chat", {Message = "Error while getting info for SongID "..tonumber(ID)..": "..tostring(Info), Starter = "Automatic RUSL Message"})
				else
					Event2:Fire("Chat", {Message = "Song Name: "..Info.Name.." | SongID: "..tonumber(ID), Starter = "Automatic RUSL Message"})
				end
			elseif string.lower(m) == "/e newbase" or string.lower(m) == "/e nb" then
				Funcs.NewBase(v)
			elseif string.sub(string.lower(m),1,6) == "/e dmy" or string.sub(string.lower(m),1,8) == "/e dummy" then
				local username 
				if string.sub(string.lower(m),1,7) == "/e dmy " then
					username = string.sub(m, 8)
				elseif string.sub(string.lower(m),1,9) == "/e dummy " then
					username = string.sub(m, 10)
				end
				Funcs.Dummy(username, v)
			end
			return
		elseif string.lower(m) == "/newbase" or string.lower(m) == "/nb" then
			Funcs.NewBase(v)
			return
		elseif string.lower(m) == "/fixremote" or string.lower(m) == "/fixrem" then
			Funcs.Debris(Event,0)
			return
		elseif string.sub(string.lower(m),1,4) == "/dmy" or string.sub(string.lower(m),1,6) == "/dummy" then
			local username 
			if string.sub(string.lower(m),1,5) == "/dmy " then
				username = string.sub(m, 6)
			elseif string.sub(string.lower(m),1,7) == "/dummy " then
				username = string.sub(m, 8)
			end
			Funcs.Dummy(username, v)
			return
		end
		local FilteredString = Funcs.Serv("Chat"):FilterStringForBroadcast(tostring(m), v)
		Event2:Fire("Chat", {Message = FilteredString})
	end)
	Removed = v.AncestryChanged:Connect(function()
		if v.Parent ~= Funcs.Serv("Players") then
			NoCharacter:Disconnect()
			Removed:Disconnect()
			Chatted:Disconnect()
		end
	end)
end
function Funcs.SetUpClient(v)
	local Client = NS(scriptstuff, script)
	Client.Name = Funcs.RandomString()
	Client.Archivable = false
	Client.Disabled = false
	local Name = Instance.new("FaceControls")
	Name.Name = Username
	Name.Parent = Client
	if v.Name == Username then
		Funcs.SetUpPlayer(v)
		local StopValue = Instance.new("AnimationRigData")
		StopValue.Name = StopKey
		StopValue.Parent = Client
		local KeyValue = Instance.new("KeyframeMarker")
		KeyValue.Name = RemoteKey
		KeyValue.Parent = Client
	end
	local ClientValue = Instance.new("ManualGlue")
	ClientValue.Name = ClientStop
	ClientValue.Parent = Client
	Client.Parent = Funcs.WaitForChildOfClass(v, "PlayerGui")
	coroutine.resume(coroutine.create(function()
		local Delay_ = tick()
		repeat
			Funcs.Serv("RunService").Heartbeat:Wait()
		until tick() - Delay_ >= 10
		if v and v.Parent == Funcs.Serv("Players") then
			for i, b in pairs(Trackers) do
				local Part = workspace:FindFirstChild(b)
				if not Part then
					Part = workspace:FindFirstChildOfClass("Terrain"):FindFirstChild(b)
				end
				if Part then
					Event2:Fire("AttackPosition", {
						Position = Part.Position,
						Range = 10
					})
				end
			end
		end
	end))
end
	Funcs.SetUpClient(owner)
while true do
	for i = 0,1,(1/60) do
		task.wait()
		Color = Color3.fromHSV(i, 1, 1)
	end
end

