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
UnionOperation0 = Instance.new("UnionOperation")
UnionOperation1 = Instance.new("UnionOperation")
Model2 = Instance.new("Model")
UnionOperation3 = Instance.new("UnionOperation")
Part4 = Instance.new("Part")
Weld5 = Instance.new("Weld")
Weld6 = Instance.new("Weld")
Part7 = Instance.new("Part")
Weld8 = Instance.new("Weld")
Weld9 = Instance.new("Weld")
UnionOperation10 = Instance.new("UnionOperation")
UnionOperation11 = Instance.new("UnionOperation")
Weld12 = Instance.new("Weld")
Weld13 = Instance.new("Weld")
UnionOperation14 = Instance.new("UnionOperation")
Weld15 = Instance.new("Weld")
Weld16 = Instance.new("Weld")
UnionOperation17 = Instance.new("UnionOperation")
Weld18 = Instance.new("Weld")
Weld19 = Instance.new("Weld")
UnionOperation20 = Instance.new("UnionOperation")
Weld21 = Instance.new("Weld")
Model22 = Instance.new("Model")
UnionOperation23 = Instance.new("UnionOperation")
Weld24 = Instance.new("Weld")
UnionOperation25 = Instance.new("UnionOperation")
Part26 = Instance.new("Part")
Weld27 = Instance.new("Weld")
ParticleEmitter28 = Instance.new("ParticleEmitter")
UnionOperation0.Name = "Halo"
UnionOperation0.Parent = mas
UnionOperation0.CFrame = CFrame.new(-253.796082, 5.06923103, 7.28811693, 1, 0, 0, 0, 0, -1, 0, 1, 0)
UnionOperation0.Orientation = Vector3.new(90, 0, 0)
UnionOperation0.Position = Vector3.new(-253.79608154296875, 5.069231033325195, 7.288116931915283)
UnionOperation0.Rotation = Vector3.new(90, 0, 0)
UnionOperation0.Color = Color3.new(0.490196, 1, 0.490196)
UnionOperation0.Size = Vector3.new(2.87109375, 0.1640625, 2.875)
UnionOperation0.Anchored = true
UnionOperation0.BrickColor = BrickColor.new("Olivine")
UnionOperation0.Material = Enum.Material.Neon
UnionOperation0.brickColor = BrickColor.new("Olivine")
UnionOperation0.UsePartColor = true
UnionOperation1.Name = "Clock"
UnionOperation1.Parent = mas
UnionOperation1.CFrame = CFrame.new(-193.796097, 5.06923103, -28.7118607, 1, 0, 0, 0, 1, 0, 0, 0, 1)
UnionOperation1.Position = Vector3.new(-193.7960968017578, 5.069231033325195, -28.71186065673828)
UnionOperation1.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
UnionOperation1.Size = Vector3.new(11.64000129699707, 0.8737506866455078, 11.64000129699707)
UnionOperation1.BrickColor = BrickColor.new("Really black")
UnionOperation1.Material = Enum.Material.Metal
UnionOperation1.brickColor = BrickColor.new("Really black")
Model2.Name = "GrandfatherClock"
Model2.Parent = mas
Model2.PrimaryPart = UnionOperation11
UnionOperation3.Name = "Face"
UnionOperation3.Parent = Model2
UnionOperation3.CFrame = CFrame.new(-153.796097, 60.5285645, -11.5048285, -0.00061631971, 0.000116668612, 1.00000012, 0.999969065, -0.00786994118, 0.000617218902, 0.00787001103, 0.999969363, -0.000111814574)
UnionOperation3.Orientation = Vector3.new(-0.03500000014901161, 90.00599670410156, 90.45099639892578)
UnionOperation3.Position = Vector3.new(-153.7960968017578, 60.528564453125, -11.504828453063965)
UnionOperation3.Rotation = Vector3.new(90.45099639892578, 90, 0)
UnionOperation3.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
UnionOperation3.Size = Vector3.new(13.724788665771484, 1.03024423122406, 13.724788665771484)
UnionOperation3.Anchored = true
UnionOperation3.BrickColor = BrickColor.new("Really black")
UnionOperation3.CanCollide = false
UnionOperation3.Material = Enum.Material.Metal
UnionOperation3.brickColor = BrickColor.new("Really black")
Part4.Parent = Model2
Part4.CFrame = CFrame.new(-143.546097, 16.5533981, -17.0185089, 0.000116668583, -0.000616319536, -0.999999881, -0.00786993932, 0.999968827, -0.000617218728, 0.999969125, 0.00787000917, 0.000111814545)
Part4.Orientation = Vector3.new(0.03500000014901161, -89.99400329589844, -0.45100000500679016)
Part4.Position = Vector3.new(-143.5460968017578, 16.55339813232422, -17.018508911132812)
Part4.Rotation = Vector3.new(0.45100000500679016, -90, 0)
Part4.Color = Color3.new(0.580392, 1, 0.572549)
Part4.Size = Vector3.new(11.764097213745117, 6.535610198974609, 1.307121992111206)
Part4.Anchored = true
Part4.BrickColor = BrickColor.new("Mint")
Part4.CanCollide = false
Part4.Material = Enum.Material.Wood
Part4.brickColor = BrickColor.new("Mint")
Part4.FormFactor = Enum.FormFactor.Custom
Part4.formFactor = Enum.FormFactor.Custom
Part4.Shape = Enum.PartType.Cylinder
Weld5.Name = "Part"
Weld5.Parent = Part4
Weld5.C0 = CFrame.new(-20.5232563, -0.167638555, 10.2465334, 0, 1, 0, 1, 0, 0, 0, 0, -1)
Weld5.Part0 = UnionOperation20
Weld5.Part1 = Part4
Weld5.part1 = Part4
Weld6.Name = "Part"
Weld6.Parent = Part4
Weld6.C0 = CFrame.new(-10.2014503, -0.0653591156, 5.73249435, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld6.Part0 = Part26
Weld6.Part1 = Part4
Weld6.part1 = Part4
Part7.Parent = Model2
Part7.CFrame = CFrame.new(-163.983612, 16.7352829, -16.8192978, 0.000116668583, -0.000616319536, -0.999999881, -0.00786993932, 0.999968827, -0.000617218728, 0.999969125, 0.00787000917, 0.000111814545)
Part7.Orientation = Vector3.new(0.03500000014901161, -89.99400329589844, -0.45100000500679016)
Part7.Position = Vector3.new(-163.98361206054688, 16.73528289794922, -16.819297790527344)
Part7.Rotation = Vector3.new(0.45100000500679016, -90, 0)
Part7.Color = Color3.new(0.580392, 1, 0.572549)
Part7.Size = Vector3.new(11.764097213745117, 6.535610198974609, 1.307121992111206)
Part7.Anchored = true
Part7.BrickColor = BrickColor.new("Mint")
Part7.CanCollide = false
Part7.Material = Enum.Material.Wood
Part7.brickColor = BrickColor.new("Mint")
Part7.FormFactor = Enum.FormFactor.Custom
Part7.formFactor = Enum.FormFactor.Custom
Part7.Shape = Enum.PartType.Cylinder
Weld8.Name = "Part"
Weld8.Parent = Part7
Weld8.C0 = CFrame.new(-20.3272076, 0.0283968318, -10.20994, 0, 1, 0, 1, 0, 0, 0, 0, -1)
Weld8.Part0 = UnionOperation20
Weld8.Part1 = Part7
Weld8.part1 = Part7
Weld9.Name = "Part"
Weld9.Parent = Part7
Weld9.C0 = CFrame.new(10.255022, 0.130689621, 5.53646088, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld9.Part0 = Part26
Weld9.Part1 = Part7
Weld9.part1 = Part7
UnionOperation10.Parent = Model2
UnionOperation10.CFrame = CFrame.new(-153.796097, 60.5599327, -15.5048285, -0.000116668612, -0.00061631971, 1.00000012, 0.00786994118, 0.999969065, 0.000617218902, -0.999969363, 0.00787001103, -0.000111814574)
UnionOperation10.Orientation = Vector3.new(-0.03500000014901161, 90.00599670410156, 0.45100000500679016)
UnionOperation10.Position = Vector3.new(-153.7960968017578, 60.559932708740234, -15.504828453063965)
UnionOperation10.Rotation = Vector3.new(0.45100000500679016, 90, 0)
UnionOperation10.Color = Color3.new(0.580392, 1, 0.572549)
UnionOperation10.Size = Vector3.new(6.8557233810424805, 11.389754295349121, 16.796518325805664)
UnionOperation10.Anchored = true
UnionOperation10.BrickColor = BrickColor.new("Mint")
UnionOperation10.CanCollide = false
UnionOperation10.Material = Enum.Material.Wood
UnionOperation10.brickColor = BrickColor.new("Mint")
UnionOperation10.UsePartColor = true
UnionOperation11.Name = "ads"
UnionOperation11.Parent = Model2
UnionOperation11.CFrame = CFrame.new(-154.108612, 35.4031067, -15.0673218, -0.000116668583, -0.000616319536, 0.999999881, 0.00786993932, 0.999968827, 0.000617218728, -0.999969125, 0.00787000917, -0.000111814545)
UnionOperation11.Orientation = Vector3.new(-0.03500000014901161, 90.00599670410156, 0.45100000500679016)
UnionOperation11.Position = Vector3.new(-154.10861206054688, 35.403106689453125, -15.06732177734375)
UnionOperation11.Rotation = Vector3.new(0.45100000500679016, 90, 0)
UnionOperation11.Color = Color3.new(0.803922, 0.803922, 0.803922)
UnionOperation11.Transparency = 0.5
UnionOperation11.Size = Vector3.new(4.230779647827148, 36.28080368041992, 12.711980819702148)
UnionOperation11.Anchored = true
UnionOperation11.BrickColor = BrickColor.new("Mid gray")
UnionOperation11.CanCollide = false
UnionOperation11.brickColor = BrickColor.new("Mid gray")
UnionOperation11.UsePartColor = true
Weld12.Name = "Union"
Weld12.Parent = UnionOperation11
Weld12.C0 = CFrame.new(-1.65267265, 1.63410187, -0.206612512, 0, 1, -0, -1, 0, 0, 0, 0, 1)
Weld12.Part0 = UnionOperation20
Weld12.Part1 = UnionOperation11
Weld12.part1 = UnionOperation11
Weld13.Name = "ads"
Weld13.Parent = UnionOperation11
Weld13.C0 = CFrame.new(0.251693726, 18.8052254, 3.93075562, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Weld13.Part0 = Part26
Weld13.Part1 = UnionOperation11
Weld13.part1 = UnionOperation11
UnionOperation14.Parent = Model2
UnionOperation14.CFrame = CFrame.new(-161.108612, 37.4585304, -11.7313843, -0.000116668583, -0.000616319536, 0.999999881, 0.00786993932, 0.999968827, 0.000617218728, -0.999969125, 0.00787000917, -0.000111814545)
UnionOperation14.Orientation = Vector3.new(-0.03500000014901161, 90.00599670410156, 0.45100000500679016)
UnionOperation14.Position = Vector3.new(-161.10861206054688, 37.45853042602539, -11.73138427734375)
UnionOperation14.Rotation = Vector3.new(0.45100000500679016, 90, 0)
UnionOperation14.Color = Color3.new(0.580392, 1, 0.572549)
UnionOperation14.Size = Vector3.new(0.8701345324516296, 39.4750862121582, 1.307123064994812)
UnionOperation14.Anchored = true
UnionOperation14.BrickColor = BrickColor.new("Mint")
UnionOperation14.CanCollide = false
UnionOperation14.Material = Enum.Material.Wood
UnionOperation14.brickColor = BrickColor.new("Mint")
UnionOperation14.UsePartColor = true
Weld15.Name = "Union"
Weld15.Parent = UnionOperation14
Weld15.C0 = CFrame.new(0.433388293, 4.95423794, -7.28811932, 0, 1, -0, -1, 0, 0, 0, 0, 1)
Weld15.Part0 = UnionOperation20
Weld15.Part1 = UnionOperation14
Weld15.part1 = UnionOperation14
Weld16.Name = "Union"
Weld16.Parent = UnionOperation14
Weld16.C0 = CFrame.new(7.33320141, 20.8912868, 0.610618591, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Weld16.Part0 = Part26
Weld16.Part1 = UnionOperation14
Weld16.part1 = UnionOperation14
UnionOperation17.Parent = Model2
UnionOperation17.CFrame = CFrame.new(-146.733612, 37.402256, -11.7333603, -0.000116668583, -0.000616319536, 0.999999881, 0.00786993932, 0.999968827, 0.000617218728, -0.999969125, 0.00787000917, -0.000111814545)
UnionOperation17.Orientation = Vector3.new(-0.03500000014901161, 90.00599670410156, 0.45100000500679016)
UnionOperation17.Position = Vector3.new(-146.73361206054688, 37.40225601196289, -11.733360290527344)
UnionOperation17.Rotation = Vector3.new(0.45100000500679016, 90, 0)
UnionOperation17.Color = Color3.new(0.580392, 1, 0.572549)
UnionOperation17.Size = Vector3.new(0.8701345324516296, 39.4750862121582, 1.307123064994812)
UnionOperation17.Anchored = true
UnionOperation17.BrickColor = BrickColor.new("Mint")
UnionOperation17.CanCollide = false
UnionOperation17.Material = Enum.Material.Wood
UnionOperation17.brickColor = BrickColor.new("Mint")
UnionOperation17.UsePartColor = true
Weld18.Name = "Union"
Weld18.Parent = UnionOperation17
Weld18.C0 = CFrame.new(0.368149161, 4.95423794, 7.09022045, 0, 1, -0, -1, 0, 0, 0, 0, 1)
Weld18.Part0 = UnionOperation20
Weld18.Part1 = UnionOperation17
Weld18.part1 = UnionOperation17
Weld19.Name = "Union"
Weld19.Parent = UnionOperation17
Weld19.C0 = CFrame.new(-7.04513931, 20.8260479, 0.610618591, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Weld19.Part0 = Part26
Weld19.Part1 = UnionOperation17
Weld19.part1 = UnionOperation17
UnionOperation20.Parent = Model2
UnionOperation20.CFrame = CFrame.new(-153.796097, 37.0687637, -16.6884308, -0.000616319536, 0.000116668583, 0.999999881, 0.999968827, -0.00786993932, 0.000617218728, 0.00787000917, 0.999969125, -0.000111814545)
UnionOperation20.Orientation = Vector3.new(-0.03500000014901161, 90.00599670410156, 90.45099639892578)
UnionOperation20.Position = Vector3.new(-153.7960968017578, 37.068763732910156, -16.688430786132812)
UnionOperation20.Rotation = Vector3.new(90.45099639892578, 90, 0)
UnionOperation20.Color = Color3.new(0.580392, 1, 0.572549)
UnionOperation20.Size = Vector3.new(63.790435791015625, 12.221590995788574, 21.436803817749023)
UnionOperation20.Anchored = true
UnionOperation20.BrickColor = BrickColor.new("Mint")
UnionOperation20.CanCollide = false
UnionOperation20.Material = Enum.Material.Wood
UnionOperation20.brickColor = BrickColor.new("Mint")
UnionOperation20.UsePartColor = true
Weld21.Name = "Union"
Weld21.Parent = UnionOperation20
Weld21.C0 = CFrame.new(0.0450820923, 20.4578972, 5.56485748, 0, 0, -1, 1, 0, 0, 0, -1, 0)
Weld21.Part0 = Part26
Weld21.Part1 = UnionOperation20
Weld21.part1 = UnionOperation20
Model22.Name = "Sway"
Model22.Parent = Model2
Model22.PrimaryPart = UnionOperation23
UnionOperation23.Parent = Model22
UnionOperation23.CFrame = CFrame.new(-154.108612, 39.3929787, -15.8485937, -0.000616319536, 0.000116668583, 0.999999881, 0.999968827, -0.00786993932, 0.000617218728, 0.00787000917, 0.999969125, -0.000111814545)
UnionOperation23.Orientation = Vector3.new(-0.03500000014901161, 90.00599670410156, 90.45099639892578)
UnionOperation23.Position = Vector3.new(-154.10861206054688, 39.39297866821289, -15.848593711853027)
UnionOperation23.Rotation = Vector3.new(90.45099639892578, 90, 0)
UnionOperation23.Color = Color3.new(0.972549, 0.972549, 0.972549)
UnionOperation23.Size = Vector3.new(34.803131103515625, 3.6299972534179688, 3.630002975463867)
UnionOperation23.Anchored = true
UnionOperation23.CanCollide = false
UnionOperation23.Material = Enum.Material.Metal
Weld24.Name = "Union"
Weld24.Parent = UnionOperation23
Weld24.C0 = CFrame.new(0.258869171, 22.7888737, 4.74209976, 0, 0, -1, 1, 0, 0, 0, -1, 0)
Weld24.Part0 = Part26
Weld24.Part1 = UnionOperation23
Weld24.part1 = UnionOperation23
UnionOperation25.Parent = Model2
UnionOperation25.CFrame = CFrame.new(-153.796097, 60.5759315, -17.5028915, -0.000116668598, -0.000616319594, 1, 0.00786994025, 0.999968946, 0.000617218786, -0.999969244, 0.0078700101, -0.000111814559)
UnionOperation25.Orientation = Vector3.new(-0.03500000014901161, 90.00599670410156, 0.45100000500679016)
UnionOperation25.Position = Vector3.new(-153.7960968017578, 60.575931549072266, -17.502891540527344)
UnionOperation25.Rotation = Vector3.new(0.45100000500679016, 90, 0)
UnionOperation25.Color = Color3.new(0.580392, 1, 0.572549)
UnionOperation25.Size = Vector3.new(10.620006561279297, 4.617401123046875, 7.968857765197754)
UnionOperation25.Anchored = true
UnionOperation25.BrickColor = BrickColor.new("Mint")
UnionOperation25.CanCollide = false
UnionOperation25.Material = Enum.Material.Wood
UnionOperation25.brickColor = BrickColor.new("Mint")
UnionOperation25.UsePartColor = true
Part26.Parent = Model2
Part26.CFrame = CFrame.new(-153.733612, 16.5672989, -11.2860937, -0.999999881, -0.000616319536, -0.000116668583, -0.000617218728, 0.999968827, 0.00786993932, 0.000111814545, 0.00787000917, -0.999969125)
Part26.Orientation = Vector3.new(-0.45100000500679016, -179.9929962158203, -0.03500000014901161)
Part26.Position = Vector3.new(-153.73361206054688, 16.567298889160156, -11.286093711853027)
Part26.Rotation = Vector3.new(-179.5489959716797, -0.007000000216066837, 179.96499633789062)
Part26.Color = Color3.new(0.580392, 1, 0.572549)
Part26.Size = Vector3.new(21.306087493896484, 6.535610198974609, 1.307121992111206)
Part26.Anchored = true
Part26.BrickColor = BrickColor.new("Mint")
Part26.CanCollide = false
Part26.Material = Enum.Material.Wood
Part26.brickColor = BrickColor.new("Mint")
Part26.FormFactor = Enum.FormFactor.Custom
Part26.formFactor = Enum.FormFactor.Custom
Part26.Shape = Enum.PartType.Cylinder
Weld27.Name = "Part"
Weld27.Parent = Part26
Weld27.C0 = CFrame.new(-20.4578972, 5.56485796, 0.0450821593, 0, 1, 0, 0, 0, -1, -1, 0, 0)
Weld27.Part0 = UnionOperation20
Weld27.Part1 = Part26
Weld27.part1 = Part26
ParticleEmitter28.Name = "Dust"
ParticleEmitter28.Parent = mas
ParticleEmitter28.Speed = NumberRange.new(0.25, 1)
ParticleEmitter28.Color = ColorSequence.new(Color3.new(0.972549, 0.85098, 0.427451),Color3.new(0.972549, 0.85098, 0.427451))
ParticleEmitter28.LightEmission = 1
ParticleEmitter28.Texture = "rbxassetid://1081534242"
ParticleEmitter28.Transparency = NumberSequence.new(1,0.3499999940395355,0.10000000149011612,0.4000000059604645,1)
ParticleEmitter28.ZOffset = 1
ParticleEmitter28.Size = NumberSequence.new(0.02500000037252903,0.02500000037252903)
ParticleEmitter28.Acceleration = Vector3.new(0, 2.5, 0)
ParticleEmitter28.Lifetime = NumberRange.new(2, 2)
ParticleEmitter28.Rate = 52
ParticleEmitter28.SpreadAngle = Vector2.new(180, 180)
ParticleEmitter28.VelocitySpread = 180
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
repeat wait(1) until script:FindFirstChild("Clock")

Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character["HumanoidRootPart"]
Torso = Character.Torso
Head = Character.Head
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart.RootJoint
Neck = Torso.Neck
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
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
Animation_Speed = 3
Frame_Speed = 0.016666666666666666
local Speed = 16
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local DAMAGEMULTIPLIER = 1
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local Rooted = false
local SINE = 0
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local VALUE1 = false
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=2140511053"
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "Weapon GUI"
local Effects = IT("Folder", Character)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local UNANCHOR = true
local TIMESPOT, TIMEVELOCITY, TIMESTAMP
local SPEDUP = false
local GFT = false
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
function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id=" .. MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id=" .. TEXTUREID
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
local weldBetween = function(a, b)
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
		if m00 < m11 then
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
			local recip = 0.5 / s
			return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
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
	local startInterp, finishInterp
	if cosTheta >= 1.0E-4 then
		if 1 - cosTheta > 1.0E-4 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	elseif 1 + cosTheta > 1.0E-4 then
		local theta = ACOS(-cosTheta)
		local invSinTheta = 1 / SIN(theta)
		startInterp = SIN((t - 1) * theta) * invSinTheta
		finishInterp = SIN(t * theta) * invSinTheta
	else
		startInterp = t - 1
		finishInterp = t
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function Clerp(a, b, t)
	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	}
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
	local NEWSOUND
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.EmitterSize = VOLUME * 3
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id=" .. ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat
				wait(1)
			until NEWSOUND.Playing == false
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end
function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
function WACKYEFFECT(Table)
	local TYPE = Table.EffectType or "Sphere"
	local SIZE = Table.Size or VT(1, 1, 1)
	local ENDSIZE = Table.Size2 or VT(0, 0, 0)
	local TRANSPARENCY = Table.Transparency or 0
	local ENDTRANSPARENCY = Table.Transparency2 or 1
	local CFRAME = Table.CFrame or Torso.CFrame
	local MOVEDIRECTION = Table.MoveToPos or nil
	local ROTATION1 = Table.RotationX or 0
	local ROTATION2 = Table.RotationY or 0
	local ROTATION3 = Table.RotationZ or 0
	local MATERIAL = Table.Material or "Neon"
	local COLOR = Table.Color or C3(1, 1, 1)
	local TIME = Table.Time or 45
	local SOUNDID = Table.SoundID or nil
	local SOUNDPITCH = Table.SoundPitch or nil
	local SOUNDVOLUME = Table.SoundVolume or nil
	local USEBOOMERANGMATH = Table.UseBoomerangMath or false
	local BOOMERANG = Table.Boomerang or 0
	local SIZEBOOMERANG = Table.SizeBoomerang or 0
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1, 1, 1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh", EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0, 0, -SIZE.X / 8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X, SIZE.X, 0.1), VT(0, 0, 0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "168892432", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "450656451", "", SIZE, VT(0, 0, 0))
		end
		coroutine.resume(coroutine.create(function()
			if MSH ~= nil then
				local BOOMR1 = 1 + BOOMERANG / 50
				local BOOMR2 = 1 + SIZEBOOMERANG / 50
				local MOVESPEED = nil
				if MOVEDIRECTION ~= nil then
					MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
				end
				local GROWTH
				if USEBOOMERANGMATH == true then
					GROWTH = (SIZE - ENDSIZE) * (BOOMR2 + 1)
				else
					GROWTH = SIZE - ENDSIZE
				end
				local TRANS = TRANSPARENCY - ENDTRANSPARENCY
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				else
					EFFECT.CFrame = CFRAME
				end
				if USEBOOMERANGMATH == true then
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - VT(GROWTH.X * (1 - LOOP / TIME * BOOMR2), GROWTH.Y * (1 - LOOP / TIME * BOOMR2), GROWTH.Z * (1 - LOOP / TIME * BOOMR2)) * BOOMR2 / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = CF(EFFECT.Position, MOVEDIRECTION) * CF(0, 0, -MOVESPEED * (1 - LOOP / TIME * BOOMR1))
							EFFECT.Orientation = ORI
						end
					end
				else
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - GROWTH / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
							EFFECT.Orientation = ORI
						end
					end
				end
				EFFECT.Transparency = 1
				if PLAYSSOUND == false then
					EFFECT:remove()
				else
					repeat
						Swait()
					until EFFECT:FindFirstChildOfClass("Sound") == nil
					EFFECT:remove()
				end
			elseif PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat
					Swait()
				until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end))
		return EFFECT
	end))
end
function MakeForm(PART, TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh", PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh", PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh", PART)
		MSH.MeshType = "Wedge"
	end
end
Debris = game:GetService("Debris")
function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos, EndPos).lookVector
	local Ignore = type(Ignore) == "table" and Ignore or {Ignore}
	return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, DIRECTION * Distance), Ignore)
end


function Debree(Table)
	local KindOf = Table.Variant or "Ring"
	local Position = Table.Location or Torso.Position
	local Coloration = Table.Color or C3(1, 1, 1)
	local Texture = Table.Material or "Slate"
	local Fling = Table.Scatter or 1
	local Number = Table.Amount or 1
	local Rocks = Table.DebreeCount or 1
	local Range = Table.Distance or 1
	local Scale = Table.Size or 1
	local Timer = Table.Delay or 1.5
	coroutine.resume(coroutine.create(function()
		local ScaleVector = VT(Scale, Scale, Scale)
		local Boulders = {}
		Position = CF(Position)
		if KindOf == "Ring" or KindOf == "Both" then
			for RockValue = 1, Number do
				local LOCATION = Position * ANGLES(RAD(0), RAD(360 / Number * RockValue), RAD(0)) * CF(0, MRANDOM(-math.ceil(Scale / 2), math.ceil(Scale / 2)), Range)
				local BOULDER = CreatePart(3, workspace, Texture, 0, 0, BRICKC("Pearl"), "Debree", ScaleVector, true)
				BOULDER.CanCollide = true
				BOULDER.CFrame = LOCATION * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				BOULDER.Color = Coloration
				table.insert(Boulders, BOULDER)
			end
		end
		if KindOf == "Loose" or KindOf == "Both" then
			for RockValue = 1, Rocks do
				local LOCATION = Position * ANGLES(RAD(0), RAD(360 / Number * RockValue), RAD(0)) * CF(0, MRANDOM(-math.ceil(Scale - Scale / 2), math.ceil(Scale - Scale / 2)), 0.7)
				local BOULDER = CreatePart(3, workspace, Texture, 0, 0, BRICKC("Pearl"), "Debree", ScaleVector, false)
				BOULDER.CanCollide = true
				BOULDER.CFrame = LOCATION * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				BOULDER.Velocity = CF(BOULDER.Position - VT(0, 4, 0), BOULDER.CFrame * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))) * CF(0, 5, 0).p).lookVector * MRANDOM(Fling - Fling / 1.5, Fling + Fling / 1.5)
				BOULDER.Color = Coloration
				table.insert(Boulders, BOULDER)
			end
		end
		if KindOf == "Random" then
			for RockValue = 1, Number do
				local LOCATION = Position * ANGLES(RAD(0), RAD(360 / Number * RockValue), RAD(0)) * CF(0, MRANDOM(-math.ceil(Scale / 2), math.ceil(Scale / 2)), MRANDOM(0, Range))
				local BOULDER = CreatePart(3, workspace, Texture, 0, 0, BRICKC("Pearl"), "Debree", ScaleVector, true)
				BOULDER.CanCollide = true
				BOULDER.CFrame = LOCATION * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				BOULDER.Color = Coloration
				table.insert(Boulders, BOULDER)
			end
		end
		wait(Timer)
		for E = 1, 45 do
			Swait()
			for A = 1, #Boulders do
				Boulders[A].Transparency = Boulders[A].Transparency + 0.022222222222222223
			end
		end
		for A = 1, #Boulders do
			Boulders[A]:Destroy()
		end
	end))
end
local CAMSHAKECODE = [==[
-- Synapse Decompiler
-- Purchase Here: https://brack4712.xyz/synapse/purchase/

VT = Vector3.new
MRANDOM = math.random
local A, B, C
local HUMANOID = script.Parent:FindFirstChildOfClass("Humanoid")
for _, c in pairs(script:GetChildren()) do
	if c.Name == "Timer" then
		A = c.Value
	elseif c.Name == "Shake" then
		B = c.Value * 5
	elseif c.Name == "DoesFade" then
		C = c.Value
	end
end
local TIMER = A or 35
local SHAKE = B or 5
local FADE = C or true
if HUMANOID and game.Players:FindFirstChild(script.Parent.Name) then
	local FADER = SHAKE / TIMER
	for i = 1, TIMER do
		wait()
		HUMANOID.CameraOffset = VT(MRANDOM(-(SHAKE - FADER * i), SHAKE - FADER * i) / 10, MRANDOM(-(SHAKE - FADER * i), SHAKE - FADER * i) / 10, MRANDOM(-(SHAKE - FADER * i), SHAKE - FADER * i) / 10)
	end
	HUMANOID.CameraOffset = VT(0, 0, 0)
end
script:remove()
]==]
local CAMSHAKE = NLS(CAMSHAKECODE, script)
  
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
BoolValue0 = Instance.new("BoolValue")
NumberValue1 = Instance.new("NumberValue")
NumberValue2 = Instance.new("NumberValue")
BoolValue0.Name = "DoesFade"
BoolValue0.Parent = mas
NumberValue1.Name = "Shake"
NumberValue1.Parent = mas
NumberValue1.Value = 5
NumberValue2.Name = "Timer"
NumberValue2.Parent = mas
NumberValue2.Value = 35
for i,v in pairs(mas:GetChildren()) do
	v.Parent = CAMSHAKE
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
function CamShake(POSITION, RANGE, INTENSITY, TIME)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO and RANGE >= (TORSO.Position - POSITION).Magnitude then
					local CAMSHAKER = NLS(CAMSHAKECODE, CHILD)
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
BoolValue0 = Instance.new("BoolValue")
NumberValue1 = Instance.new("NumberValue")
NumberValue2 = Instance.new("NumberValue")
BoolValue0.Name = "DoesFade"
BoolValue0.Parent = mas
NumberValue1.Name = "Shake"
NumberValue1.Parent = mas
NumberValue1.Value = 5
NumberValue2.Name = "Timer"
NumberValue2.Parent = mas
NumberValue2.Value = 35
for i,v in pairs(mas:GetChildren()) do
	v.Parent = CAMSHAKER
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
					task.wait()
					CAMSHAKER.Shake.Value = INTENSITY
					CAMSHAKER.Timer.Value = TIME
					CAMSHAKER.Parent = CHILD
					CAMSHAKER.Disabled = false
				end
			end
		end
	end
end
function ClockEffect(CFRAME, SIZE, TIME)
	coroutine.resume(coroutine.create(function()
		local PART = CreatePart(3, Effects, "Neon", 0, 1, "Mid gray", "Clock", VT(0, 0, 0), true)
		PART.CFrame = CFRAME
		local GUI = IT("BillboardGui", PART)
		GUI.Size = UD2(0, 0, 0, 0)
		local GUI2 = IT("ImageLabel", GUI)
		GUI2.BackgroundTransparency = 1
		GUI2.BorderSizePixel = 0
		GUI2.Size = UDim2.new(1, 0, 1, 0)
		GUI2.SizeConstraint = "RelativeYY"
		GUI.AlwaysOnTop = true
		GUI2.Image = "http://www.roblox.com/asset/?id=187884215"
		for i = 1, TIME do
			Swait()
			GUI.Size = GUI.Size + UD2(SIZE / TIME, 0, SIZE / TIME, 0)
			GUI2.ImageTransparency = GUI2.ImageTransparency + 1 / TIME
		end
		PART:Remove()
	end))
end
function Vocal(ID)
	if Head:FindFirstChild("Speak up") then
		Head:FindFirstChild("Speak up").Playing = false
		Debris:AddItem(Head:FindFirstChild("Speak up"), 0.2)
	end
	local SOUND = CreateSound(ID, Head, 7, 1, false)
	SOUND.Name = "Speak up"
end
local BMUSIC = IT("Sound", RootPart)
local VOLUME = 3
local PITCH = 1
local HALO = script.Halo
HALO.Anchored = false
local BASECOLOR = HALO.Color
local SKILLFONT = "Antique"
local SKILLTEXTSIZE = 6.5
local ATTACKS = {
	{
		"Temporal Temper",
		"Z"
	},
	{
		"Chronostasis",
		"X"
	},
	{
		"Fast Forward",
		"C"
	},
	{
		"Chronos Cannon",
		"V"
	},
	{
		"Temporalysis",
		"B"
	},
	{
		"Chronosyntax",
		"M"
	},
	{
		"Temporal Trap",
		"G"
	},
	{
		"Grandfather Time",
		"Q"
	}
}
for i = 1, #ATTACKS do
	local SKILLFRAME = CreateFrame(WEAPONGUI, 0.8, 2, UD2(0.87, 0, 1 - 0.04 * i, 0), UD2(0.13, 0, 0.03, 0), C3(0, 0, 0), C3(0.5, 0.5, 1), "Skill Frame")
	local SKILLTEXT = CreateLabel(SKILLFRAME, "[" .. ATTACKS[i][1] .. "]", BASECOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0, "Skill text")
	SKILLTEXT.TextXAlignment = "Right"
	local BUTTONDISPLAY = CreateLabel(SKILLFRAME, "[" .. ATTACKS[i][2] .. "]", BASECOLOR, SKILLTEXTSIZE - 1, SKILLFONT, 0, 2, 0, "Skill text")
	BUTTONDISPLAY.TextXAlignment = "Left"
end
local CLOCKLOOP = 0
local CLOCKSPEED = 1
HALO.Parent = Character
local HaloWeld = CreateWeldOrSnapOrMotor("Weld", Head, Head, HALO, CF(0, 0.65, 0) * ANGLES(RAD(-12), RAD(0), RAD(0)) * CF(0, 0.65, 0), CF(0, 0, 0))
local PRT = CreatePart(3, HALO, "Neon", 0, 0, "Mid gray", "Visor", VT(0.05, 0.1, 0.4) * (HALO.Size.Y * 10), false)
PRT.Color = HALO.Color
local WATCH1 = CreateWeldOrSnapOrMotor("Weld", PRT, HALO, PRT, CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, -(PRT.Size.Z / 3 + 0.2)))
local PRT = CreatePart(3, HALO, "Neon", 0, 0, "Mid gray", "Visor", VT(0.05, 0.1, 0.26666666666666666) * (HALO.Size.Y * 10), false)
PRT.Color = HALO.Color
local WATCH2 = CreateWeldOrSnapOrMotor("Weld", PRT, HALO, PRT, CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, -(PRT.Size.Z / 3 + 0.2)))
local PRT = CreatePart(3, HALO, "Neon", 0, 0, "Mid gray", "Visor", VT(0.15,0.1,0.15) * (HALO.Size.Y * 10), false)
PRT.Color = HALO.Color
MakeForm(PRT,"Cyl")
local ad = CreateWeldOrSnapOrMotor("Weld", PRT, HALO, PRT, CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0,0))
coroutine.resume(coroutine.create(function()
	while true do
		Swait()
		CLOCKLOOP = CLOCKLOOP - 1 * CLOCKSPEED
		WATCH1.C0 = Clerp(WATCH1.C0, CF(0, 0, 0) * ANGLES(RAD(0), RAD(CLOCKLOOP * 5), RAD(0)), 1 / Animation_Speed)
		WATCH2.C0 = Clerp(WATCH2.C0, CF(0, 0, 0) * ANGLES(RAD(0), RAD(CLOCKLOOP * 5 / 2), RAD(0)), 1 / Animation_Speed)
		if CLOCKLOOP <= -149 and VALUE1 == false then
			CLOCKLOOP = 0
		end
	end
end))
Neck.Name = "Weld"
RootJoint.Name = "Weld"
RightShoulder.Name = "Weld"
LeftShoulder.Name = "Weld"
RightHip.Name = "Weld"
LeftHip.Name = "Weld"
local DUST = script.Dust
DUST:Remove()
local PERMACHROMECODE = [==[
repeat
	wait()
until script:FindFirstChild("Undo")
local BOOL = script.Undo
do
	local TIMER = 15
	local CAM = workspace.CurrentCamera
	local FX = Instance.new("ColorCorrectionEffect", CAM)
	FX.Brightness = 1
	FX.Saturation = -1
	local TIME1 = math.ceil(TIMER / 7)
	for i = 1, TIME1 do
		wait()
		FX.Brightness = FX.Brightness - 1 / TIME1
	end
	BOOL.Changed:Connect(function()
		if BOOL.Value == true then
			for i = 1, TIMER do
				wait()
				FX.Saturation = FX.Saturation + 1 / TIMER
			end
			FX:Remove()
			script:Remove()
		end
	end)
end
]==]
local PERMACHROME = NLS(PERMACHROMECODE, script)
local GFC = script.GrandfatherClock
GFC.Parent = nil
local CLOCKPART = script.Clock
CLOCKPART.Parent = nil
for _, v in next, Humanoid:GetPlayingAnimationTracks() do
	v:Stop()
end
for _, c in pairs(Character:GetChildren()) do
	if c and c.Parent and c.ClassName == "Accessory" then
		local ACCESSORY = c
		local HANDLE = c.Handle
		HANDLE.Parent = Character
		if c then
			if HANDLE:FindFirstChild("HatAttachment") or HANDLE:FindFirstChild("FaceFrontAttachment") or HANDLE:FindFirstChild("HairAttachment") then
				local WLD = weldBetween(Head, HANDLE)
			else
				local WLD = weldBetween(Torso, HANDLE)
			end
		end
		HANDLE.Name = ACCESSORY.Name
		ACCESSORY:remove()
	end
end
local BODY = {}
for _, c in pairs(Character:GetDescendants()) do
	if c:IsA("BasePart") and c.Name ~= "Handle" then
		if c ~= RootPart and c ~= Torso and c ~= Head and c ~= RightArm and c ~= LeftArm and c ~= RightLeg and c ~= LeftLeg then
			c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		end
		table.insert(BODY, {
			c,
			c.Parent,
			c.Material,
			c.Color,
			c.Transparency,
			c.Size,
			c.Name
		})
	elseif c:IsA("JointInstance") or c:IsA("Shirt") or c:IsA("Pants") then
		table.insert(BODY, {
			c,
			c.Parent,
			nil,
			nil,
			nil,
			nil,
			nil
		})
	end
end
function refit()
	Character.Parent = workspace
	Effects.Parent = Character
	for e = 1, #BODY do
		if BODY[e] ~= nil then
			local STUFF = BODY[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			local NAME = STUFF[7]
			if PART.ClassName == "Part" and PART ~= RootPart then
				PART.Material = MATERIAL
				PART.Transparency = TRANSPARENCY
				PART.Name = NAME
			end
			if PART.Parent ~= PARENT then
				if PART.Name == "Head" or PART.Name == "Neck" or PART.Name == "Torso" then
					Humanoid:remove()
				end
				PART.Parent = PARENT
				if PART.Name == "Head" or PART.Name == "Neck" or PART.Name == "Torso" then
					Humanoid = IT("Humanoid", Character)
				end
			end
		end
	end
end
Humanoid.Died:connect(function()
	refit()
end)
local NILCODE = [==[
local PLAYER = game.Players:FindFirstChild(script.Parent.Name)
if PLAYER then
	for _, c in pairs(PLAYER.PlayerGui:GetChildren()) do
		if c:FindFirstChildOfClass("LocalScript") or c:FindFirstChildOfClass("Script") and c.Name ~= "FreeCamera" then
			c:remove()
		end
	end
end

script:remove()
]==]
function ApplyDamage(Humanoid, Damage)
	if Damage > 0 then
		Damage = Damage * DAMAGEMULTIPLIER
		if Humanoid.Health < 2000 then
			if 0 < Humanoid.Health - Damage then
				Humanoid.Health = Humanoid.Health - Damage
			else
				Humanoid.Parent:BreakJoints()
				local NIL = NS(NILCODE, Humanoid.Parent)
				NIL.Disabled = false
			end
		else
			Humanoid.Parent:BreakJoints()
			local NIL = NS(NILCODE, Humanoid.Parent)
			NIL.Disabled = false
		end
	end
end
function ApplyAoE(POSITION, RANGE, MINDMG, MAXDMG, FLING, INSTAKILL)
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO and RANGE >= (TORSO.Position - POSITION).Magnitude then
					if INSTAKILL == true then
						CHILD:BreakJoints()
						local NIL = NS(NILCODE, CHILD)
						NIL.Disabled = false
					else
						local DMG = MRANDOM(MINDMG, MAXDMG)
						ApplyDamage(HUM, DMG)
					end
					if FLING ~= 0 then
						for _, c in pairs(CHILD:GetChildren()) do
							if c:IsA("BasePart") then
								local bv = Instance.new("BodyVelocity")
								bv.maxForce = Vector3.new(1000000000, 1000000000, 1000000000)
								bv.velocity = CF(POSITION, TORSO.Position).lookVector * FLING
								bv.Parent = c
								Debris:AddItem(bv, 0.05)
							end
						end
					end
				end
			end
		end
	end
end
function TemporalTemper()
	ATTACK = true
	Rooted = true
	for e = 0, 0.1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0.2, -0.1 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(-15), RAD(0), RAD(-35)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(35)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(-25)) * RIGHTSHOULDERC0, 1.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), 0.6) * ANGLES(RAD(1.5 - 1.5 * SIN(SINE / 12)), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(90 - 2.5 * COS(SINE / 12)), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(-15), RAD(100), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(-15), RAD(-50), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 0.3 / Animation_Speed)
	end
	for i = 1, 3 do
		for e = 0, 0.3, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0.2, -0.1 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(-15), RAD(0), RAD(-35)), 0.3 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(35)), 0.3 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0.4) * ANGLES(RAD(90), RAD(0), RAD(-25)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), 0.6) * ANGLES(RAD(1.5 - 1.5 * SIN(SINE / 12)), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(90 - 2.5 * COS(SINE / 12)), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(-15), RAD(100), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.3 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(-15), RAD(-50), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 0.3 / Animation_Speed)
		end
		WACKYEFFECT({
			Time = 75,
			EffectType = "Wave",
			Size = VT(1, 0, 1),
			Size2 = VT(3, 3, 3) + VT(i, 0, i),
			Transparency = 0.8,
			Transparency2 = 1,
			CFrame = RightArm.CFrame * CF(0, 1.2 + i, 0),
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 5,
			RotationZ = 0,
			Material = "Neon",
			Color = BASECOLOR,
			SoundID = 588738949,
			SoundPitch = 1 - i / 10,
			SoundVolume = 4,
			UseBoomerangMath = true,
			Boomerang = 0,
			SizeBoomerang = 15
		})
	end
	for i = 0, 0.1, 0.1 / Animation_Speed do
		Swait()
		WACKYEFFECT({
			Time = 15,
			EffectType = "Wave",
			Size = VT(1, 2, 1),
			Size2 = VT(2, 4, 2),
			Transparency = 0.8,
			Transparency2 = 1,
			CFrame = RightArm.CFrame,
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 5,
			RotationZ = 0,
			Material = "Neon",
			Color = BASECOLOR,
			SoundID = nil,
			SoundPitch = 0,
			SoundVolume = 0,
			UseBoomerangMath = true,
			Boomerang = 0,
			SizeBoomerang = 15
		})
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, -0.65, -0.35 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(60), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0.4) * ANGLES(RAD(65), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), 0.6) * ANGLES(RAD(1.5 - 1.5 * SIN(SINE / 12)), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(90 - 2.5 * COS(SINE / 12)), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(50), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(60), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i = 0, 0.15, 0.1 / Animation_Speed do
		Swait()
		WACKYEFFECT({
			Time = 15,
			EffectType = "Wave",
			Size = VT(1, 2, 1),
			Size2 = VT(2, 4, 2),
			Transparency = 0.8,
			Transparency2 = 1,
			CFrame = RightArm.CFrame,
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 5,
			RotationZ = 0,
			Material = "Neon",
			Color = BASECOLOR,
			SoundID = nil,
			SoundPitch = 0,
			SoundVolume = 0,
			UseBoomerangMath = true,
			Boomerang = 0,
			SizeBoomerang = 15
		})
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, -0.31, -0.5 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(60), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, -1) * ANGLES(RAD(65), RAD(0), RAD(-15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), 0.6) * ANGLES(RAD(1.5 - 1.5 * SIN(SINE / 12)), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(90 - 2.5 * COS(SINE / 12)), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.2 - 0.05 * COS(SINE / 12), -0.4) * ANGLES(RAD(50), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.2 - 0.05 * COS(SINE / 12), -0.4) * ANGLES(RAD(60), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	CreateSound(588694531, RightArm, 5, 1, false)
	coroutine.resume(coroutine.create(function()
		local DIST = 0
		local HITFLOOR, HITPOS = Raycast(RightArm.Position, CF(RightArm.Position, RightArm.CFrame * CF(0, -1, 0).p).lookVector, 4, Character)
		if HITFLOOR then
			repeat
				Swait()
				DIST = (RootPart.Position - HITPOS).Magnitude
				ApplyAoE(HITPOS, 35, 0, 0, -15, false)
			until DIST > 20
			for i = 1, 5 do
				WACKYEFFECT({
					EffectType = "Wave",
					Size = VT(0, 5, 0),
					Size2 = VT(i * 5, 5, i * 5),
					Transparency = 0.6,
					Transparency2 = 1,
					CFrame = CF(HITPOS) * ANGLES(RAD(0), RAD(MRANDOM(0, 360)), RAD(MRANDOM(-5, 5))),
					MoveToPos = nil,
					RotationX = 0.1,
					RotationY = 1,
					RotationZ = -0.1,
					Material = "Neon",
					Color = BASECOLOR,
					SoundID = 765590102,
					SoundPitch = MRANDOM(5, 15) / 10,
					SoundVolume = 5,
					UseBoomerangMath = false,
					Boomerang = 0,
					SizeBoomerang = 0
				})
			end

			ApplyAoE(HITPOS, 15, 25, 35, 125, false)
			Debree({
				Delay = 4,
				Variant = "Random",
				Location = HITPOS,
				Color = HITFLOOR.Color,
				Size = 2,
				Distance = 15,
				Material = HITFLOOR.Material,
				Scatter = 1,
				Amount = MRANDOM(7, 12),
				DebreeCount = 8
			})
			Debree({
				Delay = 4,
				Variant = "Both",
				Location = HITPOS,
				Color = HITFLOOR.Color,
				Size = 3,
				Distance = 15,
				Material = HITFLOOR.Material,
				Scatter = 35,
				Amount = MRANDOM(35, 45),
				DebreeCount = 7
			})
		end
	end))
	for i = 0, 0.5, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, -0.31, -0.5 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(60), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, -1) * ANGLES(RAD(65), RAD(0), RAD(-35)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), 0.6) * ANGLES(RAD(1.5 - 1.5 * SIN(SINE / 12)), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(90 - 2.5 * COS(SINE / 12)), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.2 - 0.05 * COS(SINE / 12), -0.4) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.2 - 0.05 * COS(SINE / 12), -0.4) * ANGLES(RAD(60), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end
function Chronostasis()
	if Cam:FindFirstChild("ColorCorrection") == nil then
		if TIMESPOT == nil then
			local E = 0
			repeat
				wait()
				E = E + 1
			until KEYHOLD == false
			TIMESPOT = RootPart.CFrame
			TIMEVELOCITY = RootPart.Velocity
			TIMESTAMP = IT("Model", Effects)
			TIMESTAMP.Name = "STAMP"
			for _, c in pairs(Character:GetChildren()) do
				if c.ClassName == "Part" and (c.Name == "HumanoidRootPart" or c.Name == "Torso" or c.Name == "Right Arm" or c.Name == "Left Arm" or c.Name == "Right Leg" or c.Name == "Left Leg" or c.Name == "Head") then
					do
						local FADER = CreatePart(3, TIMESTAMP, "Neon", 0, 1, BRICKC("Pearl"), c.Name, c.Size, true)
						FADER.CFrame = c.CFrame
						FADER.Color = BASECOLOR
						if FADER.Name == "Head" then
							FADER.Size = VT(1, 1, 1)
						elseif FADER.Name == "Torso" then
							CreateSound(588738949, FADER, 5, 1, false)
						elseif FADER.Name == "HumanoidRootPart" then
							TIMESTAMP.PrimaryPart = FADER
						end
						if c ~= RootPart then
							coroutine.resume(coroutine.create(function()
								for i = 1, 15 do
									Swait()
									FADER.Transparency = FADER.Transparency - 0.013333333333333334
								end
							end))
						end
					end
				end
			end
			if E > 8 then
				local CFRAME = CF(Mouse.Hit.p + VT(0, 3.15, 0)) * ANGLES(RAD(0), RAD(RootPart.Orientation.Y), RAD(0))
				TIMESTAMP:SetPrimaryPartCFrame(CFRAME)
				TIMESPOT = CFRAME
			end
		else
			coroutine.resume(coroutine.create(function()
				local FX = IT("ColorCorrectionEffect", Cam)
				FX.Brightness = 1
				FX.Saturation = -1
				for i = 1, 4 do
					Swait()
					FX.Brightness = FX.Brightness - 0.25
				end
				for i = 1, 45 do
					Swait()
					FX.Saturation = FX.Saturation + 0.022222222222222223
				end
				FX:Remove()
			end))
			WACKYEFFECT({
				EffectType = "Sphere",
				Size = VT(4, 6, 4) / 1.1,
				Size2 = VT(7, 7, 7) / 1.1,
				Transparency = 0,
				Transparency2 = 1,
				CFrame = CF(RootPart.Position),
				MoveToPos = nil,
				RotationX = 0,
				RotationY = 0,
				RotationZ = 0,
				Material = "Neon",
				Color = C3(0, 0, 0),
				SoundID = nil,
				SoundPitch = nil,
				SoundVolume = nil,
				UseBoomerangMath = false,
				Boomerang = 0,
				SizeBoomerang = 0
			})
			WACKYEFFECT({
				EffectType = "Sphere",
				Size = VT(4, 6, 4),
				Size2 = VT(7, 7, 7),
				Transparency = 0.8,
				Transparency2 = 1,
				CFrame = CF(RootPart.Position),
				MoveToPos = nil,
				RotationX = 0,
				RotationY = 0,
				RotationZ = 0,
				Material = "Neon",
				Color = BASECOLOR,
				SoundID = 782199941,
				SoundPitch = 1,
				SoundVolume = 4,
				UseBoomerangMath = false,
				Boomerang = 0,
				SizeBoomerang = 0
			})
			CreateSound(782202168, Torso, 5, 1, false)
			RootPart.CFrame = TIMESPOT
			TIMESPOT = nil
			TIMESTAMP:Remove()
			TIMESTAMP = nil
			Swait()
			RootPart.Velocity = TIMEVELOCITY
		end
	end
end
function FastForward()
	ATTACK = true
	Rooted = true
	for i = 0, 0.12, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(25)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(-2.5 * COS(SINE / 12)), RAD(-25)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(50), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), 0.6) * ANGLES(RAD(1.5 - 1.5 * SIN(SINE / 12)), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(90 - 2.5 * COS(SINE / 12)), RAD(0)) * LEFTSHOULDERC0, 1.8 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-100), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i = 0, 0.1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(5), RAD(25)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-10 - 2.5 * SIN(SINE / 12)), RAD(-2.5 * COS(SINE / 12)), RAD(-25)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 1 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(170), RAD(-35), RAD(6)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), 0.6) * ANGLES(RAD(1.5 - 1.5 * SIN(SINE / 12)), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(90 - 2.5 * COS(SINE / 12)), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.8 - 0.05 * COS(SINE / 12), -0.4) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(2), RAD(0), RAD(-15)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1.03, -0.97 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-100), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	local BUILDUP = true
	local NEWCLOCK = HALO:Clone()
	NEWCLOCK:ClearAllChildren()
	NEWCLOCK.Size = NEWCLOCK.Size * 1.5
	NEWCLOCK.Anchored = true
	NEWCLOCK.Parent = Effects
	NEWCLOCK.Transparency = 1
	local TICKTOCK = CreateSound(447682521, NEWCLOCK, 0, 0.7, true)
	TICKTOCK.EmitterSize = 70
	coroutine.resume(coroutine.create(function()
		repeat
			NEWCLOCK.CFrame = RightArm.CFrame * CF(0, -6, 0) * ANGLES(RAD(90), RAD(0), RAD(0))
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(25)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-5 - 2.5 * SIN(SINE / 12)), RAD(-2.5 * COS(SINE / 12)), RAD(-25)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.75 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(160), RAD(-45), RAD(12)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), 0.6) * ANGLES(RAD(1.5 - 1.5 * SIN(SINE / 12)), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(90 - 2.5 * COS(SINE / 12)), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-100), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
		until BUILDUP == false
	end))
	local PRT = CreatePart(3, NEWCLOCK, "Neon", 0, 1, "Mid gray", "Visor", VT(0.05, 0.1, 0.4) * (NEWCLOCK.Size.Y * 10), true)
	PRT.Color = HALO.Color
	local PRT1 = CreatePart(3, NEWCLOCK, "Neon", 0, 1, "Mid gray", "Visor", VT(0.05, 0.1, 0.26666666666666666) * (NEWCLOCK.Size.Y * 10), true)
	PRT1.Color = HALO.Color
	local PRT2 = CreatePart(3, NEWCLOCK, "Neon", 0, 0, "Mid gray", "Visor", VT(0.15,0.1,0.15) * (NEWCLOCK.Size.Y * 10), false)
	PRT2.Color = HALO.Color
	MakeForm(PRT2,"Cyl")
	local SPIN = true
	local SPEED = 1
	local LOOP = 0
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			LOOP = LOOP - 1 * SPEED
			PRT.CFrame = NEWCLOCK.CFrame * ANGLES(RAD(0), RAD(LOOP * 5), RAD(0)) * CF(0, 0, -(PRT.Size.Z / 3 + 0.2))
			PRT1.CFrame = NEWCLOCK.CFrame * ANGLES(RAD(0), RAD(LOOP * 5 / 2), RAD(0)) * CF(0, 0, -(PRT1.Size.Z / 3 + 0.2))
			PRT2.CFrame = NEWCLOCK.CFrame * ANGLES(RAD(0), RAD(0), RAD(0)) * CF(0, 0, 0)
			if LOOP <= -149 and VALUE1 == false then
				LOOP = 0
			end
		until SPIN == false
		NEWCLOCK:Destroy()
	end))
	for i = 1, 25 do
		Swait()
		NEWCLOCK.Transparency = NEWCLOCK.Transparency - 0.04
		PRT.Transparency = NEWCLOCK.Transparency
		PRT1.Transparency = NEWCLOCK.Transparency
		PRT2.Transparency = NEWCLOCK.Transparency
		TICKTOCK.Volume = TICKTOCK.Volume + 0.4
	end
	wait(0.5)
	for i = 1, 120 do
		Swait()
		SPEED = SPEED + 0.04285714285714286
		TICKTOCK.Pitch = 0.7 * (0.5 + SPEED / 2)
	end
	BUILDUP = false
	for i = 0, 0.5, 0.1 / Animation_Speed do
		Swait()
		NEWCLOCK.CFrame = RightArm.CFrame * CF(0, -6, 0) * ANGLES(RAD(90), RAD(0), RAD(0))
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(5), RAD(25)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-10 - 2.5 * SIN(SINE / 12)), RAD(-2.5 * COS(SINE / 12)), RAD(-25)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 1 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(170), RAD(-35), RAD(6)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), 0.6) * ANGLES(RAD(1.5 - 1.5 * SIN(SINE / 12)), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(90 - 2.5 * COS(SINE / 12)), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.8 - 0.05 * COS(SINE / 12), -0.4) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(2), RAD(0), RAD(-15)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-100), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	CamShake(NEWCLOCK.Position, 125, 7, 35)
	CreateSound(743521450, Effects, 10, 1, false)
	local SCALE = 50
	for i = 1, 3 do
		WACKYEFFECT({
			Time = 25,
			EffectType = "Sphere",
			Size = VT(0, 0, 0),
			Size2 = VT(SCALE * i, SCALE * i, SCALE * i),
			Transparency = 0.8,
			Transparency2 = 1,
			CFrame = CF(NEWCLOCK.Position),
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 0,
			RotationZ = 0,
			Material = "Neon",
			Color = BASECOLOR,
			SoundID = nil,
			SoundPitch = nil,
			SoundVolume = nil,
			UseBoomerangMath = false,
			Boomerang = 0,
			SizeBoomerang = 0
		})
	end
	ClockEffect(CF(NEWCLOCK.Position), 250, 75)
	ClockEffect(CF(NEWCLOCK.Position), 150, 45)
	local AFFECTEDPARTS = {}
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")

				if TORSO and 65 >= (TORSO.Position - NEWCLOCK.Position).Magnitude then
					CHILD:BreakJoints()
					local NIL = NS(NILCODE, CHILD)
					NIL.Disabled = false
					for index, PART in pairs(CHILD:GetChildren()) do
						if PART:IsA("BasePart") and PART.Name ~= "HumanoidRootPart" then
							PART.Color = C3(PART.Color.r / 1.2, PART.Color.g / 1.2, PART.Color.b / 1.2)
							table.insert(AFFECTEDPARTS, PART)
						elseif PART:IsA("Accessory") then
							PART:Remove()
						end
					end
				end
			end
		end
	end

	if #AFFECTEDPARTS > 0 then
		coroutine.resume(coroutine.create(function()
			wait(1)
			local PARTICLES = {}
			for E = 1, #AFFECTEDPARTS do
				local PARTICLE = DUST:Clone()
				PARTICLE.Parent = AFFECTEDPARTS[E]
				PARTICLE.Color = ColorSequence.new(AFFECTEDPARTS[E].Color)
				PARTICLE.Enabled = true
				table.insert(PARTICLES, PARTICLE)
			end
			for i = 1, 120 do
				Swait()
				for E = 1, #AFFECTEDPARTS do
					AFFECTEDPARTS[E].Transparency = AFFECTEDPARTS[E].Transparency + 0.008333333333333333
					for index, CHILD in pairs(AFFECTEDPARTS[E]:GetChildren()) do
						if CHILD:IsA("Texture") or CHILD:IsA("Decal") then
							CHILD.Transparency = AFFECTEDPARTS[E].Transparency
						end
					end
				end
			end
			for E = 1, #PARTICLES do
				PARTICLES[E].Enabled = false
			end
			for E = 1, #AFFECTEDPARTS do
				Debris:AddItem(AFFECTEDPARTS[E], 1.75)
			end
		end))
	end
	coroutine.resume(coroutine.create(function()
		for i = 1, 25 do
			Swait()
			NEWCLOCK.Transparency = NEWCLOCK.Transparency + 0.04
			PRT.Transparency = NEWCLOCK.Transparency
			PRT1.Transparency = NEWCLOCK.Transparency
			PRT2.Transparency = NEWCLOCK.Transparency
			TICKTOCK.Volume = TICKTOCK.Volume - 0.4
		end
		SPIN = false
	end))
	for i = 0, 0.12, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(25)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(-2.5 * COS(SINE / 12)), RAD(-25)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(50), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), 0.6) * ANGLES(RAD(1.5 - 1.5 * SIN(SINE / 12)), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(90 - 2.5 * COS(SINE / 12)), RAD(0)) * LEFTSHOULDERC0, 1.8 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-100), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end
function ChronosCannon()
	ATTACK = true
	Rooted = false
	local CHROMES = {}
	local AFFECTEDPEOPLE = {}
	coroutine.resume(coroutine.create(function()
		Humanoid.PlatformStand = true
		local GYRO = IT("BodyGyro")
		GYRO.CFrame = CF(RootPart.Position, Mouse.Hit.p)
		GYRO.Parent = RootPart
		GYRO.D = 270
		GYRO.P = 4000
		GYRO.MaxTorque = VT(40000, 40000, 40000)
		local POSITION = IT("BodyPosition", RootPart)
		POSITION.Position = RootPart.Position + VT(0, 2, 0)
		POSITION.D = 450
		POSITION.P = 40000
		POSITION.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		repeat
			Swait()
			GYRO.CFrame = CF(RootPart.Position, Mouse.Hit.p)
		until ATTACK == false
		Humanoid.PlatformStand = false
		GYRO:Remove()
		POSITION:Remove()
	end))
	CLOCKSPEED = 2
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		WACKYEFFECT({
			Time = 15,
			EffectType = "Wave",
			Size = VT(1, 2, 1),
			Size2 = VT(2, 4, 2),
			Transparency = 0.8,
			Transparency2 = 1,
			CFrame = RightArm.CFrame,
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 5,
			RotationZ = 0,
			Material = "Neon",
			Color = BASECOLOR,
			SoundID = nil,
			SoundPitch = 0,
			SoundVolume = 0,
			UseBoomerangMath = true,
			Boomerang = 0,
			SizeBoomerang = 15
		})
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(10), RAD(0), RAD(45)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-5 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-45)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), 0.6) * ANGLES(RAD(1.5 - 1.5 * SIN(SINE / 12)), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(90 - 2.5 * COS(SINE / 12)), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	CreateSound(743521450, RightArm, 6, 0.8, false)
	CLOCKSPEED = 0
	coroutine.resume(coroutine.create(function()
		local CFRAME = RootPart.CFrame * CF(0, 0, -2)
		local COLISSION = false
		local POSN
		local function AoE(POS, RANGE)
			for index, CHILD in pairs(workspace:GetDescendants()) do
				if CHILD.ClassName == "Model" and CHILD ~= Character then
					local HUM = CHILD:FindFirstChildOfClass("Humanoid")
					if HUM then
						local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
						if TORSO and RANGE >= (TORSO.Position - POS).Magnitude then
							local PASS = true
							for E = 1, #AFFECTEDPEOPLE do
								if AFFECTEDPEOPLE[E][1] == CHILD then
									PASS = false
								end
							end
							if PASS == true then
								local CHROME = PERMACHROME:Clone()
								CHROME.Parent = CHILD
								CHROME.Disabled = false
								local UNDO = IT("BoolValue", CHROME)
								UNDO.Name = "Undo"
								table.insert(CHROMES, CHROME)
								local TIMESTOPPED = false
								if CHILD:FindFirstChild("TimeStopMark") then
									TIMESTOPPED = true
								end
								table.insert(AFFECTEDPEOPLE, {CHILD, TIMESTOPPED})
								local MARK = IT("Folder", CHILD)
								MARK.Name = "TimeStopMark"
								for index, PART in pairs(CHILD:GetChildren()) do
									if PART:IsA("BasePart") and PART.Name ~= "HumanoidRootPart" and TIMESTOPPED == false then
										PART.Anchored = true
										local POSITION = IT("BodyPosition", PART)
										POSITION.Position = PART.Position
										POSITION.D = 450
										POSITION.P = 4000
										POSITION.maxForce = Vector3.new(math.huge, math.huge, math.huge)
										POSITION.Name = "TimeStopPosition"
									end
								end
							end
						end
					end
				end
			end
		end
		for i = 1, 25 do
			for E = 1, 4 do
				CFRAME = CFRAME * CF(0, 0, -7)
				local HIT, POS, NORMAL = Raycast(CFRAME.p, CFRAME.lookVector, 23, Character)
				if HIT then
					POSN = POS
					WACKYEFFECT({
						Time = 35,
						EffectType = "Ring",
						Size = VT(12, 12, 0) / 3,
						Size2 = VT(15, 15, 0) / 3,
						Transparency = 0.5,
						Transparency2 = 1,
						CFrame = CFRAME * ANGLES(RAD(0), RAD(0), RAD(0)),
						MoveToPos = nil,
						RotationX = 0,
						RotationY = 0,
						RotationZ = 0,
						Material = "Neon",
						Color = C3(1, 1, 1),
						SoundID = 743521450,
						SoundPitch = 1,
						SoundVolume = 7,
						UseBoomerangMath = false,
						Boomerang = 0,
						SizeBoomerang = 0
					})
					COLISSION = true
					break
				else
					WACKYEFFECT({
						Time = 50,
						EffectType = "Sphere",
						Size = VT(6, 6, 6) + VT(E, E, E),
						Size2 = VT(5, 5, 5) + VT(E, E, E),
						Transparency = 0,
						Transparency2 = 1,
						CFrame = CF(CFRAME.p),
						MoveToPos = nil,
						RotationX = 0,
						RotationY = 0,
						RotationZ = 0,
						Material = "Neon",
						Color = BASECOLOR,
						SoundID = nil,
						SoundPitch = 1,
						SoundVolume = 6,
						UseBoomerangMath = false,
						Boomerang = 0,
						SizeBoomerang = 0
					})
					for i = 1, 5 do
						WACKYEFFECT({
							Time = 25,
							EffectType = "Wave",
							Size = VT(0, 5, 0),
							Size2 = (VT(i * 5, 8, i * 5) + VT(E * 8, 0, E * 8)) / 2,
							Transparency = 0.8,
							Transparency2 = 1,
							CFrame = CFRAME * ANGLES(RAD(90), RAD(MRANDOM(0, 360)), RAD(MRANDOM(-5, 5))),
							MoveToPos = nil,
							RotationX = MRANDOM(-1, 1),
							RotationY = MRANDOM(-1, 1),
							RotationZ = MRANDOM(-1, 1),
							Material = "Neon",
							Color = BASECOLOR,
							SoundID = nil,
							SoundPitch = MRANDOM(5, 15) / 10,
							SoundVolume = 5,
							UseBoomerangMath = true,
							Boomerang = 0,
							SizeBoomerang = 25
						})
					end
				end
			end
			if COLISSION == true then
				break
			else
				AoE(CFRAME.p, 5)
				local LOCATION = CFRAME * ANGLES(RAD(0), RAD(0), RAD(MRANDOM(0, 360))) * CF(0, MRANDOM(5, 15), 0)
				ClockEffect(LOCATION, 22, 32)

			end
			Swait()
		end
		if COLISSION == true then
			local HITFLOOR, HITPOS = Raycast(POSN + VT(0, 1, 0), CF(RootPart.Position, RootPart.Position + VT(0, -1, 0)).lookVector, 15, Character)
			if HITFLOOR and HITFLOOR.Anchored == true then
				Debree({
					Delay = 5,
					Variant = "Ring",
					Location = HITPOS,
					Color = HITFLOOR.Color,
					Size = 5,
					Distance = 25,
					Material = HITFLOOR.Material,
					Scatter = 1,
					Amount = MRANDOM(35, 45),
					DebreeCount = 8
				})
			end
			WACKYEFFECT({
				Time = 100,
				EffectType = "Crystal",
				Size = VT(50, 50, 50) / 190,
				Size2 = VT(45, 45, 45) / 190,
				Transparency = 0.15,
				Transparency2 = 1,
				CFrame = CF(POSN),
				MoveToPos = nil,
				RotationX = 0,
				RotationY = 4,
				RotationZ = 4,
				Material = "Neon",
				Color = BASECOLOR,
				SoundID = 588736245,
				SoundPitch = 1,
				SoundVolume = 6,
				UseBoomerangMath = false,
				Boomerang = 0,
				SizeBoomerang = 0
			})
			WACKYEFFECT({
				Time = 100,
				EffectType = "Sphere",
				Size = VT(50, 50, 50),
				Size2 = VT(45, 45, 45),
				Transparency = 0.5,
				Transparency2 = 1,
				CFrame = CF(POSN),
				MoveToPos = nil,
				RotationX = 0,
				RotationY = 0,
				RotationZ = 0,
				Material = "Neon",
				Color = BASECOLOR,
				SoundID = 588736245,
				SoundPitch = 1,
				SoundVolume = 6,
				UseBoomerangMath = false,
				Boomerang = 0,
				SizeBoomerang = 0
			})
			ClockEffect(CF(POSN), 70, 25)
			CamShake(POSN, 140, 8, 25)
			for i = 1, 70 do
				Swait()
				AoE(POSN, 25)
			end
		end
		if #AFFECTEDPEOPLE > 0 then
			wait(1)
			CreateSound(908895929, Effects, 2, 1.5, false)
			for E = 1, #CHROMES do
				CHROMES[E].Undo.Value = true
			end
			for E = 1, #AFFECTEDPEOPLE do
				for index, PART in pairs(AFFECTEDPEOPLE[E][1]:GetChildren()) do
					if PART:IsA("BasePart") then
						if AFFECTEDPEOPLE[E][2] == false then
							PART.Anchored = false
						end
						if PART.Name == "Torso" or PART.Name == "UpperTorso" then
							CreateSound(588694531, PART, 2, MRANDOM(8, 12) / 10, false)
						end
						if PART:FindFirstChild("TimeStopPosition") and AFFECTEDPEOPLE[E][2] == false then
							PART:FindFirstChild("TimeStopPosition"):Remove()
						end
					elseif PART:IsA("Humanoid") then
						ApplyDamage(PART, 600000)
					elseif PART.Name == "TimeStopMark" and AFFECTEDPEOPLE[E][2] == false then
						PART:Remove()
					end
				end
			end
		end
	end))
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(10), RAD(0), RAD(-45)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-5 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(45)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), 0.6) * ANGLES(RAD(1.5 - 1.5 * SIN(SINE / 12)), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(90 - 2.5 * COS(SINE / 12)), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	CLOCKSPEED = 1
	ATTACK = false
	Rooted = false
end
function Temporalysis()
	if ANIM == "Walk" or ANIM == "Idle" then
		ATTACK = true
		Rooted = true
		UNANCHOR = false
		coroutine.resume(coroutine.create(function()
			for i = 1, 15 do
				Swait()
				RootPart.CFrame = RootPart.CFrame * CF(0, (15 - i) / 15, 0)
			end
		end))
		do
			local NEWCLOCK = HALO:Clone()
			NEWCLOCK:ClearAllChildren()
			NEWCLOCK.Size = NEWCLOCK.Size * 22
			NEWCLOCK.Anchored = true
			NEWCLOCK.Parent = Effects
			NEWCLOCK.Transparency = 1
			NEWCLOCK.CFrame = RootPart.CFrame * CF(0, -4.25, 0)
			local TICKTOCK = CreateSound(447682521, NEWCLOCK, 0, 0.7, true)
			TICKTOCK.EmitterSize = 70
			local PRT = CreatePart(3, NEWCLOCK, "Neon", 0, 1, "Mid gray", "Visor", VT(0.05, 0.1, 0.4) * (NEWCLOCK.Size.Y * 10), true)
			PRT.Color = HALO.Color
			local PRT1 = CreatePart(3, NEWCLOCK, "Neon", 0, 1, "Mid gray", "Visor", VT(0.05, 0.1, 0.26666666666666666) * (NEWCLOCK.Size.Y * 10), true)
			PRT1.Color = HALO.Color
			local PRT2 = CreatePart(3, NEWCLOCK, "Neon", 0, 1, "Mid gray", "Visor", VT(0.15,0.1,0.15) * (NEWCLOCK.Size.Y * 10), false)
			PRT2.Color = HALO.Color
			MakeForm(PRT2,"Cyl")
			local SPIN = true
			local SPEED = 1
			local LOOP = 0
			coroutine.resume(coroutine.create(function()
				repeat
					Swait()
					LOOP = LOOP - 1 * SPEED
					PRT.CFrame = NEWCLOCK.CFrame * ANGLES(RAD(0), RAD(LOOP * 5), RAD(0)) * CF(0, 0, -(PRT.Size.Z / 3 + 2.5))
					PRT1.CFrame = NEWCLOCK.CFrame * ANGLES(RAD(0), RAD(LOOP * 5 / 2), RAD(0)) * CF(0, 0, -(PRT1.Size.Z / 3 + 2.5))
					PRT2.CFrame = NEWCLOCK.CFrame * ANGLES(RAD(0), RAD(0), RAD(0)) * CF(0, 0, 0)
					if LOOP <= -149 and VALUE1 == false then
						LOOP = 0
					end
				until SPIN == false
				for i = 1, 45 do
					Swait()
					NEWCLOCK.Transparency = NEWCLOCK.Transparency + 0.022222222222222223
					PRT.Transparency = NEWCLOCK.Transparency
					PRT1.Transparency = NEWCLOCK.Transparency
					PRT2.Transparency = NEWCLOCK.Transparency
				end
				NEWCLOCK:Destroy()
			end))
			for i = 1, 45 do
				Swait()
				NEWCLOCK.Transparency = NEWCLOCK.Transparency - 0.022222222222222223
				PRT.Transparency = NEWCLOCK.Transparency
				PRT1.Transparency = NEWCLOCK.Transparency
				PRT2.Transparency = NEWCLOCK.Transparency
				TICKTOCK.Volume = TICKTOCK.Volume + 0.2222222222222222
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0.1 * COS(SINE * 1.2), 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(25 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.65, 0.3 + 0.05 * SIN(SINE / 12), -0.7) * ANGLES(RAD(0), RAD(0), RAD(-95)) * ANGLES(RAD(5), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.65, 0.15 + 0.05 * SIN(SINE / 12), -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(-15)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.3 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(15)), 2 / Animation_Speed)
			end
			coroutine.resume(coroutine.create(function()
				ClockEffect(NEWCLOCK.CFrame, NEWCLOCK.Size.X, 65)
				for i = 1, 75 do
					Swait()
					SPEED = SPEED - 0.006666666666666667
					TICKTOCK.Pitch = 0.7 * SPEED
				end
				coroutine.resume(coroutine.create(function()
					local FX = IT("ColorCorrectionEffect", Cam)
					FX.Brightness = 1
					FX.Saturation = -1
					for i = 1, 15 do
						Swait()
						FX.Brightness = FX.Brightness - 0.06666666666666667
					end
					for i = 1, 125 do
						Swait()
						FX.Saturation = FX.Saturation + 0.008
					end
					FX:Remove()
				end))
				coroutine.resume(coroutine.create(function()
					for i = 1, 75 do
						Swait()
						SPEED = SPEED - 0.006666666666666667
						TICKTOCK.Pitch = 0.7 * SPEED
					end
				end))
				local AFFECTEDPEOPLE = {}
				local CHROMES = {}
				for index, CHILD in pairs(workspace:GetDescendants()) do
					if CHILD.ClassName == "Model" and CHILD ~= Character then
						local HUM = CHILD:FindFirstChildOfClass("Humanoid")
						if HUM then
							local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
							if TORSO and (TORSO.Position - NEWCLOCK.Position).Magnitude <= NEWCLOCK.Size.X / 2 then
								local PASS = true
								if CHILD:FindFirstChild("TimeStopMark") then
									PASS = false
								end
								if PASS == true then
									local CHROME = PERMACHROME:Clone()
									CHROME.Parent = CHILD
									CHROME.Disabled = false
									local UNDO = IT("BoolValue", CHROME)
									UNDO.Name = "Undo"
									table.insert(CHROMES, CHROME)
									table.insert(AFFECTEDPEOPLE, CHILD)
									local MARK = IT("Folder", CHILD)
									MARK.Name = "TimeStopMark"
									for index, PART in pairs(CHILD:GetChildren()) do
										if PART:IsA("BasePart") and PART.Name ~= "HumanoidRootPart" then
											PART.Anchored = true
											local POSITION = IT("BodyPosition", PART)
											POSITION.Position = PART.Position
											POSITION.D = 450
											POSITION.P = 4000
											POSITION.maxForce = Vector3.new(math.huge, math.huge, math.huge)
											POSITION.Name = "TimeStopPosition"
										end
									end
								end
							end
						end
					end
				end
				if #AFFECTEDPEOPLE > 0 then
					wait(7)
				end
				SPIN = false
				if #AFFECTEDPEOPLE > 0 then
					CreateSound(743521450, NEWCLOCK, 2, 3, false)
					for E = 1, #CHROMES do
						CHROMES[E].Undo.Value = true
					end
					for E = 1, #AFFECTEDPEOPLE do
						for index, PART in pairs(AFFECTEDPEOPLE[E]:GetChildren()) do
							if PART:IsA("BasePart") then
								PART.Anchored = false
								if PART:FindFirstChild("TimeStopPosition") then
									PART:FindFirstChild("TimeStopPosition"):Remove()
								end
							elseif PART.Name == "TimeStopMark" then
								PART:Remove()
							end
						end
					end
				end
			end))
			for i = 0, 0.7, 0.1 / Animation_Speed do
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(5), RAD(0), RAD(0)), 2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-25 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(160), RAD(0), RAD(35)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(160), RAD(0), RAD(-35)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(-15)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(15)), 2 / Animation_Speed)
			end
			UNANCHOR = true
			ATTACK = false
			Rooted = false
		end
	end
end
function TemporalTrap()
	ATTACK = true
	Rooted = true
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(25)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-5 - 2.5 * SIN(SINE / 12)), RAD(-2.5 * COS(SINE / 12)), RAD(-25)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.75 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(160), RAD(-45), RAD(12)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), 0.6) * ANGLES(RAD(1.5 - 1.5 * SIN(SINE / 12)), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(90 - 2.5 * COS(SINE / 12)), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-100), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	coroutine.resume(coroutine.create(function()
		local CFRAME = CF(Mouse.Hit.p) * ANGLES(RAD(0), RAD(RootPart.Orientation.Y), RAD(0))
		local CFRAME2 = CF(Mouse.Hit.p) * ANGLES(RAD(0), RAD(RootPart.Orientation.Y), RAD(0))
		local CLOCK = CLOCKPART:Clone()
		CLOCK.Parent = Effects
		CLOCK.Transparency = 1
		CLOCK.Anchored = true
		local PRT = CreatePart(3, CLOCK, "Metal", 0, 1, "Really black", "Visor", VT(0.02, 0.05, 0.4) * (CLOCK.Size.Y * 10), true)
		local PRT1 = CreatePart(3, CLOCK, "Metal", 0, 1, "Really black", "Visor", VT(0.02, 0.05, 0.26666666666666666) * (CLOCK.Size.Y * 10), true)
		PRT.CFrame = CLOCK.CFrame * CF(0, 0, PRT.Size.Z / 2)
		PRT1.CFrame = CLOCK.CFrame * CF(0, 0, PRT1.Size.Z / 2)
		WACKYEFFECT({
			Time = 25,
			EffectType = "Sphere",
			Size = VT(0, 0, 0),
			Size2 = VT(150, 0.2, 150),
			Transparency = 0.5,
			Transparency2 = 1,
			CFrame = CFRAME2,
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 0,
			RotationZ = 0,
			Material = "Neon",
			Color = BASECOLOR,
			SoundID = 743521450,
			SoundPitch = 1.5,
			SoundVolume = 6,
			UseBoomerangMath = false,
			Boomerang = 0,
			SizeBoomerang = 0
		})
		for index, PART in pairs(CLOCK:GetDescendants()) do
			if PART:IsA("Decal") then
				PART.Transparency = 1
			end
		end
		for i = 1, 61 do
			CLOCK.CFrame = CFRAME * ANGLES(RAD(90), RAD(0), RAD(0))
			CLOCK.Transparency = CLOCK.Transparency - 0.016666666666666666
			for index, PART in pairs(CLOCK:GetDescendants()) do
				if PART:IsA("Decal") then
					PART.Transparency = PART.Transparency - 0.016666666666666666
				elseif PART:IsA("BasePart") then
					PART.Transparency = CLOCK.Transparency
				end
			end
			PRT.CFrame = CLOCK.CFrame * CF(0, 0, PRT.Size.Z / 2)
			PRT1.CFrame = CLOCK.CFrame * CF(0, 0, PRT1.Size.Z / 2)
			CFRAME = CFRAME * CF(0, (60 - i) / 55, 0)
			Swait()
		end
		wait(0.1)
		ClockEffect(CLOCK.CFrame, 45, 35)
		local TICKTOCK = CreateSound(447682521, CLOCK, 0, 0.7, true)
		TICKTOCK.EmitterSize = 45
		coroutine.resume(coroutine.create(function()
			for i = 1, 35 do
				Swait()
				TICKTOCK.Volume = TICKTOCK.Volume + 0.17142857142857143
			end
		end))
		local LOOP = 1
		local SPINNING = true
		local ACTIVE = false
		local LOOPED = 0
		local AFFECTEDENTITIES = {}
		repeat
			Swait()
			LOOP = LOOP - 1
			PRT.CFrame = CLOCK.CFrame * ANGLES(RAD(0), RAD(-LOOP * 5), RAD(0)) * CF(0, 0, PRT.Size.Z / 2)
			PRT1.CFrame = CLOCK.CFrame * ANGLES(RAD(0), RAD(-LOOP * 5 / 2), RAD(0)) * CF(0, 0, PRT1.Size.Z / 2)
			if LOOP <= -145 then
				LOOP = 0
				if ACTIVE == false then
					ClockEffect(CLOCK.CFrame, 45, 35)
					WACKYEFFECT({
						Time = 25,
						EffectType = "Sphere",
						Size = VT(0, 0, 0),
						Size2 = VT(150, 0.2, 150),
						Transparency = 0.5,
						Transparency2 = 1,
						CFrame = CFRAME2,
						MoveToPos = nil,
						RotationX = 0,
						RotationY = 0,
						RotationZ = 0,
						Material = "Neon",
						Color = BASECOLOR,
						SoundID = 743521450,
						SoundPitch = 1.5,
						SoundVolume = 6,
						UseBoomerangMath = false,
						Boomerang = 0,
						SizeBoomerang = 0
					})
					for index, CHILD in pairs(workspace:GetDescendants()) do
						if CHILD.ClassName == "Model" and CHILD ~= Character then
							local HUM = CHILD:FindFirstChildOfClass("Humanoid")
							if HUM then
								local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
								if TORSO and 0 < HUM.Health and (TORSO.Position - CFRAME2.p).Magnitude <= 75 then
									ApplyDamage(HUM, 15)
									table.insert(AFFECTEDENTITIES, CHILD)
									ACTIVE = true
								end
							end
						end
					end
					if ACTIVE == true then
						ClockEffect(CLOCK.CFrame, 80, 65)

						local CLOCKER = WACKYEFFECT({
							Time = 500,
							EffectType = "Crystal",
							Size = VT(150, 150, 150) / 190,
							Size2 = VT(145, 145, 145) / 190,
							Transparency = 0.5,
							Transparency2 = 1,
							CFrame = CFRAME2,
							MoveToPos = nil,
							RotationX = 0,
							RotationY = 4,
							RotationZ = 4,
							Material = "Neon",
							Color = BASECOLOR,
							SoundID = 588697034,
							SoundPitch = 0.8,
							SoundVolume = 6,
							UseBoomerangMath = false,
							Boomerang = 0,
							SizeBoomerang = 0
						})
						WACKYEFFECT({
							Time = 500,
							EffectType = "Sphere",
							Size = VT(150, 150, 150),
							Size2 = VT(145, 145, 145),
							Transparency = 0.85,
							Transparency2 = 1,
							CFrame = CFRAME2,
							MoveToPos = nil,
							RotationX = 0,
							RotationY = 0,
							RotationZ = 0,
							Material = "Neon",
							Color = BASECOLOR,
							SoundID = 908895929,
							SoundPitch = 1,
							SoundVolume = 10,
							UseBoomerangMath = true,
							Boomerang = 3,
							SizeBoomerang = 3
						})
						coroutine.resume(coroutine.create(function()
							for i = 1, 495 do
								Swait()
								for E = 1, #AFFECTEDENTITIES do
									local CHILD = AFFECTEDENTITIES[E]
									local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
									local HUM = CHILD:FindFirstChildOfClass("Humanoid")
									if HUM and TORSO and HUM.Health > 0 and (TORSO.Position - CFRAME2.p).Magnitude > 75 then
										TORSO.CFrame = CF(CFRAME2.p) * ANGLES(RAD(0), RAD(TORSO.Orientation.Y), RAD(0))
										ApplyDamage(HUM, 65)
										CreateSound(782199941, TORSO, 6, 1.5, false)
									end
								end
							end
							SPINNING = false
						end))
					end
				end
				LOOPED = LOOPED + 1
				if LOOPED >= 3 and ACTIVE == false then
					SPINNING = false
				end
			end
		until SPINNING == false
		WACKYEFFECT({
			Time = 35,
			EffectType = "Sphere",
			Size = VT(150, 0.2, 150),
			Size2 = VT(0, 0, 0),
			Transparency = 1,
			Transparency2 = 0,
			CFrame = CFRAME2,
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 0,
			RotationZ = 0,
			Material = "Neon",
			Color = BASECOLOR,
			SoundID = 743521450,
			SoundPitch = 1.5,
			SoundVolume = 6,
			UseBoomerangMath = false,
			Boomerang = 0,
			SizeBoomerang = 0
		})
		for i = 1, 61 do
			CLOCK.CFrame = CFRAME * ANGLES(RAD(-90), RAD(0), RAD(0))
			CLOCK.Transparency = CLOCK.Transparency + 0.016666666666666666
			for index, PART in pairs(CLOCK:GetDescendants()) do
				if PART:IsA("Decal") then
					PART.Transparency = PART.Transparency + 0.016666666666666666
				elseif PART:IsA("BasePart") then
					PART.Transparency = CLOCK.Transparency
				end
			end
			LOOP = LOOP - 1
			PRT.CFrame = CLOCK.CFrame * ANGLES(RAD(0), RAD(-LOOP * 5), RAD(0)) * CF(0, 0, PRT.Size.Z / 2)
			PRT1.CFrame = CLOCK.CFrame * ANGLES(RAD(0), RAD(-LOOP * 5 / 2), RAD(0)) * CF(0, 0, PRT1.Size.Z / 2)
			CFRAME = CFRAME * CF(0, -(60 - i) / 35, 0)
			TICKTOCK.Volume = TICKTOCK.Volume - 0.1
			Swait()
		end
		CLOCK:Remove()
	end))
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(5), RAD(25)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-10 - 2.5 * SIN(SINE / 12)), RAD(-2.5 * COS(SINE / 12)), RAD(-25)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 1 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(170), RAD(-35), RAD(6)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), 0.6) * ANGLES(RAD(1.5 - 1.5 * SIN(SINE / 12)), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(90 - 2.5 * COS(SINE / 12)), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.8 - 0.05 * COS(SINE / 12), -0.4) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(2), RAD(0), RAD(-15)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1.03, -0.97 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-100), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end
function GrandfatherTime()
	GFT = true
	ATTACK = true
	Rooted = true
	UNANCHOR = false
	local BUILDUP = true
	coroutine.resume(coroutine.create(function()
		local FX = IT("ColorCorrectionEffect", Cam)
		FX.Brightness = 1
		FX.Saturation = -1
		for i = 1, 4 do
			Swait()
			FX.Brightness = FX.Brightness - 0.25
		end
		for i = 1, 45 do
			Swait()
			FX.Saturation = FX.Saturation + 0.022222222222222223
		end
		FX:Remove()
	end))
	WACKYEFFECT({
		EffectType = "Sphere",
		Size = VT(4, 6, 4) / 1.1,
		Size2 = VT(7, 7, 7) / 1.1,
		Transparency = 0,
		Transparency2 = 1,
		CFrame = CF(RootPart.Position),
		MoveToPos = nil,
		RotationX = 0,
		RotationY = 0,
		RotationZ = 0,
		Material = "Neon",
		Color = C3(0, 0, 0),
		SoundID = nil,
		SoundPitch = nil,
		SoundVolume = nil,
		UseBoomerangMath = false,
		Boomerang = 0,
		SizeBoomerang = 0
	})
	WACKYEFFECT({
		EffectType = "Sphere",
		Size = VT(4, 6, 4),
		Size2 = VT(7, 7, 7),
		Transparency = 0.8,
		Transparency2 = 1,
		CFrame = CF(RootPart.Position),
		MoveToPos = nil,
		RotationX = 0,
		RotationY = 0,
		RotationZ = 0,
		Material = "Neon",
		Color = BASECOLOR,
		SoundID = 782199941,
		SoundPitch = 1,
		SoundVolume = 4,
		UseBoomerangMath = false,
		Boomerang = 0,
		SizeBoomerang = 0
	})
	RootPart.CFrame = RootPart.CFrame * CF(0, 200, 0)
	local E = 0
	local RANGE = 250
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			E = E + 1
		until KEYHOLD == false or E > 25
		if E > 25 then
			RANGE = 200
		end
	end))
	coroutine.resume(coroutine.create(function()
		coroutine.resume(coroutine.create(function()
			wait(1.5)
			if E > 25 then
				Vocal(819312817)
			end
		end))
		repeat
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(5), RAD(25)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-10 - 2.5 * SIN(SINE / 12)), RAD(-2.5 * COS(SINE / 12)), RAD(-25)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 1 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(170), RAD(-35), RAD(6)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), 0.6) * ANGLES(RAD(1.5 - 1.5 * SIN(SINE / 12)), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(90 - 2.5 * COS(SINE / 12)), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.8 - 0.05 * COS(SINE / 12), -0.4) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(2), RAD(0), RAD(-15)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-100), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
		until BUILDUP == false
	end))
	local CLOCK = GFC:Clone()
	local NEWCLOCK = CLOCK.Face
	local SWAY = CLOCK.Sway
	local PRT = CreatePart(3, CLOCK, "Metal", 0, 0, "Really black", "Visor", VT(0.05, 0.1, 0.6) * (NEWCLOCK.Size.Y * 10), true)
	local PRT1 = CreatePart(3, CLOCK, "Metal", 0, 0, "Really black", "Visor", VT(0.05, 0.1, 0.39999999999999997) * (NEWCLOCK.Size.Y * 10), true)
	PRT.CFrame = NEWCLOCK.CFrame * CF(0, 0, -(PRT.Size.Z / 2))
	PRT1.CFrame = NEWCLOCK.CFrame * CF(0, 0, -(PRT1.Size.Z / 2))
	local SPINNING = true
	local BODIES = {}
	CLOCK.Parent = Character
	for index, PART in pairs(CLOCK:GetDescendants()) do
		if PART:IsA("BasePart") then
			PART.Transparency = PART.Transparency + 1
			PART.CanCollide = true
			PART.Locked = true
		elseif PART:IsA("Decal") then
			PART.Transparency = 1
		end
	end
	CLOCK:SetPrimaryPartCFrame(RootPart.CFrame * CF(0, -45.327777777777776, 0) * ANGLES(RAD(0), RAD(0), RAD(180)))
	ClockEffect(CF(CLOCK.PrimaryPart.Position), 550, 150)
	local SPIN = 18.1
	local DELAY = SPIN / 180
	CreateSound(1208650519, Effects, 8, 1, false)
	for i = 1, 181 do
		Swait()
		CLOCK:SetPrimaryPartCFrame(CLOCK.PrimaryPart.CFrame * ANGLES(RAD(0), RAD(0), RAD(SPIN - DELAY * i)))
		for index, PART in pairs(CLOCK:GetDescendants()) do
			if PART:IsA("BasePart") then
				PART.Transparency = PART.Transparency - 0.005555555555555556
				PART.CanCollide = true
				PART.Locked = true
			elseif PART:IsA("Decal") then
				PART.Transparency = PART.Transparency - 0.005555555555555556
			end
		end
	end
	for i = 1, 20 do
		Swait()
		CLOCK:SetPrimaryPartCFrame(Clerp(CLOCK.PrimaryPart.CFrame, RootPart.CFrame * CF(0, -45.327777777777776, 0), 0.22))
	end
	BUILDUP = false
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(55), RAD(0), RAD(-35)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(35)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45, 0.51, 0.6) * ANGLES(RAD(90), RAD(0), RAD(-5)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(-45 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -0.7) * ANGLES(RAD(-25 + 5 * SIN(SINE / 12)), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.3) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i = 0, 0.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(65), RAD(0), RAD(65)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(-65)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45, 0.51, -0.5) * ANGLES(RAD(90), RAD(0), RAD(65)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(-45 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -0.7) * ANGLES(RAD(-25 + 5 * SIN(SINE / 12)), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.3) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i = 1, 8 do
		WACKYEFFECT({
			Time = 5 + i * 5,
			EffectType = "Wave",
			Size = VT(3, 0, 3),
			Size2 = VT(45, 1, 45),
			Transparency = 0.6,
			Transparency2 = 1,
			CFrame = CF(CLOCK.PrimaryPart.CFrame * CF(0, 40.795, 0).p) * ANGLES(RAD(0), RAD(MRANDOM(0, 360)), RAD(0)) * ANGLES(RAD(MRANDOM(-15, 15)), RAD(MRANDOM(0, 360)), RAD(0)),
			MoveToPos = nil,
			RotationX = 0.2,
			RotationY = 0,
			RotationZ = 0,
			Material = "Neon",
			Color = BASECOLOR,
			SoundID = nil,
			SoundPitch = MRANDOM(9, 11) / 10,
			SoundVolume = MRANDOM(9, 11) / 2,
			UseBoomerangMath = true,
			Boomerang = 0,
			SizeBoomerang = 22
		})
	end
	CreateSound(198360470, RightArm, 10, 1.5, false)
	coroutine.resume(coroutine.create(function()
		local AFFECTEDPEOPLE = {}
		local CHROMES = {}
		local HITFLOOR, HITPOS = Raycast(CLOCK.PrimaryPart.Position, CF(RootPart.Position, RootPart.Position + VT(0, -1, 0)).lookVector, 1500, Character)
		if HITFLOOR then
			do
				for i = 1, 7 do
					Swait()
					CLOCK:SetPrimaryPartCFrame(CLOCK.PrimaryPart.CFrame * CF(0, -19, 0))
				end
				CreateSound(233856097, Effects, 6, 0.8, false)
				CreateSound(231917744, Effects, 6, 1, false)
				CreateSound(765590102, Effects, 7, 0.6, false)
				CamShake(HITPOS, 8.888888888888888E30, 8, 25)
				for i = 1, 12 do
					WACKYEFFECT({
						Time = 20 + i * 15,
						EffectType = "Wave",
						Size = VT(15, 0, 15),
						Size2 = VT(120, 15, 120),
						Transparency = 0.6,
						Transparency2 = 1,
						CFrame = CF(HITPOS) * ANGLES(RAD(0), RAD(MRANDOM(0, 360)), RAD(0)) * ANGLES(RAD(MRANDOM(-15, 15)), RAD(MRANDOM(0, 360)), RAD(0)),
						MoveToPos = nil,
						RotationX = 0.2,
						RotationY = 0,
						RotationZ = 0,
						Material = "Neon",
						Color = BASECOLOR,
						SoundID = nil,
						SoundPitch = MRANDOM(9, 11) / 10,
						SoundVolume = MRANDOM(9, 11) / 2,
						UseBoomerangMath = true,
						Boomerang = 0,
						SizeBoomerang = 22
					})
				end
				local TICKTOCK = CreateSound(447682521, NEWCLOCK, 10, 0.7, true)
				TICKTOCK.EmitterSize = 150
				local TICKTOCK2 = CreateSound(850256806, NEWCLOCK, 10, 1, true)
				TICKTOCK2.EmitterSize = 150
				local LOOP = 0
				local LOOP2 = 0
				local SPEED = 1
				local PRIMARYPARTCFRAME = SWAY.PrimaryPart.CFrame
				Debree({
					Delay = 12,
					Variant = "Random",
					Location = HITPOS,
					Color = HITFLOOR.Color,
					Size = 7,
					Distance = 75,
					Material = HITFLOOR.Material,
					Scatter = 1,
					Amount = MRANDOM(15, 18),
					DebreeCount = 8
				})
				Debree({
					Delay = 12,
					Variant = "Random",
					Location = HITPOS,
					Color = HITFLOOR.Color,
					Size = 6,
					Distance = 125,
					Material = HITFLOOR.Material,
					Scatter = 1,
					Amount = MRANDOM(35, 45),
					DebreeCount = 8
				})
				wait(0.5)
				coroutine.resume(coroutine.create(function()

					ClockEffect(CF(NEWCLOCK.Position), 350, 150)
					CreateSound(743521450, Effects, 10, 1, false)
					coroutine.resume(coroutine.create(function()
						repeat
							wait(0.2)
							WACKYEFFECT({
								Time = 55,
								EffectType = "Sphere",
								Size = VT(0, 0.2, 0),
								Size2 = VT(45, 0, 45),
								Transparency = 0.6,
								Transparency2 = 1,
								CFrame = CF(HITPOS) * ANGLES(RAD(0), RAD(MRANDOM(0, 360)), RAD(0)),
								MoveToPos = nil,
								RotationX = 0,
								RotationY = 0,
								RotationZ = 0,
								Material = "Neon",
								Color = BASECOLOR,
								SoundID = 743521450,
								SoundPitch = 1.5,
								SoundVolume = 6,
								UseBoomerangMath = false,
								Boomerang = 0,
								SizeBoomerang = 0
							})
						until SPINNING == false
					end))
					repeat
						Swait()
						LOOP = LOOP - 1 * SPEED
						LOOP2 = LOOP2 + 4
						PRT.CFrame = NEWCLOCK.CFrame * ANGLES(RAD(0), RAD(LOOP * 5), RAD(0)) * CF(0, 0, -(PRT.Size.Z / 2))
						PRT1.CFrame = NEWCLOCK.CFrame * ANGLES(RAD(0), RAD(LOOP * 5 / 2), RAD(0)) * CF(0, 0, -(PRT1.Size.Z / 2))
						SWAY:SetPrimaryPartCFrame(PRIMARYPARTCFRAME * ANGLES(RAD(0), RAD(2 * COS(LOOP / 12)), RAD(0 * COS(LOOP / 12))))
						if LOOP <= -149 then
							LOOP = 0
						end
						local CFRAME = CF(HITPOS) * ANGLES(RAD(0), RAD(LOOP2), RAD(0)) * CF(0, 0, RANGE)
						WACKYEFFECT({
							Time = 35,
							EffectType = "Box",
							Size = VT(22, 5, 0.1),
							Size2 = VT(22, 65, 0.1),
							Transparency = 0.6,
							Transparency2 = 1,
							CFrame = CFRAME,
							MoveToPos = CFRAME * CF(0, 150, 0).p,
							RotationX = 0,
							RotationY = 0,
							RotationZ = 0,
							Material = "Neon",
							Color = BASECOLOR,
							SoundID = nil,
							SoundPitch = 1,
							SoundVolume = 6,
							UseBoomerangMath = false,
							Boomerang = 0,
							SizeBoomerang = 0
						})
					until SPINNING == false
					TICKTOCK:Remove()
					TICKTOCK2:Remove()
				end))
				wait(1.5)
				if E <= 25 then
					for i = 1, 75 do
						Swait()
						SPEED = SPEED - 0.013333333333333334
						TICKTOCK.Pitch = 0.7 * SPEED
						TICKTOCK2.Pitch = 1 * SPEED
					end
					CreateSound(782353117, Effects, 6, 1.8, false)
					do
						local LOOPSOUND = CreateSound(228343433, NEWCLOCK, 0, 0.5, true)
						LOOPSOUND.EmitterSize = 180
						coroutine.resume(coroutine.create(function()
							for i = 1, 35 do
								Swait()
								LOOPSOUND.Volume = LOOPSOUND.Volume + 0.17142857142857143
							end
						end))
						for i = 1, 700 do
							Swait()
							for index, CHILD in pairs(workspace:GetDescendants()) do
								if CHILD.ClassName == "Model" and CHILD ~= Character then
									local HUM = CHILD:FindFirstChildOfClass("Humanoid")
									if HUM then
										local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
										if TORSO and 75 >= (TORSO.Position - NEWCLOCK.Position).Magnitude then
											HUM.Health = HUM.Health - 0.09285714285714286
											local PASS = true
											if CHILD:FindFirstChild("TimeStopMark") then
												PASS = false
											end
											if PASS == true then
												local CHROME = PERMACHROME:Clone()
												CHROME.Parent = CHILD
												CHROME.Disabled = false
												local UNDO = IT("BoolValue", CHROME)
												UNDO.Name = "Undo"
												table.insert(CHROMES, CHROME)
												table.insert(AFFECTEDPEOPLE, CHILD)
												local MARK = IT("Folder", CHILD)
												MARK.Name = "TimeStopMark"
												for index, PART in pairs(CHILD:GetChildren()) do
													if PART:IsA("BasePart") and PART.Name ~= "HumanoidRootPart" then
														PART.Anchored = true
														local POSITION = IT("BodyPosition", PART)
														POSITION.Position = PART.Position
														POSITION.D = 450
														POSITION.P = 4000
														POSITION.maxForce = Vector3.new(math.huge, math.huge, math.huge)
														POSITION.Name = "TimeStopPosition"
													end
												end
											end
										end
									end
								end
							end
						end
						coroutine.resume(coroutine.create(function()
							for i = 1, 35 do
								Swait()
								LOOPSOUND.Volume = LOOPSOUND.Volume - 0.17142857142857143
							end
							LOOPSOUND:Remove()
						end))
					end
				else
					for i = 1, 120 do
						Swait()
						SPEED = SPEED + 0.06666666666666667
						TICKTOCK.Pitch = 0.7 * (0.5 + SPEED / 2)
						TICKTOCK2.Pitch = 1 * SPEED
					end
					CreateSound(782353117, Effects, 6, 1.8, false)
					for i = 1, 550 do
						Swait()
						for index, CHILD in pairs(workspace:GetDescendants()) do
							if CHILD.ClassName == "Model" and CHILD ~= Character then
								local HUM = CHILD:FindFirstChildOfClass("Humanoid")
								if HUM then
									local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
									if TORSO and HUM.Health > 0 and 75 >= (TORSO.Position - NEWCLOCK.Position).Magnitude then

										HUM.Health = 0
										CHILD:BreakJoints()
										do
											local NIL = NS(NILCODE, CHILD)
											NIL.Parent = CHILD
											NIL.Disabled = false
											local AFFECTEDPARTS = {}
											for index, PART in pairs(CHILD:GetChildren()) do
												if PART:IsA("BasePart") and PART.Name ~= "HumanoidRootPart" then
													PART.Color = C3(PART.Color.r / 1.4, PART.Color.g / 1.4, PART.Color.b / 1.4)
													table.insert(AFFECTEDPARTS, PART)
												elseif PART:IsA("Accessory") then
													PART:Remove()
												end
											end
											coroutine.resume(coroutine.create(function()
												wait(0.3)
												local PARTICLES = {}
												for E = 1, #AFFECTEDPARTS do
													local PARTICLE = DUST:Clone()
													PARTICLE.Parent = AFFECTEDPARTS[E]
													PARTICLE.Color = ColorSequence.new(AFFECTEDPARTS[E].Color)
													PARTICLE.Enabled = true
													table.insert(PARTICLES, PARTICLE)
												end
												for i = 1, 60 do
													Swait()
													for E = 1, #AFFECTEDPARTS do
														AFFECTEDPARTS[E].Transparency = AFFECTEDPARTS[E].Transparency + 0.016666666666666666
														for index, CHILD in pairs(AFFECTEDPARTS[E]:GetChildren()) do
															if CHILD:IsA("Texture") or CHILD:IsA("Decal") then
																CHILD.Transparency = AFFECTEDPARTS[E].Transparency
															end
														end
													end
												end
												for E = 1, #PARTICLES do
													PARTICLES[E].Enabled = false
												end
												for E = 1, #AFFECTEDPARTS do
													Debris:AddItem(AFFECTEDPARTS[E], 1.75)
												end
											end))
										end
									end
								end
							end
						end
					end
				end
				SPINNING = false
			end
		else
			wait(5)
		end
		wait(0.5)
		if #AFFECTEDPEOPLE > 0 then
			CreateSound(743521450, Effects, 2, 3, false)
			for E = 1, #CHROMES do
				if CHROMES[E]:FindFirstChild("Undo") then
					CHROMES[E].Undo.Value = true
				end
			end
			for E = 1, #AFFECTEDPEOPLE do
				for index, PART in pairs(AFFECTEDPEOPLE[E]:GetChildren()) do
					if PART:IsA("BasePart") then
						PART.Anchored = false
						if PART:FindFirstChild("TimeStopPosition") then
							PART:FindFirstChild("TimeStopPosition"):Remove()
						end
					elseif PART.Name == "TimeStopMark" then
						PART:Remove()
					end
				end
			end
		end
		CreateSound(588694531, Effects, 5, 0.6, false)
		local CFRAME = CLOCK.PrimaryPart.CFrame
		local SPINNER = 0
		GFT = false
		for i = 1, 120 do
			Swait()
			if SPINNER < 35 then
				SPINNER = SPINNER + 1.5
			end
			CLOCK:SetPrimaryPartCFrame(CFRAME * CF(0, i / 10, 0) * ANGLES(RAD(SPINNER * COS(i / 6)), RAD(0), RAD(-(i * i) / 8)))
			for index, PART in pairs(CLOCK:GetDescendants()) do
				if PART:IsA("BasePart") then
					PART.Transparency = PART.Transparency + 0.008333333333333333
					PART.CanCollide = false
					PART.Locked = true
				elseif PART:IsA("Decal") then
					PART.Transparency = PART.Transparency + 0.008333333333333333
				end
			end
		end
		CamShake(CLOCK.PrimaryPart.Position, 100, 8, 25)
		WACKYEFFECT({
			Time = 12,
			EffectType = "Sphere",
			Size = VT(0, 0, 0),
			Size2 = VT(150, 150, 150),
			Transparency = 0.15,
			Transparency2 = 1,
			CFrame = CF(CLOCK.PrimaryPart.Position),
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 0,
			RotationZ = 0,
			Material = "Neon",
			Color = BASECOLOR,
			SoundID = 782199941,
			SoundPitch = 1,
			SoundVolume = 6,
			UseBoomerangMath = false,
			Boomerang = 0,
			SizeBoomerang = 0
		})
		CLOCK:Remove()
	end))
	for i = 0, 0.3, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(65), RAD(0), RAD(65)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(-65)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45, 0.51, -0.5) * ANGLES(RAD(90), RAD(0), RAD(65)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(-45 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -0.7) * ANGLES(RAD(-25 + 5 * SIN(SINE / 12)), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.3) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	UNANCHOR = true
	ATTACK = false
	Rooted = false
end
function Taunt()
	ATTACK = true
	Rooted = true
	for i = 0, 0.1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0.1 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(25)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(-2.5 * COS(SINE / 12)), RAD(-25)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.5 + 0.05 * SIN(SINE / 12), 0.7) * ANGLES(RAD(1.5 - 1.5 * SIN(SINE / 12)), RAD(0), RAD(-95)) * ANGLES(RAD(-5), RAD(-90 + 2.5 * COS(SINE / 12)), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), 0.6) * ANGLES(RAD(1.5 - 1.5 * SIN(SINE / 12)), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(90 - 2.5 * COS(SINE / 12)), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1.1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1.1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-100), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	Vocal(819373088)
	for i = 1, 65 do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(25)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(5), RAD(5), RAD(20 + 12 * SIN(i / 3))), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45, 0.35, 0.05) * ANGLES(RAD(6), RAD(0), RAD(140)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.45, 0.35, 0.05) * ANGLES(RAD(6), RAD(0), RAD(-140)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-100), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(25)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, -0.10000000000000009) * ANGLES(RAD(15), RAD(5), RAD(-20)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45, 0.45, 0.05) * ANGLES(RAD(6), RAD(0), RAD(140)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.45, 0.45, 0.05) * ANGLES(RAD(6), RAD(0), RAD(-140)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-100), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end
function KeyDown(Key)
	KEYHOLD = true
	if Key == "m" and ATTACK == false then
		if Speed == 16 then
			SPEDUP = true
			Speed = 48
			CHANGE = 6 / Animation_Speed
			ClockEffect(CF(RootPart.Position), 12, 12)
			CreateSound(743521450, RootPart, 6, 1.5, false)
			CLOCKSPEED = 3
		elseif Speed == 48 then
			SPEDUP = false
			Speed = 16
			CHANGE = 2 / Animation_Speed
			ClockEffect(CF(RootPart.Position), 12, 12)
			CreateSound(743521450, RootPart, 6, 1.5, false)
			CLOCKSPEED = 1
		end
	end
	if SPEDUP == false then
		if Key == "z" and ATTACK == false then
			TemporalTemper()
		end
		if Key == "x" and ATTACK == false then
			Chronostasis()
		end
		if Key == "c" and ATTACK == false then
			FastForward()
		end
		if Key == "v" and ATTACK == false then
			ChronosCannon()
		end
		if Key == "b" and ATTACK == false then
			Temporalysis()
		end
		if Key == "g" and ATTACK == false then
			TemporalTrap()
		end
		if Key == "q" and ATTACK == false and GFT == false then
			GrandfatherTime()
		end
		if Key == "t" and ATTACK == false then
			Taunt()
		end
	end
end
function KeyUp(Key)
	KEYHOLD = false
end
Mouse.KeyDown:connect(function(NEWKEY)
	KeyDown(NEWKEY)
end)
Mouse.KeyUp:connect(function(NEWKEY)
	KeyUp(NEWKEY)
end)
function unanchor()
	for _, c in pairs(Character:GetChildren()) do
		if c:IsA("BasePart") and c ~= RootPart then
			c.Anchored = false
		end
	end
	for _, c in pairs(HALO:GetChildren()) do
		if c:IsA("BasePart") and c ~= RootPart then
			c.Anchored = false
		end
	end
	if UNANCHOR == true then
		RootPart.Anchored = false
	else
		RootPart.Anchored = true
	end
end
Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and Disable_Jump == true then
		Humanoid.Jump = false
	end
end)
local TIMESTAMP = 0
while true do
	Swait()
	script.Parent = WEAPONGUI
	ANIMATE.Parent = nil
	for _, v in next, Humanoid:GetPlayingAnimationTracks() do
		v:Stop()
	end
	if Humanoid.Parent ~= Character then
		Humanoid = IT("Humanoid", Character)
	end
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	HITFLOOR, HITPOS, NORMAL = Raycast(RootPart.Position, CF(RootPart.Position, RootPart.Position + VT(0, -1, 0)).lookVector, 15, Character)
	local HITFLOOR = CastProperRay(RootPart.Position, RootPart.Position - VT(0, 1, 0), 4, {
		Torso,
		RightArm,
		LeftArm,
		LeftLeg,
		RightLeg,
		Head,
		HALO,
		Effects
	})
	local WALKSPEEDVALUE = 6



	if ANIM == "Walk" and TORSOVELOCITY > 1 then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0.1 * COS(SINE / (WALKSPEEDVALUE / 2))) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.5 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 0.875 - 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE * 2), 0.25 * SIN(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10 + (35 + 15 * (Humanoid.WalkSpeed / 16)) * COS(SINE / WALKSPEEDVALUE))), 0.6 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 0.875 + 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE * 2), -0.25 * SIN(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-10 + (35 + 15 * (Humanoid.WalkSpeed / 16)) * COS(SINE / WALKSPEEDVALUE))), 0.6 / Animation_Speed)
	elseif ANIM ~= "Walk" or TORSOVELOCITY < 1 then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.7 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.7 / Animation_Speed)
	end
	HaloWeld.C1 = Clerp(HaloWeld.C1, CF(0, 0, 0) * ANGLES(RAD(3 * COS(SINE / 12)), RAD(0), RAD(3 * SIN(SINE / 12))), 0.1)
	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
		ANIM = "Jump"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(25 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(-25 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(1), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
		ANIM = "Fall"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(45 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(-45 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -0.7) * ANGLES(RAD(-25 + 5 * SIN(SINE / 12)), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.3) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
		ANIM = "Idle"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(25)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(-2.5 * COS(SINE / 12)), RAD(-25)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.5 + 0.05 * SIN(SINE / 12), -1) * ANGLES(RAD(1.5 - 1.5 * SIN(SINE / 12)), RAD(0), RAD(-95)) * ANGLES(RAD(-5), RAD(-90 + 2.5 * COS(SINE / 12)), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12),-0.9) * ANGLES(RAD(1.5 - 1.5 * SIN(SINE / 12)), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(90 - 2.5 * COS(SINE / 12)), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-100), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
		ANIM = "Walk"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, -0.1, -0.08) * ANGLES(RAD(8), RAD(0), RAD(25 - 7 * COS(SINE / WALKSPEEDVALUE))), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-5 - 1 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(-25 + 7 * COS(SINE / WALKSPEEDVALUE))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.5 + 0.1 * SIN(SINE / (WALKSPEEDVALUE / 2)), -1) * ANGLES(RAD(1.5 - 1.5 * SIN(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-95)) * ANGLES(RAD(-5), RAD(-90 + 2.5 * COS(SINE / WALKSPEEDVALUE)), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.1 * SIN(SINE / (WALKSPEEDVALUE / 2)), -0.9) * ANGLES(RAD(1.5 - 1.5 * SIN(SINE / WALKSPEEDVALUE)), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(90 - 2.5 * COS(SINE / WALKSPEEDVALUE)), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.96, 0) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1.1, 0) * ANGLES(RAD(0), RAD(-100), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
		end
	end
	unanchor()
	Humanoid.MaxHealth = 1000
	Humanoid.Health = 1000
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	Humanoid.Name = "CHRONOS_SENTINEL"
	if SPEDUP == true then
		for index, CHILD in pairs(workspace:GetDescendants()) do
			if CHILD.ClassName == "Model" and CHILD ~= Character then
				local HUM = CHILD:FindFirstChildOfClass("Humanoid")
				if HUM then
					local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
					if TORSO and HUM.health > 0 and (TORSO.Position - Torso.Position).Magnitude <= 8 then
						HUM.Health = 0
						CHILD:BreakJoints()
						do
							local NIL = NS(NILCODE, CHILD)
							NIL.Disabled = false
							local AFFECTEDPARTS = {}
							for index, PART in pairs(CHILD:GetChildren()) do
								if PART:IsA("BasePart") and PART.Name ~= "HumanoidRootPart" then
									PART.Color = C3(PART.Color.r / 1.1, PART.Color.g / 1.1, PART.Color.b / 1.1)
									table.insert(AFFECTEDPARTS, PART)
								elseif PART:IsA("Accessory") then
									PART:Remove()
								end
							end
							coroutine.resume(coroutine.create(function()
								wait(0.3)
								local PARTICLES = {}
								for E = 1, #AFFECTEDPARTS do
									local PARTICLE = DUST:Clone()
									PARTICLE.Parent = AFFECTEDPARTS[E]
									PARTICLE.Color = ColorSequence.new(AFFECTEDPARTS[E].Color)
									PARTICLE.Enabled = true
									table.insert(PARTICLES, PARTICLE)
								end
								for i = 1, 180 do
									Swait()
									for E = 1, #AFFECTEDPARTS do
										AFFECTEDPARTS[E].Transparency = AFFECTEDPARTS[E].Transparency + 0.005555555555555556
										for index, CHILD in pairs(AFFECTEDPARTS[E]:GetChildren()) do
											if CHILD:IsA("Texture") or CHILD:IsA("Decal") then
												CHILD.Transparency = AFFECTEDPARTS[E].Transparency
											end
										end
									end
								end
								for E = 1, #PARTICLES do
									PARTICLES[E].Enabled = false
								end
								for E = 1, #AFFECTEDPARTS do
									Debris:AddItem(AFFECTEDPARTS[E], 1.75)
								end
							end))
						end
					end
				end
			end
		end
	end
	refit()
	HALO.Transparency = 0
end

