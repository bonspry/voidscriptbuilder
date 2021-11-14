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
-- fd scripts starts here
-- Made by Seth --


gui = Instance.new("ScreenGui",game.CoreGui)
gui.ResetOnSpawn = false
gui.Name = "Get Fucked"

button = Instance.new("TextButton",gui)
button.BackgroundColor3 = Color3.new(35/255, 139/255, 218/255)
button.BorderColor3 = Color3.new(255/255, 255/255, 255/255)
button.BorderSizePixel = 5
button.Position = UDim2.new(0.8, 0,0.6, 0)
button.Size = UDim2.new(0, 60,0, 60)
button.Font = "Arial"
button.TextColor3 = Color3.new(255/255, 255/255, 255/255)
button.TextScaled = true
button.Text = ":)"
button.TextWrapped = true



button.MouseButton1Click:connect(function()

	local workspace = workspace:GetChildren()
	for i=1,#workspace do
     	local fire = Instance.new("Fire",workspace[i])
	 	fire.Size = 100
	end
	
	
	local blur = Instance.new("BlurEffect",game.Lighting)
	blur.Size = 20
	
	local bloom = Instance.new("BloomEffect",game.Lighting)
	bloom.Intensity = 1
	bloom.Size = 100
	bloom.Threshold = 0.1

	local cc = Instance.new("ColorCorrectionEffect",game.Lighting)
    cc.Contrast = 1
    cc.Brightness = 0.55
    cc.Saturation = 1
    cc.TintColor = Color3.new(255/255,0/255,0/255)

	local sound = Instance.new("Sound",game.Workspace)
	sound.Name = "Purge"
	sound.Looped = true
	sound.Volume = 10
	sound.SoundId = "rbxassetid://232554097"
	sound:Play()
	
	local sound = Instance.new("Sound",game.Workspace)
	sound.Name = "Earrape"
	sound.Looped = true
	sound.Volume = 10
	sound.SoundId = "rbxassetid://552367422"
	sound:Play()

	local sound = Instance.new("Sound",game.Workspace)
	sound.Name = "ForAllah"
	sound.Looped = true
	sound.Volume = 10
	sound.SoundId = "rbxassetid://424614632"
	sound:Play()
	
	local a=Instance.new("Sky",game.Lighting)

 	local b={"Bk","Dn","Ft","Lf","Rt","Up"}

	for i,v in pairs(b) do

 	a["Skybox"..v]="rbxassetid://479777511"
	end
	for i, v in pairs(game.Players:GetChildren()) do
	local pe = Instance.new("ParticleEmitter",v.Character.Torso)
	pe.Texture = "http://www.roblox.com/asset/?id=479777511"
	pe.VelocitySpread = 50
	end

	for i, v in pairs(game.Players:GetChildren()) do
	local pe = Instance.new("ParticleEmitter",v.Character.Torso)
	pe.Texture = "http://www.roblox.com/asset/?id=479777511"
	pe.VelocitySpread = 50
	end
	
	for i,v in pairs(game.Players:GetChildren()) do
	game:GetService("Chat"):Chat(v.Character.Head,"WELCOME TO POUND TOWN YOU FILTHY FUCKIN JEWS HAHAHAHA")
	end
	
	game.Workspace.Camera.FieldOfView = 50
	
	for i,v in pairs(game.Players:GetChildren()) do
	v.CameraMaxZoomDistance = 10
	v.CameraMinZoomDistance = 10
	end
end)
