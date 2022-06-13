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
local remote = {}
local clientevent = false
wait(.1)
local Player = game:GetService("Players").LocalPlayer
local Mouse,mouse,UserInputService,ContextActionService
do
	local GUID = {}
	do
	    GUID.IDs = {};
	    function GUID:new(len)
	        local id;
	        if(not len)then
	            id = (tostring(function() end))
	            id = id:gsub("function: ","")
	        else
	            local function genID(len)
	                local newID = ""
	                for i = 1,len do
	                    newID = newID..string.char(math.random(48,90))
	                end
	                return newID
	            end
	            repeat id = genID(len) until not GUID.IDs[id]
				local oid = id;
				id = {Trash=function() GUID.IDs[oid]=nil; end;Get=function() return oid; end}
	            GUID.IDs[oid]=true;
	        end
	        return id
	    end
	end

	local AHB = Instance.new("BindableEvent")
	
	local FPS = 30
	
	local TimeFrame = 0
	
	local LastFrame = tick()
	local Frame = 1/FPS
	
	game:service'RunService'.Heartbeat:connect(function(s,p)
		TimeFrame = TimeFrame + s
		if(TimeFrame >= Frame)then
			for i = 1,math.floor(TimeFrame/Frame) do
				AHB:Fire()
			end
			LastFrame=tick()
			TimeFrame=TimeFrame-Frame*math.floor(TimeFrame/Frame)
		end
	end)


	function swait(dur)
		if(dur == 0 or typeof(dur) ~= 'number')then
			AHB.Event:wait()
		else
			for i = 1, dur*FPS do
				AHB.Event:wait()
			end
		end
	end
	
	local loudnesses={}
	local CoAS = {Actions={}}
	local Event = Instance.new("RemoteEvent")
	Event.Name = "UserInputEvent"
	Event.Parent = Player.Character
	local Func = Instance.new("RemoteFunction")
	Func.Name = "GetClientProperty"
	Func.Parent = Player.Character
	local fakeEvent = function()
		local t = {_fakeEvent=true,Waited={}}
		t.Connect = function(self,f)
			local ft={Disconnected=false;disconnect=function(s) s.Disconnected=true end}
			ft.Disconnect=ft.disconnect
				
			ft.Func=function(...)
				for id,_ in next, t.Waited do 
					t.Waited[id] = true 
				end 
				return f(...)
			end; 
			self.Function=ft;
			return ft;
		end
		t.connect = t.Connect
		t.Wait = function() 
			local guid = GUID:new(25)
			local waitingId = guid:Get()
			t.Waited[waitingId]=false
			repeat swait() until t.Waited[waitingId]==true  
			t.Waited[waitingId]=nil;
			guid:Trash()
		end
		t.wait = t.Wait
		return t
	end
    local m = {Target=nil,Hit=CFrame.new(),KeyUp=fakeEvent(),KeyDown=fakeEvent(),Button1Up=fakeEvent(),Button1Down=fakeEvent()}
	local UsIS = {InputBegan=fakeEvent(),InputEnded=fakeEvent()}
	
	function CoAS:BindAction(name,fun,touch,...)
		CoAS.Actions[name] = {Name=name,Function=fun,Keys={...}}
	end
	function CoAS:UnbindAction(name)
		CoAS.Actions[name] = nil
	end
	local function te(self,ev,...)
		local t = self[ev]
		if t and t._fakeEvent and t.Function and t.Function.Func and not t.Function.Disconnected then
			t.Function.Func(...)
		elseif t and t._fakeEvent and t.Function and t.Function.Func and t.Function.Disconnected then
			self[ev].Function=nil
		end
	end
	m.TrigEvent = te
	UsIS.TrigEvent = te
	clientevent = function(plr,io)
	    if plr~=Player then return end
		if io.Mouse then
			m.Target = io.Target
			m.Hit = io.Hit
		elseif io.KeyEvent then
			print('Key'..io.KeyEvent,io.Key)
			m:TrigEvent('Key'..io.KeyEvent,io.Key)
		elseif io.UserInputType == Enum.UserInputType.MouseButton1 then
	        if io.UserInputState == Enum.UserInputState.Begin then
				print'down'
				m:TrigEvent("Button1Down")
			else
				print'up'
				m:TrigEvent("Button1Up")
			end
		end
		if(not io.KeyEvent and not io.Mouse)then
			for n,t in pairs(CoAS.Actions) do
				for _,k in pairs(t.Keys) do
					if k==io.KeyCode then
						t.Function(t.Name,io.UserInputState,io)
					end
				end
			end
	        if io.UserInputState == Enum.UserInputState.Begin then
				UsIS:TrigEvent("InputBegan",io,false)
			else
				UsIS:TrigEvent("InputEnded",io,false)
	        end
	    end
	end
		
	clientevent = function(plr,inst,play)
		if plr~=Player then return end
		if(inst and typeof(inst) == 'Instance' and inst:IsA'Sound')then
			loudnesses[inst]=play	
		end
	end
	
	function GetClientProperty(inst,prop)
		if(prop == 'PlaybackLoudness' and loudnesses[inst])then 
			return loudnesses[inst] 
		elseif(prop == 'PlaybackLoudness')then
			return Func:InvokeClient(Player,'RegSound',inst)
		end
		return Func:InvokeClient(Player,inst,prop)
	end
	Mouse, mouse, UserInputService, ContextActionService = Player:GetMouse(), Player:GetMouse(), game:GetService("UserInputService"), game:GetService("ContextActionService")
end


--Hello creatures from Earth, i've returned to bring some quality scripts for ya'll--
--One of the best guns ever to exist, yes, the Dubstep Gun!, oh boy, you're gonna like this one :)--
--This took me ALOT of work, not just the scripting part, but to make the actual Dubstep Gun--
--And this took me a fair amount of robux too hehehe--
--Enough talkin', enjoy the script!--

Player=game:GetService("Players").LocalPlayer
Character=Player.Character
Character.Humanoid.Name = "noneofurbusiness"
hum = Character.noneofurbusiness
LeftArm=Character["Left Arm"]
LeftLeg=Character["Left Leg"]
RightArm=Character["Right Arm"]
RightLeg=Character["Right Leg"]
Root=Character["HumanoidRootPart"]
Head=Character["Head"]
Torso=Character["Torso"]
Neck=Torso["Neck"]
walking = false
hitdebounce = false
jumping = false
attacking = false
firsttime = false
tauntdebounce = false
position = nil
classical = true
dada = false
industrial = false
popstar = false
vinyl = false
brutal = false
love = false
godgun = false
MseGuide = true
running = false
settime = 0
sine = 0
t = 0
ws = 22
change = 1
combo1 = true
equip = false
swetch = false
dgs = 75
combo2 = false
switch1 = true
switch2 = false
firsttime2 = false
stop = false
combo3 = false
gunallowance = false
shooting = false
RunSrv = game:GetService("RunService")
RenderStepped = game:GetService("RunService").RenderStepped
removeuseless = game:GetService("Debris")
smoothen = game:GetService("TweenService")
cam = workspace.CurrentCamera
randomcolortable={"Cyan","Really red","Cyan","Royal purple","Lime green","Crimson","Daisy yellow","Eggplant"} ---rainbow effect
randomsound={1841352043,1841310110,1841352055}
random = #randomcolortable

screenGui = Instance.new("ScreenGui")
screenGui.Parent = script.Parent

local HEADLERP = Instance.new("ManualWeld")
HEADLERP.Parent = Head
HEADLERP.Part0 = Head
HEADLERP.Part1 = Head
HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local TORSOLERP = Instance.new("ManualWeld")
TORSOLERP.Parent = Root
TORSOLERP.Part0 = Torso
TORSOLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local ROOTLERP = Instance.new("ManualWeld")
ROOTLERP.Parent = Root
ROOTLERP.Part0 = Root
ROOTLERP.Part1 = Torso
ROOTLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local RIGHTARMLERP = Instance.new("ManualWeld")
RIGHTARMLERP.Parent = RightArm
RIGHTARMLERP.Part0 = RightArm
RIGHTARMLERP.Part1 = Torso
RIGHTARMLERP.C0 = CFrame.new(-1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local LEFTARMLERP = Instance.new("ManualWeld")
LEFTARMLERP.Parent = LeftArm
LEFTARMLERP.Part0 = LeftArm
LEFTARMLERP.Part1 = Torso
LEFTARMLERP.C0 = CFrame.new(1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local RIGHTLEGLERP = Instance.new("ManualWeld")
RIGHTLEGLERP.Parent = RightLeg
RIGHTLEGLERP.Part0 = RightLeg
RIGHTLEGLERP.Part1 = Torso
RIGHTLEGLERP.C0 = CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local LEFTLEGLERP = Instance.new("ManualWeld")
LEFTLEGLERP.Parent = LeftLeg
LEFTLEGLERP.Part0 = LeftLeg
LEFTLEGLERP.Part1 = Torso
LEFTLEGLERP.C0 = CFrame.new(0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local function weldBetween(a, b)
    local weld = Instance.new("ManualWeld", a)
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    return weld
end

function MAKETRAIL(PARENT,POSITION1,POSITION2,LIFETIME,COLOR)
A = Instance.new("Attachment", PARENT)
A.Position = POSITION1
A.Name = "A"
B = Instance.new("Attachment", PARENT)
B.Position = POSITION2
B.Name = "B"
tr1 = Instance.new("Trail", PARENT)
tr1.Attachment0 = A
tr1.Attachment1 = B
tr1.Enabled = true
tr1.Lifetime = LIFETIME
tr1.TextureMode = "Static"
tr1.LightInfluence = 0
tr1.Color = COLOR
tr1.Transparency = NumberSequence.new(0, 1)
end

--NOTE: DO NOT EDIT ANYTHING UNLESS YOU KNOW WHAT YOU'RE DOING!--
--The dubstep gun consists of 2 separate meshes.--

dubgun = Instance.new("Part", Torso)
dubgun.Size = Vector3.new(1,1,1)
dubgun.Transparency = 0
dubgun.CanCollide = false
dubgun.BrickColor = LeftArm.BrickColor
dubgunMESH = Instance.new("SpecialMesh",dubgun)
dubgunMESH.MeshId = "rbxassetid://3074077141"
dubgunMESH.Scale = Vector3.new(.1,.1,.1)
dubgunMESH.TextureId = "rbxassetid://3074045895"
dubgunweld = weldBetween(dubgun,RightArm)
dubgunweld.C0 = dubgunweld.C0 * CFrame.new(-.95,.6,-.7) * CFrame.Angles(math.rad(0),math.rad(180),math.rad(-100))
coroutine.wrap(function()
while true do
pcall(function()
if industrial then
dubgunMESH.VertexColor = Vector3.new(.2,.2,.2)
elseif crimson then
dubgunMESH.VertexColor = Vector3.new(.3,0,0)
elseif brutal then
dubgunMESH.VertexColor = Vector3.new(1,0,0)
elseif dada then
dubgunMESH.VertexColor = Vector3.new(0,1,0)
elseif vinyl then
dubgunMESH.VertexColor = Vector3.new(0,.81,1)
elseif love then
dubgunMESH.VertexColor = Vector3.new(1,0,.85)
elseif godgun then
dubgunMESH.VertexColor = Vector3.new(1,1,0)
elseif classical then
dubgunMESH.VertexColor = Vector3.new(1,1,1)
end
end)
wait()
end
end)()

lightpart = Instance.new("Part",Torso)
lightpart.Size = Vector3.new(0.05, 0.3, 0.24)
lightpart.Shape = "Cylinder"
lightpart.Anchored = false
lightpart.CanCollide = false
lightpart.Material = "Neon"
lightpart.BrickColor = BrickColor.new("Really red")
lightpartweld = weldBetween(lightpart,dubgun)
lightpartweld.C0 = CFrame.new(.2,-.575,-.79) * CFrame.Angles(0,0,math.rad(90))

light = Instance.new("PointLight", lightpart)
light.Color = BrickColor.new("Really red").Color
light.Range = 3
light.Brightness = 2
light.Enabled = true

lightpart2 = Instance.new("Part",Torso)
lightpart2.Size = Vector3.new(0.05, 0.3, 0.24)
lightpart2.Shape = "Cylinder"
lightpart2.Anchored = false
lightpart2.CanCollide = false
lightpart2.Material = "Neon"
lightpart2.BrickColor = BrickColor.new("Cyan")
lightpartweld2 = weldBetween(lightpart2,dubgun)
lightpartweld2.C0 = CFrame.new(.2,-.95,-.79) * CFrame.Angles(0,0,math.rad(90))

light = Instance.new("PointLight", lightpart2)
light.Color = BrickColor.new("Cyan").Color
light.Range = 2
light.Brightness = 2
light.Enabled = true

lightpart3 = Instance.new("Part",Torso)
lightpart3.Size = Vector3.new(0.05, 0.3, 0.24)
lightpart3.Shape = "Cylinder"
lightpart3.Anchored = false
lightpart3.CanCollide = false
lightpart3.Material = "Neon"
lightpart3.BrickColor = BrickColor.new("Bright yellow")
lightpartweld3 = weldBetween(lightpart3,dubgun)
lightpartweld3.C0 = CFrame.new(.2,-1.315,-.79) * CFrame.Angles(0,0,math.rad(90))

light = Instance.new("PointLight", lightpart3)
light.Color = BrickColor.new("Bright yellow").Color
light.Range = 3
light.Brightness = 2
light.Enabled = true

lightpart4 = Instance.new("Part",Torso)
lightpart4.Size = Vector3.new(0.05, 0.3, 0.24)
lightpart4.Shape = "Cylinder"
lightpart4.Anchored = false
lightpart4.CanCollide = false
lightpart4.Material = "Neon"
lightpart4.BrickColor = BrickColor.new("Really red")
lightpartweld4 = weldBetween(lightpart4,dubgun)
lightpartweld4.C0 = CFrame.new(.5255,-.575,-.79) * CFrame.Angles(0,0,math.rad(90))

light = Instance.new("PointLight", lightpart4)
light.Color = BrickColor.new("Really red").Color
light.Range = 2
light.Brightness = 2
light.Enabled = true

lightpart5 = Instance.new("Part",Torso)
lightpart5.Size = Vector3.new(0.05, 0.3, 0.24)
lightpart5.Shape = "Cylinder"
lightpart5.Anchored = false
lightpart5.CanCollide = false
lightpart5.Material = "Neon"
lightpart5.BrickColor = BrickColor.new("Cyan")
lightpart5weld = weldBetween(lightpart5,dubgun)
lightpart5weld.C0 = CFrame.new(.5255,-.95,-.79) * CFrame.Angles(0,0,math.rad(90))

light = Instance.new("PointLight", lightpart5)
light.Color = BrickColor.new("Cyan").Color
light.Range = 2
light.Brightness = 2
light.Enabled = true

lightpart6 = Instance.new("Part",Torso)
lightpart6.Size = Vector3.new(0.05, 0.3, 0.24)
lightpart6.Shape = "Cylinder"
lightpart6.Anchored = false
lightpart6.CanCollide = false
lightpart6.Material = "Neon"
lightpart6.BrickColor = BrickColor.new("Bright yellow")
lightpartweld6 = weldBetween(lightpart6,dubgun)
lightpartweld6.C0 = CFrame.new(.5255,-1.315,-.79) * CFrame.Angles(0,0,math.rad(90))

light = Instance.new("PointLight", lightpart6)
light.Color = BrickColor.new("Bright yellow").Color
light.Range = 2
light.Brightness = 2
light.Enabled = true

lightpart7 = Instance.new("Part",Torso)
lightpart7.Size = Vector3.new(0.05, 0.52, 0.44)
lightpart7.Shape = "Cylinder"
lightpart7.Anchored = false
lightpart7.CanCollide = false
lightpart7.Material = "Neon"
lightpart7.BrickColor = BrickColor.new("Cyan")
lightpartweld7 = weldBetween(lightpart7,dubgun)
lightpartweld7.C0 = CFrame.new(.5195,-.8,-.37) * CFrame.Angles(0,0,math.rad(90))

light = Instance.new("PointLight", lightpart7)
light.Color = BrickColor.new("Cyan").Color
light.Range = 4
light.Brightness = 2
light.Enabled = true

lightpart8 = Instance.new("Part",Torso)
lightpart8.Size = Vector3.new(0.05, 0.52, 0.44)
lightpart8.Shape = "Cylinder"
lightpart8.Anchored = false
lightpart8.CanCollide = false
lightpart8.Material = "Neon"
lightpart8.BrickColor = BrickColor.new("Cyan")
lightpartweld8 = weldBetween(lightpart8,dubgun)
lightpartweld8.C0 = CFrame.new(.195,-.8,-.37) * CFrame.Angles(0,0,math.rad(90))

light = Instance.new("PointLight", lightpart8)
light.Color = BrickColor.new("Cyan").Color
light.Range = 3
light.Brightness = 2
light.Enabled = true

lightpart9 = Instance.new("Part",Torso)
lightpart9.Size = Vector3.new(0.05, 0.65, 0.59)
lightpart9.Shape = "Cylinder"
lightpart9.Anchored = false
lightpart9.CanCollide = false
lightpart9.Material = "Neon"
lightpart9.BrickColor = BrickColor.new("Cyan")
lightpartweld9 = weldBetween(lightpart9,dubgun)
lightpartweld9.C0 = CFrame.new(.155,.21,-.2941) * CFrame.Angles(0,0,math.rad(90))

light = Instance.new("PointLight", lightpart9)
light.Color = BrickColor.new("Cyan").Color
light.Range = 3
light.Brightness = 2
light.Enabled = true

lightpart10 = Instance.new("Part",Torso)
lightpart10.Size = Vector3.new(0.05, 0.65, 0.59)
lightpart10.Shape = "Cylinder"
lightpart10.Anchored = false
lightpart10.CanCollide = false
lightpart10.Material = "Neon"
lightpart10.BrickColor = BrickColor.new("Cyan")
lightpartweld10 = weldBetween(lightpart10,dubgun)
lightpartweld10.C0 = CFrame.new(.565,.21,-.2941) * CFrame.Angles(0,0,math.rad(90))

light = Instance.new("PointLight", lightpart10)
light.Color = BrickColor.new("Cyan").Color
light.Range = 2
light.Brightness = 2
light.Enabled = true

lightpart11 = Instance.new("Part",Torso)
lightpart11.Size = Vector3.new(0.05, 0.44, 0.38)
lightpart11.Shape = "Cylinder"
lightpart11.Anchored = false
lightpart11.CanCollide = false
lightpart11.Material = "Neon"
lightpart11.BrickColor = BrickColor.new("Cyan")
lightpartweld11 = weldBetween(lightpart11,dubgun)
lightpartweld11.C0 = CFrame.new(.195,1.091,.1441) * CFrame.Angles(0,0,math.rad(90))

light = Instance.new("PointLight", lightpart11)
light.Color = BrickColor.new("Cyan").Color
light.Range = 2
light.Brightness = 2
light.Enabled = true

lightpart12 = Instance.new("Part",Torso)
lightpart12.Size = Vector3.new(0.05, 0.44, 0.38)
lightpart12.Shape = "Cylinder"
lightpart12.Anchored = false
lightpart12.CanCollide = false
lightpart12.Material = "Neon"
lightpart12.BrickColor = BrickColor.new("Cyan")
lightpartweld12 = weldBetween(lightpart12,dubgun)
lightpartweld12.C0 = CFrame.new(.525,1.091,.1441) * CFrame.Angles(0,0,math.rad(90))

light = Instance.new("PointLight", lightpart12)
light.Color = BrickColor.new("Cyan").Color
light.Range = 2
light.Brightness = 2
light.Enabled = true

lightpart13 = Instance.new("Part",Torso)
lightpart13.Size = Vector3.new(0.05, 0.25, 0.19)
lightpart13.Shape = "Cylinder"
lightpart13.Anchored = false
lightpart13.CanCollide = false
lightpart13.Material = "Neon"
lightpart13.BrickColor = BrickColor.new("Bright yellow")
lightpartweld13 = weldBetween(lightpart13,dubgun)
lightpartweld13.C0 = CFrame.new(-.17,-2.296,-.83) * CFrame.Angles(0,0,math.rad(90))

light = Instance.new("PointLight", lightpart13)
light.Color = BrickColor.new("Bright yellow").Color
light.Range = 4
light.Brightness = 2
light.Enabled = true

lightpart14 = Instance.new("Part",Torso)
lightpart14.Size = Vector3.new(0.05, 0.25, 0.19)
lightpart14.Shape = "Cylinder"
lightpart14.Anchored = false
lightpart14.CanCollide = false
lightpart14.Material = "Neon"
lightpart14.BrickColor = BrickColor.new("Really red")
lightpartweld14 = weldBetween(lightpart14,dubgun)
lightpartweld14.C0 = CFrame.new(-.17,-2.296,-.615) * CFrame.Angles(0,0,math.rad(90))

light = Instance.new("PointLight", lightpart14)
light.Color = BrickColor.new("Really red").Color
light.Range = 4
light.Brightness = 2
light.Enabled = true

lightpart15 = Instance.new("Part",Torso)
lightpart15.Size = Vector3.new(0.05, 0.25, 0.19)
lightpart15.Shape = "Cylinder"
lightpart15.Anchored = false
lightpart15.CanCollide = false
lightpart15.Material = "Neon"
lightpart15.BrickColor = BrickColor.new("Cyan")
lightpartweld15 = weldBetween(lightpart15,dubgun)
lightpartweld15.C0 = CFrame.new(-.17,-2.296,-.4) * CFrame.Angles(0,0,math.rad(90))

light = Instance.new("PointLight", lightpart15)
light.Color = BrickColor.new("Cyan").Color
light.Range = 2
light.Brightness = 2
light.Enabled = true


dubgun2 = Instance.new("Part", Torso)
dubgun2.Size = Vector3.new(1,1,1)
dubgun2.Transparency = 0
dubgun2.CanCollide = false
dubgun2.BrickColor = LeftArm.BrickColor
dubgunMESH2 = Instance.new("SpecialMesh",dubgun2)
dubgunMESH2.MeshId = "rbxassetid://3074080972"
dubgunMESH2.Scale = Vector3.new(.074,.074,.074)
dubgunMESH2.TextureId = "rbxassetid://3074091837"
dubgunweld2 = weldBetween(dubgun2,dubgun)
dubgunweld2.C0 = dubgunweld.C0 * CFrame.new(.68,-.088,-.70) * CFrame.Angles(math.rad(0),math.rad(180),math.rad(-100))

muffled = Instance.new("Sound",dubgun)
muffled.SoundId = "rbxassetid://3076647485"
muffled.Volume = .6
muffled:Play()
muffled.Looped = true
muffled.Name = "muf"

dubgun.ChildRemoved:connect(function(removed)
if removed.Name == "muf" then
muffled = Instance.new("Sound",dubgun)
if industrial then
muffled.SoundId = "rbxassetid://3083263055"
elseif vinyl then
muffled.SoundId = "rbxassetid://3102209482"
elseif brutal then
muffled.SoundId = "rbxassetid://3105568121"
elseif dada then
muffled.SoundId = "rbxassetid://3104950452"
elseif love then
muffled.SoundId = "rbxassetid://3102056738"
elseif godgun then
muffled.SoundId = "rbxassetid://3101686252"
elseif crimson then
muffled.SoundId = "rbxassetid://3107797809"
elseif classical then
muffled.SoundId = "rbxassetid://3076647485"
end
muffled.Volume = .6
muffled:Play()
muffled.Looped = true
muffled.Name = "muf"
end
end)

coroutine.wrap(function()
while wait() do
hum.WalkSpeed = ws
hum.JumpPower = 75
end
end)()
godmode = coroutine.wrap(function()
for i,v in pairs(Character:GetChildren()) do
if v:IsA("BasePart") and v ~= Root then
v.Anchored = false
end
end
while true do
hum.MaxHealth = math.huge
wait(0.0000001)
hum.Health = math.huge
wait()
end
end)
godmode()
ff = Instance.new("ForceField", Character)
ff.Visible = false

coroutine.wrap(function()
for i,v in pairs(Character:GetChildren()) do
if v.Name == "Animate" then v:Remove()
end
end
end)()

function damagealll(Radius,Position)		
	local Returning = {}		
	for _,v in pairs(workspace:GetChildren()) do		
		if v~=Character and v:FindFirstChildOfClass('Humanoid') and v:FindFirstChild('Torso') or v:FindFirstChild('UpperTorso') then
if v:FindFirstChild("Torso") then		
			local Mag = (v.Torso.Position - Position).magnitude		
			if Mag < Radius then		
				table.insert(Returning,v)		
			end
elseif v:FindFirstChild("UpperTorso") then	
			local Mag = (v.UpperTorso.Position - Position).magnitude		
			if Mag < Radius then		
				table.insert(Returning,v)		
			end
end	
		end		
	end		
	return Returning		
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")

frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false


lastframe = tick()
script.Heartbeat:Fire()


game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.Heartbeat:Fire()
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
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end

for _,x in pairs(Character:GetChildren()) do
if x:IsA("Decal") then x:Remove() end
end

function SOUND(PARENT,ID,VOL,LOOP,REMOVE)
so = Instance.new("Sound")
so.Parent = PARENT
so.SoundId = "rbxassetid://"..ID
so.Volume = VOL
so.Looped = LOOP
so:Play()
removeuseless:AddItem(so,REMOVE)
end

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='m' then
immortality()
elseif Press=='z' then
if debounce then return end
debounce = true
industrial = false
godgun = false
classical = true
vinyl = false
love = false
dada = false
popstar = false
brutal = false
crimson = false
muffled.SoundId = "rbxassetid://3076647485"
muffled:Play()
local sm = Instance.new("Part",Torso)
sm.Size = Vector3.new(2,2,2)
sm.Shape = "Ball"
sm.Anchored = true
sm.CanCollide = false
sm.CFrame = dubgun.CFrame
sm.Transparency = 0
sm.BrickColor = BrickColor.new("White")
sm.Material = "Neon"
coroutine.wrap(function()
for i = 1, 30 do
swait()
sm.Size = sm.Size + Vector3.new(1,1,1)
sm.Transparency = sm.Transparency + .05
end
sm:Remove()
end)()
local wb = Instance.new("Sound",dubgun)
wb.Volume = 4
wb.SoundId = "rbxassetid://1678747502"
wb:Play()
removeuseless:AddItem(wb,5)
local particlemiter = Instance.new("ParticleEmitter",dubgun)
particlemiter.Texture = "rbxassetid://1955503112"
particlemiter.Size = NumberSequence.new(2,.5)
particlemiter.Transparency = NumberSequence.new(0,1)
particlemiter.Enabled = true
particlemiter.LockedToPart = false
particlemiter.Speed = NumberRange.new(20)
particlemiter.RotSpeed = NumberRange.new(210)
particlemiter.Lifetime = NumberRange.new(2)
particlemiter.SpreadAngle = Vector2.new(-100,100)
particlemiter.Rate = 500
local particlemiter2 = Instance.new("ParticleEmitter",dubgun)
particlemiter2.Texture = "rbxassetid://149310730"
particlemiter2.Size = NumberSequence.new(2,.5)
particlemiter2.Transparency = NumberSequence.new(0,1)
particlemiter2.Enabled = true
particlemiter2.LockedToPart = false
particlemiter2.Speed = NumberRange.new(20)
particlemiter2.RotSpeed = NumberRange.new(210)
particlemiter2.Lifetime = NumberRange.new(2)
particlemiter2.SpreadAngle = Vector2.new(-100,100)
particlemiter2.Rate = 500
local particlemiter3 = Instance.new("ParticleEmitter",dubgun)
particlemiter3.Texture = "rbxassetid://35755888"
particlemiter3.Size = NumberSequence.new(2,.5)
particlemiter3.Transparency = NumberSequence.new(0,1)
particlemiter3.Enabled = true
particlemiter3.LockedToPart = false
particlemiter3.Speed = NumberRange.new(20)
particlemiter3.RotSpeed = NumberRange.new(210)
particlemiter3.Lifetime = NumberRange.new(2)
particlemiter3.SpreadAngle = Vector2.new(-100,100)
particlemiter3.Rate = 500
wait(.15)
coroutine.wrap(function()
particlemiter.Enabled = false
particlemiter2.Enabled = false
particlemiter3.Enabled = false
wait(5)
particlemiter3:Remove()
particlemiter:Remove()
particlemiter2:Remove()
end)()
debounce = false
elseif Press=='x' then
if debounce then return end
debounce = true
industrial = true
vinyl = false
love = false
godgun = false
classical = false
popstar = false
dada = false
brutal = false
crimson = false
muffled.SoundId = "rbxassetid://3083263055"
muffled:Play()
local sm = Instance.new("Part",Torso)
sm.Size = Vector3.new(2,2,2)
sm.Shape = "Ball"
sm.Anchored = true
sm.CanCollide = false
sm.CFrame = dubgun.CFrame
sm.Transparency = 0
sm.BrickColor = BrickColor.new("White")
sm.Material = "Neon"
coroutine.wrap(function()
for i = 1, 30 do
swait()
sm.Size = sm.Size + Vector3.new(1,1,1)
sm.Transparency = sm.Transparency + .05
end
sm:Remove()
end)()
local wb = Instance.new("Sound",dubgun)
wb.Volume = 4
wb.SoundId = "rbxassetid://1678747502"
wb:Play()
removeuseless:AddItem(wb,5)
local particlemiter = Instance.new("ParticleEmitter",dubgun)
particlemiter.Texture = "rbxassetid://1955503112"
particlemiter.Size = NumberSequence.new(2,.5)
particlemiter.Transparency = NumberSequence.new(0,1)
particlemiter.Enabled = true
particlemiter.LockedToPart = false
particlemiter.Speed = NumberRange.new(20)
particlemiter.RotSpeed = NumberRange.new(210)
particlemiter.Lifetime = NumberRange.new(2)
particlemiter.SpreadAngle = Vector2.new(-100,100)
particlemiter.Rate = 500
local particlemiter2 = Instance.new("ParticleEmitter",dubgun)
particlemiter2.Texture = "rbxassetid://149310730"
particlemiter2.Size = NumberSequence.new(2,.5)
particlemiter2.Transparency = NumberSequence.new(0,1)
particlemiter2.Enabled = true
particlemiter2.LockedToPart = false
particlemiter2.Speed = NumberRange.new(20)
particlemiter2.RotSpeed = NumberRange.new(210)
particlemiter2.Lifetime = NumberRange.new(2)
particlemiter2.SpreadAngle = Vector2.new(-100,100)
particlemiter2.Rate = 500
local particlemiter3 = Instance.new("ParticleEmitter",dubgun)
particlemiter3.Texture = "rbxassetid://35755888"
particlemiter3.Size = NumberSequence.new(2,.5)
particlemiter3.Transparency = NumberSequence.new(0,1)
particlemiter3.Enabled = true
particlemiter3.LockedToPart = false
particlemiter3.Speed = NumberRange.new(20)
particlemiter3.RotSpeed = NumberRange.new(210)
particlemiter3.Lifetime = NumberRange.new(2)
particlemiter3.SpreadAngle = Vector2.new(-100,100)
particlemiter3.Rate = 500
wait(.15)
coroutine.wrap(function()
particlemiter.Enabled = false
particlemiter2.Enabled = false
particlemiter3.Enabled = false
wait(5)
particlemiter3:Remove()
particlemiter:Remove()
particlemiter2:Remove()
end)()
debounce = false
elseif Press=='c' then
if debounce then return end
debounce = true
industrial = false
godgun = true
vinyl = false
love = false
classical = false
popstar = false
dada = false
brutal = false
crimson = false
muffled.SoundId = "rbxassetid://3101686252"
muffled:Play()
local sm = Instance.new("Part",Torso)
sm.Size = Vector3.new(2,2,2)
sm.Shape = "Ball"
sm.Anchored = true
sm.CanCollide = false
sm.CFrame = dubgun.CFrame
sm.Transparency = 0
sm.BrickColor = BrickColor.new("White")
sm.Material = "Neon"
coroutine.wrap(function()
for i = 1, 30 do
swait()
sm.Size = sm.Size + Vector3.new(1,1,1)
sm.Transparency = sm.Transparency + .05
end
sm:Remove()
end)()
local wb = Instance.new("Sound",dubgun)
wb.Volume = 4
wb.SoundId = "rbxassetid://1678747502"
wb:Play()
removeuseless:AddItem(wb,5)
local particlemiter = Instance.new("ParticleEmitter",dubgun)
particlemiter.Texture = "rbxassetid://1955503112"
particlemiter.Size = NumberSequence.new(2,.5)
particlemiter.Transparency = NumberSequence.new(0,1)
particlemiter.Enabled = true
particlemiter.LockedToPart = false
particlemiter.Speed = NumberRange.new(20)
particlemiter.RotSpeed = NumberRange.new(210)
particlemiter.Lifetime = NumberRange.new(2)
particlemiter.SpreadAngle = Vector2.new(-100,100)
particlemiter.Rate = 500
local particlemiter2 = Instance.new("ParticleEmitter",dubgun)
particlemiter2.Texture = "rbxassetid://149310730"
particlemiter2.Size = NumberSequence.new(2,.5)
particlemiter2.Transparency = NumberSequence.new(0,1)
particlemiter2.Enabled = true
particlemiter2.LockedToPart = false
particlemiter2.Speed = NumberRange.new(20)
particlemiter2.RotSpeed = NumberRange.new(210)
particlemiter2.Lifetime = NumberRange.new(2)
particlemiter2.SpreadAngle = Vector2.new(-100,100)
particlemiter2.Rate = 500
local particlemiter3 = Instance.new("ParticleEmitter",dubgun)
particlemiter3.Texture = "rbxassetid://35755888"
particlemiter3.Size = NumberSequence.new(2,.5)
particlemiter3.Transparency = NumberSequence.new(0,1)
particlemiter3.Enabled = true
particlemiter3.LockedToPart = false
particlemiter3.Speed = NumberRange.new(20)
particlemiter3.RotSpeed = NumberRange.new(210)
particlemiter3.Lifetime = NumberRange.new(2)
particlemiter3.SpreadAngle = Vector2.new(-100,100)
particlemiter3.Rate = 500
wait(.15)
coroutine.wrap(function()
particlemiter.Enabled = false
particlemiter2.Enabled = false
particlemiter3.Enabled = false
wait(5)
particlemiter3:Remove()
particlemiter:Remove()
particlemiter2:Remove()
end)()
debounce = false
elseif Press=='v' then
if debounce then return end
debounce = true
industrial = false
love = true
vinyl = false
godgun = false
classical = false
popstar = false
dada = false
brutal = false
crimson = false
muffled.SoundId = "rbxassetid://3102056738"
muffled:Play()
local sm = Instance.new("Part",Torso)
sm.Size = Vector3.new(2,2,2)
sm.Shape = "Ball"
sm.Anchored = true
sm.CanCollide = false
sm.CFrame = dubgun.CFrame
sm.Transparency = 0
sm.BrickColor = BrickColor.new("White")
sm.Material = "Neon"
coroutine.wrap(function()
for i = 1, 30 do
swait()
sm.Size = sm.Size + Vector3.new(1,1,1)
sm.Transparency = sm.Transparency + .05
end
sm:Remove()
end)()
local wb = Instance.new("Sound",dubgun)
wb.Volume = 4
wb.SoundId = "rbxassetid://1678747502"
wb:Play()
removeuseless:AddItem(wb,5)
local particlemiter = Instance.new("ParticleEmitter",dubgun)
particlemiter.Texture = "rbxassetid://1955503112"
particlemiter.Size = NumberSequence.new(2,.5)
particlemiter.Transparency = NumberSequence.new(0,1)
particlemiter.Enabled = true
particlemiter.LockedToPart = false
particlemiter.Speed = NumberRange.new(20)
particlemiter.RotSpeed = NumberRange.new(210)
particlemiter.Lifetime = NumberRange.new(2)
particlemiter.SpreadAngle = Vector2.new(-100,100)
particlemiter.Rate = 500
local particlemiter2 = Instance.new("ParticleEmitter",dubgun)
particlemiter2.Texture = "rbxassetid://149310730"
particlemiter2.Size = NumberSequence.new(2,.5)
particlemiter2.Transparency = NumberSequence.new(0,1)
particlemiter2.Enabled = true
particlemiter2.LockedToPart = false
particlemiter2.Speed = NumberRange.new(20)
particlemiter2.RotSpeed = NumberRange.new(210)
particlemiter2.Lifetime = NumberRange.new(2)
particlemiter2.SpreadAngle = Vector2.new(-100,100)
particlemiter2.Rate = 500
local particlemiter3 = Instance.new("ParticleEmitter",dubgun)
particlemiter3.Texture = "rbxassetid://35755888"
particlemiter3.Size = NumberSequence.new(2,.5)
particlemiter3.Transparency = NumberSequence.new(0,1)
particlemiter3.Enabled = true
particlemiter3.LockedToPart = false
particlemiter3.Speed = NumberRange.new(20)
particlemiter3.RotSpeed = NumberRange.new(210)
particlemiter3.Lifetime = NumberRange.new(2)
particlemiter3.SpreadAngle = Vector2.new(-100,100)
particlemiter3.Rate = 500
wait(.15)
coroutine.wrap(function()
particlemiter.Enabled = false
particlemiter2.Enabled = false
particlemiter3.Enabled = false
wait(5)
particlemiter3:Remove()
particlemiter:Remove()
particlemiter2:Remove()
end)()
debounce = false
elseif Press=='b' then
if debounce then return end
debounce = true
industrial = false
love = false
vinyl = true
godgun = false
classical = false
popstar = false
dada = false
brutal = false
crimson = false
muffled.SoundId = "rbxassetid://3102209482"
muffled:Play()
local sm = Instance.new("Part",Torso)
sm.Size = Vector3.new(2,2,2)
sm.Shape = "Ball"
sm.Anchored = true
sm.CanCollide = false
sm.CFrame = dubgun.CFrame
sm.Transparency = 0
sm.BrickColor = BrickColor.new("White")
sm.Material = "Neon"
coroutine.wrap(function()
for i = 1, 30 do
swait()
sm.Size = sm.Size + Vector3.new(1,1,1)
sm.Transparency = sm.Transparency + .05
end
sm:Remove()
end)()
local wb = Instance.new("Sound",dubgun)
wb.Volume = 4
wb.SoundId = "rbxassetid://1678747502"
wb:Play()
removeuseless:AddItem(wb,5)
local particlemiter = Instance.new("ParticleEmitter",dubgun)
particlemiter.Texture = "rbxassetid://1955503112"
particlemiter.Size = NumberSequence.new(2,.5)
particlemiter.Transparency = NumberSequence.new(0,1)
particlemiter.Enabled = true
particlemiter.LockedToPart = false
particlemiter.Speed = NumberRange.new(20)
particlemiter.RotSpeed = NumberRange.new(210)
particlemiter.Lifetime = NumberRange.new(2)
particlemiter.SpreadAngle = Vector2.new(-100,100)
particlemiter.Rate = 500
local particlemiter2 = Instance.new("ParticleEmitter",dubgun)
particlemiter2.Texture = "rbxassetid://149310730"
particlemiter2.Size = NumberSequence.new(2,.5)
particlemiter2.Transparency = NumberSequence.new(0,1)
particlemiter2.Enabled = true
particlemiter2.LockedToPart = false
particlemiter2.Speed = NumberRange.new(20)
particlemiter2.RotSpeed = NumberRange.new(210)
particlemiter2.Lifetime = NumberRange.new(2)
particlemiter2.SpreadAngle = Vector2.new(-100,100)
particlemiter2.Rate = 500
local particlemiter3 = Instance.new("ParticleEmitter",dubgun)
particlemiter3.Texture = "rbxassetid://35755888"
particlemiter3.Size = NumberSequence.new(2,.5)
particlemiter3.Transparency = NumberSequence.new(0,1)
particlemiter3.Enabled = true
particlemiter3.LockedToPart = false
particlemiter3.Speed = NumberRange.new(20)
particlemiter3.RotSpeed = NumberRange.new(210)
particlemiter3.Lifetime = NumberRange.new(2)
particlemiter3.SpreadAngle = Vector2.new(-100,100)
particlemiter3.Rate = 500
wait(.15)
coroutine.wrap(function()
particlemiter.Enabled = false
particlemiter2.Enabled = false
particlemiter3.Enabled = false
wait(5)
particlemiter3:Remove()
particlemiter:Remove()
particlemiter2:Remove()
end)()
debounce = false
elseif Press=='n' then
if debounce then return end
debounce = true
industrial = false
love = false
vinyl = false
godgun = false
classical = false
popstar = false
dada = true
brutal = false
crimson = false
muffled.SoundId = "rbxassetid://3104950452"
muffled:Play()
local sm = Instance.new("Part",Torso)
sm.Size = Vector3.new(2,2,2)
sm.Shape = "Ball"
sm.Anchored = true
sm.CanCollide = false
sm.CFrame = dubgun.CFrame
sm.Transparency = 0
sm.BrickColor = BrickColor.new("White")
sm.Material = "Neon"
coroutine.wrap(function()
for i = 1, 30 do
swait()
sm.Size = sm.Size + Vector3.new(1,1,1)
sm.Transparency = sm.Transparency + .05
end
sm:Remove()
end)()
local wb = Instance.new("Sound",dubgun)
wb.Volume = 4
wb.SoundId = "rbxassetid://1678747502"
wb:Play()
removeuseless:AddItem(wb,5)
local particlemiter = Instance.new("ParticleEmitter",dubgun)
particlemiter.Texture = "rbxassetid://1955503112"
particlemiter.Size = NumberSequence.new(2,.5)
particlemiter.Transparency = NumberSequence.new(0,1)
particlemiter.Enabled = true
particlemiter.LockedToPart = false
particlemiter.Speed = NumberRange.new(20)
particlemiter.RotSpeed = NumberRange.new(210)
particlemiter.Lifetime = NumberRange.new(2)
particlemiter.SpreadAngle = Vector2.new(-100,100)
particlemiter.Rate = 500
local particlemiter2 = Instance.new("ParticleEmitter",dubgun)
particlemiter2.Texture = "rbxassetid://149310730"
particlemiter2.Size = NumberSequence.new(2,.5)
particlemiter2.Transparency = NumberSequence.new(0,1)
particlemiter2.Enabled = true
particlemiter2.LockedToPart = false
particlemiter2.Speed = NumberRange.new(20)
particlemiter2.RotSpeed = NumberRange.new(210)
particlemiter2.Lifetime = NumberRange.new(2)
particlemiter2.SpreadAngle = Vector2.new(-100,100)
particlemiter2.Rate = 500
local particlemiter3 = Instance.new("ParticleEmitter",dubgun)
particlemiter3.Texture = "rbxassetid://35755888"
particlemiter3.Size = NumberSequence.new(2,.5)
particlemiter3.Transparency = NumberSequence.new(0,1)
particlemiter3.Enabled = true
particlemiter3.LockedToPart = false
particlemiter3.Speed = NumberRange.new(20)
particlemiter3.RotSpeed = NumberRange.new(210)
particlemiter3.Lifetime = NumberRange.new(2)
particlemiter3.SpreadAngle = Vector2.new(-100,100)
particlemiter3.Rate = 500
wait(.15)
coroutine.wrap(function()
particlemiter.Enabled = false
particlemiter2.Enabled = false
particlemiter3.Enabled = false
wait(5)
particlemiter3:Remove()
particlemiter:Remove()
particlemiter2:Remove()
end)()
debounce = false
elseif Press=='l' then
if debounce then return end
debounce = true
industrial = false
love = false
vinyl = false
godgun = false
classical = false
crimson = false
popstar = false
dada = false
brutal = true
muffled.SoundId = "rbxassetid://3105568121"
muffled:Play()
local sm = Instance.new("Part",Torso)
sm.Size = Vector3.new(2,2,2)
sm.Shape = "Ball"
sm.Anchored = true
sm.CanCollide = false
sm.CFrame = dubgun.CFrame
sm.Transparency = 0
sm.BrickColor = BrickColor.new("White")
sm.Material = "Neon"
coroutine.wrap(function()
for i = 1, 30 do
swait()
sm.Size = sm.Size + Vector3.new(1,1,1)
sm.Transparency = sm.Transparency + .05
end
sm:Remove()
end)()
local wb = Instance.new("Sound",dubgun)
wb.Volume = 4
wb.SoundId = "rbxassetid://1678747502"
wb:Play()
removeuseless:AddItem(wb,5)
local particlemiter = Instance.new("ParticleEmitter",dubgun)
particlemiter.Texture = "rbxassetid://1955503112"
particlemiter.Size = NumberSequence.new(2,.5)
particlemiter.Transparency = NumberSequence.new(0,1)
particlemiter.Enabled = true
particlemiter.LockedToPart = false
particlemiter.Speed = NumberRange.new(20)
particlemiter.RotSpeed = NumberRange.new(210)
particlemiter.Lifetime = NumberRange.new(2)
particlemiter.SpreadAngle = Vector2.new(-100,100)
particlemiter.Rate = 500
local particlemiter2 = Instance.new("ParticleEmitter",dubgun)
particlemiter2.Texture = "rbxassetid://149310730"
particlemiter2.Size = NumberSequence.new(2,.5)
particlemiter2.Transparency = NumberSequence.new(0,1)
particlemiter2.Enabled = true
particlemiter2.LockedToPart = false
particlemiter2.Speed = NumberRange.new(20)
particlemiter2.RotSpeed = NumberRange.new(210)
particlemiter2.Lifetime = NumberRange.new(2)
particlemiter2.SpreadAngle = Vector2.new(-100,100)
particlemiter2.Rate = 500
local particlemiter3 = Instance.new("ParticleEmitter",dubgun)
particlemiter3.Texture = "rbxassetid://35755888"
particlemiter3.Size = NumberSequence.new(2,.5)
particlemiter3.Transparency = NumberSequence.new(0,1)
particlemiter3.Enabled = true
particlemiter3.LockedToPart = false
particlemiter3.Speed = NumberRange.new(20)
particlemiter3.RotSpeed = NumberRange.new(210)
particlemiter3.Lifetime = NumberRange.new(2)
particlemiter3.SpreadAngle = Vector2.new(-100,100)
particlemiter3.Rate = 500
wait(.15)
coroutine.wrap(function()
particlemiter.Enabled = false
particlemiter2.Enabled = false
particlemiter3.Enabled = false
wait(5)
particlemiter3:Remove()
particlemiter:Remove()
particlemiter2:Remove()
end)()
debounce = false
elseif Press=='k' then
if debounce then return end
debounce = true
industrial = false
love = false
vinyl = false
godgun = false
classical = false
popstar = false
dada = false
brutal = false
crimson = true
muffled.SoundId = "rbxassetid://3107797809"
muffled:Play()
local sm = Instance.new("Part",Torso)
sm.Size = Vector3.new(2,2,2)
sm.Shape = "Ball"
sm.Anchored = true
sm.CanCollide = false
sm.CFrame = dubgun.CFrame
sm.Transparency = 0
sm.BrickColor = BrickColor.new("White")
sm.Material = "Neon"
coroutine.wrap(function()
for i = 1, 30 do
swait()
sm.Size = sm.Size + Vector3.new(1,1,1)
sm.Transparency = sm.Transparency + .05
end
sm:Remove()
end)()
local wb = Instance.new("Sound",dubgun)
wb.Volume = 4
wb.SoundId = "rbxassetid://1678747502"
wb:Play()
removeuseless:AddItem(wb,5)
local particlemiter = Instance.new("ParticleEmitter",dubgun)
particlemiter.Texture = "rbxassetid://1955503112"
particlemiter.Size = NumberSequence.new(2,.5)
particlemiter.Transparency = NumberSequence.new(0,1)
particlemiter.Enabled = true
particlemiter.LockedToPart = false
particlemiter.Speed = NumberRange.new(20)
particlemiter.RotSpeed = NumberRange.new(210)
particlemiter.Lifetime = NumberRange.new(2)
particlemiter.SpreadAngle = Vector2.new(-100,100)
particlemiter.Rate = 500
local particlemiter2 = Instance.new("ParticleEmitter",dubgun)
particlemiter2.Texture = "rbxassetid://149310730"
particlemiter2.Size = NumberSequence.new(2,.5)
particlemiter2.Transparency = NumberSequence.new(0,1)
particlemiter2.Enabled = true
particlemiter2.LockedToPart = false
particlemiter2.Speed = NumberRange.new(20)
particlemiter2.RotSpeed = NumberRange.new(210)
particlemiter2.Lifetime = NumberRange.new(2)
particlemiter2.SpreadAngle = Vector2.new(-100,100)
particlemiter2.Rate = 500
local particlemiter3 = Instance.new("ParticleEmitter",dubgun)
particlemiter3.Texture = "rbxassetid://35755888"
particlemiter3.Size = NumberSequence.new(2,.5)
particlemiter3.Transparency = NumberSequence.new(0,1)
particlemiter3.Enabled = true
particlemiter3.LockedToPart = false
particlemiter3.Speed = NumberRange.new(20)
particlemiter3.RotSpeed = NumberRange.new(210)
particlemiter3.Lifetime = NumberRange.new(2)
particlemiter3.SpreadAngle = Vector2.new(-100,100)
particlemiter3.Rate = 500
wait(.15)
coroutine.wrap(function()
particlemiter.Enabled = false
particlemiter2.Enabled = false
particlemiter3.Enabled = false
wait(5)
particlemiter3:Remove()
particlemiter:Remove()
particlemiter2:Remove()
end)()
debounce = false
end
end)

mouse.Button1Down:connect(function()
if debounce then return end
debounce = true
attacking = true
stop = false
change = .5
local enigma = false
x1 = Instance.new("Sound",dubgun)
if industrial then
x1.SoundId = "rbxassetid://3083319302"
elseif brutal then
x1.SoundId = "rbxassetid://3105571797"
elseif dada then
x1.SoundId = "rbxassetid://3105045607"
elseif crimson then
x1.SoundId = "rbxassetid://3107799061"
elseif love then
x1.SoundId = "rbxassetid://3102055459"
elseif vinyl then
x1.SoundId = "rbxassetid://3102210476"
elseif classical then
x1.SoundId = "rbxassetid://3076784522"
elseif godgun then
x1.SoundId = "rbxassetid://3101688545"
end
x1.Volume = 8
x1.Looped = false
x1:Play()
muffled.Volume = 0
local zm = true
local mz = false
local g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 2000
g1.MaxTorque = Vector3.new(0,9000000,0)
wait(.1)
coroutine.wrap(function()
while zm do
if stop then break end
change = .5
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
if swetch then
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(48), math.rad(0)),.2)
else
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(21), math.rad(0)),.2)
end
if godgun then
cam.FieldOfView = cam.FieldOfView - .08
elseif crimson then
cam.FieldOfView = cam.FieldOfView - .11
else
cam.FieldOfView = cam.FieldOfView - .23
end
swait()
end
if stop then
mz = true
removeuseless:AddItem(g1,.001)
end
end)()
wait(x1.TimeLength)
if mz then
removeuseless:AddItem(g1,.001)
else
local p = Instance.new("Part", dubgun)
p.Size = Vector3.new(1,1,1)
p.CanCollide = false
p.Transparency = 1
pw = weldBetween(p,dubgun)
pw.C0 = CFrame.new(-3.3,-0,.6)
local shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(5, 5, 5)
shockwave.Transparency = .4
if industrial then
shockwave.BrickColor = BrickColor.new("Really black")
elseif dada then
shockwave.BrickColor = BrickColor.new("Lime green")
elseif brutal then
shockwave.BrickColor = BrickColor.new("Really red")
elseif vinyl then
shockwave.BrickColor = BrickColor.new("Cyan")
elseif love then
shockwave.BrickColor = BrickColor.new("Pink")
elseif godgun then
shockwave.BrickColor = BrickColor.new("Gold")
elseif classical then
shockwave.BrickColor = BrickColor.new("White")
elseif crimson then
shockwave.BrickColor = BrickColor.new("Crimson")
end
shockwave.Anchored = true
shockwave.CanCollide = false
shockwave.CFrame = p.CFrame*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90))
sh = Instance.new("SpecialMesh", shockwave) 
sh.MeshId = "http://www.roblox.com/asset/?id=20329976" 
sh.Scale = Vector3.new(0, 0, 0)
local shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(5, 5, 5)
shockwave2.Transparency = .7
if industrial then
shockwave2.BrickColor = BrickColor.new("Really black")
elseif dada then
shockwave2.BrickColor = BrickColor.new("Lime green")
elseif brutal then
shockwave2.BrickColor = BrickColor.new("Really red")
elseif love then
shockwave2.BrickColor = BrickColor.new("Pink")
elseif vinyl then
shockwave2.BrickColor = BrickColor.new("Cyan")
elseif godgun then
shockwave2.BrickColor = BrickColor.new("Gold")
elseif classical then
shockwave2.BrickColor = BrickColor.new("White")
elseif crimson then
shockwave2.BrickColor = BrickColor.new("Crimson")
end
shockwave2.Anchored = true
shockwave2.CanCollide = false
shockwave2.CFrame = p.CFrame*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90))
sh2 = Instance.new("SpecialMesh", shockwave2) 
sh2.MeshId = "http://www.roblox.com/asset/?id=20329976" 
sh2.Scale = Vector3.new(2, 2, 2)
local shockwave3 = Instance.new("Part", Torso)
shockwave3.Size = Vector3.new(5, 5, 5)
shockwave3.Transparency = .2
if industrial then
shockwave3.BrickColor = BrickColor.new("Really black")
elseif dada then
shockwave3.BrickColor = BrickColor.new("Lime green")
elseif brutal then
shockwave3.BrickColor = BrickColor.new("Really red")
elseif love then
shockwave3.BrickColor = BrickColor.new("Pink")
elseif vinyl then
shockwave3.BrickColor = BrickColor.new("Cyan")
elseif godgun then
shockwave3.BrickColor = BrickColor.new("Gold")
elseif classical then
shockwave3.BrickColor = BrickColor.new("White")
elseif crimson then
shockwave3.BrickColor = BrickColor.new("Crimson")
end
shockwave3.Anchored = true
shockwave3.CanCollide = false
shockwave3.CFrame = p.CFrame*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90))
sh3 = Instance.new("SpecialMesh", shockwave3) 
sh3.MeshId = "http://www.roblox.com/asset/?id=20329976" 
sh3.Scale = Vector3.new(0, 0, 0)
local Blaster = Instance.new("Part", dubgun)
Blaster.Material = "Neon"
Blaster.Anchored = true
Blaster.CanCollide = false
Blaster.Transparency = .1
if industrial then
Blaster.BrickColor = BrickColor.new("Really black")
elseif dada then
Blaster.BrickColor = BrickColor.new("Lime green")
elseif brutal then
Blaster.BrickColor = BrickColor.new("Really red")
elseif vinyl then
Blaster.BrickColor = BrickColor.new("Cyan")
elseif love then
Blaster.BrickColor = BrickColor.new("Pink")
elseif godgun then
Blaster.BrickColor = BrickColor.new("Gold")
elseif classical then
Blaster.BrickColor = BrickColor.Random()
elseif crimson then
Blaster.BrickColor = BrickColor.new("Crimson")
end
Blaster.Size = Vector3.new(5,5,5)
BlasterShape = Instance.new("SpecialMesh", Blaster)
BlasterShape.MeshType = "Sphere"
BlasterShape.Scale = Vector3.new(1.8,1.8,1.8)
Blaster.CFrame = dubgun.CFrame * CFrame.new(43, 0, 0)
local TheBeam = Instance.new("Part", Blaster)
TheBeam.CanCollide = false
TheBeam.Shape = "Cylinder"
TheBeam.Transparency = .1
TheBeam.Size = Vector3.new(1000,3,3)
TheBeam.Material = "Neon"
TheBeam.Transparency = .25
TheBeam.Anchored = true
TheBeam.BrickColor = Blaster.BrickColor
TheBeam.CFrame = Blaster.CFrame * CFrame.new(-500,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
clenn = coroutine.wrap(function()
for i = 1, 40 do
sh.Scale = sh.Scale + Vector3.new(1,0,1)
sh.Parent.Transparency = sh.Parent.Transparency + .05
sh2.Scale = sh2.Scale + Vector3.new(1,0,1)
sh2.Parent.Transparency = sh2.Parent.Transparency + .05
sh3.Scale = sh3.Scale + Vector3.new(1,0,1)
sh3.Parent.Transparency = sh3.Parent.Transparency + .05
Blaster.Size = Blaster.Size - Vector3.new(5,5,5)
Blaster.Transparency = Blaster.Transparency + .05
TheBeam.Size = TheBeam.Size - Vector3.new(0,4,4)
TheBeam.Transparency = TheBeam.Transparency + .05
swait()
end
sh.Parent:Remove()
sh2.Parent:Remove()
sh3.Parent:Remove()
Blaster:Remove()
TheBeam:Remove()
end)
enigma = true
DASOUND = Instance.new("Sound",dubgun)
DASOUND.Volume = 8
if industrial then
DASOUND.SoundId = "rbxassetid://3083320744"
elseif dada then
DASOUND.SoundId = "rbxassetid://1736332220"
elseif love then
DASOUND.SoundId = "rbxassetid://1736518563"
elseif vinyl then
DASOUND.SoundId = "rbxassetid://1839911846"
elseif classical then
DASOUND.SoundId = "rbxassetid://3076799059"
elseif brutal then
DASOUND.SoundId = "rbxassetid://3105617268"
DASOUND.Pitch = .945
elseif crimson then
DASOUND.SoundId = "rbxassetid://3107798630"
elseif godgun then
DASOUND.SoundId = "rbxassetid://3101767795"
DASOUND.Pitch = .7
end
DASOUND.Looped = true
DASOUND:Play()
t = 0
n = 0
b = 0
coroutine.wrap(function()
while wait(.6) do
if not zm then break end
coroutine.wrap(function()
local b1 = Instance.new("Part",Torso)
b1.Size = Vector3.new(1,1,1)
b1.Anchored = true
b1.CanCollide = false
b1.Transparency = 1
b1.CFrame = p.CFrame * CFrame.new(math.random(-15,15),math.random(-15,15),math.random(-.5,15))
local l1 = b1:Clone() l1.Parent = Torso l1.Transparency = 1 l1.CFrame = p.CFrame
for i = 1, 20 do
l1.CFrame = l1.CFrame:lerp(CFrame.new(b1.Position),.1)
local magic = Instance.new("Part",Torso)
magic.Anchored = true
magic.CanCollide = false
magic.BrickColor = Blaster.BrickColor
magic.Material = "Neon"
magic.Size = Vector3.new(3+.5*math.sin(sine),3+.5*math.sin(sine),3+.5*math.sin(sine))
magic.CFrame = l1.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
coroutine.wrap(function()
for i = 1, 20 do
magic.Transparency = magic.Transparency + .05
swait()
end
magic:Remove()
end)()
swait()
end
local toched = false
l1.Anchored = false
local m1 = Instance.new("Part",Torso)
m1.Size = Vector3.new(1,1,1)
m1.Anchored = true
m1.CanCollide = false
m1.Transparency = 1
m1.Name = "m1"
m1.CFrame = CFrame.new(mouse.Hit.p)
local bov = Instance.new("BodyVelocity",l1)
bov.maxForce = Vector3.new(99999,99999,99999)
l1.CFrame = CFrame.new(l1.Position,m1.Position) 
bov.velocity = l1.CFrame.lookVector*200
l1.Touched:connect(function(hit)
if hit:IsA("Part") and hit.Name == "m1" then
if toched then return end
l1.Anchored = true
toched = true
for i = 1, 15 do
local c = Instance.new("Part",Torso)
c.Size = Vector3.new(2,1,2)
c.Material = "Neon"
c.Anchored = true
c.Shape = "Cylinder"
c.CanCollide = false
c.BrickColor = Blaster.BrickColor
c.CFrame = m1.CFrame * CFrame.new(math.random(-15,15),math.random(-15,15),math.random(-15,15)) * CFrame.Angles(math.rad(90),math.rad(90),0)
coroutine.wrap(function()
for i = 1, 30 do
c.Size = c.Size + Vector3.new(4,0,0)
c.Transparency = c.Transparency + .035
swait()
end
c:Remove()
end)()
end
random2 = randomsound[math.random(1,#randomsound)]
local sloc = Instance.new("Part",Torso)
sloc.CFrame = m1.CFrame
sloc.Anchored = true
sloc.Transparency = 1
sloc.CanCollide = false
sloc.Size = Vector3.new(1,1,1)
local s = Instance.new("Sound",sloc)
s.SoundId = "rbxassetid://"..random2
s.Volume = 2
s:Play()
removeuseless:AddItem(sloc,6)
Hit = damagealll(25,m1.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
slachtoffer:TakeDamage(math.random(14,25))
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(m1.Position,torso.Position).lookVector*85
removeuseless:AddItem(vel,.1)
end
end
local boom = Instance.new("Part",Torso)
boom.Size = Vector3.new(2,2,2)
boom.Transparency = 0
boom.BrickColor = Blaster.BrickColor
boom.Anchored = true
boom.CanCollide = false
boom.CFrame = m1.CFrame
boom.Material = "Neon"
boom.Shape = "Ball"
for i = 1, 20 do
boom.Size = boom.Size + Vector3.new(5,5,5)
boom.Transparency = boom.Transparency + .05
swait()
end
boom:Remove()
m1:Remove()
toched = true
end
end)
while true do
if toched then break end
local magic = Instance.new("Part",Torso)
magic.Anchored = true
magic.CanCollide = false
magic.BrickColor = Blaster.BrickColor
magic.Material = "Neon"
magic.Size = Vector3.new(3+.5*math.sin(sine),3+.5*math.sin(sine),3+.5*math.sin(sine))
magic.CFrame = l1.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
coroutine.wrap(function()
for i = 1, 20 do
magic.Transparency = magic.Transparency + .05
swait()
end
magic:Remove()
end)()
swait()
end
end)()
end
end)()
coroutine.wrap(function()
while wait(1.7) do
if not zm then break end
random = randomcolortable[math.random(1,#randomcolortable)]
local z = { 
Color = BrickColor.new(random).Color
}
if classical then
local lol = smoothen:Create(TheBeam,TweenInfo.new(2,Enum.EasingStyle.Linear),z)
lol:Play()
local lol2 = smoothen:Create(Blaster,TweenInfo.new(2,Enum.EasingStyle.Linear),z)
lol2:Play()
local lol3 = smoothen:Create(shockwave,TweenInfo.new(2,Enum.EasingStyle.Linear),z)
lol3:Play()
local lol4 = smoothen:Create(shockwave2,TweenInfo.new(2,Enum.EasingStyle.Linear),z)
lol4:Play()
local lol5 = smoothen:Create(shockwave3,TweenInfo.new(2,Enum.EasingStyle.Linear),z)
lol5:Play()
end
end
end)()
while true do
if stop then break end
t = t + 25
n = n + 12
b = b + 5
if godgun then
Blaster.CFrame = p.CFrame * CFrame.new(12,0,0)
else
Blaster.CFrame = p.CFrame * CFrame.new(3,0,0)
end
local STARTPOS = Blaster.CFrame*CFrame.new(0,0,0).p
local ENDHIT,ENDPOS = ray2(STARTPOS,mouse.Hit.p,650,Character)
local DISTANCE = (STARTPOS - ENDPOS).magnitude
shockwave.CFrame = p.CFrame * CFrame.Angles(math.rad(n),math.rad(0),math.rad(-90))
shockwave2.CFrame = p.CFrame * CFrame.Angles(math.rad(t),math.rad(0),math.rad(-90))
shockwave3.CFrame = p.CFrame * CFrame.Angles(math.rad(b),math.rad(0),math.rad(-90))
if godgun then
sh3.Scale = Vector3.new(24 + 6 * math.sin(sine), 2 , 24 + 6 * math.sin(sine))
sh2.Scale = Vector3.new(12 + 3 * math.sin(sine), 1 , 12 + 3 * math.sin(sine))
sh.Scale = Vector3.new(6 + 1.5 * math.sin(sine), .5, 6 + 1.5 * math.sin(sine))
TheBeam.CFrame = CFrame.new(STARTPOS,ENDPOS)*CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(0),math.rad(90),0)
TheBeam.Size = Vector3.new(DISTANCE,16 + 4 * math.sin(sine),16 + 4 * math.sin(sine))
Blaster.Size = Vector3.new(16 + 4 * math.sin(sine), 16 + 4 * math.sin(sine), 16 + 4 * math.sin(sine))
else
sh3.Scale = Vector3.new(8 + 2 * math.sin(sine),.5 + .1 * math.sin(sine/2),8 + 2 * math.sin(sine))
sh2.Scale = Vector3.new(4 + 1 * math.sin(sine), .25 + .05 * math.sin(sine/2), 4 + 1 * math.sin(sine))
sh.Scale = Vector3.new(2 + .5 * math.sin(sine), .125 + .025 * math.sin(sine/2), 2 + .5 * math.sin(sine))
TheBeam.CFrame = CFrame.new(STARTPOS,ENDPOS)*CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(0),math.rad(90),0)
TheBeam.Size = Vector3.new(DISTANCE,4 + 1 * math.sin(sine),4 + 1 * math.sin(sine))
Blaster.Size = Vector3.new(4 + 1 * math.sin(sine), 4 + 1 * math.sin(sine), 4 + 1 * math.sin(sine))
end
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
local wubsplosion = Instance.new("Part",Torso)
if godgun then
wubsplosion.Size = Vector3.new(62 + 10 * math.sin(sine),62 + 10 * math.sin(sine),62 + 10 * math.sin(sine))
else
wubsplosion.Size = Vector3.new(13 + 4 * math.sin(sine),13 + 2 * math.sin(sine),13 + 4 * math.sin(sine))
end
wubsplosion.Anchored = true
wubsplosion.BrickColor = TheBeam.BrickColor
wubsplosion.CFrame = CFrame.new(ENDPOS) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
wubsplosion.Transparency = .6
wubsplosion.CanCollide = false
wubsplosion.Material = "Neon"
coroutine.wrap(function()
for i = 1, 50 do
if godgun then
wubsplosion.Size = wubsplosion.Size - Vector3.new(4,4,4)
else
wubsplosion.Transparency = wubsplosion.Transparency - .02
wubsplosion.Size = wubsplosion.Size - Vector3.new(1,1,1)
end
swait()
end
wubsplosion:Remove()
end)()
if godgun then
Hit = damagealll(38,wubsplosion.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
slachtoffer.Parent:BreakJoints()
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(wubsplosion.Position,torso.Position).lookVector*500
removeuseless:AddItem(vel,.1)
end
end
elseif vinyl then
Hit = damagealll(15,wubsplosion.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
slachtoffer:TakeDamage(math.random(10,20))
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(wubsplosion.Position,torso.Position).lookVector*30
removeuseless:AddItem(vel,.1)
end
end
else
Hit = damagealll(8,wubsplosion.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
slachtoffer:TakeDamage(math.random(2,7))
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(wubsplosion.Position,torso.Position).lookVector*60
removeuseless:AddItem(vel,.1)
end
end
end
if swetch then
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(48), math.rad(0)),.2)
else
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(21), math.rad(0)),.2)
end
cam.FieldOfView = 70 - DASOUND.PlaybackLoudness/75
swait()
end
end
pcall(function()
clenn()
end)
zm = false
removeuseless:AddItem(g1,.001)
if enigma then
local m = Instance.new("Sound",dubgun)
if industrial then
m.SoundId = "rbxassetid://3083339955"
elseif brutal then
m.SoundId = "rbxassetid://3105577759"
elseif vinyl then
m.SoundId = "rbxassetid://3102208752"
elseif love then
m.SoundId = "rbxassetid://3102056030"
elseif dada then
m.SoundId = "rbxassetid://3104950005"
elseif classical then
m.SoundId = "rbxassetid://3076953125"
elseif crimson then
m.SoundId = "rbxassetid://3107798078"
elseif dubgun then
m.SoundId = "rbxassetid://3101688961"
end
m.Volume = 8
m:Play()
removeuseless:AddItem(m,6)
end
end)

mouse.Button1Up:connect(function()
attacking = false
debounce = false
stop = true
cam.FieldOfView = 70
muffled.Volume = .8
ws = 22
pcall(function()
x1:Remove()
DASOUND:Remove()
ROOTLERP.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
end)

end)

checks1 = coroutine.wrap(function() -------Checks
while true do
if Root.Velocity.y > 1 then
position = "Jump"
elseif Root.Velocity.y < -1 then
position = "Falling"
elseif Root.Velocity.Magnitude < 5 then
position = "Idle"
elseif Root.Velocity.Magnitude > 5 then
position = "Walking"
else
end
wait()
end
end)
checks1()

function ray(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function ray2(StartPos, EndPos, Distance, Ignore)
local DIRECTION = CFrame.new(StartPos,EndPos).lookVector
return ray(StartPos, DIRECTION, Distance, Ignore)
end

OrgnC0 = Neck.C0
local movelimbs = coroutine.wrap(function()
while wait() do
TrsoLV = Torso.CFrame.lookVector
Dist = nil
Diff = nil
if not MseGuide then
print("Failed to recognize")
else
local _, Point = Workspace:FindPartOnRay(Ray.new(Head.CFrame.p, mouse.Hit.lookVector), Workspace, false, true)
Dist = (Head.CFrame.p-Point).magnitude
Diff = Head.CFrame.Y-Point.Y
local _, Point2 = Workspace:FindPartOnRay(Ray.new(LeftArm.CFrame.p, mouse.Hit.lookVector), Workspace, false, true)
Dist2 = (LeftArm.CFrame.p-Point).magnitude
Diff2 = LeftArm.CFrame.Y-Point.Y
HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
Neck.C0 = Neck.C0:lerp(OrgnC0*CFrame.Angles((math.tan(Diff/Dist)*1), 0, (((Head.CFrame.p-Point).Unit):Cross(Torso.CFrame.lookVector)).Y*1), .1)
end
end
end)
movelimbs()
immortal = {}
for i,v in pairs(Character:GetDescendants()) do
	if v:IsA("BasePart") and v.Name ~= "lmagic" and v.Name ~= "rmagic" then
		if v ~= Root and v ~= Torso and v ~= Head and v ~= RightArm and v ~= LeftArm and v ~= RightLeg and v.Name ~= "lmagic" and v.Name ~= "rmagic" and v ~= LeftLeg then
			v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		end
		table.insert(immortal,{v,v.Parent,v.Material,v.Color,v.Transparency})
	elseif v:IsA("JointInstance") then
		table.insert(immortal,{v,v.Parent,nil,nil,nil})
	end
end
for e = 1, #immortal do
	if immortal[e] ~= nil then
		local STUFF = immortal[e]
		local PART = STUFF[1]
		local PARENT = STUFF[2]
		local MATERIAL = STUFF[3]
		local COLOR = STUFF[4]
		local TRANSPARENCY = STUFF[5]
if levitate then
		if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= eyo1 and PART.Name ~= eyo2 and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:connect(function()
			PART.Parent = PARENT
		end)
else
		if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:connect(function()
			PART.Parent = PARENT
		end)
end
	end
end
function immortality()
	for e = 1, #immortal do
		if immortal[e] ~= nil then
			local STUFF = immortal[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			if PART.ClassName == "Part" and PART == Root then
				PART.Material = MATERIAL
				PART.Color = COLOR
				PART.Transparency = TRANSPARENCY
			end
			if PART.Parent ~= PARENT then
				hum:Remove()
				PART.Parent = PARENT
				hum = Instance.new("Humanoid",Character)
if levitate then
eyo1:Remove()
eyo2:Remove()
end
                                hum.Name = "noneofurbusiness"
			end
		end
	end
end
coroutine.wrap(function()
while true do
hum:SetStateEnabled("Dead",false) hum:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
if hum.Health < .1 then
immortality()
end
wait()
end
end)()

local anims = coroutine.wrap(function()
while true do
settime = 0.05
sine = sine + change
if position == "Jump" then
change = 1
spin = false
if attacking then
swetch = false
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9, 1, .35) * CFrame.Angles(math.rad(-105), math.rad(0), math.rad(10)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.8, -.2, .45) * CFrame.Angles(math.rad(-110), math.rad(-60), math.rad(0)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.09)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)
else
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9, .85, .35) * CFrame.Angles(math.rad(-46 + 3 * math.sin(sine/8)), math.rad(9 + 1 * math.sin(sine/8)), math.rad(13)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.8, -.2, -.05) * CFrame.Angles(math.rad(-55 + 4 *math.sin(sine/8)), math.rad(-60 + 2 * math.sin(sine/8)), math.rad(0)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.09)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)
end
elseif position == "Falling" then
change = 1
spin = false
if attacking then
swetch = false
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9, 1, .35) * CFrame.Angles(math.rad(-85), math.rad(0), math.rad(10)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.8, -.2, .45) * CFrame.Angles(math.rad(-90), math.rad(-60), math.rad(0)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.09)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/12), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/12)), math.rad(0), math.rad(0)), 0.25)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(20), math.rad(0)), 0.25)
else
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.09)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9, .85, .35) * CFrame.Angles(math.rad(-46 + 3 * math.sin(sine/8)), math.rad(9 + 1 * math.sin(sine/8)), math.rad(13)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.8, -.2, -.05) * CFrame.Angles(math.rad(-55 + 4 *math.sin(sine/8)), math.rad(-60 + 2 * math.sin(sine/8)), math.rad(0)), 0.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/12), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/12)), math.rad(0), math.rad(0)), 0.25)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(20), math.rad(0)), 0.25)
end
elseif position == "Walking" then
change = 1.2
walking = true
spin = false
ws = 22
if attacking then
swetch = true
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9, 1, .35) * CFrame.Angles(math.rad(-95), math.rad(0), math.rad(10)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.8, -.2, .45) * CFrame.Angles(math.rad(-100), math.rad(-60), math.rad(0)), 0.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.52, 1.62 + .54 * math.cos(sine/8)/2.8,.2 + .5 * math.sin(sine/8)) * CFrame.Angles(math.rad(20 + 60* math.sin(sine/8)), math.rad(9-16)*math.cos(sine/8), math.rad(0), math.cos(65 * math.cos(sine/8))), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.52, 1.62 - .54 * math.cos(sine/8)/2.8,.2 - .5 * math.sin(sine/8)) * CFrame.Angles(math.rad(20 - 60* math.sin(sine/8)), math.rad(-9+16)*math.cos(sine/8), math.rad(0), math.cos(65 * math.cos(sine/8))), 0.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + 0.19*math.sin(sine/4), 0) * CFrame.Angles(math.rad(-10), math.rad(5 * math.cos(sine/7)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/10))), 0.1)
else
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9, .85, .35) * CFrame.Angles(math.rad(-46 + 3 * math.sin(sine/8)), math.rad(9 + 1 * math.sin(sine/8)), math.rad(13)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.8, -.2, -.05) * CFrame.Angles(math.rad(-55 + 4 *math.sin(sine/8)), math.rad(-60 + 2 * math.sin(sine/8)), math.rad(0)), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + 0.19*math.sin(sine/4), 0) * CFrame.Angles(math.rad(-10), math.rad(5 * math.cos(sine/7)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/10))), 0.1)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.52, 1.62 + .54 * math.cos(sine/8)/2.8,.2 + .5 * math.sin(sine/8)) * CFrame.Angles(math.rad(20 + 60* math.sin(sine/8)), math.rad(9-16)*math.cos(sine/8), math.rad(0), math.cos(65 * math.cos(sine/8))), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.52, 1.62 - .54 * math.cos(sine/8)/2.8,.2 - .5 * math.sin(sine/8)) * CFrame.Angles(math.rad(20 - 60* math.sin(sine/8)), math.rad(-9+16)*math.cos(sine/8), math.rad(0), math.cos(65 * math.cos(sine/8))), 0.3)
end
elseif position == "Idle" then
change = .5
spin = true
if attacking then
swetch = false
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9, 1, .35) * CFrame.Angles(math.rad(-85), math.rad(0), math.rad(10)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.8, -.2, .45) * CFrame.Angles(math.rad(-90), math.rad(-60), math.rad(0)), 0.2)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)),.2)
else
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9, .85, .35) * CFrame.Angles(math.rad(-52 + 2 * math.sin(sine/12)), math.rad(9 + 1 * math.sin(sine/12)), math.rad(13)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.8, -.2, -.05) * CFrame.Angles(math.rad(-62 + 3 *math.sin(sine/12)), math.rad(-60 + 2 * math.sin(sine/12)), math.rad(0)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)),.2)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.2)
end
end
swait()
end
end)
anims()
warn("FEEL THE BASS! Made by Taphly")
