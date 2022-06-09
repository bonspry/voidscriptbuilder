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
-- fd script is here
	
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
StringValue1 = Instance.new("StringValue")
LocalScript2 = Instance.new("LocalScript")
ObjectValue3 = Instance.new("ObjectValue")
NumberValue4 = Instance.new("NumberValue")
NumberValue5 = Instance.new("NumberValue")
NumberValue6 = Instance.new("NumberValue")
NumberValue7 = Instance.new("NumberValue")
NumberValue8 = Instance.new("NumberValue")
LocalScript9 = Instance.new("LocalScript")
StringValue10 = Instance.new("StringValue")
LocalScript11 = Instance.new("LocalScript")
StringValue12 = Instance.new("StringValue")
LocalScript13 = Instance.new("LocalScript")
StringValue14 = Instance.new("StringValue")
LocalScript15 = Instance.new("LocalScript")
ObjectValue16 = Instance.new("ObjectValue")
StringValue17 = Instance.new("StringValue")
ModuleScript18 = Instance.new("ModuleScript")
LocalScript19 = Instance.new("LocalScript")
ObjectValue20 = Instance.new("ObjectValue")
ModuleScript21 = Instance.new("ModuleScript")
ModuleScript22 = Instance.new("ModuleScript")
Model23 = Instance.new("Model")
Part24 = Instance.new("Part")
Part25 = Instance.new("Part")
CylinderMesh26 = Instance.new("CylinderMesh")
Part27 = Instance.new("Part")
MeshPart28 = Instance.new("MeshPart")
MeshPart29 = Instance.new("MeshPart")
Part30 = Instance.new("Part")
CylinderMesh31 = Instance.new("CylinderMesh")
Part32 = Instance.new("Part")
MeshPart33 = Instance.new("MeshPart")
MeshPart34 = Instance.new("MeshPart")
Part35 = Instance.new("Part")
CylinderMesh36 = Instance.new("CylinderMesh")
MeshPart37 = Instance.new("MeshPart")
Part38 = Instance.new("Part")
Part39 = Instance.new("Part")
Part40 = Instance.new("Part")
Part41 = Instance.new("Part")
Part42 = Instance.new("Part")
Part43 = Instance.new("Part")
Part44 = Instance.new("Part")
Part45 = Instance.new("Part")
Part46 = Instance.new("Part")
Part47 = Instance.new("Part")
Part48 = Instance.new("Part")
Part49 = Instance.new("Part")
Part50 = Instance.new("Part")
Part51 = Instance.new("Part")
Part52 = Instance.new("Part")
Part53 = Instance.new("Part")
Part54 = Instance.new("Part")
Part55 = Instance.new("Part")
Part56 = Instance.new("Part")
Part57 = Instance.new("Part")
Part58 = Instance.new("Part")
CylinderMesh59 = Instance.new("CylinderMesh")
Part60 = Instance.new("Part")
Part61 = Instance.new("Part")
Part62 = Instance.new("Part")
Part63 = Instance.new("Part")
CylinderMesh64 = Instance.new("CylinderMesh")
Part65 = Instance.new("Part")
Part66 = Instance.new("Part")
Part67 = Instance.new("Part")
Part68 = Instance.new("Part")
Part69 = Instance.new("Part")
Part70 = Instance.new("Part")
Part71 = Instance.new("Part")
Part72 = Instance.new("Part")
Part73 = Instance.new("Part")
Part74 = Instance.new("Part")
Part75 = Instance.new("Part")
Part76 = Instance.new("Part")
Part77 = Instance.new("Part")
Part78 = Instance.new("Part")
Part79 = Instance.new("Part")
Part80 = Instance.new("Part")
Part81 = Instance.new("Part")
Part82 = Instance.new("Part")
Part83 = Instance.new("Part")
Part84 = Instance.new("Part")
Part85 = Instance.new("Part")
Part86 = Instance.new("Part")
Part87 = Instance.new("Part")
Part88 = Instance.new("Part")
Part89 = Instance.new("Part")
Part90 = Instance.new("Part")
Part91 = Instance.new("Part")
Part92 = Instance.new("Part")
Part93 = Instance.new("Part")
Part94 = Instance.new("Part")
Part95 = Instance.new("Part")
Part96 = Instance.new("Part")
Part97 = Instance.new("Part")
Part98 = Instance.new("Part")
Part99 = Instance.new("Part")
Part100 = Instance.new("Part")
Part101 = Instance.new("Part")
Part102 = Instance.new("Part")
Part103 = Instance.new("Part")
Part104 = Instance.new("Part")
Part105 = Instance.new("Part")
Weld106 = Instance.new("Weld")
Weld107 = Instance.new("Weld")
Weld108 = Instance.new("Weld")
Weld109 = Instance.new("Weld")
Weld110 = Instance.new("Weld")
Weld111 = Instance.new("Weld")
Weld112 = Instance.new("Weld")
Weld113 = Instance.new("Weld")
Weld114 = Instance.new("Weld")
Weld115 = Instance.new("Weld")
Weld116 = Instance.new("Weld")
Weld117 = Instance.new("Weld")
Weld118 = Instance.new("Weld")
Weld119 = Instance.new("Weld")
Weld120 = Instance.new("Weld")
Weld121 = Instance.new("Weld")
Weld122 = Instance.new("Weld")
Weld123 = Instance.new("Weld")
Weld124 = Instance.new("Weld")
Weld125 = Instance.new("Weld")
Weld126 = Instance.new("Weld")
Weld127 = Instance.new("Weld")
Weld128 = Instance.new("Weld")
Weld129 = Instance.new("Weld")
Weld130 = Instance.new("Weld")
Weld131 = Instance.new("Weld")
Weld132 = Instance.new("Weld")
Weld133 = Instance.new("Weld")
Weld134 = Instance.new("Weld")
Weld135 = Instance.new("Weld")
Weld136 = Instance.new("Weld")
Weld137 = Instance.new("Weld")
Weld138 = Instance.new("Weld")
Weld139 = Instance.new("Weld")
Weld140 = Instance.new("Weld")
Weld141 = Instance.new("Weld")
Weld142 = Instance.new("Weld")
Weld143 = Instance.new("Weld")
Weld144 = Instance.new("Weld")
Weld145 = Instance.new("Weld")
Weld146 = Instance.new("Weld")
Weld147 = Instance.new("Weld")
Weld148 = Instance.new("Weld")
Weld149 = Instance.new("Weld")
Weld150 = Instance.new("Weld")
Weld151 = Instance.new("Weld")
Weld152 = Instance.new("Weld")
Weld153 = Instance.new("Weld")
Weld154 = Instance.new("Weld")
Weld155 = Instance.new("Weld")
Weld156 = Instance.new("Weld")
Weld157 = Instance.new("Weld")
Weld158 = Instance.new("Weld")
Weld159 = Instance.new("Weld")
Weld160 = Instance.new("Weld")
Weld161 = Instance.new("Weld")
Weld162 = Instance.new("Weld")
Weld163 = Instance.new("Weld")
Weld164 = Instance.new("Weld")
Weld165 = Instance.new("Weld")
Weld166 = Instance.new("Weld")
Weld167 = Instance.new("Weld")
Weld168 = Instance.new("Weld")
Weld169 = Instance.new("Weld")
Weld170 = Instance.new("Weld")
Weld171 = Instance.new("Weld")
Weld172 = Instance.new("Weld")
Weld173 = Instance.new("Weld")
Weld174 = Instance.new("Weld")
Weld175 = Instance.new("Weld")
Weld176 = Instance.new("Weld")
Weld177 = Instance.new("Weld")
Weld178 = Instance.new("Weld")
Weld179 = Instance.new("Weld")
Weld180 = Instance.new("Weld")
Weld181 = Instance.new("Weld")
Weld182 = Instance.new("Weld")
Weld183 = Instance.new("Weld")
Weld184 = Instance.new("Weld")
Weld185 = Instance.new("Weld")
Weld186 = Instance.new("Weld")
Weld187 = Instance.new("Weld")
Weld188 = Instance.new("Weld")
Weld189 = Instance.new("Weld")
Weld190 = Instance.new("Weld")
Weld191 = Instance.new("Weld")
Weld192 = Instance.new("Weld")
Weld193 = Instance.new("Weld")
Weld194 = Instance.new("Weld")
Weld195 = Instance.new("Weld")
Weld196 = Instance.new("Weld")
Weld197 = Instance.new("Weld")
Weld198 = Instance.new("Weld")
Weld199 = Instance.new("Weld")
Weld200 = Instance.new("Weld")
Weld201 = Instance.new("Weld")
Weld202 = Instance.new("Weld")
Weld203 = Instance.new("Weld")
Weld204 = Instance.new("Weld")
Weld205 = Instance.new("Weld")
Weld206 = Instance.new("Weld")
Weld207 = Instance.new("Weld")
Weld208 = Instance.new("Weld")
Weld209 = Instance.new("Weld")
Weld210 = Instance.new("Weld")
Weld211 = Instance.new("Weld")
Weld212 = Instance.new("Weld")
Weld213 = Instance.new("Weld")
Weld214 = Instance.new("Weld")
Weld215 = Instance.new("Weld")
Weld216 = Instance.new("Weld")
Weld217 = Instance.new("Weld")
Weld218 = Instance.new("Weld")
Weld219 = Instance.new("Weld")
Weld220 = Instance.new("Weld")
Weld221 = Instance.new("Weld")
Weld222 = Instance.new("Weld")
Weld223 = Instance.new("Weld")
Weld224 = Instance.new("Weld")
Weld225 = Instance.new("Weld")
Weld226 = Instance.new("Weld")
Weld227 = Instance.new("Weld")
Weld228 = Instance.new("Weld")
Weld229 = Instance.new("Weld")
Weld230 = Instance.new("Weld")
Weld231 = Instance.new("Weld")
Weld232 = Instance.new("Weld")
Weld233 = Instance.new("Weld")
Weld234 = Instance.new("Weld")
Weld235 = Instance.new("Weld")
Weld236 = Instance.new("Weld")
Weld237 = Instance.new("Weld")
Weld238 = Instance.new("Weld")
Weld239 = Instance.new("Weld")
Weld240 = Instance.new("Weld")
Weld241 = Instance.new("Weld")
Weld242 = Instance.new("Weld")
Weld243 = Instance.new("Weld")
Weld244 = Instance.new("Weld")
Weld245 = Instance.new("Weld")
Weld246 = Instance.new("Weld")
Weld247 = Instance.new("Weld")
Weld248 = Instance.new("Weld")
Weld249 = Instance.new("Weld")
Weld250 = Instance.new("Weld")
Weld251 = Instance.new("Weld")
Weld252 = Instance.new("Weld")
Weld253 = Instance.new("Weld")
Weld254 = Instance.new("Weld")
Weld255 = Instance.new("Weld")
Weld256 = Instance.new("Weld")
Weld257 = Instance.new("Weld")
Weld258 = Instance.new("Weld")
Weld259 = Instance.new("Weld")
Weld260 = Instance.new("Weld")
Weld261 = Instance.new("Weld")
Weld262 = Instance.new("Weld")
Weld263 = Instance.new("Weld")
Weld264 = Instance.new("Weld")
Weld265 = Instance.new("Weld")
Weld266 = Instance.new("Weld")
Weld267 = Instance.new("Weld")
Weld268 = Instance.new("Weld")
Weld269 = Instance.new("Weld")
Weld270 = Instance.new("Weld")
Weld271 = Instance.new("Weld")
Weld272 = Instance.new("Weld")
Weld273 = Instance.new("Weld")
Weld274 = Instance.new("Weld")
Weld275 = Instance.new("Weld")
Weld276 = Instance.new("Weld")
Weld277 = Instance.new("Weld")
Weld278 = Instance.new("Weld")
Weld279 = Instance.new("Weld")
Weld280 = Instance.new("Weld")
Weld281 = Instance.new("Weld")
Weld282 = Instance.new("Weld")
Weld283 = Instance.new("Weld")
Weld284 = Instance.new("Weld")
Weld285 = Instance.new("Weld")
Weld286 = Instance.new("Weld")
Weld287 = Instance.new("Weld")
Weld288 = Instance.new("Weld")
Weld289 = Instance.new("Weld")
Weld290 = Instance.new("Weld")
Weld291 = Instance.new("Weld")
Weld292 = Instance.new("Weld")
Part293 = Instance.new("Part")
Part294 = Instance.new("Part")
Part295 = Instance.new("Part")
Part296 = Instance.new("Part")
Part297 = Instance.new("Part")
Part298 = Instance.new("Part")
Part299 = Instance.new("Part")
Part300 = Instance.new("Part")
Part301 = Instance.new("Part")
Part302 = Instance.new("Part")
Part303 = Instance.new("Part")
Part304 = Instance.new("Part")
Part305 = Instance.new("Part")
Part306 = Instance.new("Part")
Part307 = Instance.new("Part")
Part308 = Instance.new("Part")
Part309 = Instance.new("Part")
Part310 = Instance.new("Part")
WedgePart311 = Instance.new("WedgePart")
WedgePart312 = Instance.new("WedgePart")
WedgePart313 = Instance.new("WedgePart")
WedgePart314 = Instance.new("WedgePart")
WedgePart315 = Instance.new("WedgePart")
Part316 = Instance.new("Part")
Part317 = Instance.new("Part")
Part318 = Instance.new("Part")
WedgePart319 = Instance.new("WedgePart")
WedgePart320 = Instance.new("WedgePart")
Part321 = Instance.new("Part")
WedgePart322 = Instance.new("WedgePart")
Part323 = Instance.new("Part")
Part324 = Instance.new("Part")
CylinderMesh325 = Instance.new("CylinderMesh")
Part326 = Instance.new("Part")
CylinderMesh327 = Instance.new("CylinderMesh")
Part328 = Instance.new("Part")
CylinderMesh329 = Instance.new("CylinderMesh")
Part330 = Instance.new("Part")
CylinderMesh331 = Instance.new("CylinderMesh")
Part332 = Instance.new("Part")
CylinderMesh333 = Instance.new("CylinderMesh")
Part334 = Instance.new("Part")
CylinderMesh335 = Instance.new("CylinderMesh")
Part336 = Instance.new("Part")
CylinderMesh337 = Instance.new("CylinderMesh")
Part338 = Instance.new("Part")
CylinderMesh339 = Instance.new("CylinderMesh")
Part340 = Instance.new("Part")
CylinderMesh341 = Instance.new("CylinderMesh")
Part342 = Instance.new("Part")
CylinderMesh343 = Instance.new("CylinderMesh")
Part344 = Instance.new("Part")
CylinderMesh345 = Instance.new("CylinderMesh")
Part346 = Instance.new("Part")
CylinderMesh347 = Instance.new("CylinderMesh")
Part348 = Instance.new("Part")
CylinderMesh349 = Instance.new("CylinderMesh")
Part350 = Instance.new("Part")
CylinderMesh351 = Instance.new("CylinderMesh")
Part352 = Instance.new("Part")
CylinderMesh353 = Instance.new("CylinderMesh")
Part354 = Instance.new("Part")
CylinderMesh355 = Instance.new("CylinderMesh")
Part356 = Instance.new("Part")
CylinderMesh357 = Instance.new("CylinderMesh")
Part358 = Instance.new("Part")
CylinderMesh359 = Instance.new("CylinderMesh")
Part360 = Instance.new("Part")
CylinderMesh361 = Instance.new("CylinderMesh")
Part362 = Instance.new("Part")
CylinderMesh363 = Instance.new("CylinderMesh")
Part364 = Instance.new("Part")
CylinderMesh365 = Instance.new("CylinderMesh")
MeshPart366 = Instance.new("MeshPart")
Part367 = Instance.new("Part")
CylinderMesh368 = Instance.new("CylinderMesh")
Part369 = Instance.new("Part")
CylinderMesh370 = Instance.new("CylinderMesh")
Part371 = Instance.new("Part")
CylinderMesh372 = Instance.new("CylinderMesh")
Part373 = Instance.new("Part")
CylinderMesh374 = Instance.new("CylinderMesh")
Part375 = Instance.new("Part")
CylinderMesh376 = Instance.new("CylinderMesh")
Part377 = Instance.new("Part")
CylinderMesh378 = Instance.new("CylinderMesh")
Part379 = Instance.new("Part")
CylinderMesh380 = Instance.new("CylinderMesh")
Part381 = Instance.new("Part")
CylinderMesh382 = Instance.new("CylinderMesh")
Part383 = Instance.new("Part")
CylinderMesh384 = Instance.new("CylinderMesh")
Part385 = Instance.new("Part")
CylinderMesh386 = Instance.new("CylinderMesh")
Part387 = Instance.new("Part")
CylinderMesh388 = Instance.new("CylinderMesh")
Part389 = Instance.new("Part")
CylinderMesh390 = Instance.new("CylinderMesh")
Part391 = Instance.new("Part")
CylinderMesh392 = Instance.new("CylinderMesh")
Part393 = Instance.new("Part")
CylinderMesh394 = Instance.new("CylinderMesh")
Part395 = Instance.new("Part")
Part396 = Instance.new("Part")
Part397 = Instance.new("Part")
Part398 = Instance.new("Part")
Part399 = Instance.new("Part")
Part400 = Instance.new("Part")
Part401 = Instance.new("Part")
Part402 = Instance.new("Part")
Part403 = Instance.new("Part")
Part404 = Instance.new("Part")
Part405 = Instance.new("Part")
Part406 = Instance.new("Part")
Part407 = Instance.new("Part")
Part408 = Instance.new("Part")
Part409 = Instance.new("Part")
Part410 = Instance.new("Part")
Part411 = Instance.new("Part")
Part412 = Instance.new("Part")
Part413 = Instance.new("Part")
Part414 = Instance.new("Part")
Part415 = Instance.new("Part")
Part416 = Instance.new("Part")
Part417 = Instance.new("Part")
Part418 = Instance.new("Part")
Part419 = Instance.new("Part")
Part420 = Instance.new("Part")
Part421 = Instance.new("Part")
Part422 = Instance.new("Part")
Part423 = Instance.new("Part")
Part424 = Instance.new("Part")
Part425 = Instance.new("Part")
Part426 = Instance.new("Part")
Part427 = Instance.new("Part")
Part428 = Instance.new("Part")
Part429 = Instance.new("Part")
Part430 = Instance.new("Part")
Part431 = Instance.new("Part")
Part432 = Instance.new("Part")
Part433 = Instance.new("Part")
Part434 = Instance.new("Part")
Part435 = Instance.new("Part")
Part436 = Instance.new("Part")
Part437 = Instance.new("Part")
Part438 = Instance.new("Part")
Model439 = Instance.new("Model")
Part440 = Instance.new("Part")
UnionOperation441 = Instance.new("UnionOperation")
UnionOperation442 = Instance.new("UnionOperation")
Weld443 = Instance.new("Weld")
Weld444 = Instance.new("Weld")
Part445 = Instance.new("Part")
UnionOperation446 = Instance.new("UnionOperation")
UnionOperation447 = Instance.new("UnionOperation")
Weld448 = Instance.new("Weld")
Weld449 = Instance.new("Weld")
Part450 = Instance.new("Part")
UnionOperation451 = Instance.new("UnionOperation")
UnionOperation452 = Instance.new("UnionOperation")
Weld453 = Instance.new("Weld")
Weld454 = Instance.new("Weld")
Part455 = Instance.new("Part")
SpecialMesh456 = Instance.new("SpecialMesh")
Decal457 = Instance.new("Decal")
UnionOperation458 = Instance.new("UnionOperation")
UnionOperation459 = Instance.new("UnionOperation")
UnionOperation460 = Instance.new("UnionOperation")
UnionOperation461 = Instance.new("UnionOperation")
Part462 = Instance.new("Part")
SpecialMesh463 = Instance.new("SpecialMesh")
Decal464 = Instance.new("Decal")
Weld465 = Instance.new("Weld")
Weld466 = Instance.new("Weld")
Weld467 = Instance.new("Weld")
Weld468 = Instance.new("Weld")
Weld469 = Instance.new("Weld")
Part470 = Instance.new("Part")
Motor6D471 = Instance.new("Motor6D")
Part472 = Instance.new("Part")
Motor6D473 = Instance.new("Motor6D")
Motor6D474 = Instance.new("Motor6D")
Motor6D475 = Instance.new("Motor6D")
Motor6D476 = Instance.new("Motor6D")
Motor6D477 = Instance.new("Motor6D")
UnionOperation478 = Instance.new("UnionOperation")
UnionOperation479 = Instance.new("UnionOperation")
UnionOperation480 = Instance.new("UnionOperation")
UnionOperation481 = Instance.new("UnionOperation")
UnionOperation482 = Instance.new("UnionOperation")
UnionOperation483 = Instance.new("UnionOperation")
UnionOperation484 = Instance.new("UnionOperation")
Weld485 = Instance.new("Weld")
Weld486 = Instance.new("Weld")
Weld487 = Instance.new("Weld")
Weld488 = Instance.new("Weld")
Weld489 = Instance.new("Weld")
Weld490 = Instance.new("Weld")
Weld491 = Instance.new("Weld")
Part492 = Instance.new("Part")
UnionOperation493 = Instance.new("UnionOperation")
UnionOperation494 = Instance.new("UnionOperation")
Weld495 = Instance.new("Weld")
Weld496 = Instance.new("Weld")
BoolValue497 = Instance.new("BoolValue")
ScreenGui498 = Instance.new("ScreenGui")
Frame499 = Instance.new("Frame")
ImageLabel500 = Instance.new("ImageLabel")
ImageLabel501 = Instance.new("ImageLabel")
Frame502 = Instance.new("Frame")
Frame503 = Instance.new("Frame")
Frame504 = Instance.new("Frame")
Frame505 = Instance.new("Frame")
ImageLabel506 = Instance.new("ImageLabel")
TextLabel507 = Instance.new("TextLabel")
ScreenGui508 = Instance.new("ScreenGui")
Frame509 = Instance.new("Frame")
TextLabel510 = Instance.new("TextLabel")
TextLabel511 = Instance.new("TextLabel")
TextLabel512 = Instance.new("TextLabel")
TextLabel513 = Instance.new("TextLabel")
TextLabel514 = Instance.new("TextLabel")
TextLabel515 = Instance.new("TextLabel")
TextLabel516 = Instance.new("TextLabel")
TextLabel517 = Instance.new("TextLabel")
TextLabel518 = Instance.new("TextLabel")
Folder0.Name = "script"
Folder0.Parent = mas
StringValue1.Name = "PLR"
StringValue1.Parent = Folder0
LocalScript2.Name = "ClientSound"
table.insert(cors,sandbox(LocalScript2,function()
local pt = script:WaitForChild("SoundParent")
local si = script:WaitForChild("SoundID")
local vo = script:WaitForChild("SoundVolume")
local pi = script:WaitForChild("SoundPitch")
local dt = script:WaitForChild("DestroyTime")
local tpo = script:WaitForChild("TimePos")

local snd = Instance.new("Sound")
snd.Parent = pt.Value
snd.SoundId = "rbxassetid://" ..si.Value
snd.Volume = vo.Value
snd.Pitch = pi.Value
snd.TimePosition = tpo.Value
snd:Play()

game:GetService("Debris"):AddItem(snd, dt.Value)
game:GetService("Debris"):AddItem(script, dt.Value)
end))
LocalScript2.Disabled = true
ObjectValue3.Name = "SoundParent"
ObjectValue3.Parent = LocalScript2
NumberValue4.Name = "SoundID"
NumberValue4.Parent = LocalScript2
NumberValue5.Name = "SoundVolume"
NumberValue5.Parent = LocalScript2
NumberValue6.Name = "SoundPitch"
NumberValue6.Parent = LocalScript2
NumberValue6.Value = 1
NumberValue7.Name = "DestroyTime"
NumberValue7.Parent = LocalScript2
NumberValue7.Value = 1
NumberValue8.Name = "TimePos"
NumberValue8.Parent = LocalScript2
LocalScript9.Name = "ColorCorrection"
table.insert(cors,sandbox(LocalScript9,function()
local StandName = script:WaitForChild("StandName")
local Player = game:GetService("Players").LocalPlayer

function TimeStopLighting()
	local Camera = workspace.CurrentCamera
	local CurrentFOV = Camera.FieldOfView
	local Humanoid = Player.Character:FindFirstChildOfClass("Humanoid")
	local TimeStopColor = Instance.new("ColorCorrectionEffect")
	TimeStopColor.Name = StandName.Value.."'s Time Stop Effect"
	TimeStopColor.Parent = game:GetService("Lighting")
	TimeStopColor.Brightness = -0.7
	TimeStopColor.Contrast = 0
	TimeStopColor.Saturation = 1
	game:GetService("Debris"):AddItem(TimeStopColor, 25)
	coroutine.resume(coroutine.create(function()
		for i = 1, 25 do
			Camera.FieldOfView = CurrentFOV+(i*2)
			Humanoid.CameraOffset = Vector3.new(math.random(-17,17)/(-i/2), math.random(-17,17)/(-i/2), math.random(-17,17)/10)
			wait()
		end
		for i = 1, 10 do
			Camera.FieldOfView = 120-(i*5)
			Humanoid.CameraOffset = Vector3.new(math.random(-25,25)/(-i), math.random(-25,25)/(-i), math.random(-12,12)/10)
			wait()
		end
		Camera.FieldOfView = CurrentFOV
		Humanoid.CameraOffset = Vector3.new(0,0,0)
	end))
	coroutine.resume(coroutine.create(function()
		for i = 1, 10 do
			TimeStopColor.Contrast = -1-(i/10)
			TimeStopColor.Brightness = TimeStopColor.Brightness +0.077
			wait(0.054)
		end
		TimeStopColor.TintColor = Color3.fromRGB(127, 127, 127)
		for i = 1, 10 do
			TimeStopColor.Contrast = -1+(i/10)
			TimeStopColor.Brightness = TimeStopColor.Brightness -0.01
			TimeStopColor.Saturation = TimeStopColor.Saturation - 0.2
			wait(0.053)
		end
	end))
end

TimeStopLighting()

while wait() do
	if game:GetService("Lighting"):FindFirstChild(StandName.Value.."'s Time Resume Effect") then
		game:GetService("Lighting")[StandName.Value.."'s Time Resume Effect"]:Destroy()
	end
end 
end))
LocalScript9.Disabled = true
StringValue10.Name = "StandName"
StringValue10.Parent = LocalScript9
LocalScript11.Name = "RemoveColorCorrection"
table.insert(cors,sandbox(LocalScript11,function()
local StandName = script:WaitForChild("StandName")

if game:GetService("Lighting"):FindFirstChild(StandName.Value.."'s Time Resume Effect") then
	game:GetService("Lighting")[StandName.Value.."'s Time Resume Effect"]:Destroy()
end

local Blur = Instance.new("BlurEffect")
Blur.Parent = game:GetService("Lighting")
Blur.Size = 0 
Blur.Name = StandName.Value.."'s Time Resume Effect"
game:GetService("Debris"):AddItem(Blur, 2.85)
coroutine.resume(coroutine.create(function()
	for i = 1, 25 do
		Blur.Size = i
		wait(0.035)
	end
	for i = 1, 25 do
		Blur.Size = Blur.Size - 1
		wait(0.015)
	end
	Blur:Destroy()
end))
while wait() do
	if game:GetService("Lighting"):FindFirstChild(StandName.Value.."'s Time Stop Effect") then
		game:GetService("Lighting")[StandName.Value.."'s Time Stop Effect"]:Destroy()
	end
	if game:GetService("Lighting"):FindFirstChild(StandName.Value.."'s Time Stop Effect 2") then
		game:GetService("Lighting")[StandName.Value.."'s Time Stop Effect 2"]:Destroy()
	end
end 
end))
LocalScript11.Disabled = true
StringValue12.Name = "StandName"
StringValue12.Parent = LocalScript11
LocalScript13.Name = "TimeResumeSounds"
table.insert(cors,sandbox(LocalScript13,function()
local StandName = script:WaitForChild("StandName").Value

for Index, Child in next, workspace:GetDescendants() do
	if Child:IsA("Sound") then
		if Child:FindFirstChild(StandName.."'s Time Stop Position") then
			Child.TimePosition = Child[StandName.."'s Time Stop Position"].Value
			Child[StandName.."'s Time Stop Position"]:Destroy()
		end
		if Child:FindFirstChild(StandName.."'s Time Stop Mute") then
			Child[StandName.."'s Time Stop Mute"]:Destroy()
		end
		if Child:FindFirstChild(StandName.."'s Time Stop Playing") then
			if Child[StandName.."'s Time Stop Playing"].Value == true then
				Child:Resume()
			end
			Child[StandName.."'s Time Stop Playing"]:Destroy()
		end
	end
end
end))
LocalScript13.Disabled = true
StringValue14.Name = "StandName"
StringValue14.Parent = LocalScript13
LocalScript15.Name = "TimeStopSounds"
table.insert(cors,sandbox(LocalScript15,function()
local Character = script:WaitForChild("Char").Value
local StandName = script:WaitForChild("StandName").Value

function IsAHumanoid(Part)
	if Part:FindFirstAncestorWhichIsA("Model") then
		if Part:FindFirstAncestorWhichIsA("Model").Name == "Stand" then
			if Part:FindFirstAncestorWhichIsA("Model"):FindFirstAncestorWhichIsA("Model"):FindFirstChildOfClass("Humanoid") then
				return Part:FindFirstAncestorWhichIsA("Model"):FindFirstAncestorWhichIsA("Model")
			else
				return nil
			end
		end
		if Part:FindFirstAncestorWhichIsA("Model"):FindFirstChildOfClass("Humanoid") then
			return Part:FindFirstAncestorWhichIsA("Model")
		else
			return nil
		end
	else
		return nil
	end
end

function AddingStopper(Child)
	Child.ChildAdded:Connect(function()
		if script then
			if Child:IsA("Sound") then
				Mute(Child)
			else
				AddingStopper(Child)
			end
		end
	end)
end

function Mute(Sound)
	local TimePositionValue = Instance.new("NumberValue")
	TimePositionValue.Value = Sound.TimePosition
	TimePositionValue.Name = StandName.."'s Time Stop Position"
	TimePositionValue.Parent = Sound
	local PlayingValue = Instance.new("BoolValue")
	PlayingValue.Value = Sound.Playing
	PlayingValue.Name = StandName.."'s Time Stop Playing"
	PlayingValue.Parent = Sound
	local SoundMute = Instance.new("TremoloSoundEffect")
	SoundMute.Name = StandName.."'s Time Stop Mute"
	SoundMute.Depth = 1
	SoundMute.Duty = 0
	SoundMute.Enabled = true
	SoundMute.Frequency = 5
	SoundMute.Priority = 9e999
	SoundMute.Parent = Sound
	Sound:Stop()
	Sound:GetPropertyChangedSignal("Playing"):Connect(function()
		if script then
			Sound:Stop()
			if Sound:FindFirstChild(StandName.."'s Time Stop Mute") == nil then
				local SoundMute = Instance.new("TremoloSoundEffect")
				SoundMute.Name = StandName.."'s Time Stop Mute"
				SoundMute.Depth = 1
				SoundMute.Duty = 0
				SoundMute.Enabled = true
				SoundMute.Frequency = 5
				SoundMute.Priority = 9e999
				SoundMute.Parent = Sound
			end
		end
	end)
	Sound.ChildAdded:Connect(function(Child)
		if script then
			if Child:IsA("Sound") then
				Mute(Child)
			else
				AddingStopper(Child)
			end
		end
	end)
end

for Index, Child in next, workspace:GetDescendants() do
	if Child:IsA("Sound") and not Child:IsDescendantOf(Character) then
		if IsAHumanoid(Child) then
			local TsChar = IsAHumanoid(Child)
			if TsChar:FindFirstChild("IsTSImmune") then
				local Value = TsChar["IsTSImmune"]
				Value:GetPropertyChangedSignal("Value"):Connect(function()
					if Value.Value == false then
						Mute(Child)
					end
				end)
			else
				Mute(Child)
			end
		else
			Mute(Child)
		end
	elseif not Child:IsA("Sound") and not Child:IsDescendantOf(Character) and not Child == Character then
		if IsAHumanoid(Child) then
			local TsChar = IsAHumanoid(Child)
			if TsChar:FindFirstChild("IsTSImmune") then
				local Value = TsChar["IsTSImmune"]
				Value:GetPropertyChangedSignal("Value"):Connect(function()
					if Value.Value == false then
						AddingStopper(Child)
					end
				end)
			else
				AddingStopper(Child)
			end
		else
			AddingStopper(Child)
		end
	end
end

workspace.DescendantAdded:Connect(function(Child)
	if Child:IsA("Sound") and not Child:IsDescendantOf(Character) then
		if IsAHumanoid(Child) then
			local TsChar = IsAHumanoid(Child)
			if TsChar:FindFirstChild("IsTSImmune") then
				local Value = TsChar["IsTSImmune"]
				Value:GetPropertyChangedSignal("Value"):Connect(function()
					if Value.Value == false then
						Mute(Child)
					end
				end)
			else
				Mute(Child)
			end
		else
			Mute(Child)
		end
	end
end)
end))
LocalScript15.Disabled = true
ObjectValue16.Name = "Char"
ObjectValue16.Parent = LocalScript15
StringValue17.Name = "StandName"
StringValue17.Parent = LocalScript15
ModuleScript18.Name = "FeModule"
table.insert(cors,sandbox(ModuleScript18,function()
wait(1/60)

local fakemouse = script:WaitForChild'StandInputClient'
fakemouse.Parent=nil;
local fakeEvent = script:WaitForChild'FakeEvent'	
fakeEvent.Parent = nil
return function()
	local fakeEvent = require(fakeEvent);
	local sc = getfenv(2).script
	if(game:service'RunService':IsServer())then
		repeat wait() until sc.Parent and (sc.Parent:IsA'PlayerGui' or sc.Parent:IsA'Model')
		local Player;
		if(sc.Parent:IsA'PlayerGui')then
			Player=sc.Parent.Parent
			sc.Parent=Player.Character
		else
			Player = game:service'Players':GetPlayerFromCharacter(sc.Parent) or game:service'Players':FindFirstChild(sc.Parent.Name)
		end
		
		local ScriptCreated = {}
		
		assert(Player and Player:IsA'Player','Make sure the script is parented to Character or PlayerGUI!')
		local event = Instance.new("RemoteEvent")
		event.Name='StandInput'
		event.Parent=Player.Character;
		local gcp = Instance.new("RemoteFunction")
		gcp.Name='GetClientProperty'..event.Name
		gcp.Parent=Player.Character;
		local loudnesses = {}
		local function GetClientProperty(inst,prop)
			if(prop == 'PlaybackLoudness' and loudnesses[inst])then 
				return loudnesses[inst] or 0
			elseif(prop == 'PlaybackLoudness')then
				return gcp:InvokeClient(Player,'RegSound',inst)
			end
			return gcp:InvokeClient(Player,inst,prop)
		end
		
		local ScriptCreated = {}
		local FakeMouse = fakemouse:Clone();
		FakeMouse.Parent = Player.Character;
		FakeMouse:WaitForChild'Remote'.Value=event
		FakeMouse.Disabled = false
		local fakes={}
		local reals = {}
		local loudnesses = {}
		
		local function object()
			local object={}
			object.__index=function(self,idx)
				local val = rawget(self,idx) or rawget(self,'real')[idx];
				if(typeof(val)=='function')then
					return function(self2,...)
						local realFunc = rawget(self,'real')[idx]==val
						if(realFunc and self2==self)then
							self2=rawget(self,'real')
						end
						return val(self2,...)
					end
				end
				return val
			end
			object.__newindex=function(self,idx,val)
				if(fakes[val])then
					rawget(self,'real')[idx]=fakes[val]
				else
					rawget(self,'real')[idx]=val;
				end
			end
			object.__type='Instance'
			object.__tostring=function(self)
				return rawget(self,'real').Name
			end
			return object;
		end
		gcp.OnServerInvoke = function(plr,inst,play)
			if plr~=Player then return end
			if(inst and typeof(inst) == 'Instance' and inst:IsA'Sound')then
				loudnesses[inst]=play	
			end
		end
		
		local function wrapObject(realobj)
			local fakeobj = {real=realobj}
			if(realobj.ClassName=='Sound')then
				local needsLoudness=false;
				local mt = object()
				setmetatable(fakeobj,{__index=function(s,i)
					if(i=='PlaybackLoudness')then
						needsLoudness=true;
						return loudnesses[realobj] or 0
					else
						return rawget(mt,'__index')(s,i)
					end
				end,
				__type='Instance',
				__tostring=function(self)
					return rawget(self,'real').Name
				end,
				__newindex=function(s,i,v)
					realobj[i]=v
				end})
				coroutine.wrap(function()
					repeat wait() until needsLoudness;
					GetClientProperty(realobj,'PlaybackLoudness')
				end)()
			elseif(realobj:IsA'TextBox')then
				ScriptCreated[realobj]=true;
				fakeobj.FocusLost=fakeEvent();
				setmetatable(fakeobj,object())
			elseif(realobj.ClassName=='ObjectValue')then
				setmetatable(fakeobj,object())
				getmetatable(fakeobj).__newindex=function(s,i,v)
					if(i=='Value' and fakes[v])then
						realobj.Value = fakes[v]
					else
						realobj[i]=v
					end
				end
			end
			
			fakes[fakeobj]=realobj
			reals[realobj]=fakeobj;
			
			return fakeobj
		end
		
		local function getReal(i)
			return fakes[i] or i
		end
		
		local fakeGame={real=game};
		local fakeInstance={new=function(objName,par)
			local realobj = Instance.new(objName)
			local fakeobj = wrapObject(realobj)
			realobj.Parent=getReal(par)
			local wrapped = getmetatable(fakeobj) and getmetatable(fakeobj).__index and true or false
			return wrapped and fakeobj or realobj
		end};
		
		local fakePlayer={};
		fakePlayer.real=Player;
		fakePlayer.mouse={
			KeyDown=fakeEvent();
			KeyUp=fakeEvent();
			Button1Down=fakeEvent();
			Button1Up=fakeEvent();
			Button2Down=fakeEvent();
			Button2Up=fakeEvent();
			Move=fakeEvent();
			X=0;
			Y=0;
			Target=nil;
			Hit=CFrame.new();
		}
		fakePlayer.GetMouse=function(self)
			return self.mouse;	
		end
		fakePlayer.PlayerScripts={}
		setmetatable(fakePlayer.PlayerScripts,object())
		getmetatable(fakePlayer.PlayerScripts).__index=function()
			return {{Disabled=true,Name="GONE"}}
		end
		local services = {
			Players={real=game:service'Players',LocalPlayer=fakePlayer,localPlayer=fakePlayer};
			UserInputService={real=game:service'UserInputService',_keys={};InputBegan=fakeEvent(),InputEnded=fakeEvent(),InputChanged=fakeEvent()};
			Debris={real=game:service'Debris',AddItem=function(self,item,timer)
				if(fakes[item])then
					item = fakes[item]
				end
				self.real:AddItem(item,timer)
			end};
			RunService={
				_bound={},
				_lastCall=tick();
				real=game:service'RunService',
				RenderStepped=game:service'RunService'.Stepped,
				BindToRenderStep=function(self,n,_,func)
					self._bound[n]=func;
				end;
				UnbindFromRenderStep=function(self,n,_,func)
					self:BindToRenderStep(n)
				end;	
			};
		}
		services.Debris.addItem=services.Debris.AddItem
		services.UserInputService.IsKeyDown=function(s,k)
			return s._keys[k] and true or false
		end
		services.UserInputService.InputBegan:connect(function(k)
			services.UserInputService._keys[k.KeyCode]=true
		end)
		services.UserInputService.InputEnded:connect(function(k)
			services.UserInputService._keys[k.KeyCode]=false
		end)

		local function getService(self,name)
			if(self==fakeGame)then
				return services[name] or game:service(name)
			end
		end
		services.RunService.RenderStepped:connect(function()
			local ct = tick();
			local lt = services.RunService._lastCall;
			local dt = ct-lt
			services.RunService._lastCall=ct;
			for name,func in next, services.RunService._bound do
				func(dt)
			end
		end)
		fakeGame.service=getService;
		fakeGame.GetService=getService;
		for i,v in next, services do 
			fakes[v]=v.real
			fakeGame[v.real.Name]=v
			setmetatable(v,object())
		end
		
		setmetatable(fakeGame,object())
		setmetatable(fakePlayer,object())
		fakes[fakeGame]=game
		fakes[fakePlayer]=Player
		
		getfenv(2).game=fakeGame
		getfenv(2).Instance=fakeInstance;
		
		getfenv(2).Wrap=wrapObject; -- lets you wrap your instances manually so that you have access to .PlaybackLoudness on sounds, etc.
		
		event.OnServerEvent:connect(function(self,data)
			local type = data.Type;
			if(data.Event)then
				local event = (type=='Mouse' and fakePlayer.mouse or type=='UserInput' and services.UserInputService or {})[data.Event]
				local eventIsFake = pcall(function()
					return event._connections~=nil
				end)
				if(event and eventIsFake)then
					event:fire(unpack(data.Args))
				end
			elseif(type=='Mouse')then
				--fakePlayer.mouse.Target=data.Target
				--fakePlayer.mouse.Hit=data.Hit
				for i,v in next, data.Variables do
					local eventIsFake = pcall(function()
						return fakePlayer.mouse[i]._connections~=nil
					end)
					if(not fakePlayer.mouse[i] or not eventIsFake)then
						fakePlayer.mouse[i]=v;
					end
				end
			elseif(type=='TextboxReplication')then
				if(ScriptCreated[data.TextBox])then
					data.TextBox.Text = data.Text
					if(reals[data.TextBox] and data.Args)then
						reals[data.TextBox].FocusLost:fire(unpack(data.Args))
					end
				end
			end
		end)
		
		print(gcp:InvokeClient(Player,'Ready'))
		repeat wait() until gcp:InvokeClient(Player,'Ready')
		return GetClientProperty;
	else
		return error("Make sure you're using a server-script!")
	end

end

end))
LocalScript19.Name = "StandInputClient"
table.insert(cors,sandbox(LocalScript19,function()
local me = game:service'Players'.localPlayer;
local pg = me:FindFirstChildOfClass'PlayerGui'
local mouse = me:GetMouse();
local UIS = game:service'UserInputService'
local ch = me.Character;

local sentMouseData = {}

local UserEvent = (function()
	local Ret;
	repeat wait() Ret = script:WaitForChild'Remote'.Value until Ret
	return Ret
end)()
UIS.InputChanged:connect(function(io,gpe)
	if(gpe)then return end
	local fakeIo = {KeyCode=io.KeyCode,UserInputType=io.UserInputType,Delta=io.Delta,Position=io.Position,UserInputState=io.UserInputState}
	UserEvent:FireServer{Type='UserInput',Event='InputChanged',Args={fakeIo,gpe and true or false}}
end)


UIS.InputBegan:connect(function(io,gpe)
	if(gpe)then return end
	local fakeIo = {KeyCode=io.KeyCode,UserInputType=io.UserInputType,Delta=io.Delta,Position=io.Position,UserInputState=io.UserInputState}
	UserEvent:FireServer{Type='UserInput',Event='InputBegan',Args={fakeIo,gpe and true or false}}
end)

UIS.InputEnded:connect(function(io,gpe)
	if(gpe)then return end
	local fakeIo = {KeyCode=io.KeyCode,UserInputType=io.UserInputType,Delta=io.Delta,Position=io.Position,UserInputState=io.UserInputState}
	UserEvent:FireServer{Type='UserInput',Event='InputEnded',Args={fakeIo,gpe and true or false}}
end)

mouse.KeyDown:connect(function(k)
	UserEvent:FireServer{Type='Mouse',Event='KeyDown',Args={k}}
end)

mouse.KeyUp:connect(function(k)
	UserEvent:FireServer{Type='Mouse',Event='KeyUp',Args={k}}
end)

mouse.Button1Down:connect(function()
	UserEvent:FireServer{Type='Mouse',Event='Button1Down',Args={}}
end)

mouse.Button1Up:connect(function()
	UserEvent:FireServer{Type='Mouse',Event='Button1Up',Args={}}
end)

mouse.Button2Down:connect(function()
	UserEvent:FireServer{Type='Mouse',Event='Button2Down',Args={}}
end)

mouse.Button2Up:connect(function()
	UserEvent:FireServer{Type='Mouse',Event='Button2Up',Args={}}
end)

UIS.TextBoxFocusReleased:connect(function(inst)
	UserEvent:FireServer{Type='TextboxReplication',TextBox=inst,Text=inst.Text}
end)


local ClientProp = ch:WaitForChild('GetClientProperty'..UserEvent.Name,30)
local sounds = {}

function regSound(o)
	if(o:IsA'Sound')then
		local lastLoudness = o.PlaybackLoudness
		ClientProp:InvokeServer(o,lastLoudness)
		table.insert(sounds,{o,lastLoudness})
		--ClientProp:FireServer(o,o.PlaybackLoudness)
	end
end

ClientProp.OnClientInvoke = function(inst,prop)
	if(inst == 'RegSound')then
		regSound(prop)
		for i = 1, #sounds do
			 if(sounds[i][1] == prop)then 
				return sounds[i][2]
			end 
		end 
	elseif(inst=='Ready')then
		return true
	elseif(inst=='Camera')then
		return workspace.CurrentCamera[prop]
	else
		return inst[prop]
	end
end


function matching(a,b)
	for i,v in next, a do
		if(b[i]~=v)then
			return false;
		end
	end
	for i,v in next, b do
		if(a[i]~=v)then
			return false;
		end
	end
	return true;
end

coroutine.wrap(function()
	while true do
		local data = {Target=mouse.Target,Hit=mouse.Hit,X=mouse.X,Y=mouse.Y}
		--if(sentMouseData.Target~=data.Target or sentMouseData.Hit~=data.Hit)then
		if(not matching(sentMouseData,data))then
			sentMouseData=data
			UserEvent:FireServer({Type='Mouse',Variables=sentMouseData})
		end
		game:service'RunService'.RenderStepped:Wait()
	end	
end)()

game:service'RunService'.RenderStepped:connect(function()
	for i = 1, #sounds do
		local tab = sounds[i]
		local object,last=unpack(tab)
		if(object.PlaybackLoudness ~= last)then
			sounds[i][2]=object.PlaybackLoudness
			ClientProp:InvokeServer(object,sounds[i][2])
		end
	end
end)

for _,v in next, workspace:GetDescendants() do regSound(v) end
workspace.DescendantAdded:connect(regSound)
me.Character.DescendantAdded:connect(regSound)


end))
LocalScript19.Disabled = true
ObjectValue20.Name = "Remote"
ObjectValue20.Parent = LocalScript19
ModuleScript21.Name = "FakeEvent"
table.insert(cors,sandbox(ModuleScript21,function()
local signal = require(script:WaitForChild'ScriptConnection').new

local fakeEvent = {}

function fakeEvent.new()
	local conn = {
		_connections={};
	}
	
	setmetatable(conn,{__index=fakeEvent})
	
	return conn;
end

function fakeEvent:fire(...)
	for i = 1,#self._connections do
		local connection = self._connections[i]
		connection.Function(#connection.Args>0 and unpack(connection.Args) or ...)
	end	
end

function fakeEvent:connect(func,...)
	local obj = signal(self,func,...)
	table.insert(self._connections,obj)
	return obj
end

fakeEvent.Fire=fakeEvent.fire;
fakeEvent.Connect=fakeEvent.connect;

setmetatable(fakeEvent,{__call=fakeEvent.new})
return fakeEvent;
end))
ModuleScript22.Name = "ScriptConnection"
table.insert(cors,sandbox(ModuleScript22,function()
local ScriptConnection = {}

function ScriptConnection.new(event,func,...)
	local connObj = newproxy(true)
	local conn = {
		Event=event;
		Function=func;
		Args={...};
		Object=connObj;
	}
	getmetatable(connObj).__index=function(self,index)
		if(index=='Locked')then
			return nil;
		else
			return conn[index] or ScriptConnection[index]
		end
	end
	getmetatable(connObj).__newindex=function(self,index,value)
		if(index=='Locked' and getfenv(2).script==script)then
			conn.Locked=value
		elseif(index~='Locked')then
			conn[index]=value
		end
	end
	
	return connObj;
end

function ScriptConnection:disconnect()
	self.Event._connections[self]=nil;
end

function ScriptConnection:Lock(key)
	self.Locked=key;
end

function ScriptConnection:Unlock(key)
	if(self.Locked==key)then
		self.Locked=nil;
	else
		error("Invalid key!",2)
	end
end


ScriptConnection.Disconnect=ScriptConnection.disconnect;

setmetatable(ScriptConnection,{__call=function(s,...)ScriptConnection.new(...) end})
return ScriptConnection;
end))
Model23.Name = "RoadRoller"
Model23.Parent = Folder0
Model23.PrimaryPart = Part105
Part24.Parent = Model23
Part24.CFrame = CFrame.new(30.3140545, 13.6477461, 69.7250519, 0.500000238, 9.89999971e-05, -0.866025388, 0.866025388, 0, 0.500000238, 4.95000204e-05, -1, -8.57365085e-05)
Part24.Orientation = Vector3.new(-30, -90.01000213623047, 90)
Part24.Position = Vector3.new(30.314054489135742, 13.647746086120605, 69.72505187988281)
Part24.Rotation = Vector3.new(-90.01000213623047, -60, -0.009999999776482582)
Part24.Color = Color3.new(1, 0.690196, 0)
Part24.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part24.BrickColor = BrickColor.new("Deep orange")
Part24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part24.brickColor = BrickColor.new("Deep orange")
Part24.FormFactor = Enum.FormFactor.Custom
Part24.formFactor = Enum.FormFactor.Custom
Part25.Parent = Model23
Part25.CFrame = CFrame.new(20.6022472, 19.200634, 77.2062073, -0.0152346212, -0.172979429, -0.98480767, 0.0858299956, 0.981060326, -0.173648968, 0.996193409, -0.0871715099, -9.92598434e-05)
Part25.Orientation = Vector3.new(10, -90.01000213623047, 5)
Part25.Position = Vector3.new(20.60224723815918, 19.200634002685547, 77.20620727539062)
Part25.Rotation = Vector3.new(90.02999877929688, -80, 95.02999877929688)
Part25.Size = Vector3.new(0.25684136152267456, 0.8186820149421692, 0.6421034932136536)
Part25.Material = Enum.Material.SmoothPlastic
Part25.FormFactor = Enum.FormFactor.Custom
Part25.formFactor = Enum.FormFactor.Custom
CylinderMesh26.Parent = Part25
Part27.Parent = Model23
Part27.CFrame = CFrame.new(29.2830734, 13.2210426, 69.7249527, -0.965925872, 9.89999971e-05, -0.258818984, 0.258818984, 0, -0.965925872, -9.56266595e-05, -1, -2.56230778e-05)
Part27.Orientation = Vector3.new(75, -90.01000213623047, 90)
Part27.Position = Vector3.new(29.28307342529297, 13.22104263305664, 69.7249526977539)
Part27.Rotation = Vector3.new(90, -15, -179.99000549316406)
Part27.Color = Color3.new(1, 0.690196, 0)
Part27.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part27.BrickColor = BrickColor.new("Deep orange")
Part27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part27.brickColor = BrickColor.new("Deep orange")
Part27.FormFactor = Enum.FormFactor.Custom
Part27.formFactor = Enum.FormFactor.Custom
MeshPart28.Name = "EnhancedCone"
MeshPart28.Parent = Model23
MeshPart28.CFrame = CFrame.new(27.5167789, 15.805418, 76.6898117, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
MeshPart28.Orientation = Vector3.new(0, -0.009999999776482582, 0)
MeshPart28.Position = Vector3.new(27.51677894592285, 15.805418014526367, 76.68981170654297)
MeshPart28.Rotation = Vector3.new(0, -0.009999999776482582, 0)
MeshPart28.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MeshPart28.Size = Vector3.new(0.35000079870224, 0.5500007271766663, 0.40000081062316895)
MeshPart28.BrickColor = BrickColor.new("Really black")
MeshPart28.brickColor = BrickColor.new("Really black")
MeshPart29.Parent = Model23
MeshPart29.CFrame = CFrame.new(18.2645035, 13.8607292, 68.5482559, 0.00249704532, 0.171011984, 0.985265851, -0.0301530007, -0.984808028, 0.17100893, 0.999542236, -0.0301357359, 0.00269741379)
MeshPart29.Orientation = Vector3.new(-9.850000381469727, 89.83999633789062, -178.25)
MeshPart29.Position = Vector3.new(18.264503479003906, 13.860729217529297, 68.54825592041016)
MeshPart29.Rotation = Vector3.new(-89.0999984741211, 80.1500015258789, -89.16000366210938)
MeshPart29.Color = Color3.new(1, 0.690196, 0)
MeshPart29.Size = Vector3.new(0.34999993443489075, 2.0000007152557373, 0.9500000476837158)
MeshPart29.BrickColor = BrickColor.new("Deep orange")
MeshPart29.brickColor = BrickColor.new("Deep orange")
Part30.Parent = Model23
Part30.CFrame = CFrame.new(20.5935764, 19.2121887, 70.3939514, -0.0150343729, -0.17299667, 0.98480773, 0.085830979, 0.981060266, 0.1736487, -0.99619627, 0.0871377066, 9.88475513e-05)
Part30.Orientation = Vector3.new(-10, 89.98999786376953, 5)
Part30.Position = Vector3.new(20.593576431274414, 19.212188720703125, 70.39395141601562)
Part30.Rotation = Vector3.new(-89.97000122070312, 80, 94.97000122070312)
Part30.Size = Vector3.new(0.25684136152267456, 0.8186820149421692, 0.6421034932136536)
Part30.Material = Enum.Material.SmoothPlastic
Part30.FormFactor = Enum.FormFactor.Custom
Part30.formFactor = Enum.FormFactor.Custom
CylinderMesh31.Parent = Part30
Part32.Parent = Model23
Part32.CFrame = CFrame.new(29.3515053, 12.7260017, 78.8249435, -0.866025388, 9.89999971e-05, 0.500000238, -0.500000238, 0, -0.866025388, -8.57365085e-05, -1, 4.95000204e-05)
Part32.Orientation = Vector3.new(60, 89.98999786376953, -90)
Part32.Position = Vector3.new(29.351505279541016, 12.726001739501953, 78.82494354248047)
Part32.Rotation = Vector3.new(90, 30, -179.99000549316406)
Part32.Color = Color3.new(1, 0.690196, 0)
Part32.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part32.BrickColor = BrickColor.new("Deep orange")
Part32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part32.brickColor = BrickColor.new("Deep orange")
Part32.FormFactor = Enum.FormFactor.Custom
Part32.formFactor = Enum.FormFactor.Custom
MeshPart33.Parent = Model23
MeshPart33.CFrame = CFrame.new(19.2443848, 14.0653858, 78.9584122, -0.00249904511, 0.171012938, -0.985265613, 0.030152997, -0.984807789, -0.171009958, -0.999542117, -0.030136073, -0.00269547361)
MeshPart33.Orientation = Vector3.new(9.850000381469727, -90.16000366210938, 178.25)
MeshPart33.Position = Vector3.new(19.244384765625, 14.065385818481445, 78.95841217041016)
MeshPart33.Rotation = Vector3.new(90.9000015258789, -80.1500015258789, -90.83999633789062)
MeshPart33.Color = Color3.new(1, 0.690196, 0)
MeshPart33.Size = Vector3.new(0.3299998939037323, 2.0000007152557373, 0.9500000476837158)
MeshPart33.BrickColor = BrickColor.new("Deep orange")
MeshPart33.brickColor = BrickColor.new("Deep orange")
MeshPart34.Parent = Model23
MeshPart34.CFrame = CFrame.new(18.3155918, 13.9016171, 78.9430847, 0.00249704532, 0.171011984, 0.985265851, -0.0301530007, -0.984808028, 0.17100893, 0.999542236, -0.0301357359, 0.00269741379)
MeshPart34.Orientation = Vector3.new(-9.850000381469727, 89.83999633789062, -178.25)
MeshPart34.Position = Vector3.new(18.31559181213379, 13.901617050170898, 78.94308471679688)
MeshPart34.Rotation = Vector3.new(-89.0999984741211, 80.1500015258789, -89.16000366210938)
MeshPart34.Color = Color3.new(1, 0.690196, 0)
MeshPart34.Size = Vector3.new(0.34999993443489075, 2.0000007152557373, 0.9500000476837158)
MeshPart34.BrickColor = BrickColor.new("Deep orange")
MeshPart34.brickColor = BrickColor.new("Deep orange")
Part35.Parent = Model23
Part35.CFrame = CFrame.new(17.7888756, 18.7243309, 76.1928177, -0.99619478, -0.0871549696, 9.89999971e-05, -0.087154977, 0.99619478, 0, -9.86232772e-05, -8.62834167e-06, -1)
Part35.Orientation = Vector3.new(0, 179.99000549316406, -5)
Part35.Position = Vector3.new(17.788875579833984, 18.72433090209961, 76.19281768798828)
Part35.Rotation = Vector3.new(-180, 0.009999999776482582, 175)
Part35.Size = Vector3.new(0.25684136152267456, 0.8186820149421692, 0.6421034932136536)
Part35.Material = Enum.Material.SmoothPlastic
Part35.FormFactor = Enum.FormFactor.Custom
Part35.formFactor = Enum.FormFactor.Custom
CylinderMesh36.Parent = Part35
MeshPart37.Parent = Model23
MeshPart37.CFrame = CFrame.new(19.2093735, 14.0050621, 68.5415497, -0.00249904511, 0.171012938, -0.985265613, 0.030152997, -0.984807789, -0.171009958, -0.999542117, -0.030136073, -0.00269547361)
MeshPart37.Orientation = Vector3.new(9.850000381469727, -90.16000366210938, 178.25)
MeshPart37.Position = Vector3.new(19.209373474121094, 14.005062103271484, 68.54154968261719)
MeshPart37.Rotation = Vector3.new(90.9000015258789, -80.1500015258789, -90.83999633789062)
MeshPart37.Color = Color3.new(1, 0.690196, 0)
MeshPart37.Size = Vector3.new(0.3299998939037323, 2.0000007152557373, 0.9500000476837158)
MeshPart37.BrickColor = BrickColor.new("Deep orange")
MeshPart37.brickColor = BrickColor.new("Deep orange")
Part38.Parent = Model23
Part38.CFrame = CFrame.new(22.7446995, 15.3654461, 72.5418243, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part38.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part38.Position = Vector3.new(22.744699478149414, 15.365446090698242, 72.54182434082031)
Part38.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part38.Color = Color3.new(1, 0.690196, 0)
Part38.Size = Vector3.new(0.9750000238418579, 0.6000000238418579, 0.47499990463256836)
Part38.BottomSurface = Enum.SurfaceType.Smooth
Part38.BrickColor = BrickColor.new("Deep orange")
Part38.TopSurface = Enum.SurfaceType.Smooth
Part38.brickColor = BrickColor.new("Deep orange")
Part39.Parent = Model23
Part39.CFrame = CFrame.new(27.4338245, 15.7256384, 73.6123047, -0.500000238, -0.866025388, -9.89999971e-05, 0.866025388, -0.500000238, 0, -4.95000204e-05, -8.57365085e-05, 1)
Part39.Orientation = Vector3.new(0, -0.009999999776482582, 120)
Part39.Position = Vector3.new(27.43382453918457, 15.725638389587402, 73.6123046875)
Part39.Rotation = Vector3.new(0, -0.009999999776482582, 120)
Part39.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part39.Size = Vector3.new(2.349998712539673, 0.17500001192092896, 0.17499996721744537)
Part39.BottomSurface = Enum.SurfaceType.Smooth
Part39.BrickColor = BrickColor.new("Institutional white")
Part39.TopSurface = Enum.SurfaceType.Smooth
Part39.brickColor = BrickColor.new("Institutional white")
Part39.Shape = Enum.PartType.Cylinder
Part40.Parent = Model23
Part40.CFrame = CFrame.new(18.6412487, 18.2644634, 73.701149, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part40.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part40.Position = Vector3.new(18.64124870300293, 18.264463424682617, 73.7011489868164)
Part40.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part40.Color = Color3.new(1, 0.690196, 0)
Part40.Size = Vector3.new(3.2900006771087646, 0.2600001394748688, 2)
Part40.BottomSurface = Enum.SurfaceType.Smooth
Part40.BrickColor = BrickColor.new("Deep orange")
Part40.TopSurface = Enum.SurfaceType.Smooth
Part40.brickColor = BrickColor.new("Deep orange")
Part41.Parent = Model23
Part41.CFrame = CFrame.new(30.6820049, 15.6654587, 74.330162, 9.89999971e-05, 0, 1, 0, 1, 0, -1, 0, 9.89999971e-05)
Part41.Orientation = Vector3.new(0, 89.98999786376953, 0)
Part41.Position = Vector3.new(30.682004928588867, 15.665458679199219, 74.33016204833984)
Part41.Rotation = Vector3.new(0, 90, 0)
Part41.Color = Color3.new(1, 0.690196, 0)
Part41.Size = Vector3.new(9.499996185302734, 0.24999992549419403, 0.5000000596046448)
Part41.BottomSurface = Enum.SurfaceType.Smooth
Part41.BrickColor = BrickColor.new("Deep orange")
Part41.TopSurface = Enum.SurfaceType.Smooth
Part41.brickColor = BrickColor.new("Deep orange")
Part41.Shape = Enum.PartType.Cylinder
Part42.Parent = Model23
Part42.CFrame = CFrame.new(19.3259697, 17.6154327, 73.754921, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part42.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part42.Position = Vector3.new(19.325969696044922, 17.615432739257812, 73.75492095947266)
Part42.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part42.Color = Color3.new(1, 0.690196, 0)
Part42.Size = Vector3.new(1.350000023841858, 0.6499999165534973, 8.25)
Part42.BottomSurface = Enum.SurfaceType.Smooth
Part42.BrickColor = BrickColor.new("Deep orange")
Part42.TopSurface = Enum.SurfaceType.Smooth
Part42.brickColor = BrickColor.new("Deep orange")
Part43.Parent = Model23
Part43.CFrame = CFrame.new(18.3903389, 16.0060768, 68.579834, 0.984807491, 0.17364791, 9.89999971e-05, 0.17364791, -0.984807491, 0, 9.74959403e-05, 1.71911433e-05, -1)
Part43.Orientation = Vector3.new(0, 179.99000549316406, 170)
Part43.Position = Vector3.new(18.390338897705078, 16.00607681274414, 68.579833984375)
Part43.Rotation = Vector3.new(-180, 0.009999999776482582, -10)
Part43.Color = Color3.new(1, 0.690196, 0)
Part43.Size = Vector3.new(1.9000002145767212, 2.350001573562622, 0.3499998152256012)
Part43.BottomSurface = Enum.SurfaceType.Smooth
Part43.BrickColor = BrickColor.new("Deep orange")
Part43.TopSurface = Enum.SurfaceType.Smooth
Part43.brickColor = BrickColor.new("Deep orange")
Part44.Parent = Model23
Part44.CFrame = CFrame.new(31.0820103, 15.6654739, 74.3301544, 9.89999971e-05, 0, 1, 0, 1, 0, -1, 0, 9.89999971e-05)
Part44.Orientation = Vector3.new(0, 89.98999786376953, 0)
Part44.Position = Vector3.new(31.08201026916504, 15.665473937988281, 74.33015441894531)
Part44.Rotation = Vector3.new(0, 90, 0)
Part44.Color = Color3.new(1, 0.690196, 0)
Part44.Size = Vector3.new(9.499999046325684, 0.24999992549419403, 0.5000000596046448)
Part44.BottomSurface = Enum.SurfaceType.Smooth
Part44.BrickColor = BrickColor.new("Deep orange")
Part44.TopSurface = Enum.SurfaceType.Smooth
Part44.brickColor = BrickColor.new("Deep orange")
Part44.Shape = Enum.PartType.Cylinder
Part45.Parent = Model23
Part45.CFrame = CFrame.new(18.242672, 16.9941483, 73.6798248, 0.984807789, 9.89999971e-05, -0.173647955, 0.173647955, 0, 0.984807789, 9.74959694e-05, -1, -1.7191147e-05)
Part45.Orientation = Vector3.new(-80, -90.01000213623047, 90)
Part45.Position = Vector3.new(18.242671966552734, 16.99414825439453, 73.67982482910156)
Part45.Rotation = Vector3.new(-90, -10, -0.009999999776482582)
Part45.Color = Color3.new(1, 0.690196, 0)
Part45.Size = Vector3.new(1.9000002145767212, 10.300002098083496, 0.3499998152256012)
Part45.BottomSurface = Enum.SurfaceType.Smooth
Part45.BrickColor = BrickColor.new("Deep orange")
Part45.TopSurface = Enum.SurfaceType.Smooth
Part45.brickColor = BrickColor.new("Deep orange")
Part46.Parent = Model23
Part46.CFrame = CFrame.new(31.610569, 16.0144806, 71.5747223, -0.891006887, -0.453989953, -9.89999971e-05, 0.453989953, -0.891006887, 0, -8.82096792e-05, -4.49450054e-05, 1)
Part46.Orientation = Vector3.new(0, -0.009999999776482582, 153)
Part46.Position = Vector3.new(31.61056900024414, 16.014480590820312, 71.57472229003906)
Part46.Rotation = Vector3.new(0, -0.009999999776482582, 153)
Part46.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part46.Size = Vector3.new(1.4991408586502075, 0.055523697286844254, 0.9439031481742859)
Part46.BottomSurface = Enum.SurfaceType.Smooth
Part46.BrickColor = BrickColor.new("Really black")
Part46.TopSurface = Enum.SurfaceType.Smooth
Part46.brickColor = BrickColor.new("Really black")
Part47.Parent = Model23
Part47.CFrame = CFrame.new(28.4570255, 15.7838306, 74.2167206, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part47.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part47.Position = Vector3.new(28.4570255279541, 15.783830642700195, 74.21672058105469)
Part47.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part47.Color = Color3.new(1, 0.690196, 0)
Part47.Size = Vector3.new(0.4499998688697815, 0.4868418574333191, 8.973690032958984)
Part47.BottomSurface = Enum.SurfaceType.Smooth
Part47.BrickColor = BrickColor.new("Deep orange")
Part47.TopSurface = Enum.SurfaceType.Smooth
Part47.brickColor = BrickColor.new("Deep orange")
Part48.Parent = Model23
Part48.CFrame = CFrame.new(18.8309898, 13.8504114, 73.7098694, 9.89999971e-05, 0, 1, 0, 1, 0, -1, 0, 9.89999971e-05)
Part48.Orientation = Vector3.new(0, 89.98999786376953, 0)
Part48.Position = Vector3.new(18.830989837646484, 13.850411415100098, 73.70986938476562)
Part48.Rotation = Vector3.new(0, 90, 0)
Part48.Size = Vector3.new(9, 6.71999979019165, 5.919999122619629)
Part48.BottomSurface = Enum.SurfaceType.Smooth
Part48.TopSurface = Enum.SurfaceType.Smooth
Part48.Shape = Enum.PartType.Cylinder
Part49.Parent = Model23
Part49.CFrame = CFrame.new(19.5108986, 19.7098198, 76.1886978, -0.984808028, -9.89999971e-05, -0.173647001, -0.173647001, 0, 0.984808028, -9.74959912e-05, 1, -1.71910524e-05)
Part49.Orientation = Vector3.new(-80, -90.01000213623047, -90)
Part49.Position = Vector3.new(19.51089859008789, 19.709819793701172, 76.1886978149414)
Part49.Rotation = Vector3.new(-90, -10, 179.99000549316406)
Part49.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part49.Size = Vector3.new(1.914670467376709, 0.34666702151298523, 0.25999993085861206)
Part49.BottomSurface = Enum.SurfaceType.Smooth
Part49.BrickColor = BrickColor.new("Fossil")
Part49.TopSurface = Enum.SurfaceType.Smooth
Part49.brickColor = BrickColor.new("Fossil")
Part49.Shape = Enum.PartType.Cylinder
Part50.Parent = Model23
Part50.CFrame = CFrame.new(23.9318657, 13.4654093, 75.7544479, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part50.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part50.Position = Vector3.new(23.931865692138672, 13.465409278869629, 75.75444793701172)
Part50.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part50.Color = Color3.new(1, 0.690196, 0)
Part50.Size = Vector3.new(3.2499992847442627, 2.549999952316284, 0.9000000953674316)
Part50.BottomSurface = Enum.SurfaceType.Smooth
Part50.BrickColor = BrickColor.new("Deep orange")
Part50.TopSurface = Enum.SurfaceType.Smooth
Part50.brickColor = BrickColor.new("Deep orange")
Part51.Parent = Model23
Part51.CFrame = CFrame.new(20.8775311, 17.5437202, 70.3634415, 0.173647955, 0.984807789, -9.89999971e-05, -0.984807789, 0.173647955, 0, 1.7191147e-05, 9.74959694e-05, 1)
Part51.Orientation = Vector3.new(0, -0.009999999776482582, -80)
Part51.Position = Vector3.new(20.877531051635742, 17.543720245361328, 70.36344146728516)
Part51.Rotation = Vector3.new(0, -0.009999999776482582, -80)
Part51.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part51.Size = Vector3.new(2.76466703414917, 0.34666702151298523, 0.25999993085861206)
Part51.BottomSurface = Enum.SurfaceType.Smooth
Part51.BrickColor = BrickColor.new("Fossil")
Part51.TopSurface = Enum.SurfaceType.Smooth
Part51.brickColor = BrickColor.new("Fossil")
Part51.Shape = Enum.PartType.Cylinder
Part52.Parent = Model23
Part52.CFrame = CFrame.new(21.4269905, 17.0212803, 73.7853546, -9.89999971e-05, 0.965925336, 0.2588211, 0, -0.2588211, 0.965925336, 1, 9.56266085e-05, 2.56232888e-05)
Part52.Orientation = Vector3.new(-75, 89.98999786376953, 180)
Part52.Position = Vector3.new(21.426990509033203, 17.02128028869629, 73.78535461425781)
Part52.Rotation = Vector3.new(-90, 15, -90.01000213623047)
Part52.Color = Color3.new(1, 0.690196, 0)
Part52.Size = Vector3.new(6.910476207733154, 0.05552372708916664, 0.16657127439975739)
Part52.BottomSurface = Enum.SurfaceType.Smooth
Part52.BrickColor = BrickColor.new("Deep orange")
Part52.TopSurface = Enum.SurfaceType.Smooth
Part52.brickColor = BrickColor.new("Deep orange")
Part53.Parent = Model23
Part53.CFrame = CFrame.new(18.6260014, 17.3154087, 73.7798462, -9.89999971e-05, 0, -1, 0, 1, 0, 1, 0, -9.89999971e-05)
Part53.Orientation = Vector3.new(0, -90.01000213623047, 0)
Part53.Position = Vector3.new(18.626001358032227, 17.31540870666504, 73.77984619140625)
Part53.Rotation = Vector3.new(0, -90, 0)
Part53.Color = Color3.new(1, 0.690196, 0)
Part53.Size = Vector3.new(7.500000476837158, 1.5499998331069946, 3.6500000953674316)
Part53.BottomSurface = Enum.SurfaceType.Smooth
Part53.BrickColor = BrickColor.new("Deep orange")
Part53.TopSurface = Enum.SurfaceType.Smooth
Part53.brickColor = BrickColor.new("Deep orange")
Part54.Parent = Model23
Part54.CFrame = CFrame.new(18.6062412, 17.5544891, 71.3398438, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part54.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part54.Position = Vector3.new(18.60624122619629, 17.554489135742188, 71.33984375)
Part54.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part54.Color = Color3.new(1, 0.690196, 0)
Part54.Size = Vector3.new(3.2900006771087646, 0.2600001394748688, 2)
Part54.BottomSurface = Enum.SurfaceType.Smooth
Part54.BrickColor = BrickColor.new("Deep orange")
Part54.TopSurface = Enum.SurfaceType.Smooth
Part54.brickColor = BrickColor.new("Deep orange")
Part55.Parent = Model23
Part55.CFrame = CFrame.new(31.6596146, 16.1106644, 71.1323013, -0.891006887, -0.453989953, -9.89999971e-05, 0.453989953, -0.891006887, 0, -8.82096792e-05, -4.49450054e-05, 1)
Part55.Orientation = Vector3.new(0, -0.009999999776482582, 153)
Part55.Position = Vector3.new(31.65961456298828, 16.11066436767578, 71.1323013305664)
Part55.Rotation = Vector3.new(0, -0.009999999776482582, 153)
Part55.Color = Color3.new(1, 0.690196, 0)
Part55.Size = Vector3.new(1.7212358713150024, 0.05552372708916664, 0.16657127439975739)
Part55.BottomSurface = Enum.SurfaceType.Smooth
Part55.BrickColor = BrickColor.new("Deep orange")
Part55.TopSurface = Enum.SurfaceType.Smooth
Part55.brickColor = BrickColor.new("Deep orange")
Part56.Parent = Model23
Part56.CFrame = CFrame.new(31.6599846, 16.1115913, 72.1299667, -0.891006887, -0.453989953, -9.89999971e-05, 0.453989953, -0.891006887, 0, -8.82096792e-05, -4.49450054e-05, 1)
Part56.Orientation = Vector3.new(0, -0.009999999776482582, 153)
Part56.Position = Vector3.new(31.659984588623047, 16.111591339111328, 72.12996673583984)
Part56.Rotation = Vector3.new(0, -0.009999999776482582, 153)
Part56.Color = Color3.new(1, 0.690196, 0)
Part56.Size = Vector3.new(1.7212358713150024, 0.05552372708916664, 0.16657127439975739)
Part56.BottomSurface = Enum.SurfaceType.Smooth
Part56.BrickColor = BrickColor.new("Deep orange")
Part56.TopSurface = Enum.SurfaceType.Smooth
Part56.brickColor = BrickColor.new("Deep orange")
Part57.Parent = Model23
Part57.CFrame = CFrame.new(23.9142933, 13.497406, 71.5144577, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part57.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part57.Position = Vector3.new(23.91429328918457, 13.497406005859375, 71.51445770263672)
Part57.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part57.Color = Color3.new(1, 0.690196, 0)
Part57.Size = Vector3.new(2.8149986267089844, 2.0349998474121094, 0.8600000739097595)
Part57.BottomSurface = Enum.SurfaceType.Smooth
Part57.BrickColor = BrickColor.new("Deep orange")
Part57.TopSurface = Enum.SurfaceType.Smooth
Part57.brickColor = BrickColor.new("Deep orange")
Part58.Parent = Model23
Part58.CFrame = CFrame.new(18.2052746, 18.8097153, 71.4176102, -0.99619478, -0.0871549696, 9.89999971e-05, -0.087154977, 0.99619478, 0, -9.86232772e-05, -8.62834167e-06, -1)
Part58.Orientation = Vector3.new(0, 179.99000549316406, -5)
Part58.Position = Vector3.new(18.20527458190918, 18.809715270996094, 71.41761016845703)
Part58.Rotation = Vector3.new(-180, 0.009999999776482582, 175)
Part58.Size = Vector3.new(0.25684136152267456, 0.8186820149421692, 0.6421034932136536)
Part58.Material = Enum.Material.SmoothPlastic
Part58.FormFactor = Enum.FormFactor.Custom
Part58.formFactor = Enum.FormFactor.Custom
CylinderMesh59.Parent = Part58
Part60.Parent = Model23
Part60.CFrame = CFrame.new(18.6409874, 17.5544891, 76.3498459, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part60.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part60.Position = Vector3.new(18.640987396240234, 17.554489135742188, 76.34984588623047)
Part60.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part60.Color = Color3.new(1, 0.690196, 0)
Part60.Size = Vector3.new(3.2900006771087646, 0.2600001394748688, 2)
Part60.BottomSurface = Enum.SurfaceType.Smooth
Part60.BrickColor = BrickColor.new("Deep orange")
Part60.TopSurface = Enum.SurfaceType.Smooth
Part60.brickColor = BrickColor.new("Deep orange")
Part61.Parent = Model23
Part61.CFrame = CFrame.new(27.2273293, 16.323307, 71.1798172, -0.500000238, -0.866025388, -9.89999971e-05, 0.866025388, -0.500000238, 0, -4.95000204e-05, -8.57365085e-05, 1)
Part61.Orientation = Vector3.new(0, -0.009999999776482582, 120)
Part61.Position = Vector3.new(27.22732925415039, 16.323307037353516, 71.17981719970703)
Part61.Rotation = Vector3.new(0, -0.009999999776482582, 120)
Part61.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part61.Size = Vector3.new(1.0749998092651367, 0.14999999105930328, 0.14999984204769135)
Part61.BottomSurface = Enum.SurfaceType.Smooth
Part61.BrickColor = BrickColor.new("Institutional white")
Part61.TopSurface = Enum.SurfaceType.Smooth
Part61.brickColor = BrickColor.new("Institutional white")
Part61.Shape = Enum.PartType.Cylinder
Part62.Parent = Model23
Part62.CFrame = CFrame.new(18.1802807, 17.54809, 73.7052841, -0.173647955, -9.89999971e-05, 0.984807789, 0.984807789, 0, 0.173647955, -1.7191147e-05, 1, 9.74959694e-05)
Part62.Orientation = Vector3.new(-10, 89.98999786376953, 90)
Part62.Position = Vector3.new(18.180280685424805, 17.5480899810791, 73.70528411865234)
Part62.Rotation = Vector3.new(-89.97000122070312, 80, 179.97000122070312)
Part62.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part62.Size = Vector3.new(1.7646698951721191, 0.34666702151298523, 0.25999993085861206)
Part62.BottomSurface = Enum.SurfaceType.Smooth
Part62.BrickColor = BrickColor.new("Fossil")
Part62.TopSurface = Enum.SurfaceType.Smooth
Part62.brickColor = BrickColor.new("Fossil")
Part62.Shape = Enum.PartType.Cylinder
Part63.Parent = Model23
Part63.CFrame = CFrame.new(17.9961548, 18.7723007, 73.7193222, -0.99619478, -0.0871549696, 9.89999971e-05, -0.087154977, 0.99619478, 0, -9.86232772e-05, -8.62834167e-06, -1)
Part63.Orientation = Vector3.new(0, 179.99000549316406, -5)
Part63.Position = Vector3.new(17.99615478515625, 18.772300720214844, 73.71932220458984)
Part63.Rotation = Vector3.new(-180, 0.009999999776482582, 175)
Part63.Size = Vector3.new(0.25684136152267456, 0.8186820149421692, 0.6421034932136536)
Part63.Material = Enum.Material.SmoothPlastic
Part63.FormFactor = Enum.FormFactor.Custom
Part63.formFactor = Enum.FormFactor.Custom
CylinderMesh64.Parent = Part63
Part65.Parent = Model23
Part65.CFrame = CFrame.new(27.3072395, 16.302906, 72.0798111, -0.342019916, -0.939692736, -9.89999971e-05, 0.939692736, -0.342019886, 0, -3.38599712e-05, -9.30295791e-05, 1)
Part65.Orientation = Vector3.new(0, -0.009999999776482582, 110)
Part65.Position = Vector3.new(27.307239532470703, 16.302906036376953, 72.0798110961914)
Part65.Rotation = Vector3.new(0, -0.009999999776482582, 110)
Part65.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part65.Size = Vector3.new(1.0749998092651367, 0.14999999105930328, 0.14999984204769135)
Part65.BottomSurface = Enum.SurfaceType.Smooth
Part65.BrickColor = BrickColor.new("Institutional white")
Part65.TopSurface = Enum.SurfaceType.Smooth
Part65.brickColor = BrickColor.new("Institutional white")
Part65.Shape = Enum.PartType.Cylinder
Part66.Parent = Model23
Part66.CFrame = CFrame.new(21.4915295, 16.7062874, 77.3051376, 0, -1, -9.89999971e-05, 1, 0, 0, 0, -9.89999971e-05, 1)
Part66.Orientation = Vector3.new(0, -0.009999999776482582, 90)
Part66.Position = Vector3.new(21.49152946472168, 16.706287384033203, 77.30513763427734)
Part66.Rotation = Vector3.new(0, -0.009999999776482582, 90)
Part66.Color = Color3.new(1, 0.690196, 0)
Part66.Size = Vector3.new(1.3000017404556274, 0.19999992847442627, 0.19999992847442627)
Part66.BottomSurface = Enum.SurfaceType.Smooth
Part66.BrickColor = BrickColor.new("Deep orange")
Part66.TopSurface = Enum.SurfaceType.Smooth
Part66.brickColor = BrickColor.new("Deep orange")
Part67.Parent = Model23
Part67.CFrame = CFrame.new(20.4803753, 19.8673153, 73.7991867, -9.89999971e-05, 0.984807789, -0.173647955, 0, 0.173647955, 0.984807789, 1, 9.74959694e-05, -1.7191147e-05)
Part67.Orientation = Vector3.new(-80, -90.01000213623047, 0)
Part67.Position = Vector3.new(20.480375289916992, 19.8673152923584, 73.79918670654297)
Part67.Rotation = Vector3.new(-90, -10, -90.01000213623047)
Part67.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part67.Size = Vector3.new(4.784668445587158, 0.34666702151298523, 0.25999993085861206)
Part67.BottomSurface = Enum.SurfaceType.Smooth
Part67.BrickColor = BrickColor.new("Fossil")
Part67.TopSurface = Enum.SurfaceType.Smooth
Part67.brickColor = BrickColor.new("Fossil")
Part67.Shape = Enum.PartType.Cylinder
Part68.Parent = Model23
Part68.CFrame = CFrame.new(29.7320042, 15.6404686, 74.3300323, 9.89999971e-05, 0, 1, 0, 1, 0, -1, 0, 9.89999971e-05)
Part68.Orientation = Vector3.new(0, 89.98999786376953, 0)
Part68.Position = Vector3.new(29.732004165649414, 15.64046859741211, 74.33003234863281)
Part68.Rotation = Vector3.new(0, 90, 0)
Part68.Color = Color3.new(1, 0.690196, 0)
Part68.Size = Vector3.new(9.500000953674316, 0.24999992549419403, 0.5000000596046448)
Part68.BottomSurface = Enum.SurfaceType.Smooth
Part68.BrickColor = BrickColor.new("Deep orange")
Part68.TopSurface = Enum.SurfaceType.Smooth
Part68.brickColor = BrickColor.new("Deep orange")
Part68.Shape = Enum.PartType.Cylinder
Part69.Parent = Model23
Part69.CFrame = CFrame.new(18.765995, 14.0504141, 73.6798706, -9.89999971e-05, 0, -1, 0, 1, 0, 1, 0, -9.89999971e-05)
Part69.Orientation = Vector3.new(0, -90.01000213623047, 0)
Part69.Position = Vector3.new(18.765995025634766, 14.050414085388184, 73.67987060546875)
Part69.Rotation = Vector3.new(0, -90, 0)
Part69.Color = Color3.new(1, 0.690196, 0)
Part69.Size = Vector3.new(10.199999809265137, 2.6999998092651367, 1.5700002908706665)
Part69.BottomSurface = Enum.SurfaceType.Smooth
Part69.BrickColor = BrickColor.new("Deep orange")
Part69.TopSurface = Enum.SurfaceType.Smooth
Part69.brickColor = BrickColor.new("Deep orange")
Part69.Shape = Enum.PartType.Cylinder
Part70.Parent = Model23
Part70.CFrame = CFrame.new(20.9121304, 17.4771595, 77.2377472, 0.173647955, 0.984807789, -9.89999971e-05, -0.984807789, 0.173647955, 0, 1.7191147e-05, 9.74959694e-05, 1)
Part70.Orientation = Vector3.new(0, -0.009999999776482582, -80)
Part70.Position = Vector3.new(20.91213035583496, 17.47715950012207, 77.23774719238281)
Part70.Rotation = Vector3.new(0, -0.009999999776482582, -80)
Part70.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part70.Size = Vector3.new(2.76466703414917, 0.34666702151298523, 0.25999993085861206)
Part70.BottomSurface = Enum.SurfaceType.Smooth
Part70.BrickColor = BrickColor.new("Fossil")
Part70.TopSurface = Enum.SurfaceType.Smooth
Part70.brickColor = BrickColor.new("Fossil")
Part70.Shape = Enum.PartType.Cylinder
Part71.Parent = Model23
Part71.CFrame = CFrame.new(19.6192818, 19.7419319, 71.4110489, -0.984808028, -9.89999971e-05, -0.173647001, -0.173647001, 0, 0.984808028, -9.74959912e-05, 1, -1.71910524e-05)
Part71.Orientation = Vector3.new(-80, -90.01000213623047, -90)
Part71.Position = Vector3.new(19.619281768798828, 19.741931915283203, 71.41104888916016)
Part71.Rotation = Vector3.new(-90, -10, 179.99000549316406)
Part71.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part71.Size = Vector3.new(1.7646698951721191, 0.34666702151298523, 0.25999993085861206)
Part71.BottomSurface = Enum.SurfaceType.Smooth
Part71.BrickColor = BrickColor.new("Fossil")
Part71.TopSurface = Enum.SurfaceType.Smooth
Part71.brickColor = BrickColor.new("Fossil")
Part71.Shape = Enum.PartType.Cylinder
Part72.Parent = Model23
Part72.CFrame = CFrame.new(18.4168797, 16.0703773, 78.9744797, 0.984807491, 0.17364791, 9.89999971e-05, 0.17364791, -0.984807491, 0, 9.74959403e-05, 1.71911433e-05, -1)
Part72.Orientation = Vector3.new(0, 179.99000549316406, 170)
Part72.Position = Vector3.new(18.416879653930664, 16.070377349853516, 78.97447967529297)
Part72.Rotation = Vector3.new(-180, 0.009999999776482582, -10)
Part72.Color = Color3.new(1, 0.690196, 0)
Part72.Size = Vector3.new(1.9000002145767212, 2.350001573562622, 0.3499998152256012)
Part72.BottomSurface = Enum.SurfaceType.Smooth
Part72.BrickColor = BrickColor.new("Deep orange")
Part72.TopSurface = Enum.SurfaceType.Smooth
Part72.brickColor = BrickColor.new("Deep orange")
Part73.Parent = Model23
Part73.CFrame = CFrame.new(20.425993, 14.1854057, 73.7800369, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part73.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part73.Position = Vector3.new(20.425992965698242, 14.185405731201172, 73.78003692626953)
Part73.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part73.Color = Color3.new(1, 0.690196, 0)
Part73.Size = Vector3.new(3.75, 2.75, 7.5)
Part73.BottomSurface = Enum.SurfaceType.Smooth
Part73.BrickColor = BrickColor.new("Deep orange")
Part73.TopSurface = Enum.SurfaceType.Smooth
Part73.brickColor = BrickColor.new("Deep orange")
Part74.Parent = Model23
Part74.CFrame = CFrame.new(19.6340828, 19.7324314, 73.7219086, -0.984808028, -9.89999971e-05, -0.173647001, -0.173647001, 0, 0.984808028, -9.74959912e-05, 1, -1.71910524e-05)
Part74.Orientation = Vector3.new(-80, -90.01000213623047, -90)
Part74.Position = Vector3.new(19.634082794189453, 19.732431411743164, 73.72190856933594)
Part74.Rotation = Vector3.new(-90, -10, 179.99000549316406)
Part74.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part74.Size = Vector3.new(1.8446696996688843, 0.34666702151298523, 0.25999993085861206)
Part74.BottomSurface = Enum.SurfaceType.Smooth
Part74.BrickColor = BrickColor.new("Fossil")
Part74.TopSurface = Enum.SurfaceType.Smooth
Part74.brickColor = BrickColor.new("Fossil")
Part74.Shape = Enum.PartType.Cylinder
Part75.Parent = Model23
Part75.CFrame = CFrame.new(23.319582, 14.3904114, 73.7293777, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part75.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part75.Position = Vector3.new(23.319581985473633, 14.390411376953125, 73.72937774658203)
Part75.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part75.Color = Color3.new(1, 0.690196, 0)
Part75.Size = Vector3.new(2.0749990940093994, 1.2999999523162842, 2.7500007152557373)
Part75.BottomSurface = Enum.SurfaceType.Smooth
Part75.BrickColor = BrickColor.new("Deep orange")
Part75.TopSurface = Enum.SurfaceType.Smooth
Part75.brickColor = BrickColor.new("Deep orange")
Part76.Parent = Model23
Part76.CFrame = CFrame.new(21.4195728, 16.3395748, 73.7748947, -9.89999971e-05, 0.965925336, 0.2588211, 0, -0.2588211, 0.965925336, 1, 9.56266085e-05, 2.56232888e-05)
Part76.Orientation = Vector3.new(-75, 89.98999786376953, 180)
Part76.Position = Vector3.new(21.419572830200195, 16.339574813842773, 73.77489471435547)
Part76.Rotation = Vector3.new(-90, 15, -90.01000213623047)
Part76.Color = Color3.new(1, 0.690196, 0)
Part76.Size = Vector3.new(6.910476207733154, 0.05552372708916664, 0.16657127439975739)
Part76.BottomSurface = Enum.SurfaceType.Smooth
Part76.BrickColor = BrickColor.new("Deep orange")
Part76.TopSurface = Enum.SurfaceType.Smooth
Part76.brickColor = BrickColor.new("Deep orange")
Part77.Parent = Model23
Part77.CFrame = CFrame.new(32.1368942, 15.8244476, 71.6025391, -9.89789114e-05, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -2.56991952e-05, 9.55844298e-05)
Part77.Orientation = Vector3.new(15, 89.98999786376953, -180)
Part77.Position = Vector3.new(32.13689422607422, 15.824447631835938, 71.6025390625)
Part77.Rotation = Vector3.new(89.9800033569336, 75, 90.0199966430664)
Part77.Color = Color3.new(1, 0.690196, 0)
Part77.Size = Vector3.new(1.1104754209518433, 0.05552372708916664, 0.16657127439975739)
Part77.BottomSurface = Enum.SurfaceType.Smooth
Part77.BrickColor = BrickColor.new("Deep orange")
Part77.TopSurface = Enum.SurfaceType.Smooth
Part77.brickColor = BrickColor.new("Deep orange")
Part78.Parent = Model23
Part78.CFrame = CFrame.new(21.4252567, 16.5749226, 73.7748947, -9.89999971e-05, 0.965925336, 0.2588211, 0, -0.2588211, 0.965925336, 1, 9.56266085e-05, 2.56232888e-05)
Part78.Orientation = Vector3.new(-75, 89.98999786376953, 180)
Part78.Position = Vector3.new(21.425256729125977, 16.574922561645508, 73.77489471435547)
Part78.Rotation = Vector3.new(-90, 15, -90.01000213623047)
Part78.Color = Color3.new(1, 0.690196, 0)
Part78.Size = Vector3.new(6.910476207733154, 0.05552372708916664, 0.16657127439975739)
Part78.BottomSurface = Enum.SurfaceType.Smooth
Part78.BrickColor = BrickColor.new("Deep orange")
Part78.TopSurface = Enum.SurfaceType.Smooth
Part78.brickColor = BrickColor.new("Deep orange")
Part79.Parent = Model23
Part79.CFrame = CFrame.new(27.6820259, 13.0404234, 74.3298264, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part79.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part79.Position = Vector3.new(27.682025909423828, 13.040423393249512, 74.32982635498047)
Part79.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part79.Color = Color3.new(1, 0.690196, 0)
Part79.Size = Vector3.new(0.20000001788139343, 1, 9.099997520446777)
Part79.BottomSurface = Enum.SurfaceType.Smooth
Part79.BrickColor = BrickColor.new("Deep orange")
Part79.TopSurface = Enum.SurfaceType.Smooth
Part79.brickColor = BrickColor.new("Deep orange")
Part80.Parent = Model23
Part80.CFrame = CFrame.new(28.4815674, 13.0404253, 78.8299026, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part80.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part80.Position = Vector3.new(28.4815673828125, 13.040425300598145, 78.82990264892578)
Part80.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part80.Color = Color3.new(1, 0.690196, 0)
Part80.Size = Vector3.new(1.8000003099441528, 1, 0.09999986737966537)
Part80.BottomSurface = Enum.SurfaceType.Smooth
Part80.BrickColor = BrickColor.new("Deep orange")
Part80.TopSurface = Enum.SurfaceType.Smooth
Part80.brickColor = BrickColor.new("Deep orange")
Part81.Parent = Model23
Part81.CFrame = CFrame.new(30.0316467, 15.0654211, 78.0300674, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part81.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part81.Position = Vector3.new(30.031646728515625, 15.065421104431152, 78.03006744384766)
Part81.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part81.Color = Color3.new(1, 0.690196, 0)
Part81.Size = Vector3.new(1.100000262260437, 1.5499995946884155, 2)
Part81.BottomSurface = Enum.SurfaceType.Smooth
Part81.BrickColor = BrickColor.new("Deep orange")
Part81.TopSurface = Enum.SurfaceType.Smooth
Part81.brickColor = BrickColor.new("Deep orange")
Part82.Parent = Model23
Part82.CFrame = CFrame.new(27.4317207, 13.54041, 77.2798157, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part82.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part82.Position = Vector3.new(27.431720733642578, 13.540410041809082, 77.27981567382812)
Part82.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part82.Color = Color3.new(1, 0.690196, 0)
Part82.Size = Vector3.new(0.800000011920929, 2.299999952316284, 2)
Part82.BottomSurface = Enum.SurfaceType.Smooth
Part82.BrickColor = BrickColor.new("Deep orange")
Part82.TopSurface = Enum.SurfaceType.Smooth
Part82.brickColor = BrickColor.new("Deep orange")
Part83.Parent = Model23
Part83.CFrame = CFrame.new(21.4918289, 17.2562809, 73.80513, -9.89999971e-05, -1, 0, 0, 0, -1, 1, -9.89999971e-05, 0)
Part83.Orientation = Vector3.new(90, -90.01000213623047, 0)
Part83.Position = Vector3.new(21.49182891845703, 17.25628089904785, 73.80513000488281)
Part83.Rotation = Vector3.new(90, 0, 90.01000213623047)
Part83.Color = Color3.new(1, 0.690196, 0)
Part83.Size = Vector3.new(6.850000858306885, 0.19999992847442627, 0.19999992847442627)
Part83.BottomSurface = Enum.SurfaceType.Smooth
Part83.BrickColor = BrickColor.new("Deep orange")
Part83.TopSurface = Enum.SurfaceType.Smooth
Part83.brickColor = BrickColor.new("Deep orange")
Part84.Parent = Model23
Part84.CFrame = CFrame.new(28.4824753, 13.0404205, 69.7298965, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part84.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part84.Position = Vector3.new(28.48247528076172, 13.040420532226562, 69.72989654541016)
Part84.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part84.Color = Color3.new(1, 0.690196, 0)
Part84.Size = Vector3.new(1.8000003099441528, 1, 0.09999986737966537)
Part84.BottomSurface = Enum.SurfaceType.Smooth
Part84.BrickColor = BrickColor.new("Deep orange")
Part84.TopSurface = Enum.SurfaceType.Smooth
Part84.brickColor = BrickColor.new("Deep orange")
Part85.Parent = Model23
Part85.CFrame = CFrame.new(27.5317211, 14.990407, 77.2798157, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part85.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part85.Position = Vector3.new(27.531721115112305, 14.99040699005127, 77.27981567382812)
Part85.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part85.Color = Color3.new(1, 0.690196, 0)
Part85.Size = Vector3.new(0.6000001430511475, 1, 2)
Part85.BottomSurface = Enum.SurfaceType.Smooth
Part85.BrickColor = BrickColor.new("Deep orange")
Part85.TopSurface = Enum.SurfaceType.Smooth
Part85.brickColor = BrickColor.new("Deep orange")
Part86.Parent = Model23
Part86.CFrame = CFrame.new(21.1918106, 16.7062836, 73.7801132, -9.89999971e-05, -1, 0, 0, 0, -1, 1, -9.89999971e-05, 0)
Part86.Orientation = Vector3.new(90, -90.01000213623047, 0)
Part86.Position = Vector3.new(21.191810607910156, 16.706283569335938, 73.78011322021484)
Part86.Rotation = Vector3.new(90, 0, 90.01000213623047)
Part86.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part86.Size = Vector3.new(7.200000286102295, 0.2999999523162842, 1.2000001668930054)
Part86.BottomSurface = Enum.SurfaceType.Smooth
Part86.BrickColor = BrickColor.new("Really black")
Part86.TopSurface = Enum.SurfaceType.Smooth
Part86.brickColor = BrickColor.new("Really black")
Part87.Parent = Model23
Part87.CFrame = CFrame.new(23.9072609, 13.4654074, 71.7294312, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part87.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part87.Position = Vector3.new(23.90726089477539, 13.465407371520996, 71.72943115234375)
Part87.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part87.Color = Color3.new(1, 0.690196, 0)
Part87.Size = Vector3.new(3.1999988555908203, 2.549999952316284, 0.9000000953674316)
Part87.BottomSurface = Enum.SurfaceType.Smooth
Part87.BrickColor = BrickColor.new("Deep orange")
Part87.TopSurface = Enum.SurfaceType.Smooth
Part87.brickColor = BrickColor.new("Deep orange")
Part88.Parent = Model23
Part88.CFrame = CFrame.new(21.4084644, 16.789566, 73.7748871, -9.89999971e-05, 0.965925336, 0.2588211, 0, -0.2588211, 0.965925336, 1, 9.56266085e-05, 2.56232888e-05)
Part88.Orientation = Vector3.new(-75, 89.98999786376953, 180)
Part88.Position = Vector3.new(21.408464431762695, 16.789566040039062, 73.77488708496094)
Part88.Rotation = Vector3.new(-90, 15, -90.01000213623047)
Part88.Color = Color3.new(1, 0.690196, 0)
Part88.Size = Vector3.new(6.910476207733154, 0.05552372708916664, 0.16657127439975739)
Part88.BottomSurface = Enum.SurfaceType.Smooth
Part88.BrickColor = BrickColor.new("Deep orange")
Part88.TopSurface = Enum.SurfaceType.Smooth
Part88.brickColor = BrickColor.new("Deep orange")
Part89.Parent = Model23
Part89.CFrame = CFrame.new(19.0759869, 16.3154106, 73.7799225, -9.89999971e-05, 0, -1, 0, 1, 0, 1, 0, -9.89999971e-05)
Part89.Orientation = Vector3.new(0, -90.01000213623047, 0)
Part89.Position = Vector3.new(19.075986862182617, 16.315410614013672, 73.77992248535156)
Part89.Rotation = Vector3.new(0, -90, 0)
Part89.Color = Color3.new(1, 0.690196, 0)
Part89.Size = Vector3.new(7.499999523162842, 2.049999952316284, 4.549999713897705)
Part89.BottomSurface = Enum.SurfaceType.Smooth
Part89.BrickColor = BrickColor.new("Deep orange")
Part89.TopSurface = Enum.SurfaceType.Smooth
Part89.brickColor = BrickColor.new("Deep orange")
Part90.Parent = Model23
Part90.CFrame = CFrame.new(22.7694702, 15.3404112, 74.8668289, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part90.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part90.Position = Vector3.new(22.76947021484375, 15.340411186218262, 74.86682891845703)
Part90.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part90.Color = Color3.new(1, 0.690196, 0)
Part90.Size = Vector3.new(0.9750000238418579, 0.6000000238418579, 0.47499990463256836)
Part90.BottomSurface = Enum.SurfaceType.Smooth
Part90.BrickColor = BrickColor.new("Deep orange")
Part90.TopSurface = Enum.SurfaceType.Smooth
Part90.brickColor = BrickColor.new("Deep orange")
Part91.Parent = Model23
Part91.CFrame = CFrame.new(30.507019, 14.9404526, 74.2801056, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part91.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part91.Position = Vector3.new(30.50701904296875, 14.940452575683594, 74.28010559082031)
Part91.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part91.Color = Color3.new(1, 0.690196, 0)
Part91.Size = Vector3.new(2.2884812355041504, 1.6554970741271973, 9.299997329711914)
Part91.BottomSurface = Enum.SurfaceType.Smooth
Part91.BrickColor = BrickColor.new("Deep orange")
Part91.TopSurface = Enum.SurfaceType.Smooth
Part91.brickColor = BrickColor.new("Deep orange")
Part92.Parent = Model23
Part92.CFrame = CFrame.new(31.543211, 16.1269188, 71.6580048, -9.89789114e-05, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -2.56991952e-05, 9.55844298e-05)
Part92.Orientation = Vector3.new(15, 89.98999786376953, -180)
Part92.Position = Vector3.new(31.543210983276367, 16.12691879272461, 71.65800476074219)
Part92.Rotation = Vector3.new(89.9800033569336, 75, 90.0199966430664)
Part92.Color = Color3.new(1, 0.690196, 0)
Part92.Size = Vector3.new(1.1104754209518433, 0.05552372708916664, 0.16657127439975739)
Part92.BottomSurface = Enum.SurfaceType.Smooth
Part92.BrickColor = BrickColor.new("Deep orange")
Part92.TopSurface = Enum.SurfaceType.Smooth
Part92.brickColor = BrickColor.new("Deep orange")
Part93.Parent = Model23
Part93.CFrame = CFrame.new(30.949564, 16.4294281, 71.6024246, -9.89999971e-05, -0.453989148, 0.891007304, 0, -0.891007304, -0.453989148, 1, -4.49449253e-05, 8.82097229e-05)
Part93.Orientation = Vector3.new(27, 89.98999786376953, 180)
Part93.Position = Vector3.new(30.94956398010254, 16.429428100585938, 71.60242462158203)
Part93.Rotation = Vector3.new(89.98999786376953, 63, 90.01000213623047)
Part93.Color = Color3.new(1, 0.690196, 0)
Part93.Size = Vector3.new(1.1104754209518433, 0.05552372708916664, 0.16657127439975739)
Part93.BottomSurface = Enum.SurfaceType.Smooth
Part93.BrickColor = BrickColor.new("Deep orange")
Part93.TopSurface = Enum.SurfaceType.Smooth
Part93.brickColor = BrickColor.new("Deep orange")
Part94.Parent = Model23
Part94.CFrame = CFrame.new(30.9706154, 16.4653339, 71.630188, -9.89999971e-05, -0.453989148, 0.891007304, 0, -0.891007304, -0.453989148, 1, -4.49449253e-05, 8.82097229e-05)
Part94.Orientation = Vector3.new(27, 89.98999786376953, 180)
Part94.Position = Vector3.new(30.97061538696289, 16.465333938598633, 71.63018798828125)
Part94.Rotation = Vector3.new(89.98999786376953, 63, 90.01000213623047)
Part94.Color = Color3.new(1, 0.690196, 0)
Part94.Size = Vector3.new(1.1659988164901733, 0.05552372708916664, 0.16657127439975739)
Part94.BottomSurface = Enum.SurfaceType.Smooth
Part94.BrickColor = BrickColor.new("Deep orange")
Part94.TopSurface = Enum.SurfaceType.Smooth
Part94.brickColor = BrickColor.new("Deep orange")
Part95.Parent = Model23
Part95.CFrame = CFrame.new(29.1570187, 16.1404076, 74.2799759, -9.89999971e-05, 0, -1, 0, 1, 0, 1, 0, -9.89999971e-05)
Part95.Orientation = Vector3.new(0, -90.01000213623047, 0)
Part95.Position = Vector3.new(29.157018661499023, 16.14040756225586, 74.27997589111328)
Part95.Rotation = Vector3.new(0, -90, 0)
Part95.Color = Color3.new(1, 0.690196, 0)
Part95.Size = Vector3.new(8, 1, 2.6499998569488525)
Part95.BottomSurface = Enum.SurfaceType.Smooth
Part95.BrickColor = BrickColor.new("Deep orange")
Part95.TopSurface = Enum.SurfaceType.Smooth
Part95.brickColor = BrickColor.new("Deep orange")
Part96.Parent = Model23
Part96.CFrame = CFrame.new(19.7009926, 17.5654259, 73.7549438, 9.89999971e-05, 0, 1, 0, 1, 0, -1, 0, 9.89999971e-05)
Part96.Orientation = Vector3.new(0, 89.98999786376953, 0)
Part96.Position = Vector3.new(19.700992584228516, 17.565425872802734, 73.75494384765625)
Part96.Rotation = Vector3.new(0, 90, 0)
Part96.Color = Color3.new(1, 0.690196, 0)
Part96.Size = Vector3.new(8.349998474121094, 0.550000011920929, 0.3999999463558197)
Part96.BottomSurface = Enum.SurfaceType.Smooth
Part96.BrickColor = BrickColor.new("Deep orange")
Part96.TopSurface = Enum.SurfaceType.Smooth
Part96.brickColor = BrickColor.new("Deep orange")
Part96.Shape = Enum.PartType.Cylinder
Part97.Parent = Model23
Part97.CFrame = CFrame.new(31.6422176, 16.076519, 71.1305313, -0.891006887, -0.453989953, -9.89999971e-05, 0.453989953, -0.891006887, 0, -8.82096792e-05, -4.49450054e-05, 1)
Part97.Orientation = Vector3.new(0, -0.009999999776482582, 153)
Part97.Position = Vector3.new(31.6422176361084, 16.076519012451172, 71.13053131103516)
Part97.Rotation = Vector3.new(0, -0.009999999776482582, 153)
Part97.Color = Color3.new(1, 0.690196, 0)
Part97.Size = Vector3.new(1.7212361097335815, 0.05552372708916664, 0.16657127439975739)
Part97.BottomSurface = Enum.SurfaceType.Smooth
Part97.BrickColor = BrickColor.new("Deep orange")
Part97.TopSurface = Enum.SurfaceType.Smooth
Part97.brickColor = BrickColor.new("Deep orange")
Part98.Parent = Model23
Part98.CFrame = CFrame.new(30.0569553, 15.8904161, 74.2800293, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part98.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part98.Position = Vector3.new(30.056955337524414, 15.890416145324707, 74.280029296875)
Part98.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part98.Color = Color3.new(1, 0.690196, 0)
Part98.Size = Vector3.new(1.416669249534607, 0.8952382206916809, 9.30000114440918)
Part98.BottomSurface = Enum.SurfaceType.Smooth
Part98.BrickColor = BrickColor.new("Deep orange")
Part98.TopSurface = Enum.SurfaceType.Smooth
Part98.brickColor = BrickColor.new("Deep orange")
Part99.Parent = Model23
Part99.CFrame = CFrame.new(22.5448856, 15.9011364, 73.7543182, 0.173647955, 0.984807789, -9.89999971e-05, -0.984807789, 0.173647955, 0, 1.7191147e-05, 9.74959694e-05, 1)
Part99.Orientation = Vector3.new(0, -0.009999999776482582, -80)
Part99.Position = Vector3.new(22.544885635375977, 15.90113639831543, 73.75431823730469)
Part99.Rotation = Vector3.new(0, -0.009999999776482582, -80)
Part99.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part99.Size = Vector3.new(3.0249991416931152, 0.3749999701976776, 1.4500001668930054)
Part99.BottomSurface = Enum.SurfaceType.Smooth
Part99.BrickColor = BrickColor.new("Really black")
Part99.TopSurface = Enum.SurfaceType.Smooth
Part99.brickColor = BrickColor.new("Really black")
Part100.Parent = Model23
Part100.CFrame = CFrame.new(30.1570187, 14.0154114, 74.2800751, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part100.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part100.Position = Vector3.new(30.157018661499023, 14.015411376953125, 74.28007507324219)
Part100.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part100.Color = Color3.new(1, 0.690196, 0)
Part100.Size = Vector3.new(4.650000095367432, 3.25, 8)
Part100.BottomSurface = Enum.SurfaceType.Smooth
Part100.BrickColor = BrickColor.new("Deep orange")
Part100.TopSurface = Enum.SurfaceType.Smooth
Part100.brickColor = BrickColor.new("Deep orange")
Part101.Parent = Model23
Part101.CFrame = CFrame.new(29.9820194, 13.04041, 74.2800598, 9.89999971e-05, 0, 1, 0, 1, 0, -1, 0, 9.89999971e-05)
Part101.Orientation = Vector3.new(0, 89.98999786376953, 0)
Part101.Position = Vector3.new(29.982019424438477, 13.040410041809082, 74.28005981445312)
Part101.Rotation = Vector3.new(0, 90, 0)
Part101.Color = Color3.new(1, 0.690196, 0)
Part101.Size = Vector3.new(9.39999771118164, 0.8867924213409424, 0.8867924213409424)
Part101.BottomSurface = Enum.SurfaceType.Smooth
Part101.BrickColor = BrickColor.new("Deep orange")
Part101.TopSurface = Enum.SurfaceType.Smooth
Part101.brickColor = BrickColor.new("Deep orange")
Part101.Shape = Enum.PartType.Cylinder
Part102.Parent = Model23
Part102.CFrame = CFrame.new(27.2821217, 14.0904112, 73.279808, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part102.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part102.Position = Vector3.new(27.282121658325195, 14.090411186218262, 73.2798080444336)
Part102.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part102.Color = Color3.new(1, 0.690196, 0)
Part102.Size = Vector3.new(1.100000023841858, 3.399998903274536, 6.000000476837158)
Part102.BottomSurface = Enum.SurfaceType.Smooth
Part102.BrickColor = BrickColor.new("Deep orange")
Part102.TopSurface = Enum.SurfaceType.Smooth
Part102.brickColor = BrickColor.new("Deep orange")
Part103.Parent = Model23
Part103.CFrame = CFrame.new(31.147419, 16.3285389, 71.6024399, -9.89789114e-05, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -2.56991952e-05, 9.55844298e-05)
Part103.Orientation = Vector3.new(15, 89.98999786376953, -180)
Part103.Position = Vector3.new(31.147418975830078, 16.32853889465332, 71.6024398803711)
Part103.Rotation = Vector3.new(89.9800033569336, 75, 90.0199966430664)
Part103.Color = Color3.new(1, 0.690196, 0)
Part103.Size = Vector3.new(1.1104754209518433, 0.05552372708916664, 0.16657127439975739)
Part103.BottomSurface = Enum.SurfaceType.Smooth
Part103.BrickColor = BrickColor.new("Deep orange")
Part103.TopSurface = Enum.SurfaceType.Smooth
Part103.brickColor = BrickColor.new("Deep orange")
Part104.Parent = Model23
Part104.CFrame = CFrame.new(27.0833435, 16.8968048, 72.0797958, -0.342019916, -0.939692736, -9.89999971e-05, 0.939692736, -0.342019886, 0, -3.38599712e-05, -9.30295791e-05, 1)
Part104.Orientation = Vector3.new(0, -0.009999999776482582, 110)
Part104.Position = Vector3.new(27.083343505859375, 16.896804809570312, 72.07979583740234)
Part104.Rotation = Vector3.new(0, -0.009999999776482582, 110)
Part104.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part104.Size = Vector3.new(0.2249997854232788, 0.14999999105930328, 0.14999984204769135)
Part104.BottomSurface = Enum.SurfaceType.Smooth
Part104.BrickColor = BrickColor.new("Really black")
Part104.TopSurface = Enum.SurfaceType.Smooth
Part104.brickColor = BrickColor.new("Really black")
Part104.Shape = Enum.PartType.Cylinder
Part105.Name = "Seat"
Part105.Parent = Model23
Part105.CFrame = CFrame.new(23.4195766, 15.04041, 73.7543793, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part105.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part105.Position = Vector3.new(23.41957664489746, 15.040410041809082, 73.75437927246094)
Part105.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part105.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part105.Size = Vector3.new(1.4749999046325684, 1, 1.3500005006790161)
Part105.Anchored = true
Part105.BottomSurface = Enum.SurfaceType.Smooth
Part105.BrickColor = BrickColor.new("Really black")
Part105.TopSurface = Enum.SurfaceType.Smooth
Part105.brickColor = BrickColor.new("Really black")
Weld106.Parent = Part105
Weld106.C0 = CFrame.new(4.09749222, 0.765007973, 2.93502808, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld106.Part0 = Part105
Weld106.Part1 = MeshPart28
Weld106.part1 = MeshPart28
Weld107.Parent = Part105
Weld107.C0 = CFrame.new(-4.21071815, -1.03534794, -5.21240997, -0.00259799976, 0.171009958, -0.985265851, 0.030152997, -0.984807789, -0.171009958, -0.999541879, -0.0301530026, -0.00259793224)
Weld107.Part0 = Part105
Weld107.Part1 = MeshPart37
Weld107.part1 = MeshPart37
Weld108.Parent = Part105
Weld108.C0 = CFrame.new(-5.10347176, -1.13879299, 5.18920898, 0.00259599998, 0.171009004, 0.985266089, -0.0301530007, -0.984808028, 0.17100893, 0.999541998, -0.0301526655, 0.00259987242)
Weld108.Part0 = Part105
Weld108.Part1 = MeshPart34
Weld108.part1 = MeshPart34
Weld109.Parent = Part105
Weld109.C0 = CFrame.new(-5.15558815, -1.17968082, -5.205616, 0.00259599998, 0.171009004, 0.985266089, -0.0301530007, -0.984808028, 0.17100893, 0.999541998, -0.0301526655, 0.00259987242)
Weld109.Part0 = Part105
Weld109.Part1 = MeshPart29
Weld109.part1 = MeshPart29
Weld110.Parent = Part105
Weld110.C0 = CFrame.new(-4.1746769, -0.9750247, 5.2044487, -0.00259799976, 0.171009958, -0.985265851, 0.030152997, -0.984807789, -0.171009958, -0.999541879, -0.0301530026, -0.00259793224)
Weld110.Part0 = Part105
Weld110.Part1 = MeshPart33
Weld110.part1 = MeshPart33
Weld111.Parent = Part105
Weld111.C0 = CFrame.new(3.38808203, 1.79605436, -0.159912109, 0, 0.500000238, -0.866025388, 0, 0.866025388, 0.500000238, 1, 0, 0)
Weld111.Part0 = Part105
Weld111.Part1 = MeshPart366
Weld111.part1 = MeshPart366
Weld112.Parent = Part105
Weld112.C0 = CFrame.new(3.8874979, 1.26249695, -1.67494965, -0.342019916, -0.939692736, 0, 0.939692736, -0.342019886, 0, 0, 0, 1)
Weld112.Part0 = Part105
Weld112.Part1 = Part65
Weld112.part1 = Part65
Weld113.Parent = Part105
Weld113.C0 = CFrame.new(-2.93919706, 4.82690573, 0.0450973511, 0, 0.984807789, -0.173647955, 0, 0.173647955, 0.984807789, 1, 0, 0)
Weld113.Part0 = Part105
Weld113.Part1 = Part67
Weld113.part1 = Part67
Weld114.Parent = Part105
Weld114.C0 = CFrame.new(-2.54238081, 2.50330973, -3.39068604, 0.173647955, 0.984807789, 0, -0.984807789, 0.173647955, 0, 0, 0, 1)
Weld114.Part0 = Part105
Weld114.Part1 = Part51
Weld114.part1 = Part51
Weld115.Parent = Part105
Weld115.C0 = CFrame.new(-4.77833271, 2.51407862, 2.59593964, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld115.Part0 = Part105
Weld115.Part1 = Part60
Weld115.part1 = Part60
Weld116.Parent = Part105
Weld116.C0 = CFrame.new(-2.50710106, 2.43674994, 3.48361969, 0.173647955, 0.984807789, 0, -0.984807789, 0.173647955, 0, 0, 0, 1)
Weld116.Part0 = Part105
Weld116.Part1 = Part70
Weld116.part1 = Part70
Weld117.Parent = Part105
Weld117.C0 = CFrame.new(-0.674996853, 0.325036049, -1.21248627, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld117.Part0 = Part105
Weld117.Part1 = Part38
Weld117.part1 = Part38
Weld118.Parent = Part105
Weld118.C0 = CFrame.new(-5.0021801, 1.02996635, 5.22059631, 0.984807491, 0.17364791, 0, 0.17364791, -0.984807491, 0, 0, 0, -1)
Weld118.Part0 = Part105
Weld118.Part1 = Part72
Weld118.part1 = Part72
Weld119.Parent = Part105
Weld119.C0 = CFrame.new(4.01423311, 0.685228348, -0.142475128, -0.500000238, -0.866025388, 0, 0.866025388, -0.500000238, 0, 0, 0, 1)
Weld119.Part0 = Part105
Weld119.Part1 = Part39
Weld119.part1 = Part39
Weld120.Parent = Part105
Weld120.C0 = CFrame.new(-5.02974892, 0.965667248, -5.17404938, 0.984807491, 0.17364791, 0, 0.17364791, -0.984807491, 0, 0, 0, -1)
Weld120.Part0 = Part105
Weld120.Part1 = Part43
Weld120.part1 = Part43
Weld121.Parent = Part105
Weld121.C0 = CFrame.new(7.66248989, 0.625064373, 0.575016022, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld121.Part0 = Part105
Weld121.Part1 = Part44
Weld121.part1 = Part44
Weld122.Parent = Part105
Weld122.C0 = CFrame.new(8.23977852, 1.07025337, -2.62289047, -0.891006887, -0.453989953, 0, 0.453989953, -0.891006887, 0, 0, 0, 1)
Weld122.Part0 = Part105
Weld122.Part1 = Part55
Weld122.part1 = Part55
Weld123.Parent = Part105
Weld123.C0 = CFrame.new(-1.99258375, 1.98087072, 0.0311737061, 0, 0.965925336, 0.2588211, 0, -0.2588211, 0.965925336, 1, 0, 0)
Weld123.Part0 = Part105
Weld123.Part1 = Part52
Weld123.part1 = Part52
Weld124.Parent = Part105
Weld124.C0 = CFrame.new(6.31248426, 0.600058079, 0.575031281, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld124.Part0 = Part105
Weld124.Part1 = Part68
Weld124.part1 = Part68
Weld125.Parent = Part105
Weld125.C0 = CFrame.new(5.03749514, 0.743421078, 0.461845398, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld125.Part0 = Part105
Weld125.Part1 = Part47
Weld125.part1 = Part47
Weld126.Parent = Part105
Weld126.C0 = CFrame.new(-4.81357384, 2.51407862, -2.41405869, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld126.Part0 = Part105
Weld126.Part1 = Part54
Weld126.part1 = Part54
Weld127.Parent = Part105
Weld127.C0 = CFrame.new(-4.65358877, -0.989995956, -0.0740509033, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Weld127.Part0 = Part105
Weld127.Part1 = Part69
Weld127.part1 = Part69
Weld128.Parent = Part105
Weld128.C0 = CFrame.new(-3.8005271, 4.70152235, -2.34295273, -0.984808028, 0, -0.173647001, -0.173647001, 0, 0.984808028, 0, 1, 0)
Weld128.Part0 = Part105
Weld128.Part1 = Part71
Weld128.part1 = Part71
Weld129.Parent = Part105
Weld129.C0 = CFrame.new(-1.92769599, 1.66587734, 3.5509491, 0, -1, 0, 1, 0, -0, 0, 0, 1)
Weld129.Part0 = Part105
Weld129.Part1 = Part66
Weld129.part1 = Part66
Weld130.Parent = Part105
Weld130.C0 = CFrame.new(-2.99358177, -0.855003834, 0.0259552002, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld130.Part0 = Part105
Weld130.Part1 = Part73
Weld130.part1 = Part73
Weld131.Parent = Part105
Weld131.C0 = CFrame.new(-5.17691183, 1.95373774, -0.0740432739, 0.984807789, 0, -0.173647955, 0.173647955, 0, 0.984807789, 0, -1, 0)
Weld131.Part0 = Part105
Weld131.Part1 = Part45
Weld131.part1 = Part45
Weld132.Parent = Part105
Weld132.C0 = CFrame.new(8.24024582, 1.07118034, -1.62522888, -0.891006887, -0.453989953, 0, 0.453989953, -0.891006887, 0, 0, 0, 1)
Weld132.Part0 = Part105
Weld132.Part1 = Part56
Weld132.part1 = Part56
Weld133.Parent = Part105
Weld133.C0 = CFrame.new(8.19077587, 0.974070072, -2.1804657, -0.891006887, -0.453989953, 0, 0.453989953, -0.891006887, 0, 0, 0, 1)
Weld133.Part0 = Part105
Weld133.Part1 = Part46
Weld133.part1 = Part46
Weld134.Parent = Part105
Weld134.C0 = CFrame.new(-3.90843773, 4.66941023, 2.43470383, -0.984808028, 0, -0.173647001, -0.173647001, 0, 0.984808028, 0, 1, 0)
Weld134.Part0 = Part105
Weld134.Part1 = Part49
Weld134.part1 = Part49
Weld135.Parent = Part105
Weld135.C0 = CFrame.new(3.80749798, 1.282897, -2.57493973, -0.500000238, -0.866025388, 0, 0.866025388, -0.500000238, 0, 0, 0, 1)
Weld135.Part0 = Part105
Weld135.Part1 = Part61
Weld135.part1 = Part61
Weld136.Parent = Part105
Weld136.C0 = CFrame.new(0.494495034, -1.54300404, -2.23996735, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld136.Part0 = Part105
Weld136.Part1 = Part57
Weld136.part1 = Part57
Weld137.Parent = Part105
Weld137.C0 = CFrame.new(-4.09360695, 2.57502222, 0.000946044922, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld137.Part0 = Part105
Weld137.Part1 = Part42
Weld137.part1 = Part42
Weld138.Parent = Part105
Weld138.C0 = CFrame.new(-4.58859015, -1.18999863, -0.044052124, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld138.Part0 = Part105
Weld138.Part1 = Part48
Weld138.part1 = Part48
Weld139.Parent = Part105
Weld139.C0 = CFrame.new(7.26248503, 0.625048161, 0.575061798, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld139.Part0 = Part105
Weld139.Part1 = Part41
Weld139.part1 = Part41
Weld140.Parent = Part105
Weld140.C0 = CFrame.new(-4.7935729, 2.27499819, 0.0259399414, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Weld140.Part0 = Part105
Weld140.Part1 = Part53
Weld140.part1 = Part53
Weld141.Parent = Part105
Weld141.C0 = CFrame.new(-4.77833271, 3.22405386, -0.0527572632, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld141.Part0 = Part105
Weld141.Part1 = Part40
Weld141.part1 = Part40
Weld142.Parent = Part105
Weld142.C0 = CFrame.new(0.512487054, -1.57500076, 2.00001526, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld142.Part0 = Part105
Weld142.Part1 = Part50
Weld142.part1 = Part50
Weld143.Parent = Part105
Weld143.C0 = CFrame.new(-5.23930073, 2.50768042, -0.048576355, -0.173647955, 0, 0.984807789, 0.984807789, 0, 0.173647955, 0, 1, 0)
Weld143.Part0 = Part105
Weld143.Part1 = Part62
Weld143.part1 = Part62
Weld144.Parent = Part105
Weld144.C0 = CFrame.new(6.56249428, -1.85000086, 0.525032043, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld144.Part0 = Part105
Weld144.Part1 = Part304
Weld144.part1 = Part304
Weld145.Parent = Part105
Weld145.C0 = CFrame.new(4.08749294, 1.02499628, 2.92505646, 0, -1, 0, 1, 0, -0, 0, 0, 1)
Weld145.Part0 = Part105
Weld145.Part1 = Part306
Weld145.part1 = Part306
Weld146.Parent = Part105
Weld146.C0 = CFrame.new(8.71710396, 0.784038067, -2.15270615, 2.10847091e-08, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -7.6109437e-08, -4.22219593e-08)
Weld146.Part0 = Part105
Weld146.Part1 = Part77
Weld146.part1 = Part77
Weld147.Parent = Part105
Weld147.C0 = CFrame.new(7.0874939, -0.099957943, 0.525028229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld147.Part0 = Part105
Weld147.Part1 = Part91
Weld147.part1 = Part91
Weld148.Parent = Part105
Weld148.C0 = CFrame.new(-1.92776299, 1.11587524, 0.050945282, 0, -1, 0, 0, 0, -1, 1, 0, 0)
Weld148.Part0 = Part105
Weld148.Part1 = Part310
Weld148.part1 = Part310
Weld149.Parent = Part105
Weld149.C0 = CFrame.new(-0.87469101, 0.860726357, 2.28881836e-05, 0.173647955, 0.984807789, 0, -0.984807789, 0.173647955, 0, 0, 0, 1)
Weld149.Part0 = Part105
Weld149.Part1 = Part99
Weld149.part1 = Part99
Weld150.Parent = Part105
Weld150.C0 = CFrame.new(4.11249399, -0.0500030518, 3.52503204, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld150.Part0 = Part105
Weld150.Part1 = Part85
Weld150.part1 = Part85
Weld151.Parent = Part105
Weld151.C0 = CFrame.new(-1.92771482, 1.66587305, -3.44904709, 0, -1, 0, 1, 0, -0, 0, 0, 1)
Weld151.Part0 = Part105
Weld151.Part1 = Part302
Weld151.part1 = Part302
Weld152.Parent = Part105
Weld152.C0 = CFrame.new(-3.71858406, 2.52501631, 0.000930786133, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld152.Part0 = Part105
Weld152.Part1 = Part96
Weld152.part1 = Part96
Weld153.Parent = Part105
Weld153.C0 = CFrame.new(7.55082798, 1.42492437, -2.12493896, 0, -0.453989148, 0.891007304, 0, -0.891007304, -0.453989148, 1, 0, 0)
Weld153.Part0 = Part105
Weld153.Part1 = Part94
Weld153.part1 = Part94
Weld154.Parent = Part105
Weld154.C0 = CFrame.new(6.61249399, 0.0250110626, 4.27503586, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld154.Part0 = Part105
Weld154.Part1 = Part81
Weld154.part1 = Part81
Weld155.Parent = Part105
Weld155.C0 = CFrame.new(8.12342644, 1.08650923, -2.09717941, 2.10847091e-08, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -7.6109437e-08, -4.22219593e-08)
Weld155.Part0 = Part105
Weld155.Part1 = Part92
Weld155.part1 = Part92
Weld156.Parent = Part105
Weld156.C0 = CFrame.new(7.52977419, 1.38901806, -2.15270233, 0, -0.453989148, 0.891007304, 0, -0.891007304, -0.453989148, 1, 0, 0)
Weld156.Part0 = Part105
Weld156.Part1 = Part93
Weld156.part1 = Part93
Weld157.Parent = Part105
Weld157.C0 = CFrame.new(8.22238159, 1.03610802, -2.62466431, -0.891006887, -0.453989953, 0, 0.453989953, -0.891006887, 0, 0, 0, 1)
Weld157.Part0 = Part105
Weld157.Part1 = Part97
Weld157.part1 = Part97
Weld158.Parent = Part105
Weld158.C0 = CFrame.new(8.32133007, 0.985692978, -2.09718323, 2.10847091e-08, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -7.6109437e-08, -4.22219593e-08)
Weld158.Part0 = Part105
Weld158.Part1 = Part297
Weld158.part1 = Part297
Weld159.Parent = Part105
Weld159.C0 = CFrame.new(3.48509789, 1.84132624, -2.57493973, -0.500000238, -0.866025388, 0, 0.866025388, -0.500000238, 0, 0, 0, 1)
Weld159.Part0 = Part105
Weld159.Part1 = Part298
Weld159.part1 = Part298
Weld160.Parent = Part105
Weld160.C0 = CFrame.new(8.51921272, 0.884866238, -2.15270615, 2.10847091e-08, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -7.6109437e-08, -4.22219593e-08)
Weld160.Part0 = Part105
Weld160.Part1 = Part300
Weld160.part1 = Part300
Weld161.Parent = Part105
Weld161.C0 = CFrame.new(4.08749294, 1.52500105, 2.92505646, 0, -1, 0, 1, 0, -0, 0, 0, 1)
Weld161.Part0 = Part105
Weld161.Part1 = Part293
Weld161.part1 = Part293
Weld162.Parent = Part105
Weld162.C0 = CFrame.new(6.56249428, -2, 0.525032043, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld162.Part0 = Part105
Weld162.Part1 = Part101
Weld162.part1 = Part101
Weld163.Parent = Part105
Weld163.C0 = CFrame.new(6.76248407, 0.625064373, 0.575069427, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld163.Part0 = Part105
Weld163.Part1 = Part301
Weld163.part1 = Part301
Weld164.Parent = Part105
Weld164.C0 = CFrame.new(1.9625001, -1.79999971, -0.0624923706, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld164.Part0 = Part105
Weld164.Part1 = Part305
Weld164.part1 = Part305
Weld165.Parent = Part105
Weld165.C0 = CFrame.new(-5.01512289, 2.5029664, -2.32540512, -0.173647955, 0, 0.984807789, 0.984807789, 0, 0.173647955, 0, 1, 0)
Weld165.Part0 = Part105
Weld165.Part1 = Part321
Weld165.part1 = Part321
Weld166.Parent = Part105
Weld166.C0 = CFrame.new(6.73749399, -1.02499866, 0.525032043, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld166.Part0 = Part105
Weld166.Part1 = Part100
Weld166.part1 = Part100
Weld167.Parent = Part105
Weld167.C0 = CFrame.new(7.26250124, -0.525002956, 0.525005341, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld167.Part0 = Part105
Weld167.Part1 = Part296
Weld167.part1 = Part296
Weld168.Parent = Part105
Weld168.C0 = CFrame.new(5.76249599, 1.65004015, 4.0250206, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld168.Part0 = Part105
Weld168.Part1 = Part307
Weld168.part1 = Part307
Weld169.Parent = Part105
Weld169.C0 = CFrame.new(5.73749399, 1.09999704, 0.525032043, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Weld169.Part0 = Part105
Weld169.Part1 = Part95
Weld169.part1 = Part95
Weld170.Parent = Part105
Weld170.C0 = CFrame.new(-1.99431801, 1.53451204, 0.0207099915, 0, 0.965925336, 0.2588211, 0, -0.2588211, 0.965925336, 1, 0, 0)
Weld170.Part0 = Part105
Weld170.Part1 = Part78
Weld170.part1 = Part78
Weld171.Parent = Part105
Weld171.C0 = CFrame.new(6.63743019, 0.850006104, 0.524993896, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld171.Part0 = Part105
Weld171.Part1 = Part98
Weld171.part1 = Part98
Weld172.Parent = Part105
Weld172.C0 = CFrame.new(5.76249504, 1.65001202, -2.87495422, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld172.Part0 = Part105
Weld172.Part1 = Part308
Weld172.part1 = Part308
Weld173.Parent = Part105
Weld173.C0 = CFrame.new(0.499987006, -1.53750372, 2.20001984, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld173.Part0 = Part105
Weld173.Part1 = Part294
Weld173.part1 = Part294
Weld174.Parent = Part105
Weld174.C0 = CFrame.new(5.06249428, -1.99998474, 5.07501984, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld174.Part0 = Part105
Weld174.Part1 = Part80
Weld174.part1 = Part80
Weld175.Parent = Part105
Weld175.C0 = CFrame.new(-0.649996042, 0.300001144, 1.1125145, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld175.Part0 = Part105
Weld175.Part1 = Part90
Weld175.part1 = Part90
Weld176.Parent = Part105
Weld176.C0 = CFrame.new(-5.41830587, 2.43435431, 2.4451561, -0.173647955, 0, 0.984807789, 0.984807789, 0, 0.173647955, 0, 1, 0)
Weld176.Part0 = Part105
Weld176.Part1 = Part316
Weld176.part1 = Part316
Weld177.Parent = Part105
Weld177.C0 = CFrame.new(-4.77833271, 3.19857836, 2.4588089, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld177.Part0 = Part105
Weld177.Part1 = Part318
Weld177.part1 = Part318
Weld178.Parent = Part105
Weld178.C0 = CFrame.new(3.66360211, 1.85639429, -1.67494583, -0.342019916, -0.939692736, 0, 0.939692736, -0.342019886, 0, 0, 0, 1)
Weld178.Part0 = Part105
Weld178.Part1 = Part104
Weld178.part1 = Part104
Weld179.Parent = Part105
Weld179.C0 = CFrame.new(8.22237968, 1.03610897, -1.62522888, -0.891006887, -0.453989953, 0, 0.453989953, -0.891006887, 0, 0, 0, 1)
Weld179.Part0 = Part105
Weld179.Part1 = Part309
Weld179.part1 = Part309
Weld180.Parent = Part105
Weld180.C0 = CFrame.new(5.0625, -1.99998903, -4.02498245, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld180.Part0 = Part105
Weld180.Part1 = Part84
Weld180.part1 = Part84
Weld181.Parent = Part105
Weld181.C0 = CFrame.new(8.91497612, 0.683195114, -2.12494278, 0, -0.453989148, 0.891007304, 0, -0.891007304, -0.453989148, 1, 0, 0)
Weld181.Part0 = Part105
Weld181.Part1 = Part295
Weld181.part1 = Part295
Weld182.Parent = Part105
Weld182.C0 = CFrame.new(4.01249409, -1.5, 3.52503586, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld182.Part0 = Part105
Weld182.Part1 = Part82
Weld182.part1 = Part82
Weld183.Parent = Part105
Weld183.C0 = CFrame.new(8.93275642, 0.718089104, -2.12494278, 0, -0.453989148, 0.891007304, 0, -0.891007304, -0.453989148, 1, 0, 0)
Weld183.Part0 = Part105
Weld183.Part1 = Part299
Weld183.part1 = Part299
Weld184.Parent = Part105
Weld184.C0 = CFrame.new(-0.0999979973, -0.649998665, -0.0249938965, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld184.Part0 = Part105
Weld184.Part1 = Part75
Weld184.part1 = Part75
Weld185.Parent = Part105
Weld185.C0 = CFrame.new(-5.32371712, 4.41554785, 2.43899918, 0.258819908, -0.965925634, 0, -0.965925634, -0.258819908, 0, 0, 0, -1)
Weld185.Part0 = Part105
Weld185.Part1 = Part324
Weld185.part1 = Part324
Weld186.Parent = Part105
Weld186.C0 = CFrame.new(-5.02770376, 4.4680562, 2.43899918, 0.173647955, -0.984807789, 0, -0.984807789, -0.173647955, 0, 0, 0, -1)
Weld186.Part0 = Part105
Weld186.Part1 = Part326
Weld186.part1 = Part326
Weld187.Parent = Part105
Weld187.C0 = CFrame.new(-5.43758917, 4.38342237, 2.43899918, 0.342019022, -0.939693093, 0, -0.939693093, -0.342018992, 0, 0, 0, -1)
Weld187.Part0 = Part105
Weld187.Part1 = Part328
Weld187.part1 = Part328
Weld188.Parent = Part105
Weld188.C0 = CFrame.new(-5.63104391, 4.20436239, 2.43899918, -0.906306982, 0.422619998, 0, 0.422619998, 0.906306982, 0, 0, 0, -1)
Weld188.Part0 = Part105
Weld188.Part1 = Part330
Weld188.part1 = Part330
Weld189.Parent = Part105
Weld189.C0 = CFrame.new(-5.58517599, 4.27264833, 2.43900681, -0.76604414, 0.642788053, 0, 0.642788053, 0.76604414, 0, 0, 0, -1)
Weld189.Part0 = Part105
Weld189.Part1 = Part332
Weld189.part1 = Part332
Weld190.Parent = Part105
Weld190.C0 = CFrame.new(-5.65847588, 4.11169386, 2.43899918, -0.984807789, 0.173647955, 0, 0.173647955, 0.984807789, 0, 0, 0, -1)
Weld190.Part0 = Part105
Weld190.Part1 = Part334
Weld190.part1 = Part334
Weld191.Parent = Part105
Weld191.C0 = CFrame.new(-5.51645803, 4.34103823, 2.43899536, -0.573576152, 0.819152296, 0, 0.819152296, 0.573576152, 0, 0, 0, -1)
Weld191.Part0 = Part105
Weld191.Part1 = Part336
Weld191.part1 = Part336
Weld192.Parent = Part105
Weld192.C0 = CFrame.new(-5.63046074, 3.68392038, 2.43899918, -0.99619478, -0.0871549696, 0, -0.087154977, 0.99619478, 0, 0, 0, -1)
Weld192.Part0 = Part105
Weld192.Part1 = Part35
Weld192.part1 = Part35
Weld193.Parent = Part105
Weld193.C0 = CFrame.new(-4.90778875, 4.50093222, -2.33626175, 0.258819908, -0.965925634, 0, -0.965925634, -0.258819908, 0, 0, 0, -1)
Weld193.Part0 = Part105
Weld193.Part1 = Part338
Weld193.part1 = Part338
Weld194.Parent = Part105
Weld194.C0 = CFrame.new(-4.61177588, 4.55344439, -2.33625412, 0.173647955, -0.984807789, 0, -0.984807789, -0.173647955, 0, 0, 0, -1)
Weld194.Part0 = Part105
Weld194.Part1 = Part340
Weld194.part1 = Part340
Weld195.Parent = Part105
Weld195.C0 = CFrame.new(-5.02166176, 4.46880865, -2.33625412, 0.342019022, -0.939693093, 0, -0.939693093, -0.342018992, 0, 0, 0, -1)
Weld195.Part0 = Part105
Weld195.Part1 = Part342
Weld195.part1 = Part342
Weld196.Parent = Part105
Weld196.C0 = CFrame.new(-5.21511602, 4.28974771, -2.33626175, -0.906306982, 0.422619998, 0, 0.422619998, 0.906306982, 0, 0, 0, -1)
Weld196.Part0 = Part105
Weld196.Part1 = Part344
Weld196.part1 = Part344
Weld197.Parent = Part105
Weld197.C0 = CFrame.new(-5.1692481, 4.35802984, -2.33625412, -0.76604414, 0.642788053, 0, 0.642788053, 0.76604414, 0, 0, 0, -1)
Weld197.Part0 = Part105
Weld197.Part1 = Part346
Weld197.part1 = Part346
Weld198.Parent = Part105
Weld198.C0 = CFrame.new(-5.24254799, 4.19707823, -2.33625412, -0.984807789, 0.173647955, 0, 0.173647955, 0.984807789, 0, 0, 0, -1)
Weld198.Part0 = Part105
Weld198.Part1 = Part348
Weld198.part1 = Part348
Weld199.Parent = Part105
Weld199.C0 = CFrame.new(-5.10053015, 4.42642832, -2.33626175, -0.573576152, 0.819152296, 0, 0.819152296, 0.573576152, 0, 0, 0, -1)
Weld199.Part0 = Part105
Weld199.Part1 = Part350
Weld199.part1 = Part350
Weld200.Parent = Part105
Weld200.C0 = CFrame.new(-5.21453285, 3.76930571, -2.33625412, -0.99619478, -0.0871549696, 0, -0.087154977, 0.99619478, 0, 0, 0, -1)
Weld200.Part0 = Part105
Weld200.Part1 = Part58
Weld200.part1 = Part58
Weld201.Parent = Part105
Weld201.C0 = CFrame.new(-5.11668205, 4.46352434, -0.0345306396, 0.258819908, -0.965925634, 0, -0.965925634, -0.258819908, 0, 0, 0, -1)
Weld201.Part0 = Part105
Weld201.Part1 = Part352
Weld201.part1 = Part352
Weld202.Parent = Part105
Weld202.C0 = CFrame.new(-4.82066917, 4.51603842, -0.0345230103, 0.173647955, -0.984807789, 0, -0.984807789, -0.173647955, 0, 0, 0, -1)
Weld202.Part0 = Part105
Weld202.Part1 = Part354
Weld202.part1 = Part354
Weld203.Parent = Part105
Weld203.C0 = CFrame.new(-5.2305541, 4.43140173, -0.0345230103, 0.342019022, -0.939693093, 0, -0.939693093, -0.342018992, 0, 0, 0, -1)
Weld203.Part0 = Part105
Weld203.Part1 = Part356
Weld203.part1 = Part356
Weld204.Parent = Part105
Weld204.C0 = CFrame.new(-5.42400885, 4.25234175, -0.0345306396, -0.906306982, 0.422619998, 0, 0.422619998, 0.906306982, 0, 0, 0, -1)
Weld204.Part0 = Part105
Weld204.Part1 = Part358
Weld204.part1 = Part358
Weld205.Parent = Part105
Weld205.C0 = CFrame.new(-5.37814093, 4.32061625, -0.0345230103, -0.76604414, 0.642788053, 0, 0.642788053, 0.76604414, 0, 0, 0, -1)
Weld205.Part0 = Part105
Weld205.Part1 = Part360
Weld205.part1 = Part360
Weld206.Parent = Part105
Weld206.C0 = CFrame.new(-5.45144081, 4.15967035, -0.0345230103, -0.984807789, 0.173647955, 0, 0.173647955, 0.984807789, 0, 0, 0, -1)
Weld206.Part0 = Part105
Weld206.Part1 = Part362
Weld206.part1 = Part362
Weld207.Parent = Part105
Weld207.C0 = CFrame.new(-5.30942297, 4.38902044, -0.0345306396, -0.573576152, 0.819152296, 0, 0.819152296, 0.573576152, 0, 0, 0, -1)
Weld207.Part0 = Part105
Weld207.Part1 = Part364
Weld207.part1 = Part364
Weld208.Parent = Part105
Weld208.C0 = CFrame.new(-5.42342472, 3.7318902, -0.0345230103, -0.99619478, -0.0871549696, 0, -0.087154977, 0.99619478, 0, 0, 0, -1)
Weld208.Part0 = Part105
Weld208.Part1 = Part63
Weld208.part1 = Part63
Weld209.Parent = Part105
Weld209.C0 = CFrame.new(-2.93285513, 4.81733847, 3.02297974, 0.17298609, 0.0151330382, -0.984808087, -0.981060505, -0.0858332142, -0.173646748, -0.0871570483, 0.996194661, -1.52693917e-06)
Weld209.Part0 = Part105
Weld209.Part1 = Part367
Weld209.part1 = Part367
Weld210.Parent = Part105
Weld210.C0 = CFrame.new(-2.93290901, 4.8176465, 2.72234726, 0.173647955, 0, -0.984807789, -0.984807789, 0, -0.173647955, 0, 1, 0)
Weld210.Part0 = Part105
Weld210.Part1 = Part369
Weld210.part1 = Part369
Weld211.Parent = Part105
Weld211.C0 = CFrame.new(-2.93079472, 4.80564833, 3.14069366, 0.17101106, 0.03015301, -0.98480767, -0.969846368, -0.171009064, -0.173649028, -0.173647061, 0.984808028, -6.52566314e-07)
Weld211.Part0 = Part105
Weld211.Part1 = Part371
Weld211.part1 = Part371
Weld212.Parent = Part105
Weld212.C0 = CFrame.new(-2.90600777, 4.66506815, 3.3623085, -0.0996010602, -0.142245874, -0.984807491, 0.564863384, 0.806706369, -0.173649818, 0.819151461, -0.573577344, 6.71538146e-07)
Weld212.Part0 = Part105
Weld212.Part1 = Part373
Weld212.part1 = Part373
Weld213.Parent = Part105
Weld213.C0 = CFrame.new(-2.91629982, 4.72345591, 3.30527878, -0.13302201, -0.111618929, -0.984807789, 0.754407108, 0.633021593, -0.17364803, 0.642787039, -0.766045034, 3.03088626e-07)
Weld213.Part0 = Part105
Weld213.Part1 = Part375
Weld213.part1 = Part375
Weld214.Parent = Part105
Weld214.C0 = CFrame.new(-2.89098501, 4.57989645, 3.40541077, -0.0593920015, -0.163175032, -0.984807909, 0.336822987, 0.925417185, -0.173647612, 0.939692974, -0.34201926, -1.28277475e-06)
Weld214.Part0 = Part105
Weld214.Part1 = Part377
Weld214.part1 = Part377
Weld215.Parent = Part105
Weld215.C0 = CFrame.new(-2.92592812, 4.77804232, 3.22572708, -0.157377958, -0.0733878613, -0.984807789, 0.892538786, 0.416198194, -0.173647925, 0.422618896, -0.906307518, 1.0923975e-06)
Weld215.Part0 = Part105
Weld215.Part1 = Part379
Weld215.part1 = Part379
Weld216.Parent = Part105
Weld216.C0 = CFrame.new(-2.81698799, 4.16022444, 3.45210648, -0.0151359979, -0.172988057, -0.98480767, 0.0858299956, 0.981060326, -0.173648968, 0.996194899, -0.087154381, -1.76389085e-06)
Weld216.Part0 = Part105
Weld216.Part1 = Part25
Weld216.part1 = Part25

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
StringValue1 = Instance.new("StringValue")
LocalScript2 = Instance.new("LocalScript")
ObjectValue3 = Instance.new("ObjectValue")
NumberValue4 = Instance.new("NumberValue")
NumberValue5 = Instance.new("NumberValue")
NumberValue6 = Instance.new("NumberValue")
NumberValue7 = Instance.new("NumberValue")
NumberValue8 = Instance.new("NumberValue")
LocalScript9 = Instance.new("LocalScript")
StringValue10 = Instance.new("StringValue")
LocalScript11 = Instance.new("LocalScript")
StringValue12 = Instance.new("StringValue")
LocalScript13 = Instance.new("LocalScript")
StringValue14 = Instance.new("StringValue")
LocalScript15 = Instance.new("LocalScript")
ObjectValue16 = Instance.new("ObjectValue")
StringValue17 = Instance.new("StringValue")
ModuleScript18 = Instance.new("ModuleScript")
LocalScript19 = Instance.new("LocalScript")
ObjectValue20 = Instance.new("ObjectValue")
ModuleScript21 = Instance.new("ModuleScript")
ModuleScript22 = Instance.new("ModuleScript")
Model23 = Instance.new("Model")
Part24 = Instance.new("Part")
Part25 = Instance.new("Part")
CylinderMesh26 = Instance.new("CylinderMesh")
Part27 = Instance.new("Part")
MeshPart28 = Instance.new("MeshPart")
MeshPart29 = Instance.new("MeshPart")
Part30 = Instance.new("Part")
CylinderMesh31 = Instance.new("CylinderMesh")
Part32 = Instance.new("Part")
MeshPart33 = Instance.new("MeshPart")
MeshPart34 = Instance.new("MeshPart")
Part35 = Instance.new("Part")
CylinderMesh36 = Instance.new("CylinderMesh")
MeshPart37 = Instance.new("MeshPart")
Part38 = Instance.new("Part")
Part39 = Instance.new("Part")
Part40 = Instance.new("Part")
Part41 = Instance.new("Part")
Part42 = Instance.new("Part")
Part43 = Instance.new("Part")
Part44 = Instance.new("Part")
Part45 = Instance.new("Part")
Part46 = Instance.new("Part")
Part47 = Instance.new("Part")
Part48 = Instance.new("Part")
Part49 = Instance.new("Part")
Part50 = Instance.new("Part")
Part51 = Instance.new("Part")
Part52 = Instance.new("Part")
Part53 = Instance.new("Part")
Part54 = Instance.new("Part")
Part55 = Instance.new("Part")
Part56 = Instance.new("Part")
Part57 = Instance.new("Part")
Part58 = Instance.new("Part")
CylinderMesh59 = Instance.new("CylinderMesh")
Part60 = Instance.new("Part")
Part61 = Instance.new("Part")
Part62 = Instance.new("Part")
Part63 = Instance.new("Part")
CylinderMesh64 = Instance.new("CylinderMesh")
Part65 = Instance.new("Part")
Part66 = Instance.new("Part")
Part67 = Instance.new("Part")
Part68 = Instance.new("Part")
Part69 = Instance.new("Part")
Part70 = Instance.new("Part")
Part71 = Instance.new("Part")
Part72 = Instance.new("Part")
Part73 = Instance.new("Part")
Part74 = Instance.new("Part")
Part75 = Instance.new("Part")
Part76 = Instance.new("Part")
Part77 = Instance.new("Part")
Part78 = Instance.new("Part")
Part79 = Instance.new("Part")
Part80 = Instance.new("Part")
Part81 = Instance.new("Part")
Part82 = Instance.new("Part")
Part83 = Instance.new("Part")
Part84 = Instance.new("Part")
Part85 = Instance.new("Part")
Part86 = Instance.new("Part")
Part87 = Instance.new("Part")
Part88 = Instance.new("Part")
Part89 = Instance.new("Part")
Part90 = Instance.new("Part")
Part91 = Instance.new("Part")
Part92 = Instance.new("Part")
Part93 = Instance.new("Part")
Part94 = Instance.new("Part")
Part95 = Instance.new("Part")
Part96 = Instance.new("Part")
Part97 = Instance.new("Part")
Part98 = Instance.new("Part")
Part99 = Instance.new("Part")
Part100 = Instance.new("Part")
Part101 = Instance.new("Part")
Part102 = Instance.new("Part")
Part103 = Instance.new("Part")
Part104 = Instance.new("Part")
Part105 = Instance.new("Part")
Weld106 = Instance.new("Weld")
Weld107 = Instance.new("Weld")
Weld108 = Instance.new("Weld")
Weld109 = Instance.new("Weld")
Weld110 = Instance.new("Weld")
Weld111 = Instance.new("Weld")
Weld112 = Instance.new("Weld")
Weld113 = Instance.new("Weld")
Weld114 = Instance.new("Weld")
Weld115 = Instance.new("Weld")
Weld116 = Instance.new("Weld")
Weld117 = Instance.new("Weld")
Weld118 = Instance.new("Weld")
Weld119 = Instance.new("Weld")
Weld120 = Instance.new("Weld")
Weld121 = Instance.new("Weld")
Weld122 = Instance.new("Weld")
Weld123 = Instance.new("Weld")
Weld124 = Instance.new("Weld")
Weld125 = Instance.new("Weld")
Weld126 = Instance.new("Weld")
Weld127 = Instance.new("Weld")
Weld128 = Instance.new("Weld")
Weld129 = Instance.new("Weld")
Weld130 = Instance.new("Weld")
Weld131 = Instance.new("Weld")
Weld132 = Instance.new("Weld")
Weld133 = Instance.new("Weld")
Weld134 = Instance.new("Weld")
Weld135 = Instance.new("Weld")
Weld136 = Instance.new("Weld")
Weld137 = Instance.new("Weld")
Weld138 = Instance.new("Weld")
Weld139 = Instance.new("Weld")
Weld140 = Instance.new("Weld")
Weld141 = Instance.new("Weld")
Weld142 = Instance.new("Weld")
Weld143 = Instance.new("Weld")
Weld144 = Instance.new("Weld")
Weld145 = Instance.new("Weld")
Weld146 = Instance.new("Weld")
Weld147 = Instance.new("Weld")
Weld148 = Instance.new("Weld")
Weld149 = Instance.new("Weld")
Weld150 = Instance.new("Weld")
Weld151 = Instance.new("Weld")
Weld152 = Instance.new("Weld")
Weld153 = Instance.new("Weld")
Weld154 = Instance.new("Weld")
Weld155 = Instance.new("Weld")
Weld156 = Instance.new("Weld")
Weld157 = Instance.new("Weld")
Weld158 = Instance.new("Weld")
Weld159 = Instance.new("Weld")
Weld160 = Instance.new("Weld")
Weld161 = Instance.new("Weld")
Weld162 = Instance.new("Weld")
Weld163 = Instance.new("Weld")
Weld164 = Instance.new("Weld")
Weld165 = Instance.new("Weld")
Weld166 = Instance.new("Weld")
Weld167 = Instance.new("Weld")
Weld168 = Instance.new("Weld")
Weld169 = Instance.new("Weld")
Weld170 = Instance.new("Weld")
Weld171 = Instance.new("Weld")
Weld172 = Instance.new("Weld")
Weld173 = Instance.new("Weld")
Weld174 = Instance.new("Weld")
Weld175 = Instance.new("Weld")
Weld176 = Instance.new("Weld")
Weld177 = Instance.new("Weld")
Weld178 = Instance.new("Weld")
Weld179 = Instance.new("Weld")
Weld180 = Instance.new("Weld")
Weld181 = Instance.new("Weld")
Weld182 = Instance.new("Weld")
Weld183 = Instance.new("Weld")
Weld184 = Instance.new("Weld")
Weld185 = Instance.new("Weld")
Weld186 = Instance.new("Weld")
Weld187 = Instance.new("Weld")
Weld188 = Instance.new("Weld")
Weld189 = Instance.new("Weld")
Weld190 = Instance.new("Weld")
Weld191 = Instance.new("Weld")
Weld192 = Instance.new("Weld")
Weld193 = Instance.new("Weld")
Weld194 = Instance.new("Weld")
Weld195 = Instance.new("Weld")
Weld196 = Instance.new("Weld")
Weld197 = Instance.new("Weld")
Weld198 = Instance.new("Weld")
Weld199 = Instance.new("Weld")
Weld200 = Instance.new("Weld")
Weld201 = Instance.new("Weld")
Weld202 = Instance.new("Weld")
Weld203 = Instance.new("Weld")
Weld204 = Instance.new("Weld")
Weld205 = Instance.new("Weld")
Weld206 = Instance.new("Weld")
Weld207 = Instance.new("Weld")
Weld208 = Instance.new("Weld")
Weld209 = Instance.new("Weld")
Weld210 = Instance.new("Weld")
Weld211 = Instance.new("Weld")
Weld212 = Instance.new("Weld")
Weld213 = Instance.new("Weld")
Weld214 = Instance.new("Weld")
Weld215 = Instance.new("Weld")
Weld216 = Instance.new("Weld")
Weld217 = Instance.new("Weld")
Weld218 = Instance.new("Weld")
Weld219 = Instance.new("Weld")
Weld220 = Instance.new("Weld")
Weld221 = Instance.new("Weld")
Weld222 = Instance.new("Weld")
Weld223 = Instance.new("Weld")
Weld224 = Instance.new("Weld")
Weld225 = Instance.new("Weld")
Weld226 = Instance.new("Weld")
Weld227 = Instance.new("Weld")
Weld228 = Instance.new("Weld")
Weld229 = Instance.new("Weld")
Weld230 = Instance.new("Weld")
Weld231 = Instance.new("Weld")
Weld232 = Instance.new("Weld")
Weld233 = Instance.new("Weld")
Weld234 = Instance.new("Weld")
Weld235 = Instance.new("Weld")
Weld236 = Instance.new("Weld")
Weld237 = Instance.new("Weld")
Weld238 = Instance.new("Weld")
Weld239 = Instance.new("Weld")
Weld240 = Instance.new("Weld")
Weld241 = Instance.new("Weld")
Weld242 = Instance.new("Weld")
Weld243 = Instance.new("Weld")
Weld244 = Instance.new("Weld")
Weld245 = Instance.new("Weld")
Weld246 = Instance.new("Weld")
Weld247 = Instance.new("Weld")
Weld248 = Instance.new("Weld")
Weld249 = Instance.new("Weld")
Weld250 = Instance.new("Weld")
Weld251 = Instance.new("Weld")
Weld252 = Instance.new("Weld")
Weld253 = Instance.new("Weld")
Weld254 = Instance.new("Weld")
Weld255 = Instance.new("Weld")
Weld256 = Instance.new("Weld")
Weld257 = Instance.new("Weld")
Weld258 = Instance.new("Weld")
Weld259 = Instance.new("Weld")
Weld260 = Instance.new("Weld")
Weld261 = Instance.new("Weld")
Weld262 = Instance.new("Weld")
Weld263 = Instance.new("Weld")
Weld264 = Instance.new("Weld")
Weld265 = Instance.new("Weld")
Weld266 = Instance.new("Weld")
Weld267 = Instance.new("Weld")
Weld268 = Instance.new("Weld")
Weld269 = Instance.new("Weld")
Weld270 = Instance.new("Weld")
Weld271 = Instance.new("Weld")
Weld272 = Instance.new("Weld")
Weld273 = Instance.new("Weld")
Weld274 = Instance.new("Weld")
Weld275 = Instance.new("Weld")
Weld276 = Instance.new("Weld")
Weld277 = Instance.new("Weld")
Weld278 = Instance.new("Weld")
Weld279 = Instance.new("Weld")
Weld280 = Instance.new("Weld")
Weld281 = Instance.new("Weld")
Weld282 = Instance.new("Weld")
Weld283 = Instance.new("Weld")
Weld284 = Instance.new("Weld")
Weld285 = Instance.new("Weld")
Weld286 = Instance.new("Weld")
Weld287 = Instance.new("Weld")
Weld288 = Instance.new("Weld")
Weld289 = Instance.new("Weld")
Weld290 = Instance.new("Weld")
Weld291 = Instance.new("Weld")
Weld292 = Instance.new("Weld")
Part293 = Instance.new("Part")
Part294 = Instance.new("Part")
Part295 = Instance.new("Part")
Part296 = Instance.new("Part")
Part297 = Instance.new("Part")
Part298 = Instance.new("Part")
Part299 = Instance.new("Part")
Part300 = Instance.new("Part")
Part301 = Instance.new("Part")
Part302 = Instance.new("Part")
Part303 = Instance.new("Part")
Part304 = Instance.new("Part")
Part305 = Instance.new("Part")
Part306 = Instance.new("Part")
Part307 = Instance.new("Part")
Part308 = Instance.new("Part")
Part309 = Instance.new("Part")
Part310 = Instance.new("Part")
WedgePart311 = Instance.new("WedgePart")
WedgePart312 = Instance.new("WedgePart")
WedgePart313 = Instance.new("WedgePart")
WedgePart314 = Instance.new("WedgePart")
WedgePart315 = Instance.new("WedgePart")
Part316 = Instance.new("Part")
Part317 = Instance.new("Part")
Part318 = Instance.new("Part")
WedgePart319 = Instance.new("WedgePart")
WedgePart320 = Instance.new("WedgePart")
Part321 = Instance.new("Part")
WedgePart322 = Instance.new("WedgePart")
Part323 = Instance.new("Part")
Part324 = Instance.new("Part")
CylinderMesh325 = Instance.new("CylinderMesh")
Part326 = Instance.new("Part")
CylinderMesh327 = Instance.new("CylinderMesh")
Part328 = Instance.new("Part")
CylinderMesh329 = Instance.new("CylinderMesh")
Part330 = Instance.new("Part")
CylinderMesh331 = Instance.new("CylinderMesh")
Part332 = Instance.new("Part")
CylinderMesh333 = Instance.new("CylinderMesh")
Part334 = Instance.new("Part")
CylinderMesh335 = Instance.new("CylinderMesh")
Part336 = Instance.new("Part")
CylinderMesh337 = Instance.new("CylinderMesh")
Part338 = Instance.new("Part")
CylinderMesh339 = Instance.new("CylinderMesh")
Part340 = Instance.new("Part")
CylinderMesh341 = Instance.new("CylinderMesh")
Part342 = Instance.new("Part")
CylinderMesh343 = Instance.new("CylinderMesh")
Part344 = Instance.new("Part")
CylinderMesh345 = Instance.new("CylinderMesh")
Part346 = Instance.new("Part")
CylinderMesh347 = Instance.new("CylinderMesh")
Part348 = Instance.new("Part")
CylinderMesh349 = Instance.new("CylinderMesh")
Part350 = Instance.new("Part")
CylinderMesh351 = Instance.new("CylinderMesh")
Part352 = Instance.new("Part")
CylinderMesh353 = Instance.new("CylinderMesh")
Part354 = Instance.new("Part")
CylinderMesh355 = Instance.new("CylinderMesh")
Part356 = Instance.new("Part")
CylinderMesh357 = Instance.new("CylinderMesh")
Part358 = Instance.new("Part")
CylinderMesh359 = Instance.new("CylinderMesh")
Part360 = Instance.new("Part")
CylinderMesh361 = Instance.new("CylinderMesh")
Part362 = Instance.new("Part")
CylinderMesh363 = Instance.new("CylinderMesh")
Part364 = Instance.new("Part")
CylinderMesh365 = Instance.new("CylinderMesh")
MeshPart366 = Instance.new("MeshPart")
Part367 = Instance.new("Part")
CylinderMesh368 = Instance.new("CylinderMesh")
Part369 = Instance.new("Part")
CylinderMesh370 = Instance.new("CylinderMesh")
Part371 = Instance.new("Part")
CylinderMesh372 = Instance.new("CylinderMesh")
Part373 = Instance.new("Part")
CylinderMesh374 = Instance.new("CylinderMesh")
Part375 = Instance.new("Part")
CylinderMesh376 = Instance.new("CylinderMesh")
Part377 = Instance.new("Part")
CylinderMesh378 = Instance.new("CylinderMesh")
Part379 = Instance.new("Part")
CylinderMesh380 = Instance.new("CylinderMesh")
Part381 = Instance.new("Part")
CylinderMesh382 = Instance.new("CylinderMesh")
Part383 = Instance.new("Part")
CylinderMesh384 = Instance.new("CylinderMesh")
Part385 = Instance.new("Part")
CylinderMesh386 = Instance.new("CylinderMesh")
Part387 = Instance.new("Part")
CylinderMesh388 = Instance.new("CylinderMesh")
Part389 = Instance.new("Part")
CylinderMesh390 = Instance.new("CylinderMesh")
Part391 = Instance.new("Part")
CylinderMesh392 = Instance.new("CylinderMesh")
Part393 = Instance.new("Part")
CylinderMesh394 = Instance.new("CylinderMesh")
Part395 = Instance.new("Part")
Part396 = Instance.new("Part")
Part397 = Instance.new("Part")
Part398 = Instance.new("Part")
Part399 = Instance.new("Part")
Part400 = Instance.new("Part")
Part401 = Instance.new("Part")
Part402 = Instance.new("Part")
Part403 = Instance.new("Part")
Part404 = Instance.new("Part")
Part405 = Instance.new("Part")
Part406 = Instance.new("Part")
Part407 = Instance.new("Part")
Part408 = Instance.new("Part")
Part409 = Instance.new("Part")
Part410 = Instance.new("Part")
Part411 = Instance.new("Part")
Part412 = Instance.new("Part")
Part413 = Instance.new("Part")
Part414 = Instance.new("Part")
Part415 = Instance.new("Part")
Part416 = Instance.new("Part")
Part417 = Instance.new("Part")
Part418 = Instance.new("Part")
Part419 = Instance.new("Part")
Part420 = Instance.new("Part")
Part421 = Instance.new("Part")
Part422 = Instance.new("Part")
Part423 = Instance.new("Part")
Part424 = Instance.new("Part")
Part425 = Instance.new("Part")
Part426 = Instance.new("Part")
Part427 = Instance.new("Part")
Part428 = Instance.new("Part")
Part429 = Instance.new("Part")
Part430 = Instance.new("Part")
Part431 = Instance.new("Part")
Part432 = Instance.new("Part")
Part433 = Instance.new("Part")
Part434 = Instance.new("Part")
Part435 = Instance.new("Part")
Part436 = Instance.new("Part")
Part437 = Instance.new("Part")
Part438 = Instance.new("Part")
Model439 = Instance.new("Model")
Part440 = Instance.new("Part")
UnionOperation441 = Instance.new("UnionOperation")
UnionOperation442 = Instance.new("UnionOperation")
Weld443 = Instance.new("Weld")
Weld444 = Instance.new("Weld")
Part445 = Instance.new("Part")
UnionOperation446 = Instance.new("UnionOperation")
UnionOperation447 = Instance.new("UnionOperation")
Weld448 = Instance.new("Weld")
Weld449 = Instance.new("Weld")
Part450 = Instance.new("Part")
UnionOperation451 = Instance.new("UnionOperation")
UnionOperation452 = Instance.new("UnionOperation")
Weld453 = Instance.new("Weld")
Weld454 = Instance.new("Weld")
Part455 = Instance.new("Part")
SpecialMesh456 = Instance.new("SpecialMesh")
Decal457 = Instance.new("Decal")
UnionOperation458 = Instance.new("UnionOperation")
UnionOperation459 = Instance.new("UnionOperation")
UnionOperation460 = Instance.new("UnionOperation")
UnionOperation461 = Instance.new("UnionOperation")
Part462 = Instance.new("Part")
SpecialMesh463 = Instance.new("SpecialMesh")
Decal464 = Instance.new("Decal")
Weld465 = Instance.new("Weld")
Weld466 = Instance.new("Weld")
Weld467 = Instance.new("Weld")
Weld468 = Instance.new("Weld")
Weld469 = Instance.new("Weld")
Part470 = Instance.new("Part")
Motor6D471 = Instance.new("Motor6D")
Part472 = Instance.new("Part")
Motor6D473 = Instance.new("Motor6D")
Motor6D474 = Instance.new("Motor6D")
Motor6D475 = Instance.new("Motor6D")
Motor6D476 = Instance.new("Motor6D")
Motor6D477 = Instance.new("Motor6D")
UnionOperation478 = Instance.new("UnionOperation")
UnionOperation479 = Instance.new("UnionOperation")
UnionOperation480 = Instance.new("UnionOperation")
UnionOperation481 = Instance.new("UnionOperation")
UnionOperation482 = Instance.new("UnionOperation")
UnionOperation483 = Instance.new("UnionOperation")
UnionOperation484 = Instance.new("UnionOperation")
Weld485 = Instance.new("Weld")
Weld486 = Instance.new("Weld")
Weld487 = Instance.new("Weld")
Weld488 = Instance.new("Weld")
Weld489 = Instance.new("Weld")
Weld490 = Instance.new("Weld")
Weld491 = Instance.new("Weld")
Part492 = Instance.new("Part")
UnionOperation493 = Instance.new("UnionOperation")
UnionOperation494 = Instance.new("UnionOperation")
Weld495 = Instance.new("Weld")
Weld496 = Instance.new("Weld")
BoolValue497 = Instance.new("BoolValue")
ScreenGui498 = Instance.new("ScreenGui")
Frame499 = Instance.new("Frame")
ImageLabel500 = Instance.new("ImageLabel")
ImageLabel501 = Instance.new("ImageLabel")
Frame502 = Instance.new("Frame")
Frame503 = Instance.new("Frame")
Frame504 = Instance.new("Frame")
Frame505 = Instance.new("Frame")
ImageLabel506 = Instance.new("ImageLabel")
TextLabel507 = Instance.new("TextLabel")
ScreenGui508 = Instance.new("ScreenGui")
Frame509 = Instance.new("Frame")
TextLabel510 = Instance.new("TextLabel")
TextLabel511 = Instance.new("TextLabel")
TextLabel512 = Instance.new("TextLabel")
TextLabel513 = Instance.new("TextLabel")
TextLabel514 = Instance.new("TextLabel")
TextLabel515 = Instance.new("TextLabel")
TextLabel516 = Instance.new("TextLabel")
TextLabel517 = Instance.new("TextLabel")
TextLabel518 = Instance.new("TextLabel")
Folder0.Name = "script"
Folder0.Parent = mas
StringValue1.Name = "PLR"
StringValue1.Parent = Folder0
LocalScript2.Name = "ClientSound"
table.insert(cors,sandbox(LocalScript2,function()
	local pt = script:WaitForChild("SoundParent")
	local si = script:WaitForChild("SoundID")
	local vo = script:WaitForChild("SoundVolume")
	local pi = script:WaitForChild("SoundPitch")
	local dt = script:WaitForChild("DestroyTime")
	local tpo = script:WaitForChild("TimePos")

	local snd = Instance.new("Sound")
	snd.Parent = pt.Value
	snd.SoundId = "rbxassetid://" ..si.Value
	snd.Volume = vo.Value
	snd.Pitch = pi.Value
	snd.TimePosition = tpo.Value
	snd:Play()

	game:GetService("Debris"):AddItem(snd, dt.Value)
	game:GetService("Debris"):AddItem(script, dt.Value)
end))
LocalScript2.Disabled = true
ObjectValue3.Name = "SoundParent"
ObjectValue3.Parent = LocalScript2
NumberValue4.Name = "SoundID"
NumberValue4.Parent = LocalScript2
NumberValue5.Name = "SoundVolume"
NumberValue5.Parent = LocalScript2
NumberValue6.Name = "SoundPitch"
NumberValue6.Parent = LocalScript2
NumberValue6.Value = 1
NumberValue7.Name = "DestroyTime"
NumberValue7.Parent = LocalScript2
NumberValue7.Value = 1
NumberValue8.Name = "TimePos"
NumberValue8.Parent = LocalScript2
LocalScript9.Name = "ColorCorrection"
table.insert(cors,sandbox(LocalScript9,function()
	local StandName = script:WaitForChild("StandName")
	local Player = game:GetService("Players").LocalPlayer

	function TimeStopLighting()
		local Camera = workspace.CurrentCamera
		local CurrentFOV = Camera.FieldOfView
		local Humanoid = Player.Character:FindFirstChildOfClass("Humanoid")
		local TimeStopColor = Instance.new("ColorCorrectionEffect")
		TimeStopColor.Name = StandName.Value.."'s Time Stop Effect"
		TimeStopColor.Parent = game:GetService("Lighting")
		TimeStopColor.Brightness = -0.7
		TimeStopColor.Contrast = 0
		TimeStopColor.Saturation = 1
		game:GetService("Debris"):AddItem(TimeStopColor, 25)
		coroutine.resume(coroutine.create(function()
			for i = 1, 25 do
				Camera.FieldOfView = CurrentFOV+(i*2)
				Humanoid.CameraOffset = Vector3.new(math.random(-17,17)/(-i/2), math.random(-17,17)/(-i/2), math.random(-17,17)/10)
				wait()
			end
			for i = 1, 10 do
				Camera.FieldOfView = 120-(i*5)
				Humanoid.CameraOffset = Vector3.new(math.random(-25,25)/(-i), math.random(-25,25)/(-i), math.random(-12,12)/10)
				wait()
			end
			Camera.FieldOfView = CurrentFOV
			Humanoid.CameraOffset = Vector3.new(0,0,0)
		end))
		coroutine.resume(coroutine.create(function()
			for i = 1, 10 do
				TimeStopColor.Contrast = -1-(i/10)
				TimeStopColor.Brightness = TimeStopColor.Brightness +0.077
				wait(0.054)
			end
			TimeStopColor.TintColor = Color3.fromRGB(127, 127, 127)
			for i = 1, 10 do
				TimeStopColor.Contrast = -1+(i/10)
				TimeStopColor.Brightness = TimeStopColor.Brightness -0.01
				TimeStopColor.Saturation = TimeStopColor.Saturation - 0.2
				wait(0.053)
			end
		end))
	end

	TimeStopLighting()

	while wait() do
		if game:GetService("Lighting"):FindFirstChild(StandName.Value.."'s Time Resume Effect") then
			game:GetService("Lighting")[StandName.Value.."'s Time Resume Effect"]:Destroy()
		end
	end 
end))
LocalScript9.Disabled = true
StringValue10.Name = "StandName"
StringValue10.Parent = LocalScript9
LocalScript11.Name = "RemoveColorCorrection"
table.insert(cors,sandbox(LocalScript11,function()
	local StandName = script:WaitForChild("StandName")

	if game:GetService("Lighting"):FindFirstChild(StandName.Value.."'s Time Resume Effect") then
		game:GetService("Lighting")[StandName.Value.."'s Time Resume Effect"]:Destroy()
	end

	local Blur = Instance.new("BlurEffect")
	Blur.Parent = game:GetService("Lighting")
	Blur.Size = 0 
	Blur.Name = StandName.Value.."'s Time Resume Effect"
	game:GetService("Debris"):AddItem(Blur, 2.85)
	coroutine.resume(coroutine.create(function()
		for i = 1, 25 do
			Blur.Size = i
			wait(0.035)
		end
		for i = 1, 25 do
			Blur.Size = Blur.Size - 1
			wait(0.015)
		end
		Blur:Destroy()
	end))
	while wait() do
		if game:GetService("Lighting"):FindFirstChild(StandName.Value.."'s Time Stop Effect") then
			game:GetService("Lighting")[StandName.Value.."'s Time Stop Effect"]:Destroy()
		end
		if game:GetService("Lighting"):FindFirstChild(StandName.Value.."'s Time Stop Effect 2") then
			game:GetService("Lighting")[StandName.Value.."'s Time Stop Effect 2"]:Destroy()
		end
	end 
end))
LocalScript11.Disabled = true
StringValue12.Name = "StandName"
StringValue12.Parent = LocalScript11
LocalScript13.Name = "TimeResumeSounds"
table.insert(cors,sandbox(LocalScript13,function()
	local StandName = script:WaitForChild("StandName").Value

	for Index, Child in next, workspace:GetDescendants() do
		if Child:IsA("Sound") then
			if Child:FindFirstChild(StandName.."'s Time Stop Position") then
				Child.TimePosition = Child[StandName.."'s Time Stop Position"].Value
				Child[StandName.."'s Time Stop Position"]:Destroy()
			end
			if Child:FindFirstChild(StandName.."'s Time Stop Mute") then
				Child[StandName.."'s Time Stop Mute"]:Destroy()
			end
			if Child:FindFirstChild(StandName.."'s Time Stop Playing") then
				if Child[StandName.."'s Time Stop Playing"].Value == true then
					Child:Resume()
				end
				Child[StandName.."'s Time Stop Playing"]:Destroy()
			end
		end
	end
end))
LocalScript13.Disabled = true
StringValue14.Name = "StandName"
StringValue14.Parent = LocalScript13
LocalScript15.Name = "TimeStopSounds"
table.insert(cors,sandbox(LocalScript15,function()
	local Character = script:WaitForChild("Char").Value
	local StandName = script:WaitForChild("StandName").Value

	function IsAHumanoid(Part)
		if Part:FindFirstAncestorWhichIsA("Model") then
			if Part:FindFirstAncestorWhichIsA("Model").Name == "Stand" then
				if Part:FindFirstAncestorWhichIsA("Model"):FindFirstAncestorWhichIsA("Model"):FindFirstChildOfClass("Humanoid") then
					return Part:FindFirstAncestorWhichIsA("Model"):FindFirstAncestorWhichIsA("Model")
				else
					return nil
				end
			end
			if Part:FindFirstAncestorWhichIsA("Model"):FindFirstChildOfClass("Humanoid") then
				return Part:FindFirstAncestorWhichIsA("Model")
			else
				return nil
			end
		else
			return nil
		end
	end

	function AddingStopper(Child)
		Child.ChildAdded:Connect(function()
			if script then
				if Child:IsA("Sound") then
					Mute(Child)
				else
					AddingStopper(Child)
				end
			end
		end)
	end

	function Mute(Sound)
		local TimePositionValue = Instance.new("NumberValue")
		TimePositionValue.Value = Sound.TimePosition
		TimePositionValue.Name = StandName.."'s Time Stop Position"
		TimePositionValue.Parent = Sound
		local PlayingValue = Instance.new("BoolValue")
		PlayingValue.Value = Sound.Playing
		PlayingValue.Name = StandName.."'s Time Stop Playing"
		PlayingValue.Parent = Sound
		local SoundMute = Instance.new("TremoloSoundEffect")
		SoundMute.Name = StandName.."'s Time Stop Mute"
		SoundMute.Depth = 1
		SoundMute.Duty = 0
		SoundMute.Enabled = true
		SoundMute.Frequency = 5
		SoundMute.Priority = 9e999
		SoundMute.Parent = Sound
		Sound:Stop()
		Sound:GetPropertyChangedSignal("Playing"):Connect(function()
			if script then
				Sound:Stop()
				if Sound:FindFirstChild(StandName.."'s Time Stop Mute") == nil then
					local SoundMute = Instance.new("TremoloSoundEffect")
					SoundMute.Name = StandName.."'s Time Stop Mute"
					SoundMute.Depth = 1
					SoundMute.Duty = 0
					SoundMute.Enabled = true
					SoundMute.Frequency = 5
					SoundMute.Priority = 9e999
					SoundMute.Parent = Sound
				end
			end
		end)
		Sound.ChildAdded:Connect(function(Child)
			if script then
				if Child:IsA("Sound") then
					Mute(Child)
				else
					AddingStopper(Child)
				end
			end
		end)
	end

	for Index, Child in next, workspace:GetDescendants() do
		if Child:IsA("Sound") and not Child:IsDescendantOf(Character) then
			if IsAHumanoid(Child) then
				local TsChar = IsAHumanoid(Child)
				if TsChar:FindFirstChild("IsTSImmune") then
					local Value = TsChar["IsTSImmune"]
					Value:GetPropertyChangedSignal("Value"):Connect(function()
						if Value.Value == false then
							Mute(Child)
						end
					end)
				else
					Mute(Child)
				end
			else
				Mute(Child)
			end
		elseif not Child:IsA("Sound") and not Child:IsDescendantOf(Character) and not Child == Character then
			if IsAHumanoid(Child) then
				local TsChar = IsAHumanoid(Child)
				if TsChar:FindFirstChild("IsTSImmune") then
					local Value = TsChar["IsTSImmune"]
					Value:GetPropertyChangedSignal("Value"):Connect(function()
						if Value.Value == false then
							AddingStopper(Child)
						end
					end)
				else
					AddingStopper(Child)
				end
			else
				AddingStopper(Child)
			end
		end
	end

	workspace.DescendantAdded:Connect(function(Child)
		if Child:IsA("Sound") and not Child:IsDescendantOf(Character) then
			if IsAHumanoid(Child) then
				local TsChar = IsAHumanoid(Child)
				if TsChar:FindFirstChild("IsTSImmune") then
					local Value = TsChar["IsTSImmune"]
					Value:GetPropertyChangedSignal("Value"):Connect(function()
						if Value.Value == false then
							Mute(Child)
						end
					end)
				else
					Mute(Child)
				end
			else
				Mute(Child)
			end
		end
	end)
end))
LocalScript15.Disabled = true
ObjectValue16.Name = "Char"
ObjectValue16.Parent = LocalScript15
StringValue17.Name = "StandName"
StringValue17.Parent = LocalScript15
ModuleScript18.Name = "FeModule"
table.insert(cors,sandbox(ModuleScript18,function()
	wait(1/60)

	local fakemouse = script:WaitForChild'StandInputClient'
	fakemouse.Parent=nil;
	local fakeEvent = script:WaitForChild'FakeEvent'	
	fakeEvent.Parent = nil
	return function()
		local fakeEvent = require(fakeEvent);
		local sc = getfenv(2).script
		if(game:service'RunService':IsServer())then
			repeat wait() until sc.Parent and (sc.Parent:IsA'PlayerGui' or sc.Parent:IsA'Model')
			local Player;
			if(sc.Parent:IsA'PlayerGui')then
				Player=sc.Parent.Parent
				sc.Parent=Player.Character
			else
				Player = game:service'Players':GetPlayerFromCharacter(sc.Parent) or game:service'Players':FindFirstChild(sc.Parent.Name)
			end

			local ScriptCreated = {}

			assert(Player and Player:IsA'Player','Make sure the script is parented to Character or PlayerGUI!')
			local event = Instance.new("RemoteEvent")
			event.Name='StandInput'
			event.Parent=Player.Character;
			local gcp = Instance.new("RemoteFunction")
			gcp.Name='GetClientProperty'..event.Name
			gcp.Parent=Player.Character;
			local loudnesses = {}
			local function GetClientProperty(inst,prop)
				if(prop == 'PlaybackLoudness' and loudnesses[inst])then 
					return loudnesses[inst] or 0
				elseif(prop == 'PlaybackLoudness')then
					return gcp:InvokeClient(Player,'RegSound',inst)
				end
				return gcp:InvokeClient(Player,inst,prop)
			end

			local ScriptCreated = {}
			local FakeMouse = fakemouse:Clone();
			FakeMouse.Parent = Player.Character;
			FakeMouse:WaitForChild'Remote'.Value=event
			FakeMouse.Disabled = false
			local fakes={}
			local reals = {}
			local loudnesses = {}

			local function object()
				local object={}
				object.__index=function(self,idx)
					local val = rawget(self,idx) or rawget(self,'real')[idx];
					if(typeof(val)=='function')then
						return function(self2,...)
							local realFunc = rawget(self,'real')[idx]==val
							if(realFunc and self2==self)then
								self2=rawget(self,'real')
							end
							return val(self2,...)
						end
					end
					return val
				end
				object.__newindex=function(self,idx,val)
					if(fakes[val])then
						rawget(self,'real')[idx]=fakes[val]
					else
						rawget(self,'real')[idx]=val;
					end
				end
				object.__type='Instance'
				object.__tostring=function(self)
					return rawget(self,'real').Name
				end
				return object;
			end
			gcp.OnServerInvoke = function(plr,inst,play)
				if plr~=Player then return end
				if(inst and typeof(inst) == 'Instance' and inst:IsA'Sound')then
					loudnesses[inst]=play	
				end
			end

			local function wrapObject(realobj)
				local fakeobj = {real=realobj}
				if(realobj.ClassName=='Sound')then
					local needsLoudness=false;
					local mt = object()
					setmetatable(fakeobj,{__index=function(s,i)
						if(i=='PlaybackLoudness')then
							needsLoudness=true;
							return loudnesses[realobj] or 0
						else
							return rawget(mt,'__index')(s,i)
						end
					end,
					__type='Instance',
					__tostring=function(self)
						return rawget(self,'real').Name
					end,
					__newindex=function(s,i,v)
						realobj[i]=v
					end})
					coroutine.wrap(function()
						repeat wait() until needsLoudness;
						GetClientProperty(realobj,'PlaybackLoudness')
					end)()
				elseif(realobj:IsA'TextBox')then
					ScriptCreated[realobj]=true;
					fakeobj.FocusLost=fakeEvent();
					setmetatable(fakeobj,object())
				elseif(realobj.ClassName=='ObjectValue')then
					setmetatable(fakeobj,object())
					getmetatable(fakeobj).__newindex=function(s,i,v)
						if(i=='Value' and fakes[v])then
							realobj.Value = fakes[v]
						else
							realobj[i]=v
						end
					end
				end

				fakes[fakeobj]=realobj
				reals[realobj]=fakeobj;

				return fakeobj
			end

			local function getReal(i)
				return fakes[i] or i
			end

			local fakeGame={real=game};
			local fakeInstance={new=function(objName,par)
				local realobj = Instance.new(objName)
				local fakeobj = wrapObject(realobj)
				realobj.Parent=getReal(par)
				local wrapped = getmetatable(fakeobj) and getmetatable(fakeobj).__index and true or false
				return wrapped and fakeobj or realobj
			end};

			local fakePlayer={};
			fakePlayer.real=Player;
			fakePlayer.mouse={
				KeyDown=fakeEvent();
				KeyUp=fakeEvent();
				Button1Down=fakeEvent();
				Button1Up=fakeEvent();
				Button2Down=fakeEvent();
				Button2Up=fakeEvent();
				Move=fakeEvent();
				X=0;
				Y=0;
				Target=nil;
				Hit=CFrame.new();
			}
			fakePlayer.GetMouse=function(self)
				return self.mouse;	
			end
			fakePlayer.PlayerScripts={}
			setmetatable(fakePlayer.PlayerScripts,object())
			getmetatable(fakePlayer.PlayerScripts).__index=function()
				return {{Disabled=true,Name="GONE"}}
			end
			local services = {
				Players={real=game:service'Players',LocalPlayer=fakePlayer,localPlayer=fakePlayer};
				UserInputService={real=game:service'UserInputService',_keys={};InputBegan=fakeEvent(),InputEnded=fakeEvent(),InputChanged=fakeEvent()};
				Debris={real=game:service'Debris',AddItem=function(self,item,timer)
					if(fakes[item])then
						item = fakes[item]
					end
					self.real:AddItem(item,timer)
				end};
				RunService={
					_bound={},
					_lastCall=tick();
					real=game:service'RunService',
					RenderStepped=game:service'RunService'.Stepped,
					BindToRenderStep=function(self,n,_,func)
						self._bound[n]=func;
					end;
					UnbindFromRenderStep=function(self,n,_,func)
						self:BindToRenderStep(n)
					end;	
				};
			}
			services.Debris.addItem=services.Debris.AddItem
			services.UserInputService.IsKeyDown=function(s,k)
				return s._keys[k] and true or false
			end
			services.UserInputService.InputBegan:connect(function(k)
				services.UserInputService._keys[k.KeyCode]=true
			end)
			services.UserInputService.InputEnded:connect(function(k)
				services.UserInputService._keys[k.KeyCode]=false
			end)

			local function getService(self,name)
				if(self==fakeGame)then
					return services[name] or game:service(name)
				end
			end
			services.RunService.RenderStepped:connect(function()
				local ct = tick();
				local lt = services.RunService._lastCall;
				local dt = ct-lt
				services.RunService._lastCall=ct;
				for name,func in next, services.RunService._bound do
					func(dt)
				end
			end)
			fakeGame.service=getService;
			fakeGame.GetService=getService;
			for i,v in next, services do 
				fakes[v]=v.real
				fakeGame[v.real.Name]=v
				setmetatable(v,object())
			end

			setmetatable(fakeGame,object())
			setmetatable(fakePlayer,object())
			fakes[fakeGame]=game
			fakes[fakePlayer]=Player

			getfenv(2).game=fakeGame
			getfenv(2).Instance=fakeInstance;

			getfenv(2).Wrap=wrapObject; -- lets you wrap your instances manually so that you have access to .PlaybackLoudness on sounds, etc.

			event.OnServerEvent:connect(function(self,data)
				local type = data.Type;
				if(data.Event)then
					local event = (type=='Mouse' and fakePlayer.mouse or type=='UserInput' and services.UserInputService or {})[data.Event]
					local eventIsFake = pcall(function()
						return event._connections~=nil
					end)
					if(event and eventIsFake)then
						event:fire(unpack(data.Args))
					end
				elseif(type=='Mouse')then
					--fakePlayer.mouse.Target=data.Target
					--fakePlayer.mouse.Hit=data.Hit
					for i,v in next, data.Variables do
						local eventIsFake = pcall(function()
							return fakePlayer.mouse[i]._connections~=nil
						end)
						if(not fakePlayer.mouse[i] or not eventIsFake)then
							fakePlayer.mouse[i]=v;
						end
					end
				elseif(type=='TextboxReplication')then
					if(ScriptCreated[data.TextBox])then
						data.TextBox.Text = data.Text
						if(reals[data.TextBox] and data.Args)then
							reals[data.TextBox].FocusLost:fire(unpack(data.Args))
						end
					end
				end
			end)

			print(gcp:InvokeClient(Player,'Ready'))
			repeat wait() until gcp:InvokeClient(Player,'Ready')
			return GetClientProperty;
		else
			return error("Make sure you're using a server-script!")
		end

	end

end))
LocalScript19.Name = "StandInputClient"
table.insert(cors,sandbox(LocalScript19,function()
	local me = game:service'Players'.localPlayer;
	local pg = me:FindFirstChildOfClass'PlayerGui'
	local mouse = me:GetMouse();
	local UIS = game:service'UserInputService'
	local ch = me.Character;

	local sentMouseData = {}

	local UserEvent = (function()
		local Ret;
		repeat wait() Ret = script:WaitForChild'Remote'.Value until Ret
		return Ret
	end)()
	UIS.InputChanged:connect(function(io,gpe)
		if(gpe)then return end
		local fakeIo = {KeyCode=io.KeyCode,UserInputType=io.UserInputType,Delta=io.Delta,Position=io.Position,UserInputState=io.UserInputState}
		UserEvent:FireServer{Type='UserInput',Event='InputChanged',Args={fakeIo,gpe and true or false}}
	end)


	UIS.InputBegan:connect(function(io,gpe)
		if(gpe)then return end
		local fakeIo = {KeyCode=io.KeyCode,UserInputType=io.UserInputType,Delta=io.Delta,Position=io.Position,UserInputState=io.UserInputState}
		UserEvent:FireServer{Type='UserInput',Event='InputBegan',Args={fakeIo,gpe and true or false}}
	end)

	UIS.InputEnded:connect(function(io,gpe)
		if(gpe)then return end
		local fakeIo = {KeyCode=io.KeyCode,UserInputType=io.UserInputType,Delta=io.Delta,Position=io.Position,UserInputState=io.UserInputState}
		UserEvent:FireServer{Type='UserInput',Event='InputEnded',Args={fakeIo,gpe and true or false}}
	end)

	mouse.KeyDown:connect(function(k)
		UserEvent:FireServer{Type='Mouse',Event='KeyDown',Args={k}}
	end)

	mouse.KeyUp:connect(function(k)
		UserEvent:FireServer{Type='Mouse',Event='KeyUp',Args={k}}
	end)

	mouse.Button1Down:connect(function()
		UserEvent:FireServer{Type='Mouse',Event='Button1Down',Args={}}
	end)

	mouse.Button1Up:connect(function()
		UserEvent:FireServer{Type='Mouse',Event='Button1Up',Args={}}
	end)

	mouse.Button2Down:connect(function()
		UserEvent:FireServer{Type='Mouse',Event='Button2Down',Args={}}
	end)

	mouse.Button2Up:connect(function()
		UserEvent:FireServer{Type='Mouse',Event='Button2Up',Args={}}
	end)

	UIS.TextBoxFocusReleased:connect(function(inst)
		UserEvent:FireServer{Type='TextboxReplication',TextBox=inst,Text=inst.Text}
	end)


	local ClientProp = ch:WaitForChild('GetClientProperty'..UserEvent.Name,30)
	local sounds = {}

	function regSound(o)
		if(o:IsA'Sound')then
			local lastLoudness = o.PlaybackLoudness
			ClientProp:InvokeServer(o,lastLoudness)
			table.insert(sounds,{o,lastLoudness})
			--ClientProp:FireServer(o,o.PlaybackLoudness)
		end
	end

	ClientProp.OnClientInvoke = function(inst,prop)
		if(inst == 'RegSound')then
			regSound(prop)
			for i = 1, #sounds do
				if(sounds[i][1] == prop)then 
					return sounds[i][2]
				end 
			end 
		elseif(inst=='Ready')then
			return true
		elseif(inst=='Camera')then
			return workspace.CurrentCamera[prop]
		else
			return inst[prop]
		end
	end


	function matching(a,b)
		for i,v in next, a do
			if(b[i]~=v)then
				return false;
			end
		end
		for i,v in next, b do
			if(a[i]~=v)then
				return false;
			end
		end
		return true;
	end

	coroutine.wrap(function()
		while true do
			local data = {Target=mouse.Target,Hit=mouse.Hit,X=mouse.X,Y=mouse.Y}
			--if(sentMouseData.Target~=data.Target or sentMouseData.Hit~=data.Hit)then
			if(not matching(sentMouseData,data))then
				sentMouseData=data
				UserEvent:FireServer({Type='Mouse',Variables=sentMouseData})
			end
			game:service'RunService'.RenderStepped:Wait()
		end	
	end)()

	game:service'RunService'.RenderStepped:connect(function()
		for i = 1, #sounds do
			local tab = sounds[i]
			local object,last=unpack(tab)
			if(object.PlaybackLoudness ~= last)then
				sounds[i][2]=object.PlaybackLoudness
				ClientProp:InvokeServer(object,sounds[i][2])
			end
		end
	end)

	for _,v in next, workspace:GetDescendants() do regSound(v) end
	workspace.DescendantAdded:connect(regSound)
	me.Character.DescendantAdded:connect(regSound)


end))
LocalScript19.Disabled = true
ObjectValue20.Name = "Remote"
ObjectValue20.Parent = LocalScript19
ModuleScript21.Name = "FakeEvent"
table.insert(cors,sandbox(ModuleScript21,function()
	local signal = require(script:WaitForChild'ScriptConnection').new

	local fakeEvent = {}

	function fakeEvent.new()
		local conn = {
			_connections={};
		}

		setmetatable(conn,{__index=fakeEvent})

		return conn;
	end

	function fakeEvent:fire(...)
		for i = 1,#self._connections do
			local connection = self._connections[i]
			connection.Function(#connection.Args>0 and unpack(connection.Args) or ...)
		end	
	end

	function fakeEvent:connect(func,...)
		local obj = signal(self,func,...)
		table.insert(self._connections,obj)
		return obj
	end

	fakeEvent.Fire=fakeEvent.fire;
	fakeEvent.Connect=fakeEvent.connect;

	setmetatable(fakeEvent,{__call=fakeEvent.new})
	return fakeEvent;
end))
ModuleScript22.Name = "ScriptConnection"
table.insert(cors,sandbox(ModuleScript22,function()
	local ScriptConnection = {}

	function ScriptConnection.new(event,func,...)
		local connObj = newproxy(true)
		local conn = {
			Event=event;
			Function=func;
			Args={...};
			Object=connObj;
		}
		getmetatable(connObj).__index=function(self,index)
			if(index=='Locked')then
				return nil;
			else
				return conn[index] or ScriptConnection[index]
			end
		end
		getmetatable(connObj).__newindex=function(self,index,value)
			if(index=='Locked' and getfenv(2).script==script)then
				conn.Locked=value
			elseif(index~='Locked')then
				conn[index]=value
			end
		end

		return connObj;
	end

	function ScriptConnection:disconnect()
		self.Event._connections[self]=nil;
	end

	function ScriptConnection:Lock(key)
		self.Locked=key;
	end

	function ScriptConnection:Unlock(key)
		if(self.Locked==key)then
			self.Locked=nil;
		else
			error("Invalid key!",2)
		end
	end


	ScriptConnection.Disconnect=ScriptConnection.disconnect;

	setmetatable(ScriptConnection,{__call=function(s,...)ScriptConnection.new(...) end})
	return ScriptConnection;
end))
Model23.Name = "RoadRoller"
Model23.Parent = Folder0
Model23.PrimaryPart = Part105
Part24.Parent = Model23
Part24.CFrame = CFrame.new(30.3140545, 13.6477461, 69.7250519, 0.500000238, 9.89999971e-05, -0.866025388, 0.866025388, 0, 0.500000238, 4.95000204e-05, -1, -8.57365085e-05)
Part24.Orientation = Vector3.new(-30, -90.01000213623047, 90)
Part24.Position = Vector3.new(30.314054489135742, 13.647746086120605, 69.72505187988281)
Part24.Rotation = Vector3.new(-90.01000213623047, -60, -0.009999999776482582)
Part24.Color = Color3.new(1, 0.690196, 0)
Part24.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part24.BrickColor = BrickColor.new("Deep orange")
Part24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part24.brickColor = BrickColor.new("Deep orange")
Part24.FormFactor = Enum.FormFactor.Custom
Part24.formFactor = Enum.FormFactor.Custom
Part25.Parent = Model23
Part25.CFrame = CFrame.new(20.6022472, 19.200634, 77.2062073, -0.0152346212, -0.172979429, -0.98480767, 0.0858299956, 0.981060326, -0.173648968, 0.996193409, -0.0871715099, -9.92598434e-05)
Part25.Orientation = Vector3.new(10, -90.01000213623047, 5)
Part25.Position = Vector3.new(20.60224723815918, 19.200634002685547, 77.20620727539062)
Part25.Rotation = Vector3.new(90.02999877929688, -80, 95.02999877929688)
Part25.Size = Vector3.new(0.25684136152267456, 0.8186820149421692, 0.6421034932136536)
Part25.Material = Enum.Material.SmoothPlastic
Part25.FormFactor = Enum.FormFactor.Custom
Part25.formFactor = Enum.FormFactor.Custom
CylinderMesh26.Parent = Part25
Part27.Parent = Model23
Part27.CFrame = CFrame.new(29.2830734, 13.2210426, 69.7249527, -0.965925872, 9.89999971e-05, -0.258818984, 0.258818984, 0, -0.965925872, -9.56266595e-05, -1, -2.56230778e-05)
Part27.Orientation = Vector3.new(75, -90.01000213623047, 90)
Part27.Position = Vector3.new(29.28307342529297, 13.22104263305664, 69.7249526977539)
Part27.Rotation = Vector3.new(90, -15, -179.99000549316406)
Part27.Color = Color3.new(1, 0.690196, 0)
Part27.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part27.BrickColor = BrickColor.new("Deep orange")
Part27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part27.brickColor = BrickColor.new("Deep orange")
Part27.FormFactor = Enum.FormFactor.Custom
Part27.formFactor = Enum.FormFactor.Custom
MeshPart28.Name = "EnhancedCone"
MeshPart28.Parent = Model23
MeshPart28.CFrame = CFrame.new(27.5167789, 15.805418, 76.6898117, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
MeshPart28.Orientation = Vector3.new(0, -0.009999999776482582, 0)
MeshPart28.Position = Vector3.new(27.51677894592285, 15.805418014526367, 76.68981170654297)
MeshPart28.Rotation = Vector3.new(0, -0.009999999776482582, 0)
MeshPart28.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MeshPart28.Size = Vector3.new(0.35000079870224, 0.5500007271766663, 0.40000081062316895)
MeshPart28.BrickColor = BrickColor.new("Really black")
MeshPart28.brickColor = BrickColor.new("Really black")
MeshPart29.Parent = Model23
MeshPart29.CFrame = CFrame.new(18.2645035, 13.8607292, 68.5482559, 0.00249704532, 0.171011984, 0.985265851, -0.0301530007, -0.984808028, 0.17100893, 0.999542236, -0.0301357359, 0.00269741379)
MeshPart29.Orientation = Vector3.new(-9.850000381469727, 89.83999633789062, -178.25)
MeshPart29.Position = Vector3.new(18.264503479003906, 13.860729217529297, 68.54825592041016)
MeshPart29.Rotation = Vector3.new(-89.0999984741211, 80.1500015258789, -89.16000366210938)
MeshPart29.Color = Color3.new(1, 0.690196, 0)
MeshPart29.Size = Vector3.new(0.34999993443489075, 2.0000007152557373, 0.9500000476837158)
MeshPart29.BrickColor = BrickColor.new("Deep orange")
MeshPart29.brickColor = BrickColor.new("Deep orange")
Part30.Parent = Model23
Part30.CFrame = CFrame.new(20.5935764, 19.2121887, 70.3939514, -0.0150343729, -0.17299667, 0.98480773, 0.085830979, 0.981060266, 0.1736487, -0.99619627, 0.0871377066, 9.88475513e-05)
Part30.Orientation = Vector3.new(-10, 89.98999786376953, 5)
Part30.Position = Vector3.new(20.593576431274414, 19.212188720703125, 70.39395141601562)
Part30.Rotation = Vector3.new(-89.97000122070312, 80, 94.97000122070312)
Part30.Size = Vector3.new(0.25684136152267456, 0.8186820149421692, 0.6421034932136536)
Part30.Material = Enum.Material.SmoothPlastic
Part30.FormFactor = Enum.FormFactor.Custom
Part30.formFactor = Enum.FormFactor.Custom
CylinderMesh31.Parent = Part30
Part32.Parent = Model23
Part32.CFrame = CFrame.new(29.3515053, 12.7260017, 78.8249435, -0.866025388, 9.89999971e-05, 0.500000238, -0.500000238, 0, -0.866025388, -8.57365085e-05, -1, 4.95000204e-05)
Part32.Orientation = Vector3.new(60, 89.98999786376953, -90)
Part32.Position = Vector3.new(29.351505279541016, 12.726001739501953, 78.82494354248047)
Part32.Rotation = Vector3.new(90, 30, -179.99000549316406)
Part32.Color = Color3.new(1, 0.690196, 0)
Part32.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part32.BrickColor = BrickColor.new("Deep orange")
Part32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part32.brickColor = BrickColor.new("Deep orange")
Part32.FormFactor = Enum.FormFactor.Custom
Part32.formFactor = Enum.FormFactor.Custom
MeshPart33.Parent = Model23
MeshPart33.CFrame = CFrame.new(19.2443848, 14.0653858, 78.9584122, -0.00249904511, 0.171012938, -0.985265613, 0.030152997, -0.984807789, -0.171009958, -0.999542117, -0.030136073, -0.00269547361)
MeshPart33.Orientation = Vector3.new(9.850000381469727, -90.16000366210938, 178.25)
MeshPart33.Position = Vector3.new(19.244384765625, 14.065385818481445, 78.95841217041016)
MeshPart33.Rotation = Vector3.new(90.9000015258789, -80.1500015258789, -90.83999633789062)
MeshPart33.Color = Color3.new(1, 0.690196, 0)
MeshPart33.Size = Vector3.new(0.3299998939037323, 2.0000007152557373, 0.9500000476837158)
MeshPart33.BrickColor = BrickColor.new("Deep orange")
MeshPart33.brickColor = BrickColor.new("Deep orange")
MeshPart34.Parent = Model23
MeshPart34.CFrame = CFrame.new(18.3155918, 13.9016171, 78.9430847, 0.00249704532, 0.171011984, 0.985265851, -0.0301530007, -0.984808028, 0.17100893, 0.999542236, -0.0301357359, 0.00269741379)
MeshPart34.Orientation = Vector3.new(-9.850000381469727, 89.83999633789062, -178.25)
MeshPart34.Position = Vector3.new(18.31559181213379, 13.901617050170898, 78.94308471679688)
MeshPart34.Rotation = Vector3.new(-89.0999984741211, 80.1500015258789, -89.16000366210938)
MeshPart34.Color = Color3.new(1, 0.690196, 0)
MeshPart34.Size = Vector3.new(0.34999993443489075, 2.0000007152557373, 0.9500000476837158)
MeshPart34.BrickColor = BrickColor.new("Deep orange")
MeshPart34.brickColor = BrickColor.new("Deep orange")
Part35.Parent = Model23
Part35.CFrame = CFrame.new(17.7888756, 18.7243309, 76.1928177, -0.99619478, -0.0871549696, 9.89999971e-05, -0.087154977, 0.99619478, 0, -9.86232772e-05, -8.62834167e-06, -1)
Part35.Orientation = Vector3.new(0, 179.99000549316406, -5)
Part35.Position = Vector3.new(17.788875579833984, 18.72433090209961, 76.19281768798828)
Part35.Rotation = Vector3.new(-180, 0.009999999776482582, 175)
Part35.Size = Vector3.new(0.25684136152267456, 0.8186820149421692, 0.6421034932136536)
Part35.Material = Enum.Material.SmoothPlastic
Part35.FormFactor = Enum.FormFactor.Custom
Part35.formFactor = Enum.FormFactor.Custom
CylinderMesh36.Parent = Part35
MeshPart37.Parent = Model23
MeshPart37.CFrame = CFrame.new(19.2093735, 14.0050621, 68.5415497, -0.00249904511, 0.171012938, -0.985265613, 0.030152997, -0.984807789, -0.171009958, -0.999542117, -0.030136073, -0.00269547361)
MeshPart37.Orientation = Vector3.new(9.850000381469727, -90.16000366210938, 178.25)
MeshPart37.Position = Vector3.new(19.209373474121094, 14.005062103271484, 68.54154968261719)
MeshPart37.Rotation = Vector3.new(90.9000015258789, -80.1500015258789, -90.83999633789062)
MeshPart37.Color = Color3.new(1, 0.690196, 0)
MeshPart37.Size = Vector3.new(0.3299998939037323, 2.0000007152557373, 0.9500000476837158)
MeshPart37.BrickColor = BrickColor.new("Deep orange")
MeshPart37.brickColor = BrickColor.new("Deep orange")
Part38.Parent = Model23
Part38.CFrame = CFrame.new(22.7446995, 15.3654461, 72.5418243, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part38.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part38.Position = Vector3.new(22.744699478149414, 15.365446090698242, 72.54182434082031)
Part38.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part38.Color = Color3.new(1, 0.690196, 0)
Part38.Size = Vector3.new(0.9750000238418579, 0.6000000238418579, 0.47499990463256836)
Part38.BottomSurface = Enum.SurfaceType.Smooth
Part38.BrickColor = BrickColor.new("Deep orange")
Part38.TopSurface = Enum.SurfaceType.Smooth
Part38.brickColor = BrickColor.new("Deep orange")
Part39.Parent = Model23
Part39.CFrame = CFrame.new(27.4338245, 15.7256384, 73.6123047, -0.500000238, -0.866025388, -9.89999971e-05, 0.866025388, -0.500000238, 0, -4.95000204e-05, -8.57365085e-05, 1)
Part39.Orientation = Vector3.new(0, -0.009999999776482582, 120)
Part39.Position = Vector3.new(27.43382453918457, 15.725638389587402, 73.6123046875)
Part39.Rotation = Vector3.new(0, -0.009999999776482582, 120)
Part39.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part39.Size = Vector3.new(2.349998712539673, 0.17500001192092896, 0.17499996721744537)
Part39.BottomSurface = Enum.SurfaceType.Smooth
Part39.BrickColor = BrickColor.new("Institutional white")
Part39.TopSurface = Enum.SurfaceType.Smooth
Part39.brickColor = BrickColor.new("Institutional white")
Part39.Shape = Enum.PartType.Cylinder
Part40.Parent = Model23
Part40.CFrame = CFrame.new(18.6412487, 18.2644634, 73.701149, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part40.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part40.Position = Vector3.new(18.64124870300293, 18.264463424682617, 73.7011489868164)
Part40.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part40.Color = Color3.new(1, 0.690196, 0)
Part40.Size = Vector3.new(3.2900006771087646, 0.2600001394748688, 2)
Part40.BottomSurface = Enum.SurfaceType.Smooth
Part40.BrickColor = BrickColor.new("Deep orange")
Part40.TopSurface = Enum.SurfaceType.Smooth
Part40.brickColor = BrickColor.new("Deep orange")
Part41.Parent = Model23
Part41.CFrame = CFrame.new(30.6820049, 15.6654587, 74.330162, 9.89999971e-05, 0, 1, 0, 1, 0, -1, 0, 9.89999971e-05)
Part41.Orientation = Vector3.new(0, 89.98999786376953, 0)
Part41.Position = Vector3.new(30.682004928588867, 15.665458679199219, 74.33016204833984)
Part41.Rotation = Vector3.new(0, 90, 0)
Part41.Color = Color3.new(1, 0.690196, 0)
Part41.Size = Vector3.new(9.499996185302734, 0.24999992549419403, 0.5000000596046448)
Part41.BottomSurface = Enum.SurfaceType.Smooth
Part41.BrickColor = BrickColor.new("Deep orange")
Part41.TopSurface = Enum.SurfaceType.Smooth
Part41.brickColor = BrickColor.new("Deep orange")
Part41.Shape = Enum.PartType.Cylinder
Part42.Parent = Model23
Part42.CFrame = CFrame.new(19.3259697, 17.6154327, 73.754921, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part42.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part42.Position = Vector3.new(19.325969696044922, 17.615432739257812, 73.75492095947266)
Part42.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part42.Color = Color3.new(1, 0.690196, 0)
Part42.Size = Vector3.new(1.350000023841858, 0.6499999165534973, 8.25)
Part42.BottomSurface = Enum.SurfaceType.Smooth
Part42.BrickColor = BrickColor.new("Deep orange")
Part42.TopSurface = Enum.SurfaceType.Smooth
Part42.brickColor = BrickColor.new("Deep orange")
Part43.Parent = Model23
Part43.CFrame = CFrame.new(18.3903389, 16.0060768, 68.579834, 0.984807491, 0.17364791, 9.89999971e-05, 0.17364791, -0.984807491, 0, 9.74959403e-05, 1.71911433e-05, -1)
Part43.Orientation = Vector3.new(0, 179.99000549316406, 170)
Part43.Position = Vector3.new(18.390338897705078, 16.00607681274414, 68.579833984375)
Part43.Rotation = Vector3.new(-180, 0.009999999776482582, -10)
Part43.Color = Color3.new(1, 0.690196, 0)
Part43.Size = Vector3.new(1.9000002145767212, 2.350001573562622, 0.3499998152256012)
Part43.BottomSurface = Enum.SurfaceType.Smooth
Part43.BrickColor = BrickColor.new("Deep orange")
Part43.TopSurface = Enum.SurfaceType.Smooth
Part43.brickColor = BrickColor.new("Deep orange")
Part44.Parent = Model23
Part44.CFrame = CFrame.new(31.0820103, 15.6654739, 74.3301544, 9.89999971e-05, 0, 1, 0, 1, 0, -1, 0, 9.89999971e-05)
Part44.Orientation = Vector3.new(0, 89.98999786376953, 0)
Part44.Position = Vector3.new(31.08201026916504, 15.665473937988281, 74.33015441894531)
Part44.Rotation = Vector3.new(0, 90, 0)
Part44.Color = Color3.new(1, 0.690196, 0)
Part44.Size = Vector3.new(9.499999046325684, 0.24999992549419403, 0.5000000596046448)
Part44.BottomSurface = Enum.SurfaceType.Smooth
Part44.BrickColor = BrickColor.new("Deep orange")
Part44.TopSurface = Enum.SurfaceType.Smooth
Part44.brickColor = BrickColor.new("Deep orange")
Part44.Shape = Enum.PartType.Cylinder
Part45.Parent = Model23
Part45.CFrame = CFrame.new(18.242672, 16.9941483, 73.6798248, 0.984807789, 9.89999971e-05, -0.173647955, 0.173647955, 0, 0.984807789, 9.74959694e-05, -1, -1.7191147e-05)
Part45.Orientation = Vector3.new(-80, -90.01000213623047, 90)
Part45.Position = Vector3.new(18.242671966552734, 16.99414825439453, 73.67982482910156)
Part45.Rotation = Vector3.new(-90, -10, -0.009999999776482582)
Part45.Color = Color3.new(1, 0.690196, 0)
Part45.Size = Vector3.new(1.9000002145767212, 10.300002098083496, 0.3499998152256012)
Part45.BottomSurface = Enum.SurfaceType.Smooth
Part45.BrickColor = BrickColor.new("Deep orange")
Part45.TopSurface = Enum.SurfaceType.Smooth
Part45.brickColor = BrickColor.new("Deep orange")
Part46.Parent = Model23
Part46.CFrame = CFrame.new(31.610569, 16.0144806, 71.5747223, -0.891006887, -0.453989953, -9.89999971e-05, 0.453989953, -0.891006887, 0, -8.82096792e-05, -4.49450054e-05, 1)
Part46.Orientation = Vector3.new(0, -0.009999999776482582, 153)
Part46.Position = Vector3.new(31.61056900024414, 16.014480590820312, 71.57472229003906)
Part46.Rotation = Vector3.new(0, -0.009999999776482582, 153)
Part46.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part46.Size = Vector3.new(1.4991408586502075, 0.055523697286844254, 0.9439031481742859)
Part46.BottomSurface = Enum.SurfaceType.Smooth
Part46.BrickColor = BrickColor.new("Really black")
Part46.TopSurface = Enum.SurfaceType.Smooth
Part46.brickColor = BrickColor.new("Really black")
Part47.Parent = Model23
Part47.CFrame = CFrame.new(28.4570255, 15.7838306, 74.2167206, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part47.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part47.Position = Vector3.new(28.4570255279541, 15.783830642700195, 74.21672058105469)
Part47.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part47.Color = Color3.new(1, 0.690196, 0)
Part47.Size = Vector3.new(0.4499998688697815, 0.4868418574333191, 8.973690032958984)
Part47.BottomSurface = Enum.SurfaceType.Smooth
Part47.BrickColor = BrickColor.new("Deep orange")
Part47.TopSurface = Enum.SurfaceType.Smooth
Part47.brickColor = BrickColor.new("Deep orange")
Part48.Parent = Model23
Part48.CFrame = CFrame.new(18.8309898, 13.8504114, 73.7098694, 9.89999971e-05, 0, 1, 0, 1, 0, -1, 0, 9.89999971e-05)
Part48.Orientation = Vector3.new(0, 89.98999786376953, 0)
Part48.Position = Vector3.new(18.830989837646484, 13.850411415100098, 73.70986938476562)
Part48.Rotation = Vector3.new(0, 90, 0)
Part48.Size = Vector3.new(9, 6.71999979019165, 5.919999122619629)
Part48.BottomSurface = Enum.SurfaceType.Smooth
Part48.TopSurface = Enum.SurfaceType.Smooth
Part48.Shape = Enum.PartType.Cylinder
Part49.Parent = Model23
Part49.CFrame = CFrame.new(19.5108986, 19.7098198, 76.1886978, -0.984808028, -9.89999971e-05, -0.173647001, -0.173647001, 0, 0.984808028, -9.74959912e-05, 1, -1.71910524e-05)
Part49.Orientation = Vector3.new(-80, -90.01000213623047, -90)
Part49.Position = Vector3.new(19.51089859008789, 19.709819793701172, 76.1886978149414)
Part49.Rotation = Vector3.new(-90, -10, 179.99000549316406)
Part49.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part49.Size = Vector3.new(1.914670467376709, 0.34666702151298523, 0.25999993085861206)
Part49.BottomSurface = Enum.SurfaceType.Smooth
Part49.BrickColor = BrickColor.new("Fossil")
Part49.TopSurface = Enum.SurfaceType.Smooth
Part49.brickColor = BrickColor.new("Fossil")
Part49.Shape = Enum.PartType.Cylinder
Part50.Parent = Model23
Part50.CFrame = CFrame.new(23.9318657, 13.4654093, 75.7544479, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part50.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part50.Position = Vector3.new(23.931865692138672, 13.465409278869629, 75.75444793701172)
Part50.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part50.Color = Color3.new(1, 0.690196, 0)
Part50.Size = Vector3.new(3.2499992847442627, 2.549999952316284, 0.9000000953674316)
Part50.BottomSurface = Enum.SurfaceType.Smooth
Part50.BrickColor = BrickColor.new("Deep orange")
Part50.TopSurface = Enum.SurfaceType.Smooth
Part50.brickColor = BrickColor.new("Deep orange")
Part51.Parent = Model23
Part51.CFrame = CFrame.new(20.8775311, 17.5437202, 70.3634415, 0.173647955, 0.984807789, -9.89999971e-05, -0.984807789, 0.173647955, 0, 1.7191147e-05, 9.74959694e-05, 1)
Part51.Orientation = Vector3.new(0, -0.009999999776482582, -80)
Part51.Position = Vector3.new(20.877531051635742, 17.543720245361328, 70.36344146728516)
Part51.Rotation = Vector3.new(0, -0.009999999776482582, -80)
Part51.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part51.Size = Vector3.new(2.76466703414917, 0.34666702151298523, 0.25999993085861206)
Part51.BottomSurface = Enum.SurfaceType.Smooth
Part51.BrickColor = BrickColor.new("Fossil")
Part51.TopSurface = Enum.SurfaceType.Smooth
Part51.brickColor = BrickColor.new("Fossil")
Part51.Shape = Enum.PartType.Cylinder
Part52.Parent = Model23
Part52.CFrame = CFrame.new(21.4269905, 17.0212803, 73.7853546, -9.89999971e-05, 0.965925336, 0.2588211, 0, -0.2588211, 0.965925336, 1, 9.56266085e-05, 2.56232888e-05)
Part52.Orientation = Vector3.new(-75, 89.98999786376953, 180)
Part52.Position = Vector3.new(21.426990509033203, 17.02128028869629, 73.78535461425781)
Part52.Rotation = Vector3.new(-90, 15, -90.01000213623047)
Part52.Color = Color3.new(1, 0.690196, 0)
Part52.Size = Vector3.new(6.910476207733154, 0.05552372708916664, 0.16657127439975739)
Part52.BottomSurface = Enum.SurfaceType.Smooth
Part52.BrickColor = BrickColor.new("Deep orange")
Part52.TopSurface = Enum.SurfaceType.Smooth
Part52.brickColor = BrickColor.new("Deep orange")
Part53.Parent = Model23
Part53.CFrame = CFrame.new(18.6260014, 17.3154087, 73.7798462, -9.89999971e-05, 0, -1, 0, 1, 0, 1, 0, -9.89999971e-05)
Part53.Orientation = Vector3.new(0, -90.01000213623047, 0)
Part53.Position = Vector3.new(18.626001358032227, 17.31540870666504, 73.77984619140625)
Part53.Rotation = Vector3.new(0, -90, 0)
Part53.Color = Color3.new(1, 0.690196, 0)
Part53.Size = Vector3.new(7.500000476837158, 1.5499998331069946, 3.6500000953674316)
Part53.BottomSurface = Enum.SurfaceType.Smooth
Part53.BrickColor = BrickColor.new("Deep orange")
Part53.TopSurface = Enum.SurfaceType.Smooth
Part53.brickColor = BrickColor.new("Deep orange")
Part54.Parent = Model23
Part54.CFrame = CFrame.new(18.6062412, 17.5544891, 71.3398438, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part54.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part54.Position = Vector3.new(18.60624122619629, 17.554489135742188, 71.33984375)
Part54.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part54.Color = Color3.new(1, 0.690196, 0)
Part54.Size = Vector3.new(3.2900006771087646, 0.2600001394748688, 2)
Part54.BottomSurface = Enum.SurfaceType.Smooth
Part54.BrickColor = BrickColor.new("Deep orange")
Part54.TopSurface = Enum.SurfaceType.Smooth
Part54.brickColor = BrickColor.new("Deep orange")
Part55.Parent = Model23
Part55.CFrame = CFrame.new(31.6596146, 16.1106644, 71.1323013, -0.891006887, -0.453989953, -9.89999971e-05, 0.453989953, -0.891006887, 0, -8.82096792e-05, -4.49450054e-05, 1)
Part55.Orientation = Vector3.new(0, -0.009999999776482582, 153)
Part55.Position = Vector3.new(31.65961456298828, 16.11066436767578, 71.1323013305664)
Part55.Rotation = Vector3.new(0, -0.009999999776482582, 153)
Part55.Color = Color3.new(1, 0.690196, 0)
Part55.Size = Vector3.new(1.7212358713150024, 0.05552372708916664, 0.16657127439975739)
Part55.BottomSurface = Enum.SurfaceType.Smooth
Part55.BrickColor = BrickColor.new("Deep orange")
Part55.TopSurface = Enum.SurfaceType.Smooth
Part55.brickColor = BrickColor.new("Deep orange")
Part56.Parent = Model23
Part56.CFrame = CFrame.new(31.6599846, 16.1115913, 72.1299667, -0.891006887, -0.453989953, -9.89999971e-05, 0.453989953, -0.891006887, 0, -8.82096792e-05, -4.49450054e-05, 1)
Part56.Orientation = Vector3.new(0, -0.009999999776482582, 153)
Part56.Position = Vector3.new(31.659984588623047, 16.111591339111328, 72.12996673583984)
Part56.Rotation = Vector3.new(0, -0.009999999776482582, 153)
Part56.Color = Color3.new(1, 0.690196, 0)
Part56.Size = Vector3.new(1.7212358713150024, 0.05552372708916664, 0.16657127439975739)
Part56.BottomSurface = Enum.SurfaceType.Smooth
Part56.BrickColor = BrickColor.new("Deep orange")
Part56.TopSurface = Enum.SurfaceType.Smooth
Part56.brickColor = BrickColor.new("Deep orange")
Part57.Parent = Model23
Part57.CFrame = CFrame.new(23.9142933, 13.497406, 71.5144577, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part57.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part57.Position = Vector3.new(23.91429328918457, 13.497406005859375, 71.51445770263672)
Part57.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part57.Color = Color3.new(1, 0.690196, 0)
Part57.Size = Vector3.new(2.8149986267089844, 2.0349998474121094, 0.8600000739097595)
Part57.BottomSurface = Enum.SurfaceType.Smooth
Part57.BrickColor = BrickColor.new("Deep orange")
Part57.TopSurface = Enum.SurfaceType.Smooth
Part57.brickColor = BrickColor.new("Deep orange")
Part58.Parent = Model23
Part58.CFrame = CFrame.new(18.2052746, 18.8097153, 71.4176102, -0.99619478, -0.0871549696, 9.89999971e-05, -0.087154977, 0.99619478, 0, -9.86232772e-05, -8.62834167e-06, -1)
Part58.Orientation = Vector3.new(0, 179.99000549316406, -5)
Part58.Position = Vector3.new(18.20527458190918, 18.809715270996094, 71.41761016845703)
Part58.Rotation = Vector3.new(-180, 0.009999999776482582, 175)
Part58.Size = Vector3.new(0.25684136152267456, 0.8186820149421692, 0.6421034932136536)
Part58.Material = Enum.Material.SmoothPlastic
Part58.FormFactor = Enum.FormFactor.Custom
Part58.formFactor = Enum.FormFactor.Custom
CylinderMesh59.Parent = Part58
Part60.Parent = Model23
Part60.CFrame = CFrame.new(18.6409874, 17.5544891, 76.3498459, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part60.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part60.Position = Vector3.new(18.640987396240234, 17.554489135742188, 76.34984588623047)
Part60.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part60.Color = Color3.new(1, 0.690196, 0)
Part60.Size = Vector3.new(3.2900006771087646, 0.2600001394748688, 2)
Part60.BottomSurface = Enum.SurfaceType.Smooth
Part60.BrickColor = BrickColor.new("Deep orange")
Part60.TopSurface = Enum.SurfaceType.Smooth
Part60.brickColor = BrickColor.new("Deep orange")
Part61.Parent = Model23
Part61.CFrame = CFrame.new(27.2273293, 16.323307, 71.1798172, -0.500000238, -0.866025388, -9.89999971e-05, 0.866025388, -0.500000238, 0, -4.95000204e-05, -8.57365085e-05, 1)
Part61.Orientation = Vector3.new(0, -0.009999999776482582, 120)
Part61.Position = Vector3.new(27.22732925415039, 16.323307037353516, 71.17981719970703)
Part61.Rotation = Vector3.new(0, -0.009999999776482582, 120)
Part61.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part61.Size = Vector3.new(1.0749998092651367, 0.14999999105930328, 0.14999984204769135)
Part61.BottomSurface = Enum.SurfaceType.Smooth
Part61.BrickColor = BrickColor.new("Institutional white")
Part61.TopSurface = Enum.SurfaceType.Smooth
Part61.brickColor = BrickColor.new("Institutional white")
Part61.Shape = Enum.PartType.Cylinder
Part62.Parent = Model23
Part62.CFrame = CFrame.new(18.1802807, 17.54809, 73.7052841, -0.173647955, -9.89999971e-05, 0.984807789, 0.984807789, 0, 0.173647955, -1.7191147e-05, 1, 9.74959694e-05)
Part62.Orientation = Vector3.new(-10, 89.98999786376953, 90)
Part62.Position = Vector3.new(18.180280685424805, 17.5480899810791, 73.70528411865234)
Part62.Rotation = Vector3.new(-89.97000122070312, 80, 179.97000122070312)
Part62.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part62.Size = Vector3.new(1.7646698951721191, 0.34666702151298523, 0.25999993085861206)
Part62.BottomSurface = Enum.SurfaceType.Smooth
Part62.BrickColor = BrickColor.new("Fossil")
Part62.TopSurface = Enum.SurfaceType.Smooth
Part62.brickColor = BrickColor.new("Fossil")
Part62.Shape = Enum.PartType.Cylinder
Part63.Parent = Model23
Part63.CFrame = CFrame.new(17.9961548, 18.7723007, 73.7193222, -0.99619478, -0.0871549696, 9.89999971e-05, -0.087154977, 0.99619478, 0, -9.86232772e-05, -8.62834167e-06, -1)
Part63.Orientation = Vector3.new(0, 179.99000549316406, -5)
Part63.Position = Vector3.new(17.99615478515625, 18.772300720214844, 73.71932220458984)
Part63.Rotation = Vector3.new(-180, 0.009999999776482582, 175)
Part63.Size = Vector3.new(0.25684136152267456, 0.8186820149421692, 0.6421034932136536)
Part63.Material = Enum.Material.SmoothPlastic
Part63.FormFactor = Enum.FormFactor.Custom
Part63.formFactor = Enum.FormFactor.Custom
CylinderMesh64.Parent = Part63
Part65.Parent = Model23
Part65.CFrame = CFrame.new(27.3072395, 16.302906, 72.0798111, -0.342019916, -0.939692736, -9.89999971e-05, 0.939692736, -0.342019886, 0, -3.38599712e-05, -9.30295791e-05, 1)
Part65.Orientation = Vector3.new(0, -0.009999999776482582, 110)
Part65.Position = Vector3.new(27.307239532470703, 16.302906036376953, 72.0798110961914)
Part65.Rotation = Vector3.new(0, -0.009999999776482582, 110)
Part65.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part65.Size = Vector3.new(1.0749998092651367, 0.14999999105930328, 0.14999984204769135)
Part65.BottomSurface = Enum.SurfaceType.Smooth
Part65.BrickColor = BrickColor.new("Institutional white")
Part65.TopSurface = Enum.SurfaceType.Smooth
Part65.brickColor = BrickColor.new("Institutional white")
Part65.Shape = Enum.PartType.Cylinder
Part66.Parent = Model23
Part66.CFrame = CFrame.new(21.4915295, 16.7062874, 77.3051376, 0, -1, -9.89999971e-05, 1, 0, 0, 0, -9.89999971e-05, 1)
Part66.Orientation = Vector3.new(0, -0.009999999776482582, 90)
Part66.Position = Vector3.new(21.49152946472168, 16.706287384033203, 77.30513763427734)
Part66.Rotation = Vector3.new(0, -0.009999999776482582, 90)
Part66.Color = Color3.new(1, 0.690196, 0)
Part66.Size = Vector3.new(1.3000017404556274, 0.19999992847442627, 0.19999992847442627)
Part66.BottomSurface = Enum.SurfaceType.Smooth
Part66.BrickColor = BrickColor.new("Deep orange")
Part66.TopSurface = Enum.SurfaceType.Smooth
Part66.brickColor = BrickColor.new("Deep orange")
Part67.Parent = Model23
Part67.CFrame = CFrame.new(20.4803753, 19.8673153, 73.7991867, -9.89999971e-05, 0.984807789, -0.173647955, 0, 0.173647955, 0.984807789, 1, 9.74959694e-05, -1.7191147e-05)
Part67.Orientation = Vector3.new(-80, -90.01000213623047, 0)
Part67.Position = Vector3.new(20.480375289916992, 19.8673152923584, 73.79918670654297)
Part67.Rotation = Vector3.new(-90, -10, -90.01000213623047)
Part67.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part67.Size = Vector3.new(4.784668445587158, 0.34666702151298523, 0.25999993085861206)
Part67.BottomSurface = Enum.SurfaceType.Smooth
Part67.BrickColor = BrickColor.new("Fossil")
Part67.TopSurface = Enum.SurfaceType.Smooth
Part67.brickColor = BrickColor.new("Fossil")
Part67.Shape = Enum.PartType.Cylinder
Part68.Parent = Model23
Part68.CFrame = CFrame.new(29.7320042, 15.6404686, 74.3300323, 9.89999971e-05, 0, 1, 0, 1, 0, -1, 0, 9.89999971e-05)
Part68.Orientation = Vector3.new(0, 89.98999786376953, 0)
Part68.Position = Vector3.new(29.732004165649414, 15.64046859741211, 74.33003234863281)
Part68.Rotation = Vector3.new(0, 90, 0)
Part68.Color = Color3.new(1, 0.690196, 0)
Part68.Size = Vector3.new(9.500000953674316, 0.24999992549419403, 0.5000000596046448)
Part68.BottomSurface = Enum.SurfaceType.Smooth
Part68.BrickColor = BrickColor.new("Deep orange")
Part68.TopSurface = Enum.SurfaceType.Smooth
Part68.brickColor = BrickColor.new("Deep orange")
Part68.Shape = Enum.PartType.Cylinder
Part69.Parent = Model23
Part69.CFrame = CFrame.new(18.765995, 14.0504141, 73.6798706, -9.89999971e-05, 0, -1, 0, 1, 0, 1, 0, -9.89999971e-05)
Part69.Orientation = Vector3.new(0, -90.01000213623047, 0)
Part69.Position = Vector3.new(18.765995025634766, 14.050414085388184, 73.67987060546875)
Part69.Rotation = Vector3.new(0, -90, 0)
Part69.Color = Color3.new(1, 0.690196, 0)
Part69.Size = Vector3.new(10.199999809265137, 2.6999998092651367, 1.5700002908706665)
Part69.BottomSurface = Enum.SurfaceType.Smooth
Part69.BrickColor = BrickColor.new("Deep orange")
Part69.TopSurface = Enum.SurfaceType.Smooth
Part69.brickColor = BrickColor.new("Deep orange")
Part69.Shape = Enum.PartType.Cylinder
Part70.Parent = Model23
Part70.CFrame = CFrame.new(20.9121304, 17.4771595, 77.2377472, 0.173647955, 0.984807789, -9.89999971e-05, -0.984807789, 0.173647955, 0, 1.7191147e-05, 9.74959694e-05, 1)
Part70.Orientation = Vector3.new(0, -0.009999999776482582, -80)
Part70.Position = Vector3.new(20.91213035583496, 17.47715950012207, 77.23774719238281)
Part70.Rotation = Vector3.new(0, -0.009999999776482582, -80)
Part70.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part70.Size = Vector3.new(2.76466703414917, 0.34666702151298523, 0.25999993085861206)
Part70.BottomSurface = Enum.SurfaceType.Smooth
Part70.BrickColor = BrickColor.new("Fossil")
Part70.TopSurface = Enum.SurfaceType.Smooth
Part70.brickColor = BrickColor.new("Fossil")
Part70.Shape = Enum.PartType.Cylinder
Part71.Parent = Model23
Part71.CFrame = CFrame.new(19.6192818, 19.7419319, 71.4110489, -0.984808028, -9.89999971e-05, -0.173647001, -0.173647001, 0, 0.984808028, -9.74959912e-05, 1, -1.71910524e-05)
Part71.Orientation = Vector3.new(-80, -90.01000213623047, -90)
Part71.Position = Vector3.new(19.619281768798828, 19.741931915283203, 71.41104888916016)
Part71.Rotation = Vector3.new(-90, -10, 179.99000549316406)
Part71.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part71.Size = Vector3.new(1.7646698951721191, 0.34666702151298523, 0.25999993085861206)
Part71.BottomSurface = Enum.SurfaceType.Smooth
Part71.BrickColor = BrickColor.new("Fossil")
Part71.TopSurface = Enum.SurfaceType.Smooth
Part71.brickColor = BrickColor.new("Fossil")
Part71.Shape = Enum.PartType.Cylinder
Part72.Parent = Model23
Part72.CFrame = CFrame.new(18.4168797, 16.0703773, 78.9744797, 0.984807491, 0.17364791, 9.89999971e-05, 0.17364791, -0.984807491, 0, 9.74959403e-05, 1.71911433e-05, -1)
Part72.Orientation = Vector3.new(0, 179.99000549316406, 170)
Part72.Position = Vector3.new(18.416879653930664, 16.070377349853516, 78.97447967529297)
Part72.Rotation = Vector3.new(-180, 0.009999999776482582, -10)
Part72.Color = Color3.new(1, 0.690196, 0)
Part72.Size = Vector3.new(1.9000002145767212, 2.350001573562622, 0.3499998152256012)
Part72.BottomSurface = Enum.SurfaceType.Smooth
Part72.BrickColor = BrickColor.new("Deep orange")
Part72.TopSurface = Enum.SurfaceType.Smooth
Part72.brickColor = BrickColor.new("Deep orange")
Part73.Parent = Model23
Part73.CFrame = CFrame.new(20.425993, 14.1854057, 73.7800369, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part73.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part73.Position = Vector3.new(20.425992965698242, 14.185405731201172, 73.78003692626953)
Part73.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part73.Color = Color3.new(1, 0.690196, 0)
Part73.Size = Vector3.new(3.75, 2.75, 7.5)
Part73.BottomSurface = Enum.SurfaceType.Smooth
Part73.BrickColor = BrickColor.new("Deep orange")
Part73.TopSurface = Enum.SurfaceType.Smooth
Part73.brickColor = BrickColor.new("Deep orange")
Part74.Parent = Model23
Part74.CFrame = CFrame.new(19.6340828, 19.7324314, 73.7219086, -0.984808028, -9.89999971e-05, -0.173647001, -0.173647001, 0, 0.984808028, -9.74959912e-05, 1, -1.71910524e-05)
Part74.Orientation = Vector3.new(-80, -90.01000213623047, -90)
Part74.Position = Vector3.new(19.634082794189453, 19.732431411743164, 73.72190856933594)
Part74.Rotation = Vector3.new(-90, -10, 179.99000549316406)
Part74.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part74.Size = Vector3.new(1.8446696996688843, 0.34666702151298523, 0.25999993085861206)
Part74.BottomSurface = Enum.SurfaceType.Smooth
Part74.BrickColor = BrickColor.new("Fossil")
Part74.TopSurface = Enum.SurfaceType.Smooth
Part74.brickColor = BrickColor.new("Fossil")
Part74.Shape = Enum.PartType.Cylinder
Part75.Parent = Model23
Part75.CFrame = CFrame.new(23.319582, 14.3904114, 73.7293777, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part75.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part75.Position = Vector3.new(23.319581985473633, 14.390411376953125, 73.72937774658203)
Part75.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part75.Color = Color3.new(1, 0.690196, 0)
Part75.Size = Vector3.new(2.0749990940093994, 1.2999999523162842, 2.7500007152557373)
Part75.BottomSurface = Enum.SurfaceType.Smooth
Part75.BrickColor = BrickColor.new("Deep orange")
Part75.TopSurface = Enum.SurfaceType.Smooth
Part75.brickColor = BrickColor.new("Deep orange")
Part76.Parent = Model23
Part76.CFrame = CFrame.new(21.4195728, 16.3395748, 73.7748947, -9.89999971e-05, 0.965925336, 0.2588211, 0, -0.2588211, 0.965925336, 1, 9.56266085e-05, 2.56232888e-05)
Part76.Orientation = Vector3.new(-75, 89.98999786376953, 180)
Part76.Position = Vector3.new(21.419572830200195, 16.339574813842773, 73.77489471435547)
Part76.Rotation = Vector3.new(-90, 15, -90.01000213623047)
Part76.Color = Color3.new(1, 0.690196, 0)
Part76.Size = Vector3.new(6.910476207733154, 0.05552372708916664, 0.16657127439975739)
Part76.BottomSurface = Enum.SurfaceType.Smooth
Part76.BrickColor = BrickColor.new("Deep orange")
Part76.TopSurface = Enum.SurfaceType.Smooth
Part76.brickColor = BrickColor.new("Deep orange")
Part77.Parent = Model23
Part77.CFrame = CFrame.new(32.1368942, 15.8244476, 71.6025391, -9.89789114e-05, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -2.56991952e-05, 9.55844298e-05)
Part77.Orientation = Vector3.new(15, 89.98999786376953, -180)
Part77.Position = Vector3.new(32.13689422607422, 15.824447631835938, 71.6025390625)
Part77.Rotation = Vector3.new(89.9800033569336, 75, 90.0199966430664)
Part77.Color = Color3.new(1, 0.690196, 0)
Part77.Size = Vector3.new(1.1104754209518433, 0.05552372708916664, 0.16657127439975739)
Part77.BottomSurface = Enum.SurfaceType.Smooth
Part77.BrickColor = BrickColor.new("Deep orange")
Part77.TopSurface = Enum.SurfaceType.Smooth
Part77.brickColor = BrickColor.new("Deep orange")
Part78.Parent = Model23
Part78.CFrame = CFrame.new(21.4252567, 16.5749226, 73.7748947, -9.89999971e-05, 0.965925336, 0.2588211, 0, -0.2588211, 0.965925336, 1, 9.56266085e-05, 2.56232888e-05)
Part78.Orientation = Vector3.new(-75, 89.98999786376953, 180)
Part78.Position = Vector3.new(21.425256729125977, 16.574922561645508, 73.77489471435547)
Part78.Rotation = Vector3.new(-90, 15, -90.01000213623047)
Part78.Color = Color3.new(1, 0.690196, 0)
Part78.Size = Vector3.new(6.910476207733154, 0.05552372708916664, 0.16657127439975739)
Part78.BottomSurface = Enum.SurfaceType.Smooth
Part78.BrickColor = BrickColor.new("Deep orange")
Part78.TopSurface = Enum.SurfaceType.Smooth
Part78.brickColor = BrickColor.new("Deep orange")
Part79.Parent = Model23
Part79.CFrame = CFrame.new(27.6820259, 13.0404234, 74.3298264, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part79.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part79.Position = Vector3.new(27.682025909423828, 13.040423393249512, 74.32982635498047)
Part79.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part79.Color = Color3.new(1, 0.690196, 0)
Part79.Size = Vector3.new(0.20000001788139343, 1, 9.099997520446777)
Part79.BottomSurface = Enum.SurfaceType.Smooth
Part79.BrickColor = BrickColor.new("Deep orange")
Part79.TopSurface = Enum.SurfaceType.Smooth
Part79.brickColor = BrickColor.new("Deep orange")
Part80.Parent = Model23
Part80.CFrame = CFrame.new(28.4815674, 13.0404253, 78.8299026, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part80.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part80.Position = Vector3.new(28.4815673828125, 13.040425300598145, 78.82990264892578)
Part80.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part80.Color = Color3.new(1, 0.690196, 0)
Part80.Size = Vector3.new(1.8000003099441528, 1, 0.09999986737966537)
Part80.BottomSurface = Enum.SurfaceType.Smooth
Part80.BrickColor = BrickColor.new("Deep orange")
Part80.TopSurface = Enum.SurfaceType.Smooth
Part80.brickColor = BrickColor.new("Deep orange")
Part81.Parent = Model23
Part81.CFrame = CFrame.new(30.0316467, 15.0654211, 78.0300674, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part81.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part81.Position = Vector3.new(30.031646728515625, 15.065421104431152, 78.03006744384766)
Part81.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part81.Color = Color3.new(1, 0.690196, 0)
Part81.Size = Vector3.new(1.100000262260437, 1.5499995946884155, 2)
Part81.BottomSurface = Enum.SurfaceType.Smooth
Part81.BrickColor = BrickColor.new("Deep orange")
Part81.TopSurface = Enum.SurfaceType.Smooth
Part81.brickColor = BrickColor.new("Deep orange")
Part82.Parent = Model23
Part82.CFrame = CFrame.new(27.4317207, 13.54041, 77.2798157, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part82.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part82.Position = Vector3.new(27.431720733642578, 13.540410041809082, 77.27981567382812)
Part82.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part82.Color = Color3.new(1, 0.690196, 0)
Part82.Size = Vector3.new(0.800000011920929, 2.299999952316284, 2)
Part82.BottomSurface = Enum.SurfaceType.Smooth
Part82.BrickColor = BrickColor.new("Deep orange")
Part82.TopSurface = Enum.SurfaceType.Smooth
Part82.brickColor = BrickColor.new("Deep orange")
Part83.Parent = Model23
Part83.CFrame = CFrame.new(21.4918289, 17.2562809, 73.80513, -9.89999971e-05, -1, 0, 0, 0, -1, 1, -9.89999971e-05, 0)
Part83.Orientation = Vector3.new(90, -90.01000213623047, 0)
Part83.Position = Vector3.new(21.49182891845703, 17.25628089904785, 73.80513000488281)
Part83.Rotation = Vector3.new(90, 0, 90.01000213623047)
Part83.Color = Color3.new(1, 0.690196, 0)
Part83.Size = Vector3.new(6.850000858306885, 0.19999992847442627, 0.19999992847442627)
Part83.BottomSurface = Enum.SurfaceType.Smooth
Part83.BrickColor = BrickColor.new("Deep orange")
Part83.TopSurface = Enum.SurfaceType.Smooth
Part83.brickColor = BrickColor.new("Deep orange")
Part84.Parent = Model23
Part84.CFrame = CFrame.new(28.4824753, 13.0404205, 69.7298965, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part84.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part84.Position = Vector3.new(28.48247528076172, 13.040420532226562, 69.72989654541016)
Part84.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part84.Color = Color3.new(1, 0.690196, 0)
Part84.Size = Vector3.new(1.8000003099441528, 1, 0.09999986737966537)
Part84.BottomSurface = Enum.SurfaceType.Smooth
Part84.BrickColor = BrickColor.new("Deep orange")
Part84.TopSurface = Enum.SurfaceType.Smooth
Part84.brickColor = BrickColor.new("Deep orange")
Part85.Parent = Model23
Part85.CFrame = CFrame.new(27.5317211, 14.990407, 77.2798157, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part85.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part85.Position = Vector3.new(27.531721115112305, 14.99040699005127, 77.27981567382812)
Part85.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part85.Color = Color3.new(1, 0.690196, 0)
Part85.Size = Vector3.new(0.6000001430511475, 1, 2)
Part85.BottomSurface = Enum.SurfaceType.Smooth
Part85.BrickColor = BrickColor.new("Deep orange")
Part85.TopSurface = Enum.SurfaceType.Smooth
Part85.brickColor = BrickColor.new("Deep orange")
Part86.Parent = Model23
Part86.CFrame = CFrame.new(21.1918106, 16.7062836, 73.7801132, -9.89999971e-05, -1, 0, 0, 0, -1, 1, -9.89999971e-05, 0)
Part86.Orientation = Vector3.new(90, -90.01000213623047, 0)
Part86.Position = Vector3.new(21.191810607910156, 16.706283569335938, 73.78011322021484)
Part86.Rotation = Vector3.new(90, 0, 90.01000213623047)
Part86.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part86.Size = Vector3.new(7.200000286102295, 0.2999999523162842, 1.2000001668930054)
Part86.BottomSurface = Enum.SurfaceType.Smooth
Part86.BrickColor = BrickColor.new("Really black")
Part86.TopSurface = Enum.SurfaceType.Smooth
Part86.brickColor = BrickColor.new("Really black")
Part87.Parent = Model23
Part87.CFrame = CFrame.new(23.9072609, 13.4654074, 71.7294312, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part87.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part87.Position = Vector3.new(23.90726089477539, 13.465407371520996, 71.72943115234375)
Part87.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part87.Color = Color3.new(1, 0.690196, 0)
Part87.Size = Vector3.new(3.1999988555908203, 2.549999952316284, 0.9000000953674316)
Part87.BottomSurface = Enum.SurfaceType.Smooth
Part87.BrickColor = BrickColor.new("Deep orange")
Part87.TopSurface = Enum.SurfaceType.Smooth
Part87.brickColor = BrickColor.new("Deep orange")
Part88.Parent = Model23
Part88.CFrame = CFrame.new(21.4084644, 16.789566, 73.7748871, -9.89999971e-05, 0.965925336, 0.2588211, 0, -0.2588211, 0.965925336, 1, 9.56266085e-05, 2.56232888e-05)
Part88.Orientation = Vector3.new(-75, 89.98999786376953, 180)
Part88.Position = Vector3.new(21.408464431762695, 16.789566040039062, 73.77488708496094)
Part88.Rotation = Vector3.new(-90, 15, -90.01000213623047)
Part88.Color = Color3.new(1, 0.690196, 0)
Part88.Size = Vector3.new(6.910476207733154, 0.05552372708916664, 0.16657127439975739)
Part88.BottomSurface = Enum.SurfaceType.Smooth
Part88.BrickColor = BrickColor.new("Deep orange")
Part88.TopSurface = Enum.SurfaceType.Smooth
Part88.brickColor = BrickColor.new("Deep orange")
Part89.Parent = Model23
Part89.CFrame = CFrame.new(19.0759869, 16.3154106, 73.7799225, -9.89999971e-05, 0, -1, 0, 1, 0, 1, 0, -9.89999971e-05)
Part89.Orientation = Vector3.new(0, -90.01000213623047, 0)
Part89.Position = Vector3.new(19.075986862182617, 16.315410614013672, 73.77992248535156)
Part89.Rotation = Vector3.new(0, -90, 0)
Part89.Color = Color3.new(1, 0.690196, 0)
Part89.Size = Vector3.new(7.499999523162842, 2.049999952316284, 4.549999713897705)
Part89.BottomSurface = Enum.SurfaceType.Smooth
Part89.BrickColor = BrickColor.new("Deep orange")
Part89.TopSurface = Enum.SurfaceType.Smooth
Part89.brickColor = BrickColor.new("Deep orange")
Part90.Parent = Model23
Part90.CFrame = CFrame.new(22.7694702, 15.3404112, 74.8668289, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part90.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part90.Position = Vector3.new(22.76947021484375, 15.340411186218262, 74.86682891845703)
Part90.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part90.Color = Color3.new(1, 0.690196, 0)
Part90.Size = Vector3.new(0.9750000238418579, 0.6000000238418579, 0.47499990463256836)
Part90.BottomSurface = Enum.SurfaceType.Smooth
Part90.BrickColor = BrickColor.new("Deep orange")
Part90.TopSurface = Enum.SurfaceType.Smooth
Part90.brickColor = BrickColor.new("Deep orange")
Part91.Parent = Model23
Part91.CFrame = CFrame.new(30.507019, 14.9404526, 74.2801056, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part91.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part91.Position = Vector3.new(30.50701904296875, 14.940452575683594, 74.28010559082031)
Part91.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part91.Color = Color3.new(1, 0.690196, 0)
Part91.Size = Vector3.new(2.2884812355041504, 1.6554970741271973, 9.299997329711914)
Part91.BottomSurface = Enum.SurfaceType.Smooth
Part91.BrickColor = BrickColor.new("Deep orange")
Part91.TopSurface = Enum.SurfaceType.Smooth
Part91.brickColor = BrickColor.new("Deep orange")
Part92.Parent = Model23
Part92.CFrame = CFrame.new(31.543211, 16.1269188, 71.6580048, -9.89789114e-05, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -2.56991952e-05, 9.55844298e-05)
Part92.Orientation = Vector3.new(15, 89.98999786376953, -180)
Part92.Position = Vector3.new(31.543210983276367, 16.12691879272461, 71.65800476074219)
Part92.Rotation = Vector3.new(89.9800033569336, 75, 90.0199966430664)
Part92.Color = Color3.new(1, 0.690196, 0)
Part92.Size = Vector3.new(1.1104754209518433, 0.05552372708916664, 0.16657127439975739)
Part92.BottomSurface = Enum.SurfaceType.Smooth
Part92.BrickColor = BrickColor.new("Deep orange")
Part92.TopSurface = Enum.SurfaceType.Smooth
Part92.brickColor = BrickColor.new("Deep orange")
Part93.Parent = Model23
Part93.CFrame = CFrame.new(30.949564, 16.4294281, 71.6024246, -9.89999971e-05, -0.453989148, 0.891007304, 0, -0.891007304, -0.453989148, 1, -4.49449253e-05, 8.82097229e-05)
Part93.Orientation = Vector3.new(27, 89.98999786376953, 180)
Part93.Position = Vector3.new(30.94956398010254, 16.429428100585938, 71.60242462158203)
Part93.Rotation = Vector3.new(89.98999786376953, 63, 90.01000213623047)
Part93.Color = Color3.new(1, 0.690196, 0)
Part93.Size = Vector3.new(1.1104754209518433, 0.05552372708916664, 0.16657127439975739)
Part93.BottomSurface = Enum.SurfaceType.Smooth
Part93.BrickColor = BrickColor.new("Deep orange")
Part93.TopSurface = Enum.SurfaceType.Smooth
Part93.brickColor = BrickColor.new("Deep orange")
Part94.Parent = Model23
Part94.CFrame = CFrame.new(30.9706154, 16.4653339, 71.630188, -9.89999971e-05, -0.453989148, 0.891007304, 0, -0.891007304, -0.453989148, 1, -4.49449253e-05, 8.82097229e-05)
Part94.Orientation = Vector3.new(27, 89.98999786376953, 180)
Part94.Position = Vector3.new(30.97061538696289, 16.465333938598633, 71.63018798828125)
Part94.Rotation = Vector3.new(89.98999786376953, 63, 90.01000213623047)
Part94.Color = Color3.new(1, 0.690196, 0)
Part94.Size = Vector3.new(1.1659988164901733, 0.05552372708916664, 0.16657127439975739)
Part94.BottomSurface = Enum.SurfaceType.Smooth
Part94.BrickColor = BrickColor.new("Deep orange")
Part94.TopSurface = Enum.SurfaceType.Smooth
Part94.brickColor = BrickColor.new("Deep orange")
Part95.Parent = Model23
Part95.CFrame = CFrame.new(29.1570187, 16.1404076, 74.2799759, -9.89999971e-05, 0, -1, 0, 1, 0, 1, 0, -9.89999971e-05)
Part95.Orientation = Vector3.new(0, -90.01000213623047, 0)
Part95.Position = Vector3.new(29.157018661499023, 16.14040756225586, 74.27997589111328)
Part95.Rotation = Vector3.new(0, -90, 0)
Part95.Color = Color3.new(1, 0.690196, 0)
Part95.Size = Vector3.new(8, 1, 2.6499998569488525)
Part95.BottomSurface = Enum.SurfaceType.Smooth
Part95.BrickColor = BrickColor.new("Deep orange")
Part95.TopSurface = Enum.SurfaceType.Smooth
Part95.brickColor = BrickColor.new("Deep orange")
Part96.Parent = Model23
Part96.CFrame = CFrame.new(19.7009926, 17.5654259, 73.7549438, 9.89999971e-05, 0, 1, 0, 1, 0, -1, 0, 9.89999971e-05)
Part96.Orientation = Vector3.new(0, 89.98999786376953, 0)
Part96.Position = Vector3.new(19.700992584228516, 17.565425872802734, 73.75494384765625)
Part96.Rotation = Vector3.new(0, 90, 0)
Part96.Color = Color3.new(1, 0.690196, 0)
Part96.Size = Vector3.new(8.349998474121094, 0.550000011920929, 0.3999999463558197)
Part96.BottomSurface = Enum.SurfaceType.Smooth
Part96.BrickColor = BrickColor.new("Deep orange")
Part96.TopSurface = Enum.SurfaceType.Smooth
Part96.brickColor = BrickColor.new("Deep orange")
Part96.Shape = Enum.PartType.Cylinder
Part97.Parent = Model23
Part97.CFrame = CFrame.new(31.6422176, 16.076519, 71.1305313, -0.891006887, -0.453989953, -9.89999971e-05, 0.453989953, -0.891006887, 0, -8.82096792e-05, -4.49450054e-05, 1)
Part97.Orientation = Vector3.new(0, -0.009999999776482582, 153)
Part97.Position = Vector3.new(31.6422176361084, 16.076519012451172, 71.13053131103516)
Part97.Rotation = Vector3.new(0, -0.009999999776482582, 153)
Part97.Color = Color3.new(1, 0.690196, 0)
Part97.Size = Vector3.new(1.7212361097335815, 0.05552372708916664, 0.16657127439975739)
Part97.BottomSurface = Enum.SurfaceType.Smooth
Part97.BrickColor = BrickColor.new("Deep orange")
Part97.TopSurface = Enum.SurfaceType.Smooth
Part97.brickColor = BrickColor.new("Deep orange")
Part98.Parent = Model23
Part98.CFrame = CFrame.new(30.0569553, 15.8904161, 74.2800293, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part98.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part98.Position = Vector3.new(30.056955337524414, 15.890416145324707, 74.280029296875)
Part98.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part98.Color = Color3.new(1, 0.690196, 0)
Part98.Size = Vector3.new(1.416669249534607, 0.8952382206916809, 9.30000114440918)
Part98.BottomSurface = Enum.SurfaceType.Smooth
Part98.BrickColor = BrickColor.new("Deep orange")
Part98.TopSurface = Enum.SurfaceType.Smooth
Part98.brickColor = BrickColor.new("Deep orange")
Part99.Parent = Model23
Part99.CFrame = CFrame.new(22.5448856, 15.9011364, 73.7543182, 0.173647955, 0.984807789, -9.89999971e-05, -0.984807789, 0.173647955, 0, 1.7191147e-05, 9.74959694e-05, 1)
Part99.Orientation = Vector3.new(0, -0.009999999776482582, -80)
Part99.Position = Vector3.new(22.544885635375977, 15.90113639831543, 73.75431823730469)
Part99.Rotation = Vector3.new(0, -0.009999999776482582, -80)
Part99.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part99.Size = Vector3.new(3.0249991416931152, 0.3749999701976776, 1.4500001668930054)
Part99.BottomSurface = Enum.SurfaceType.Smooth
Part99.BrickColor = BrickColor.new("Really black")
Part99.TopSurface = Enum.SurfaceType.Smooth
Part99.brickColor = BrickColor.new("Really black")
Part100.Parent = Model23
Part100.CFrame = CFrame.new(30.1570187, 14.0154114, 74.2800751, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part100.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part100.Position = Vector3.new(30.157018661499023, 14.015411376953125, 74.28007507324219)
Part100.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part100.Color = Color3.new(1, 0.690196, 0)
Part100.Size = Vector3.new(4.650000095367432, 3.25, 8)
Part100.BottomSurface = Enum.SurfaceType.Smooth
Part100.BrickColor = BrickColor.new("Deep orange")
Part100.TopSurface = Enum.SurfaceType.Smooth
Part100.brickColor = BrickColor.new("Deep orange")
Part101.Parent = Model23
Part101.CFrame = CFrame.new(29.9820194, 13.04041, 74.2800598, 9.89999971e-05, 0, 1, 0, 1, 0, -1, 0, 9.89999971e-05)
Part101.Orientation = Vector3.new(0, 89.98999786376953, 0)
Part101.Position = Vector3.new(29.982019424438477, 13.040410041809082, 74.28005981445312)
Part101.Rotation = Vector3.new(0, 90, 0)
Part101.Color = Color3.new(1, 0.690196, 0)
Part101.Size = Vector3.new(9.39999771118164, 0.8867924213409424, 0.8867924213409424)
Part101.BottomSurface = Enum.SurfaceType.Smooth
Part101.BrickColor = BrickColor.new("Deep orange")
Part101.TopSurface = Enum.SurfaceType.Smooth
Part101.brickColor = BrickColor.new("Deep orange")
Part101.Shape = Enum.PartType.Cylinder
Part102.Parent = Model23
Part102.CFrame = CFrame.new(27.2821217, 14.0904112, 73.279808, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part102.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part102.Position = Vector3.new(27.282121658325195, 14.090411186218262, 73.2798080444336)
Part102.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part102.Color = Color3.new(1, 0.690196, 0)
Part102.Size = Vector3.new(1.100000023841858, 3.399998903274536, 6.000000476837158)
Part102.BottomSurface = Enum.SurfaceType.Smooth
Part102.BrickColor = BrickColor.new("Deep orange")
Part102.TopSurface = Enum.SurfaceType.Smooth
Part102.brickColor = BrickColor.new("Deep orange")
Part103.Parent = Model23
Part103.CFrame = CFrame.new(31.147419, 16.3285389, 71.6024399, -9.89789114e-05, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -2.56991952e-05, 9.55844298e-05)
Part103.Orientation = Vector3.new(15, 89.98999786376953, -180)
Part103.Position = Vector3.new(31.147418975830078, 16.32853889465332, 71.6024398803711)
Part103.Rotation = Vector3.new(89.9800033569336, 75, 90.0199966430664)
Part103.Color = Color3.new(1, 0.690196, 0)
Part103.Size = Vector3.new(1.1104754209518433, 0.05552372708916664, 0.16657127439975739)
Part103.BottomSurface = Enum.SurfaceType.Smooth
Part103.BrickColor = BrickColor.new("Deep orange")
Part103.TopSurface = Enum.SurfaceType.Smooth
Part103.brickColor = BrickColor.new("Deep orange")
Part104.Parent = Model23
Part104.CFrame = CFrame.new(27.0833435, 16.8968048, 72.0797958, -0.342019916, -0.939692736, -9.89999971e-05, 0.939692736, -0.342019886, 0, -3.38599712e-05, -9.30295791e-05, 1)
Part104.Orientation = Vector3.new(0, -0.009999999776482582, 110)
Part104.Position = Vector3.new(27.083343505859375, 16.896804809570312, 72.07979583740234)
Part104.Rotation = Vector3.new(0, -0.009999999776482582, 110)
Part104.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part104.Size = Vector3.new(0.2249997854232788, 0.14999999105930328, 0.14999984204769135)
Part104.BottomSurface = Enum.SurfaceType.Smooth
Part104.BrickColor = BrickColor.new("Really black")
Part104.TopSurface = Enum.SurfaceType.Smooth
Part104.brickColor = BrickColor.new("Really black")
Part104.Shape = Enum.PartType.Cylinder
Part105.Name = "Seat"
Part105.Parent = Model23
Part105.CFrame = CFrame.new(23.4195766, 15.04041, 73.7543793, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part105.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part105.Position = Vector3.new(23.41957664489746, 15.040410041809082, 73.75437927246094)
Part105.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part105.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part105.Size = Vector3.new(1.4749999046325684, 1, 1.3500005006790161)
Part105.Anchored = true
Part105.BottomSurface = Enum.SurfaceType.Smooth
Part105.BrickColor = BrickColor.new("Really black")
Part105.TopSurface = Enum.SurfaceType.Smooth
Part105.brickColor = BrickColor.new("Really black")
Weld106.Parent = Part105
Weld106.C0 = CFrame.new(4.09749222, 0.765007973, 2.93502808, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld106.Part0 = Part105
Weld106.Part1 = MeshPart28
Weld106.part1 = MeshPart28
Weld107.Parent = Part105
Weld107.C0 = CFrame.new(-4.21071815, -1.03534794, -5.21240997, -0.00259799976, 0.171009958, -0.985265851, 0.030152997, -0.984807789, -0.171009958, -0.999541879, -0.0301530026, -0.00259793224)
Weld107.Part0 = Part105
Weld107.Part1 = MeshPart37
Weld107.part1 = MeshPart37
Weld108.Parent = Part105
Weld108.C0 = CFrame.new(-5.10347176, -1.13879299, 5.18920898, 0.00259599998, 0.171009004, 0.985266089, -0.0301530007, -0.984808028, 0.17100893, 0.999541998, -0.0301526655, 0.00259987242)
Weld108.Part0 = Part105
Weld108.Part1 = MeshPart34
Weld108.part1 = MeshPart34
Weld109.Parent = Part105
Weld109.C0 = CFrame.new(-5.15558815, -1.17968082, -5.205616, 0.00259599998, 0.171009004, 0.985266089, -0.0301530007, -0.984808028, 0.17100893, 0.999541998, -0.0301526655, 0.00259987242)
Weld109.Part0 = Part105
Weld109.Part1 = MeshPart29
Weld109.part1 = MeshPart29
Weld110.Parent = Part105
Weld110.C0 = CFrame.new(-4.1746769, -0.9750247, 5.2044487, -0.00259799976, 0.171009958, -0.985265851, 0.030152997, -0.984807789, -0.171009958, -0.999541879, -0.0301530026, -0.00259793224)
Weld110.Part0 = Part105
Weld110.Part1 = MeshPart33
Weld110.part1 = MeshPart33
Weld111.Parent = Part105
Weld111.C0 = CFrame.new(3.38808203, 1.79605436, -0.159912109, 0, 0.500000238, -0.866025388, 0, 0.866025388, 0.500000238, 1, 0, 0)
Weld111.Part0 = Part105
Weld111.Part1 = MeshPart366
Weld111.part1 = MeshPart366
Weld112.Parent = Part105
Weld112.C0 = CFrame.new(3.8874979, 1.26249695, -1.67494965, -0.342019916, -0.939692736, 0, 0.939692736, -0.342019886, 0, 0, 0, 1)
Weld112.Part0 = Part105
Weld112.Part1 = Part65
Weld112.part1 = Part65
Weld113.Parent = Part105
Weld113.C0 = CFrame.new(-2.93919706, 4.82690573, 0.0450973511, 0, 0.984807789, -0.173647955, 0, 0.173647955, 0.984807789, 1, 0, 0)
Weld113.Part0 = Part105
Weld113.Part1 = Part67
Weld113.part1 = Part67
Weld114.Parent = Part105
Weld114.C0 = CFrame.new(-2.54238081, 2.50330973, -3.39068604, 0.173647955, 0.984807789, 0, -0.984807789, 0.173647955, 0, 0, 0, 1)
Weld114.Part0 = Part105
Weld114.Part1 = Part51
Weld114.part1 = Part51
Weld115.Parent = Part105
Weld115.C0 = CFrame.new(-4.77833271, 2.51407862, 2.59593964, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld115.Part0 = Part105
Weld115.Part1 = Part60
Weld115.part1 = Part60
Weld116.Parent = Part105
Weld116.C0 = CFrame.new(-2.50710106, 2.43674994, 3.48361969, 0.173647955, 0.984807789, 0, -0.984807789, 0.173647955, 0, 0, 0, 1)
Weld116.Part0 = Part105
Weld116.Part1 = Part70
Weld116.part1 = Part70
Weld117.Parent = Part105
Weld117.C0 = CFrame.new(-0.674996853, 0.325036049, -1.21248627, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld117.Part0 = Part105
Weld117.Part1 = Part38
Weld117.part1 = Part38
Weld118.Parent = Part105
Weld118.C0 = CFrame.new(-5.0021801, 1.02996635, 5.22059631, 0.984807491, 0.17364791, 0, 0.17364791, -0.984807491, 0, 0, 0, -1)
Weld118.Part0 = Part105
Weld118.Part1 = Part72
Weld118.part1 = Part72
Weld119.Parent = Part105
Weld119.C0 = CFrame.new(4.01423311, 0.685228348, -0.142475128, -0.500000238, -0.866025388, 0, 0.866025388, -0.500000238, 0, 0, 0, 1)
Weld119.Part0 = Part105
Weld119.Part1 = Part39
Weld119.part1 = Part39
Weld120.Parent = Part105
Weld120.C0 = CFrame.new(-5.02974892, 0.965667248, -5.17404938, 0.984807491, 0.17364791, 0, 0.17364791, -0.984807491, 0, 0, 0, -1)
Weld120.Part0 = Part105
Weld120.Part1 = Part43
Weld120.part1 = Part43
Weld121.Parent = Part105
Weld121.C0 = CFrame.new(7.66248989, 0.625064373, 0.575016022, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld121.Part0 = Part105
Weld121.Part1 = Part44
Weld121.part1 = Part44
Weld122.Parent = Part105
Weld122.C0 = CFrame.new(8.23977852, 1.07025337, -2.62289047, -0.891006887, -0.453989953, 0, 0.453989953, -0.891006887, 0, 0, 0, 1)
Weld122.Part0 = Part105
Weld122.Part1 = Part55
Weld122.part1 = Part55
Weld123.Parent = Part105
Weld123.C0 = CFrame.new(-1.99258375, 1.98087072, 0.0311737061, 0, 0.965925336, 0.2588211, 0, -0.2588211, 0.965925336, 1, 0, 0)
Weld123.Part0 = Part105
Weld123.Part1 = Part52
Weld123.part1 = Part52
Weld124.Parent = Part105
Weld124.C0 = CFrame.new(6.31248426, 0.600058079, 0.575031281, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld124.Part0 = Part105
Weld124.Part1 = Part68
Weld124.part1 = Part68
Weld125.Parent = Part105
Weld125.C0 = CFrame.new(5.03749514, 0.743421078, 0.461845398, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld125.Part0 = Part105
Weld125.Part1 = Part47
Weld125.part1 = Part47
Weld126.Parent = Part105
Weld126.C0 = CFrame.new(-4.81357384, 2.51407862, -2.41405869, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld126.Part0 = Part105
Weld126.Part1 = Part54
Weld126.part1 = Part54
Weld127.Parent = Part105
Weld127.C0 = CFrame.new(-4.65358877, -0.989995956, -0.0740509033, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Weld127.Part0 = Part105
Weld127.Part1 = Part69
Weld127.part1 = Part69
Weld128.Parent = Part105
Weld128.C0 = CFrame.new(-3.8005271, 4.70152235, -2.34295273, -0.984808028, 0, -0.173647001, -0.173647001, 0, 0.984808028, 0, 1, 0)
Weld128.Part0 = Part105
Weld128.Part1 = Part71
Weld128.part1 = Part71
Weld129.Parent = Part105
Weld129.C0 = CFrame.new(-1.92769599, 1.66587734, 3.5509491, 0, -1, 0, 1, 0, -0, 0, 0, 1)
Weld129.Part0 = Part105
Weld129.Part1 = Part66
Weld129.part1 = Part66
Weld130.Parent = Part105
Weld130.C0 = CFrame.new(-2.99358177, -0.855003834, 0.0259552002, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld130.Part0 = Part105
Weld130.Part1 = Part73
Weld130.part1 = Part73
Weld131.Parent = Part105
Weld131.C0 = CFrame.new(-5.17691183, 1.95373774, -0.0740432739, 0.984807789, 0, -0.173647955, 0.173647955, 0, 0.984807789, 0, -1, 0)
Weld131.Part0 = Part105
Weld131.Part1 = Part45
Weld131.part1 = Part45
Weld132.Parent = Part105
Weld132.C0 = CFrame.new(8.24024582, 1.07118034, -1.62522888, -0.891006887, -0.453989953, 0, 0.453989953, -0.891006887, 0, 0, 0, 1)
Weld132.Part0 = Part105
Weld132.Part1 = Part56
Weld132.part1 = Part56
Weld133.Parent = Part105
Weld133.C0 = CFrame.new(8.19077587, 0.974070072, -2.1804657, -0.891006887, -0.453989953, 0, 0.453989953, -0.891006887, 0, 0, 0, 1)
Weld133.Part0 = Part105
Weld133.Part1 = Part46
Weld133.part1 = Part46
Weld134.Parent = Part105
Weld134.C0 = CFrame.new(-3.90843773, 4.66941023, 2.43470383, -0.984808028, 0, -0.173647001, -0.173647001, 0, 0.984808028, 0, 1, 0)
Weld134.Part0 = Part105
Weld134.Part1 = Part49
Weld134.part1 = Part49
Weld135.Parent = Part105
Weld135.C0 = CFrame.new(3.80749798, 1.282897, -2.57493973, -0.500000238, -0.866025388, 0, 0.866025388, -0.500000238, 0, 0, 0, 1)
Weld135.Part0 = Part105
Weld135.Part1 = Part61
Weld135.part1 = Part61
Weld136.Parent = Part105
Weld136.C0 = CFrame.new(0.494495034, -1.54300404, -2.23996735, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld136.Part0 = Part105
Weld136.Part1 = Part57
Weld136.part1 = Part57
Weld137.Parent = Part105
Weld137.C0 = CFrame.new(-4.09360695, 2.57502222, 0.000946044922, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld137.Part0 = Part105
Weld137.Part1 = Part42
Weld137.part1 = Part42
Weld138.Parent = Part105
Weld138.C0 = CFrame.new(-4.58859015, -1.18999863, -0.044052124, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld138.Part0 = Part105
Weld138.Part1 = Part48
Weld138.part1 = Part48
Weld139.Parent = Part105
Weld139.C0 = CFrame.new(7.26248503, 0.625048161, 0.575061798, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld139.Part0 = Part105
Weld139.Part1 = Part41
Weld139.part1 = Part41
Weld140.Parent = Part105
Weld140.C0 = CFrame.new(-4.7935729, 2.27499819, 0.0259399414, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Weld140.Part0 = Part105
Weld140.Part1 = Part53
Weld140.part1 = Part53
Weld141.Parent = Part105
Weld141.C0 = CFrame.new(-4.77833271, 3.22405386, -0.0527572632, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld141.Part0 = Part105
Weld141.Part1 = Part40
Weld141.part1 = Part40
Weld142.Parent = Part105
Weld142.C0 = CFrame.new(0.512487054, -1.57500076, 2.00001526, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld142.Part0 = Part105
Weld142.Part1 = Part50
Weld142.part1 = Part50
Weld143.Parent = Part105
Weld143.C0 = CFrame.new(-5.23930073, 2.50768042, -0.048576355, -0.173647955, 0, 0.984807789, 0.984807789, 0, 0.173647955, 0, 1, 0)
Weld143.Part0 = Part105
Weld143.Part1 = Part62
Weld143.part1 = Part62
Weld144.Parent = Part105
Weld144.C0 = CFrame.new(6.56249428, -1.85000086, 0.525032043, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld144.Part0 = Part105
Weld144.Part1 = Part304
Weld144.part1 = Part304
Weld145.Parent = Part105
Weld145.C0 = CFrame.new(4.08749294, 1.02499628, 2.92505646, 0, -1, 0, 1, 0, -0, 0, 0, 1)
Weld145.Part0 = Part105
Weld145.Part1 = Part306
Weld145.part1 = Part306
Weld146.Parent = Part105
Weld146.C0 = CFrame.new(8.71710396, 0.784038067, -2.15270615, 2.10847091e-08, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -7.6109437e-08, -4.22219593e-08)
Weld146.Part0 = Part105
Weld146.Part1 = Part77
Weld146.part1 = Part77
Weld147.Parent = Part105
Weld147.C0 = CFrame.new(7.0874939, -0.099957943, 0.525028229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld147.Part0 = Part105
Weld147.Part1 = Part91
Weld147.part1 = Part91
Weld148.Parent = Part105
Weld148.C0 = CFrame.new(-1.92776299, 1.11587524, 0.050945282, 0, -1, 0, 0, 0, -1, 1, 0, 0)
Weld148.Part0 = Part105
Weld148.Part1 = Part310
Weld148.part1 = Part310
Weld149.Parent = Part105
Weld149.C0 = CFrame.new(-0.87469101, 0.860726357, 2.28881836e-05, 0.173647955, 0.984807789, 0, -0.984807789, 0.173647955, 0, 0, 0, 1)
Weld149.Part0 = Part105
Weld149.Part1 = Part99
Weld149.part1 = Part99
Weld150.Parent = Part105
Weld150.C0 = CFrame.new(4.11249399, -0.0500030518, 3.52503204, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld150.Part0 = Part105
Weld150.Part1 = Part85
Weld150.part1 = Part85
Weld151.Parent = Part105
Weld151.C0 = CFrame.new(-1.92771482, 1.66587305, -3.44904709, 0, -1, 0, 1, 0, -0, 0, 0, 1)
Weld151.Part0 = Part105
Weld151.Part1 = Part302
Weld151.part1 = Part302
Weld152.Parent = Part105
Weld152.C0 = CFrame.new(-3.71858406, 2.52501631, 0.000930786133, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld152.Part0 = Part105
Weld152.Part1 = Part96
Weld152.part1 = Part96
Weld153.Parent = Part105
Weld153.C0 = CFrame.new(7.55082798, 1.42492437, -2.12493896, 0, -0.453989148, 0.891007304, 0, -0.891007304, -0.453989148, 1, 0, 0)
Weld153.Part0 = Part105
Weld153.Part1 = Part94
Weld153.part1 = Part94
Weld154.Parent = Part105
Weld154.C0 = CFrame.new(6.61249399, 0.0250110626, 4.27503586, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld154.Part0 = Part105
Weld154.Part1 = Part81
Weld154.part1 = Part81
Weld155.Parent = Part105
Weld155.C0 = CFrame.new(8.12342644, 1.08650923, -2.09717941, 2.10847091e-08, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -7.6109437e-08, -4.22219593e-08)
Weld155.Part0 = Part105
Weld155.Part1 = Part92
Weld155.part1 = Part92
Weld156.Parent = Part105
Weld156.C0 = CFrame.new(7.52977419, 1.38901806, -2.15270233, 0, -0.453989148, 0.891007304, 0, -0.891007304, -0.453989148, 1, 0, 0)
Weld156.Part0 = Part105
Weld156.Part1 = Part93
Weld156.part1 = Part93
Weld157.Parent = Part105
Weld157.C0 = CFrame.new(8.22238159, 1.03610802, -2.62466431, -0.891006887, -0.453989953, 0, 0.453989953, -0.891006887, 0, 0, 0, 1)
Weld157.Part0 = Part105
Weld157.Part1 = Part97
Weld157.part1 = Part97
Weld158.Parent = Part105
Weld158.C0 = CFrame.new(8.32133007, 0.985692978, -2.09718323, 2.10847091e-08, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -7.6109437e-08, -4.22219593e-08)
Weld158.Part0 = Part105
Weld158.Part1 = Part297
Weld158.part1 = Part297
Weld159.Parent = Part105
Weld159.C0 = CFrame.new(3.48509789, 1.84132624, -2.57493973, -0.500000238, -0.866025388, 0, 0.866025388, -0.500000238, 0, 0, 0, 1)
Weld159.Part0 = Part105
Weld159.Part1 = Part298
Weld159.part1 = Part298
Weld160.Parent = Part105
Weld160.C0 = CFrame.new(8.51921272, 0.884866238, -2.15270615, 2.10847091e-08, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -7.6109437e-08, -4.22219593e-08)
Weld160.Part0 = Part105
Weld160.Part1 = Part300
Weld160.part1 = Part300
Weld161.Parent = Part105
Weld161.C0 = CFrame.new(4.08749294, 1.52500105, 2.92505646, 0, -1, 0, 1, 0, -0, 0, 0, 1)
Weld161.Part0 = Part105
Weld161.Part1 = Part293
Weld161.part1 = Part293
Weld162.Parent = Part105
Weld162.C0 = CFrame.new(6.56249428, -2, 0.525032043, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld162.Part0 = Part105
Weld162.Part1 = Part101
Weld162.part1 = Part101
Weld163.Parent = Part105
Weld163.C0 = CFrame.new(6.76248407, 0.625064373, 0.575069427, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld163.Part0 = Part105
Weld163.Part1 = Part301
Weld163.part1 = Part301
Weld164.Parent = Part105
Weld164.C0 = CFrame.new(1.9625001, -1.79999971, -0.0624923706, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld164.Part0 = Part105
Weld164.Part1 = Part305
Weld164.part1 = Part305
Weld165.Parent = Part105
Weld165.C0 = CFrame.new(-5.01512289, 2.5029664, -2.32540512, -0.173647955, 0, 0.984807789, 0.984807789, 0, 0.173647955, 0, 1, 0)
Weld165.Part0 = Part105
Weld165.Part1 = Part321
Weld165.part1 = Part321
Weld166.Parent = Part105
Weld166.C0 = CFrame.new(6.73749399, -1.02499866, 0.525032043, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld166.Part0 = Part105
Weld166.Part1 = Part100
Weld166.part1 = Part100
Weld167.Parent = Part105
Weld167.C0 = CFrame.new(7.26250124, -0.525002956, 0.525005341, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld167.Part0 = Part105
Weld167.Part1 = Part296
Weld167.part1 = Part296
Weld168.Parent = Part105
Weld168.C0 = CFrame.new(5.76249599, 1.65004015, 4.0250206, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld168.Part0 = Part105
Weld168.Part1 = Part307
Weld168.part1 = Part307
Weld169.Parent = Part105
Weld169.C0 = CFrame.new(5.73749399, 1.09999704, 0.525032043, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Weld169.Part0 = Part105
Weld169.Part1 = Part95
Weld169.part1 = Part95
Weld170.Parent = Part105
Weld170.C0 = CFrame.new(-1.99431801, 1.53451204, 0.0207099915, 0, 0.965925336, 0.2588211, 0, -0.2588211, 0.965925336, 1, 0, 0)
Weld170.Part0 = Part105
Weld170.Part1 = Part78
Weld170.part1 = Part78
Weld171.Parent = Part105
Weld171.C0 = CFrame.new(6.63743019, 0.850006104, 0.524993896, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld171.Part0 = Part105
Weld171.Part1 = Part98
Weld171.part1 = Part98
Weld172.Parent = Part105
Weld172.C0 = CFrame.new(5.76249504, 1.65001202, -2.87495422, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld172.Part0 = Part105
Weld172.Part1 = Part308
Weld172.part1 = Part308
Weld173.Parent = Part105
Weld173.C0 = CFrame.new(0.499987006, -1.53750372, 2.20001984, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld173.Part0 = Part105
Weld173.Part1 = Part294
Weld173.part1 = Part294
Weld174.Parent = Part105
Weld174.C0 = CFrame.new(5.06249428, -1.99998474, 5.07501984, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld174.Part0 = Part105
Weld174.Part1 = Part80
Weld174.part1 = Part80
Weld175.Parent = Part105
Weld175.C0 = CFrame.new(-0.649996042, 0.300001144, 1.1125145, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld175.Part0 = Part105
Weld175.Part1 = Part90
Weld175.part1 = Part90
Weld176.Parent = Part105
Weld176.C0 = CFrame.new(-5.41830587, 2.43435431, 2.4451561, -0.173647955, 0, 0.984807789, 0.984807789, 0, 0.173647955, 0, 1, 0)
Weld176.Part0 = Part105
Weld176.Part1 = Part316
Weld176.part1 = Part316
Weld177.Parent = Part105
Weld177.C0 = CFrame.new(-4.77833271, 3.19857836, 2.4588089, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld177.Part0 = Part105
Weld177.Part1 = Part318
Weld177.part1 = Part318
Weld178.Parent = Part105
Weld178.C0 = CFrame.new(3.66360211, 1.85639429, -1.67494583, -0.342019916, -0.939692736, 0, 0.939692736, -0.342019886, 0, 0, 0, 1)
Weld178.Part0 = Part105
Weld178.Part1 = Part104
Weld178.part1 = Part104
Weld179.Parent = Part105
Weld179.C0 = CFrame.new(8.22237968, 1.03610897, -1.62522888, -0.891006887, -0.453989953, 0, 0.453989953, -0.891006887, 0, 0, 0, 1)
Weld179.Part0 = Part105
Weld179.Part1 = Part309
Weld179.part1 = Part309
Weld180.Parent = Part105
Weld180.C0 = CFrame.new(5.0625, -1.99998903, -4.02498245, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld180.Part0 = Part105
Weld180.Part1 = Part84
Weld180.part1 = Part84
Weld181.Parent = Part105
Weld181.C0 = CFrame.new(8.91497612, 0.683195114, -2.12494278, 0, -0.453989148, 0.891007304, 0, -0.891007304, -0.453989148, 1, 0, 0)
Weld181.Part0 = Part105
Weld181.Part1 = Part295
Weld181.part1 = Part295
Weld182.Parent = Part105
Weld182.C0 = CFrame.new(4.01249409, -1.5, 3.52503586, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld182.Part0 = Part105
Weld182.Part1 = Part82
Weld182.part1 = Part82
Weld183.Parent = Part105
Weld183.C0 = CFrame.new(8.93275642, 0.718089104, -2.12494278, 0, -0.453989148, 0.891007304, 0, -0.891007304, -0.453989148, 1, 0, 0)
Weld183.Part0 = Part105
Weld183.Part1 = Part299
Weld183.part1 = Part299
Weld184.Parent = Part105
Weld184.C0 = CFrame.new(-0.0999979973, -0.649998665, -0.0249938965, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld184.Part0 = Part105
Weld184.Part1 = Part75
Weld184.part1 = Part75
Weld185.Parent = Part105
Weld185.C0 = CFrame.new(-5.32371712, 4.41554785, 2.43899918, 0.258819908, -0.965925634, 0, -0.965925634, -0.258819908, 0, 0, 0, -1)
Weld185.Part0 = Part105
Weld185.Part1 = Part324
Weld185.part1 = Part324
Weld186.Parent = Part105
Weld186.C0 = CFrame.new(-5.02770376, 4.4680562, 2.43899918, 0.173647955, -0.984807789, 0, -0.984807789, -0.173647955, 0, 0, 0, -1)
Weld186.Part0 = Part105
Weld186.Part1 = Part326
Weld186.part1 = Part326
Weld187.Parent = Part105
Weld187.C0 = CFrame.new(-5.43758917, 4.38342237, 2.43899918, 0.342019022, -0.939693093, 0, -0.939693093, -0.342018992, 0, 0, 0, -1)
Weld187.Part0 = Part105
Weld187.Part1 = Part328
Weld187.part1 = Part328
Weld188.Parent = Part105
Weld188.C0 = CFrame.new(-5.63104391, 4.20436239, 2.43899918, -0.906306982, 0.422619998, 0, 0.422619998, 0.906306982, 0, 0, 0, -1)
Weld188.Part0 = Part105
Weld188.Part1 = Part330
Weld188.part1 = Part330
Weld189.Parent = Part105
Weld189.C0 = CFrame.new(-5.58517599, 4.27264833, 2.43900681, -0.76604414, 0.642788053, 0, 0.642788053, 0.76604414, 0, 0, 0, -1)
Weld189.Part0 = Part105
Weld189.Part1 = Part332
Weld189.part1 = Part332
Weld190.Parent = Part105
Weld190.C0 = CFrame.new(-5.65847588, 4.11169386, 2.43899918, -0.984807789, 0.173647955, 0, 0.173647955, 0.984807789, 0, 0, 0, -1)
Weld190.Part0 = Part105
Weld190.Part1 = Part334
Weld190.part1 = Part334
Weld191.Parent = Part105
Weld191.C0 = CFrame.new(-5.51645803, 4.34103823, 2.43899536, -0.573576152, 0.819152296, 0, 0.819152296, 0.573576152, 0, 0, 0, -1)
Weld191.Part0 = Part105
Weld191.Part1 = Part336
Weld191.part1 = Part336
Weld192.Parent = Part105
Weld192.C0 = CFrame.new(-5.63046074, 3.68392038, 2.43899918, -0.99619478, -0.0871549696, 0, -0.087154977, 0.99619478, 0, 0, 0, -1)
Weld192.Part0 = Part105
Weld192.Part1 = Part35
Weld192.part1 = Part35
Weld193.Parent = Part105
Weld193.C0 = CFrame.new(-4.90778875, 4.50093222, -2.33626175, 0.258819908, -0.965925634, 0, -0.965925634, -0.258819908, 0, 0, 0, -1)
Weld193.Part0 = Part105
Weld193.Part1 = Part338
Weld193.part1 = Part338
Weld194.Parent = Part105
Weld194.C0 = CFrame.new(-4.61177588, 4.55344439, -2.33625412, 0.173647955, -0.984807789, 0, -0.984807789, -0.173647955, 0, 0, 0, -1)
Weld194.Part0 = Part105
Weld194.Part1 = Part340
Weld194.part1 = Part340
Weld195.Parent = Part105
Weld195.C0 = CFrame.new(-5.02166176, 4.46880865, -2.33625412, 0.342019022, -0.939693093, 0, -0.939693093, -0.342018992, 0, 0, 0, -1)
Weld195.Part0 = Part105
Weld195.Part1 = Part342
Weld195.part1 = Part342
Weld196.Parent = Part105
Weld196.C0 = CFrame.new(-5.21511602, 4.28974771, -2.33626175, -0.906306982, 0.422619998, 0, 0.422619998, 0.906306982, 0, 0, 0, -1)
Weld196.Part0 = Part105
Weld196.Part1 = Part344
Weld196.part1 = Part344
Weld197.Parent = Part105
Weld197.C0 = CFrame.new(-5.1692481, 4.35802984, -2.33625412, -0.76604414, 0.642788053, 0, 0.642788053, 0.76604414, 0, 0, 0, -1)
Weld197.Part0 = Part105
Weld197.Part1 = Part346
Weld197.part1 = Part346
Weld198.Parent = Part105
Weld198.C0 = CFrame.new(-5.24254799, 4.19707823, -2.33625412, -0.984807789, 0.173647955, 0, 0.173647955, 0.984807789, 0, 0, 0, -1)
Weld198.Part0 = Part105
Weld198.Part1 = Part348
Weld198.part1 = Part348
Weld199.Parent = Part105
Weld199.C0 = CFrame.new(-5.10053015, 4.42642832, -2.33626175, -0.573576152, 0.819152296, 0, 0.819152296, 0.573576152, 0, 0, 0, -1)
Weld199.Part0 = Part105
Weld199.Part1 = Part350
Weld199.part1 = Part350
Weld200.Parent = Part105
Weld200.C0 = CFrame.new(-5.21453285, 3.76930571, -2.33625412, -0.99619478, -0.0871549696, 0, -0.087154977, 0.99619478, 0, 0, 0, -1)
Weld200.Part0 = Part105
Weld200.Part1 = Part58
Weld200.part1 = Part58
Weld201.Parent = Part105
Weld201.C0 = CFrame.new(-5.11668205, 4.46352434, -0.0345306396, 0.258819908, -0.965925634, 0, -0.965925634, -0.258819908, 0, 0, 0, -1)
Weld201.Part0 = Part105
Weld201.Part1 = Part352
Weld201.part1 = Part352
Weld202.Parent = Part105
Weld202.C0 = CFrame.new(-4.82066917, 4.51603842, -0.0345230103, 0.173647955, -0.984807789, 0, -0.984807789, -0.173647955, 0, 0, 0, -1)
Weld202.Part0 = Part105
Weld202.Part1 = Part354
Weld202.part1 = Part354
Weld203.Parent = Part105
Weld203.C0 = CFrame.new(-5.2305541, 4.43140173, -0.0345230103, 0.342019022, -0.939693093, 0, -0.939693093, -0.342018992, 0, 0, 0, -1)
Weld203.Part0 = Part105
Weld203.Part1 = Part356
Weld203.part1 = Part356
Weld204.Parent = Part105
Weld204.C0 = CFrame.new(-5.42400885, 4.25234175, -0.0345306396, -0.906306982, 0.422619998, 0, 0.422619998, 0.906306982, 0, 0, 0, -1)
Weld204.Part0 = Part105
Weld204.Part1 = Part358
Weld204.part1 = Part358
Weld205.Parent = Part105
Weld205.C0 = CFrame.new(-5.37814093, 4.32061625, -0.0345230103, -0.76604414, 0.642788053, 0, 0.642788053, 0.76604414, 0, 0, 0, -1)
Weld205.Part0 = Part105
Weld205.Part1 = Part360
Weld205.part1 = Part360
Weld206.Parent = Part105
Weld206.C0 = CFrame.new(-5.45144081, 4.15967035, -0.0345230103, -0.984807789, 0.173647955, 0, 0.173647955, 0.984807789, 0, 0, 0, -1)
Weld206.Part0 = Part105
Weld206.Part1 = Part362
Weld206.part1 = Part362
Weld207.Parent = Part105
Weld207.C0 = CFrame.new(-5.30942297, 4.38902044, -0.0345306396, -0.573576152, 0.819152296, 0, 0.819152296, 0.573576152, 0, 0, 0, -1)
Weld207.Part0 = Part105
Weld207.Part1 = Part364
Weld207.part1 = Part364
Weld208.Parent = Part105
Weld208.C0 = CFrame.new(-5.42342472, 3.7318902, -0.0345230103, -0.99619478, -0.0871549696, 0, -0.087154977, 0.99619478, 0, 0, 0, -1)
Weld208.Part0 = Part105
Weld208.Part1 = Part63
Weld208.part1 = Part63
Weld209.Parent = Part105
Weld209.C0 = CFrame.new(-2.93285513, 4.81733847, 3.02297974, 0.17298609, 0.0151330382, -0.984808087, -0.981060505, -0.0858332142, -0.173646748, -0.0871570483, 0.996194661, -1.52693917e-06)
Weld209.Part0 = Part105
Weld209.Part1 = Part367
Weld209.part1 = Part367
Weld210.Parent = Part105
Weld210.C0 = CFrame.new(-2.93290901, 4.8176465, 2.72234726, 0.173647955, 0, -0.984807789, -0.984807789, 0, -0.173647955, 0, 1, 0)
Weld210.Part0 = Part105
Weld210.Part1 = Part369
Weld210.part1 = Part369
Weld211.Parent = Part105
Weld211.C0 = CFrame.new(-2.93079472, 4.80564833, 3.14069366, 0.17101106, 0.03015301, -0.98480767, -0.969846368, -0.171009064, -0.173649028, -0.173647061, 0.984808028, -6.52566314e-07)
Weld211.Part0 = Part105
Weld211.Part1 = Part371
Weld211.part1 = Part371
Weld212.Parent = Part105
Weld212.C0 = CFrame.new(-2.90600777, 4.66506815, 3.3623085, -0.0996010602, -0.142245874, -0.984807491, 0.564863384, 0.806706369, -0.173649818, 0.819151461, -0.573577344, 6.71538146e-07)
Weld212.Part0 = Part105
Weld212.Part1 = Part373
Weld212.part1 = Part373
Weld213.Parent = Part105
Weld213.C0 = CFrame.new(-2.91629982, 4.72345591, 3.30527878, -0.13302201, -0.111618929, -0.984807789, 0.754407108, 0.633021593, -0.17364803, 0.642787039, -0.766045034, 3.03088626e-07)
Weld213.Part0 = Part105
Weld213.Part1 = Part375
Weld213.part1 = Part375
Weld214.Parent = Part105
Weld214.C0 = CFrame.new(-2.89098501, 4.57989645, 3.40541077, -0.0593920015, -0.163175032, -0.984807909, 0.336822987, 0.925417185, -0.173647612, 0.939692974, -0.34201926, -1.28277475e-06)
Weld214.Part0 = Part105
Weld214.Part1 = Part377
Weld214.part1 = Part377
Weld215.Parent = Part105
Weld215.C0 = CFrame.new(-2.92592812, 4.77804232, 3.22572708, -0.157377958, -0.0733878613, -0.984807789, 0.892538786, 0.416198194, -0.173647925, 0.422618896, -0.906307518, 1.0923975e-06)
Weld215.Part0 = Part105
Weld215.Part1 = Part379
Weld215.part1 = Part379
Weld216.Parent = Part105
Weld216.C0 = CFrame.new(-2.81698799, 4.16022444, 3.45210648, -0.0151359979, -0.172988057, -0.98480767, 0.0858299956, 0.981060326, -0.173648968, 0.996194899, -0.087154381, -1.76389085e-06)
Weld216.Part0 = Part105
Weld216.Part1 = Part25
Weld216.part1 = Part25
UnionOperation451.Parent = Part450
UnionOperation451.CFrame = CFrame.new(14.7177372, 13.9244289, -9.88895416, -0.999557018, 0.00951790158, 0.0282110684, -0.00958599616, -0.999951482, -0.00227957801, 0.0281880014, -0.00254899915, 0.999599814)
UnionOperation451.Orientation = Vector3.new(0.12999999523162842, 1.6200000047683716, -179.4499969482422)
UnionOperation451.Position = Vector3.new(14.717737197875977, 13.924428939819336, -9.888954162597656)
UnionOperation451.Rotation = Vector3.new(0.12999999523162842, 1.6200000047683716, -179.4499969482422)
UnionOperation451.Color = Color3.new(0.960784, 0.803922, 0.188235)
UnionOperation451.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation451.Size = Vector3.new(1.2349700927734375, 2.0624566078186035, 1.0400733947753906)
UnionOperation451.BrickColor = BrickColor.new("Bright yellow")
UnionOperation451.CanCollide = false
UnionOperation451.Material = Enum.Material.SmoothPlastic
UnionOperation451.brickColor = BrickColor.new("Bright yellow")
UnionOperation452.Parent = Part450
UnionOperation452.CFrame = CFrame.new(15.1122522, 14.0433807, -9.90336514, -0.028209025, -0.00874701887, 0.99956429, 0.00232200092, 0.999958456, 0.00881599635, -0.999599874, 0.0025696801, -0.0281875432)
UnionOperation452.Orientation = Vector3.new(-0.5099999904632568, 91.62000274658203, 0.12999999523162842)
UnionOperation452.Position = Vector3.new(15.112252235412598, 14.043380737304688, -9.903365135192871)
UnionOperation452.Rotation = Vector3.new(-162.6300048828125, 88.30999755859375, 162.77000427246094)
UnionOperation452.Color = Color3.new(0, 0.721569, 0)
UnionOperation452.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation452.Size = Vector3.new(0.36488890647888184, 0.28931769728660583, 0.08552788197994232)
UnionOperation452.BackSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation452.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation452.BrickColor = BrickColor.new("Lime green")
UnionOperation452.CanCollide = false
UnionOperation452.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation452.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation452.Material = Enum.Material.SmoothPlastic
UnionOperation452.RightSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation452.TopSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation452.brickColor = BrickColor.new("Lime green")
UnionOperation452.UsePartColor = true
Weld453.Parent = Part450
Weld453.C0 = CFrame.new(-0.0821743011, -0.0373578072, -0.00140380859, 0.999521792, -0.00951478444, -0.029430557, -0.00958599616, -0.999951482, -0.00227957801, -0.0294074379, 0.00256060879, -0.999564588)
Weld453.Part0 = Part450
Weld453.Part1 = UnionOperation451
Weld453.part1 = UnionOperation451
Weld454.Parent = Part450
Weld454.C0 = CFrame.new(-0.476671219, 0.081594944, 0.0134887695, 0.0294285137, 0.00874387659, -0.999529064, 0.00232200092, 0.999958456, 0.00881599635, 0.999564648, -0.00258034933, 0.0294069871)
Weld454.Part0 = Part450
Weld454.Part1 = UnionOperation452
Weld454.part1 = UnionOperation452
Part455.Name = "Head"
Part455.Parent = Model439
Part455.CFrame = CFrame.new(13.1355658, 15.4617863, -9.89228821, -0.999999344, 0, 0.00122000044, 0, 1, 0, -0.00122000044, 0, -0.999999344)
Part455.Orientation = Vector3.new(0, 179.92999267578125, 0)
Part455.Position = Vector3.new(13.135565757751465, 15.461786270141602, -9.892288208007812)
Part455.Rotation = Vector3.new(-180, 0.07000000029802322, -180)
Part455.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part455.Transparency = 1
Part455.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
Part455.Size = Vector3.new(2, 1, 1)
Part455.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part455.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part455.BrickColor = BrickColor.new("Institutional white")
Part455.CanCollide = false
Part455.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part455.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part455.Locked = true
Part455.Material = Enum.Material.SmoothPlastic
Part455.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part455.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part455.brickColor = BrickColor.new("Institutional white")
Part455.FormFactor = Enum.FormFactor.Symmetric
Part455.formFactor = Enum.FormFactor.Symmetric
SpecialMesh456.Parent = Part455
SpecialMesh456.Scale = Vector3.new(1.25, 1.25, 1.25)
Decal457.Name = "face"
Decal457.Parent = Part455
UnionOperation458.Parent = Part455
UnionOperation458.CFrame = CFrame.new(13.6326847, 15.3329048, -10.1648712, -0.873260438, 0.244933322, -0.421217471, 0.309787124, 0.946349025, -0.0919535831, 0.376096249, -0.210787192, -0.902286351)
UnionOperation458.Orientation = Vector3.new(5.28000020980835, -154.97999572753906, 18.1299991607666)
UnionOperation458.Position = Vector3.new(13.632684707641602, 15.332904815673828, -10.164871215820312)
UnionOperation458.Rotation = Vector3.new(174.17999267578125, -24.90999984741211, -164.3300018310547)
UnionOperation458.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
UnionOperation458.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation458.Size = Vector3.new(0.6729831695556641, 0.2589454650878906, 0.8848991394042969)
UnionOperation458.BrickColor = BrickColor.new("Really black")
UnionOperation458.CanCollide = false
UnionOperation458.Material = Enum.Material.SmoothPlastic
UnionOperation458.brickColor = BrickColor.new("Really black")
UnionOperation459.Parent = Part455
UnionOperation459.CFrame = CFrame.new(13.1681318, 16.027729, -9.68055916, 0.0113319987, 0.00774099585, -0.999906063, -0.0407089889, 0.999144614, 0.00727374339, 0.999106944, 0.0406227373, 0.0116374334)
UnionOperation459.Orientation = Vector3.new(-0.41999998688697815, -89.33000183105469, -2.3299999237060547)
UnionOperation459.Position = Vector3.new(13.168131828308105, 16.027729034423828, -9.680559158325195)
UnionOperation459.Rotation = Vector3.new(-32.0099983215332, -89.20999908447266, -34.34000015258789)
UnionOperation459.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
UnionOperation459.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation459.Size = Vector3.new(1.6136817932128906, 1.3530220985412598, 1.462005615234375)
UnionOperation459.BrickColor = BrickColor.new("Really black")
UnionOperation459.CanCollide = false
UnionOperation459.Material = Enum.Material.SmoothPlastic
UnionOperation459.brickColor = BrickColor.new("Really black")
UnionOperation460.Parent = Part455
UnionOperation460.CFrame = CFrame.new(13.142272, 15.0327797, -9.27151775, 0.999902666, 0.0102675129, 0.00947425049, -0.0071910033, 0.959658146, -0.281077534, -0.0119780088, 0.280982077, 0.959638476)
UnionOperation460.Orientation = Vector3.new(16.31999969482422, 0.5699999928474426, -0.4300000071525574)
UnionOperation460.Position = Vector3.new(13.142271995544434, 15.032779693603516, -9.271517753601074)
UnionOperation460.Rotation = Vector3.new(16.329999923706055, 0.5400000214576721, -0.5899999737739563)
UnionOperation460.Color = Color3.new(0, 0.721569, 0)
UnionOperation460.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation460.Size = Vector3.new(0.3114875853061676, 0.24697615206241608, 0.07687336206436157)
UnionOperation460.BackSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation460.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation460.BrickColor = BrickColor.new("Lime green")
UnionOperation460.CanCollide = false
UnionOperation460.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation460.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation460.Material = Enum.Material.SmoothPlastic
UnionOperation460.RightSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation460.TopSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation460.brickColor = BrickColor.new("Lime green")
UnionOperation460.UsePartColor = true
UnionOperation461.Parent = Part455
UnionOperation461.CFrame = CFrame.new(12.662117, 15.3284111, -10.1996479, 0.551515102, -0.233289003, -0.800879359, 0.379431069, 0.925183654, -0.00820746738, 0.742875159, -0.299351931, 0.598769784)
UnionOperation461.Orientation = Vector3.new(0.4699999988079071, -53.220001220703125, 22.299999237060547)
UnionOperation461.Position = Vector3.new(12.662117004394531, 15.328411102294922, -10.199647903442383)
UnionOperation461.Rotation = Vector3.new(0.7900000214576721, -53.209999084472656, 22.93000030517578)
UnionOperation461.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
UnionOperation461.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation461.Size = Vector3.new(0.6729831695556641, 0.2589454650878906, 0.8848991394042969)
UnionOperation461.BrickColor = BrickColor.new("Really black")
UnionOperation461.CanCollide = false
UnionOperation461.Material = Enum.Material.SmoothPlastic
UnionOperation461.brickColor = BrickColor.new("Really black")
Part462.Name = "FakeHead"
Part462.Parent = Part455
Part462.CFrame = CFrame.new(13.1307764, 15.4647789, -9.81843376, -0.999902189, 0.0077372496, -0.0116653359, 0.00725700008, 0.99914664, 0.040663626, 0.0119700031, 0.0405749902, -0.999105036)
Part462.Orientation = Vector3.new(-2.3299999237060547, -179.3300018310547, 0.41999998688697815)
Part462.Position = Vector3.new(13.130776405334473, 15.464778900146484, -9.81843376159668)
Part462.Rotation = Vector3.new(-177.6699981689453, -0.6700000166893005, -179.55999755859375)
Part462.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
Part462.Size = Vector3.new(1.977425217628479, 0.9887123703956604, 0.9887130856513977)
Part462.CanCollide = false
Part462.Material = Enum.Material.SmoothPlastic
Part462.TopSurface = Enum.SurfaceType.Smooth
Part462.FormFactor = Enum.FormFactor.Symmetric
Part462.formFactor = Enum.FormFactor.Symmetric
SpecialMesh463.Parent = Part462
SpecialMesh463.Scale = Vector3.new(1.25, 1.25, 1.25)
Decal464.Name = "Tired Face"
Decal464.Parent = Part462
Decal464.Texture = "http://www.roblox.com/asset/?id=149118410"
Weld465.Parent = Part455
Weld465.C0 = CFrame.new(-0.496786118, -0.128880978, 0.273189545, 0.872800887, -0.244675964, 0.422317892, 0.309787124, 0.946349025, -0.0919535831, -0.377161294, 0.211085826, 0.901771724)
Weld465.Part0 = Part455
Weld465.Part1 = UnionOperation458
Weld465.part1 = UnionOperation458
Weld466.Parent = Part455
Weld466.C0 = CFrame.new(-0.0328245163, 0.565943241, -0.211688995, -0.0125508998, -0.00779054919, 0.999891043, -0.0407089889, 0.999144614, 0.00727374339, -0.999092281, -0.0406132601, -0.0128573095)
Weld466.Part0 = Part455
Weld466.Part1 = UnionOperation459
Weld466.part1 = UnionOperation459
Weld467.Parent = Part455
Weld467.C0 = CFrame.new(-0.0074634552, -0.429006577, -0.620761871, -0.999887228, -0.010610302, -0.0106450012, -0.0071910033, 0.959658146, -0.281077534, 0.0131978802, -0.280969322, -0.959626138)
Weld467.Part0 = Part455
Weld467.Part1 = UnionOperation460
Weld467.part1 = UnionOperation460
Weld468.Parent = Part455
Weld468.C0 = CFrame.new(0.473823547, -0.133375645, 0.306781769, -0.552420974, 0.233654007, 0.800148189, 0.379431069, 0.925183654, -0.00820746738, -0.742201686, 0.29906708, -0.599746406)
Weld468.Part0 = Part455
Weld468.Part1 = UnionOperation461
Weld468.part1 = UnionOperation461
Weld469.Parent = Part455
Weld469.C0 = CFrame.new(0.00469970703, 0.00299310684, -0.0738601685, 0.999886751, -0.00778674474, 0.0128842341, 0.00725700008, 0.99914664, 0.040663626, -0.0131898737, -0.0405655168, 0.999089956)
Weld469.Part0 = Part455
Weld469.Part1 = Part462
Weld469.part1 = Part462
Part470.Name = "RootPart"
Part470.Parent = Model439
Part470.CFrame = CFrame.new(13.1355658, 13.9617863, -9.89228821, -0.999999344, 0, 0.00122000044, 0, 1, 0, -0.00122000044, 0, -0.999999344)
Part470.Orientation = Vector3.new(0, 179.92999267578125, 0)
Part470.Position = Vector3.new(13.135565757751465, 13.961786270141602, -9.892288208007812)
Part470.Rotation = Vector3.new(-180, 0.07000000029802322, -180)
Part470.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part470.Transparency = 1
Part470.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
Part470.Size = Vector3.new(2, 2, 1)
Part470.Anchored = true
Part470.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part470.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part470.BrickColor = BrickColor.new("Institutional white")
Part470.CanCollide = false
Part470.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part470.LeftParamA = 0
Part470.LeftParamB = 0
Part470.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part470.Locked = true
Part470.Material = Enum.Material.SmoothPlastic
Part470.RightParamA = 0
Part470.RightParamB = 0
Part470.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part470.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part470.brickColor = BrickColor.new("Institutional white")
Part470.FormFactor = Enum.FormFactor.Symmetric
Part470.formFactor = Enum.FormFactor.Symmetric
Motor6D471.Name = "Root Joint"
Motor6D471.Parent = Part470
Motor6D471.MaxVelocity = 0.10000000149011612
Motor6D471.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Motor6D471.C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Motor6D471.Part0 = Part470
Motor6D471.Part1 = Part472
Motor6D471.part1 = Part472
Part472.Name = "StandTorso"
Part472.Parent = Model439
Part472.CFrame = CFrame.new(13.1355658, 13.9617863, -9.89228821, -0.999999344, 0, 0.00122000044, 0, 1, 0, -0.00122000044, 0, -0.999999344)
Part472.Orientation = Vector3.new(0, 179.92999267578125, 0)
Part472.Position = Vector3.new(13.135565757751465, 13.961786270141602, -9.892288208007812)
Part472.Rotation = Vector3.new(-180, 0.07000000029802322, -180)
Part472.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part472.Transparency = 1
Part472.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
Part472.Size = Vector3.new(2, 2, 1)
Part472.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part472.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part472.BrickColor = BrickColor.new("Institutional white")
Part472.CanCollide = false
Part472.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part472.LeftParamA = 0
Part472.LeftParamB = 0
Part472.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part472.Locked = true
Part472.Material = Enum.Material.SmoothPlastic
Part472.RightParamA = 0
Part472.RightParamB = 0
Part472.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part472.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part472.brickColor = BrickColor.new("Institutional white")
Part472.FormFactor = Enum.FormFactor.Symmetric
Part472.formFactor = Enum.FormFactor.Symmetric
Motor6D473.Name = "Right Shoulder"
Motor6D473.Parent = Part472
Motor6D473.MaxVelocity = 0.10000000149011612
Motor6D473.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Motor6D473.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Motor6D473.Part0 = Part472
Motor6D473.Part1 = Part445
Motor6D473.part1 = Part445
Motor6D474.Name = "Left Shoulder"
Motor6D474.Parent = Part472
Motor6D474.MaxVelocity = 0.10000000149011612
Motor6D474.C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Motor6D474.C1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Motor6D474.Part0 = Part472
Motor6D474.Part1 = Part450
Motor6D474.part1 = Part450
Motor6D475.Name = "Right Hip"
Motor6D475.Parent = Part472
Motor6D475.MaxVelocity = 0.10000000149011612
Motor6D475.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Motor6D475.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Motor6D475.Part0 = Part472
Motor6D475.Part1 = Part440
Motor6D475.part1 = Part440
Motor6D476.Name = "Left Hip"
Motor6D476.Parent = Part472
Motor6D476.MaxVelocity = 0.10000000149011612
Motor6D476.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Motor6D476.C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Motor6D476.Part0 = Part472
Motor6D476.Part1 = Part492
Motor6D476.part1 = Part492
Motor6D477.Name = "Neck"
Motor6D477.Parent = Part472
Motor6D477.MaxVelocity = 0.10000000149011612
Motor6D477.C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Motor6D477.C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Motor6D477.Part0 = Part472
Motor6D477.Part1 = Part455
Motor6D477.part1 = Part455
UnionOperation478.Parent = Part472
UnionOperation478.CFrame = CFrame.new(13.1682539, 14.0132141, -10.0294056, -0.00675298227, -0.0154849961, -0.999858141, 0.999944091, 0.00812958553, -0.00687952433, 0.00823508948, -0.99984777, 0.0154291578)
UnionOperation478.Orientation = Vector3.new(0.38999998569488525, -89.12000274658203, 89.52999877929688)
UnionOperation478.Position = Vector3.new(13.168253898620605, 14.013214111328125, -10.02940559387207)
UnionOperation478.Rotation = Vector3.new(24.030000686645508, -89.02999877929688, 113.55999755859375)
UnionOperation478.Color = Color3.new(0.960784, 0.803922, 0.188235)
UnionOperation478.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation478.Size = Vector3.new(2.085878849029541, 1.5074958801269531, 1.8861207962036133)
UnionOperation478.BrickColor = BrickColor.new("Bright yellow")
UnionOperation478.CanCollide = false
UnionOperation478.Material = Enum.Material.SmoothPlastic
UnionOperation478.brickColor = BrickColor.new("Bright yellow")
UnionOperation479.Parent = Part472
UnionOperation479.CFrame = CFrame.new(13.1403675, 13.9505692, -10.0208836, 0.0154180061, 0.99985975, -0.00668939855, -0.0081069544, 0.00681503583, 0.999944925, 0.999849141, -0.0153628476, 0.00821101945)
UnionOperation479.Orientation = Vector3.new(-89.4000015258789, -39.16999816894531, -49.95000076293945)
UnionOperation479.Position = Vector3.new(13.14036750793457, 13.950569152832031, -10.020883560180664)
UnionOperation479.Rotation = Vector3.new(-89.52999877929688, -0.3799999952316284, -89.12000274658203)
UnionOperation479.Color = Color3.new(0.937255, 0.721569, 0.219608)
UnionOperation479.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation479.Size = Vector3.new(1.5245857238769531, 2.194819450378418, 2.0303168296813965)
UnionOperation479.BrickColor = BrickColor.new("Gold")
UnionOperation479.CanCollide = false
UnionOperation479.Material = Enum.Material.SmoothPlastic
UnionOperation479.brickColor = BrickColor.new("Gold")
UnionOperation480.Parent = Part472
UnionOperation480.CFrame = CFrame.new(13.1741533, 13.725009, -9.47738457, 0.999895513, -0.00669782003, 0.0129071251, 0.00680304132, 0.999944925, -0.0081210034, -0.0128519423, 0.00820808671, 0.999884665)
UnionOperation480.Orientation = Vector3.new(0.4699999988079071, 0.7400000095367432, 0.38999998569488525)
UnionOperation480.Position = Vector3.new(13.174153327941895, 13.725008964538574, -9.477384567260742)
UnionOperation480.Rotation = Vector3.new(0.4699999988079071, 0.7400000095367432, 0.3799999952316284)
UnionOperation480.Color = Color3.new(0.960784, 0.803922, 0.188235)
UnionOperation480.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation480.Size = Vector3.new(0.8097934126853943, 0.3318828046321869, 0.3230326175689697)
UnionOperation480.BackSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation480.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation480.BrickColor = BrickColor.new("Bright yellow")
UnionOperation480.CanCollide = false
UnionOperation480.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation480.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation480.Material = Enum.Material.SmoothPlastic
UnionOperation480.RightSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation480.TopSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation480.brickColor = BrickColor.new("Bright yellow")
UnionOperation480.UsePartColor = true
UnionOperation481.Parent = Part472
UnionOperation481.CFrame = CFrame.new(13.1717482, 14.079607, -9.47834492, 0.999895513, -0.00669782003, 0.0129071251, 0.00680304132, 0.999944925, -0.0081210034, -0.0128519423, 0.00820808671, 0.999884665)
UnionOperation481.Orientation = Vector3.new(0.4699999988079071, 0.7400000095367432, 0.38999998569488525)
UnionOperation481.Position = Vector3.new(13.171748161315918, 14.079607009887695, -9.478344917297363)
UnionOperation481.Rotation = Vector3.new(0.4699999988079071, 0.7400000095367432, 0.3799999952316284)
UnionOperation481.Color = Color3.new(0.960784, 0.803922, 0.188235)
UnionOperation481.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation481.Size = Vector3.new(0.8853384852409363, 0.362843781709671, 0.3531681001186371)
UnionOperation481.BackSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation481.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation481.BrickColor = BrickColor.new("Bright yellow")
UnionOperation481.CanCollide = false
UnionOperation481.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation481.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation481.Material = Enum.Material.SmoothPlastic
UnionOperation481.RightSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation481.TopSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation481.brickColor = BrickColor.new("Bright yellow")
UnionOperation481.UsePartColor = true
UnionOperation482.Parent = Part472
UnionOperation482.CFrame = CFrame.new(13.1891804, 13.1251678, -9.29081249, 0.999858916, -0.0067544654, 0.0154568246, 0.00689203711, 0.999938071, -0.00886069238, -0.0153959347, 0.00896609947, 0.999842227)
UnionOperation482.Orientation = Vector3.new(0.5099999904632568, 0.8899999856948853, 0.38999998569488525)
UnionOperation482.Position = Vector3.new(13.189180374145508, 13.125167846679688, -9.290812492370605)
UnionOperation482.Rotation = Vector3.new(0.5099999904632568, 0.8899999856948853, 0.38999998569488525)
UnionOperation482.Color = Color3.new(0, 0.721569, 0)
UnionOperation482.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation482.Size = Vector3.new(0.42852479219436646, 0.3397740423679352, 0.10044381022453308)
UnionOperation482.BackSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation482.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation482.BrickColor = BrickColor.new("Lime green")
UnionOperation482.CanCollide = false
UnionOperation482.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation482.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation482.Material = Enum.Material.SmoothPlastic
UnionOperation482.RightSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation482.TopSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation482.brickColor = BrickColor.new("Lime green")
UnionOperation482.UsePartColor = true
UnionOperation483.Parent = Part472
UnionOperation483.CFrame = CFrame.new(13.166791, 14.5286636, -9.62435913, 0.999895513, -0.00669782003, 0.0129071251, 0.00680304132, 0.999944925, -0.0081210034, -0.0128519423, 0.00820808671, 0.999884665)
UnionOperation483.Orientation = Vector3.new(0.4699999988079071, 0.7400000095367432, 0.38999998569488525)
UnionOperation483.Position = Vector3.new(13.166790962219238, 14.528663635253906, -9.624359130859375)
UnionOperation483.Rotation = Vector3.new(0.4699999988079071, 0.7400000095367432, 0.3799999952316284)
UnionOperation483.Color = Color3.new(0.960784, 0.803922, 0.188235)
UnionOperation483.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation483.Size = Vector3.new(1.7291768789291382, 0.7086791396141052, 0.6897814273834229)
UnionOperation483.BackSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation483.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation483.BrickColor = BrickColor.new("Bright yellow")
UnionOperation483.CanCollide = false
UnionOperation483.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation483.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation483.Material = Enum.Material.SmoothPlastic
UnionOperation483.RightSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation483.TopSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation483.brickColor = BrickColor.new("Bright yellow")
UnionOperation483.UsePartColor = true
UnionOperation484.Parent = Part472
UnionOperation484.CFrame = CFrame.new(13.1764097, 13.4085484, -9.46612835, 0.999895513, -0.00669782003, 0.0129071251, 0.00680304132, 0.999944925, -0.0081210034, -0.0128519423, 0.00820808671, 0.999884665)
UnionOperation484.Orientation = Vector3.new(0.4699999988079071, 0.7400000095367432, 0.38999998569488525)
UnionOperation484.Position = Vector3.new(13.176409721374512, 13.408548355102539, -9.4661283493042)
UnionOperation484.Rotation = Vector3.new(0.4699999988079071, 0.7400000095367432, 0.3799999952316284)
UnionOperation484.Color = Color3.new(0.960784, 0.803922, 0.188235)
UnionOperation484.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation484.Size = Vector3.new(0.727165937423706, 0.29801881313323975, 0.2900720536708832)
UnionOperation484.BackSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation484.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation484.BrickColor = BrickColor.new("Bright yellow")
UnionOperation484.CanCollide = false
UnionOperation484.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation484.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation484.Material = Enum.Material.SmoothPlastic
UnionOperation484.RightSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation484.TopSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation484.brickColor = BrickColor.new("Bright yellow")
UnionOperation484.UsePartColor = true
Weld485.Parent = Part472
Weld485.C0 = CFrame.new(-0.0325212479, 0.0514278412, 0.13715744, 0.00674292957, 0.0167047977, 0.999838471, 0.999944091, 0.00812958553, -0.00687952433, -0.00824332144, 0.999828041, -0.0166489724)
Weld485.Part0 = Part472
Weld485.Part1 = UnionOperation478
Weld485.part1 = UnionOperation478
Weld486.Parent = Part472
Weld486.C0 = CFrame.new(-0.00464439392, -0.0112166405, 0.128601074, -0.0166378096, -0.9998402, 0.00667937519, -0.0081069544, 0.00681503583, 0.999944925, -0.999829471, 0.0165826641, -0.00821917411)
Weld486.Part0 = Part472
Weld486.Part1 = UnionOperation479
Weld486.part1 = UnionOperation479
Weld487.Parent = Part472
Weld487.C0 = CFrame.new(-0.0390939713, -0.236777306, -0.414855957, -0.999879003, 0.0066878004, -0.0141269742, 0.00680304132, 0.999944925, -0.0081210034, 0.0140718045, -0.00821625162, -0.999868095)
Weld487.Part0 = Part472
Weld487.Part1 = UnionOperation480
Weld487.part1 = UnionOperation480
Weld488.Parent = Part472
Weld488.C0 = CFrame.new(-0.036687851, 0.117820263, -0.413898468, -0.999879003, 0.0066878004, -0.0141269742, 0.00680304132, 0.999944925, -0.0081210034, 0.0140718045, -0.00821625162, -0.999868095)
Weld488.Part0 = Part472
Weld488.Part1 = UnionOperation481
Weld488.part1 = UnionOperation481
Weld489.Parent = Part472
Weld489.C0 = CFrame.new(-0.0543479919, -0.8366189, -0.601409912, -0.999839306, 0.00674352096, -0.0166766196, 0.00689203711, 0.999938071, -0.00886069238, 0.0166157503, -0.00897433236, -0.999822557)
Weld489.Part0 = Part472
Weld489.Part1 = UnionOperation482
Weld489.part1 = UnionOperation482
Weld490.Parent = Part472
Weld490.C0 = CFrame.new(-0.0315523148, 0.566876888, -0.26789093, -0.999879003, 0.0066878004, -0.0141269742, 0.00680304132, 0.999944925, -0.0081210034, 0.0140718045, -0.00821625162, -0.999868095)
Weld490.Part0 = Part472
Weld490.Part1 = UnionOperation483
Weld490.part1 = UnionOperation483
Weld491.Parent = Part472
Weld491.C0 = CFrame.new(-0.0413637161, -0.553237915, -0.426109314, -0.999879003, 0.0066878004, -0.0141269742, 0.00680304132, 0.999944925, -0.0081210034, 0.0140718045, -0.00821625162, -0.999868095)
Weld491.Part0 = Part472
Weld491.Part1 = UnionOperation484
Weld491.part1 = UnionOperation484
Part492.Name = "Left Leg"
Part492.Parent = Model439
Part492.CFrame = CFrame.new(13.6355658, 11.9617863, -9.89167786, -0.999999344, 0, 0.00122000044, 0, 1, 0, -0.00122000044, 0, -0.999999344)
Part492.Orientation = Vector3.new(0, 179.92999267578125, 0)
Part492.Position = Vector3.new(13.635565757751465, 11.961786270141602, -9.891677856445312)
Part492.Rotation = Vector3.new(-180, 0.07000000029802322, -180)
Part492.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part492.Transparency = 1
Part492.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
Part492.Size = Vector3.new(1, 2, 1)
Part492.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part492.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part492.BrickColor = BrickColor.new("Institutional white")
Part492.CanCollide = false
Part492.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part492.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part492.Locked = true
Part492.Material = Enum.Material.SmoothPlastic
Part492.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part492.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part492.brickColor = BrickColor.new("Institutional white")
Part492.FormFactor = Enum.FormFactor.Symmetric
Part492.formFactor = Enum.FormFactor.Symmetric
UnionOperation493.Parent = Part492
UnionOperation493.CFrame = CFrame.new(13.6526928, 12.0040588, -9.39194298, 0.999109864, 0.00385729363, 0.0420178138, -0.0046270024, 0.999822974, 0.0182368401, -0.0419400334, -0.0184150208, 0.998950839)
UnionOperation493.Orientation = Vector3.new(-1.0399999618530273, 2.4100000858306885, -0.27000001072883606)
UnionOperation493.Position = Vector3.new(13.652692794799805, 12.004058837890625, -9.391942977905273)
UnionOperation493.Rotation = Vector3.new(-1.0499999523162842, 2.4100000858306885, -0.2199999988079071)
UnionOperation493.Color = Color3.new(0, 0.721569, 0)
UnionOperation493.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation493.Size = Vector3.new(0.37119773030281067, 0.29431986808776855, 0.08700665086507797)
UnionOperation493.BackSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation493.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation493.BrickColor = BrickColor.new("Lime green")
UnionOperation493.CanCollide = false
UnionOperation493.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation493.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation493.Material = Enum.Material.SmoothPlastic
UnionOperation493.RightSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation493.TopSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation493.brickColor = BrickColor.new("Lime green")
UnionOperation493.UsePartColor = true
UnionOperation494.Parent = Part492
UnionOperation494.CFrame = CFrame.new(13.640214, 11.9031868, -9.90026283, 0.999109507, 0.00391144259, 0.0420193598, -0.00471300026, 0.99980855, 0.0189938489, -0.0419370197, -0.0191749707, 0.998936594)
UnionOperation494.Orientation = Vector3.new(-1.090000033378601, 2.4100000858306885, -0.27000001072883606)
UnionOperation494.Position = Vector3.new(13.640213966369629, 11.903186798095703, -9.900262832641602)
UnionOperation494.Rotation = Vector3.new(-1.090000033378601, 2.4100000858306885, -0.2199999988079071)
UnionOperation494.Color = Color3.new(0.937255, 0.721569, 0.219608)
UnionOperation494.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation494.Size = Vector3.new(1.1200132369995117, 2.0703656673431396, 1.05157470703125)
UnionOperation494.BrickColor = BrickColor.new("Gold")
UnionOperation494.CanCollide = false
UnionOperation494.Material = Enum.Material.SmoothPlastic
UnionOperation494.brickColor = BrickColor.new("Gold")
Weld495.Parent = Part492
Weld495.C0 = CFrame.new(-0.0177364349, 0.0422720909, -0.499713898, -0.999057889, -0.00383482408, -0.0432365015, -0.0046270024, 0.999822974, 0.0182368401, 0.0431589149, 0.0184197109, -0.998898745)
Weld495.Part0 = Part492
Weld495.Part1 = UnionOperation493
Weld495.part1 = UnionOperation493
Weld496.Parent = Part492
Weld496.C0 = CFrame.new(-0.0046377182, -0.058599472, 0.00859069824, -0.999057531, -0.0038880459, -0.0432380289, -0.00471300026, 0.99980855, 0.0189938489, 0.0431559011, 0.0191797279, -0.998884499)
Weld496.Part0 = Part492
Weld496.Part1 = UnionOperation494
Weld496.part1 = UnionOperation494
BoolValue497.Name = "IsAStand"
BoolValue497.Parent = Model439
BoolValue497.Value = true
ScreenGui498.Name = "ClockGui"
ScreenGui498.Parent = Folder0
ScreenGui498.Enabled = false
Frame499.Name = "Clock"
Frame499.Parent = ScreenGui498
Frame499.Position = UDim2.new(0.0024721846, 0, 0.483909428, 0)
Frame499.Size = UDim2.new(0, 190, 0, 190)
Frame499.BackgroundColor = BrickColor.new("Institutional white")
Frame499.BackgroundColor3 = Color3.new(1, 1, 1)
Frame499.BackgroundTransparency = 1
ImageLabel500.Name = "ClockOutline"
ImageLabel500.Parent = Frame499
ImageLabel500.Position = UDim2.new(-0.00011061132, 0, -0.00372624397, 0)
ImageLabel500.Size = UDim2.new(0, 190, 0, 190)
ImageLabel500.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel500.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel500.BackgroundTransparency = 1
ImageLabel500.Image = "rbxassetid://282305376"
ImageLabel500.ImageColor3 = Color3.new(0, 0, 0)
ImageLabel501.Name = "ClockInnerline"
ImageLabel501.Parent = Frame499
ImageLabel501.Position = UDim2.new(0.0299999993, 0, 0.0199999996, 0)
ImageLabel501.Size = UDim2.new(0, 180, 0, 180)
ImageLabel501.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel501.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel501.BackgroundTransparency = 1
ImageLabel501.Image = "rbxassetid://282305376"
ImageLabel501.ImageColor3 = Color3.new(0.545098, 0.545098, 0.545098)
Frame502.Name = "SecondaryArrow"
Frame502.Parent = Frame499
Frame502.Position = UDim2.new(0, 0, -0.0105262995, 0)
Frame502.Rotation = 133
Frame502.Size = UDim2.new(0, 190, 0, 191)
Frame502.BackgroundColor = BrickColor.new("Institutional white")
Frame502.BackgroundColor3 = Color3.new(1, 1, 1)
Frame502.BackgroundTransparency = 1
Frame503.Name = "TheArrow"
Frame503.Parent = Frame502
Frame503.Position = UDim2.new(0.483999997, 0, 0.170000002, 0)
Frame503.Size = UDim2.new(0, 6, 0, 65)
Frame503.BackgroundColor = BrickColor.new("Really black")
Frame503.BackgroundColor3 = Color3.new(0, 0, 0)
Frame503.BackgroundTransparency = 0.5
Frame503.BorderSizePixel = 0
Frame504.Name = "MainArrow"
Frame504.Parent = Frame499
Frame504.Position = UDim2.new(0, 0, -0.0105262995, 0)
Frame504.Size = UDim2.new(0, 190, 0, 191)
Frame504.BackgroundColor = BrickColor.new("Institutional white")
Frame504.BackgroundColor3 = Color3.new(1, 1, 1)
Frame504.BackgroundTransparency = 1
Frame505.Name = "TheArrow"
Frame505.Parent = Frame504
Frame505.Position = UDim2.new(0.483999997, 0, 0.0900000036, 0)
Frame505.Size = UDim2.new(0, 6, 0, 80)
Frame505.BackgroundColor = BrickColor.new("Really black")
Frame505.BackgroundColor3 = Color3.new(0, 0, 0)
Frame505.BackgroundTransparency = 0.5
Frame505.BorderSizePixel = 0
ImageLabel506.Name = "ClockIndex"
ImageLabel506.Parent = Frame499
ImageLabel506.Position = UDim2.new(-0.00011061132, 0, -0.00372624397, 0)
ImageLabel506.Size = UDim2.new(0, 190, 0, 190)
ImageLabel506.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel506.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel506.BackgroundTransparency = 1
ImageLabel506.Image = "rbxassetid://187884215"
TextLabel507.Name = "Count"
TextLabel507.Parent = Frame499
TextLabel507.Position = UDim2.new(0.231578946, 0, 0.273684204, 0)
TextLabel507.Size = UDim2.new(0, 103, 0, 83)
TextLabel507.BackgroundColor = BrickColor.new("Institutional white")
TextLabel507.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel507.BackgroundTransparency = 1
TextLabel507.Font = Enum.Font.SourceSans
TextLabel507.FontSize = Enum.FontSize.Size14
TextLabel507.Text = ""
TextLabel507.TextColor = BrickColor.new("Institutional white")
TextLabel507.TextColor3 = Color3.new(1, 1, 1)
TextLabel507.TextScaled = true
TextLabel507.TextSize = 14
TextLabel507.TextStrokeTransparency = 0
TextLabel507.TextWrap = true
TextLabel507.TextWrapped = true
ScreenGui508.Name = "MoveList"
ScreenGui508.Parent = Folder0
ScreenGui508.Enabled = false
ScreenGui508.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame509.Name = "Moves"
Frame509.Parent = ScreenGui508
Frame509.Position = UDim2.new(0.00300000003, 0, 0.621999979, 0)
Frame509.Size = UDim2.new(0, 280, 0, 317)
Frame509.BackgroundColor = BrickColor.new("Institutional white")
Frame509.BackgroundColor3 = Color3.new(1, 1, 1)
Frame509.BackgroundTransparency = 1
TextLabel510.Name = "Title"
TextLabel510.Parent = Frame509
TextLabel510.Position = UDim2.new(0, 0, 0.234156653, 0)
TextLabel510.Size = UDim2.new(0, 280, 0, 24)
TextLabel510.BackgroundColor = BrickColor.new("Institutional white")
TextLabel510.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel510.BackgroundTransparency = 1
TextLabel510.Font = Enum.Font.SourceSans
TextLabel510.FontSize = Enum.FontSize.Size14
TextLabel510.Text = "Moves:"
TextLabel510.TextColor = BrickColor.new("Really black")
TextLabel510.TextColor3 = Color3.new(0, 0, 0)
TextLabel510.TextScaled = true
TextLabel510.TextSize = 14
TextLabel510.TextStrokeColor3 = Color3.new(1, 1, 1)
TextLabel510.TextStrokeTransparency = 0
TextLabel510.TextWrap = true
TextLabel510.TextWrapped = true
TextLabel510.TextXAlignment = Enum.TextXAlignment.Left
TextLabel511.Name = "Q"
TextLabel511.Parent = Frame509
TextLabel511.Position = UDim2.new(0, 0, 0.309866428, 0)
TextLabel511.Size = UDim2.new(0, 280, 0, 24)
TextLabel511.BackgroundColor = BrickColor.new("Institutional white")
TextLabel511.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel511.BackgroundTransparency = 1
TextLabel511.Font = Enum.Font.SourceSans
TextLabel511.FontSize = Enum.FontSize.Size14
TextLabel511.Text = "Q - De/Summon Stand"
TextLabel511.TextColor = BrickColor.new("Institutional white")
TextLabel511.TextColor3 = Color3.new(1, 1, 1)
TextLabel511.TextScaled = true
TextLabel511.TextSize = 14
TextLabel511.TextStrokeTransparency = 0
TextLabel511.TextWrap = true
TextLabel511.TextWrapped = true
TextLabel511.TextXAlignment = Enum.TextXAlignment.Left
TextLabel512.Name = "E"
TextLabel512.Parent = Frame509
TextLabel512.Position = UDim2.new(0, 0, 0.385576218, 0)
TextLabel512.Size = UDim2.new(0, 280, 0, 24)
TextLabel512.BackgroundColor = BrickColor.new("Institutional white")
TextLabel512.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel512.BackgroundTransparency = 1
TextLabel512.Font = Enum.Font.SourceSans
TextLabel512.FontSize = Enum.FontSize.Size14
TextLabel512.Text = "E (Hold) - Barrage"
TextLabel512.TextColor = BrickColor.new("Institutional white")
TextLabel512.TextColor3 = Color3.new(1, 1, 1)
TextLabel512.TextScaled = true
TextLabel512.TextSize = 14
TextLabel512.TextStrokeTransparency = 0
TextLabel512.TextWrap = true
TextLabel512.TextWrapped = true
TextLabel512.TextXAlignment = Enum.TextXAlignment.Left
TextLabel513.Name = "R"
TextLabel513.Parent = Frame509
TextLabel513.Position = UDim2.new(0, 0, 0.461286008, 0)
TextLabel513.Size = UDim2.new(0, 280, 0, 24)
TextLabel513.BackgroundColor = BrickColor.new("Institutional white")
TextLabel513.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel513.BackgroundTransparency = 1
TextLabel513.Font = Enum.Font.SourceSans
TextLabel513.FontSize = Enum.FontSize.Size14
TextLabel513.Text = "R - Strong Punch"
TextLabel513.TextColor = BrickColor.new("Institutional white")
TextLabel513.TextColor3 = Color3.new(1, 1, 1)
TextLabel513.TextScaled = true
TextLabel513.TextSize = 14
TextLabel513.TextStrokeTransparency = 0
TextLabel513.TextWrap = true
TextLabel513.TextWrapped = true
TextLabel513.TextXAlignment = Enum.TextXAlignment.Left
TextLabel514.Name = "T"
TextLabel514.Parent = Frame509
TextLabel514.Position = UDim2.new(0, 0, 0.536995769, 0)
TextLabel514.Size = UDim2.new(0, 280, 0, 24)
TextLabel514.BackgroundColor = BrickColor.new("Institutional white")
TextLabel514.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel514.BackgroundTransparency = 1
TextLabel514.Font = Enum.Font.SourceSans
TextLabel514.FontSize = Enum.FontSize.Size14
TextLabel514.Text = "T - Time Stop/Resume"
TextLabel514.TextColor = BrickColor.new("Institutional white")
TextLabel514.TextColor3 = Color3.new(1, 1, 1)
TextLabel514.TextScaled = true
TextLabel514.TextSize = 14
TextLabel514.TextStrokeTransparency = 0
TextLabel514.TextWrap = true
TextLabel514.TextWrapped = true
TextLabel514.TextXAlignment = Enum.TextXAlignment.Left
TextLabel515.Name = "F"
TextLabel515.Parent = Frame509
TextLabel515.Position = UDim2.new(0, 0, 0.612705529, 0)
TextLabel515.Size = UDim2.new(0, 280, 0, 24)
TextLabel515.BackgroundColor = BrickColor.new("Institutional white")
TextLabel515.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel515.BackgroundTransparency = 1
TextLabel515.Font = Enum.Font.SourceSans
TextLabel515.FontSize = Enum.FontSize.Size14
TextLabel515.Text = "F - Knife Throw"
TextLabel515.TextColor = BrickColor.new("Institutional white")
TextLabel515.TextColor3 = Color3.new(1, 1, 1)
TextLabel515.TextScaled = true
TextLabel515.TextSize = 14
TextLabel515.TextStrokeTransparency = 0
TextLabel515.TextWrap = true
TextLabel515.TextWrapped = true
TextLabel515.TextXAlignment = Enum.TextXAlignment.Left
TextLabel516.Name = "G"
TextLabel516.Parent = Frame509
TextLabel516.Position = UDim2.new(0, 0, 0.688415289, 0)
TextLabel516.Size = UDim2.new(0, 280, 0, 24)
TextLabel516.BackgroundColor = BrickColor.new("Institutional white")
TextLabel516.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel516.BackgroundTransparency = 1
TextLabel516.Font = Enum.Font.SourceSans
TextLabel516.FontSize = Enum.FontSize.Size14
TextLabel516.Text = "G - Muda Muda (Taunt)"
TextLabel516.TextColor = BrickColor.new("Institutional white")
TextLabel516.TextColor3 = Color3.new(1, 1, 1)
TextLabel516.TextScaled = true
TextLabel516.TextSize = 14
TextLabel516.TextStrokeTransparency = 0
TextLabel516.TextWrap = true
TextLabel516.TextWrapped = true
TextLabel516.TextXAlignment = Enum.TextXAlignment.Left
TextLabel517.Name = "Click"
TextLabel517.Parent = Frame509
TextLabel517.Position = UDim2.new(0, 0, 0.839834809, 0)
TextLabel517.Size = UDim2.new(0, 280, 0, 24)
TextLabel517.BackgroundColor = BrickColor.new("Institutional white")
TextLabel517.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel517.BackgroundTransparency = 1
TextLabel517.Font = Enum.Font.SourceSans
TextLabel517.FontSize = Enum.FontSize.Size14
TextLabel517.Text = "Left Click - Punch"
TextLabel517.TextColor = BrickColor.new("Institutional white")
TextLabel517.TextColor3 = Color3.new(1, 1, 1)
TextLabel517.TextScaled = true
TextLabel517.TextSize = 14
TextLabel517.TextStrokeTransparency = 0
TextLabel517.TextWrap = true
TextLabel517.TextWrapped = true
TextLabel517.TextXAlignment = Enum.TextXAlignment.Left
TextLabel518.Name = "Z"
TextLabel518.Parent = Frame509
TextLabel518.Position = UDim2.new(0, 0, 0.764125049, 0)
TextLabel518.Size = UDim2.new(0, 280, 0, 24)
TextLabel518.BackgroundColor = BrickColor.new("Institutional white")
TextLabel518.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel518.BackgroundTransparency = 1
TextLabel518.Font = Enum.Font.SourceSans
TextLabel518.FontSize = Enum.FontSize.Size14
TextLabel518.Text = "Z - Stand Jump"
TextLabel518.TextColor = BrickColor.new("Institutional white")
TextLabel518.TextColor3 = Color3.new(1, 1, 1)
TextLabel518.TextScaled = true
TextLabel518.TextSize = 14
TextLabel518.TextStrokeTransparency = 0
TextLabel518.TextWrap = true
TextLabel518.TextWrapped = true
TextLabel518.TextXAlignment = Enum.TextXAlignment.Left
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.Character
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
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
Folder519 = Instance.new("Folder")
StringValue520 = Instance.new("StringValue")
LocalScript521 = Instance.new("LocalScript")
ObjectValue522 = Instance.new("ObjectValue")
NumberValue523 = Instance.new("NumberValue")
NumberValue524 = Instance.new("NumberValue")
NumberValue525 = Instance.new("NumberValue")
NumberValue526 = Instance.new("NumberValue")
NumberValue527 = Instance.new("NumberValue")
LocalScript528 = Instance.new("LocalScript")
StringValue529 = Instance.new("StringValue")
LocalScript530 = Instance.new("LocalScript")
StringValue531 = Instance.new("StringValue")
LocalScript532 = Instance.new("LocalScript")
StringValue533 = Instance.new("StringValue")
LocalScript534 = Instance.new("LocalScript")
ObjectValue535 = Instance.new("ObjectValue")
StringValue536 = Instance.new("StringValue")
ModuleScript537 = Instance.new("ModuleScript")
LocalScript538 = Instance.new("LocalScript")
ObjectValue539 = Instance.new("ObjectValue")
ModuleScript540 = Instance.new("ModuleScript")
ModuleScript541 = Instance.new("ModuleScript")
Model542 = Instance.new("Model")
Part543 = Instance.new("Part")
Part544 = Instance.new("Part")
CylinderMesh545 = Instance.new("CylinderMesh")
Part546 = Instance.new("Part")
MeshPart547 = Instance.new("MeshPart")
MeshPart548 = Instance.new("MeshPart")
Part549 = Instance.new("Part")
CylinderMesh550 = Instance.new("CylinderMesh")
Part551 = Instance.new("Part")
MeshPart552 = Instance.new("MeshPart")
MeshPart553 = Instance.new("MeshPart")
Part554 = Instance.new("Part")
CylinderMesh555 = Instance.new("CylinderMesh")
MeshPart556 = Instance.new("MeshPart")
Part557 = Instance.new("Part")
Part558 = Instance.new("Part")
Part559 = Instance.new("Part")
Part560 = Instance.new("Part")
Part561 = Instance.new("Part")
Part562 = Instance.new("Part")
Part563 = Instance.new("Part")
Part564 = Instance.new("Part")
Part565 = Instance.new("Part")
Part566 = Instance.new("Part")
Part567 = Instance.new("Part")
Part568 = Instance.new("Part")
Part569 = Instance.new("Part")
Part570 = Instance.new("Part")
Part571 = Instance.new("Part")
Part572 = Instance.new("Part")
Part573 = Instance.new("Part")
Part574 = Instance.new("Part")
Part575 = Instance.new("Part")
Part576 = Instance.new("Part")
Part577 = Instance.new("Part")
CylinderMesh578 = Instance.new("CylinderMesh")
Part579 = Instance.new("Part")
Part580 = Instance.new("Part")
Part581 = Instance.new("Part")
Part582 = Instance.new("Part")
CylinderMesh583 = Instance.new("CylinderMesh")
Part584 = Instance.new("Part")
Part585 = Instance.new("Part")
Part586 = Instance.new("Part")
Part587 = Instance.new("Part")
Part588 = Instance.new("Part")
Part589 = Instance.new("Part")
Part590 = Instance.new("Part")
Part591 = Instance.new("Part")
Part592 = Instance.new("Part")
Part593 = Instance.new("Part")
Part594 = Instance.new("Part")
Part595 = Instance.new("Part")
Part596 = Instance.new("Part")
Part597 = Instance.new("Part")
Part598 = Instance.new("Part")
Part599 = Instance.new("Part")
Part600 = Instance.new("Part")
Part601 = Instance.new("Part")
Part602 = Instance.new("Part")
Part603 = Instance.new("Part")
Part604 = Instance.new("Part")
Part605 = Instance.new("Part")
Part606 = Instance.new("Part")
Part607 = Instance.new("Part")
Part608 = Instance.new("Part")
Part609 = Instance.new("Part")
Part610 = Instance.new("Part")
Part611 = Instance.new("Part")
Part612 = Instance.new("Part")
Part613 = Instance.new("Part")
Part614 = Instance.new("Part")
Part615 = Instance.new("Part")
Part616 = Instance.new("Part")
Part617 = Instance.new("Part")
Part618 = Instance.new("Part")
Part619 = Instance.new("Part")
Part620 = Instance.new("Part")
Part621 = Instance.new("Part")
Part622 = Instance.new("Part")
Part623 = Instance.new("Part")
Part624 = Instance.new("Part")
Weld625 = Instance.new("Weld")
Weld626 = Instance.new("Weld")
Weld627 = Instance.new("Weld")
Weld628 = Instance.new("Weld")
Weld629 = Instance.new("Weld")
Weld630 = Instance.new("Weld")
Weld631 = Instance.new("Weld")
Weld632 = Instance.new("Weld")
Weld633 = Instance.new("Weld")
Weld634 = Instance.new("Weld")
Weld635 = Instance.new("Weld")
Weld636 = Instance.new("Weld")
Weld637 = Instance.new("Weld")
Weld638 = Instance.new("Weld")
Weld639 = Instance.new("Weld")
Weld640 = Instance.new("Weld")
Weld641 = Instance.new("Weld")
Weld642 = Instance.new("Weld")
Weld643 = Instance.new("Weld")
Weld644 = Instance.new("Weld")
Weld645 = Instance.new("Weld")
Weld646 = Instance.new("Weld")
Weld647 = Instance.new("Weld")
Weld648 = Instance.new("Weld")
Weld649 = Instance.new("Weld")
Weld650 = Instance.new("Weld")
Weld651 = Instance.new("Weld")
Weld652 = Instance.new("Weld")
Weld653 = Instance.new("Weld")
Weld654 = Instance.new("Weld")
Weld655 = Instance.new("Weld")
Weld656 = Instance.new("Weld")
Weld657 = Instance.new("Weld")
Weld658 = Instance.new("Weld")
Weld659 = Instance.new("Weld")
Weld660 = Instance.new("Weld")
Weld661 = Instance.new("Weld")
Weld662 = Instance.new("Weld")
Weld663 = Instance.new("Weld")
Weld664 = Instance.new("Weld")
Weld665 = Instance.new("Weld")
Weld666 = Instance.new("Weld")
Weld667 = Instance.new("Weld")
Weld668 = Instance.new("Weld")
Weld669 = Instance.new("Weld")
Weld670 = Instance.new("Weld")
Weld671 = Instance.new("Weld")
Weld672 = Instance.new("Weld")
Weld673 = Instance.new("Weld")
Weld674 = Instance.new("Weld")
Weld675 = Instance.new("Weld")
Weld676 = Instance.new("Weld")
Weld677 = Instance.new("Weld")
Weld678 = Instance.new("Weld")
Weld679 = Instance.new("Weld")
Weld680 = Instance.new("Weld")
Weld681 = Instance.new("Weld")
Weld682 = Instance.new("Weld")
Weld683 = Instance.new("Weld")
Weld684 = Instance.new("Weld")
Weld685 = Instance.new("Weld")
Weld686 = Instance.new("Weld")
Weld687 = Instance.new("Weld")
Weld688 = Instance.new("Weld")
Weld689 = Instance.new("Weld")
Weld690 = Instance.new("Weld")
Weld691 = Instance.new("Weld")
Weld692 = Instance.new("Weld")
Weld693 = Instance.new("Weld")
Weld694 = Instance.new("Weld")
Weld695 = Instance.new("Weld")
Weld696 = Instance.new("Weld")
Weld697 = Instance.new("Weld")
Weld698 = Instance.new("Weld")
Weld699 = Instance.new("Weld")
Weld700 = Instance.new("Weld")
Weld701 = Instance.new("Weld")
Weld702 = Instance.new("Weld")
Weld703 = Instance.new("Weld")
Weld704 = Instance.new("Weld")
Weld705 = Instance.new("Weld")
Weld706 = Instance.new("Weld")
Weld707 = Instance.new("Weld")
Weld708 = Instance.new("Weld")
Weld709 = Instance.new("Weld")
Weld710 = Instance.new("Weld")
Weld711 = Instance.new("Weld")
Weld712 = Instance.new("Weld")
Weld713 = Instance.new("Weld")
Weld714 = Instance.new("Weld")
Weld715 = Instance.new("Weld")
Weld716 = Instance.new("Weld")
Weld717 = Instance.new("Weld")
Weld718 = Instance.new("Weld")
Weld719 = Instance.new("Weld")
Weld720 = Instance.new("Weld")
Weld721 = Instance.new("Weld")
Weld722 = Instance.new("Weld")
Weld723 = Instance.new("Weld")
Weld724 = Instance.new("Weld")
Weld725 = Instance.new("Weld")
Weld726 = Instance.new("Weld")
Weld727 = Instance.new("Weld")
Weld728 = Instance.new("Weld")
Weld729 = Instance.new("Weld")
Weld730 = Instance.new("Weld")
Weld731 = Instance.new("Weld")
Weld732 = Instance.new("Weld")
Weld733 = Instance.new("Weld")
Weld734 = Instance.new("Weld")
Weld735 = Instance.new("Weld")
Weld736 = Instance.new("Weld")
Weld737 = Instance.new("Weld")
Weld738 = Instance.new("Weld")
Weld739 = Instance.new("Weld")
Weld740 = Instance.new("Weld")
Weld741 = Instance.new("Weld")
Weld742 = Instance.new("Weld")
Weld743 = Instance.new("Weld")
Weld744 = Instance.new("Weld")
Weld745 = Instance.new("Weld")
Weld746 = Instance.new("Weld")
Weld747 = Instance.new("Weld")
Weld748 = Instance.new("Weld")
Weld749 = Instance.new("Weld")
Weld750 = Instance.new("Weld")
Weld751 = Instance.new("Weld")
Weld752 = Instance.new("Weld")
Weld753 = Instance.new("Weld")
Weld754 = Instance.new("Weld")
Weld755 = Instance.new("Weld")
Weld756 = Instance.new("Weld")
Weld757 = Instance.new("Weld")
Weld758 = Instance.new("Weld")
Weld759 = Instance.new("Weld")
Weld760 = Instance.new("Weld")
Weld761 = Instance.new("Weld")
Weld762 = Instance.new("Weld")
Weld763 = Instance.new("Weld")
Weld764 = Instance.new("Weld")
Weld765 = Instance.new("Weld")
Weld766 = Instance.new("Weld")
Weld767 = Instance.new("Weld")
Weld768 = Instance.new("Weld")
Weld769 = Instance.new("Weld")
Weld770 = Instance.new("Weld")
Weld771 = Instance.new("Weld")
Weld772 = Instance.new("Weld")
Weld773 = Instance.new("Weld")
Weld774 = Instance.new("Weld")
Weld775 = Instance.new("Weld")
Weld776 = Instance.new("Weld")
Weld777 = Instance.new("Weld")
Weld778 = Instance.new("Weld")
Weld779 = Instance.new("Weld")
Weld780 = Instance.new("Weld")
Weld781 = Instance.new("Weld")
Weld782 = Instance.new("Weld")
Weld783 = Instance.new("Weld")
Weld784 = Instance.new("Weld")
Weld785 = Instance.new("Weld")
Weld786 = Instance.new("Weld")
Weld787 = Instance.new("Weld")
Weld788 = Instance.new("Weld")
Weld789 = Instance.new("Weld")
Weld790 = Instance.new("Weld")
Weld791 = Instance.new("Weld")
Weld792 = Instance.new("Weld")
Weld793 = Instance.new("Weld")
Weld794 = Instance.new("Weld")
Weld795 = Instance.new("Weld")
Weld796 = Instance.new("Weld")
Weld797 = Instance.new("Weld")
Weld798 = Instance.new("Weld")
Weld799 = Instance.new("Weld")
Weld800 = Instance.new("Weld")
Weld801 = Instance.new("Weld")
Weld802 = Instance.new("Weld")
Weld803 = Instance.new("Weld")
Weld804 = Instance.new("Weld")
Weld805 = Instance.new("Weld")
Weld806 = Instance.new("Weld")
Weld807 = Instance.new("Weld")
Weld808 = Instance.new("Weld")
Weld809 = Instance.new("Weld")
Weld810 = Instance.new("Weld")
Weld811 = Instance.new("Weld")
Part812 = Instance.new("Part")
Part813 = Instance.new("Part")
Part814 = Instance.new("Part")
Part815 = Instance.new("Part")
Part816 = Instance.new("Part")
Part817 = Instance.new("Part")
Part818 = Instance.new("Part")
Part819 = Instance.new("Part")
Part820 = Instance.new("Part")
Part821 = Instance.new("Part")
Part822 = Instance.new("Part")
Part823 = Instance.new("Part")
Part824 = Instance.new("Part")
Part825 = Instance.new("Part")
Part826 = Instance.new("Part")
Part827 = Instance.new("Part")
Part828 = Instance.new("Part")
Part829 = Instance.new("Part")
WedgePart830 = Instance.new("WedgePart")
WedgePart831 = Instance.new("WedgePart")
WedgePart832 = Instance.new("WedgePart")
WedgePart833 = Instance.new("WedgePart")
WedgePart834 = Instance.new("WedgePart")
Part835 = Instance.new("Part")
Part836 = Instance.new("Part")
Part837 = Instance.new("Part")
WedgePart838 = Instance.new("WedgePart")
WedgePart839 = Instance.new("WedgePart")
Part840 = Instance.new("Part")
WedgePart841 = Instance.new("WedgePart")
Part842 = Instance.new("Part")
Part843 = Instance.new("Part")
CylinderMesh844 = Instance.new("CylinderMesh")
Part845 = Instance.new("Part")
CylinderMesh846 = Instance.new("CylinderMesh")
Part847 = Instance.new("Part")
CylinderMesh848 = Instance.new("CylinderMesh")
Part849 = Instance.new("Part")
CylinderMesh850 = Instance.new("CylinderMesh")
Part851 = Instance.new("Part")
CylinderMesh852 = Instance.new("CylinderMesh")
Part853 = Instance.new("Part")
CylinderMesh854 = Instance.new("CylinderMesh")
Part855 = Instance.new("Part")
CylinderMesh856 = Instance.new("CylinderMesh")
Part857 = Instance.new("Part")
CylinderMesh858 = Instance.new("CylinderMesh")
Part859 = Instance.new("Part")
CylinderMesh860 = Instance.new("CylinderMesh")
Part861 = Instance.new("Part")
CylinderMesh862 = Instance.new("CylinderMesh")
Part863 = Instance.new("Part")
CylinderMesh864 = Instance.new("CylinderMesh")
Part865 = Instance.new("Part")
CylinderMesh866 = Instance.new("CylinderMesh")
Part867 = Instance.new("Part")
CylinderMesh868 = Instance.new("CylinderMesh")
Part869 = Instance.new("Part")
CylinderMesh870 = Instance.new("CylinderMesh")
Part871 = Instance.new("Part")
CylinderMesh872 = Instance.new("CylinderMesh")
Part873 = Instance.new("Part")
CylinderMesh874 = Instance.new("CylinderMesh")
Part875 = Instance.new("Part")
CylinderMesh876 = Instance.new("CylinderMesh")
Part877 = Instance.new("Part")
CylinderMesh878 = Instance.new("CylinderMesh")
Part879 = Instance.new("Part")
CylinderMesh880 = Instance.new("CylinderMesh")
Part881 = Instance.new("Part")
CylinderMesh882 = Instance.new("CylinderMesh")
Part883 = Instance.new("Part")
CylinderMesh884 = Instance.new("CylinderMesh")
MeshPart885 = Instance.new("MeshPart")
Part886 = Instance.new("Part")
CylinderMesh887 = Instance.new("CylinderMesh")
Part888 = Instance.new("Part")
CylinderMesh889 = Instance.new("CylinderMesh")
Part890 = Instance.new("Part")
CylinderMesh891 = Instance.new("CylinderMesh")
Part892 = Instance.new("Part")
CylinderMesh893 = Instance.new("CylinderMesh")
Part894 = Instance.new("Part")
CylinderMesh895 = Instance.new("CylinderMesh")
Part896 = Instance.new("Part")
CylinderMesh897 = Instance.new("CylinderMesh")
Part898 = Instance.new("Part")
CylinderMesh899 = Instance.new("CylinderMesh")
Part900 = Instance.new("Part")
CylinderMesh901 = Instance.new("CylinderMesh")
Part902 = Instance.new("Part")
CylinderMesh903 = Instance.new("CylinderMesh")
Part904 = Instance.new("Part")
CylinderMesh905 = Instance.new("CylinderMesh")
Part906 = Instance.new("Part")
CylinderMesh907 = Instance.new("CylinderMesh")
Part908 = Instance.new("Part")
CylinderMesh909 = Instance.new("CylinderMesh")
Part910 = Instance.new("Part")
CylinderMesh911 = Instance.new("CylinderMesh")
Part912 = Instance.new("Part")
CylinderMesh913 = Instance.new("CylinderMesh")
Part914 = Instance.new("Part")
Part915 = Instance.new("Part")
Part916 = Instance.new("Part")
Part917 = Instance.new("Part")
Part918 = Instance.new("Part")
Part919 = Instance.new("Part")
Part920 = Instance.new("Part")
Part921 = Instance.new("Part")
Part922 = Instance.new("Part")
Part923 = Instance.new("Part")
Part924 = Instance.new("Part")
Part925 = Instance.new("Part")
Part926 = Instance.new("Part")
Part927 = Instance.new("Part")
Part928 = Instance.new("Part")
Part929 = Instance.new("Part")
Part930 = Instance.new("Part")
Part931 = Instance.new("Part")
Part932 = Instance.new("Part")
Part933 = Instance.new("Part")
Part934 = Instance.new("Part")
Part935 = Instance.new("Part")
Part936 = Instance.new("Part")
Part937 = Instance.new("Part")
Part938 = Instance.new("Part")
Part939 = Instance.new("Part")
Part940 = Instance.new("Part")
Part941 = Instance.new("Part")
Part942 = Instance.new("Part")
Part943 = Instance.new("Part")
Part944 = Instance.new("Part")
Part945 = Instance.new("Part")
Part946 = Instance.new("Part")
Part947 = Instance.new("Part")
Part948 = Instance.new("Part")
Part949 = Instance.new("Part")
Part950 = Instance.new("Part")
Part951 = Instance.new("Part")
Part952 = Instance.new("Part")
Part953 = Instance.new("Part")
Part954 = Instance.new("Part")
Part955 = Instance.new("Part")
Part956 = Instance.new("Part")
Part957 = Instance.new("Part")
Model958 = Instance.new("Model")
Part959 = Instance.new("Part")
UnionOperation960 = Instance.new("UnionOperation")
UnionOperation961 = Instance.new("UnionOperation")
Weld962 = Instance.new("Weld")
Weld963 = Instance.new("Weld")
Part964 = Instance.new("Part")
UnionOperation965 = Instance.new("UnionOperation")
UnionOperation966 = Instance.new("UnionOperation")
Weld967 = Instance.new("Weld")
Weld968 = Instance.new("Weld")
Part969 = Instance.new("Part")
UnionOperation970 = Instance.new("UnionOperation")
UnionOperation971 = Instance.new("UnionOperation")
Weld972 = Instance.new("Weld")
Weld973 = Instance.new("Weld")
Part974 = Instance.new("Part")
SpecialMesh975 = Instance.new("SpecialMesh")
Decal976 = Instance.new("Decal")
UnionOperation977 = Instance.new("UnionOperation")
UnionOperation978 = Instance.new("UnionOperation")
UnionOperation979 = Instance.new("UnionOperation")
UnionOperation980 = Instance.new("UnionOperation")
Part981 = Instance.new("Part")
SpecialMesh982 = Instance.new("SpecialMesh")
Decal983 = Instance.new("Decal")
Weld984 = Instance.new("Weld")
Weld985 = Instance.new("Weld")
Weld986 = Instance.new("Weld")
Weld987 = Instance.new("Weld")
Weld988 = Instance.new("Weld")
Part989 = Instance.new("Part")
Motor6D990 = Instance.new("Motor6D")
Part991 = Instance.new("Part")
Motor6D992 = Instance.new("Motor6D")
Motor6D993 = Instance.new("Motor6D")
Motor6D994 = Instance.new("Motor6D")
Motor6D995 = Instance.new("Motor6D")
Motor6D996 = Instance.new("Motor6D")
UnionOperation997 = Instance.new("UnionOperation")
UnionOperation998 = Instance.new("UnionOperation")
UnionOperation999 = Instance.new("UnionOperation")
UnionOperation1000 = Instance.new("UnionOperation")
UnionOperation1001 = Instance.new("UnionOperation")
UnionOperation1002 = Instance.new("UnionOperation")
UnionOperation1003 = Instance.new("UnionOperation")
Weld1004 = Instance.new("Weld")
Weld1005 = Instance.new("Weld")
Weld1006 = Instance.new("Weld")
Weld1007 = Instance.new("Weld")
Weld1008 = Instance.new("Weld")
Weld1009 = Instance.new("Weld")
Weld1010 = Instance.new("Weld")
Part1011 = Instance.new("Part")
UnionOperation1012 = Instance.new("UnionOperation")
UnionOperation1013 = Instance.new("UnionOperation")
Weld1014 = Instance.new("Weld")
Weld1015 = Instance.new("Weld")
BoolValue1016 = Instance.new("BoolValue")
ScreenGui1017 = Instance.new("ScreenGui")
Frame1018 = Instance.new("Frame")
ImageLabel1019 = Instance.new("ImageLabel")
ImageLabel1020 = Instance.new("ImageLabel")
Frame1021 = Instance.new("Frame")
Frame1022 = Instance.new("Frame")
Frame1023 = Instance.new("Frame")
Frame1024 = Instance.new("Frame")
ImageLabel1025 = Instance.new("ImageLabel")
TextLabel1026 = Instance.new("TextLabel")
ScreenGui1027 = Instance.new("ScreenGui")
Frame1028 = Instance.new("Frame")
TextLabel1029 = Instance.new("TextLabel")
TextLabel1030 = Instance.new("TextLabel")
TextLabel1031 = Instance.new("TextLabel")
TextLabel1032 = Instance.new("TextLabel")
TextLabel1033 = Instance.new("TextLabel")
TextLabel1034 = Instance.new("TextLabel")
TextLabel1035 = Instance.new("TextLabel")
TextLabel1036 = Instance.new("TextLabel")
TextLabel1037 = Instance.new("TextLabel")
Folder519.Name = "script"
Folder519.Parent = mas
StringValue520.Name = "PLR"
StringValue520.Parent = Folder519
LocalScript521.Name = "ClientSound"
LocalScript521.Parent = Folder519
table.insert(cors,sandbox(LocalScript521,function()
	local pt = script:WaitForChild("SoundParent")
	local si = script:WaitForChild("SoundID")
	local vo = script:WaitForChild("SoundVolume")
	local pi = script:WaitForChild("SoundPitch")
	local dt = script:WaitForChild("DestroyTime")
	local tpo = script:WaitForChild("TimePos")

	local snd = Instance.new("Sound")
	snd.Parent = pt.Value
	snd.SoundId = "rbxassetid://" ..si.Value
	snd.Volume = vo.Value
	snd.Pitch = pi.Value
	snd.TimePosition = tpo.Value
	snd:Play()

	game:GetService("Debris"):AddItem(snd, dt.Value)
	game:GetService("Debris"):AddItem(script, dt.Value)
end))
LocalScript521.Disabled = true
ObjectValue522.Name = "SoundParent"
ObjectValue522.Parent = LocalScript521
NumberValue523.Name = "SoundID"
NumberValue523.Parent = LocalScript521
NumberValue524.Name = "SoundVolume"
NumberValue524.Parent = LocalScript521
NumberValue525.Name = "SoundPitch"
NumberValue525.Parent = LocalScript521
NumberValue525.Value = 1
NumberValue526.Name = "DestroyTime"
NumberValue526.Parent = LocalScript521
NumberValue526.Value = 1
NumberValue527.Name = "TimePos"
NumberValue527.Parent = LocalScript521
LocalScript528.Name = "ColorCorrection"
LocalScript528.Parent = Folder519
table.insert(cors,sandbox(LocalScript528,function()
	local StandName = script:WaitForChild("StandName")
	local Player = game:GetService("Players").LocalPlayer

	function TimeStopLighting()
		local Camera = workspace.CurrentCamera
		local CurrentFOV = Camera.FieldOfView
		local Humanoid = Player.Character:FindFirstChildOfClass("Humanoid")
		local TimeStopColor = Instance.new("ColorCorrectionEffect")
		TimeStopColor.Name = StandName.Value.."'s Time Stop Effect"
		TimeStopColor.Parent = game:GetService("Lighting")
		TimeStopColor.Brightness = -0.7
		TimeStopColor.Contrast = 0
		TimeStopColor.Saturation = 1
		game:GetService("Debris"):AddItem(TimeStopColor, 25)
		coroutine.resume(coroutine.create(function()
			for i = 1, 25 do
				Camera.FieldOfView = CurrentFOV+(i*2)
				Humanoid.CameraOffset = Vector3.new(math.random(-17,17)/(-i/2), math.random(-17,17)/(-i/2), math.random(-17,17)/10)
				wait()
			end
			for i = 1, 10 do
				Camera.FieldOfView = 120-(i*5)
				Humanoid.CameraOffset = Vector3.new(math.random(-25,25)/(-i), math.random(-25,25)/(-i), math.random(-12,12)/10)
				wait()
			end
			Camera.FieldOfView = CurrentFOV
			Humanoid.CameraOffset = Vector3.new(0,0,0)
		end))
		coroutine.resume(coroutine.create(function()
			for i = 1, 10 do
				TimeStopColor.Contrast = -1-(i/10)
				TimeStopColor.Brightness = TimeStopColor.Brightness +0.077
				wait(0.054)
			end
			TimeStopColor.TintColor = Color3.fromRGB(127, 127, 127)
			for i = 1, 10 do
				TimeStopColor.Contrast = -1+(i/10)
				TimeStopColor.Brightness = TimeStopColor.Brightness -0.01
				TimeStopColor.Saturation = TimeStopColor.Saturation - 0.2
				wait(0.053)
			end
		end))
	end

	TimeStopLighting()

	while wait() do
		if game:GetService("Lighting"):FindFirstChild(StandName.Value.."'s Time Resume Effect") then
			game:GetService("Lighting")[StandName.Value.."'s Time Resume Effect"]:Destroy()
		end
	end 
end))
LocalScript528.Disabled = true
StringValue529.Name = "StandName"
StringValue529.Parent = LocalScript528
LocalScript530.Name = "RemoveColorCorrection"
LocalScript530.Parent = Folder519
table.insert(cors,sandbox(LocalScript530,function()
	local StandName = script:WaitForChild("StandName")

	if game:GetService("Lighting"):FindFirstChild(StandName.Value.."'s Time Resume Effect") then
		game:GetService("Lighting")[StandName.Value.."'s Time Resume Effect"]:Destroy()
	end

	local Blur = Instance.new("BlurEffect")
	Blur.Parent = game:GetService("Lighting")
	Blur.Size = 0 
	Blur.Name = StandName.Value.."'s Time Resume Effect"
	game:GetService("Debris"):AddItem(Blur, 2.85)
	coroutine.resume(coroutine.create(function()
		for i = 1, 25 do
			Blur.Size = i
			wait(0.035)
		end
		for i = 1, 25 do
			Blur.Size = Blur.Size - 1
			wait(0.015)
		end
		Blur:Destroy()
	end))
	while wait() do
		if game:GetService("Lighting"):FindFirstChild(StandName.Value.."'s Time Stop Effect") then
			game:GetService("Lighting")[StandName.Value.."'s Time Stop Effect"]:Destroy()
		end
		if game:GetService("Lighting"):FindFirstChild(StandName.Value.."'s Time Stop Effect 2") then
			game:GetService("Lighting")[StandName.Value.."'s Time Stop Effect 2"]:Destroy()
		end
	end 
end))
LocalScript530.Disabled = true
StringValue531.Name = "StandName"
StringValue531.Parent = LocalScript530
LocalScript532.Name = "TimeResumeSounds"
LocalScript532.Parent = Folder519
table.insert(cors,sandbox(LocalScript532,function()
	local StandName = script:WaitForChild("StandName").Value

	for Index, Child in next, workspace:GetDescendants() do
		if Child:IsA("Sound") then
			if Child:FindFirstChild(StandName.."'s Time Stop Position") then
				Child.TimePosition = Child[StandName.."'s Time Stop Position"].Value
				Child[StandName.."'s Time Stop Position"]:Destroy()
			end
			if Child:FindFirstChild(StandName.."'s Time Stop Mute") then
				Child[StandName.."'s Time Stop Mute"]:Destroy()
			end
			if Child:FindFirstChild(StandName.."'s Time Stop Playing") then
				if Child[StandName.."'s Time Stop Playing"].Value == true then
					Child:Resume()
				end
				Child[StandName.."'s Time Stop Playing"]:Destroy()
			end
		end
	end
end))
LocalScript532.Disabled = true
StringValue533.Name = "StandName"
StringValue533.Parent = LocalScript532
LocalScript534.Name = "TimeStopSounds"
LocalScript534.Parent = Folder519
table.insert(cors,sandbox(LocalScript534,function()
	local Character = script:WaitForChild("Char").Value
	local StandName = script:WaitForChild("StandName").Value

	function IsAHumanoid(Part)
		if Part:FindFirstAncestorWhichIsA("Model") then
			if Part:FindFirstAncestorWhichIsA("Model").Name == "Stand" then
				if Part:FindFirstAncestorWhichIsA("Model"):FindFirstAncestorWhichIsA("Model"):FindFirstChildOfClass("Humanoid") then
					return Part:FindFirstAncestorWhichIsA("Model"):FindFirstAncestorWhichIsA("Model")
				else
					return nil
				end
			end
			if Part:FindFirstAncestorWhichIsA("Model"):FindFirstChildOfClass("Humanoid") then
				return Part:FindFirstAncestorWhichIsA("Model")
			else
				return nil
			end
		else
			return nil
		end
	end

	function AddingStopper(Child)
		Child.ChildAdded:Connect(function()
			if script then
				if Child:IsA("Sound") then
					Mute(Child)
				else
					AddingStopper(Child)
				end
			end
		end)
	end

	function Mute(Sound)
		local TimePositionValue = Instance.new("NumberValue")
		TimePositionValue.Value = Sound.TimePosition
		TimePositionValue.Name = StandName.."'s Time Stop Position"
		TimePositionValue.Parent = Sound
		local PlayingValue = Instance.new("BoolValue")
		PlayingValue.Value = Sound.Playing
		PlayingValue.Name = StandName.."'s Time Stop Playing"
		PlayingValue.Parent = Sound
		local SoundMute = Instance.new("TremoloSoundEffect")
		SoundMute.Name = StandName.."'s Time Stop Mute"
		SoundMute.Depth = 1
		SoundMute.Duty = 0
		SoundMute.Enabled = true
		SoundMute.Frequency = 5
		SoundMute.Priority = 9e999
		SoundMute.Parent = Sound
		Sound:Stop()
		Sound:GetPropertyChangedSignal("Playing"):Connect(function()
			if script then
				Sound:Stop()
				if Sound:FindFirstChild(StandName.."'s Time Stop Mute") == nil then
					local SoundMute = Instance.new("TremoloSoundEffect")
					SoundMute.Name = StandName.."'s Time Stop Mute"
					SoundMute.Depth = 1
					SoundMute.Duty = 0
					SoundMute.Enabled = true
					SoundMute.Frequency = 5
					SoundMute.Priority = 9e999
					SoundMute.Parent = Sound
				end
			end
		end)
		Sound.ChildAdded:Connect(function(Child)
			if script then
				if Child:IsA("Sound") then
					Mute(Child)
				else
					AddingStopper(Child)
				end
			end
		end)
	end

	for Index, Child in next, workspace:GetDescendants() do
		if Child:IsA("Sound") and not Child:IsDescendantOf(Character) then
			if IsAHumanoid(Child) then
				local TsChar = IsAHumanoid(Child)
				if TsChar:FindFirstChild("IsTSImmune") then
					local Value = TsChar["IsTSImmune"]
					Value:GetPropertyChangedSignal("Value"):Connect(function()
						if Value.Value == false then
							Mute(Child)
						end
					end)
				else
					Mute(Child)
				end
			else
				Mute(Child)
			end
		elseif not Child:IsA("Sound") and not Child:IsDescendantOf(Character) and not Child == Character then
			if IsAHumanoid(Child) then
				local TsChar = IsAHumanoid(Child)
				if TsChar:FindFirstChild("IsTSImmune") then
					local Value = TsChar["IsTSImmune"]
					Value:GetPropertyChangedSignal("Value"):Connect(function()
						if Value.Value == false then
							AddingStopper(Child)
						end
					end)
				else
					AddingStopper(Child)
				end
			else
				AddingStopper(Child)
			end
		end
	end

	workspace.DescendantAdded:Connect(function(Child)
		if Child:IsA("Sound") and not Child:IsDescendantOf(Character) then
			if IsAHumanoid(Child) then
				local TsChar = IsAHumanoid(Child)
				if TsChar:FindFirstChild("IsTSImmune") then
					local Value = TsChar["IsTSImmune"]
					Value:GetPropertyChangedSignal("Value"):Connect(function()
						if Value.Value == false then
							Mute(Child)
						end
					end)
				else
					Mute(Child)
				end
			else
				Mute(Child)
			end
		end
	end)
end))
LocalScript534.Disabled = true
ObjectValue535.Name = "Char"
ObjectValue535.Parent = LocalScript534
StringValue536.Name = "StandName"
StringValue536.Parent = LocalScript534
ModuleScript537.Name = "FeModule"
ModuleScript537.Parent = Folder519
table.insert(cors,sandbox(ModuleScript537,function()
	wait(1/60)

	local fakemouse = script:WaitForChild'StandInputClient'
	fakemouse.Parent=nil;
	local fakeEvent = script:WaitForChild'FakeEvent'	
	fakeEvent.Parent = nil
	return function()
		local fakeEvent = require(fakeEvent);
		local sc = getfenv(2).script
		if(game:service'RunService':IsServer())then
			repeat wait() until sc.Parent and (sc.Parent:IsA'PlayerGui' or sc.Parent:IsA'Model')
			local Player;
			if(sc.Parent:IsA'PlayerGui')then
				Player=sc.Parent.Parent
				sc.Parent=Player.Character
			else
				Player = game:service'Players':GetPlayerFromCharacter(sc.Parent) or game:service'Players':FindFirstChild(sc.Parent.Name)
			end

			local ScriptCreated = {}

			assert(Player and Player:IsA'Player','Make sure the script is parented to Character or PlayerGUI!')
			local event = Instance.new("RemoteEvent")
			event.Name='StandInput'
			event.Parent=Player.Character;
			local gcp = Instance.new("RemoteFunction")
			gcp.Name='GetClientProperty'..event.Name
			gcp.Parent=Player.Character;
			local loudnesses = {}
			local function GetClientProperty(inst,prop)
				if(prop == 'PlaybackLoudness' and loudnesses[inst])then 
					return loudnesses[inst] or 0
				elseif(prop == 'PlaybackLoudness')then
					return gcp:InvokeClient(Player,'RegSound',inst)
				end
				return gcp:InvokeClient(Player,inst,prop)
			end

			local ScriptCreated = {}
			local FakeMouse = fakemouse:Clone();
			FakeMouse.Parent = Player.Character;
			FakeMouse:WaitForChild'Remote'.Value=event
			FakeMouse.Disabled = false
			local fakes={}
			local reals = {}
			local loudnesses = {}

			local function object()
				local object={}
				object.__index=function(self,idx)
					local val = rawget(self,idx) or rawget(self,'real')[idx];
					if(typeof(val)=='function')then
						return function(self2,...)
							local realFunc = rawget(self,'real')[idx]==val
							if(realFunc and self2==self)then
								self2=rawget(self,'real')
							end
							return val(self2,...)
						end
					end
					return val
				end
				object.__newindex=function(self,idx,val)
					if(fakes[val])then
						rawget(self,'real')[idx]=fakes[val]
					else
						rawget(self,'real')[idx]=val;
					end
				end
				object.__type='Instance'
				object.__tostring=function(self)
					return rawget(self,'real').Name
				end
				return object;
			end
			gcp.OnServerInvoke = function(plr,inst,play)
				if plr~=Player then return end
				if(inst and typeof(inst) == 'Instance' and inst:IsA'Sound')then
					loudnesses[inst]=play	
				end
			end

			local function wrapObject(realobj)
				local fakeobj = {real=realobj}
				if(realobj.ClassName=='Sound')then
					local needsLoudness=false;
					local mt = object()
					setmetatable(fakeobj,{__index=function(s,i)
						if(i=='PlaybackLoudness')then
							needsLoudness=true;
							return loudnesses[realobj] or 0
						else
							return rawget(mt,'__index')(s,i)
						end
					end,
					__type='Instance',
					__tostring=function(self)
						return rawget(self,'real').Name
					end,
					__newindex=function(s,i,v)
						realobj[i]=v
					end})
					coroutine.wrap(function()
						repeat wait() until needsLoudness;
						GetClientProperty(realobj,'PlaybackLoudness')
					end)()
				elseif(realobj:IsA'TextBox')then
					ScriptCreated[realobj]=true;
					fakeobj.FocusLost=fakeEvent();
					setmetatable(fakeobj,object())
				elseif(realobj.ClassName=='ObjectValue')then
					setmetatable(fakeobj,object())
					getmetatable(fakeobj).__newindex=function(s,i,v)
						if(i=='Value' and fakes[v])then
							realobj.Value = fakes[v]
						else
							realobj[i]=v
						end
					end
				end

				fakes[fakeobj]=realobj
				reals[realobj]=fakeobj;

				return fakeobj
			end

			local function getReal(i)
				return fakes[i] or i
			end

			local fakeGame={real=game};
			local fakeInstance={new=function(objName,par)
				local realobj = Instance.new(objName)
				local fakeobj = wrapObject(realobj)
				realobj.Parent=getReal(par)
				local wrapped = getmetatable(fakeobj) and getmetatable(fakeobj).__index and true or false
				return wrapped and fakeobj or realobj
			end};

			local fakePlayer={};
			fakePlayer.real=Player;
			fakePlayer.mouse={
				KeyDown=fakeEvent();
				KeyUp=fakeEvent();
				Button1Down=fakeEvent();
				Button1Up=fakeEvent();
				Button2Down=fakeEvent();
				Button2Up=fakeEvent();
				Move=fakeEvent();
				X=0;
				Y=0;
				Target=nil;
				Hit=CFrame.new();
			}
			fakePlayer.GetMouse=function(self)
				return self.mouse;	
			end
			fakePlayer.PlayerScripts={}
			setmetatable(fakePlayer.PlayerScripts,object())
			getmetatable(fakePlayer.PlayerScripts).__index=function()
				return {{Disabled=true,Name="GONE"}}
			end
			local services = {
				Players={real=game:service'Players',LocalPlayer=fakePlayer,localPlayer=fakePlayer};
				UserInputService={real=game:service'UserInputService',_keys={};InputBegan=fakeEvent(),InputEnded=fakeEvent(),InputChanged=fakeEvent()};
				Debris={real=game:service'Debris',AddItem=function(self,item,timer)
					if(fakes[item])then
						item = fakes[item]
					end
					self.real:AddItem(item,timer)
				end};
				RunService={
					_bound={},
					_lastCall=tick();
					real=game:service'RunService',
					RenderStepped=game:service'RunService'.Stepped,
					BindToRenderStep=function(self,n,_,func)
						self._bound[n]=func;
					end;
					UnbindFromRenderStep=function(self,n,_,func)
						self:BindToRenderStep(n)
					end;	
				};
			}
			services.Debris.addItem=services.Debris.AddItem
			services.UserInputService.IsKeyDown=function(s,k)
				return s._keys[k] and true or false
			end
			services.UserInputService.InputBegan:connect(function(k)
				services.UserInputService._keys[k.KeyCode]=true
			end)
			services.UserInputService.InputEnded:connect(function(k)
				services.UserInputService._keys[k.KeyCode]=false
			end)

			local function getService(self,name)
				if(self==fakeGame)then
					return services[name] or game:service(name)
				end
			end
			services.RunService.RenderStepped:connect(function()
				local ct = tick();
				local lt = services.RunService._lastCall;
				local dt = ct-lt
				services.RunService._lastCall=ct;
				for name,func in next, services.RunService._bound do
					func(dt)
				end
			end)
			fakeGame.service=getService;
			fakeGame.GetService=getService;
			for i,v in next, services do 
				fakes[v]=v.real
				fakeGame[v.real.Name]=v
				setmetatable(v,object())
			end

			setmetatable(fakeGame,object())
			setmetatable(fakePlayer,object())
			fakes[fakeGame]=game
			fakes[fakePlayer]=Player

			getfenv(2).game=fakeGame
			getfenv(2).Instance=fakeInstance;

			getfenv(2).Wrap=wrapObject; -- lets you wrap your instances manually so that you have access to .PlaybackLoudness on sounds, etc.

			event.OnServerEvent:connect(function(self,data)
				local type = data.Type;
				if(data.Event)then
					local event = (type=='Mouse' and fakePlayer.mouse or type=='UserInput' and services.UserInputService or {})[data.Event]
					local eventIsFake = pcall(function()
						return event._connections~=nil
					end)
					if(event and eventIsFake)then
						event:fire(unpack(data.Args))
					end
				elseif(type=='Mouse')then
					--fakePlayer.mouse.Target=data.Target
					--fakePlayer.mouse.Hit=data.Hit
					for i,v in next, data.Variables do
						local eventIsFake = pcall(function()
							return fakePlayer.mouse[i]._connections~=nil
						end)
						if(not fakePlayer.mouse[i] or not eventIsFake)then
							fakePlayer.mouse[i]=v;
						end
					end
				elseif(type=='TextboxReplication')then
					if(ScriptCreated[data.TextBox])then
						data.TextBox.Text = data.Text
						if(reals[data.TextBox] and data.Args)then
							reals[data.TextBox].FocusLost:fire(unpack(data.Args))
						end
					end
				end
			end)

			print(gcp:InvokeClient(Player,'Ready'))
			repeat wait() until gcp:InvokeClient(Player,'Ready')
			return GetClientProperty;
		else
			return error("Make sure you're using a server-script!")
		end

	end

end))
LocalScript538.Name = "StandInputClient"
LocalScript538.Parent = ModuleScript537
table.insert(cors,sandbox(LocalScript538,function()
	local me = game:service'Players'.localPlayer;
	local pg = me:FindFirstChildOfClass'PlayerGui'
	local mouse = me:GetMouse();
	local UIS = game:service'UserInputService'
	local ch = me.Character;

	local sentMouseData = {}

	local UserEvent = (function()
		local Ret;
		repeat wait() Ret = script:WaitForChild'Remote'.Value until Ret
		return Ret
	end)()
	UIS.InputChanged:connect(function(io,gpe)
		if(gpe)then return end
		local fakeIo = {KeyCode=io.KeyCode,UserInputType=io.UserInputType,Delta=io.Delta,Position=io.Position,UserInputState=io.UserInputState}
		UserEvent:FireServer{Type='UserInput',Event='InputChanged',Args={fakeIo,gpe and true or false}}
	end)


	UIS.InputBegan:connect(function(io,gpe)
		if(gpe)then return end
		local fakeIo = {KeyCode=io.KeyCode,UserInputType=io.UserInputType,Delta=io.Delta,Position=io.Position,UserInputState=io.UserInputState}
		UserEvent:FireServer{Type='UserInput',Event='InputBegan',Args={fakeIo,gpe and true or false}}
	end)

	UIS.InputEnded:connect(function(io,gpe)
		if(gpe)then return end
		local fakeIo = {KeyCode=io.KeyCode,UserInputType=io.UserInputType,Delta=io.Delta,Position=io.Position,UserInputState=io.UserInputState}
		UserEvent:FireServer{Type='UserInput',Event='InputEnded',Args={fakeIo,gpe and true or false}}
	end)

	mouse.KeyDown:connect(function(k)
		UserEvent:FireServer{Type='Mouse',Event='KeyDown',Args={k}}
	end)

	mouse.KeyUp:connect(function(k)
		UserEvent:FireServer{Type='Mouse',Event='KeyUp',Args={k}}
	end)

	mouse.Button1Down:connect(function()
		UserEvent:FireServer{Type='Mouse',Event='Button1Down',Args={}}
	end)

	mouse.Button1Up:connect(function()
		UserEvent:FireServer{Type='Mouse',Event='Button1Up',Args={}}
	end)

	mouse.Button2Down:connect(function()
		UserEvent:FireServer{Type='Mouse',Event='Button2Down',Args={}}
	end)

	mouse.Button2Up:connect(function()
		UserEvent:FireServer{Type='Mouse',Event='Button2Up',Args={}}
	end)

	UIS.TextBoxFocusReleased:connect(function(inst)
		UserEvent:FireServer{Type='TextboxReplication',TextBox=inst,Text=inst.Text}
	end)


	local ClientProp = ch:WaitForChild('GetClientProperty'..UserEvent.Name,30)
	local sounds = {}

	function regSound(o)
		if(o:IsA'Sound')then
			local lastLoudness = o.PlaybackLoudness
			ClientProp:InvokeServer(o,lastLoudness)
			table.insert(sounds,{o,lastLoudness})
			--ClientProp:FireServer(o,o.PlaybackLoudness)
		end
	end

	ClientProp.OnClientInvoke = function(inst,prop)
		if(inst == 'RegSound')then
			regSound(prop)
			for i = 1, #sounds do
				if(sounds[i][1] == prop)then 
					return sounds[i][2]
				end 
			end 
		elseif(inst=='Ready')then
			return true
		elseif(inst=='Camera')then
			return workspace.CurrentCamera[prop]
		else
			return inst[prop]
		end
	end


	function matching(a,b)
		for i,v in next, a do
			if(b[i]~=v)then
				return false;
			end
		end
		for i,v in next, b do
			if(a[i]~=v)then
				return false;
			end
		end
		return true;
	end

	coroutine.wrap(function()
		while true do
			local data = {Target=mouse.Target,Hit=mouse.Hit,X=mouse.X,Y=mouse.Y}
			--if(sentMouseData.Target~=data.Target or sentMouseData.Hit~=data.Hit)then
			if(not matching(sentMouseData,data))then
				sentMouseData=data
				UserEvent:FireServer({Type='Mouse',Variables=sentMouseData})
			end
			game:service'RunService'.RenderStepped:Wait()
		end	
	end)()

	game:service'RunService'.RenderStepped:connect(function()
		for i = 1, #sounds do
			local tab = sounds[i]
			local object,last=unpack(tab)
			if(object.PlaybackLoudness ~= last)then
				sounds[i][2]=object.PlaybackLoudness
				ClientProp:InvokeServer(object,sounds[i][2])
			end
		end
	end)

	for _,v in next, workspace:GetDescendants() do regSound(v) end
	workspace.DescendantAdded:connect(regSound)
	me.Character.DescendantAdded:connect(regSound)


end))
LocalScript538.Disabled = true
ObjectValue539.Name = "Remote"
ObjectValue539.Parent = LocalScript538
ModuleScript540.Name = "FakeEvent"
ModuleScript540.Parent = ModuleScript537
table.insert(cors,sandbox(ModuleScript540,function()
	local signal = require(script:WaitForChild'ScriptConnection').new

	local fakeEvent = {}

	function fakeEvent.new()
		local conn = {
			_connections={};
		}

		setmetatable(conn,{__index=fakeEvent})

		return conn;
	end

	function fakeEvent:fire(...)
		for i = 1,#self._connections do
			local connection = self._connections[i]
			connection.Function(#connection.Args>0 and unpack(connection.Args) or ...)
		end	
	end

	function fakeEvent:connect(func,...)
		local obj = signal(self,func,...)
		table.insert(self._connections,obj)
		return obj
	end

	fakeEvent.Fire=fakeEvent.fire;
	fakeEvent.Connect=fakeEvent.connect;

	setmetatable(fakeEvent,{__call=fakeEvent.new})
	return fakeEvent;
end))
ModuleScript541.Name = "ScriptConnection"
ModuleScript541.Parent = ModuleScript540
table.insert(cors,sandbox(ModuleScript541,function()
	local ScriptConnection = {}

	function ScriptConnection.new(event,func,...)
		local connObj = newproxy(true)
		local conn = {
			Event=event;
			Function=func;
			Args={...};
			Object=connObj;
		}
		getmetatable(connObj).__index=function(self,index)
			if(index=='Locked')then
				return nil;
			else
				return conn[index] or ScriptConnection[index]
			end
		end
		getmetatable(connObj).__newindex=function(self,index,value)
			if(index=='Locked' and getfenv(2).script==script)then
				conn.Locked=value
			elseif(index~='Locked')then
				conn[index]=value
			end
		end

		return connObj;
	end

	function ScriptConnection:disconnect()
		self.Event._connections[self]=nil;
	end

	function ScriptConnection:Lock(key)
		self.Locked=key;
	end

	function ScriptConnection:Unlock(key)
		if(self.Locked==key)then
			self.Locked=nil;
		else
			error("Invalid key!",2)
		end
	end


	ScriptConnection.Disconnect=ScriptConnection.disconnect;

	setmetatable(ScriptConnection,{__call=function(s,...)ScriptConnection.new(...) end})
	return ScriptConnection;
end))
Model542.Name = "RoadRoller"
Model542.Parent = Folder519
Model542.PrimaryPart = Part624
Part543.Parent = Model542
Part543.CFrame = CFrame.new(30.3140545, 13.6477461, 69.7250519, 0.500000238, 9.89999971e-05, -0.866025388, 0.866025388, 0, 0.500000238, 4.95000204e-05, -1, -8.57365085e-05)
Part543.Orientation = Vector3.new(-30, -90.01000213623047, 90)
Part543.Position = Vector3.new(30.314054489135742, 13.647746086120605, 69.72505187988281)
Part543.Rotation = Vector3.new(-90.01000213623047, -60, -0.009999999776482582)
Part543.Color = Color3.new(1, 0.690196, 0)
Part543.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part543.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part543.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part543.BrickColor = BrickColor.new("Deep orange")
Part543.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part543.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part543.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part543.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part543.brickColor = BrickColor.new("Deep orange")
Part543.FormFactor = Enum.FormFactor.Custom
Part543.formFactor = Enum.FormFactor.Custom
Part544.Parent = Model542
Part544.CFrame = CFrame.new(20.6022472, 19.200634, 77.2062073, -0.0152346212, -0.172979429, -0.98480767, 0.0858299956, 0.981060326, -0.173648968, 0.996193409, -0.0871715099, -9.92598434e-05)
Part544.Orientation = Vector3.new(10, -90.01000213623047, 5)
Part544.Position = Vector3.new(20.60224723815918, 19.200634002685547, 77.20620727539062)
Part544.Rotation = Vector3.new(90.02999877929688, -80, 95.02999877929688)
Part544.Size = Vector3.new(0.25684136152267456, 0.8186820149421692, 0.6421034932136536)
Part544.Material = Enum.Material.SmoothPlastic
Part544.FormFactor = Enum.FormFactor.Custom
Part544.formFactor = Enum.FormFactor.Custom
CylinderMesh545.Parent = Part544
Part546.Parent = Model542
Part546.CFrame = CFrame.new(29.2830734, 13.2210426, 69.7249527, -0.965925872, 9.89999971e-05, -0.258818984, 0.258818984, 0, -0.965925872, -9.56266595e-05, -1, -2.56230778e-05)
Part546.Orientation = Vector3.new(75, -90.01000213623047, 90)
Part546.Position = Vector3.new(29.28307342529297, 13.22104263305664, 69.7249526977539)
Part546.Rotation = Vector3.new(90, -15, -179.99000549316406)
Part546.Color = Color3.new(1, 0.690196, 0)
Part546.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part546.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part546.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part546.BrickColor = BrickColor.new("Deep orange")
Part546.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part546.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part546.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part546.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part546.brickColor = BrickColor.new("Deep orange")
Part546.FormFactor = Enum.FormFactor.Custom
Part546.formFactor = Enum.FormFactor.Custom
MeshPart547.Name = "EnhancedCone"
MeshPart547.Parent = Model542
MeshPart547.CFrame = CFrame.new(27.5167789, 15.805418, 76.6898117, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
MeshPart547.Orientation = Vector3.new(0, -0.009999999776482582, 0)
MeshPart547.Position = Vector3.new(27.51677894592285, 15.805418014526367, 76.68981170654297)
MeshPart547.Rotation = Vector3.new(0, -0.009999999776482582, 0)
MeshPart547.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MeshPart547.Size = Vector3.new(0.35000079870224, 0.5500007271766663, 0.40000081062316895)
MeshPart547.BrickColor = BrickColor.new("Really black")
MeshPart547.brickColor = BrickColor.new("Really black")
MeshPart548.Parent = Model542
MeshPart548.CFrame = CFrame.new(18.2645035, 13.8607292, 68.5482559, 0.00249704532, 0.171011984, 0.985265851, -0.0301530007, -0.984808028, 0.17100893, 0.999542236, -0.0301357359, 0.00269741379)
MeshPart548.Orientation = Vector3.new(-9.850000381469727, 89.83999633789062, -178.25)
MeshPart548.Position = Vector3.new(18.264503479003906, 13.860729217529297, 68.54825592041016)
MeshPart548.Rotation = Vector3.new(-89.0999984741211, 80.1500015258789, -89.16000366210938)
MeshPart548.Color = Color3.new(1, 0.690196, 0)
MeshPart548.Size = Vector3.new(0.34999993443489075, 2.0000007152557373, 0.9500000476837158)
MeshPart548.BrickColor = BrickColor.new("Deep orange")
MeshPart548.brickColor = BrickColor.new("Deep orange")
Part549.Parent = Model542
Part549.CFrame = CFrame.new(20.5935764, 19.2121887, 70.3939514, -0.0150343729, -0.17299667, 0.98480773, 0.085830979, 0.981060266, 0.1736487, -0.99619627, 0.0871377066, 9.88475513e-05)
Part549.Orientation = Vector3.new(-10, 89.98999786376953, 5)
Part549.Position = Vector3.new(20.593576431274414, 19.212188720703125, 70.39395141601562)
Part549.Rotation = Vector3.new(-89.97000122070312, 80, 94.97000122070312)
Part549.Size = Vector3.new(0.25684136152267456, 0.8186820149421692, 0.6421034932136536)
Part549.Material = Enum.Material.SmoothPlastic
Part549.FormFactor = Enum.FormFactor.Custom
Part549.formFactor = Enum.FormFactor.Custom
CylinderMesh550.Parent = Part549
Part551.Parent = Model542
Part551.CFrame = CFrame.new(29.3515053, 12.7260017, 78.8249435, -0.866025388, 9.89999971e-05, 0.500000238, -0.500000238, 0, -0.866025388, -8.57365085e-05, -1, 4.95000204e-05)
Part551.Orientation = Vector3.new(60, 89.98999786376953, -90)
Part551.Position = Vector3.new(29.351505279541016, 12.726001739501953, 78.82494354248047)
Part551.Rotation = Vector3.new(90, 30, -179.99000549316406)
Part551.Color = Color3.new(1, 0.690196, 0)
Part551.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part551.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part551.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part551.BrickColor = BrickColor.new("Deep orange")
Part551.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part551.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part551.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part551.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part551.brickColor = BrickColor.new("Deep orange")
Part551.FormFactor = Enum.FormFactor.Custom
Part551.formFactor = Enum.FormFactor.Custom
MeshPart552.Parent = Model542
MeshPart552.CFrame = CFrame.new(19.2443848, 14.0653858, 78.9584122, -0.00249904511, 0.171012938, -0.985265613, 0.030152997, -0.984807789, -0.171009958, -0.999542117, -0.030136073, -0.00269547361)
MeshPart552.Orientation = Vector3.new(9.850000381469727, -90.16000366210938, 178.25)
MeshPart552.Position = Vector3.new(19.244384765625, 14.065385818481445, 78.95841217041016)
MeshPart552.Rotation = Vector3.new(90.9000015258789, -80.1500015258789, -90.83999633789062)
MeshPart552.Color = Color3.new(1, 0.690196, 0)
MeshPart552.Size = Vector3.new(0.3299998939037323, 2.0000007152557373, 0.9500000476837158)
MeshPart552.BrickColor = BrickColor.new("Deep orange")
MeshPart552.brickColor = BrickColor.new("Deep orange")
MeshPart553.Parent = Model542
MeshPart553.CFrame = CFrame.new(18.3155918, 13.9016171, 78.9430847, 0.00249704532, 0.171011984, 0.985265851, -0.0301530007, -0.984808028, 0.17100893, 0.999542236, -0.0301357359, 0.00269741379)
MeshPart553.Orientation = Vector3.new(-9.850000381469727, 89.83999633789062, -178.25)
MeshPart553.Position = Vector3.new(18.31559181213379, 13.901617050170898, 78.94308471679688)
MeshPart553.Rotation = Vector3.new(-89.0999984741211, 80.1500015258789, -89.16000366210938)
MeshPart553.Color = Color3.new(1, 0.690196, 0)
MeshPart553.Size = Vector3.new(0.34999993443489075, 2.0000007152557373, 0.9500000476837158)
MeshPart553.BrickColor = BrickColor.new("Deep orange")
MeshPart553.brickColor = BrickColor.new("Deep orange")
Part554.Parent = Model542
Part554.CFrame = CFrame.new(17.7888756, 18.7243309, 76.1928177, -0.99619478, -0.0871549696, 9.89999971e-05, -0.087154977, 0.99619478, 0, -9.86232772e-05, -8.62834167e-06, -1)
Part554.Orientation = Vector3.new(0, 179.99000549316406, -5)
Part554.Position = Vector3.new(17.788875579833984, 18.72433090209961, 76.19281768798828)
Part554.Rotation = Vector3.new(-180, 0.009999999776482582, 175)
Part554.Size = Vector3.new(0.25684136152267456, 0.8186820149421692, 0.6421034932136536)
Part554.Material = Enum.Material.SmoothPlastic
Part554.FormFactor = Enum.FormFactor.Custom
Part554.formFactor = Enum.FormFactor.Custom
CylinderMesh555.Parent = Part554
MeshPart556.Parent = Model542
MeshPart556.CFrame = CFrame.new(19.2093735, 14.0050621, 68.5415497, -0.00249904511, 0.171012938, -0.985265613, 0.030152997, -0.984807789, -0.171009958, -0.999542117, -0.030136073, -0.00269547361)
MeshPart556.Orientation = Vector3.new(9.850000381469727, -90.16000366210938, 178.25)
MeshPart556.Position = Vector3.new(19.209373474121094, 14.005062103271484, 68.54154968261719)
MeshPart556.Rotation = Vector3.new(90.9000015258789, -80.1500015258789, -90.83999633789062)
MeshPart556.Color = Color3.new(1, 0.690196, 0)
MeshPart556.Size = Vector3.new(0.3299998939037323, 2.0000007152557373, 0.9500000476837158)
MeshPart556.BrickColor = BrickColor.new("Deep orange")
MeshPart556.brickColor = BrickColor.new("Deep orange")
Part557.Parent = Model542
Part557.CFrame = CFrame.new(22.7446995, 15.3654461, 72.5418243, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part557.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part557.Position = Vector3.new(22.744699478149414, 15.365446090698242, 72.54182434082031)
Part557.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part557.Color = Color3.new(1, 0.690196, 0)
Part557.Size = Vector3.new(0.9750000238418579, 0.6000000238418579, 0.47499990463256836)
Part557.BottomSurface = Enum.SurfaceType.Smooth
Part557.BrickColor = BrickColor.new("Deep orange")
Part557.TopSurface = Enum.SurfaceType.Smooth
Part557.brickColor = BrickColor.new("Deep orange")
Part558.Parent = Model542
Part558.CFrame = CFrame.new(27.4338245, 15.7256384, 73.6123047, -0.500000238, -0.866025388, -9.89999971e-05, 0.866025388, -0.500000238, 0, -4.95000204e-05, -8.57365085e-05, 1)
Part558.Orientation = Vector3.new(0, -0.009999999776482582, 120)
Part558.Position = Vector3.new(27.43382453918457, 15.725638389587402, 73.6123046875)
Part558.Rotation = Vector3.new(0, -0.009999999776482582, 120)
Part558.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part558.Size = Vector3.new(2.349998712539673, 0.17500001192092896, 0.17499996721744537)
Part558.BottomSurface = Enum.SurfaceType.Smooth
Part558.BrickColor = BrickColor.new("Institutional white")
Part558.TopSurface = Enum.SurfaceType.Smooth
Part558.brickColor = BrickColor.new("Institutional white")
Part558.Shape = Enum.PartType.Cylinder
Part559.Parent = Model542
Part559.CFrame = CFrame.new(18.6412487, 18.2644634, 73.701149, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part559.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part559.Position = Vector3.new(18.64124870300293, 18.264463424682617, 73.7011489868164)
Part559.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part559.Color = Color3.new(1, 0.690196, 0)
Part559.Size = Vector3.new(3.2900006771087646, 0.2600001394748688, 2)
Part559.BottomSurface = Enum.SurfaceType.Smooth
Part559.BrickColor = BrickColor.new("Deep orange")
Part559.TopSurface = Enum.SurfaceType.Smooth
Part559.brickColor = BrickColor.new("Deep orange")
Part560.Parent = Model542
Part560.CFrame = CFrame.new(30.6820049, 15.6654587, 74.330162, 9.89999971e-05, 0, 1, 0, 1, 0, -1, 0, 9.89999971e-05)
Part560.Orientation = Vector3.new(0, 89.98999786376953, 0)
Part560.Position = Vector3.new(30.682004928588867, 15.665458679199219, 74.33016204833984)
Part560.Rotation = Vector3.new(0, 90, 0)
Part560.Color = Color3.new(1, 0.690196, 0)
Part560.Size = Vector3.new(9.499996185302734, 0.24999992549419403, 0.5000000596046448)
Part560.BottomSurface = Enum.SurfaceType.Smooth
Part560.BrickColor = BrickColor.new("Deep orange")
Part560.TopSurface = Enum.SurfaceType.Smooth
Part560.brickColor = BrickColor.new("Deep orange")
Part560.Shape = Enum.PartType.Cylinder
Part561.Parent = Model542
Part561.CFrame = CFrame.new(19.3259697, 17.6154327, 73.754921, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part561.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part561.Position = Vector3.new(19.325969696044922, 17.615432739257812, 73.75492095947266)
Part561.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part561.Color = Color3.new(1, 0.690196, 0)
Part561.Size = Vector3.new(1.350000023841858, 0.6499999165534973, 8.25)
Part561.BottomSurface = Enum.SurfaceType.Smooth
Part561.BrickColor = BrickColor.new("Deep orange")
Part561.TopSurface = Enum.SurfaceType.Smooth
Part561.brickColor = BrickColor.new("Deep orange")
Part562.Parent = Model542
Part562.CFrame = CFrame.new(18.3903389, 16.0060768, 68.579834, 0.984807491, 0.17364791, 9.89999971e-05, 0.17364791, -0.984807491, 0, 9.74959403e-05, 1.71911433e-05, -1)
Part562.Orientation = Vector3.new(0, 179.99000549316406, 170)
Part562.Position = Vector3.new(18.390338897705078, 16.00607681274414, 68.579833984375)
Part562.Rotation = Vector3.new(-180, 0.009999999776482582, -10)
Part562.Color = Color3.new(1, 0.690196, 0)
Part562.Size = Vector3.new(1.9000002145767212, 2.350001573562622, 0.3499998152256012)
Part562.BottomSurface = Enum.SurfaceType.Smooth
Part562.BrickColor = BrickColor.new("Deep orange")
Part562.TopSurface = Enum.SurfaceType.Smooth
Part562.brickColor = BrickColor.new("Deep orange")
Part563.Parent = Model542
Part563.CFrame = CFrame.new(31.0820103, 15.6654739, 74.3301544, 9.89999971e-05, 0, 1, 0, 1, 0, -1, 0, 9.89999971e-05)
Part563.Orientation = Vector3.new(0, 89.98999786376953, 0)
Part563.Position = Vector3.new(31.08201026916504, 15.665473937988281, 74.33015441894531)
Part563.Rotation = Vector3.new(0, 90, 0)
Part563.Color = Color3.new(1, 0.690196, 0)
Part563.Size = Vector3.new(9.499999046325684, 0.24999992549419403, 0.5000000596046448)
Part563.BottomSurface = Enum.SurfaceType.Smooth
Part563.BrickColor = BrickColor.new("Deep orange")
Part563.TopSurface = Enum.SurfaceType.Smooth
Part563.brickColor = BrickColor.new("Deep orange")
Part563.Shape = Enum.PartType.Cylinder
Part564.Parent = Model542
Part564.CFrame = CFrame.new(18.242672, 16.9941483, 73.6798248, 0.984807789, 9.89999971e-05, -0.173647955, 0.173647955, 0, 0.984807789, 9.74959694e-05, -1, -1.7191147e-05)
Part564.Orientation = Vector3.new(-80, -90.01000213623047, 90)
Part564.Position = Vector3.new(18.242671966552734, 16.99414825439453, 73.67982482910156)
Part564.Rotation = Vector3.new(-90, -10, -0.009999999776482582)
Part564.Color = Color3.new(1, 0.690196, 0)
Part564.Size = Vector3.new(1.9000002145767212, 10.300002098083496, 0.3499998152256012)
Part564.BottomSurface = Enum.SurfaceType.Smooth
Part564.BrickColor = BrickColor.new("Deep orange")
Part564.TopSurface = Enum.SurfaceType.Smooth
Part564.brickColor = BrickColor.new("Deep orange")
Part565.Parent = Model542
Part565.CFrame = CFrame.new(31.610569, 16.0144806, 71.5747223, -0.891006887, -0.453989953, -9.89999971e-05, 0.453989953, -0.891006887, 0, -8.82096792e-05, -4.49450054e-05, 1)
Part565.Orientation = Vector3.new(0, -0.009999999776482582, 153)
Part565.Position = Vector3.new(31.61056900024414, 16.014480590820312, 71.57472229003906)
Part565.Rotation = Vector3.new(0, -0.009999999776482582, 153)
Part565.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part565.Size = Vector3.new(1.4991408586502075, 0.055523697286844254, 0.9439031481742859)
Part565.BottomSurface = Enum.SurfaceType.Smooth
Part565.BrickColor = BrickColor.new("Really black")
Part565.TopSurface = Enum.SurfaceType.Smooth
Part565.brickColor = BrickColor.new("Really black")
Part566.Parent = Model542
Part566.CFrame = CFrame.new(28.4570255, 15.7838306, 74.2167206, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part566.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part566.Position = Vector3.new(28.4570255279541, 15.783830642700195, 74.21672058105469)
Part566.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part566.Color = Color3.new(1, 0.690196, 0)
Part566.Size = Vector3.new(0.4499998688697815, 0.4868418574333191, 8.973690032958984)
Part566.BottomSurface = Enum.SurfaceType.Smooth
Part566.BrickColor = BrickColor.new("Deep orange")
Part566.TopSurface = Enum.SurfaceType.Smooth
Part566.brickColor = BrickColor.new("Deep orange")
Part567.Parent = Model542
Part567.CFrame = CFrame.new(18.8309898, 13.8504114, 73.7098694, 9.89999971e-05, 0, 1, 0, 1, 0, -1, 0, 9.89999971e-05)
Part567.Orientation = Vector3.new(0, 89.98999786376953, 0)
Part567.Position = Vector3.new(18.830989837646484, 13.850411415100098, 73.70986938476562)
Part567.Rotation = Vector3.new(0, 90, 0)
Part567.Size = Vector3.new(9, 6.71999979019165, 5.919999122619629)
Part567.BottomSurface = Enum.SurfaceType.Smooth
Part567.TopSurface = Enum.SurfaceType.Smooth
Part567.Shape = Enum.PartType.Cylinder
Part568.Parent = Model542
Part568.CFrame = CFrame.new(19.5108986, 19.7098198, 76.1886978, -0.984808028, -9.89999971e-05, -0.173647001, -0.173647001, 0, 0.984808028, -9.74959912e-05, 1, -1.71910524e-05)
Part568.Orientation = Vector3.new(-80, -90.01000213623047, -90)
Part568.Position = Vector3.new(19.51089859008789, 19.709819793701172, 76.1886978149414)
Part568.Rotation = Vector3.new(-90, -10, 179.99000549316406)
Part568.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part568.Size = Vector3.new(1.914670467376709, 0.34666702151298523, 0.25999993085861206)
Part568.BottomSurface = Enum.SurfaceType.Smooth
Part568.BrickColor = BrickColor.new("Fossil")
Part568.TopSurface = Enum.SurfaceType.Smooth
Part568.brickColor = BrickColor.new("Fossil")
Part568.Shape = Enum.PartType.Cylinder
Part569.Parent = Model542
Part569.CFrame = CFrame.new(23.9318657, 13.4654093, 75.7544479, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part569.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part569.Position = Vector3.new(23.931865692138672, 13.465409278869629, 75.75444793701172)
Part569.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part569.Color = Color3.new(1, 0.690196, 0)
Part569.Size = Vector3.new(3.2499992847442627, 2.549999952316284, 0.9000000953674316)
Part569.BottomSurface = Enum.SurfaceType.Smooth
Part569.BrickColor = BrickColor.new("Deep orange")
Part569.TopSurface = Enum.SurfaceType.Smooth
Part569.brickColor = BrickColor.new("Deep orange")
Part570.Parent = Model542
Part570.CFrame = CFrame.new(20.8775311, 17.5437202, 70.3634415, 0.173647955, 0.984807789, -9.89999971e-05, -0.984807789, 0.173647955, 0, 1.7191147e-05, 9.74959694e-05, 1)
Part570.Orientation = Vector3.new(0, -0.009999999776482582, -80)
Part570.Position = Vector3.new(20.877531051635742, 17.543720245361328, 70.36344146728516)
Part570.Rotation = Vector3.new(0, -0.009999999776482582, -80)
Part570.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part570.Size = Vector3.new(2.76466703414917, 0.34666702151298523, 0.25999993085861206)
Part570.BottomSurface = Enum.SurfaceType.Smooth
Part570.BrickColor = BrickColor.new("Fossil")
Part570.TopSurface = Enum.SurfaceType.Smooth
Part570.brickColor = BrickColor.new("Fossil")
Part570.Shape = Enum.PartType.Cylinder
Part571.Parent = Model542
Part571.CFrame = CFrame.new(21.4269905, 17.0212803, 73.7853546, -9.89999971e-05, 0.965925336, 0.2588211, 0, -0.2588211, 0.965925336, 1, 9.56266085e-05, 2.56232888e-05)
Part571.Orientation = Vector3.new(-75, 89.98999786376953, 180)
Part571.Position = Vector3.new(21.426990509033203, 17.02128028869629, 73.78535461425781)
Part571.Rotation = Vector3.new(-90, 15, -90.01000213623047)
Part571.Color = Color3.new(1, 0.690196, 0)
Part571.Size = Vector3.new(6.910476207733154, 0.05552372708916664, 0.16657127439975739)
Part571.BottomSurface = Enum.SurfaceType.Smooth
Part571.BrickColor = BrickColor.new("Deep orange")
Part571.TopSurface = Enum.SurfaceType.Smooth
Part571.brickColor = BrickColor.new("Deep orange")
Part572.Parent = Model542
Part572.CFrame = CFrame.new(18.6260014, 17.3154087, 73.7798462, -9.89999971e-05, 0, -1, 0, 1, 0, 1, 0, -9.89999971e-05)
Part572.Orientation = Vector3.new(0, -90.01000213623047, 0)
Part572.Position = Vector3.new(18.626001358032227, 17.31540870666504, 73.77984619140625)
Part572.Rotation = Vector3.new(0, -90, 0)
Part572.Color = Color3.new(1, 0.690196, 0)
Part572.Size = Vector3.new(7.500000476837158, 1.5499998331069946, 3.6500000953674316)
Part572.BottomSurface = Enum.SurfaceType.Smooth
Part572.BrickColor = BrickColor.new("Deep orange")
Part572.TopSurface = Enum.SurfaceType.Smooth
Part572.brickColor = BrickColor.new("Deep orange")
Part573.Parent = Model542
Part573.CFrame = CFrame.new(18.6062412, 17.5544891, 71.3398438, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part573.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part573.Position = Vector3.new(18.60624122619629, 17.554489135742188, 71.33984375)
Part573.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part573.Color = Color3.new(1, 0.690196, 0)
Part573.Size = Vector3.new(3.2900006771087646, 0.2600001394748688, 2)
Part573.BottomSurface = Enum.SurfaceType.Smooth
Part573.BrickColor = BrickColor.new("Deep orange")
Part573.TopSurface = Enum.SurfaceType.Smooth
Part573.brickColor = BrickColor.new("Deep orange")
Part574.Parent = Model542
Part574.CFrame = CFrame.new(31.6596146, 16.1106644, 71.1323013, -0.891006887, -0.453989953, -9.89999971e-05, 0.453989953, -0.891006887, 0, -8.82096792e-05, -4.49450054e-05, 1)
Part574.Orientation = Vector3.new(0, -0.009999999776482582, 153)
Part574.Position = Vector3.new(31.65961456298828, 16.11066436767578, 71.1323013305664)
Part574.Rotation = Vector3.new(0, -0.009999999776482582, 153)
Part574.Color = Color3.new(1, 0.690196, 0)
Part574.Size = Vector3.new(1.7212358713150024, 0.05552372708916664, 0.16657127439975739)
Part574.BottomSurface = Enum.SurfaceType.Smooth
Part574.BrickColor = BrickColor.new("Deep orange")
Part574.TopSurface = Enum.SurfaceType.Smooth
Part574.brickColor = BrickColor.new("Deep orange")
Part575.Parent = Model542
Part575.CFrame = CFrame.new(31.6599846, 16.1115913, 72.1299667, -0.891006887, -0.453989953, -9.89999971e-05, 0.453989953, -0.891006887, 0, -8.82096792e-05, -4.49450054e-05, 1)
Part575.Orientation = Vector3.new(0, -0.009999999776482582, 153)
Part575.Position = Vector3.new(31.659984588623047, 16.111591339111328, 72.12996673583984)
Part575.Rotation = Vector3.new(0, -0.009999999776482582, 153)
Part575.Color = Color3.new(1, 0.690196, 0)
Part575.Size = Vector3.new(1.7212358713150024, 0.05552372708916664, 0.16657127439975739)
Part575.BottomSurface = Enum.SurfaceType.Smooth
Part575.BrickColor = BrickColor.new("Deep orange")
Part575.TopSurface = Enum.SurfaceType.Smooth
Part575.brickColor = BrickColor.new("Deep orange")
Part576.Parent = Model542
Part576.CFrame = CFrame.new(23.9142933, 13.497406, 71.5144577, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part576.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part576.Position = Vector3.new(23.91429328918457, 13.497406005859375, 71.51445770263672)
Part576.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part576.Color = Color3.new(1, 0.690196, 0)
Part576.Size = Vector3.new(2.8149986267089844, 2.0349998474121094, 0.8600000739097595)
Part576.BottomSurface = Enum.SurfaceType.Smooth
Part576.BrickColor = BrickColor.new("Deep orange")
Part576.TopSurface = Enum.SurfaceType.Smooth
Part576.brickColor = BrickColor.new("Deep orange")
Part577.Parent = Model542
Part577.CFrame = CFrame.new(18.2052746, 18.8097153, 71.4176102, -0.99619478, -0.0871549696, 9.89999971e-05, -0.087154977, 0.99619478, 0, -9.86232772e-05, -8.62834167e-06, -1)
Part577.Orientation = Vector3.new(0, 179.99000549316406, -5)
Part577.Position = Vector3.new(18.20527458190918, 18.809715270996094, 71.41761016845703)
Part577.Rotation = Vector3.new(-180, 0.009999999776482582, 175)
Part577.Size = Vector3.new(0.25684136152267456, 0.8186820149421692, 0.6421034932136536)
Part577.Material = Enum.Material.SmoothPlastic
Part577.FormFactor = Enum.FormFactor.Custom
Part577.formFactor = Enum.FormFactor.Custom
CylinderMesh578.Parent = Part577
Part579.Parent = Model542
Part579.CFrame = CFrame.new(18.6409874, 17.5544891, 76.3498459, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part579.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part579.Position = Vector3.new(18.640987396240234, 17.554489135742188, 76.34984588623047)
Part579.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part579.Color = Color3.new(1, 0.690196, 0)
Part579.Size = Vector3.new(3.2900006771087646, 0.2600001394748688, 2)
Part579.BottomSurface = Enum.SurfaceType.Smooth
Part579.BrickColor = BrickColor.new("Deep orange")
Part579.TopSurface = Enum.SurfaceType.Smooth
Part579.brickColor = BrickColor.new("Deep orange")
Part580.Parent = Model542
Part580.CFrame = CFrame.new(27.2273293, 16.323307, 71.1798172, -0.500000238, -0.866025388, -9.89999971e-05, 0.866025388, -0.500000238, 0, -4.95000204e-05, -8.57365085e-05, 1)
Part580.Orientation = Vector3.new(0, -0.009999999776482582, 120)
Part580.Position = Vector3.new(27.22732925415039, 16.323307037353516, 71.17981719970703)
Part580.Rotation = Vector3.new(0, -0.009999999776482582, 120)
Part580.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part580.Size = Vector3.new(1.0749998092651367, 0.14999999105930328, 0.14999984204769135)
Part580.BottomSurface = Enum.SurfaceType.Smooth
Part580.BrickColor = BrickColor.new("Institutional white")
Part580.TopSurface = Enum.SurfaceType.Smooth
Part580.brickColor = BrickColor.new("Institutional white")
Part580.Shape = Enum.PartType.Cylinder
Part581.Parent = Model542
Part581.CFrame = CFrame.new(18.1802807, 17.54809, 73.7052841, -0.173647955, -9.89999971e-05, 0.984807789, 0.984807789, 0, 0.173647955, -1.7191147e-05, 1, 9.74959694e-05)
Part581.Orientation = Vector3.new(-10, 89.98999786376953, 90)
Part581.Position = Vector3.new(18.180280685424805, 17.5480899810791, 73.70528411865234)
Part581.Rotation = Vector3.new(-89.97000122070312, 80, 179.97000122070312)
Part581.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part581.Size = Vector3.new(1.7646698951721191, 0.34666702151298523, 0.25999993085861206)
Part581.BottomSurface = Enum.SurfaceType.Smooth
Part581.BrickColor = BrickColor.new("Fossil")
Part581.TopSurface = Enum.SurfaceType.Smooth
Part581.brickColor = BrickColor.new("Fossil")
Part581.Shape = Enum.PartType.Cylinder
Part582.Parent = Model542
Part582.CFrame = CFrame.new(17.9961548, 18.7723007, 73.7193222, -0.99619478, -0.0871549696, 9.89999971e-05, -0.087154977, 0.99619478, 0, -9.86232772e-05, -8.62834167e-06, -1)
Part582.Orientation = Vector3.new(0, 179.99000549316406, -5)
Part582.Position = Vector3.new(17.99615478515625, 18.772300720214844, 73.71932220458984)
Part582.Rotation = Vector3.new(-180, 0.009999999776482582, 175)
Part582.Size = Vector3.new(0.25684136152267456, 0.8186820149421692, 0.6421034932136536)
Part582.Material = Enum.Material.SmoothPlastic
Part582.FormFactor = Enum.FormFactor.Custom
Part582.formFactor = Enum.FormFactor.Custom
CylinderMesh583.Parent = Part582
Part584.Parent = Model542
Part584.CFrame = CFrame.new(27.3072395, 16.302906, 72.0798111, -0.342019916, -0.939692736, -9.89999971e-05, 0.939692736, -0.342019886, 0, -3.38599712e-05, -9.30295791e-05, 1)
Part584.Orientation = Vector3.new(0, -0.009999999776482582, 110)
Part584.Position = Vector3.new(27.307239532470703, 16.302906036376953, 72.0798110961914)
Part584.Rotation = Vector3.new(0, -0.009999999776482582, 110)
Part584.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part584.Size = Vector3.new(1.0749998092651367, 0.14999999105930328, 0.14999984204769135)
Part584.BottomSurface = Enum.SurfaceType.Smooth
Part584.BrickColor = BrickColor.new("Institutional white")
Part584.TopSurface = Enum.SurfaceType.Smooth
Part584.brickColor = BrickColor.new("Institutional white")
Part584.Shape = Enum.PartType.Cylinder
Part585.Parent = Model542
Part585.CFrame = CFrame.new(21.4915295, 16.7062874, 77.3051376, 0, -1, -9.89999971e-05, 1, 0, 0, 0, -9.89999971e-05, 1)
Part585.Orientation = Vector3.new(0, -0.009999999776482582, 90)
Part585.Position = Vector3.new(21.49152946472168, 16.706287384033203, 77.30513763427734)
Part585.Rotation = Vector3.new(0, -0.009999999776482582, 90)
Part585.Color = Color3.new(1, 0.690196, 0)
Part585.Size = Vector3.new(1.3000017404556274, 0.19999992847442627, 0.19999992847442627)
Part585.BottomSurface = Enum.SurfaceType.Smooth
Part585.BrickColor = BrickColor.new("Deep orange")
Part585.TopSurface = Enum.SurfaceType.Smooth
Part585.brickColor = BrickColor.new("Deep orange")
Part586.Parent = Model542
Part586.CFrame = CFrame.new(20.4803753, 19.8673153, 73.7991867, -9.89999971e-05, 0.984807789, -0.173647955, 0, 0.173647955, 0.984807789, 1, 9.74959694e-05, -1.7191147e-05)
Part586.Orientation = Vector3.new(-80, -90.01000213623047, 0)
Part586.Position = Vector3.new(20.480375289916992, 19.8673152923584, 73.79918670654297)
Part586.Rotation = Vector3.new(-90, -10, -90.01000213623047)
Part586.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part586.Size = Vector3.new(4.784668445587158, 0.34666702151298523, 0.25999993085861206)
Part586.BottomSurface = Enum.SurfaceType.Smooth
Part586.BrickColor = BrickColor.new("Fossil")
Part586.TopSurface = Enum.SurfaceType.Smooth
Part586.brickColor = BrickColor.new("Fossil")
Part586.Shape = Enum.PartType.Cylinder
Part587.Parent = Model542
Part587.CFrame = CFrame.new(29.7320042, 15.6404686, 74.3300323, 9.89999971e-05, 0, 1, 0, 1, 0, -1, 0, 9.89999971e-05)
Part587.Orientation = Vector3.new(0, 89.98999786376953, 0)
Part587.Position = Vector3.new(29.732004165649414, 15.64046859741211, 74.33003234863281)
Part587.Rotation = Vector3.new(0, 90, 0)
Part587.Color = Color3.new(1, 0.690196, 0)
Part587.Size = Vector3.new(9.500000953674316, 0.24999992549419403, 0.5000000596046448)
Part587.BottomSurface = Enum.SurfaceType.Smooth
Part587.BrickColor = BrickColor.new("Deep orange")
Part587.TopSurface = Enum.SurfaceType.Smooth
Part587.brickColor = BrickColor.new("Deep orange")
Part587.Shape = Enum.PartType.Cylinder
Part588.Parent = Model542
Part588.CFrame = CFrame.new(18.765995, 14.0504141, 73.6798706, -9.89999971e-05, 0, -1, 0, 1, 0, 1, 0, -9.89999971e-05)
Part588.Orientation = Vector3.new(0, -90.01000213623047, 0)
Part588.Position = Vector3.new(18.765995025634766, 14.050414085388184, 73.67987060546875)
Part588.Rotation = Vector3.new(0, -90, 0)
Part588.Color = Color3.new(1, 0.690196, 0)
Part588.Size = Vector3.new(10.199999809265137, 2.6999998092651367, 1.5700002908706665)
Part588.BottomSurface = Enum.SurfaceType.Smooth
Part588.BrickColor = BrickColor.new("Deep orange")
Part588.TopSurface = Enum.SurfaceType.Smooth
Part588.brickColor = BrickColor.new("Deep orange")
Part588.Shape = Enum.PartType.Cylinder
Part589.Parent = Model542
Part589.CFrame = CFrame.new(20.9121304, 17.4771595, 77.2377472, 0.173647955, 0.984807789, -9.89999971e-05, -0.984807789, 0.173647955, 0, 1.7191147e-05, 9.74959694e-05, 1)
Part589.Orientation = Vector3.new(0, -0.009999999776482582, -80)
Part589.Position = Vector3.new(20.91213035583496, 17.47715950012207, 77.23774719238281)
Part589.Rotation = Vector3.new(0, -0.009999999776482582, -80)
Part589.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part589.Size = Vector3.new(2.76466703414917, 0.34666702151298523, 0.25999993085861206)
Part589.BottomSurface = Enum.SurfaceType.Smooth
Part589.BrickColor = BrickColor.new("Fossil")
Part589.TopSurface = Enum.SurfaceType.Smooth
Part589.brickColor = BrickColor.new("Fossil")
Part589.Shape = Enum.PartType.Cylinder
Part590.Parent = Model542
Part590.CFrame = CFrame.new(19.6192818, 19.7419319, 71.4110489, -0.984808028, -9.89999971e-05, -0.173647001, -0.173647001, 0, 0.984808028, -9.74959912e-05, 1, -1.71910524e-05)
Part590.Orientation = Vector3.new(-80, -90.01000213623047, -90)
Part590.Position = Vector3.new(19.619281768798828, 19.741931915283203, 71.41104888916016)
Part590.Rotation = Vector3.new(-90, -10, 179.99000549316406)
Part590.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part590.Size = Vector3.new(1.7646698951721191, 0.34666702151298523, 0.25999993085861206)
Part590.BottomSurface = Enum.SurfaceType.Smooth
Part590.BrickColor = BrickColor.new("Fossil")
Part590.TopSurface = Enum.SurfaceType.Smooth
Part590.brickColor = BrickColor.new("Fossil")
Part590.Shape = Enum.PartType.Cylinder
Part591.Parent = Model542
Part591.CFrame = CFrame.new(18.4168797, 16.0703773, 78.9744797, 0.984807491, 0.17364791, 9.89999971e-05, 0.17364791, -0.984807491, 0, 9.74959403e-05, 1.71911433e-05, -1)
Part591.Orientation = Vector3.new(0, 179.99000549316406, 170)
Part591.Position = Vector3.new(18.416879653930664, 16.070377349853516, 78.97447967529297)
Part591.Rotation = Vector3.new(-180, 0.009999999776482582, -10)
Part591.Color = Color3.new(1, 0.690196, 0)
Part591.Size = Vector3.new(1.9000002145767212, 2.350001573562622, 0.3499998152256012)
Part591.BottomSurface = Enum.SurfaceType.Smooth
Part591.BrickColor = BrickColor.new("Deep orange")
Part591.TopSurface = Enum.SurfaceType.Smooth
Part591.brickColor = BrickColor.new("Deep orange")
Part592.Parent = Model542
Part592.CFrame = CFrame.new(20.425993, 14.1854057, 73.7800369, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part592.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part592.Position = Vector3.new(20.425992965698242, 14.185405731201172, 73.78003692626953)
Part592.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part592.Color = Color3.new(1, 0.690196, 0)
Part592.Size = Vector3.new(3.75, 2.75, 7.5)
Part592.BottomSurface = Enum.SurfaceType.Smooth
Part592.BrickColor = BrickColor.new("Deep orange")
Part592.TopSurface = Enum.SurfaceType.Smooth
Part592.brickColor = BrickColor.new("Deep orange")
Part593.Parent = Model542
Part593.CFrame = CFrame.new(19.6340828, 19.7324314, 73.7219086, -0.984808028, -9.89999971e-05, -0.173647001, -0.173647001, 0, 0.984808028, -9.74959912e-05, 1, -1.71910524e-05)
Part593.Orientation = Vector3.new(-80, -90.01000213623047, -90)
Part593.Position = Vector3.new(19.634082794189453, 19.732431411743164, 73.72190856933594)
Part593.Rotation = Vector3.new(-90, -10, 179.99000549316406)
Part593.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part593.Size = Vector3.new(1.8446696996688843, 0.34666702151298523, 0.25999993085861206)
Part593.BottomSurface = Enum.SurfaceType.Smooth
Part593.BrickColor = BrickColor.new("Fossil")
Part593.TopSurface = Enum.SurfaceType.Smooth
Part593.brickColor = BrickColor.new("Fossil")
Part593.Shape = Enum.PartType.Cylinder
Part594.Parent = Model542
Part594.CFrame = CFrame.new(23.319582, 14.3904114, 73.7293777, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part594.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part594.Position = Vector3.new(23.319581985473633, 14.390411376953125, 73.72937774658203)
Part594.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part594.Color = Color3.new(1, 0.690196, 0)
Part594.Size = Vector3.new(2.0749990940093994, 1.2999999523162842, 2.7500007152557373)
Part594.BottomSurface = Enum.SurfaceType.Smooth
Part594.BrickColor = BrickColor.new("Deep orange")
Part594.TopSurface = Enum.SurfaceType.Smooth
Part594.brickColor = BrickColor.new("Deep orange")
Part595.Parent = Model542
Part595.CFrame = CFrame.new(21.4195728, 16.3395748, 73.7748947, -9.89999971e-05, 0.965925336, 0.2588211, 0, -0.2588211, 0.965925336, 1, 9.56266085e-05, 2.56232888e-05)
Part595.Orientation = Vector3.new(-75, 89.98999786376953, 180)
Part595.Position = Vector3.new(21.419572830200195, 16.339574813842773, 73.77489471435547)
Part595.Rotation = Vector3.new(-90, 15, -90.01000213623047)
Part595.Color = Color3.new(1, 0.690196, 0)
Part595.Size = Vector3.new(6.910476207733154, 0.05552372708916664, 0.16657127439975739)
Part595.BottomSurface = Enum.SurfaceType.Smooth
Part595.BrickColor = BrickColor.new("Deep orange")
Part595.TopSurface = Enum.SurfaceType.Smooth
Part595.brickColor = BrickColor.new("Deep orange")
Part596.Parent = Model542
Part596.CFrame = CFrame.new(32.1368942, 15.8244476, 71.6025391, -9.89789114e-05, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -2.56991952e-05, 9.55844298e-05)
Part596.Orientation = Vector3.new(15, 89.98999786376953, -180)
Part596.Position = Vector3.new(32.13689422607422, 15.824447631835938, 71.6025390625)
Part596.Rotation = Vector3.new(89.9800033569336, 75, 90.0199966430664)
Part596.Color = Color3.new(1, 0.690196, 0)
Part596.Size = Vector3.new(1.1104754209518433, 0.05552372708916664, 0.16657127439975739)
Part596.BottomSurface = Enum.SurfaceType.Smooth
Part596.BrickColor = BrickColor.new("Deep orange")
Part596.TopSurface = Enum.SurfaceType.Smooth
Part596.brickColor = BrickColor.new("Deep orange")
Part597.Parent = Model542
Part597.CFrame = CFrame.new(21.4252567, 16.5749226, 73.7748947, -9.89999971e-05, 0.965925336, 0.2588211, 0, -0.2588211, 0.965925336, 1, 9.56266085e-05, 2.56232888e-05)
Part597.Orientation = Vector3.new(-75, 89.98999786376953, 180)
Part597.Position = Vector3.new(21.425256729125977, 16.574922561645508, 73.77489471435547)
Part597.Rotation = Vector3.new(-90, 15, -90.01000213623047)
Part597.Color = Color3.new(1, 0.690196, 0)
Part597.Size = Vector3.new(6.910476207733154, 0.05552372708916664, 0.16657127439975739)
Part597.BottomSurface = Enum.SurfaceType.Smooth
Part597.BrickColor = BrickColor.new("Deep orange")
Part597.TopSurface = Enum.SurfaceType.Smooth
Part597.brickColor = BrickColor.new("Deep orange")
Part598.Parent = Model542
Part598.CFrame = CFrame.new(27.6820259, 13.0404234, 74.3298264, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part598.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part598.Position = Vector3.new(27.682025909423828, 13.040423393249512, 74.32982635498047)
Part598.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part598.Color = Color3.new(1, 0.690196, 0)
Part598.Size = Vector3.new(0.20000001788139343, 1, 9.099997520446777)
Part598.BottomSurface = Enum.SurfaceType.Smooth
Part598.BrickColor = BrickColor.new("Deep orange")
Part598.TopSurface = Enum.SurfaceType.Smooth
Part598.brickColor = BrickColor.new("Deep orange")
Part599.Parent = Model542
Part599.CFrame = CFrame.new(28.4815674, 13.0404253, 78.8299026, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part599.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part599.Position = Vector3.new(28.4815673828125, 13.040425300598145, 78.82990264892578)
Part599.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part599.Color = Color3.new(1, 0.690196, 0)
Part599.Size = Vector3.new(1.8000003099441528, 1, 0.09999986737966537)
Part599.BottomSurface = Enum.SurfaceType.Smooth
Part599.BrickColor = BrickColor.new("Deep orange")
Part599.TopSurface = Enum.SurfaceType.Smooth
Part599.brickColor = BrickColor.new("Deep orange")
Part600.Parent = Model542
Part600.CFrame = CFrame.new(30.0316467, 15.0654211, 78.0300674, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part600.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part600.Position = Vector3.new(30.031646728515625, 15.065421104431152, 78.03006744384766)
Part600.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part600.Color = Color3.new(1, 0.690196, 0)
Part600.Size = Vector3.new(1.100000262260437, 1.5499995946884155, 2)
Part600.BottomSurface = Enum.SurfaceType.Smooth
Part600.BrickColor = BrickColor.new("Deep orange")
Part600.TopSurface = Enum.SurfaceType.Smooth
Part600.brickColor = BrickColor.new("Deep orange")
Part601.Parent = Model542
Part601.CFrame = CFrame.new(27.4317207, 13.54041, 77.2798157, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part601.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part601.Position = Vector3.new(27.431720733642578, 13.540410041809082, 77.27981567382812)
Part601.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part601.Color = Color3.new(1, 0.690196, 0)
Part601.Size = Vector3.new(0.800000011920929, 2.299999952316284, 2)
Part601.BottomSurface = Enum.SurfaceType.Smooth
Part601.BrickColor = BrickColor.new("Deep orange")
Part601.TopSurface = Enum.SurfaceType.Smooth
Part601.brickColor = BrickColor.new("Deep orange")
Part602.Parent = Model542
Part602.CFrame = CFrame.new(21.4918289, 17.2562809, 73.80513, -9.89999971e-05, -1, 0, 0, 0, -1, 1, -9.89999971e-05, 0)
Part602.Orientation = Vector3.new(90, -90.01000213623047, 0)
Part602.Position = Vector3.new(21.49182891845703, 17.25628089904785, 73.80513000488281)
Part602.Rotation = Vector3.new(90, 0, 90.01000213623047)
Part602.Color = Color3.new(1, 0.690196, 0)
Part602.Size = Vector3.new(6.850000858306885, 0.19999992847442627, 0.19999992847442627)
Part602.BottomSurface = Enum.SurfaceType.Smooth
Part602.BrickColor = BrickColor.new("Deep orange")
Part602.TopSurface = Enum.SurfaceType.Smooth
Part602.brickColor = BrickColor.new("Deep orange")
Part603.Parent = Model542
Part603.CFrame = CFrame.new(28.4824753, 13.0404205, 69.7298965, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part603.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part603.Position = Vector3.new(28.48247528076172, 13.040420532226562, 69.72989654541016)
Part603.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part603.Color = Color3.new(1, 0.690196, 0)
Part603.Size = Vector3.new(1.8000003099441528, 1, 0.09999986737966537)
Part603.BottomSurface = Enum.SurfaceType.Smooth
Part603.BrickColor = BrickColor.new("Deep orange")
Part603.TopSurface = Enum.SurfaceType.Smooth
Part603.brickColor = BrickColor.new("Deep orange")
Part604.Parent = Model542
Part604.CFrame = CFrame.new(27.5317211, 14.990407, 77.2798157, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part604.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part604.Position = Vector3.new(27.531721115112305, 14.99040699005127, 77.27981567382812)
Part604.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part604.Color = Color3.new(1, 0.690196, 0)
Part604.Size = Vector3.new(0.6000001430511475, 1, 2)
Part604.BottomSurface = Enum.SurfaceType.Smooth
Part604.BrickColor = BrickColor.new("Deep orange")
Part604.TopSurface = Enum.SurfaceType.Smooth
Part604.brickColor = BrickColor.new("Deep orange")
Part605.Parent = Model542
Part605.CFrame = CFrame.new(21.1918106, 16.7062836, 73.7801132, -9.89999971e-05, -1, 0, 0, 0, -1, 1, -9.89999971e-05, 0)
Part605.Orientation = Vector3.new(90, -90.01000213623047, 0)
Part605.Position = Vector3.new(21.191810607910156, 16.706283569335938, 73.78011322021484)
Part605.Rotation = Vector3.new(90, 0, 90.01000213623047)
Part605.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part605.Size = Vector3.new(7.200000286102295, 0.2999999523162842, 1.2000001668930054)
Part605.BottomSurface = Enum.SurfaceType.Smooth
Part605.BrickColor = BrickColor.new("Really black")
Part605.TopSurface = Enum.SurfaceType.Smooth
Part605.brickColor = BrickColor.new("Really black")
Part606.Parent = Model542
Part606.CFrame = CFrame.new(23.9072609, 13.4654074, 71.7294312, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part606.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part606.Position = Vector3.new(23.90726089477539, 13.465407371520996, 71.72943115234375)
Part606.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part606.Color = Color3.new(1, 0.690196, 0)
Part606.Size = Vector3.new(3.1999988555908203, 2.549999952316284, 0.9000000953674316)
Part606.BottomSurface = Enum.SurfaceType.Smooth
Part606.BrickColor = BrickColor.new("Deep orange")
Part606.TopSurface = Enum.SurfaceType.Smooth
Part606.brickColor = BrickColor.new("Deep orange")
Part607.Parent = Model542
Part607.CFrame = CFrame.new(21.4084644, 16.789566, 73.7748871, -9.89999971e-05, 0.965925336, 0.2588211, 0, -0.2588211, 0.965925336, 1, 9.56266085e-05, 2.56232888e-05)
Part607.Orientation = Vector3.new(-75, 89.98999786376953, 180)
Part607.Position = Vector3.new(21.408464431762695, 16.789566040039062, 73.77488708496094)
Part607.Rotation = Vector3.new(-90, 15, -90.01000213623047)
Part607.Color = Color3.new(1, 0.690196, 0)
Part607.Size = Vector3.new(6.910476207733154, 0.05552372708916664, 0.16657127439975739)
Part607.BottomSurface = Enum.SurfaceType.Smooth
Part607.BrickColor = BrickColor.new("Deep orange")
Part607.TopSurface = Enum.SurfaceType.Smooth
Part607.brickColor = BrickColor.new("Deep orange")
Part608.Parent = Model542
Part608.CFrame = CFrame.new(19.0759869, 16.3154106, 73.7799225, -9.89999971e-05, 0, -1, 0, 1, 0, 1, 0, -9.89999971e-05)
Part608.Orientation = Vector3.new(0, -90.01000213623047, 0)
Part608.Position = Vector3.new(19.075986862182617, 16.315410614013672, 73.77992248535156)
Part608.Rotation = Vector3.new(0, -90, 0)
Part608.Color = Color3.new(1, 0.690196, 0)
Part608.Size = Vector3.new(7.499999523162842, 2.049999952316284, 4.549999713897705)
Part608.BottomSurface = Enum.SurfaceType.Smooth
Part608.BrickColor = BrickColor.new("Deep orange")
Part608.TopSurface = Enum.SurfaceType.Smooth
Part608.brickColor = BrickColor.new("Deep orange")
Part609.Parent = Model542
Part609.CFrame = CFrame.new(22.7694702, 15.3404112, 74.8668289, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part609.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part609.Position = Vector3.new(22.76947021484375, 15.340411186218262, 74.86682891845703)
Part609.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part609.Color = Color3.new(1, 0.690196, 0)
Part609.Size = Vector3.new(0.9750000238418579, 0.6000000238418579, 0.47499990463256836)
Part609.BottomSurface = Enum.SurfaceType.Smooth
Part609.BrickColor = BrickColor.new("Deep orange")
Part609.TopSurface = Enum.SurfaceType.Smooth
Part609.brickColor = BrickColor.new("Deep orange")
Part610.Parent = Model542
Part610.CFrame = CFrame.new(30.507019, 14.9404526, 74.2801056, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part610.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part610.Position = Vector3.new(30.50701904296875, 14.940452575683594, 74.28010559082031)
Part610.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part610.Color = Color3.new(1, 0.690196, 0)
Part610.Size = Vector3.new(2.2884812355041504, 1.6554970741271973, 9.299997329711914)
Part610.BottomSurface = Enum.SurfaceType.Smooth
Part610.BrickColor = BrickColor.new("Deep orange")
Part610.TopSurface = Enum.SurfaceType.Smooth
Part610.brickColor = BrickColor.new("Deep orange")
Part611.Parent = Model542
Part611.CFrame = CFrame.new(31.543211, 16.1269188, 71.6580048, -9.89789114e-05, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -2.56991952e-05, 9.55844298e-05)
Part611.Orientation = Vector3.new(15, 89.98999786376953, -180)
Part611.Position = Vector3.new(31.543210983276367, 16.12691879272461, 71.65800476074219)
Part611.Rotation = Vector3.new(89.9800033569336, 75, 90.0199966430664)
Part611.Color = Color3.new(1, 0.690196, 0)
Part611.Size = Vector3.new(1.1104754209518433, 0.05552372708916664, 0.16657127439975739)
Part611.BottomSurface = Enum.SurfaceType.Smooth
Part611.BrickColor = BrickColor.new("Deep orange")
Part611.TopSurface = Enum.SurfaceType.Smooth
Part611.brickColor = BrickColor.new("Deep orange")
Part612.Parent = Model542
Part612.CFrame = CFrame.new(30.949564, 16.4294281, 71.6024246, -9.89999971e-05, -0.453989148, 0.891007304, 0, -0.891007304, -0.453989148, 1, -4.49449253e-05, 8.82097229e-05)
Part612.Orientation = Vector3.new(27, 89.98999786376953, 180)
Part612.Position = Vector3.new(30.94956398010254, 16.429428100585938, 71.60242462158203)
Part612.Rotation = Vector3.new(89.98999786376953, 63, 90.01000213623047)
Part612.Color = Color3.new(1, 0.690196, 0)
Part612.Size = Vector3.new(1.1104754209518433, 0.05552372708916664, 0.16657127439975739)
Part612.BottomSurface = Enum.SurfaceType.Smooth
Part612.BrickColor = BrickColor.new("Deep orange")
Part612.TopSurface = Enum.SurfaceType.Smooth
Part612.brickColor = BrickColor.new("Deep orange")
Part613.Parent = Model542
Part613.CFrame = CFrame.new(30.9706154, 16.4653339, 71.630188, -9.89999971e-05, -0.453989148, 0.891007304, 0, -0.891007304, -0.453989148, 1, -4.49449253e-05, 8.82097229e-05)
Part613.Orientation = Vector3.new(27, 89.98999786376953, 180)
Part613.Position = Vector3.new(30.97061538696289, 16.465333938598633, 71.63018798828125)
Part613.Rotation = Vector3.new(89.98999786376953, 63, 90.01000213623047)
Part613.Color = Color3.new(1, 0.690196, 0)
Part613.Size = Vector3.new(1.1659988164901733, 0.05552372708916664, 0.16657127439975739)
Part613.BottomSurface = Enum.SurfaceType.Smooth
Part613.BrickColor = BrickColor.new("Deep orange")
Part613.TopSurface = Enum.SurfaceType.Smooth
Part613.brickColor = BrickColor.new("Deep orange")
Part614.Parent = Model542
Part614.CFrame = CFrame.new(29.1570187, 16.1404076, 74.2799759, -9.89999971e-05, 0, -1, 0, 1, 0, 1, 0, -9.89999971e-05)
Part614.Orientation = Vector3.new(0, -90.01000213623047, 0)
Part614.Position = Vector3.new(29.157018661499023, 16.14040756225586, 74.27997589111328)
Part614.Rotation = Vector3.new(0, -90, 0)
Part614.Color = Color3.new(1, 0.690196, 0)
Part614.Size = Vector3.new(8, 1, 2.6499998569488525)
Part614.BottomSurface = Enum.SurfaceType.Smooth
Part614.BrickColor = BrickColor.new("Deep orange")
Part614.TopSurface = Enum.SurfaceType.Smooth
Part614.brickColor = BrickColor.new("Deep orange")
Part615.Parent = Model542
Part615.CFrame = CFrame.new(19.7009926, 17.5654259, 73.7549438, 9.89999971e-05, 0, 1, 0, 1, 0, -1, 0, 9.89999971e-05)
Part615.Orientation = Vector3.new(0, 89.98999786376953, 0)
Part615.Position = Vector3.new(19.700992584228516, 17.565425872802734, 73.75494384765625)
Part615.Rotation = Vector3.new(0, 90, 0)
Part615.Color = Color3.new(1, 0.690196, 0)
Part615.Size = Vector3.new(8.349998474121094, 0.550000011920929, 0.3999999463558197)
Part615.BottomSurface = Enum.SurfaceType.Smooth
Part615.BrickColor = BrickColor.new("Deep orange")
Part615.TopSurface = Enum.SurfaceType.Smooth
Part615.brickColor = BrickColor.new("Deep orange")
Part615.Shape = Enum.PartType.Cylinder
Part616.Parent = Model542
Part616.CFrame = CFrame.new(31.6422176, 16.076519, 71.1305313, -0.891006887, -0.453989953, -9.89999971e-05, 0.453989953, -0.891006887, 0, -8.82096792e-05, -4.49450054e-05, 1)
Part616.Orientation = Vector3.new(0, -0.009999999776482582, 153)
Part616.Position = Vector3.new(31.6422176361084, 16.076519012451172, 71.13053131103516)
Part616.Rotation = Vector3.new(0, -0.009999999776482582, 153)
Part616.Color = Color3.new(1, 0.690196, 0)
Part616.Size = Vector3.new(1.7212361097335815, 0.05552372708916664, 0.16657127439975739)
Part616.BottomSurface = Enum.SurfaceType.Smooth
Part616.BrickColor = BrickColor.new("Deep orange")
Part616.TopSurface = Enum.SurfaceType.Smooth
Part616.brickColor = BrickColor.new("Deep orange")
Part617.Parent = Model542
Part617.CFrame = CFrame.new(30.0569553, 15.8904161, 74.2800293, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part617.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part617.Position = Vector3.new(30.056955337524414, 15.890416145324707, 74.280029296875)
Part617.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part617.Color = Color3.new(1, 0.690196, 0)
Part617.Size = Vector3.new(1.416669249534607, 0.8952382206916809, 9.30000114440918)
Part617.BottomSurface = Enum.SurfaceType.Smooth
Part617.BrickColor = BrickColor.new("Deep orange")
Part617.TopSurface = Enum.SurfaceType.Smooth
Part617.brickColor = BrickColor.new("Deep orange")
Part618.Parent = Model542
Part618.CFrame = CFrame.new(22.5448856, 15.9011364, 73.7543182, 0.173647955, 0.984807789, -9.89999971e-05, -0.984807789, 0.173647955, 0, 1.7191147e-05, 9.74959694e-05, 1)
Part618.Orientation = Vector3.new(0, -0.009999999776482582, -80)
Part618.Position = Vector3.new(22.544885635375977, 15.90113639831543, 73.75431823730469)
Part618.Rotation = Vector3.new(0, -0.009999999776482582, -80)
Part618.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part618.Size = Vector3.new(3.0249991416931152, 0.3749999701976776, 1.4500001668930054)
Part618.BottomSurface = Enum.SurfaceType.Smooth
Part618.BrickColor = BrickColor.new("Really black")
Part618.TopSurface = Enum.SurfaceType.Smooth
Part618.brickColor = BrickColor.new("Really black")
Part619.Parent = Model542
Part619.CFrame = CFrame.new(30.1570187, 14.0154114, 74.2800751, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part619.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part619.Position = Vector3.new(30.157018661499023, 14.015411376953125, 74.28007507324219)
Part619.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part619.Color = Color3.new(1, 0.690196, 0)
Part619.Size = Vector3.new(4.650000095367432, 3.25, 8)
Part619.BottomSurface = Enum.SurfaceType.Smooth
Part619.BrickColor = BrickColor.new("Deep orange")
Part619.TopSurface = Enum.SurfaceType.Smooth
Part619.brickColor = BrickColor.new("Deep orange")
Part620.Parent = Model542
Part620.CFrame = CFrame.new(29.9820194, 13.04041, 74.2800598, 9.89999971e-05, 0, 1, 0, 1, 0, -1, 0, 9.89999971e-05)
Part620.Orientation = Vector3.new(0, 89.98999786376953, 0)
Part620.Position = Vector3.new(29.982019424438477, 13.040410041809082, 74.28005981445312)
Part620.Rotation = Vector3.new(0, 90, 0)
Part620.Color = Color3.new(1, 0.690196, 0)
Part620.Size = Vector3.new(9.39999771118164, 0.8867924213409424, 0.8867924213409424)
Part620.BottomSurface = Enum.SurfaceType.Smooth
Part620.BrickColor = BrickColor.new("Deep orange")
Part620.TopSurface = Enum.SurfaceType.Smooth
Part620.brickColor = BrickColor.new("Deep orange")
Part620.Shape = Enum.PartType.Cylinder
Part621.Parent = Model542
Part621.CFrame = CFrame.new(27.2821217, 14.0904112, 73.279808, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part621.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part621.Position = Vector3.new(27.282121658325195, 14.090411186218262, 73.2798080444336)
Part621.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part621.Color = Color3.new(1, 0.690196, 0)
Part621.Size = Vector3.new(1.100000023841858, 3.399998903274536, 6.000000476837158)
Part621.BottomSurface = Enum.SurfaceType.Smooth
Part621.BrickColor = BrickColor.new("Deep orange")
Part621.TopSurface = Enum.SurfaceType.Smooth
Part621.brickColor = BrickColor.new("Deep orange")
Part622.Parent = Model542
Part622.CFrame = CFrame.new(31.147419, 16.3285389, 71.6024399, -9.89789114e-05, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -2.56991952e-05, 9.55844298e-05)
Part622.Orientation = Vector3.new(15, 89.98999786376953, -180)
Part622.Position = Vector3.new(31.147418975830078, 16.32853889465332, 71.6024398803711)
Part622.Rotation = Vector3.new(89.9800033569336, 75, 90.0199966430664)
Part622.Color = Color3.new(1, 0.690196, 0)
Part622.Size = Vector3.new(1.1104754209518433, 0.05552372708916664, 0.16657127439975739)
Part622.BottomSurface = Enum.SurfaceType.Smooth
Part622.BrickColor = BrickColor.new("Deep orange")
Part622.TopSurface = Enum.SurfaceType.Smooth
Part622.brickColor = BrickColor.new("Deep orange")
Part623.Parent = Model542
Part623.CFrame = CFrame.new(27.0833435, 16.8968048, 72.0797958, -0.342019916, -0.939692736, -9.89999971e-05, 0.939692736, -0.342019886, 0, -3.38599712e-05, -9.30295791e-05, 1)
Part623.Orientation = Vector3.new(0, -0.009999999776482582, 110)
Part623.Position = Vector3.new(27.083343505859375, 16.896804809570312, 72.07979583740234)
Part623.Rotation = Vector3.new(0, -0.009999999776482582, 110)
Part623.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part623.Size = Vector3.new(0.2249997854232788, 0.14999999105930328, 0.14999984204769135)
Part623.BottomSurface = Enum.SurfaceType.Smooth
Part623.BrickColor = BrickColor.new("Really black")
Part623.TopSurface = Enum.SurfaceType.Smooth
Part623.brickColor = BrickColor.new("Really black")
Part623.Shape = Enum.PartType.Cylinder
Part624.Name = "Seat"
Part624.Parent = Model542
Part624.CFrame = CFrame.new(23.4195766, 15.04041, 73.7543793, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part624.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part624.Position = Vector3.new(23.41957664489746, 15.040410041809082, 73.75437927246094)
Part624.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part624.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part624.Size = Vector3.new(1.4749999046325684, 1, 1.3500005006790161)
Part624.Anchored = true
Part624.BottomSurface = Enum.SurfaceType.Smooth
Part624.BrickColor = BrickColor.new("Really black")
Part624.TopSurface = Enum.SurfaceType.Smooth
Part624.brickColor = BrickColor.new("Really black")
Weld625.Parent = Part624
Weld625.C0 = CFrame.new(4.09749222, 0.765007973, 2.93502808, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld625.Part0 = Part624
Weld625.Part1 = MeshPart547
Weld625.part1 = MeshPart547
Weld626.Parent = Part624
Weld626.C0 = CFrame.new(-4.21071815, -1.03534794, -5.21240997, -0.00259799976, 0.171009958, -0.985265851, 0.030152997, -0.984807789, -0.171009958, -0.999541879, -0.0301530026, -0.00259793224)
Weld626.Part0 = Part624
Weld626.Part1 = MeshPart556
Weld626.part1 = MeshPart556
Weld627.Parent = Part624
Weld627.C0 = CFrame.new(-5.10347176, -1.13879299, 5.18920898, 0.00259599998, 0.171009004, 0.985266089, -0.0301530007, -0.984808028, 0.17100893, 0.999541998, -0.0301526655, 0.00259987242)
Weld627.Part0 = Part624
Weld627.Part1 = MeshPart553
Weld627.part1 = MeshPart553
Weld628.Parent = Part624
Weld628.C0 = CFrame.new(-5.15558815, -1.17968082, -5.205616, 0.00259599998, 0.171009004, 0.985266089, -0.0301530007, -0.984808028, 0.17100893, 0.999541998, -0.0301526655, 0.00259987242)
Weld628.Part0 = Part624
Weld628.Part1 = MeshPart548
Weld628.part1 = MeshPart548
Weld629.Parent = Part624
Weld629.C0 = CFrame.new(-4.1746769, -0.9750247, 5.2044487, -0.00259799976, 0.171009958, -0.985265851, 0.030152997, -0.984807789, -0.171009958, -0.999541879, -0.0301530026, -0.00259793224)
Weld629.Part0 = Part624
Weld629.Part1 = MeshPart552
Weld629.part1 = MeshPart552
Weld630.Parent = Part624
Weld630.C0 = CFrame.new(3.38808203, 1.79605436, -0.159912109, 0, 0.500000238, -0.866025388, 0, 0.866025388, 0.500000238, 1, 0, 0)
Weld630.Part0 = Part624
Weld630.Part1 = MeshPart885
Weld630.part1 = MeshPart885
Weld631.Parent = Part624
Weld631.C0 = CFrame.new(3.8874979, 1.26249695, -1.67494965, -0.342019916, -0.939692736, 0, 0.939692736, -0.342019886, 0, 0, 0, 1)
Weld631.Part0 = Part624
Weld631.Part1 = Part584
Weld631.part1 = Part584
Weld632.Parent = Part624
Weld632.C0 = CFrame.new(-2.93919706, 4.82690573, 0.0450973511, 0, 0.984807789, -0.173647955, 0, 0.173647955, 0.984807789, 1, 0, 0)
Weld632.Part0 = Part624
Weld632.Part1 = Part586
Weld632.part1 = Part586
Weld633.Parent = Part624
Weld633.C0 = CFrame.new(-2.54238081, 2.50330973, -3.39068604, 0.173647955, 0.984807789, 0, -0.984807789, 0.173647955, 0, 0, 0, 1)
Weld633.Part0 = Part624
Weld633.Part1 = Part570
Weld633.part1 = Part570
Weld634.Parent = Part624
Weld634.C0 = CFrame.new(-4.77833271, 2.51407862, 2.59593964, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld634.Part0 = Part624
Weld634.Part1 = Part579
Weld634.part1 = Part579
Weld635.Parent = Part624
Weld635.C0 = CFrame.new(-2.50710106, 2.43674994, 3.48361969, 0.173647955, 0.984807789, 0, -0.984807789, 0.173647955, 0, 0, 0, 1)
Weld635.Part0 = Part624
Weld635.Part1 = Part589
Weld635.part1 = Part589
Weld636.Parent = Part624
Weld636.C0 = CFrame.new(-0.674996853, 0.325036049, -1.21248627, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld636.Part0 = Part624
Weld636.Part1 = Part557
Weld636.part1 = Part557
Weld637.Parent = Part624
Weld637.C0 = CFrame.new(-5.0021801, 1.02996635, 5.22059631, 0.984807491, 0.17364791, 0, 0.17364791, -0.984807491, 0, 0, 0, -1)
Weld637.Part0 = Part624
Weld637.Part1 = Part591
Weld637.part1 = Part591
Weld638.Parent = Part624
Weld638.C0 = CFrame.new(4.01423311, 0.685228348, -0.142475128, -0.500000238, -0.866025388, 0, 0.866025388, -0.500000238, 0, 0, 0, 1)
Weld638.Part0 = Part624
Weld638.Part1 = Part558
Weld638.part1 = Part558
Weld639.Parent = Part624
Weld639.C0 = CFrame.new(-5.02974892, 0.965667248, -5.17404938, 0.984807491, 0.17364791, 0, 0.17364791, -0.984807491, 0, 0, 0, -1)
Weld639.Part0 = Part624
Weld639.Part1 = Part562
Weld639.part1 = Part562
Weld640.Parent = Part624
Weld640.C0 = CFrame.new(7.66248989, 0.625064373, 0.575016022, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld640.Part0 = Part624
Weld640.Part1 = Part563
Weld640.part1 = Part563
Weld641.Parent = Part624
Weld641.C0 = CFrame.new(8.23977852, 1.07025337, -2.62289047, -0.891006887, -0.453989953, 0, 0.453989953, -0.891006887, 0, 0, 0, 1)
Weld641.Part0 = Part624
Weld641.Part1 = Part574
Weld641.part1 = Part574
Weld642.Parent = Part624
Weld642.C0 = CFrame.new(-1.99258375, 1.98087072, 0.0311737061, 0, 0.965925336, 0.2588211, 0, -0.2588211, 0.965925336, 1, 0, 0)
Weld642.Part0 = Part624
Weld642.Part1 = Part571
Weld642.part1 = Part571
Weld643.Parent = Part624
Weld643.C0 = CFrame.new(6.31248426, 0.600058079, 0.575031281, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld643.Part0 = Part624
Weld643.Part1 = Part587
Weld643.part1 = Part587
Weld644.Parent = Part624
Weld644.C0 = CFrame.new(5.03749514, 0.743421078, 0.461845398, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld644.Part0 = Part624
Weld644.Part1 = Part566
Weld644.part1 = Part566
Weld645.Parent = Part624
Weld645.C0 = CFrame.new(-4.81357384, 2.51407862, -2.41405869, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld645.Part0 = Part624
Weld645.Part1 = Part573
Weld645.part1 = Part573
Weld646.Parent = Part624
Weld646.C0 = CFrame.new(-4.65358877, -0.989995956, -0.0740509033, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Weld646.Part0 = Part624
Weld646.Part1 = Part588
Weld646.part1 = Part588
Weld647.Parent = Part624
Weld647.C0 = CFrame.new(-3.8005271, 4.70152235, -2.34295273, -0.984808028, 0, -0.173647001, -0.173647001, 0, 0.984808028, 0, 1, 0)
Weld647.Part0 = Part624
Weld647.Part1 = Part590
Weld647.part1 = Part590
Weld648.Parent = Part624
Weld648.C0 = CFrame.new(-1.92769599, 1.66587734, 3.5509491, 0, -1, 0, 1, 0, -0, 0, 0, 1)
Weld648.Part0 = Part624
Weld648.Part1 = Part585
Weld648.part1 = Part585
Weld649.Parent = Part624
Weld649.C0 = CFrame.new(-2.99358177, -0.855003834, 0.0259552002, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld649.Part0 = Part624
Weld649.Part1 = Part592
Weld649.part1 = Part592
Weld650.Parent = Part624
Weld650.C0 = CFrame.new(-5.17691183, 1.95373774, -0.0740432739, 0.984807789, 0, -0.173647955, 0.173647955, 0, 0.984807789, 0, -1, 0)
Weld650.Part0 = Part624
Weld650.Part1 = Part564
Weld650.part1 = Part564
Weld651.Parent = Part624
Weld651.C0 = CFrame.new(8.24024582, 1.07118034, -1.62522888, -0.891006887, -0.453989953, 0, 0.453989953, -0.891006887, 0, 0, 0, 1)
Weld651.Part0 = Part624
Weld651.Part1 = Part575
Weld651.part1 = Part575
Weld652.Parent = Part624
Weld652.C0 = CFrame.new(8.19077587, 0.974070072, -2.1804657, -0.891006887, -0.453989953, 0, 0.453989953, -0.891006887, 0, 0, 0, 1)
Weld652.Part0 = Part624
Weld652.Part1 = Part565
Weld652.part1 = Part565
Weld653.Parent = Part624
Weld653.C0 = CFrame.new(-3.90843773, 4.66941023, 2.43470383, -0.984808028, 0, -0.173647001, -0.173647001, 0, 0.984808028, 0, 1, 0)
Weld653.Part0 = Part624
Weld653.Part1 = Part568
Weld653.part1 = Part568
Weld654.Parent = Part624
Weld654.C0 = CFrame.new(3.80749798, 1.282897, -2.57493973, -0.500000238, -0.866025388, 0, 0.866025388, -0.500000238, 0, 0, 0, 1)
Weld654.Part0 = Part624
Weld654.Part1 = Part580
Weld654.part1 = Part580
Weld655.Parent = Part624
Weld655.C0 = CFrame.new(0.494495034, -1.54300404, -2.23996735, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld655.Part0 = Part624
Weld655.Part1 = Part576
Weld655.part1 = Part576
Weld656.Parent = Part624
Weld656.C0 = CFrame.new(-4.09360695, 2.57502222, 0.000946044922, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld656.Part0 = Part624
Weld656.Part1 = Part561
Weld656.part1 = Part561
Weld657.Parent = Part624
Weld657.C0 = CFrame.new(-4.58859015, -1.18999863, -0.044052124, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld657.Part0 = Part624
Weld657.Part1 = Part567
Weld657.part1 = Part567
Weld658.Parent = Part624
Weld658.C0 = CFrame.new(7.26248503, 0.625048161, 0.575061798, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld658.Part0 = Part624
Weld658.Part1 = Part560
Weld658.part1 = Part560
Weld659.Parent = Part624
Weld659.C0 = CFrame.new(-4.7935729, 2.27499819, 0.0259399414, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Weld659.Part0 = Part624
Weld659.Part1 = Part572
Weld659.part1 = Part572
Weld660.Parent = Part624
Weld660.C0 = CFrame.new(-4.77833271, 3.22405386, -0.0527572632, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld660.Part0 = Part624
Weld660.Part1 = Part559
Weld660.part1 = Part559
Weld661.Parent = Part624
Weld661.C0 = CFrame.new(0.512487054, -1.57500076, 2.00001526, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld661.Part0 = Part624
Weld661.Part1 = Part569
Weld661.part1 = Part569
Weld662.Parent = Part624
Weld662.C0 = CFrame.new(-5.23930073, 2.50768042, -0.048576355, -0.173647955, 0, 0.984807789, 0.984807789, 0, 0.173647955, 0, 1, 0)
Weld662.Part0 = Part624
Weld662.Part1 = Part581
Weld662.part1 = Part581
Weld663.Parent = Part624
Weld663.C0 = CFrame.new(6.56249428, -1.85000086, 0.525032043, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld663.Part0 = Part624
Weld663.Part1 = Part823
Weld663.part1 = Part823
Weld664.Parent = Part624
Weld664.C0 = CFrame.new(4.08749294, 1.02499628, 2.92505646, 0, -1, 0, 1, 0, -0, 0, 0, 1)
Weld664.Part0 = Part624
Weld664.Part1 = Part825
Weld664.part1 = Part825
Weld665.Parent = Part624
Weld665.C0 = CFrame.new(8.71710396, 0.784038067, -2.15270615, 2.10847091e-08, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -7.6109437e-08, -4.22219593e-08)
Weld665.Part0 = Part624
Weld665.Part1 = Part596
Weld665.part1 = Part596
Weld666.Parent = Part624
Weld666.C0 = CFrame.new(7.0874939, -0.099957943, 0.525028229, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld666.Part0 = Part624
Weld666.Part1 = Part610
Weld666.part1 = Part610
Weld667.Parent = Part624
Weld667.C0 = CFrame.new(-1.92776299, 1.11587524, 0.050945282, 0, -1, 0, 0, 0, -1, 1, 0, 0)
Weld667.Part0 = Part624
Weld667.Part1 = Part829
Weld667.part1 = Part829
Weld668.Parent = Part624
Weld668.C0 = CFrame.new(-0.87469101, 0.860726357, 2.28881836e-05, 0.173647955, 0.984807789, 0, -0.984807789, 0.173647955, 0, 0, 0, 1)
Weld668.Part0 = Part624
Weld668.Part1 = Part618
Weld668.part1 = Part618
Weld669.Parent = Part624
Weld669.C0 = CFrame.new(4.11249399, -0.0500030518, 3.52503204, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld669.Part0 = Part624
Weld669.Part1 = Part604
Weld669.part1 = Part604
Weld670.Parent = Part624
Weld670.C0 = CFrame.new(-1.92771482, 1.66587305, -3.44904709, 0, -1, 0, 1, 0, -0, 0, 0, 1)
Weld670.Part0 = Part624
Weld670.Part1 = Part821
Weld670.part1 = Part821
Weld671.Parent = Part624
Weld671.C0 = CFrame.new(-3.71858406, 2.52501631, 0.000930786133, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld671.Part0 = Part624
Weld671.Part1 = Part615
Weld671.part1 = Part615
Weld672.Parent = Part624
Weld672.C0 = CFrame.new(7.55082798, 1.42492437, -2.12493896, 0, -0.453989148, 0.891007304, 0, -0.891007304, -0.453989148, 1, 0, 0)
Weld672.Part0 = Part624
Weld672.Part1 = Part613
Weld672.part1 = Part613
Weld673.Parent = Part624
Weld673.C0 = CFrame.new(6.61249399, 0.0250110626, 4.27503586, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld673.Part0 = Part624
Weld673.Part1 = Part600
Weld673.part1 = Part600
Weld674.Parent = Part624
Weld674.C0 = CFrame.new(8.12342644, 1.08650923, -2.09717941, 2.10847091e-08, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -7.6109437e-08, -4.22219593e-08)
Weld674.Part0 = Part624
Weld674.Part1 = Part611
Weld674.part1 = Part611
Weld675.Parent = Part624
Weld675.C0 = CFrame.new(7.52977419, 1.38901806, -2.15270233, 0, -0.453989148, 0.891007304, 0, -0.891007304, -0.453989148, 1, 0, 0)
Weld675.Part0 = Part624
Weld675.Part1 = Part612
Weld675.part1 = Part612
Weld676.Parent = Part624
Weld676.C0 = CFrame.new(8.22238159, 1.03610802, -2.62466431, -0.891006887, -0.453989953, 0, 0.453989953, -0.891006887, 0, 0, 0, 1)
Weld676.Part0 = Part624
Weld676.Part1 = Part616
Weld676.part1 = Part616
Weld677.Parent = Part624
Weld677.C0 = CFrame.new(8.32133007, 0.985692978, -2.09718323, 2.10847091e-08, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -7.6109437e-08, -4.22219593e-08)
Weld677.Part0 = Part624
Weld677.Part1 = Part816
Weld677.part1 = Part816
Weld678.Parent = Part624
Weld678.C0 = CFrame.new(3.48509789, 1.84132624, -2.57493973, -0.500000238, -0.866025388, 0, 0.866025388, -0.500000238, 0, 0, 0, 1)
Weld678.Part0 = Part624
Weld678.Part1 = Part817
Weld678.part1 = Part817
Weld679.Parent = Part624
Weld679.C0 = CFrame.new(8.51921272, 0.884866238, -2.15270615, 2.10847091e-08, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -7.6109437e-08, -4.22219593e-08)
Weld679.Part0 = Part624
Weld679.Part1 = Part819
Weld679.part1 = Part819
Weld680.Parent = Part624
Weld680.C0 = CFrame.new(4.08749294, 1.52500105, 2.92505646, 0, -1, 0, 1, 0, -0, 0, 0, 1)
Weld680.Part0 = Part624
Weld680.Part1 = Part812
Weld680.part1 = Part812
Weld681.Parent = Part624
Weld681.C0 = CFrame.new(6.56249428, -2, 0.525032043, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld681.Part0 = Part624
Weld681.Part1 = Part620
Weld681.part1 = Part620
Weld682.Parent = Part624
Weld682.C0 = CFrame.new(6.76248407, 0.625064373, 0.575069427, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld682.Part0 = Part624
Weld682.Part1 = Part820
Weld682.part1 = Part820
Weld683.Parent = Part624
Weld683.C0 = CFrame.new(1.9625001, -1.79999971, -0.0624923706, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld683.Part0 = Part624
Weld683.Part1 = Part824
Weld683.part1 = Part824
Weld684.Parent = Part624
Weld684.C0 = CFrame.new(-5.01512289, 2.5029664, -2.32540512, -0.173647955, 0, 0.984807789, 0.984807789, 0, 0.173647955, 0, 1, 0)
Weld684.Part0 = Part624
Weld684.Part1 = Part840
Weld684.part1 = Part840
Weld685.Parent = Part624
Weld685.C0 = CFrame.new(6.73749399, -1.02499866, 0.525032043, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld685.Part0 = Part624
Weld685.Part1 = Part619
Weld685.part1 = Part619
Weld686.Parent = Part624
Weld686.C0 = CFrame.new(7.26250124, -0.525002956, 0.525005341, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld686.Part0 = Part624
Weld686.Part1 = Part815
Weld686.part1 = Part815
Weld687.Parent = Part624
Weld687.C0 = CFrame.new(5.76249599, 1.65004015, 4.0250206, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld687.Part0 = Part624
Weld687.Part1 = Part826
Weld687.part1 = Part826
Weld688.Parent = Part624
Weld688.C0 = CFrame.new(5.73749399, 1.09999704, 0.525032043, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Weld688.Part0 = Part624
Weld688.Part1 = Part614
Weld688.part1 = Part614
Weld689.Parent = Part624
Weld689.C0 = CFrame.new(-1.99431801, 1.53451204, 0.0207099915, 0, 0.965925336, 0.2588211, 0, -0.2588211, 0.965925336, 1, 0, 0)
Weld689.Part0 = Part624
Weld689.Part1 = Part597
Weld689.part1 = Part597
Weld690.Parent = Part624
Weld690.C0 = CFrame.new(6.63743019, 0.850006104, 0.524993896, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld690.Part0 = Part624
Weld690.Part1 = Part617
Weld690.part1 = Part617
Weld691.Parent = Part624
Weld691.C0 = CFrame.new(5.76249504, 1.65001202, -2.87495422, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld691.Part0 = Part624
Weld691.Part1 = Part827
Weld691.part1 = Part827
Weld692.Parent = Part624
Weld692.C0 = CFrame.new(0.499987006, -1.53750372, 2.20001984, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld692.Part0 = Part624
Weld692.Part1 = Part813
Weld692.part1 = Part813
Weld693.Parent = Part624
Weld693.C0 = CFrame.new(5.06249428, -1.99998474, 5.07501984, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld693.Part0 = Part624
Weld693.Part1 = Part599
Weld693.part1 = Part599
Weld694.Parent = Part624
Weld694.C0 = CFrame.new(-0.649996042, 0.300001144, 1.1125145, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld694.Part0 = Part624
Weld694.Part1 = Part609
Weld694.part1 = Part609
Weld695.Parent = Part624
Weld695.C0 = CFrame.new(-5.41830587, 2.43435431, 2.4451561, -0.173647955, 0, 0.984807789, 0.984807789, 0, 0.173647955, 0, 1, 0)
Weld695.Part0 = Part624
Weld695.Part1 = Part835
Weld695.part1 = Part835
Weld696.Parent = Part624
Weld696.C0 = CFrame.new(-4.77833271, 3.19857836, 2.4588089, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld696.Part0 = Part624
Weld696.Part1 = Part837
Weld696.part1 = Part837
Weld697.Parent = Part624
Weld697.C0 = CFrame.new(3.66360211, 1.85639429, -1.67494583, -0.342019916, -0.939692736, 0, 0.939692736, -0.342019886, 0, 0, 0, 1)
Weld697.Part0 = Part624
Weld697.Part1 = Part623
Weld697.part1 = Part623
Weld698.Parent = Part624
Weld698.C0 = CFrame.new(8.22237968, 1.03610897, -1.62522888, -0.891006887, -0.453989953, 0, 0.453989953, -0.891006887, 0, 0, 0, 1)
Weld698.Part0 = Part624
Weld698.Part1 = Part828
Weld698.part1 = Part828
Weld699.Parent = Part624
Weld699.C0 = CFrame.new(5.0625, -1.99998903, -4.02498245, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld699.Part0 = Part624
Weld699.Part1 = Part603
Weld699.part1 = Part603
Weld700.Parent = Part624
Weld700.C0 = CFrame.new(8.91497612, 0.683195114, -2.12494278, 0, -0.453989148, 0.891007304, 0, -0.891007304, -0.453989148, 1, 0, 0)
Weld700.Part0 = Part624
Weld700.Part1 = Part814
Weld700.part1 = Part814
Weld701.Parent = Part624
Weld701.C0 = CFrame.new(4.01249409, -1.5, 3.52503586, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld701.Part0 = Part624
Weld701.Part1 = Part601
Weld701.part1 = Part601
Weld702.Parent = Part624
Weld702.C0 = CFrame.new(8.93275642, 0.718089104, -2.12494278, 0, -0.453989148, 0.891007304, 0, -0.891007304, -0.453989148, 1, 0, 0)
Weld702.Part0 = Part624
Weld702.Part1 = Part818
Weld702.part1 = Part818
Weld703.Parent = Part624
Weld703.C0 = CFrame.new(-0.0999979973, -0.649998665, -0.0249938965, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld703.Part0 = Part624
Weld703.Part1 = Part594
Weld703.part1 = Part594
Weld704.Parent = Part624
Weld704.C0 = CFrame.new(-5.32371712, 4.41554785, 2.43899918, 0.258819908, -0.965925634, 0, -0.965925634, -0.258819908, 0, 0, 0, -1)
Weld704.Part0 = Part624
Weld704.Part1 = Part843
Weld704.part1 = Part843
Weld705.Parent = Part624
Weld705.C0 = CFrame.new(-5.02770376, 4.4680562, 2.43899918, 0.173647955, -0.984807789, 0, -0.984807789, -0.173647955, 0, 0, 0, -1)
Weld705.Part0 = Part624
Weld705.Part1 = Part845
Weld705.part1 = Part845
Weld706.Parent = Part624
Weld706.C0 = CFrame.new(-5.43758917, 4.38342237, 2.43899918, 0.342019022, -0.939693093, 0, -0.939693093, -0.342018992, 0, 0, 0, -1)
Weld706.Part0 = Part624
Weld706.Part1 = Part847
Weld706.part1 = Part847
Weld707.Parent = Part624
Weld707.C0 = CFrame.new(-5.63104391, 4.20436239, 2.43899918, -0.906306982, 0.422619998, 0, 0.422619998, 0.906306982, 0, 0, 0, -1)
Weld707.Part0 = Part624
Weld707.Part1 = Part849
Weld707.part1 = Part849
Weld708.Parent = Part624
Weld708.C0 = CFrame.new(-5.58517599, 4.27264833, 2.43900681, -0.76604414, 0.642788053, 0, 0.642788053, 0.76604414, 0, 0, 0, -1)
Weld708.Part0 = Part624
Weld708.Part1 = Part851
Weld708.part1 = Part851
Weld709.Parent = Part624
Weld709.C0 = CFrame.new(-5.65847588, 4.11169386, 2.43899918, -0.984807789, 0.173647955, 0, 0.173647955, 0.984807789, 0, 0, 0, -1)
Weld709.Part0 = Part624
Weld709.Part1 = Part853
Weld709.part1 = Part853
Weld710.Parent = Part624
Weld710.C0 = CFrame.new(-5.51645803, 4.34103823, 2.43899536, -0.573576152, 0.819152296, 0, 0.819152296, 0.573576152, 0, 0, 0, -1)
Weld710.Part0 = Part624
Weld710.Part1 = Part855
Weld710.part1 = Part855
Weld711.Parent = Part624
Weld711.C0 = CFrame.new(-5.63046074, 3.68392038, 2.43899918, -0.99619478, -0.0871549696, 0, -0.087154977, 0.99619478, 0, 0, 0, -1)
Weld711.Part0 = Part624
Weld711.Part1 = Part554
Weld711.part1 = Part554
Weld712.Parent = Part624
Weld712.C0 = CFrame.new(-4.90778875, 4.50093222, -2.33626175, 0.258819908, -0.965925634, 0, -0.965925634, -0.258819908, 0, 0, 0, -1)
Weld712.Part0 = Part624
Weld712.Part1 = Part857
Weld712.part1 = Part857
Weld713.Parent = Part624
Weld713.C0 = CFrame.new(-4.61177588, 4.55344439, -2.33625412, 0.173647955, -0.984807789, 0, -0.984807789, -0.173647955, 0, 0, 0, -1)
Weld713.Part0 = Part624
Weld713.Part1 = Part859
Weld713.part1 = Part859
Weld714.Parent = Part624
Weld714.C0 = CFrame.new(-5.02166176, 4.46880865, -2.33625412, 0.342019022, -0.939693093, 0, -0.939693093, -0.342018992, 0, 0, 0, -1)
Weld714.Part0 = Part624
Weld714.Part1 = Part861
Weld714.part1 = Part861
Weld715.Parent = Part624
Weld715.C0 = CFrame.new(-5.21511602, 4.28974771, -2.33626175, -0.906306982, 0.422619998, 0, 0.422619998, 0.906306982, 0, 0, 0, -1)
Weld715.Part0 = Part624
Weld715.Part1 = Part863
Weld715.part1 = Part863
Weld716.Parent = Part624
Weld716.C0 = CFrame.new(-5.1692481, 4.35802984, -2.33625412, -0.76604414, 0.642788053, 0, 0.642788053, 0.76604414, 0, 0, 0, -1)
Weld716.Part0 = Part624
Weld716.Part1 = Part865
Weld716.part1 = Part865
Weld717.Parent = Part624
Weld717.C0 = CFrame.new(-5.24254799, 4.19707823, -2.33625412, -0.984807789, 0.173647955, 0, 0.173647955, 0.984807789, 0, 0, 0, -1)
Weld717.Part0 = Part624
Weld717.Part1 = Part867
Weld717.part1 = Part867
Weld718.Parent = Part624
Weld718.C0 = CFrame.new(-5.10053015, 4.42642832, -2.33626175, -0.573576152, 0.819152296, 0, 0.819152296, 0.573576152, 0, 0, 0, -1)
Weld718.Part0 = Part624
Weld718.Part1 = Part869
Weld718.part1 = Part869
Weld719.Parent = Part624
Weld719.C0 = CFrame.new(-5.21453285, 3.76930571, -2.33625412, -0.99619478, -0.0871549696, 0, -0.087154977, 0.99619478, 0, 0, 0, -1)
Weld719.Part0 = Part624
Weld719.Part1 = Part577
Weld719.part1 = Part577
Weld720.Parent = Part624
Weld720.C0 = CFrame.new(-5.11668205, 4.46352434, -0.0345306396, 0.258819908, -0.965925634, 0, -0.965925634, -0.258819908, 0, 0, 0, -1)
Weld720.Part0 = Part624
Weld720.Part1 = Part871
Weld720.part1 = Part871
Weld721.Parent = Part624
Weld721.C0 = CFrame.new(-4.82066917, 4.51603842, -0.0345230103, 0.173647955, -0.984807789, 0, -0.984807789, -0.173647955, 0, 0, 0, -1)
Weld721.Part0 = Part624
Weld721.Part1 = Part873
Weld721.part1 = Part873
Weld722.Parent = Part624
Weld722.C0 = CFrame.new(-5.2305541, 4.43140173, -0.0345230103, 0.342019022, -0.939693093, 0, -0.939693093, -0.342018992, 0, 0, 0, -1)
Weld722.Part0 = Part624
Weld722.Part1 = Part875
Weld722.part1 = Part875
Weld723.Parent = Part624
Weld723.C0 = CFrame.new(-5.42400885, 4.25234175, -0.0345306396, -0.906306982, 0.422619998, 0, 0.422619998, 0.906306982, 0, 0, 0, -1)
Weld723.Part0 = Part624
Weld723.Part1 = Part877
Weld723.part1 = Part877
Weld724.Parent = Part624
Weld724.C0 = CFrame.new(-5.37814093, 4.32061625, -0.0345230103, -0.76604414, 0.642788053, 0, 0.642788053, 0.76604414, 0, 0, 0, -1)
Weld724.Part0 = Part624
Weld724.Part1 = Part879
Weld724.part1 = Part879
Weld725.Parent = Part624
Weld725.C0 = CFrame.new(-5.45144081, 4.15967035, -0.0345230103, -0.984807789, 0.173647955, 0, 0.173647955, 0.984807789, 0, 0, 0, -1)
Weld725.Part0 = Part624
Weld725.Part1 = Part881
Weld725.part1 = Part881
Weld726.Parent = Part624
Weld726.C0 = CFrame.new(-5.30942297, 4.38902044, -0.0345306396, -0.573576152, 0.819152296, 0, 0.819152296, 0.573576152, 0, 0, 0, -1)
Weld726.Part0 = Part624
Weld726.Part1 = Part883
Weld726.part1 = Part883
Weld727.Parent = Part624
Weld727.C0 = CFrame.new(-5.42342472, 3.7318902, -0.0345230103, -0.99619478, -0.0871549696, 0, -0.087154977, 0.99619478, 0, 0, 0, -1)
Weld727.Part0 = Part624
Weld727.Part1 = Part582
Weld727.part1 = Part582
Weld728.Parent = Part624
Weld728.C0 = CFrame.new(-2.93285513, 4.81733847, 3.02297974, 0.17298609, 0.0151330382, -0.984808087, -0.981060505, -0.0858332142, -0.173646748, -0.0871570483, 0.996194661, -1.52693917e-06)
Weld728.Part0 = Part624
Weld728.Part1 = Part886
Weld728.part1 = Part886
Weld729.Parent = Part624
Weld729.C0 = CFrame.new(-2.93290901, 4.8176465, 2.72234726, 0.173647955, 0, -0.984807789, -0.984807789, 0, -0.173647955, 0, 1, 0)
Weld729.Part0 = Part624
Weld729.Part1 = Part888
Weld729.part1 = Part888
Weld730.Parent = Part624
Weld730.C0 = CFrame.new(-2.93079472, 4.80564833, 3.14069366, 0.17101106, 0.03015301, -0.98480767, -0.969846368, -0.171009064, -0.173649028, -0.173647061, 0.984808028, -6.52566314e-07)
Weld730.Part0 = Part624
Weld730.Part1 = Part890
Weld730.part1 = Part890
Weld731.Parent = Part624
Weld731.C0 = CFrame.new(-2.90600777, 4.66506815, 3.3623085, -0.0996010602, -0.142245874, -0.984807491, 0.564863384, 0.806706369, -0.173649818, 0.819151461, -0.573577344, 6.71538146e-07)
Weld731.Part0 = Part624
Weld731.Part1 = Part892
Weld731.part1 = Part892
Weld732.Parent = Part624
Weld732.C0 = CFrame.new(-2.91629982, 4.72345591, 3.30527878, -0.13302201, -0.111618929, -0.984807789, 0.754407108, 0.633021593, -0.17364803, 0.642787039, -0.766045034, 3.03088626e-07)
Weld732.Part0 = Part624
Weld732.Part1 = Part894
Weld732.part1 = Part894
Weld733.Parent = Part624
Weld733.C0 = CFrame.new(-2.89098501, 4.57989645, 3.40541077, -0.0593920015, -0.163175032, -0.984807909, 0.336822987, 0.925417185, -0.173647612, 0.939692974, -0.34201926, -1.28277475e-06)
Weld733.Part0 = Part624
Weld733.Part1 = Part896
Weld733.part1 = Part896
Weld734.Parent = Part624
Weld734.C0 = CFrame.new(-2.92592812, 4.77804232, 3.22572708, -0.157377958, -0.0733878613, -0.984807789, 0.892538786, 0.416198194, -0.173647925, 0.422618896, -0.906307518, 1.0923975e-06)
Weld734.Part0 = Part624
Weld734.Part1 = Part898
Weld734.part1 = Part898
Weld735.Parent = Part624
Weld735.C0 = CFrame.new(-2.81698799, 4.16022444, 3.45210648, -0.0151359979, -0.172988057, -0.98480767, 0.0858299956, 0.981060326, -0.173648968, 0.996194899, -0.087154381, -1.76389085e-06)
Weld735.Part0 = Part624
Weld735.Part1 = Part544
Weld735.part1 = Part544
Weld736.Parent = Part624
Weld736.C0 = CFrame.new(-2.94219017, 4.82889223, -2.9310112, 0.172987014, 0.015134979, 0.984807789, -0.981060147, -0.0858338699, 0.173647836, 0.0871580094, -0.996194601, 1.79616663e-07)
Weld736.Part0 = Part624
Weld736.Part1 = Part900
Weld736.part1 = Part900
Weld737.Parent = Part624
Weld737.C0 = CFrame.new(-2.9422431, 4.82920027, -2.63037872, 0.173647955, 0, 0.984807789, -0.984807789, 0, 0.173647955, 0, -1, 0)
Weld737.Part0 = Part624
Weld737.Part1 = Part902
Weld737.part1 = Part902
Weld738.Parent = Part624
Weld738.C0 = CFrame.new(-2.94013977, 4.81720591, -3.04873276, 0.171010062, 0.0301539823, 0.984807789, -0.969846368, -0.171009898, 0.173648238, 0.173648059, -0.984807789, 3.15400086e-07)
Weld738.Part0 = Part624
Weld738.Part1 = Part904
Weld738.part1 = Part904
Weld739.Parent = Part624
Weld739.C0 = CFrame.new(-2.91534805, 4.67663431, -3.27033997, -0.0995999798, -0.142244011, 0.984807849, 0.564862907, 0.806707084, 0.173647672, -0.819151819, 0.573576748, 3.55198551e-07)
Weld739.Part0 = Part624
Weld739.Part1 = Part906
Weld739.part1 = Part906
Weld740.Parent = Part624
Weld740.C0 = CFrame.new(-2.92564201, 4.73500586, -3.21331406, -0.13302201, -0.11161796, 0.984807909, 0.754407108, 0.633021832, 0.173647404, -0.642787039, 0.766044974, -4.61713455e-07)
Weld740.Part0 = Part624
Weld740.Part1 = Part908
Weld740.part1 = Part908
Weld741.Parent = Part624
Weld741.C0 = CFrame.new(-2.90033293, 4.59145021, -3.31344604, -0.0593910068, -0.163176, 0.98480773, 0.336823016, 0.925417006, 0.173648179, -0.939693093, 0.342019022, -1.96656362e-08)
Weld741.Part0 = Part624
Weld741.Part1 = Part910
Weld741.part1 = Part910
Weld742.Parent = Part624
Weld742.C0 = CFrame.new(-2.93525314, 4.78959227, -3.13375854, -0.157377958, -0.0733868852, 0.984807849, 0.892538786, 0.416198373, 0.173647508, -0.422618896, 0.906307578, 1.87560303e-07)
Weld742.Part0 = Part624
Weld742.Part1 = Part912
Weld742.part1 = Part912
Weld743.Parent = Part624
Weld743.C0 = CFrame.new(-2.82633209, 4.1717782, -3.36014938, -0.0151329963, -0.172988042, 0.98480773, 0.085830979, 0.981060266, 0.1736487, -0.99619478, 0.0871548355, 1.35158905e-06)
Weld743.Part0 = Part624
Weld743.Part1 = Part549
Weld743.part1 = Part549
Weld744.Parent = Part624
Weld744.C0 = CFrame.new(6.19185209, -1.35328865, 5.06997681, -0.500000238, 0, -0.866025388, 0.866025388, 0, -0.500000238, 0, -1, 0)
Weld744.Part0 = Part624
Weld744.Part1 = Part925
Weld744.part1 = Part925
Weld745.Parent = Part624
Weld745.C0 = CFrame.new(5.86179209, -2.14407492, 5.06997681, -0.965926111, 0, 0.25881803, -0.25881803, 0, -0.965926111, 0, -1, 0)
Weld745.Part0 = Part624
Weld745.Part1 = Part933
Weld745.part1 = Part933
Weld746.Parent = Part624
Weld746.C0 = CFrame.new(7.21961594, -1.7850647, 5.06997681, 0.965926111, 0, -0.25881803, 0.25881803, 0, 0.965926111, 0, -1, 0)
Weld746.Part0 = Part624
Weld746.Part1 = Part919
Weld746.part1 = Part919
Weld747.Parent = Part624
Weld747.C0 = CFrame.new(7.24295998, -1.96760893, 5.06997681, 1, 0, -0, 0, 0, 1, 0, -1, 0)
Weld747.Part0 = Part624
Weld747.Part1 = Part918
Weld747.part1 = Part918
Weld748.Parent = Part624
Weld748.C0 = CFrame.new(5.86209583, -1.781353, 5.06997681, -0.965925872, 0, -0.258818984, 0.258818984, 0, -0.965925872, 0, -1, 0)
Weld748.Part0 = Part624
Weld748.Part1 = Part929
Weld748.part1 = Part929
Weld749.Parent = Part624
Weld749.C0 = CFrame.new(7.14825821, -2.3175478, 5.06997681, 0.866025388, 0, 0.500000238, -0.500000238, 0, 0.866025388, 0, -1, 0)
Weld749.Part0 = Part624
Weld749.Part1 = Part916
Weld749.part1 = Part916
Weld750.Parent = Part624
Weld750.C0 = CFrame.new(6.89159584, -2.57331681, 5.06997681, 0.500000238, 0, 0.866025388, -0.866025388, 0, 0.500000238, 0, -1, 0)
Weld750.Part0 = Part624
Weld750.Part1 = Part914
Weld750.part1 = Part914
Weld751.Parent = Part624
Weld751.C0 = CFrame.new(6.045434, -1.46477795, 5.06997681, -0.707106829, 0, -0.707106829, 0.707106829, 0, -0.707106829, 0, -1, 0)
Weld751.Part0 = Part624
Weld751.Part1 = Part926
Weld751.part1 = Part926
Weld752.Parent = Part624
Weld752.C0 = CFrame.new(6.89289808, -1.35743904, 5.06997681, 0.500000238, 0, -0.866025388, 0.866025388, 0, 0.500000238, 0, -1, 0)
Weld752.Part0 = Part624
Weld752.Part1 = Part922
Weld752.part1 = Part922
Weld753.Parent = Part624
Weld753.C0 = CFrame.new(7.03800821, -2.46184087, 5.06997681, 0.707106829, 0, 0.707106829, -0.707106829, 0, 0.707106829, 0, -1, 0)
Weld753.Part0 = Part624
Weld753.Part1 = Part915
Weld753.part1 = Part915
Weld754.Parent = Part624
Weld754.C0 = CFrame.new(6.72372818, -2.6429348, 5.06997681, 0.258818984, 0, 0.965925872, -0.965925872, 0, 0.258818984, 0, -1, 0)
Weld754.Part0 = Part624
Weld754.Part1 = Part928
Weld754.part1 = Part928
Weld755.Parent = Part624
Weld755.C0 = CFrame.new(7.14861584, -1.61441898, 5.06997681, 0.866025388, 0, -0.500000238, 0.500000238, 0, 0.866025388, 0, -1, 0)
Weld755.Part0 = Part624
Weld755.Part1 = Part920
Weld755.part1 = Part920
Weld756.Parent = Part624
Weld756.C0 = CFrame.new(6.35790014, -2.64244771, 5.06997681, -0.25881803, 0, 0.965926111, -0.965926111, 0, -0.25881803, 0, -1, 0)
Weld756.Part0 = Part624
Weld756.Part1 = Part932
Weld756.part1 = Part932
Weld757.Parent = Part624
Weld757.C0 = CFrame.new(6.54118204, -2.66627884, 5.06997681, 0, 0, 1, -1, 0, 0, 0, -1, 0)
Weld757.Part0 = Part624
Weld757.Part1 = Part930
Weld757.part1 = Part930
Weld758.Parent = Part624
Weld758.C0 = CFrame.new(7.03712225, -1.4680047, 5.06997681, 0.707106829, 0, -0.707106829, 0.707106829, 0, 0.707106829, 0, -1, 0)
Weld758.Part0 = Part624
Weld758.Part1 = Part921
Weld758.part1 = Part921
Weld759.Parent = Part624
Weld759.C0 = CFrame.new(6.54226208, -1.26033163, 5.06997681, 0, 0, -1, 1, 0, 0, 0, -1, 0)
Weld759.Part0 = Part624
Weld759.Part1 = Part924
Weld759.part1 = Part924
Weld760.Parent = Part624
Weld760.C0 = CFrame.new(5.83845425, -1.96153593, 5.06997681, -1, 0, -0, 0, 0, -1, 0, -1, -0)
Weld760.Part0 = Part624
Weld760.Part1 = Part931
Weld760.part1 = Part931
Weld761.Parent = Part624
Weld761.C0 = CFrame.new(7.2193141, -2.14779091, 5.06997681, 0.965925872, 0, 0.258818984, -0.258818984, 0, 0.965925872, 0, -1, 0)
Weld761.Part0 = Part624
Weld761.Part1 = Part917
Weld761.part1 = Part917
Weld762.Parent = Part624
Weld762.C0 = CFrame.new(6.72314596, -1.28637886, 5.06997681, 0.25881803, 0, -0.965926111, 0.965926111, 0, 0.25881803, 0, -1, 0)
Weld762.Part0 = Part624
Weld762.Part1 = Part923
Weld762.part1 = Part923
Weld763.Parent = Part624
Weld763.C0 = CFrame.new(6.18813992, -2.57139492, 5.06997681, -0.500000238, 0, 0.866025388, -0.866025388, 0, -0.500000238, 0, -1, 0)
Weld763.Part0 = Part624
Weld763.Part1 = Part934
Weld763.part1 = Part934
Weld764.Parent = Part624
Weld764.C0 = CFrame.new(5.93315029, -1.61159563, 5.06997681, -0.866025388, 0, -0.500000238, 0.500000238, 0, -0.866025388, 0, -1, 0)
Weld764.Part0 = Part624
Weld764.Part1 = Part927
Weld764.part1 = Part927
Weld765.Parent = Part624
Weld765.C0 = CFrame.new(5.93243027, -2.31440878, 5.06997681, -0.866025388, 0, 0.500000238, -0.500000238, 0, -0.866025388, 0, -1, 0)
Weld765.Part0 = Part624
Weld765.Part1 = Part551
Weld765.part1 = Part551
Weld766.Parent = Part624
Weld766.C0 = CFrame.new(6.35971785, -1.28367472, 5.06997681, -0.258818984, 0, -0.965925872, 0.965925872, 0, -0.258818984, 0, -1, 0)
Weld766.Part0 = Part624
Weld766.Part1 = Part842
Weld766.part1 = Part842
Weld767.Parent = Part624
Weld767.C0 = CFrame.new(6.04391193, -2.46082592, 5.06997681, -0.707106829, 0, 0.707106829, -0.707106829, 0, -0.707106829, 0, -1, 0)
Weld767.Part0 = Part624
Weld767.Part1 = Part935
Weld767.part1 = Part935
Weld768.Parent = Part624
Weld768.C0 = CFrame.new(6.35825491, -2.68067575, -4.03000832, -0.258818984, 0, 0.965925872, -0.965925872, 0, -0.258818984, 0, -1, 0)
Weld768.Part0 = Part624
Weld768.Part1 = Part936
Weld768.part1 = Part936
Weld769.Parent = Part624
Weld769.C0 = CFrame.new(6.54060984, -2.70537877, -4.03000832, 0, 0, 1, -1, 0, 0, 0, -1, 0)
Weld769.Part0 = Part624
Weld769.Part1 = Part937
Weld769.part1 = Part937
Weld770.Parent = Part624
Weld770.C0 = CFrame.new(6.72059727, -2.68130493, -4.03000832, 0.258818984, 0, 0.965925872, -0.965925872, 0, 0.258818984, 0, -1, 0)
Weld770.Part0 = Part624
Weld770.Part1 = Part938
Weld770.part1 = Part938
Weld771.Parent = Part624
Weld771.C0 = CFrame.new(6.89087915, -2.6115098, -4.03000832, 0.500000238, 0, 0.866025388, -0.866025388, 0, 0.500000238, 0, -1, 0)
Weld771.Part0 = Part624
Weld771.Part1 = Part939
Weld771.part1 = Part939
Weld772.Parent = Part624
Weld772.C0 = CFrame.new(7.1475811, -2.35523677, -4.03000832, 0.866024852, 0, 0.500000954, -0.500000954, 0, 0.866024852, 0, -1, 0)
Weld772.Part0 = Part624
Weld772.Part1 = Part941
Weld772.part1 = Part941
Weld773.Parent = Part624
Weld773.C0 = CFrame.new(7.21804094, -2.1843648, -4.03000832, 0.965925872, 0, 0.258818984, -0.258818984, 0, 0.965925872, 0, -1, 0)
Weld773.Part0 = Part624
Weld773.Part1 = Part942
Weld773.part1 = Part942
Weld774.Parent = Part624
Weld774.C0 = CFrame.new(7.21893597, -1.82183695, -4.03000832, 0.965925872, 0, -0.258818984, 0.258818984, 0, 0.965925872, 0, -1, 0)
Weld774.Part0 = Part624
Weld774.Part1 = Part944
Weld774.part1 = Part944
Weld775.Parent = Part624
Weld775.C0 = CFrame.new(7.035007, -2.50082088, -4.03000832, 0.707106829, 0, 0.707106829, -0.707106829, 0, 0.707106829, 0, -1, 0)
Weld775.Part0 = Part624
Weld775.Part1 = Part940
Weld775.part1 = Part940
Weld776.Parent = Part624
Weld776.C0 = CFrame.new(7.24273586, -2.00199795, -4.03000832, 1, 0, -0, 0, 0, 1, 0, -1, 0)
Weld776.Part0 = Part624
Weld776.Part1 = Part943
Weld776.part1 = Part943
Weld777.Parent = Part624
Weld777.C0 = CFrame.new(7.14914799, -1.65155697, -4.03000832, 0.866024852, 0, -0.500000954, 0.500000954, 0, 0.866024852, 0, -1, 0)
Weld777.Part0 = Part624
Weld777.Part1 = Part945
Weld777.part1 = Part945
Weld778.Parent = Part624
Weld778.C0 = CFrame.new(7.03966188, -1.50523376, -4.03000832, 0.707106829, 0, -0.707106829, 0.707106829, 0, 0.707106829, 0, -1, 0)
Weld778.Part0 = Part624
Weld778.Part1 = Part946
Weld778.part1 = Part946
Weld779.Parent = Part624
Weld779.C0 = CFrame.new(6.89407921, -1.39266396, -4.03000832, 0.500000238, 0, -0.866025388, 0.866025388, 0, 0.500000238, 0, -1, 0)
Weld779.Part0 = Part624
Weld779.Part1 = Part543
Weld779.part1 = Part543
Weld780.Parent = Part624
Weld780.C0 = CFrame.new(6.72615385, -1.32319164, -4.03000832, 0.258818984, 0, -0.965925872, 0.965925872, 0, 0.258818984, 0, -1, 0)
Weld780.Part0 = Part624
Weld780.Part1 = Part947
Weld780.part1 = Part947
Weld781.Parent = Part624
Weld781.C0 = CFrame.new(5.9335928, -1.64897394, -4.03000832, -0.866024852, 0, -0.500000954, 0.500000954, 0, -0.866024852, 0, -1, 0)
Weld781.Part0 = Part624
Weld781.Part1 = Part955
Weld781.part1 = Part955
Weld782.Parent = Part624
Weld782.C0 = CFrame.new(5.86309719, -1.81936693, -4.03000832, -0.965925872, 0, -0.258818984, 0.258818984, 0, -0.965925872, 0, -1, 0)
Weld782.Part0 = Part624
Weld782.Part1 = Part546
Weld782.part1 = Part546
Weld783.Parent = Part624
Weld783.C0 = CFrame.new(6.0447402, -2.49862981, -4.03000832, -0.707106829, 0, 0.707106829, -0.707106829, 0, -0.707106829, 0, -1, 0)
Weld783.Part0 = Part624
Weld783.Part1 = Part952
Weld783.part1 = Part952
Weld784.Parent = Part624
Weld784.C0 = CFrame.new(5.86219597, -2.18189192, -4.03000832, -0.965925872, 0, 0.258818984, -0.258818984, 0, -0.965925872, 0, -1, 0)
Weld784.Part0 = Part624
Weld784.Part1 = Part956
Weld784.part1 = Part956
Weld785.Parent = Part624
Weld785.C0 = CFrame.new(6.54378605, -1.29849195, -4.03000832, 0, 0, -1, 1, 0, 0, 0, -1, 0)
Weld785.Part0 = Part624
Weld785.Part1 = Part948
Weld785.part1 = Part948
Weld786.Parent = Part624
Weld786.C0 = CFrame.new(6.19032621, -2.61119986, -4.03000832, -0.500000238, 0, 0.866025388, -0.866025388, 0, -0.500000238, 0, -1, 0)
Weld786.Part0 = Part624
Weld786.Part1 = Part950
Weld786.part1 = Part950
Weld787.Parent = Part624
Weld787.C0 = CFrame.new(6.36057425, -1.32290363, -4.03000832, -0.258818984, 0, -0.965925872, 0.965925872, 0, -0.258818984, 0, -1, 0)
Weld787.Part0 = Part624
Weld787.Part1 = Part949
Weld787.part1 = Part949
Weld788.Parent = Part624
Weld788.C0 = CFrame.new(6.04616594, -1.50339603, -4.03000832, -0.707106829, 0, -0.707106829, 0.707106829, 0, -0.707106829, 0, -1, 0)
Weld788.Part0 = Part624
Weld788.Part1 = Part953
Weld788.part1 = Part953
Weld789.Parent = Part624
Weld789.C0 = CFrame.new(5.83839607, -2.00172663, -4.03000832, -1, 0, -0, 0, 0, -1, 0, -1, -0)
Weld789.Part0 = Part624
Weld789.Part1 = Part957
Weld789.part1 = Part957
Weld790.Parent = Part624
Weld790.C0 = CFrame.new(6.19029427, -1.39270163, -4.03000832, -0.500000238, 0, -0.866025388, 0.866025388, 0, -0.500000238, 0, -1, 0)
Weld790.Part0 = Part624
Weld790.Part1 = Part951
Weld790.part1 = Part951
Weld791.Parent = Part624
Weld791.C0 = CFrame.new(5.93199205, -2.35217381, -4.03000832, -0.866024852, 0, 0.500000954, -0.500000954, 0, -0.866024852, 0, -1, 0)
Weld791.Part0 = Part624
Weld791.Part1 = Part954
Weld791.part1 = Part954
Weld792.Parent = Part624
Weld792.C0 = CFrame.new(-1.927742, 2.21587133, 0.050945282, 0, -1, 0, 0, 0, -1, 1, 0, 0)
Weld792.Part0 = Part624
Weld792.Part1 = Part602
Weld792.part1 = Part602
Weld793.Parent = Part624
Weld793.C0 = CFrame.new(-3.78549671, 4.69202185, -0.0320968628, -0.984808028, 0, -0.173647001, -0.173647001, 0, 0.984808028, 0, 1, 0)
Weld793.Part0 = Part624
Weld793.Part1 = Part593
Weld793.part1 = Part593
Weld794.Parent = Part624
Weld794.C0 = CFrame.new(-2.22776413, 1.66587305, 0.0259513855, 0, -1, 0, 0, 0, -1, 1, 0, 0)
Weld794.Part0 = Part624
Weld794.Part1 = Part605
Weld794.part1 = Part605
Weld795.Parent = Part624
Weld795.C0 = CFrame.new(-4.34358788, 1.27500105, 0.0259742737, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Weld795.Part0 = Part624
Weld795.Part1 = Part608
Weld795.part1 = Part608
Weld796.Parent = Part624
Weld796.C0 = CFrame.new(4.26250505, -1.99998665, 0.575027466, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld796.Part0 = Part624
Weld796.Part1 = Part598
Weld796.part1 = Part598
Weld797.Parent = Part624
Weld797.C0 = CFrame.new(3.86249804, -0.949998856, -0.474952698, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld797.Part0 = Part624
Weld797.Part1 = Part621
Weld797.part1 = Part621
Weld798.Parent = Part624
Weld798.C0 = CFrame.new(-2.01110983, 1.74915695, 0.0207099915, 0, 0.965925336, 0.2588211, 0, -0.2588211, 0.965925336, 1, 0, 0)
Weld798.Part0 = Part624
Weld798.Part1 = Part607
Weld798.part1 = Part607
Weld799.Parent = Part624
Weld799.C0 = CFrame.new(7.92553186, 1.18731737, -2.15269852, 2.10847091e-08, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -7.6109437e-08, -4.22219593e-08)
Weld799.Part0 = Part624
Weld799.Part1 = Part822
Weld799.part1 = Part822
Weld800.Parent = Part624
Weld800.C0 = CFrame.new(-4.77833271, 3.21646261, -2.31320572, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld800.Part0 = Part624
Weld800.Part1 = Part836
Weld800.part1 = Part836
Weld801.Parent = Part624
Weld801.C0 = CFrame.new(7.72762823, 1.28812838, -2.15270233, 2.10847091e-08, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -7.6109437e-08, -4.22219593e-08)
Weld801.Part0 = Part624
Weld801.Part1 = Part622
Weld801.part1 = Part622
Weld802.Parent = Part624
Weld802.C0 = CFrame.new(-2.00000191, 1.29916525, 0.0207099915, 0, 0.965925336, 0.2588211, 0, -0.2588211, 0.965925336, 1, 0, 0)
Weld802.Part0 = Part624
Weld802.Part1 = Part595
Weld802.part1 = Part595
Weld803.Parent = Part624
Weld803.C0 = CFrame.new(0.487484097, -1.57500267, -2.02499771, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld803.Part0 = Part624
Weld803.Part1 = Part606
Weld803.part1 = Part606
Weld804.Parent = Part624
Weld804.C0 = CFrame.new(-1.59358001, 0.858016968, 0.0259666443, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Weld804.Part0 = Part624
Weld804.Part1 = WedgePart839
Weld804.part1 = WedgePart839
Weld805.Parent = Part624
Weld805.C0 = CFrame.new(3.71249604, 0.0500011444, 3.52503967, 0, -1, 0, 0, 0, -1, 1, 0, 0)
Weld805.Part0 = Part624
Weld805.Part1 = WedgePart831
Weld805.part1 = WedgePart831
Weld806.Parent = Part624
Weld806.C0 = CFrame.new(2.43750906, -1.56250477, 2.00004959, 0, 1, 0, 0, 0, 1, 1, 0, 0)
Weld806.Part0 = Part624
Weld806.Part1 = WedgePart834
Weld806.part1 = WedgePart834
Weld807.Parent = Part624
Weld807.C0 = CFrame.new(7.78749704, 1.02505636, 0.525028229, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Weld807.Part0 = Part624
Weld807.Part1 = WedgePart830
Weld807.part1 = WedgePart830
Weld808.Parent = Part624
Weld808.C0 = CFrame.new(2.38750601, -1.56250191, -2.02495575, 0, 1, 0, 0, 0, 1, 1, 0, 0)
Weld808.Part0 = Part624
Weld808.Part1 = WedgePart832
Weld808.part1 = WedgePart832
Weld809.Parent = Part624
Weld809.C0 = CFrame.new(8.06249428, 1.09999704, 0.525032043, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Weld809.Part0 = Part624
Weld809.Part1 = WedgePart838
Weld809.part1 = WedgePart838
Weld810.Parent = Part624
Weld810.C0 = CFrame.new(4.16249704, 0.95001936, -0.474967957, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld810.Part0 = Part624
Weld810.Part1 = WedgePart841
Weld810.part1 = WedgePart841
Weld811.Parent = Part624
Weld811.C0 = CFrame.new(7.58749294, 0.025001049, 3.27503204, 0, 0, -1, 0, -1, -0, -1, 0, -0)
Weld811.Part0 = Part624
Weld811.Part1 = WedgePart833
Weld811.part1 = WedgePart833
Part812.Parent = Model542
Part812.CFrame = CFrame.new(27.5067806, 16.5654106, 76.6798401, 0, -1, -9.89999971e-05, 1, 0, 0, 0, -9.89999971e-05, 1)
Part812.Orientation = Vector3.new(0, -0.009999999776482582, 90)
Part812.Position = Vector3.new(27.50678062438965, 16.565410614013672, 76.67984008789062)
Part812.Rotation = Vector3.new(0, -0.009999999776482582, 90)
Part812.Color = Color3.new(1, 0, 0)
Part812.Size = Vector3.new(0.2499997764825821, 0.14999999105930328, 0.14999984204769135)
Part812.BottomSurface = Enum.SurfaceType.Smooth
Part812.BrickColor = BrickColor.new("Really red")
Part812.TopSurface = Enum.SurfaceType.Smooth
Part812.brickColor = BrickColor.new("Really red")
Part812.Shape = Enum.PartType.Cylinder
Part813.Parent = Model542
Part813.CFrame = CFrame.new(23.9193459, 13.5029068, 75.9544525, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part813.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part813.Position = Vector3.new(23.91934585571289, 13.502906799316406, 75.95445251464844)
Part813.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part813.Color = Color3.new(1, 0.690196, 0)
Part813.Size = Vector3.new(2.824998617172241, 2.0249998569488525, 0.9000000953674316)
Part813.BottomSurface = Enum.SurfaceType.Smooth
Part813.BrickColor = BrickColor.new("Deep orange")
Part813.TopSurface = Enum.SurfaceType.Smooth
Part813.brickColor = BrickColor.new("Deep orange")
Part814.Parent = Model542
Part814.CFrame = CFrame.new(32.3347626, 15.7236052, 71.6303177, -9.89999971e-05, -0.453989148, 0.891007304, 0, -0.891007304, -0.453989148, 1, -4.49449253e-05, 8.82097229e-05)
Part814.Orientation = Vector3.new(27, 89.98999786376953, 180)
Part814.Position = Vector3.new(32.33476257324219, 15.723605155944824, 71.63031768798828)
Part814.Rotation = Vector3.new(89.98999786376953, 63, 90.01000213623047)
Part814.Color = Color3.new(1, 0.690196, 0)
Part814.Size = Vector3.new(1.1659988164901733, 0.05552372708916664, 0.16657127439975739)
Part814.BottomSurface = Enum.SurfaceType.Smooth
Part814.BrickColor = BrickColor.new("Deep orange")
Part814.TopSurface = Enum.SurfaceType.Smooth
Part814.brickColor = BrickColor.new("Deep orange")
Part815.Parent = Model542
Part815.CFrame = CFrame.new(30.6820259, 14.5154076, 74.2801056, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part815.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part815.Position = Vector3.new(30.682025909423828, 14.51540756225586, 74.28010559082031)
Part815.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part815.Color = Color3.new(1, 0.690196, 0)
Part815.Size = Vector3.new(4, 1.25, 8.000003814697266)
Part815.BottomSurface = Enum.SurfaceType.Smooth
Part815.BrickColor = BrickColor.new("Deep orange")
Part815.TopSurface = Enum.SurfaceType.Smooth
Part815.brickColor = BrickColor.new("Deep orange")
Part816.Parent = Model542
Part816.CFrame = CFrame.new(31.7411156, 16.026104, 71.65802, -9.89789114e-05, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -2.56991952e-05, 9.55844298e-05)
Part816.Orientation = Vector3.new(15, 89.98999786376953, -180)
Part816.Position = Vector3.new(31.74111557006836, 16.026103973388672, 71.65802001953125)
Part816.Rotation = Vector3.new(89.9800033569336, 75, 90.0199966430664)
Part816.Color = Color3.new(1, 0.690196, 0)
Part816.Size = Vector3.new(1.1104754209518433, 0.05552372708916664, 0.16657127439975739)
Part816.BottomSurface = Enum.SurfaceType.Smooth
Part816.BrickColor = BrickColor.new("Deep orange")
Part816.TopSurface = Enum.SurfaceType.Smooth
Part816.brickColor = BrickColor.new("Deep orange")
Part817.Parent = Model542
Part817.CFrame = CFrame.new(26.9049301, 16.8817368, 71.1797867, -0.500000238, -0.866025388, -9.89999971e-05, 0.866025388, -0.500000238, 0, -4.95000204e-05, -8.57365085e-05, 1)
Part817.Orientation = Vector3.new(0, -0.009999999776482582, 120)
Part817.Position = Vector3.new(26.904930114746094, 16.881736755371094, 71.1797866821289)
Part817.Rotation = Vector3.new(0, -0.009999999776482582, 120)
Part817.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part817.Size = Vector3.new(0.2249997854232788, 0.14999999105930328, 0.14999984204769135)
Part817.BottomSurface = Enum.SurfaceType.Smooth
Part817.BrickColor = BrickColor.new("Really black")
Part817.TopSurface = Enum.SurfaceType.Smooth
Part817.brickColor = BrickColor.new("Really black")
Part817.Shape = Enum.PartType.Cylinder
Part818.Parent = Model542
Part818.CFrame = CFrame.new(32.3525429, 15.7584991, 71.6303177, -9.89999971e-05, -0.453989148, 0.891007304, 0, -0.891007304, -0.453989148, 1, -4.49449253e-05, 8.82097229e-05)
Part818.Orientation = Vector3.new(27, 89.98999786376953, 180)
Part818.Position = Vector3.new(32.352542877197266, 15.758499145507812, 71.63031768798828)
Part818.Rotation = Vector3.new(89.98999786376953, 63, 90.01000213623047)
Part818.Color = Color3.new(1, 0.690196, 0)
Part818.Size = Vector3.new(1.1659988164901733, 0.05552372708916664, 0.16657127439975739)
Part818.BottomSurface = Enum.SurfaceType.Smooth
Part818.BrickColor = BrickColor.new("Deep orange")
Part818.TopSurface = Enum.SurfaceType.Smooth
Part818.brickColor = BrickColor.new("Deep orange")
Part819.Parent = Model542
Part819.CFrame = CFrame.new(31.939003, 15.9252758, 71.6025162, -9.89789114e-05, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -2.56991952e-05, 9.55844298e-05)
Part819.Orientation = Vector3.new(15, 89.98999786376953, -180)
Part819.Position = Vector3.new(31.939002990722656, 15.925275802612305, 71.6025161743164)
Part819.Rotation = Vector3.new(89.9800033569336, 75, 90.0199966430664)
Part819.Color = Color3.new(1, 0.690196, 0)
Part819.Size = Vector3.new(1.1104754209518433, 0.05552372708916664, 0.16657127439975739)
Part819.BottomSurface = Enum.SurfaceType.Smooth
Part819.BrickColor = BrickColor.new("Deep orange")
Part819.TopSurface = Enum.SurfaceType.Smooth
Part819.brickColor = BrickColor.new("Deep orange")
Part820.Parent = Model542
Part820.CFrame = CFrame.new(30.182003, 15.6654739, 74.3301163, 9.89999971e-05, 0, 1, 0, 1, 0, -1, 0, 9.89999971e-05)
Part820.Orientation = Vector3.new(0, 89.98999786376953, 0)
Part820.Position = Vector3.new(30.182003021240234, 15.665473937988281, 74.33011627197266)
Part820.Rotation = Vector3.new(0, 90, 0)
Part820.Color = Color3.new(1, 0.690196, 0)
Part820.Size = Vector3.new(9.499996185302734, 0.24999992549419403, 0.5000000596046448)
Part820.BottomSurface = Enum.SurfaceType.Smooth
Part820.BrickColor = BrickColor.new("Deep orange")
Part820.TopSurface = Enum.SurfaceType.Smooth
Part820.brickColor = BrickColor.new("Deep orange")
Part820.Shape = Enum.PartType.Cylinder
Part821.Parent = Model542
Part821.CFrame = CFrame.new(21.4922028, 16.7062836, 70.3051453, 0, -1, -9.89999971e-05, 1, 0, 0, 0, -9.89999971e-05, 1)
Part821.Orientation = Vector3.new(0, -0.009999999776482582, 90)
Part821.Position = Vector3.new(21.492202758789062, 16.706283569335938, 70.30514526367188)
Part821.Rotation = Vector3.new(0, -0.009999999776482582, 90)
Part821.Color = Color3.new(1, 0.690196, 0)
Part821.Size = Vector3.new(1.3000017404556274, 0.19999992847442627, 0.19999992847442627)
Part821.BottomSurface = Enum.SurfaceType.Smooth
Part821.BrickColor = BrickColor.new("Deep orange")
Part821.TopSurface = Enum.SurfaceType.Smooth
Part821.brickColor = BrickColor.new("Deep orange")
Part822.Parent = Model542
Part822.CFrame = CFrame.new(31.3453217, 16.2277279, 71.6024628, -9.89789114e-05, -0.258819044, 0.965925813, -8.44439185e-08, -0.965925813, -0.258819044, 1, -2.56991952e-05, 9.55844298e-05)
Part822.Orientation = Vector3.new(15, 89.98999786376953, -180)
Part822.Position = Vector3.new(31.345321655273438, 16.22772789001465, 71.60246276855469)
Part822.Rotation = Vector3.new(89.9800033569336, 75, 90.0199966430664)
Part822.Color = Color3.new(1, 0.690196, 0)
Part822.Size = Vector3.new(1.1104754209518433, 0.05552372708916664, 0.16657127439975739)
Part822.BottomSurface = Enum.SurfaceType.Smooth
Part822.BrickColor = BrickColor.new("Deep orange")
Part822.TopSurface = Enum.SurfaceType.Smooth
Part822.brickColor = BrickColor.new("Deep orange")
Part823.Parent = Model542
Part823.CFrame = CFrame.new(29.9820194, 13.1904087, 74.2800598, 9.89999971e-05, 0, 1, 0, 1, 0, -1, 0, 9.89999971e-05)
Part823.Orientation = Vector3.new(0, 89.98999786376953, 0)
Part823.Position = Vector3.new(29.982019424438477, 13.190408706665039, 74.28005981445312)
Part823.Rotation = Vector3.new(0, 90, 0)
Part823.Size = Vector3.new(9, 5, 4)
Part823.BottomSurface = Enum.SurfaceType.Smooth
Part823.TopSurface = Enum.SurfaceType.Smooth
Part823.Shape = Enum.PartType.Cylinder
Part824.Parent = Model542
Part824.CFrame = CFrame.new(25.3820839, 13.2404099, 73.6920776, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part824.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part824.Position = Vector3.new(25.382083892822266, 13.240409851074219, 73.69207763671875)
Part824.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part824.Color = Color3.new(1, 0.690196, 0)
Part824.Size = Vector3.new(6.150000095367432, 1, 4.375)
Part824.BottomSurface = Enum.SurfaceType.Smooth
Part824.BrickColor = BrickColor.new("Deep orange")
Part824.TopSurface = Enum.SurfaceType.Smooth
Part824.brickColor = BrickColor.new("Deep orange")
Part825.Parent = Model542
Part825.CFrame = CFrame.new(27.5067806, 16.0654068, 76.6798401, 0, -1, -9.89999971e-05, 1, 0, 0, 0, -9.89999971e-05, 1)
Part825.Orientation = Vector3.new(0, -0.009999999776482582, 90)
Part825.Position = Vector3.new(27.50678062438965, 16.065406799316406, 76.67984008789062)
Part825.Rotation = Vector3.new(0, -0.009999999776482582, 90)
Part825.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part825.Size = Vector3.new(0.7499998807907104, 0.14999999105930328, 0.14999984204769135)
Part825.BottomSurface = Enum.SurfaceType.Smooth
Part825.BrickColor = BrickColor.new("Institutional white")
Part825.TopSurface = Enum.SurfaceType.Smooth
Part825.brickColor = BrickColor.new("Institutional white")
Part825.Shape = Enum.PartType.Cylinder
Part826.Parent = Model542
Part826.CFrame = CFrame.new(29.181675, 16.6904507, 77.7799683, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part826.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part826.Position = Vector3.new(29.18167495727539, 16.69045066833496, 77.77996826171875)
Part826.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part826.Color = Color3.new(1, 0.690196, 0)
Part826.Size = Vector3.new(2.2000012397766113, 0.09999995678663254, 0.3999996483325958)
Part826.BottomSurface = Enum.SurfaceType.Smooth
Part826.BrickColor = BrickColor.new("Deep orange")
Part826.TopSurface = Enum.SurfaceType.Smooth
Part826.brickColor = BrickColor.new("Deep orange")
Part827.Parent = Model542
Part827.CFrame = CFrame.new(29.1823559, 16.6904221, 70.8799973, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part827.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part827.Position = Vector3.new(29.182355880737305, 16.69042205810547, 70.87999725341797)
Part827.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part827.Color = Color3.new(1, 0.690196, 0)
Part827.Size = Vector3.new(2.2000012397766113, 0.09999995678663254, 0.3999996483325958)
Part827.BottomSurface = Enum.SurfaceType.Smooth
Part827.BrickColor = BrickColor.new("Deep orange")
Part827.TopSurface = Enum.SurfaceType.Smooth
Part827.brickColor = BrickColor.new("Deep orange")
Part828.Parent = Model542
Part828.CFrame = CFrame.new(31.6421165, 16.076519, 72.1299667, -0.891006887, -0.453989953, -9.89999971e-05, 0.453989953, -0.891006887, 0, -8.82096792e-05, -4.49450054e-05, 1)
Part828.Orientation = Vector3.new(0, -0.009999999776482582, 153)
Part828.Position = Vector3.new(31.64211654663086, 16.076519012451172, 72.12996673583984)
Part828.Rotation = Vector3.new(0, -0.009999999776482582, 153)
Part828.Color = Color3.new(1, 0.690196, 0)
Part828.Size = Vector3.new(1.7212358713150024, 0.05552372708916664, 0.16657127439975739)
Part828.BottomSurface = Enum.SurfaceType.Smooth
Part828.BrickColor = BrickColor.new("Deep orange")
Part828.TopSurface = Enum.SurfaceType.Smooth
Part828.brickColor = BrickColor.new("Deep orange")
Part829.Parent = Model542
Part829.CFrame = CFrame.new(21.4918079, 16.1562843, 73.80513, -9.89999971e-05, -1, 0, 0, 0, -1, 1, -9.89999971e-05, 0)
Part829.Orientation = Vector3.new(90, -90.01000213623047, 0)
Part829.Position = Vector3.new(21.49180793762207, 16.15628433227539, 73.80513000488281)
Part829.Rotation = Vector3.new(90, 0, 90.01000213623047)
Part829.Color = Color3.new(1, 0.690196, 0)
Part829.Size = Vector3.new(6.850000858306885, 0.19999992847442627, 0.19999992847442627)
Part829.BottomSurface = Enum.SurfaceType.Smooth
Part829.BrickColor = BrickColor.new("Deep orange")
Part829.TopSurface = Enum.SurfaceType.Smooth
Part829.brickColor = BrickColor.new("Deep orange")
WedgePart830.Parent = Model542
WedgePart830.CFrame = CFrame.new(31.2070217, 16.0654659, 74.2801819, -9.89999971e-05, 0, -1, 0, 1, 0, 1, 0, -9.89999971e-05)
WedgePart830.Orientation = Vector3.new(0, -90.01000213623047, 0)
WedgePart830.Position = Vector3.new(31.207021713256836, 16.065465927124023, 74.28018188476562)
WedgePart830.Rotation = Vector3.new(0, -90, 0)
WedgePart830.Color = Color3.new(1, 0.690196, 0)
WedgePart830.Size = Vector3.new(9.300002098083496, 0.6000000238418579, 0.9000000953674316)
WedgePart830.BottomSurface = Enum.SurfaceType.Smooth
WedgePart830.BrickColor = BrickColor.new("Deep orange")
WedgePart830.brickColor = BrickColor.new("Deep orange")
WedgePart831.Parent = Model542
WedgePart831.CFrame = CFrame.new(27.1317234, 15.0904112, 77.2797852, -9.89999971e-05, -1, 0, 0, 0, -1, 1, -9.89999971e-05, 0)
WedgePart831.Orientation = Vector3.new(90, -90.01000213623047, 0)
WedgePart831.Position = Vector3.new(27.131723403930664, 15.090411186218262, 77.27978515625)
WedgePart831.Rotation = Vector3.new(90, 0, 90.01000213623047)
WedgePart831.Color = Color3.new(1, 0.690196, 0)
WedgePart831.Size = Vector3.new(2.000000476837158, 0.19999992847442627, 0.7999997138977051)
WedgePart831.BottomSurface = Enum.SurfaceType.Smooth
WedgePart831.BrickColor = BrickColor.new("Deep orange")
WedgePart831.brickColor = BrickColor.new("Deep orange")
WedgePart832.Parent = Model542
WedgePart832.CFrame = CFrame.new(25.8072834, 13.4779081, 71.72966, -9.89999971e-05, 1, 0, 0, 0, 1, 1, 9.89999971e-05, 0)
WedgePart832.Orientation = Vector3.new(-90, -90.01000213623047, 0)
WedgePart832.Position = Vector3.new(25.807283401489258, 13.47790813446045, 71.72966003417969)
WedgePart832.Rotation = Vector3.new(-90, 0, -90.01000213623047)
WedgePart832.Color = Color3.new(1, 0.690196, 0)
WedgePart832.Size = Vector3.new(0.8999998569488525, 0.5999999642372131, 2.5250000953674316)
WedgePart832.BottomSurface = Enum.SurfaceType.Smooth
WedgePart832.BrickColor = BrickColor.new("Deep orange")
WedgePart832.brickColor = BrickColor.new("Deep orange")
WedgePart833.Parent = Model542
WedgePart833.CFrame = CFrame.new(31.0067444, 15.0654106, 77.030159, 9.89999971e-05, 0, -1, 0, -1, 0, -1, 0, -9.89999971e-05)
WedgePart833.Orientation = Vector3.new(0, -90.01000213623047, 180)
WedgePart833.Position = Vector3.new(31.006744384765625, 15.065410614013672, 77.03015899658203)
WedgePart833.Rotation = Vector3.new(-180, -90, 0)
WedgePart833.Color = Color3.new(1, 0.690196, 0)
WedgePart833.Size = Vector3.new(4, 1.5499998331069946, 0.8500003814697266)
WedgePart833.BottomSurface = Enum.SurfaceType.Smooth
WedgePart833.BrickColor = BrickColor.new("Deep orange")
WedgePart833.brickColor = BrickColor.new("Deep orange")
WedgePart834.Parent = Model542
WedgePart834.CFrame = CFrame.new(25.8568878, 13.4779053, 75.7546692, -9.89999971e-05, 1, 0, 0, 0, 1, 1, 9.89999971e-05, 0)
WedgePart834.Orientation = Vector3.new(-90, -90.01000213623047, 0)
WedgePart834.Position = Vector3.new(25.856887817382812, 13.4779052734375, 75.75466918945312)
WedgePart834.Rotation = Vector3.new(-90, 0, -90.01000213623047)
WedgePart834.Color = Color3.new(1, 0.690196, 0)
WedgePart834.Size = Vector3.new(0.8999998569488525, 0.5999999642372131, 2.5250000953674316)
WedgePart834.BottomSurface = Enum.SurfaceType.Smooth
WedgePart834.BrickColor = BrickColor.new("Deep orange")
WedgePart834.brickColor = BrickColor.new("Deep orange")
Part835.Parent = Model542
Part835.CFrame = CFrame.new(18.0010281, 17.4747639, 76.1989975, -0.173647955, -9.89999971e-05, 0.984807789, 0.984807789, 0, 0.173647955, -1.7191147e-05, 1, 9.74959694e-05)
Part835.Orientation = Vector3.new(-10, 89.98999786376953, 90)
Part835.Position = Vector3.new(18.001028060913086, 17.474763870239258, 76.1989974975586)
Part835.Rotation = Vector3.new(-89.97000122070312, 80, 179.97000122070312)
Part835.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part835.Size = Vector3.new(1.7646698951721191, 0.34666702151298523, 0.25999993085861206)
Part835.BottomSurface = Enum.SurfaceType.Smooth
Part835.BrickColor = BrickColor.new("Fossil")
Part835.TopSurface = Enum.SurfaceType.Smooth
Part835.brickColor = BrickColor.new("Fossil")
Part835.Shape = Enum.PartType.Cylinder
Part836.Parent = Model542
Part836.CFrame = CFrame.new(18.6414719, 18.2568722, 71.4407043, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part836.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part836.Position = Vector3.new(18.64147186279297, 18.256872177124023, 71.44070434570312)
Part836.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part836.Color = Color3.new(1, 0.690196, 0)
Part836.Size = Vector3.new(3.2900006771087646, 0.2600001394748688, 2)
Part836.BottomSurface = Enum.SurfaceType.Smooth
Part836.BrickColor = BrickColor.new("Deep orange")
Part836.TopSurface = Enum.SurfaceType.Smooth
Part836.brickColor = BrickColor.new("Deep orange")
Part837.Parent = Model542
Part837.CFrame = CFrame.new(18.6410007, 18.2389889, 76.2127151, 1, 0, -9.89999971e-05, 0, 1, 0, 9.89999971e-05, 0, 1)
Part837.Orientation = Vector3.new(0, -0.009999999776482582, 0)
Part837.Position = Vector3.new(18.641000747680664, 18.238988876342773, 76.21271514892578)
Part837.Rotation = Vector3.new(0, -0.009999999776482582, 0)
Part837.Color = Color3.new(1, 0.690196, 0)
Part837.Size = Vector3.new(3.2900006771087646, 0.2600001394748688, 2)
Part837.BottomSurface = Enum.SurfaceType.Smooth
Part837.BrickColor = BrickColor.new("Deep orange")
Part837.TopSurface = Enum.SurfaceType.Smooth
Part837.brickColor = BrickColor.new("Deep orange")
WedgePart838.Parent = Model542
WedgePart838.CFrame = CFrame.new(31.4820175, 16.1404076, 74.2802124, -9.89999971e-05, 0, -1, 0, 1, 0, 1, 0, -9.89999971e-05)
WedgePart838.Orientation = Vector3.new(0, -90.01000213623047, 0)
WedgePart838.Position = Vector3.new(31.482017517089844, 16.14040756225586, 74.28021240234375)
WedgePart838.Rotation = Vector3.new(0, -90, 0)
WedgePart838.Color = Color3.new(1, 0.690196, 0)
WedgePart838.Size = Vector3.new(8, 1, 2)
WedgePart838.BottomSurface = Enum.SurfaceType.Smooth
WedgePart838.BrickColor = BrickColor.new("Deep orange")
WedgePart838.brickColor = BrickColor.new("Deep orange")
WedgePart839.Parent = Model542
WedgePart839.CFrame = CFrame.new(21.8259945, 15.898427, 73.7801895, -9.89999971e-05, 0, -1, 0, 1, 0, 1, 0, -9.89999971e-05)
WedgePart839.Orientation = Vector3.new(0, -90.01000213623047, 0)
WedgePart839.Position = Vector3.new(21.82599449157715, 15.89842700958252, 73.78018951416016)
WedgePart839.Rotation = Vector3.new(0, -90, 0)
WedgePart839.Color = Color3.new(1, 0.690196, 0)
WedgePart839.Size = Vector3.new(7.499997615814209, 0.6999999284744263, 1.049999713897705)
WedgePart839.BottomSurface = Enum.SurfaceType.Smooth
WedgePart839.BrickColor = BrickColor.new("Deep orange")
WedgePart839.brickColor = BrickColor.new("Deep orange")
Part840.Parent = Model542
Part840.CFrame = CFrame.new(18.4046841, 17.5433769, 71.4284744, -0.173647955, -9.89999971e-05, 0.984807789, 0.984807789, 0, 0.173647955, -1.7191147e-05, 1, 9.74959694e-05)
Part840.Orientation = Vector3.new(-10, 89.98999786376953, 90)
Part840.Position = Vector3.new(18.40468406677246, 17.543376922607422, 71.42847442626953)
Part840.Rotation = Vector3.new(-89.97000122070312, 80, 179.97000122070312)
Part840.Color = Color3.new(0.623529, 0.631373, 0.67451)
Part840.Size = Vector3.new(1.7646698951721191, 0.34666702151298523, 0.25999993085861206)
Part840.BottomSurface = Enum.SurfaceType.Smooth
Part840.BrickColor = BrickColor.new("Fossil")
Part840.TopSurface = Enum.SurfaceType.Smooth
Part840.brickColor = BrickColor.new("Fossil")
Part840.Shape = Enum.PartType.Cylinder
WedgePart841.Parent = Model542
WedgePart841.CFrame = CFrame.new(27.5821209, 15.9904289, 73.2798233, 9.89999971e-05, 0, 1, 0, 1, 0, -1, 0, 9.89999971e-05)
WedgePart841.Orientation = Vector3.new(0, 89.98999786376953, 0)
WedgePart841.Position = Vector3.new(27.582120895385742, 15.990428924560547, 73.27982330322266)
WedgePart841.Rotation = Vector3.new(0, 90, 0)
WedgePart841.Color = Color3.new(1, 0.690196, 0)
WedgePart841.Size = Vector3.new(5.999999523162842, 0.49999991059303284, 0.5999996662139893)
WedgePart841.BottomSurface = Enum.SurfaceType.Smooth
WedgePart841.BrickColor = BrickColor.new("Deep orange")
WedgePart841.brickColor = BrickColor.new("Deep orange")
Part842.Parent = Model542
Part842.CFrame = CFrame.new(29.7787933, 13.7567348, 78.8249817, -0.258818984, 9.89999971e-05, -0.965925872, 0.965925872, 0, -0.258818984, -2.56230778e-05, -1, -9.56266595e-05)
Part842.Orientation = Vector3.new(15, -90.01000213623047, 90)
Part842.Position = Vector3.new(29.778793334960938, 13.756734848022461, 78.82498168945312)
Part842.Rotation = Vector3.new(90.0199966430664, -75, -179.97999572753906)
Part842.Color = Color3.new(1, 0.690196, 0)
Part842.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part842.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part842.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part842.BrickColor = BrickColor.new("Deep orange")
Part842.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part842.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part842.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part842.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part842.brickColor = BrickColor.new("Deep orange")
Part842.FormFactor = Enum.FormFactor.Custom
Part842.formFactor = Enum.FormFactor.Custom
Part843.Parent = Model542
Part843.CFrame = CFrame.new(18.0956192, 19.4559574, 76.1928482, 0.258819908, -0.965925634, 9.89999971e-05, -0.965925634, -0.258819908, 0, 2.56231706e-05, -9.56266376e-05, -1)
Part843.Orientation = Vector3.new(0, 179.99000549316406, -105)
Part843.Position = Vector3.new(18.095619201660156, 19.455957412719727, 76.1928482055664)
Part843.Rotation = Vector3.new(-180, 0.009999999776482582, 75)
Part843.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part843.Material = Enum.Material.SmoothPlastic
Part843.FormFactor = Enum.FormFactor.Custom
Part843.formFactor = Enum.FormFactor.Custom
CylinderMesh844.Parent = Part843
Part845.Parent = Model542
Part845.CFrame = CFrame.new(18.3916321, 19.5084667, 76.1928787, 0.173647955, -0.984807789, 9.89999971e-05, -0.984807789, -0.173647955, 0, 1.7191147e-05, -9.74959694e-05, -1)
Part845.Orientation = Vector3.new(0, 179.99000549316406, -100)
Part845.Position = Vector3.new(18.391632080078125, 19.508466720581055, 76.19287872314453)
Part845.Rotation = Vector3.new(-180, 0.009999999776482582, 80)
Part845.Size = Vector3.new(0.25684136152267456, 0.5939453840255737, 0.6421034932136536)
Part845.Material = Enum.Material.SmoothPlastic
Part845.FormFactor = Enum.FormFactor.Custom
Part845.formFactor = Enum.FormFactor.Custom
CylinderMesh846.Parent = Part845
Part847.Parent = Model542
Part847.CFrame = CFrame.new(17.9817467, 19.4238319, 76.1928406, 0.342019022, -0.939693093, 9.89999971e-05, -0.939693093, -0.342018992, 0, 3.38598838e-05, -9.30296155e-05, -1)
Part847.Orientation = Vector3.new(0, 179.99000549316406, -110)
Part847.Position = Vector3.new(17.981746673583984, 19.423831939697266, 76.19284057617188)
Part847.Rotation = Vector3.new(-180, 0.009999999776482582, 70)
Part847.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part847.Material = Enum.Material.SmoothPlastic
Part847.FormFactor = Enum.FormFactor.Custom
Part847.formFactor = Enum.FormFactor.Custom
CylinderMesh848.Parent = Part847
Part849.Parent = Model542
Part849.CFrame = CFrame.new(17.7882919, 19.244772, 76.1928177, -0.906306982, 0.422619998, 9.89999971e-05, 0.422619998, 0.906306982, 0, -8.97243881e-05, 4.18393793e-05, -1)
Part849.Orientation = Vector3.new(0, 179.99000549316406, 25)
Part849.Position = Vector3.new(17.788291931152344, 19.24477195739746, 76.19281768798828)
Part849.Rotation = Vector3.new(-180, 0.009999999776482582, -155)
Part849.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part849.Material = Enum.Material.SmoothPlastic
Part849.FormFactor = Enum.FormFactor.Custom
Part849.formFactor = Enum.FormFactor.Custom
CylinderMesh850.Parent = Part849
Part851.Parent = Model542
Part851.CFrame = CFrame.new(17.8341599, 19.3130589, 76.1928329, -0.76604414, 0.642788053, 9.89999971e-05, 0.642788053, 0.76604414, 0, -7.58383685e-05, 6.36360128e-05, -1)
Part851.Orientation = Vector3.new(0, 179.99000549316406, 40)
Part851.Position = Vector3.new(17.83415985107422, 19.313058853149414, 76.19283294677734)
Part851.Rotation = Vector3.new(-180, 0.009999999776482582, -140)
Part851.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part851.Material = Enum.Material.SmoothPlastic
Part851.FormFactor = Enum.FormFactor.Custom
Part851.formFactor = Enum.FormFactor.Custom
CylinderMesh852.Parent = Part851
Part853.Parent = Model542
Part853.CFrame = CFrame.new(17.7608604, 19.1521034, 76.1928177, -0.984807789, 0.173647955, 9.89999971e-05, 0.173647955, 0.984807789, 0, -9.74959694e-05, 1.7191147e-05, -1)
Part853.Orientation = Vector3.new(0, 179.99000549316406, 10)
Part853.Position = Vector3.new(17.760860443115234, 19.152103424072266, 76.19281768798828)
Part853.Rotation = Vector3.new(-180, 0.009999999776482582, -170)
Part853.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part853.Material = Enum.Material.SmoothPlastic
Part853.FormFactor = Enum.FormFactor.Custom
Part853.formFactor = Enum.FormFactor.Custom
CylinderMesh854.Parent = Part853
Part855.Parent = Model542
Part855.CFrame = CFrame.new(17.9028778, 19.3814487, 76.1928253, -0.573576152, 0.819152296, 9.89999971e-05, 0.819152296, 0.573576152, 0, -5.67840361e-05, 8.10960773e-05, -1)
Part855.Orientation = Vector3.new(0, 179.99000549316406, 55)
Part855.Position = Vector3.new(17.902877807617188, 19.38144874572754, 76.19282531738281)
Part855.Rotation = Vector3.new(-180, 0.009999999776482582, -125)
Part855.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part855.Material = Enum.Material.SmoothPlastic
Part855.FormFactor = Enum.FormFactor.Custom
Part855.formFactor = Enum.FormFactor.Custom
CylinderMesh856.Parent = Part855
Part857.Parent = Model542
Part857.CFrame = CFrame.new(18.5120201, 19.5413418, 71.4176331, 0.258819908, -0.965925634, 9.89999971e-05, -0.965925634, -0.258819908, 0, 2.56231706e-05, -9.56266376e-05, -1)
Part857.Orientation = Vector3.new(0, 179.99000549316406, -105)
Part857.Position = Vector3.new(18.512020111083984, 19.54134178161621, 71.41763305664062)
Part857.Rotation = Vector3.new(-180, 0.009999999776482582, 75)
Part857.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part857.Material = Enum.Material.SmoothPlastic
Part857.FormFactor = Enum.FormFactor.Custom
Part857.formFactor = Enum.FormFactor.Custom
CylinderMesh858.Parent = Part857
Part859.Parent = Model542
Part859.CFrame = CFrame.new(18.808033, 19.5938549, 71.4176712, 0.173647955, -0.984807789, 9.89999971e-05, -0.984807789, -0.173647955, 0, 1.7191147e-05, -9.74959694e-05, -1)
Part859.Orientation = Vector3.new(0, 179.99000549316406, -100)
Part859.Position = Vector3.new(18.808032989501953, 19.593854904174805, 71.41767120361328)
Part859.Rotation = Vector3.new(-180, 0.009999999776482582, 80)
Part859.Size = Vector3.new(0.25684136152267456, 0.5939453840255737, 0.6421034932136536)
Part859.Material = Enum.Material.SmoothPlastic
Part859.FormFactor = Enum.FormFactor.Custom
Part859.formFactor = Enum.FormFactor.Custom
CylinderMesh860.Parent = Part859
Part861.Parent = Model542
Part861.CFrame = CFrame.new(18.3981457, 19.5092182, 71.4176254, 0.342019022, -0.939693093, 9.89999971e-05, -0.939693093, -0.342018992, 0, 3.38598838e-05, -9.30296155e-05, -1)
Part861.Orientation = Vector3.new(0, 179.99000549316406, -110)
Part861.Position = Vector3.new(18.39814567565918, 19.509218215942383, 71.4176254272461)
Part861.Rotation = Vector3.new(-180, 0.009999999776482582, 70)
Part861.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part861.Material = Enum.Material.SmoothPlastic
Part861.FormFactor = Enum.FormFactor.Custom
Part861.formFactor = Enum.FormFactor.Custom
CylinderMesh862.Parent = Part861
Part863.Parent = Model542
Part863.CFrame = CFrame.new(18.2046928, 19.3301582, 71.4176025, -0.906306982, 0.422619998, 9.89999971e-05, 0.422619998, 0.906306982, 0, -8.97243881e-05, 4.18393793e-05, -1)
Part863.Orientation = Vector3.new(0, 179.99000549316406, 25)
Part863.Position = Vector3.new(18.204692840576172, 19.330158233642578, 71.4176025390625)
Part863.Rotation = Vector3.new(-180, 0.009999999776482582, -155)
Part863.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part863.Material = Enum.Material.SmoothPlastic
Part863.FormFactor = Enum.FormFactor.Custom
Part863.formFactor = Enum.FormFactor.Custom
CylinderMesh864.Parent = Part863
Part865.Parent = Model542
Part865.CFrame = CFrame.new(18.2505608, 19.3984394, 71.4176102, -0.76604414, 0.642788053, 9.89999971e-05, 0.642788053, 0.76604414, 0, -7.58383685e-05, 6.36360128e-05, -1)
Part865.Orientation = Vector3.new(0, 179.99000549316406, 40)
Part865.Position = Vector3.new(18.250560760498047, 19.398439407348633, 71.41761016845703)
Part865.Rotation = Vector3.new(-180, 0.009999999776482582, -140)
Part865.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part865.Material = Enum.Material.SmoothPlastic
Part865.FormFactor = Enum.FormFactor.Custom
Part865.formFactor = Enum.FormFactor.Custom
CylinderMesh866.Parent = Part865
Part867.Parent = Model542
Part867.CFrame = CFrame.new(18.1772594, 19.2374878, 71.4176025, -0.984807789, 0.173647955, 9.89999971e-05, 0.173647955, 0.984807789, 0, -9.74959694e-05, 1.7191147e-05, -1)
Part867.Orientation = Vector3.new(0, 179.99000549316406, 10)
Part867.Position = Vector3.new(18.17725944519043, 19.23748779296875, 71.4176025390625)
Part867.Rotation = Vector3.new(-180, 0.009999999776482582, -170)
Part867.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part867.Material = Enum.Material.SmoothPlastic
Part867.FormFactor = Enum.FormFactor.Custom
Part867.formFactor = Enum.FormFactor.Custom
CylinderMesh868.Parent = Part867
Part869.Parent = Model542
Part869.CFrame = CFrame.new(18.3192787, 19.4668388, 71.4176102, -0.573576152, 0.819152296, 9.89999971e-05, 0.819152296, 0.573576152, 0, -5.67840361e-05, 8.10960773e-05, -1)
Part869.Orientation = Vector3.new(0, 179.99000549316406, 55)
Part869.Position = Vector3.new(18.319278717041016, 19.466838836669922, 71.41761016845703)
Part869.Rotation = Vector3.new(-180, 0.009999999776482582, -125)
Part869.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part869.Material = Enum.Material.SmoothPlastic
Part869.FormFactor = Enum.FormFactor.Custom
Part869.formFactor = Enum.FormFactor.Custom
CylinderMesh870.Parent = Part869
Part871.Parent = Model542
Part871.CFrame = CFrame.new(18.3028984, 19.5039349, 73.7193451, 0.258819908, -0.965925634, 9.89999971e-05, -0.965925634, -0.258819908, 0, 2.56231706e-05, -9.56266376e-05, -1)
Part871.Orientation = Vector3.new(0, 179.99000549316406, -105)
Part871.Position = Vector3.new(18.302898406982422, 19.503934860229492, 73.71934509277344)
Part871.Rotation = Vector3.new(-180, 0.009999999776482582, 75)
Part871.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part871.Material = Enum.Material.SmoothPlastic
Part871.FormFactor = Enum.FormFactor.Custom
Part871.formFactor = Enum.FormFactor.Custom
CylinderMesh872.Parent = Part871
Part873.Parent = Model542
Part873.CFrame = CFrame.new(18.5989113, 19.556448, 73.7193756, 0.173647955, -0.984807789, 9.89999971e-05, -0.984807789, -0.173647955, 0, 1.7191147e-05, -9.74959694e-05, -1)
Part873.Orientation = Vector3.new(0, 179.99000549316406, -100)
Part873.Position = Vector3.new(18.59891128540039, 19.556447982788086, 73.71937561035156)
Part873.Rotation = Vector3.new(-180, 0.009999999776482582, 80)
Part873.Size = Vector3.new(0.25684136152267456, 0.5939453840255737, 0.6421034932136536)
Part873.Material = Enum.Material.SmoothPlastic
Part873.FormFactor = Enum.FormFactor.Custom
Part873.formFactor = Enum.FormFactor.Custom
CylinderMesh874.Parent = Part873
Part875.Parent = Model542
Part875.CFrame = CFrame.new(18.1890259, 19.4718113, 73.7193375, 0.342019022, -0.939693093, 9.89999971e-05, -0.939693093, -0.342018992, 0, 3.38598838e-05, -9.30296155e-05, -1)
Part875.Orientation = Vector3.new(0, 179.99000549316406, -110)
Part875.Position = Vector3.new(18.18902587890625, 19.471811294555664, 73.7193374633789)
Part875.Rotation = Vector3.new(-180, 0.009999999776482582, 70)
Part875.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part875.Material = Enum.Material.SmoothPlastic
Part875.FormFactor = Enum.FormFactor.Custom
Part875.formFactor = Enum.FormFactor.Custom
CylinderMesh876.Parent = Part875
Part877.Parent = Model542
Part877.CFrame = CFrame.new(17.9955711, 19.2927513, 73.7193146, -0.906306982, 0.422619998, 9.89999971e-05, 0.422619998, 0.906306982, 0, -8.97243881e-05, 4.18393793e-05, -1)
Part877.Orientation = Vector3.new(0, 179.99000549316406, 25)
Part877.Position = Vector3.new(17.99557113647461, 19.29275131225586, 73.71931457519531)
Part877.Rotation = Vector3.new(-180, 0.009999999776482582, -155)
Part877.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part877.Material = Enum.Material.SmoothPlastic
Part877.FormFactor = Enum.FormFactor.Custom
Part877.formFactor = Enum.FormFactor.Custom
CylinderMesh878.Parent = Part877
Part879.Parent = Model542
Part879.CFrame = CFrame.new(18.0414391, 19.3610268, 73.7193222, -0.76604414, 0.642788053, 9.89999971e-05, 0.642788053, 0.76604414, 0, -7.58383685e-05, 6.36360128e-05, -1)
Part879.Orientation = Vector3.new(0, 179.99000549316406, 40)
Part879.Position = Vector3.new(18.041439056396484, 19.361026763916016, 73.71932220458984)
Part879.Rotation = Vector3.new(-180, 0.009999999776482582, -140)
Part879.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part879.Material = Enum.Material.SmoothPlastic
Part879.FormFactor = Enum.FormFactor.Custom
Part879.formFactor = Enum.FormFactor.Custom
CylinderMesh880.Parent = Part879
Part881.Parent = Model542
Part881.CFrame = CFrame.new(17.9681396, 19.2000809, 73.7193146, -0.984807789, 0.173647955, 9.89999971e-05, 0.173647955, 0.984807789, 0, -9.74959694e-05, 1.7191147e-05, -1)
Part881.Orientation = Vector3.new(0, 179.99000549316406, 10)
Part881.Position = Vector3.new(17.9681396484375, 19.20008087158203, 73.71931457519531)
Part881.Rotation = Vector3.new(-180, 0.009999999776482582, -170)
Part881.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part881.Material = Enum.Material.SmoothPlastic
Part881.FormFactor = Enum.FormFactor.Custom
Part881.formFactor = Enum.FormFactor.Custom
CylinderMesh882.Parent = Part881
Part883.Parent = Model542
Part883.CFrame = CFrame.new(18.110157, 19.42943, 73.7193222, -0.573576152, 0.819152296, 9.89999971e-05, 0.819152296, 0.573576152, 0, -5.67840361e-05, 8.10960773e-05, -1)
Part883.Orientation = Vector3.new(0, 179.99000549316406, 55)
Part883.Position = Vector3.new(18.110157012939453, 19.42943000793457, 73.71932220458984)
Part883.Rotation = Vector3.new(-180, 0.009999999776482582, -125)
Part883.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part883.Material = Enum.Material.SmoothPlastic
Part883.FormFactor = Enum.FormFactor.Custom
Part883.formFactor = Enum.FormFactor.Custom
CylinderMesh884.Parent = Part883
MeshPart885.Parent = Model542
MeshPart885.CFrame = CFrame.new(26.8076744, 16.8364639, 73.5948029, -9.89999971e-05, 0.500000238, -0.866025388, 0, 0.866025388, 0.500000238, 1, 4.95000204e-05, -8.57365085e-05)
MeshPart885.Orientation = Vector3.new(-30, -90.01000213623047, 0)
MeshPart885.Position = Vector3.new(26.807674407958984, 16.836463928222656, 73.59480285644531)
MeshPart885.Rotation = Vector3.new(-90.01000213623047, -60, -90.01000213623047)
MeshPart885.Size = Vector3.new(1.329833984375, 1.2089849710464478, 0.552001953125)
MeshPart885.TextureID = "rbxassetid://2379579911"
Part886.Parent = Model542
Part886.CFrame = CFrame.new(20.4864216, 19.857748, 76.7770691, 0.172994718, 0.0150344148, -0.984808087, -0.981060505, -0.0858332142, -0.173646748, -0.0871399194, 0.996196151, -9.90229382e-05)
Part886.Orientation = Vector3.new(10, -90.01000213623047, -95)
Part886.Position = Vector3.new(20.486421585083008, 19.85774803161621, 76.77706909179688)
Part886.Rotation = Vector3.new(90.02999877929688, -80, -4.96999979019165)
Part886.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part886.Material = Enum.Material.SmoothPlastic
Part886.FormFactor = Enum.FormFactor.Custom
Part886.formFactor = Enum.FormFactor.Custom
CylinderMesh887.Parent = Part886
Part888.Parent = Model542
Part888.CFrame = CFrame.new(20.4863987, 19.858057, 76.4764328, 0.173647955, -9.89999971e-05, -0.984807789, -0.984807789, 0, -0.173647955, 1.7191147e-05, 1, -9.74959694e-05)
Part888.Orientation = Vector3.new(10, -90.01000213623047, -90)
Part888.Position = Vector3.new(20.486398696899414, 19.858057022094727, 76.47643280029297)
Part888.Rotation = Vector3.new(90.02999877929688, -80, 0.029999999329447746)
Part888.Size = Vector3.new(0.25684136152267456, 0.5939453840255737, 0.6421034932136536)
Part888.Material = Enum.Material.SmoothPlastic
Part888.FormFactor = Enum.FormFactor.Custom
Part888.formFactor = Enum.FormFactor.Custom
CylinderMesh889.Parent = Part888
Part890.Parent = Model542
Part890.CFrame = CFrame.new(20.488472, 19.8460579, 76.894783, 0.171028256, 0.0300555136, -0.98480767, -0.969846368, -0.171009064, -0.173649028, -0.173630133, 0.984811008, -9.81485209e-05)
Part890.Orientation = Vector3.new(10, -90.01000213623047, -100)
Part890.Position = Vector3.new(20.48847198486328, 19.846057891845703, 76.89478302001953)
Part890.Rotation = Vector3.new(90.02999877929688, -80, -9.970000267028809)
Part890.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part890.Material = Enum.Material.SmoothPlastic
Part890.FormFactor = Enum.FormFactor.Custom
Part890.formFactor = Enum.FormFactor.Custom
CylinderMesh891.Parent = Part890
Part892.Parent = Model542
Part892.CFrame = CFrame.new(20.513237, 19.7054787, 77.1164017, -0.0996821597, -0.142189085, -0.984807491, 0.564863384, 0.806706369, -0.173649818, 0.819141626, -0.573591411, -9.68243985e-05)
Part892.Orientation = Vector3.new(10, -90.01000213623047, 35)
Part892.Position = Vector3.new(20.51323699951172, 19.70547866821289, 77.11640167236328)
Part892.Rotation = Vector3.new(90.02999877929688, -80, 125.02999877929688)
Part892.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part892.Material = Enum.Material.SmoothPlastic
Part892.FormFactor = Enum.FormFactor.Custom
Part892.formFactor = Enum.FormFactor.Custom
CylinderMesh893.Parent = Part892
Part894.Parent = Model542
Part894.CFrame = CFrame.new(20.5029488, 19.7638664, 77.0593719, -0.133085653, -0.111543089, -0.984807789, 0.754407108, 0.633021593, -0.17364803, 0.642773867, -0.766056061, -9.71928821e-05)
Part894.Orientation = Vector3.new(10, -90.01000213623047, 50)
Part894.Position = Vector3.new(20.502948760986328, 19.763866424560547, 77.05937194824219)
Part894.Rotation = Vector3.new(90.02999877929688, -80, 140.02999877929688)
Part894.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part894.Material = Enum.Material.SmoothPlastic
Part894.FormFactor = Enum.FormFactor.Custom
Part894.formFactor = Enum.FormFactor.Custom
CylinderMesh895.Parent = Part894
Part896.Parent = Model542
Part896.CFrame = CFrame.new(20.5282555, 19.620306, 77.1595001, -0.0594850294, -0.163141176, -0.984807909, 0.336822987, 0.925417185, -0.173647612, 0.939687073, -0.342035413, -9.87787498e-05)
Part896.Orientation = Vector3.new(10, -90.01000213623047, 20)
Part896.Position = Vector3.new(20.528255462646484, 19.62030601501465, 77.15950012207031)
Part896.Rotation = Vector3.new(90.02999877929688, -80, 110.02999877929688)
Part896.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part896.Material = Enum.Material.SmoothPlastic
Part896.FormFactor = Enum.FormFactor.Custom
Part896.formFactor = Enum.FormFactor.Custom
CylinderMesh897.Parent = Part896
Part898.Parent = Model542
Part898.CFrame = CFrame.new(20.49333, 19.8184528, 76.9798203, -0.157419801, -0.0732981339, -0.984807789, 0.892538786, 0.416198194, -0.173647925, 0.422603309, -0.90631479, -9.64035717e-05)
Part898.Orientation = Vector3.new(10, -90.01000213623047, 65)
Part898.Position = Vector3.new(20.493330001831055, 19.818452835083008, 76.97982025146484)
Part898.Rotation = Vector3.new(90.02999877929688, -80, 155.02999877929688)
Part898.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part898.Material = Enum.Material.SmoothPlastic
Part898.FormFactor = Enum.FormFactor.Custom
Part898.formFactor = Enum.FormFactor.Custom
CylinderMesh899.Parent = Part898
Part900.Parent = Model542
Part900.CFrame = CFrame.new(20.4776764, 19.8693027, 70.8230743, 0.172978386, 0.0152336024, 0.984807789, -0.981060147, -0.0858338699, 0.173647836, 0.0871751383, -0.996193111, 9.76755837e-05)
Part900.Orientation = Vector3.new(-10, 89.98999786376953, -95)
Part900.Position = Vector3.new(20.477676391601562, 19.86930274963379, 70.82307434082031)
Part900.Rotation = Vector3.new(-89.97000122070312, 80, -5.03000020980835)
Part900.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part900.Material = Enum.Material.SmoothPlastic
Part900.FormFactor = Enum.FormFactor.Custom
Part900.formFactor = Enum.FormFactor.Custom
CylinderMesh901.Parent = Part900
Part902.Parent = Model542
Part902.CFrame = CFrame.new(20.4775944, 19.8696098, 71.1237106, 0.173647955, 9.89999971e-05, 0.984807789, -0.984807789, 0, 0.173647955, 1.7191147e-05, -1, 9.74959694e-05)
Part902.Orientation = Vector3.new(-10, 89.98999786376953, -90)
Part902.Position = Vector3.new(20.47759437561035, 19.869609832763672, 71.12371063232422)
Part902.Rotation = Vector3.new(-89.97000122070312, 80, -0.029999999329447746)
Part902.Size = Vector3.new(0.25684136152267456, 0.5939453840255737, 0.6421034932136536)
Part902.Material = Enum.Material.SmoothPlastic
Part902.FormFactor = Enum.FormFactor.Custom
Part902.formFactor = Enum.FormFactor.Custom
CylinderMesh903.Parent = Part902
Part904.Parent = Model542
Part904.CFrame = CFrame.new(20.4797382, 19.8576164, 70.7053528, 0.170992866, 0.0302514788, 0.984807789, -0.969846368, -0.171009898, 0.173648238, 0.173664987, -0.984804809, 9.78113676e-05)
Part904.Orientation = Vector3.new(-10, 89.98999786376953, -100)
Part904.Position = Vector3.new(20.479738235473633, 19.857616424560547, 70.70535278320312)
Part904.Rotation = Vector3.new(-89.97000122070312, 80, -10.029999732971191)
Part904.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part904.Material = Enum.Material.SmoothPlastic
Part904.FormFactor = Enum.FormFactor.Custom
Part904.formFactor = Enum.FormFactor.Custom
CylinderMesh905.Parent = Part904
Part906.Parent = Model542
Part906.CFrame = CFrame.new(20.5045528, 19.7170448, 70.4837494, -0.0995188802, -0.142300799, 0.984807849, 0.564862907, 0.806707084, 0.173647672, -0.819161654, 0.573562682, 9.78511744e-05)
Part906.Orientation = Vector3.new(-10, 89.98999786376953, 35)
Part906.Position = Vector3.new(20.504552841186523, 19.717044830322266, 70.48374938964844)
Part906.Rotation = Vector3.new(-89.97000122070312, 80, 124.97000122070312)
Part906.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part906.Material = Enum.Material.SmoothPlastic
Part906.FormFactor = Enum.FormFactor.Custom
Part906.formFactor = Enum.FormFactor.Custom
CylinderMesh907.Parent = Part906
Part908.Parent = Model542
Part908.CFrame = CFrame.new(20.4942532, 19.7754154, 70.5407791, -0.132958367, -0.111693799, 0.984807909, 0.754407108, 0.633021832, 0.173647404, -0.642800212, 0.766033947, 9.70342662e-05)
Part908.Orientation = Vector3.new(-10, 89.98999786376953, 50)
Part908.Position = Vector3.new(20.494253158569336, 19.775415420532227, 70.54077911376953)
Part908.Rotation = Vector3.new(-89.97000122070312, 80, 139.97000122070312)
Part908.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part908.Material = Enum.Material.SmoothPlastic
Part908.FormFactor = Enum.FormFactor.Custom
Part908.formFactor = Enum.FormFactor.Custom
CylinderMesh909.Parent = Part908
Part910.Parent = Model542
Part910.CFrame = CFrame.new(20.5195713, 19.6318607, 70.4406433, -0.0592979789, -0.163209856, 0.98480773, 0.336823016, 0.925417006, 0.173648179, -0.939698994, 0.342002869, 9.74762952e-05)
Part910.Orientation = Vector3.new(-10, 89.98999786376953, 20)
Part910.Position = Vector3.new(20.51957130432129, 19.631860733032227, 70.44064331054688)
Part910.Rotation = Vector3.new(-89.97000122070312, 80, 109.97000122070312)
Part910.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part910.Material = Enum.Material.SmoothPlastic
Part910.FormFactor = Enum.FormFactor.Custom
Part910.formFactor = Enum.FormFactor.Custom
CylinderMesh911.Parent = Part910
Part912.Parent = Model542
Part912.CFrame = CFrame.new(20.4846344, 19.8300018, 70.6203308, -0.157336116, -0.0734766126, 0.984807849, 0.892538786, 0.416198373, 0.173647508, -0.422634482, 0.906300306, 9.76835363e-05)
Part912.Orientation = Vector3.new(-10, 89.98999786376953, 65)
Part912.Position = Vector3.new(20.484634399414062, 19.830001831054688, 70.62033081054688)
Part912.Rotation = Vector3.new(-89.97000122070312, 80, 154.97000122070312)
Part912.Size = Vector3.new(0.25684136152267456, 0.12842069566249847, 0.6421034932136536)
Part912.Material = Enum.Material.SmoothPlastic
Part912.FormFactor = Enum.FormFactor.Custom
Part912.formFactor = Enum.FormFactor.Custom
CylinderMesh913.Parent = Part912
Part914.Parent = Model542
Part914.CFrame = CFrame.new(30.3106709, 12.4670935, 78.8250351, 0.500000238, 9.89999971e-05, 0.866025388, -0.866025388, 0, 0.500000238, 4.95000204e-05, -1, 8.57365085e-05)
Part914.Orientation = Vector3.new(-30, 89.98999786376953, -90)
Part914.Position = Vector3.new(30.310670852661133, 12.467093467712402, 78.82503509521484)
Part914.Rotation = Vector3.new(-89.98999786376953, 60, -0.009999999776482582)
Part914.Color = Color3.new(1, 0.690196, 0)
Part914.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part914.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part914.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part914.BrickColor = BrickColor.new("Deep orange")
Part914.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part914.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part914.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part914.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part914.brickColor = BrickColor.new("Deep orange")
Part914.FormFactor = Enum.FormFactor.Custom
Part914.formFactor = Enum.FormFactor.Custom
Part915.Parent = Model542
Part915.CFrame = CFrame.new(30.4570827, 12.5785694, 78.8250504, 0.707106829, 9.89999971e-05, 0.707106829, -0.707106829, 0, 0.707106829, 7.00035744e-05, -1, 7.00035744e-05)
Part915.Orientation = Vector3.new(-45, 89.98999786376953, -90)
Part915.Position = Vector3.new(30.457082748413086, 12.578569412231445, 78.8250503540039)
Part915.Rotation = Vector3.new(-89.98999786376953, 45, -0.009999999776482582)
Part915.Color = Color3.new(1, 0.690196, 0)
Part915.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part915.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part915.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part915.BrickColor = BrickColor.new("Deep orange")
Part915.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part915.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part915.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part915.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part915.brickColor = BrickColor.new("Deep orange")
Part915.FormFactor = Enum.FormFactor.Custom
Part915.formFactor = Enum.FormFactor.Custom
Part916.Parent = Model542
Part916.CFrame = CFrame.new(30.5673332, 12.7228622, 78.8250656, 0.866025388, 9.89999971e-05, 0.500000238, -0.500000238, 0, 0.866025388, 8.57365085e-05, -1, 4.95000204e-05)
Part916.Orientation = Vector3.new(-60, 89.98999786376953, -90)
Part916.Position = Vector3.new(30.567333221435547, 12.722862243652344, 78.82506561279297)
Part916.Rotation = Vector3.new(-90, 30, -0.009999999776482582)
Part916.Color = Color3.new(1, 0.690196, 0)
Part916.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part916.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part916.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part916.BrickColor = BrickColor.new("Deep orange")
Part916.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part916.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part916.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part916.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part916.brickColor = BrickColor.new("Deep orange")
Part916.FormFactor = Enum.FormFactor.Custom
Part916.formFactor = Enum.FormFactor.Custom
Part917.Parent = Model542
Part917.CFrame = CFrame.new(30.6383896, 12.8926191, 78.8250732, 0.965925872, 9.89999971e-05, 0.258818984, -0.258818984, 0, 0.965925872, 9.56266595e-05, -1, 2.56230778e-05)
Part917.Orientation = Vector3.new(-75, 89.98999786376953, -90)
Part917.Position = Vector3.new(30.638389587402344, 12.892619132995605, 78.8250732421875)
Part917.Rotation = Vector3.new(-90, 15, -0.009999999776482582)
Part917.Color = Color3.new(1, 0.690196, 0)
Part917.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part917.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part917.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part917.BrickColor = BrickColor.new("Deep orange")
Part917.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part917.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part917.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part917.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part917.brickColor = BrickColor.new("Deep orange")
Part917.FormFactor = Enum.FormFactor.Custom
Part917.formFactor = Enum.FormFactor.Custom
Part918.Parent = Model542
Part918.CFrame = CFrame.new(30.662035, 13.0728016, 78.8250732, 1, 9.89999971e-05, 0, 0, 0, 1, 9.89999971e-05, -1, 0)
Part918.Orientation = Vector3.new(-90, -0.009999999776482582, 0)
Part918.Position = Vector3.new(30.66203498840332, 13.07280158996582, 78.8250732421875)
Part918.Rotation = Vector3.new(-90, 0, -0.009999999776482582)
Part918.Color = Color3.new(1, 0.690196, 0)
Part918.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part918.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part918.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part918.BrickColor = BrickColor.new("Deep orange")
Part918.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part918.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part918.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part918.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part918.brickColor = BrickColor.new("Deep orange")
Part918.FormFactor = Enum.FormFactor.Custom
Part918.formFactor = Enum.FormFactor.Custom
Part919.Parent = Model542
Part919.CFrame = CFrame.new(30.6386909, 13.2553453, 78.8250732, 0.965926111, 9.89999971e-05, -0.25881803, 0.25881803, 0, 0.965926111, 9.56266813e-05, -1, -2.5622985e-05)
Part919.Orientation = Vector3.new(-75, -90.01000213623047, 90)
Part919.Position = Vector3.new(30.638690948486328, 13.255345344543457, 78.8250732421875)
Part919.Rotation = Vector3.new(-90, -15, -0.009999999776482582)
Part919.Color = Color3.new(1, 0.690196, 0)
Part919.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part919.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part919.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part919.BrickColor = BrickColor.new("Deep orange")
Part919.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part919.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part919.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part919.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part919.brickColor = BrickColor.new("Deep orange")
Part919.FormFactor = Enum.FormFactor.Custom
Part919.formFactor = Enum.FormFactor.Custom
Part920.Parent = Model542
Part920.CFrame = CFrame.new(30.5676899, 13.4259911, 78.8250656, 0.866025388, 9.89999971e-05, -0.500000238, 0.500000238, 0, 0.866025388, 8.57365085e-05, -1, -4.95000204e-05)
Part920.Orientation = Vector3.new(-60, -90.01000213623047, 90)
Part920.Position = Vector3.new(30.567689895629883, 13.42599105834961, 78.82506561279297)
Part920.Rotation = Vector3.new(-90, -30, -0.009999999776482582)
Part920.Color = Color3.new(1, 0.690196, 0)
Part920.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part920.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part920.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part920.BrickColor = BrickColor.new("Deep orange")
Part920.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part920.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part920.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part920.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part920.brickColor = BrickColor.new("Deep orange")
Part920.FormFactor = Enum.FormFactor.Custom
Part920.formFactor = Enum.FormFactor.Custom
Part921.Parent = Model542
Part921.CFrame = CFrame.new(30.4561958, 13.5724049, 78.8250504, 0.707106829, 9.89999971e-05, -0.707106829, 0.707106829, 0, 0.707106829, 7.00035744e-05, -1, -7.00035744e-05)
Part921.Orientation = Vector3.new(-45, -90.01000213623047, 90)
Part921.Position = Vector3.new(30.456195831298828, 13.572404861450195, 78.8250503540039)
Part921.Rotation = Vector3.new(-90.01000213623047, -45, -0.009999999776482582)
Part921.Color = Color3.new(1, 0.690196, 0)
Part921.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part921.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part921.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part921.BrickColor = BrickColor.new("Deep orange")
Part921.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part921.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part921.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part921.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part921.brickColor = BrickColor.new("Deep orange")
Part921.FormFactor = Enum.FormFactor.Custom
Part921.formFactor = Enum.FormFactor.Custom
Part922.Parent = Model542
Part922.CFrame = CFrame.new(30.3119736, 13.682971, 78.8250351, 0.500000238, 9.89999971e-05, -0.866025388, 0.866025388, 0, 0.500000238, 4.95000204e-05, -1, -8.57365085e-05)
Part922.Orientation = Vector3.new(-30, -90.01000213623047, 90)
Part922.Position = Vector3.new(30.311973571777344, 13.682971000671387, 78.82503509521484)
Part922.Rotation = Vector3.new(-90.01000213623047, -60, -0.009999999776482582)
Part922.Color = Color3.new(1, 0.690196, 0)
Part922.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part922.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part922.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part922.BrickColor = BrickColor.new("Deep orange")
Part922.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part922.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part922.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part922.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part922.brickColor = BrickColor.new("Deep orange")
Part922.FormFactor = Enum.FormFactor.Custom
Part922.formFactor = Enum.FormFactor.Custom
Part923.Parent = Model542
Part923.CFrame = CFrame.new(30.1422195, 13.7540312, 78.8250198, 0.25881803, 9.89999971e-05, -0.965926111, 0.965926111, 0, 0.25881803, 2.5622985e-05, -1, -9.56266813e-05)
Part923.Orientation = Vector3.new(-15, -90.01000213623047, 90)
Part923.Position = Vector3.new(30.14221954345703, 13.75403118133545, 78.82501983642578)
Part923.Rotation = Vector3.new(-90.0199966430664, -75, -0.019999999552965164)
Part923.Color = Color3.new(1, 0.690196, 0)
Part923.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part923.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part923.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part923.BrickColor = BrickColor.new("Deep orange")
Part923.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part923.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part923.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part923.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part923.brickColor = BrickColor.new("Deep orange")
Part923.FormFactor = Enum.FormFactor.Custom
Part923.formFactor = Enum.FormFactor.Custom
Part924.Parent = Model542
Part924.CFrame = CFrame.new(29.9613361, 13.7800789, 78.8250046, 0, 9.89999971e-05, -1, 1, 0, 0, 0, -1, -9.89999971e-05)
Part924.Orientation = Vector3.new(0, -90.01000213623047, 90)
Part924.Position = Vector3.new(29.961336135864258, 13.780078887939453, 78.82500457763672)
Part924.Rotation = Vector3.new(-90, -90, 0)
Part924.Color = Color3.new(1, 0.690196, 0)
Part924.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part924.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part924.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part924.BrickColor = BrickColor.new("Deep orange")
Part924.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part924.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part924.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part924.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part924.brickColor = BrickColor.new("Deep orange")
Part924.FormFactor = Enum.FormFactor.Custom
Part924.formFactor = Enum.FormFactor.Custom
Part925.Parent = Model542
Part925.CFrame = CFrame.new(29.6109276, 13.6871214, 78.8249664, -0.500000238, 9.89999971e-05, -0.866025388, 0.866025388, 0, -0.500000238, -4.95000204e-05, -1, -8.57365085e-05)
Part925.Orientation = Vector3.new(30, -90.01000213623047, 90)
Part925.Position = Vector3.new(29.61092758178711, 13.687121391296387, 78.82496643066406)
Part925.Rotation = Vector3.new(90.01000213623047, -60, -179.99000549316406)
Part925.Color = Color3.new(1, 0.690196, 0)
Part925.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part925.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part925.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part925.BrickColor = BrickColor.new("Deep orange")
Part925.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part925.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part925.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part925.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part925.brickColor = BrickColor.new("Deep orange")
Part925.FormFactor = Enum.FormFactor.Custom
Part925.formFactor = Enum.FormFactor.Custom
Part926.Parent = Model542
Part926.CFrame = CFrame.new(29.4645081, 13.5756321, 78.8249512, -0.707106829, 9.89999971e-05, -0.707106829, 0.707106829, 0, -0.707106829, -7.00035744e-05, -1, -7.00035744e-05)
Part926.Orientation = Vector3.new(45, -90.01000213623047, 90)
Part926.Position = Vector3.new(29.464508056640625, 13.575632095336914, 78.824951171875)
Part926.Rotation = Vector3.new(90.01000213623047, -45, -179.99000549316406)
Part926.Color = Color3.new(1, 0.690196, 0)
Part926.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part926.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part926.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part926.BrickColor = BrickColor.new("Deep orange")
Part926.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part926.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part926.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part926.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part926.brickColor = BrickColor.new("Deep orange")
Part926.FormFactor = Enum.FormFactor.Custom
Part926.formFactor = Enum.FormFactor.Custom
Part927.Parent = Model542
Part927.CFrame = CFrame.new(29.3522243, 13.4288139, 78.8249435, -0.866025388, 9.89999971e-05, -0.500000238, 0.500000238, 0, -0.866025388, -8.57365085e-05, -1, -4.95000204e-05)
Part927.Orientation = Vector3.new(60, -90.01000213623047, 90)
Part927.Position = Vector3.new(29.352224349975586, 13.428813934326172, 78.82494354248047)
Part927.Rotation = Vector3.new(90, -30, -179.99000549316406)
Part927.Color = Color3.new(1, 0.690196, 0)
Part927.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part927.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part927.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part927.BrickColor = BrickColor.new("Deep orange")
Part927.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part927.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part927.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part927.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part927.brickColor = BrickColor.new("Deep orange")
Part927.FormFactor = Enum.FormFactor.Custom
Part927.formFactor = Enum.FormFactor.Custom
Part928.Parent = Model542
Part928.CFrame = CFrame.new(30.1428032, 12.3974752, 78.8250198, 0.258818984, 9.89999971e-05, 0.965925872, -0.965925872, 0, 0.258818984, 2.56230778e-05, -1, 9.56266595e-05)
Part928.Orientation = Vector3.new(-15, 89.98999786376953, -90)
Part928.Position = Vector3.new(30.142803192138672, 12.397475242614746, 78.82501983642578)
Part928.Rotation = Vector3.new(-89.9800033569336, 75, -0.019999999552965164)
Part928.Color = Color3.new(1, 0.690196, 0)
Part928.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part928.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part928.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part928.BrickColor = BrickColor.new("Deep orange")
Part928.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part928.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part928.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part928.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part928.brickColor = BrickColor.new("Deep orange")
Part928.FormFactor = Enum.FormFactor.Custom
Part928.formFactor = Enum.FormFactor.Custom
Part929.Parent = Model542
Part929.CFrame = CFrame.new(29.2811699, 13.259057, 78.8249359, -0.965925872, 9.89999971e-05, -0.258818984, 0.258818984, 0, -0.965925872, -9.56266595e-05, -1, -2.56230778e-05)
Part929.Orientation = Vector3.new(75, -90.01000213623047, 90)
Part929.Position = Vector3.new(29.281169891357422, 13.25905704498291, 78.82493591308594)
Part929.Rotation = Vector3.new(90, -15, -179.99000549316406)
Part929.Color = Color3.new(1, 0.690196, 0)
Part929.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part929.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part929.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part929.BrickColor = BrickColor.new("Deep orange")
Part929.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part929.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part929.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part929.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part929.brickColor = BrickColor.new("Deep orange")
Part929.FormFactor = Enum.FormFactor.Custom
Part929.formFactor = Enum.FormFactor.Custom
Part930.Parent = Model542
Part930.CFrame = CFrame.new(29.9602566, 12.3741312, 78.8250046, 0, 9.89999971e-05, 1, -1, 0, 0, 0, -1, 9.89999971e-05)
Part930.Orientation = Vector3.new(0, 89.98999786376953, -90)
Part930.Position = Vector3.new(29.960256576538086, 12.374131202697754, 78.82500457763672)
Part930.Rotation = Vector3.new(-90, 90, 0)
Part930.Color = Color3.new(1, 0.690196, 0)
Part930.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part930.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part930.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part930.BrickColor = BrickColor.new("Deep orange")
Part930.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part930.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part930.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part930.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part930.brickColor = BrickColor.new("Deep orange")
Part930.FormFactor = Enum.FormFactor.Custom
Part930.formFactor = Enum.FormFactor.Custom
Part931.Parent = Model542
Part931.CFrame = CFrame.new(29.2575283, 13.0788746, 78.8249359, -1, 9.89999971e-05, 0, 0, 0, -1, -9.89999971e-05, -1, 0)
Part931.Orientation = Vector3.new(90, 179.99000549316406, 0)
Part931.Position = Vector3.new(29.25752830505371, 13.078874588012695, 78.82493591308594)
Part931.Rotation = Vector3.new(90, 0, -179.99000549316406)
Part931.Color = Color3.new(1, 0.690196, 0)
Part931.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part931.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part931.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part931.BrickColor = BrickColor.new("Deep orange")
Part931.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part931.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part931.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part931.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part931.brickColor = BrickColor.new("Deep orange")
Part931.FormFactor = Enum.FormFactor.Custom
Part931.formFactor = Enum.FormFactor.Custom
Part932.Parent = Model542
Part932.CFrame = CFrame.new(29.7769737, 12.3979626, 78.8249817, -0.25881803, 9.89999971e-05, 0.965926111, -0.965926111, 0, -0.25881803, -2.5622985e-05, -1, 9.56266813e-05)
Part932.Orientation = Vector3.new(15, 89.98999786376953, -90)
Part932.Position = Vector3.new(29.776973724365234, 12.39796257019043, 78.82498168945312)
Part932.Rotation = Vector3.new(89.9800033569336, 75, -179.97999572753906)
Part932.Color = Color3.new(1, 0.690196, 0)
Part932.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part932.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part932.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part932.BrickColor = BrickColor.new("Deep orange")
Part932.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part932.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part932.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part932.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part932.brickColor = BrickColor.new("Deep orange")
Part932.FormFactor = Enum.FormFactor.Custom
Part932.formFactor = Enum.FormFactor.Custom
Part933.Parent = Model542
Part933.CFrame = CFrame.new(29.2808666, 12.8963356, 78.8249359, -0.965926111, 9.89999971e-05, 0.25881803, -0.25881803, 0, -0.965926111, -9.56266813e-05, -1, 2.5622985e-05)
Part933.Orientation = Vector3.new(75, 89.98999786376953, -90)
Part933.Position = Vector3.new(29.280866622924805, 12.89633560180664, 78.82493591308594)
Part933.Rotation = Vector3.new(90, 15, -179.99000549316406)
Part933.Color = Color3.new(1, 0.690196, 0)
Part933.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part933.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part933.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part933.BrickColor = BrickColor.new("Deep orange")
Part933.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part933.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part933.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part933.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part933.brickColor = BrickColor.new("Deep orange")
Part933.FormFactor = Enum.FormFactor.Custom
Part933.formFactor = Enum.FormFactor.Custom
Part934.Parent = Model542
Part934.CFrame = CFrame.new(29.607214, 12.4690151, 78.8249664, -0.500000238, 9.89999971e-05, 0.866025388, -0.866025388, 0, -0.500000238, -4.95000204e-05, -1, 8.57365085e-05)
Part934.Orientation = Vector3.new(30, 89.98999786376953, -90)
Part934.Position = Vector3.new(29.607213973999023, 12.469015121459961, 78.82496643066406)
Part934.Rotation = Vector3.new(89.98999786376953, 60, -179.99000549316406)
Part934.Color = Color3.new(1, 0.690196, 0)
Part934.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part934.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part934.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part934.BrickColor = BrickColor.new("Deep orange")
Part934.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part934.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part934.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part934.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part934.brickColor = BrickColor.new("Deep orange")
Part934.FormFactor = Enum.FormFactor.Custom
Part934.formFactor = Enum.FormFactor.Custom
Part935.Parent = Model542
Part935.CFrame = CFrame.new(29.462986, 12.5795841, 78.8249512, -0.707106829, 9.89999971e-05, 0.707106829, -0.707106829, 0, -0.707106829, -7.00035744e-05, -1, 7.00035744e-05)
Part935.Orientation = Vector3.new(45, 89.98999786376953, -90)
Part935.Position = Vector3.new(29.46298599243164, 12.579584121704102, 78.824951171875)
Part935.Rotation = Vector3.new(89.98999786376953, 45, -179.99000549316406)
Part935.Color = Color3.new(1, 0.690196, 0)
Part935.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part935.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part935.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part935.BrickColor = BrickColor.new("Deep orange")
Part935.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part935.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part935.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part935.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part935.brickColor = BrickColor.new("Deep orange")
Part935.FormFactor = Enum.FormFactor.Custom
Part935.formFactor = Enum.FormFactor.Custom
Part936.Parent = Model542
Part936.CFrame = CFrame.new(29.7782307, 12.3597345, 69.7249985, -0.258818984, 9.89999971e-05, 0.965925872, -0.965925872, 0, -0.258818984, -2.56230778e-05, -1, 9.56266595e-05)
Part936.Orientation = Vector3.new(15, 89.98999786376953, -90)
Part936.Position = Vector3.new(29.778230667114258, 12.359734535217285, 69.7249984741211)
Part936.Rotation = Vector3.new(89.9800033569336, 75, -179.97999572753906)
Part936.Color = Color3.new(1, 0.690196, 0)
Part936.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part936.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part936.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part936.BrickColor = BrickColor.new("Deep orange")
Part936.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part936.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part936.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part936.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part936.brickColor = BrickColor.new("Deep orange")
Part936.FormFactor = Enum.FormFactor.Custom
Part936.formFactor = Enum.FormFactor.Custom
Part937.Parent = Model542
Part937.CFrame = CFrame.new(29.9605865, 12.3350315, 69.7250214, 0, 9.89999971e-05, 1, -1, 0, 0, 0, -1, 9.89999971e-05)
Part937.Orientation = Vector3.new(0, 89.98999786376953, -90)
Part937.Position = Vector3.new(29.960586547851562, 12.335031509399414, 69.72502136230469)
Part937.Rotation = Vector3.new(-90, 90, 0)
Part937.Color = Color3.new(1, 0.690196, 0)
Part937.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part937.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part937.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part937.BrickColor = BrickColor.new("Deep orange")
Part937.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part937.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part937.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part937.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part937.brickColor = BrickColor.new("Deep orange")
Part937.FormFactor = Enum.FormFactor.Custom
Part937.formFactor = Enum.FormFactor.Custom
Part938.Parent = Model542
Part938.CFrame = CFrame.new(30.1405735, 12.3591051, 69.7250366, 0.258818984, 9.89999971e-05, 0.965925872, -0.965925872, 0, 0.258818984, 2.56230778e-05, -1, 9.56266595e-05)
Part938.Orientation = Vector3.new(-15, 89.98999786376953, -90)
Part938.Position = Vector3.new(30.140573501586914, 12.359105110168457, 69.72503662109375)
Part938.Rotation = Vector3.new(-89.9800033569336, 75, -0.019999999552965164)
Part938.Color = Color3.new(1, 0.690196, 0)
Part938.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part938.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part938.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part938.BrickColor = BrickColor.new("Deep orange")
Part938.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part938.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part938.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part938.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part938.brickColor = BrickColor.new("Deep orange")
Part938.FormFactor = Enum.FormFactor.Custom
Part938.formFactor = Enum.FormFactor.Custom
Part939.Parent = Model542
Part939.CFrame = CFrame.new(30.3108559, 12.4288998, 69.7250519, 0.500000238, 9.89999971e-05, 0.866025388, -0.866025388, 0, 0.500000238, 4.95000204e-05, -1, 8.57365085e-05)
Part939.Orientation = Vector3.new(-30, 89.98999786376953, -90)
Part939.Position = Vector3.new(30.310855865478516, 12.428899765014648, 69.72505187988281)
Part939.Rotation = Vector3.new(-89.98999786376953, 60, -0.009999999776482582)
Part939.Color = Color3.new(1, 0.690196, 0)
Part939.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part939.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part939.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part939.BrickColor = BrickColor.new("Deep orange")
Part939.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part939.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part939.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part939.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part939.brickColor = BrickColor.new("Deep orange")
Part939.FormFactor = Enum.FormFactor.Custom
Part939.formFactor = Enum.FormFactor.Custom
Part940.Parent = Model542
Part940.CFrame = CFrame.new(30.4549828, 12.5395889, 69.7250671, 0.707106829, 9.89999971e-05, 0.707106829, -0.707106829, 0, 0.707106829, 7.00035744e-05, -1, 7.00035744e-05)
Part940.Orientation = Vector3.new(-45, 89.98999786376953, -90)
Part940.Position = Vector3.new(30.45498275756836, 12.539588928222656, 69.72506713867188)
Part940.Rotation = Vector3.new(-89.98999786376953, 45, -0.009999999776482582)
Part940.Color = Color3.new(1, 0.690196, 0)
Part940.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part940.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part940.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part940.BrickColor = BrickColor.new("Deep orange")
Part940.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part940.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part940.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part940.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part940.brickColor = BrickColor.new("Deep orange")
Part940.FormFactor = Enum.FormFactor.Custom
Part940.formFactor = Enum.FormFactor.Custom
Part941.Parent = Model542
Part941.CFrame = CFrame.new(30.5675564, 12.685173, 69.7250824, 0.866024852, 9.89999971e-05, 0.500000954, -0.500000954, 0, 0.866024852, 8.57364575e-05, -1, 4.95000932e-05)
Part941.Orientation = Vector3.new(-60, 89.98999786376953, -90)
Part941.Position = Vector3.new(30.567556381225586, 12.685173034667969, 69.72508239746094)
Part941.Rotation = Vector3.new(-90, 30, -0.009999999776482582)
Part941.Color = Color3.new(1, 0.690196, 0)
Part941.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part941.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part941.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part941.BrickColor = BrickColor.new("Deep orange")
Part941.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part941.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part941.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part941.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part941.brickColor = BrickColor.new("Deep orange")
Part941.FormFactor = Enum.FormFactor.Custom
Part941.formFactor = Enum.FormFactor.Custom
Part942.Parent = Model542
Part942.CFrame = CFrame.new(30.6380157, 12.8560448, 69.7250824, 0.965925872, 9.89999971e-05, 0.258818984, -0.258818984, 0, 0.965925872, 9.56266595e-05, -1, 2.56230778e-05)
Part942.Orientation = Vector3.new(-75, 89.98999786376953, -90)
Part942.Position = Vector3.new(30.638015747070312, 12.85604476928711, 69.72508239746094)
Part942.Rotation = Vector3.new(-90, 15, -0.009999999776482582)
Part942.Color = Color3.new(1, 0.690196, 0)
Part942.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part942.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part942.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part942.BrickColor = BrickColor.new("Deep orange")
Part942.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part942.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part942.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part942.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part942.brickColor = BrickColor.new("Deep orange")
Part942.FormFactor = Enum.FormFactor.Custom
Part942.formFactor = Enum.FormFactor.Custom
Part943.Parent = Model542
Part943.CFrame = CFrame.new(30.6627121, 13.0384121, 69.72509, 1, 9.89999971e-05, 0, 0, 0, 1, 9.89999971e-05, -1, 0)
Part943.Orientation = Vector3.new(-90, -0.009999999776482582, 0)
Part943.Position = Vector3.new(30.66271209716797, 13.038412094116211, 69.72509002685547)
Part943.Rotation = Vector3.new(-90, 0, -0.009999999776482582)
Part943.Color = Color3.new(1, 0.690196, 0)
Part943.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part943.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part943.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part943.BrickColor = BrickColor.new("Deep orange")
Part943.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part943.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part943.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part943.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part943.brickColor = BrickColor.new("Deep orange")
Part943.FormFactor = Enum.FormFactor.Custom
Part943.formFactor = Enum.FormFactor.Custom
Part944.Parent = Model542
Part944.CFrame = CFrame.new(30.6389122, 13.2185726, 69.7250824, 0.965925872, 9.89999971e-05, -0.258818984, 0.258818984, 0, 0.965925872, 9.56266595e-05, -1, -2.56230778e-05)
Part944.Orientation = Vector3.new(-75, -90.01000213623047, 90)
Part944.Position = Vector3.new(30.638912200927734, 13.218572616577148, 69.72508239746094)
Part944.Rotation = Vector3.new(-90, -15, -0.009999999776482582)
Part944.Color = Color3.new(1, 0.690196, 0)
Part944.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part944.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part944.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part944.BrickColor = BrickColor.new("Deep orange")
Part944.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part944.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part944.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part944.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part944.brickColor = BrickColor.new("Deep orange")
Part944.FormFactor = Enum.FormFactor.Custom
Part944.formFactor = Enum.FormFactor.Custom
Part945.Parent = Model542
Part945.CFrame = CFrame.new(30.5691242, 13.3888531, 69.7250824, 0.866024852, 9.89999971e-05, -0.500000954, 0.500000954, 0, 0.866024852, 8.57364575e-05, -1, -4.95000932e-05)
Part945.Orientation = Vector3.new(-60, -90.01000213623047, 90)
Part945.Position = Vector3.new(30.569124221801758, 13.388853073120117, 69.72508239746094)
Part945.Rotation = Vector3.new(-90, -30, -0.009999999776482582)
Part945.Color = Color3.new(1, 0.690196, 0)
Part945.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part945.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part945.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part945.BrickColor = BrickColor.new("Deep orange")
Part945.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part945.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part945.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part945.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part945.brickColor = BrickColor.new("Deep orange")
Part945.FormFactor = Enum.FormFactor.Custom
Part945.formFactor = Enum.FormFactor.Custom
Part946.Parent = Model542
Part946.CFrame = CFrame.new(30.4596367, 13.5351763, 69.7250671, 0.707106829, 9.89999971e-05, -0.707106829, 0.707106829, 0, 0.707106829, 7.00035744e-05, -1, -7.00035744e-05)
Part946.Orientation = Vector3.new(-45, -90.01000213623047, 90)
Part946.Position = Vector3.new(30.459636688232422, 13.535176277160645, 69.72506713867188)
Part946.Rotation = Vector3.new(-90.01000213623047, -45, -0.009999999776482582)
Part946.Color = Color3.new(1, 0.690196, 0)
Part946.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part946.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part946.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part946.BrickColor = BrickColor.new("Deep orange")
Part946.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part946.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part946.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part946.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part946.brickColor = BrickColor.new("Deep orange")
Part946.FormFactor = Enum.FormFactor.Custom
Part946.formFactor = Enum.FormFactor.Custom
Part947.Parent = Model542
Part947.CFrame = CFrame.new(30.1461296, 13.7172184, 69.7250366, 0.258818984, 9.89999971e-05, -0.965925872, 0.965925872, 0, 0.258818984, 2.56230778e-05, -1, -9.56266595e-05)
Part947.Orientation = Vector3.new(-15, -90.01000213623047, 90)
Part947.Position = Vector3.new(30.146129608154297, 13.717218399047852, 69.72503662109375)
Part947.Rotation = Vector3.new(-90.0199966430664, -75, -0.019999999552965164)
Part947.Color = Color3.new(1, 0.690196, 0)
Part947.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part947.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part947.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part947.BrickColor = BrickColor.new("Deep orange")
Part947.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part947.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part947.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part947.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part947.brickColor = BrickColor.new("Deep orange")
Part947.FormFactor = Enum.FormFactor.Custom
Part947.formFactor = Enum.FormFactor.Custom
Part948.Parent = Model542
Part948.CFrame = CFrame.new(29.9637623, 13.7419186, 69.7250214, 0, 9.89999971e-05, -1, 1, 0, 0, 0, -1, -9.89999971e-05)
Part948.Orientation = Vector3.new(0, -90.01000213623047, 90)
Part948.Position = Vector3.new(29.963762283325195, 13.741918563842773, 69.72502136230469)
Part948.Rotation = Vector3.new(-90, -90, 0)
Part948.Color = Color3.new(1, 0.690196, 0)
Part948.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part948.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part948.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part948.BrickColor = BrickColor.new("Deep orange")
Part948.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part948.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part948.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part948.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part948.brickColor = BrickColor.new("Deep orange")
Part948.FormFactor = Enum.FormFactor.Custom
Part948.formFactor = Enum.FormFactor.Custom
Part949.Parent = Model542
Part949.CFrame = CFrame.new(29.78055, 13.7175064, 69.7249985, -0.258818984, 9.89999971e-05, -0.965925872, 0.965925872, 0, -0.258818984, -2.56230778e-05, -1, -9.56266595e-05)
Part949.Orientation = Vector3.new(15, -90.01000213623047, 90)
Part949.Position = Vector3.new(29.780550003051758, 13.717506408691406, 69.7249984741211)
Part949.Rotation = Vector3.new(90.0199966430664, -75, -179.97999572753906)
Part949.Color = Color3.new(1, 0.690196, 0)
Part949.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part949.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part949.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part949.BrickColor = BrickColor.new("Deep orange")
Part949.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part949.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part949.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part949.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part949.brickColor = BrickColor.new("Deep orange")
Part949.FormFactor = Enum.FormFactor.Custom
Part949.formFactor = Enum.FormFactor.Custom
Part950.Parent = Model542
Part950.CFrame = CFrame.new(29.610302, 12.4292107, 69.7249832, -0.500000238, 9.89999971e-05, 0.866025388, -0.866025388, 0, -0.500000238, -4.95000204e-05, -1, 8.57365085e-05)
Part950.Orientation = Vector3.new(30, 89.98999786376953, -90)
Part950.Position = Vector3.new(29.610301971435547, 12.429210662841797, 69.72498321533203)
Part950.Rotation = Vector3.new(89.98999786376953, 60, -179.99000549316406)
Part950.Color = Color3.new(1, 0.690196, 0)
Part950.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part950.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part950.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part950.BrickColor = BrickColor.new("Deep orange")
Part950.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part950.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part950.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part950.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part950.brickColor = BrickColor.new("Deep orange")
Part950.FormFactor = Enum.FormFactor.Custom
Part950.formFactor = Enum.FormFactor.Custom
Part951.Parent = Model542
Part951.CFrame = CFrame.new(29.6102695, 13.6477089, 69.7249832, -0.500000238, 9.89999971e-05, -0.866025388, 0.866025388, 0, -0.500000238, -4.95000204e-05, -1, -8.57365085e-05)
Part951.Orientation = Vector3.new(30, -90.01000213623047, 90)
Part951.Position = Vector3.new(29.61026954650879, 13.647708892822266, 69.72498321533203)
Part951.Rotation = Vector3.new(90.01000213623047, -60, -179.99000549316406)
Part951.Color = Color3.new(1, 0.690196, 0)
Part951.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part951.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part951.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part951.BrickColor = BrickColor.new("Deep orange")
Part951.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part951.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part951.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part951.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part951.brickColor = BrickColor.new("Deep orange")
Part951.FormFactor = Enum.FormFactor.Custom
Part951.formFactor = Enum.FormFactor.Custom
Part952.Parent = Model542
Part952.CFrame = CFrame.new(29.464716, 12.5417805, 69.724968, -0.707106829, 9.89999971e-05, 0.707106829, -0.707106829, 0, -0.707106829, -7.00035744e-05, -1, 7.00035744e-05)
Part952.Orientation = Vector3.new(45, 89.98999786376953, -90)
Part952.Position = Vector3.new(29.4647159576416, 12.541780471801758, 69.72496795654297)
Part952.Rotation = Vector3.new(89.98999786376953, 45, -179.99000549316406)
Part952.Color = Color3.new(1, 0.690196, 0)
Part952.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part952.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part952.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part952.BrickColor = BrickColor.new("Deep orange")
Part952.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part952.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part952.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part952.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part952.brickColor = BrickColor.new("Deep orange")
Part952.FormFactor = Enum.FormFactor.Custom
Part952.formFactor = Enum.FormFactor.Custom
Part953.Parent = Model542
Part953.CFrame = CFrame.new(29.4661407, 13.537014, 69.724968, -0.707106829, 9.89999971e-05, -0.707106829, 0.707106829, 0, -0.707106829, -7.00035744e-05, -1, -7.00035744e-05)
Part953.Orientation = Vector3.new(45, -90.01000213623047, 90)
Part953.Position = Vector3.new(29.466140747070312, 13.53701400756836, 69.72496795654297)
Part953.Rotation = Vector3.new(90.01000213623047, -45, -179.99000549316406)
Part953.Color = Color3.new(1, 0.690196, 0)
Part953.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part953.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part953.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part953.BrickColor = BrickColor.new("Deep orange")
Part953.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part953.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part953.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part953.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part953.brickColor = BrickColor.new("Deep orange")
Part953.FormFactor = Enum.FormFactor.Custom
Part953.formFactor = Enum.FormFactor.Custom
Part954.Parent = Model542
Part954.CFrame = CFrame.new(29.3519669, 12.6882362, 69.7249603, -0.866024852, 9.89999971e-05, 0.500000954, -0.500000954, 0, -0.866024852, -8.57364575e-05, -1, 4.95000932e-05)
Part954.Orientation = Vector3.new(60, 89.98999786376953, -90)
Part954.Position = Vector3.new(29.351966857910156, 12.688236236572266, 69.72496032714844)
Part954.Rotation = Vector3.new(90, 30, -179.99000549316406)
Part954.Color = Color3.new(1, 0.690196, 0)
Part954.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part954.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part954.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part954.BrickColor = BrickColor.new("Deep orange")
Part954.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part954.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part954.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part954.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part954.brickColor = BrickColor.new("Deep orange")
Part954.FormFactor = Enum.FormFactor.Custom
Part954.formFactor = Enum.FormFactor.Custom
Part955.Parent = Model542
Part955.CFrame = CFrame.new(29.353569, 13.3914356, 69.7249603, -0.866024852, 9.89999971e-05, -0.500000954, 0.500000954, 0, -0.866024852, -8.57364575e-05, -1, -4.95000932e-05)
Part955.Orientation = Vector3.new(60, -90.01000213623047, 90)
Part955.Position = Vector3.new(29.35356903076172, 13.391435623168945, 69.72496032714844)
Part955.Rotation = Vector3.new(90, -30, -179.99000549316406)
Part955.Color = Color3.new(1, 0.690196, 0)
Part955.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part955.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part955.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part955.BrickColor = BrickColor.new("Deep orange")
Part955.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part955.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part955.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part955.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part955.brickColor = BrickColor.new("Deep orange")
Part955.FormFactor = Enum.FormFactor.Custom
Part955.formFactor = Enum.FormFactor.Custom
Part956.Parent = Model542
Part956.CFrame = CFrame.new(29.2821712, 12.8585186, 69.7249527, -0.965925872, 9.89999971e-05, 0.258818984, -0.258818984, 0, -0.965925872, -9.56266595e-05, -1, 2.56230778e-05)
Part956.Orientation = Vector3.new(75, 89.98999786376953, -90)
Part956.Position = Vector3.new(29.28217124938965, 12.858518600463867, 69.7249526977539)
Part956.Rotation = Vector3.new(90, 15, -179.99000549316406)
Part956.Color = Color3.new(1, 0.690196, 0)
Part956.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part956.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part956.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part956.BrickColor = BrickColor.new("Deep orange")
Part956.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part956.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part956.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part956.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part956.brickColor = BrickColor.new("Deep orange")
Part956.FormFactor = Enum.FormFactor.Custom
Part956.formFactor = Enum.FormFactor.Custom
Part957.Parent = Model542
Part957.CFrame = CFrame.new(29.2583714, 13.0386829, 69.7249451, -1, 9.89999971e-05, 0, 0, 0, -1, -9.89999971e-05, -1, 0)
Part957.Orientation = Vector3.new(90, 179.99000549316406, 0)
Part957.Position = Vector3.new(29.258371353149414, 13.03868293762207, 69.72494506835938)
Part957.Rotation = Vector3.new(90, 0, -179.99000549316406)
Part957.Color = Color3.new(1, 0.690196, 0)
Part957.Size = Vector3.new(0.21225738525390625, 0.21225738525390625, 0.21225738525390625)
Part957.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part957.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part957.BrickColor = BrickColor.new("Deep orange")
Part957.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part957.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part957.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part957.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part957.brickColor = BrickColor.new("Deep orange")
Part957.FormFactor = Enum.FormFactor.Custom
Part957.formFactor = Enum.FormFactor.Custom
Model958.Name = "Stand"
Model958.Parent = Folder519
Model958.PrimaryPart = Part989
Part959.Name = "Right Leg"
Part959.Parent = Model958
Part959.CFrame = CFrame.new(12.6355658, 11.9617863, -9.89289856, -0.999999344, 0, 0.00122000044, 0, 1, 0, -0.00122000044, 0, -0.999999344)
Part959.Orientation = Vector3.new(0, 179.92999267578125, 0)
Part959.Position = Vector3.new(12.635565757751465, 11.961786270141602, -9.892898559570312)
Part959.Rotation = Vector3.new(-180, 0.07000000029802322, -180)
Part959.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part959.Transparency = 1
Part959.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
Part959.Size = Vector3.new(1, 2, 1)
Part959.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part959.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part959.BrickColor = BrickColor.new("Institutional white")
Part959.CanCollide = false
Part959.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part959.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part959.Locked = true
Part959.Material = Enum.Material.SmoothPlastic
Part959.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part959.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part959.brickColor = BrickColor.new("Institutional white")
Part959.FormFactor = Enum.FormFactor.Symmetric
Part959.formFactor = Enum.FormFactor.Symmetric
UnionOperation960.Parent = Part959
UnionOperation960.CFrame = CFrame.new(12.569066, 11.9184484, -9.87127018, -0.999362111, -0.0137720574, 0.0329674296, 0.0141220083, -0.99984622, 0.0104060816, 0.0328190289, 0.0108650075, 0.999402881)
UnionOperation960.Orientation = Vector3.new(-0.6000000238418579, 1.8899999856948853, 179.19000244140625)
UnionOperation960.Position = Vector3.new(12.569066047668457, 11.918448448181152, -9.871270179748535)
UnionOperation960.Rotation = Vector3.new(-0.6000000238418579, 1.8899999856948853, 179.2100067138672)
UnionOperation960.Color = Color3.new(0.960784, 0.803922, 0.188235)
UnionOperation960.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation960.Size = Vector3.new(1.1183481216430664, 2.070099353790283, 1.0515785217285156)
UnionOperation960.BrickColor = BrickColor.new("Bright yellow")
UnionOperation960.CanCollide = false
UnionOperation960.Material = Enum.Material.SmoothPlastic
UnionOperation960.brickColor = BrickColor.new("Bright yellow")
UnionOperation961.Parent = Part959
UnionOperation961.CFrame = CFrame.new(12.6044722, 12.0147381, -9.36287594, 0.999360502, 0.0139518948, 0.0329362005, -0.0142760016, 0.999851763, 0.00962595642, -0.0327970125, -0.0100899972, 0.999411464)
UnionOperation961.Orientation = Vector3.new(-0.550000011920929, 1.8899999856948853, -0.8199999928474426)
UnionOperation961.Position = Vector3.new(12.604472160339355, 12.014738082885742, -9.362875938415527)
UnionOperation961.Rotation = Vector3.new(-0.550000011920929, 1.8899999856948853, -0.800000011920929)
UnionOperation961.Color = Color3.new(0, 0.721569, 0)
UnionOperation961.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation961.Size = Vector3.new(0.37119773030281067, 0.29431986808776855, 0.08700665086507797)
UnionOperation961.BackSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation961.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation961.BrickColor = BrickColor.new("Lime green")
UnionOperation961.CanCollide = false
UnionOperation961.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation961.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation961.Material = Enum.Material.SmoothPlastic
UnionOperation961.RightSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation961.TopSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation961.brickColor = BrickColor.new("Lime green")
UnionOperation961.UsePartColor = true
Weld962.Parent = Part959
Weld962.C0 = CFrame.new(0.0664730072, -0.0433375835, -0.0217094421, 0.999321222, 0.0137587907, -0.0341866724, 0.0141220083, -0.99984622, 0.0104060816, -0.0340382233, -0.0108818011, -0.999361813)
Weld962.Part0 = Part959
Weld962.Part1 = UnionOperation960
Weld962.part1 = UnionOperation960
Weld963.Parent = Part959
Weld963.C0 = CFrame.new(0.0304470062, 0.0529520512, -0.530059814, -0.999319673, -0.0139395734, -0.0341554545, -0.0142760016, 0.999851763, 0.00962595642, 0.0340162069, 0.0101070097, -0.999370456)
Weld963.Part0 = Part959
Weld963.Part1 = UnionOperation961
Weld963.part1 = UnionOperation961
Part964.Name = "Right Arm"
Part964.Parent = Model958
Part964.CFrame = CFrame.new(11.6355667, 13.9617863, -9.89411831, -0.999999344, 0, 0.00122000044, 0, 1, 0, -0.00122000044, 0, -0.999999344)
Part964.Orientation = Vector3.new(0, 179.92999267578125, 0)
Part964.Position = Vector3.new(11.635566711425781, 13.961786270141602, -9.894118309020996)
Part964.Rotation = Vector3.new(-180, 0.07000000029802322, -180)
Part964.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part964.Transparency = 1
Part964.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
Part964.Size = Vector3.new(1, 2, 1)
Part964.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part964.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part964.BrickColor = BrickColor.new("Institutional white")
Part964.CanCollide = false
Part964.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part964.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part964.Locked = true
Part964.Material = Enum.Material.SmoothPlastic
Part964.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part964.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part964.brickColor = BrickColor.new("Institutional white")
Part964.FormFactor = Enum.FormFactor.Symmetric
Part964.formFactor = Enum.FormFactor.Symmetric
UnionOperation965.Parent = Part964
UnionOperation965.CFrame = CFrame.new(11.5777349, 13.9244289, -9.88894749, 0.999557018, -0.00951789971, -0.0282120705, -0.00958599616, -0.999951482, -0.00227956846, -0.0281889997, 0.00254899915, -0.999599814)
UnionOperation965.Orientation = Vector3.new(0.12999999523162842, -178.3800048828125, -179.4499969482422)
UnionOperation965.Position = Vector3.new(11.57773494720459, 13.924428939819336, -9.888947486877441)
UnionOperation965.Rotation = Vector3.new(179.8699951171875, -1.6200000047683716, 0.550000011920929)
UnionOperation965.Color = Color3.new(0.960784, 0.803922, 0.188235)
UnionOperation965.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation965.Size = Vector3.new(1.2349700927734375, 2.0624566078186035, 1.0400733947753906)
UnionOperation965.BrickColor = BrickColor.new("Bright yellow")
UnionOperation965.CanCollide = false
UnionOperation965.Material = Enum.Material.SmoothPlastic
UnionOperation965.brickColor = BrickColor.new("Bright yellow")
UnionOperation966.Parent = Part964
UnionOperation966.CFrame = CFrame.new(11.1832256, 14.0433807, -9.8745327, 0.0282090195, 0.00874701701, -0.999564111, 0.00232200092, 0.999958456, 0.00881599635, 0.999599695, -0.00256967964, 0.0281875376)
UnionOperation966.Orientation = Vector3.new(-0.5099999904632568, -88.37999725341797, 0.12999999523162842)
UnionOperation966.Position = Vector3.new(11.183225631713867, 14.043380737304688, -9.874532699584961)
UnionOperation966.Rotation = Vector3.new(-17.3700008392334, -88.30999755859375, -17.229999542236328)
UnionOperation966.Color = Color3.new(0, 0.721569, 0)
UnionOperation966.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation966.Size = Vector3.new(0.36488890647888184, 0.28931769728660583, 0.08552788197994232)
UnionOperation966.BackSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation966.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation966.BrickColor = BrickColor.new("Lime green")
UnionOperation966.CanCollide = false
UnionOperation966.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation966.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation966.Material = Enum.Material.SmoothPlastic
UnionOperation966.RightSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation966.TopSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation966.brickColor = BrickColor.new("Lime green")
UnionOperation966.UsePartColor = true
Weld967.Parent = Part964
Weld967.C0 = CFrame.new(0.0578250885, -0.0373573303, -0.00524139404, -0.999521792, 0.00951478258, 0.0294315591, -0.00958599616, -0.999951482, -0.00227956846, 0.0294084363, -0.00256060879, 0.999564588)
Weld967.Part0 = Part964
Weld967.Part1 = UnionOperation965
Weld967.part1 = UnionOperation965
Weld968.Parent = Part964
Weld968.C0 = CFrame.new(0.452317238, 0.081594944, -0.0201377869, -0.0294285081, -0.00874387473, 0.999528885, 0.00232200092, 0.999958456, 0.00881599635, -0.999564469, 0.00258034887, -0.0294069815)
Weld968.Part0 = Part964
Weld968.Part1 = UnionOperation966
Weld968.part1 = UnionOperation966
Part969.Name = "Left Arm"
Part969.Parent = Model958
Part969.CFrame = CFrame.new(14.6355648, 13.9617863, -9.89045811, -0.999999344, 0, 0.00122000044, 0, 1, 0, -0.00122000044, 0, -0.999999344)
Part969.Orientation = Vector3.new(0, 179.92999267578125, 0)
Part969.Position = Vector3.new(14.635564804077148, 13.961786270141602, -9.890458106994629)
Part969.Rotation = Vector3.new(-180, 0.07000000029802322, -180)
Part969.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part969.Transparency = 1
Part969.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
Part969.Size = Vector3.new(1, 2, 1)
Part969.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part969.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part969.BrickColor = BrickColor.new("Institutional white")
Part969.CanCollide = false
Part969.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part969.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part969.Locked = true
Part969.Material = Enum.Material.SmoothPlastic
Part969.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part969.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part969.brickColor = BrickColor.new("Institutional white")
Part969.FormFactor = Enum.FormFactor.Symmetric
Part969.formFactor = Enum.FormFactor.Symmetric
UnionOperation970.Parent = Part969
UnionOperation970.CFrame = CFrame.new(14.7177372, 13.9244289, -9.88895416, -0.999557018, 0.00951790158, 0.0282110684, -0.00958599616, -0.999951482, -0.00227957801, 0.0281880014, -0.00254899915, 0.999599814)
UnionOperation970.Orientation = Vector3.new(0.12999999523162842, 1.6200000047683716, -179.4499969482422)
UnionOperation970.Position = Vector3.new(14.717737197875977, 13.924428939819336, -9.888954162597656)
UnionOperation970.Rotation = Vector3.new(0.12999999523162842, 1.6200000047683716, -179.4499969482422)
UnionOperation970.Color = Color3.new(0.960784, 0.803922, 0.188235)
UnionOperation970.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation970.Size = Vector3.new(1.2349700927734375, 2.0624566078186035, 1.0400733947753906)
UnionOperation970.BrickColor = BrickColor.new("Bright yellow")
UnionOperation970.CanCollide = false
UnionOperation970.Material = Enum.Material.SmoothPlastic
UnionOperation970.brickColor = BrickColor.new("Bright yellow")
UnionOperation971.Parent = Part969
UnionOperation971.CFrame = CFrame.new(15.1122522, 14.0433807, -9.90336514, -0.028209025, -0.00874701887, 0.99956429, 0.00232200092, 0.999958456, 0.00881599635, -0.999599874, 0.0025696801, -0.0281875432)
UnionOperation971.Orientation = Vector3.new(-0.5099999904632568, 91.62000274658203, 0.12999999523162842)
UnionOperation971.Position = Vector3.new(15.112252235412598, 14.043380737304688, -9.903365135192871)
UnionOperation971.Rotation = Vector3.new(-162.6300048828125, 88.30999755859375, 162.77000427246094)
UnionOperation971.Color = Color3.new(0, 0.721569, 0)
UnionOperation971.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation971.Size = Vector3.new(0.36488890647888184, 0.28931769728660583, 0.08552788197994232)
UnionOperation971.BackSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation971.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation971.BrickColor = BrickColor.new("Lime green")
UnionOperation971.CanCollide = false
UnionOperation971.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation971.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation971.Material = Enum.Material.SmoothPlastic
UnionOperation971.RightSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation971.TopSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation971.brickColor = BrickColor.new("Lime green")
UnionOperation971.UsePartColor = true
Weld972.Parent = Part969
Weld972.C0 = CFrame.new(-0.0821743011, -0.0373578072, -0.00140380859, 0.999521792, -0.00951478444, -0.029430557, -0.00958599616, -0.999951482, -0.00227957801, -0.0294074379, 0.00256060879, -0.999564588)
Weld972.Part0 = Part969
Weld972.Part1 = UnionOperation970
Weld972.part1 = UnionOperation970
Weld973.Parent = Part969
Weld973.C0 = CFrame.new(-0.476671219, 0.081594944, 0.0134887695, 0.0294285137, 0.00874387659, -0.999529064, 0.00232200092, 0.999958456, 0.00881599635, 0.999564648, -0.00258034933, 0.0294069871)
Weld973.Part0 = Part969
Weld973.Part1 = UnionOperation971
Weld973.part1 = UnionOperation971
Part974.Name = "Head"
Part974.Parent = Model958
Part974.CFrame = CFrame.new(13.1355658, 15.4617863, -9.89228821, -0.999999344, 0, 0.00122000044, 0, 1, 0, -0.00122000044, 0, -0.999999344)
Part974.Orientation = Vector3.new(0, 179.92999267578125, 0)
Part974.Position = Vector3.new(13.135565757751465, 15.461786270141602, -9.892288208007812)
Part974.Rotation = Vector3.new(-180, 0.07000000029802322, -180)
Part974.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part974.Transparency = 1
Part974.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
Part974.Size = Vector3.new(2, 1, 1)
Part974.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part974.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part974.BrickColor = BrickColor.new("Institutional white")
Part974.CanCollide = false
Part974.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part974.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part974.Locked = true
Part974.Material = Enum.Material.SmoothPlastic
Part974.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part974.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part974.brickColor = BrickColor.new("Institutional white")
Part974.FormFactor = Enum.FormFactor.Symmetric
Part974.formFactor = Enum.FormFactor.Symmetric
SpecialMesh975.Parent = Part974
SpecialMesh975.Scale = Vector3.new(1.25, 1.25, 1.25)
Decal976.Name = "face"
Decal976.Parent = Part974
UnionOperation977.Parent = Part974
UnionOperation977.CFrame = CFrame.new(13.6326847, 15.3329048, -10.1648712, -0.873260438, 0.244933322, -0.421217471, 0.309787124, 0.946349025, -0.0919535831, 0.376096249, -0.210787192, -0.902286351)
UnionOperation977.Orientation = Vector3.new(5.28000020980835, -154.97999572753906, 18.1299991607666)
UnionOperation977.Position = Vector3.new(13.632684707641602, 15.332904815673828, -10.164871215820312)
UnionOperation977.Rotation = Vector3.new(174.17999267578125, -24.90999984741211, -164.3300018310547)
UnionOperation977.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
UnionOperation977.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation977.Size = Vector3.new(0.6729831695556641, 0.2589454650878906, 0.8848991394042969)
UnionOperation977.BrickColor = BrickColor.new("Really black")
UnionOperation977.CanCollide = false
UnionOperation977.Material = Enum.Material.SmoothPlastic
UnionOperation977.brickColor = BrickColor.new("Really black")
UnionOperation978.Parent = Part974
UnionOperation978.CFrame = CFrame.new(13.1681318, 16.027729, -9.68055916, 0.0113319987, 0.00774099585, -0.999906063, -0.0407089889, 0.999144614, 0.00727374339, 0.999106944, 0.0406227373, 0.0116374334)
UnionOperation978.Orientation = Vector3.new(-0.41999998688697815, -89.33000183105469, -2.3299999237060547)
UnionOperation978.Position = Vector3.new(13.168131828308105, 16.027729034423828, -9.680559158325195)
UnionOperation978.Rotation = Vector3.new(-32.0099983215332, -89.20999908447266, -34.34000015258789)
UnionOperation978.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
UnionOperation978.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation978.Size = Vector3.new(1.6136817932128906, 1.3530220985412598, 1.462005615234375)
UnionOperation978.BrickColor = BrickColor.new("Really black")
UnionOperation978.CanCollide = false
UnionOperation978.Material = Enum.Material.SmoothPlastic
UnionOperation978.brickColor = BrickColor.new("Really black")
UnionOperation979.Parent = Part974
UnionOperation979.CFrame = CFrame.new(13.142272, 15.0327797, -9.27151775, 0.999902666, 0.0102675129, 0.00947425049, -0.0071910033, 0.959658146, -0.281077534, -0.0119780088, 0.280982077, 0.959638476)
UnionOperation979.Orientation = Vector3.new(16.31999969482422, 0.5699999928474426, -0.4300000071525574)
UnionOperation979.Position = Vector3.new(13.142271995544434, 15.032779693603516, -9.271517753601074)
UnionOperation979.Rotation = Vector3.new(16.329999923706055, 0.5400000214576721, -0.5899999737739563)
UnionOperation979.Color = Color3.new(0, 0.721569, 0)
UnionOperation979.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation979.Size = Vector3.new(0.3114875853061676, 0.24697615206241608, 0.07687336206436157)
UnionOperation979.BackSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation979.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation979.BrickColor = BrickColor.new("Lime green")
UnionOperation979.CanCollide = false
UnionOperation979.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation979.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation979.Material = Enum.Material.SmoothPlastic
UnionOperation979.RightSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation979.TopSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation979.brickColor = BrickColor.new("Lime green")
UnionOperation979.UsePartColor = true
UnionOperation980.Parent = Part974
UnionOperation980.CFrame = CFrame.new(12.662117, 15.3284111, -10.1996479, 0.551515102, -0.233289003, -0.800879359, 0.379431069, 0.925183654, -0.00820746738, 0.742875159, -0.299351931, 0.598769784)
UnionOperation980.Orientation = Vector3.new(0.4699999988079071, -53.220001220703125, 22.299999237060547)
UnionOperation980.Position = Vector3.new(12.662117004394531, 15.328411102294922, -10.199647903442383)
UnionOperation980.Rotation = Vector3.new(0.7900000214576721, -53.209999084472656, 22.93000030517578)
UnionOperation980.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
UnionOperation980.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation980.Size = Vector3.new(0.6729831695556641, 0.2589454650878906, 0.8848991394042969)
UnionOperation980.BrickColor = BrickColor.new("Really black")
UnionOperation980.CanCollide = false
UnionOperation980.Material = Enum.Material.SmoothPlastic
UnionOperation980.brickColor = BrickColor.new("Really black")
Part981.Name = "FakeHead"
Part981.Parent = Part974
Part981.CFrame = CFrame.new(13.1307764, 15.4647789, -9.81843376, -0.999902189, 0.0077372496, -0.0116653359, 0.00725700008, 0.99914664, 0.040663626, 0.0119700031, 0.0405749902, -0.999105036)
Part981.Orientation = Vector3.new(-2.3299999237060547, -179.3300018310547, 0.41999998688697815)
Part981.Position = Vector3.new(13.130776405334473, 15.464778900146484, -9.81843376159668)
Part981.Rotation = Vector3.new(-177.6699981689453, -0.6700000166893005, -179.55999755859375)
Part981.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
Part981.Size = Vector3.new(1.977425217628479, 0.9887123703956604, 0.9887130856513977)
Part981.CanCollide = false
Part981.Material = Enum.Material.SmoothPlastic
Part981.TopSurface = Enum.SurfaceType.Smooth
Part981.FormFactor = Enum.FormFactor.Symmetric
Part981.formFactor = Enum.FormFactor.Symmetric
SpecialMesh982.Parent = Part981
SpecialMesh982.Scale = Vector3.new(1.25, 1.25, 1.25)
Decal983.Name = "Tired Face"
Decal983.Parent = Part981
Decal983.Texture = "http://www.roblox.com/asset/?id=149118410"
Weld984.Parent = Part974
Weld984.C0 = CFrame.new(-0.496786118, -0.128880978, 0.273189545, 0.872800887, -0.244675964, 0.422317892, 0.309787124, 0.946349025, -0.0919535831, -0.377161294, 0.211085826, 0.901771724)
Weld984.Part0 = Part974
Weld984.Part1 = UnionOperation977
Weld984.part1 = UnionOperation977
Weld985.Parent = Part974
Weld985.C0 = CFrame.new(-0.0328245163, 0.565943241, -0.211688995, -0.0125508998, -0.00779054919, 0.999891043, -0.0407089889, 0.999144614, 0.00727374339, -0.999092281, -0.0406132601, -0.0128573095)
Weld985.Part0 = Part974
Weld985.Part1 = UnionOperation978
Weld985.part1 = UnionOperation978
Weld986.Parent = Part974
Weld986.C0 = CFrame.new(-0.0074634552, -0.429006577, -0.620761871, -0.999887228, -0.010610302, -0.0106450012, -0.0071910033, 0.959658146, -0.281077534, 0.0131978802, -0.280969322, -0.959626138)
Weld986.Part0 = Part974
Weld986.Part1 = UnionOperation979
Weld986.part1 = UnionOperation979
Weld987.Parent = Part974
Weld987.C0 = CFrame.new(0.473823547, -0.133375645, 0.306781769, -0.552420974, 0.233654007, 0.800148189, 0.379431069, 0.925183654, -0.00820746738, -0.742201686, 0.29906708, -0.599746406)
Weld987.Part0 = Part974
Weld987.Part1 = UnionOperation980
Weld987.part1 = UnionOperation980
Weld988.Parent = Part974
Weld988.C0 = CFrame.new(0.00469970703, 0.00299310684, -0.0738601685, 0.999886751, -0.00778674474, 0.0128842341, 0.00725700008, 0.99914664, 0.040663626, -0.0131898737, -0.0405655168, 0.999089956)
Weld988.Part0 = Part974
Weld988.Part1 = Part981
Weld988.part1 = Part981
Part989.Name = "RootPart"
Part989.Parent = Model958
Part989.CFrame = CFrame.new(13.1355658, 13.9617863, -9.89228821, -0.999999344, 0, 0.00122000044, 0, 1, 0, -0.00122000044, 0, -0.999999344)
Part989.Orientation = Vector3.new(0, 179.92999267578125, 0)
Part989.Position = Vector3.new(13.135565757751465, 13.961786270141602, -9.892288208007812)
Part989.Rotation = Vector3.new(-180, 0.07000000029802322, -180)
Part989.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part989.Transparency = 1
Part989.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
Part989.Size = Vector3.new(2, 2, 1)
Part989.Anchored = true
Part989.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part989.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part989.BrickColor = BrickColor.new("Institutional white")
Part989.CanCollide = false
Part989.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part989.LeftParamA = 0
Part989.LeftParamB = 0
Part989.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part989.Locked = true
Part989.Material = Enum.Material.SmoothPlastic
Part989.RightParamA = 0
Part989.RightParamB = 0
Part989.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part989.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part989.brickColor = BrickColor.new("Institutional white")
Part989.FormFactor = Enum.FormFactor.Symmetric
Part989.formFactor = Enum.FormFactor.Symmetric
Motor6D990.Name = "Root Joint"
Motor6D990.Parent = Part989
Motor6D990.MaxVelocity = 0.10000000149011612
Motor6D990.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Motor6D990.C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Motor6D990.Part0 = Part989
Motor6D990.Part1 = Part991
Motor6D990.part1 = Part991
Part991.Name = "StandTorso"
Part991.Parent = Model958
Part991.CFrame = CFrame.new(13.1355658, 13.9617863, -9.89228821, -0.999999344, 0, 0.00122000044, 0, 1, 0, -0.00122000044, 0, -0.999999344)
Part991.Orientation = Vector3.new(0, 179.92999267578125, 0)
Part991.Position = Vector3.new(13.135565757751465, 13.961786270141602, -9.892288208007812)
Part991.Rotation = Vector3.new(-180, 0.07000000029802322, -180)
Part991.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part991.Transparency = 1
Part991.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
Part991.Size = Vector3.new(2, 2, 1)
Part991.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part991.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part991.BrickColor = BrickColor.new("Institutional white")
Part991.CanCollide = false
Part991.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part991.LeftParamA = 0
Part991.LeftParamB = 0
Part991.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part991.Locked = true
Part991.Material = Enum.Material.SmoothPlastic
Part991.RightParamA = 0
Part991.RightParamB = 0
Part991.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part991.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part991.brickColor = BrickColor.new("Institutional white")
Part991.FormFactor = Enum.FormFactor.Symmetric
Part991.formFactor = Enum.FormFactor.Symmetric
Motor6D992.Name = "Right Shoulder"
Motor6D992.Parent = Part991
Motor6D992.MaxVelocity = 0.10000000149011612
Motor6D992.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Motor6D992.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Motor6D992.Part0 = Part991
Motor6D992.Part1 = Part964
Motor6D992.part1 = Part964
Motor6D993.Name = "Left Shoulder"
Motor6D993.Parent = Part991
Motor6D993.MaxVelocity = 0.10000000149011612
Motor6D993.C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Motor6D993.C1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Motor6D993.Part0 = Part991
Motor6D993.Part1 = Part969
Motor6D993.part1 = Part969
Motor6D994.Name = "Right Hip"
Motor6D994.Parent = Part991
Motor6D994.MaxVelocity = 0.10000000149011612
Motor6D994.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Motor6D994.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Motor6D994.Part0 = Part991
Motor6D994.Part1 = Part959
Motor6D994.part1 = Part959
Motor6D995.Name = "Left Hip"
Motor6D995.Parent = Part991
Motor6D995.MaxVelocity = 0.10000000149011612
Motor6D995.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Motor6D995.C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Motor6D995.Part0 = Part991
Motor6D995.Part1 = Part1011
Motor6D995.part1 = Part1011
Motor6D996.Name = "Neck"
Motor6D996.Parent = Part991
Motor6D996.MaxVelocity = 0.10000000149011612
Motor6D996.C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Motor6D996.C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Motor6D996.Part0 = Part991
Motor6D996.Part1 = Part974
Motor6D996.part1 = Part974
UnionOperation997.Parent = Part991
UnionOperation997.CFrame = CFrame.new(13.1682539, 14.0132141, -10.0294056, -0.00675298227, -0.0154849961, -0.999858141, 0.999944091, 0.00812958553, -0.00687952433, 0.00823508948, -0.99984777, 0.0154291578)
UnionOperation997.Orientation = Vector3.new(0.38999998569488525, -89.12000274658203, 89.52999877929688)
UnionOperation997.Position = Vector3.new(13.168253898620605, 14.013214111328125, -10.02940559387207)
UnionOperation997.Rotation = Vector3.new(24.030000686645508, -89.02999877929688, 113.55999755859375)
UnionOperation997.Color = Color3.new(0.960784, 0.803922, 0.188235)
UnionOperation997.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation997.Size = Vector3.new(2.085878849029541, 1.5074958801269531, 1.8861207962036133)
UnionOperation997.BrickColor = BrickColor.new("Bright yellow")
UnionOperation997.CanCollide = false
UnionOperation997.Material = Enum.Material.SmoothPlastic
UnionOperation997.brickColor = BrickColor.new("Bright yellow")
UnionOperation998.Parent = Part991
UnionOperation998.CFrame = CFrame.new(13.1403675, 13.9505692, -10.0208836, 0.0154180061, 0.99985975, -0.00668939855, -0.0081069544, 0.00681503583, 0.999944925, 0.999849141, -0.0153628476, 0.00821101945)
UnionOperation998.Orientation = Vector3.new(-89.4000015258789, -39.16999816894531, -49.95000076293945)
UnionOperation998.Position = Vector3.new(13.14036750793457, 13.950569152832031, -10.020883560180664)
UnionOperation998.Rotation = Vector3.new(-89.52999877929688, -0.3799999952316284, -89.12000274658203)
UnionOperation998.Color = Color3.new(0.937255, 0.721569, 0.219608)
UnionOperation998.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation998.Size = Vector3.new(1.5245857238769531, 2.194819450378418, 2.0303168296813965)
UnionOperation998.BrickColor = BrickColor.new("Gold")
UnionOperation998.CanCollide = false
UnionOperation998.Material = Enum.Material.SmoothPlastic
UnionOperation998.brickColor = BrickColor.new("Gold")
UnionOperation999.Parent = Part991
UnionOperation999.CFrame = CFrame.new(13.1741533, 13.725009, -9.47738457, 0.999895513, -0.00669782003, 0.0129071251, 0.00680304132, 0.999944925, -0.0081210034, -0.0128519423, 0.00820808671, 0.999884665)
UnionOperation999.Orientation = Vector3.new(0.4699999988079071, 0.7400000095367432, 0.38999998569488525)
UnionOperation999.Position = Vector3.new(13.174153327941895, 13.725008964538574, -9.477384567260742)
UnionOperation999.Rotation = Vector3.new(0.4699999988079071, 0.7400000095367432, 0.3799999952316284)
UnionOperation999.Color = Color3.new(0.960784, 0.803922, 0.188235)
UnionOperation999.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation999.Size = Vector3.new(0.8097934126853943, 0.3318828046321869, 0.3230326175689697)
UnionOperation999.BackSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation999.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation999.BrickColor = BrickColor.new("Bright yellow")
UnionOperation999.CanCollide = false
UnionOperation999.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation999.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation999.Material = Enum.Material.SmoothPlastic
UnionOperation999.RightSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation999.TopSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation999.brickColor = BrickColor.new("Bright yellow")
UnionOperation999.UsePartColor = true
UnionOperation1000.Parent = Part991
UnionOperation1000.CFrame = CFrame.new(13.1717482, 14.079607, -9.47834492, 0.999895513, -0.00669782003, 0.0129071251, 0.00680304132, 0.999944925, -0.0081210034, -0.0128519423, 0.00820808671, 0.999884665)
UnionOperation1000.Orientation = Vector3.new(0.4699999988079071, 0.7400000095367432, 0.38999998569488525)
UnionOperation1000.Position = Vector3.new(13.171748161315918, 14.079607009887695, -9.478344917297363)
UnionOperation1000.Rotation = Vector3.new(0.4699999988079071, 0.7400000095367432, 0.3799999952316284)
UnionOperation1000.Color = Color3.new(0.960784, 0.803922, 0.188235)
UnionOperation1000.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation1000.Size = Vector3.new(0.8853384852409363, 0.362843781709671, 0.3531681001186371)
UnionOperation1000.BackSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1000.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1000.BrickColor = BrickColor.new("Bright yellow")
UnionOperation1000.CanCollide = false
UnionOperation1000.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1000.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1000.Material = Enum.Material.SmoothPlastic
UnionOperation1000.RightSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1000.TopSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1000.brickColor = BrickColor.new("Bright yellow")
UnionOperation1000.UsePartColor = true
UnionOperation1001.Parent = Part991
UnionOperation1001.CFrame = CFrame.new(13.1891804, 13.1251678, -9.29081249, 0.999858916, -0.0067544654, 0.0154568246, 0.00689203711, 0.999938071, -0.00886069238, -0.0153959347, 0.00896609947, 0.999842227)
UnionOperation1001.Orientation = Vector3.new(0.5099999904632568, 0.8899999856948853, 0.38999998569488525)
UnionOperation1001.Position = Vector3.new(13.189180374145508, 13.125167846679688, -9.290812492370605)
UnionOperation1001.Rotation = Vector3.new(0.5099999904632568, 0.8899999856948853, 0.38999998569488525)
UnionOperation1001.Color = Color3.new(0, 0.721569, 0)
UnionOperation1001.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation1001.Size = Vector3.new(0.42852479219436646, 0.3397740423679352, 0.10044381022453308)
UnionOperation1001.BackSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1001.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1001.BrickColor = BrickColor.new("Lime green")
UnionOperation1001.CanCollide = false
UnionOperation1001.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1001.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1001.Material = Enum.Material.SmoothPlastic
UnionOperation1001.RightSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1001.TopSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1001.brickColor = BrickColor.new("Lime green")
UnionOperation1001.UsePartColor = true
UnionOperation1002.Parent = Part991
UnionOperation1002.CFrame = CFrame.new(13.166791, 14.5286636, -9.62435913, 0.999895513, -0.00669782003, 0.0129071251, 0.00680304132, 0.999944925, -0.0081210034, -0.0128519423, 0.00820808671, 0.999884665)
UnionOperation1002.Orientation = Vector3.new(0.4699999988079071, 0.7400000095367432, 0.38999998569488525)
UnionOperation1002.Position = Vector3.new(13.166790962219238, 14.528663635253906, -9.624359130859375)
UnionOperation1002.Rotation = Vector3.new(0.4699999988079071, 0.7400000095367432, 0.3799999952316284)
UnionOperation1002.Color = Color3.new(0.960784, 0.803922, 0.188235)
UnionOperation1002.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation1002.Size = Vector3.new(1.7291768789291382, 0.7086791396141052, 0.6897814273834229)
UnionOperation1002.BackSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1002.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1002.BrickColor = BrickColor.new("Bright yellow")
UnionOperation1002.CanCollide = false
UnionOperation1002.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1002.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1002.Material = Enum.Material.SmoothPlastic
UnionOperation1002.RightSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1002.TopSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1002.brickColor = BrickColor.new("Bright yellow")
UnionOperation1002.UsePartColor = true
UnionOperation1003.Parent = Part991
UnionOperation1003.CFrame = CFrame.new(13.1764097, 13.4085484, -9.46612835, 0.999895513, -0.00669782003, 0.0129071251, 0.00680304132, 0.999944925, -0.0081210034, -0.0128519423, 0.00820808671, 0.999884665)
UnionOperation1003.Orientation = Vector3.new(0.4699999988079071, 0.7400000095367432, 0.38999998569488525)
UnionOperation1003.Position = Vector3.new(13.176409721374512, 13.408548355102539, -9.4661283493042)
UnionOperation1003.Rotation = Vector3.new(0.4699999988079071, 0.7400000095367432, 0.3799999952316284)
UnionOperation1003.Color = Color3.new(0.960784, 0.803922, 0.188235)
UnionOperation1003.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation1003.Size = Vector3.new(0.727165937423706, 0.29801881313323975, 0.2900720536708832)
UnionOperation1003.BackSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1003.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1003.BrickColor = BrickColor.new("Bright yellow")
UnionOperation1003.CanCollide = false
UnionOperation1003.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1003.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1003.Material = Enum.Material.SmoothPlastic
UnionOperation1003.RightSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1003.TopSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1003.brickColor = BrickColor.new("Bright yellow")
UnionOperation1003.UsePartColor = true
Weld1004.Parent = Part991
Weld1004.C0 = CFrame.new(-0.0325212479, 0.0514278412, 0.13715744, 0.00674292957, 0.0167047977, 0.999838471, 0.999944091, 0.00812958553, -0.00687952433, -0.00824332144, 0.999828041, -0.0166489724)
Weld1004.Part0 = Part991
Weld1004.Part1 = UnionOperation997
Weld1004.part1 = UnionOperation997
Weld1005.Parent = Part991
Weld1005.C0 = CFrame.new(-0.00464439392, -0.0112166405, 0.128601074, -0.0166378096, -0.9998402, 0.00667937519, -0.0081069544, 0.00681503583, 0.999944925, -0.999829471, 0.0165826641, -0.00821917411)
Weld1005.Part0 = Part991
Weld1005.Part1 = UnionOperation998
Weld1005.part1 = UnionOperation998
Weld1006.Parent = Part991
Weld1006.C0 = CFrame.new(-0.0390939713, -0.236777306, -0.414855957, -0.999879003, 0.0066878004, -0.0141269742, 0.00680304132, 0.999944925, -0.0081210034, 0.0140718045, -0.00821625162, -0.999868095)
Weld1006.Part0 = Part991
Weld1006.Part1 = UnionOperation999
Weld1006.part1 = UnionOperation999
Weld1007.Parent = Part991
Weld1007.C0 = CFrame.new(-0.036687851, 0.117820263, -0.413898468, -0.999879003, 0.0066878004, -0.0141269742, 0.00680304132, 0.999944925, -0.0081210034, 0.0140718045, -0.00821625162, -0.999868095)
Weld1007.Part0 = Part991
Weld1007.Part1 = UnionOperation1000
Weld1007.part1 = UnionOperation1000
Weld1008.Parent = Part991
Weld1008.C0 = CFrame.new(-0.0543479919, -0.8366189, -0.601409912, -0.999839306, 0.00674352096, -0.0166766196, 0.00689203711, 0.999938071, -0.00886069238, 0.0166157503, -0.00897433236, -0.999822557)
Weld1008.Part0 = Part991
Weld1008.Part1 = UnionOperation1001
Weld1008.part1 = UnionOperation1001
Weld1009.Parent = Part991
Weld1009.C0 = CFrame.new(-0.0315523148, 0.566876888, -0.26789093, -0.999879003, 0.0066878004, -0.0141269742, 0.00680304132, 0.999944925, -0.0081210034, 0.0140718045, -0.00821625162, -0.999868095)
Weld1009.Part0 = Part991
Weld1009.Part1 = UnionOperation1002
Weld1009.part1 = UnionOperation1002
Weld1010.Parent = Part991
Weld1010.C0 = CFrame.new(-0.0413637161, -0.553237915, -0.426109314, -0.999879003, 0.0066878004, -0.0141269742, 0.00680304132, 0.999944925, -0.0081210034, 0.0140718045, -0.00821625162, -0.999868095)
Weld1010.Part0 = Part991
Weld1010.Part1 = UnionOperation1003
Weld1010.part1 = UnionOperation1003
Part1011.Name = "Left Leg"
Part1011.Parent = Model958
Part1011.CFrame = CFrame.new(13.6355658, 11.9617863, -9.89167786, -0.999999344, 0, 0.00122000044, 0, 1, 0, -0.00122000044, 0, -0.999999344)
Part1011.Orientation = Vector3.new(0, 179.92999267578125, 0)
Part1011.Position = Vector3.new(13.635565757751465, 11.961786270141602, -9.891677856445312)
Part1011.Rotation = Vector3.new(-180, 0.07000000029802322, -180)
Part1011.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part1011.Transparency = 1
Part1011.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
Part1011.Size = Vector3.new(1, 2, 1)
Part1011.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part1011.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part1011.BrickColor = BrickColor.new("Institutional white")
Part1011.CanCollide = false
Part1011.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part1011.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part1011.Locked = true
Part1011.Material = Enum.Material.SmoothPlastic
Part1011.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part1011.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part1011.brickColor = BrickColor.new("Institutional white")
Part1011.FormFactor = Enum.FormFactor.Symmetric
Part1011.formFactor = Enum.FormFactor.Symmetric
UnionOperation1012.Parent = Part1011
UnionOperation1012.CFrame = CFrame.new(13.6526928, 12.0040588, -9.39194298, 0.999109864, 0.00385729363, 0.0420178138, -0.0046270024, 0.999822974, 0.0182368401, -0.0419400334, -0.0184150208, 0.998950839)
UnionOperation1012.Orientation = Vector3.new(-1.0399999618530273, 2.4100000858306885, -0.27000001072883606)
UnionOperation1012.Position = Vector3.new(13.652692794799805, 12.004058837890625, -9.391942977905273)
UnionOperation1012.Rotation = Vector3.new(-1.0499999523162842, 2.4100000858306885, -0.2199999988079071)
UnionOperation1012.Color = Color3.new(0, 0.721569, 0)
UnionOperation1012.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation1012.Size = Vector3.new(0.37119773030281067, 0.29431986808776855, 0.08700665086507797)
UnionOperation1012.BackSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1012.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1012.BrickColor = BrickColor.new("Lime green")
UnionOperation1012.CanCollide = false
UnionOperation1012.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1012.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1012.Material = Enum.Material.SmoothPlastic
UnionOperation1012.RightSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1012.TopSurface = Enum.SurfaceType.SmoothNoOutlines
UnionOperation1012.brickColor = BrickColor.new("Lime green")
UnionOperation1012.UsePartColor = true
UnionOperation1013.Parent = Part1011
UnionOperation1013.CFrame = CFrame.new(13.640214, 11.9031868, -9.90026283, 0.999109507, 0.00391144259, 0.0420193598, -0.00471300026, 0.99980855, 0.0189938489, -0.0419370197, -0.0191749707, 0.998936594)
UnionOperation1013.Orientation = Vector3.new(-1.090000033378601, 2.4100000858306885, -0.27000001072883606)
UnionOperation1013.Position = Vector3.new(13.640213966369629, 11.903186798095703, -9.900262832641602)
UnionOperation1013.Rotation = Vector3.new(-1.090000033378601, 2.4100000858306885, -0.2199999988079071)
UnionOperation1013.Color = Color3.new(0.937255, 0.721569, 0.219608)
UnionOperation1013.Velocity = Vector3.new(-1.401298464324817e-45, 0, 1.401298464324817e-45)
UnionOperation1013.Size = Vector3.new(1.1200132369995117, 2.0703656673431396, 1.05157470703125)
UnionOperation1013.BrickColor = BrickColor.new("Gold")
UnionOperation1013.CanCollide = false
UnionOperation1013.Material = Enum.Material.SmoothPlastic
UnionOperation1013.brickColor = BrickColor.new("Gold")
Weld1014.Parent = Part1011
Weld1014.C0 = CFrame.new(-0.0177364349, 0.0422720909, -0.499713898, -0.999057889, -0.00383482408, -0.0432365015, -0.0046270024, 0.999822974, 0.0182368401, 0.0431589149, 0.0184197109, -0.998898745)
Weld1014.Part0 = Part1011
Weld1014.Part1 = UnionOperation1012
Weld1014.part1 = UnionOperation1012
Weld1015.Parent = Part1011
Weld1015.C0 = CFrame.new(-0.0046377182, -0.058599472, 0.00859069824, -0.999057531, -0.0038880459, -0.0432380289, -0.00471300026, 0.99980855, 0.0189938489, 0.0431559011, 0.0191797279, -0.998884499)
Weld1015.Part0 = Part1011
Weld1015.Part1 = UnionOperation1013
Weld1015.part1 = UnionOperation1013
BoolValue1016.Name = "IsAStand"
BoolValue1016.Parent = Model958
BoolValue1016.Value = true
ScreenGui1017.Name = "ClockGui"
ScreenGui1017.Parent = Folder519
ScreenGui1017.Enabled = false
Frame1018.Name = "Clock"
Frame1018.Parent = ScreenGui1017
Frame1018.Position = UDim2.new(0.0024721846, 0, 0.483909428, 0)
Frame1018.Size = UDim2.new(0, 190, 0, 190)
Frame1018.BackgroundColor = BrickColor.new("Institutional white")
Frame1018.BackgroundColor3 = Color3.new(1, 1, 1)
Frame1018.BackgroundTransparency = 1
ImageLabel1019.Name = "ClockOutline"
ImageLabel1019.Parent = Frame1018
ImageLabel1019.Position = UDim2.new(-0.00011061132, 0, -0.00372624397, 0)
ImageLabel1019.Size = UDim2.new(0, 190, 0, 190)
ImageLabel1019.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel1019.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel1019.BackgroundTransparency = 1
ImageLabel1019.Image = "rbxassetid://282305376"
ImageLabel1019.ImageColor3 = Color3.new(0, 0, 0)
ImageLabel1020.Name = "ClockInnerline"
ImageLabel1020.Parent = Frame1018
ImageLabel1020.Position = UDim2.new(0.0299999993, 0, 0.0199999996, 0)
ImageLabel1020.Size = UDim2.new(0, 180, 0, 180)
ImageLabel1020.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel1020.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel1020.BackgroundTransparency = 1
ImageLabel1020.Image = "rbxassetid://282305376"
ImageLabel1020.ImageColor3 = Color3.new(0.545098, 0.545098, 0.545098)
Frame1021.Name = "SecondaryArrow"
Frame1021.Parent = Frame1018
Frame1021.Position = UDim2.new(0, 0, -0.0105262995, 0)
Frame1021.Rotation = 133
Frame1021.Size = UDim2.new(0, 190, 0, 191)
Frame1021.BackgroundColor = BrickColor.new("Institutional white")
Frame1021.BackgroundColor3 = Color3.new(1, 1, 1)
Frame1021.BackgroundTransparency = 1
Frame1022.Name = "TheArrow"
Frame1022.Parent = Frame1021
Frame1022.Position = UDim2.new(0.483999997, 0, 0.170000002, 0)
Frame1022.Size = UDim2.new(0, 6, 0, 65)
Frame1022.BackgroundColor = BrickColor.new("Really black")
Frame1022.BackgroundColor3 = Color3.new(0, 0, 0)
Frame1022.BackgroundTransparency = 0.5
Frame1022.BorderSizePixel = 0
Frame1023.Name = "MainArrow"
Frame1023.Parent = Frame1018
Frame1023.Position = UDim2.new(0, 0, -0.0105262995, 0)
Frame1023.Size = UDim2.new(0, 190, 0, 191)
Frame1023.BackgroundColor = BrickColor.new("Institutional white")
Frame1023.BackgroundColor3 = Color3.new(1, 1, 1)
Frame1023.BackgroundTransparency = 1
Frame1024.Name = "TheArrow"
Frame1024.Parent = Frame1023
Frame1024.Position = UDim2.new(0.483999997, 0, 0.0900000036, 0)
Frame1024.Size = UDim2.new(0, 6, 0, 80)
Frame1024.BackgroundColor = BrickColor.new("Really black")
Frame1024.BackgroundColor3 = Color3.new(0, 0, 0)
Frame1024.BackgroundTransparency = 0.5
Frame1024.BorderSizePixel = 0
ImageLabel1025.Name = "ClockIndex"
ImageLabel1025.Parent = Frame1018
ImageLabel1025.Position = UDim2.new(-0.00011061132, 0, -0.00372624397, 0)
ImageLabel1025.Size = UDim2.new(0, 190, 0, 190)
ImageLabel1025.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel1025.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel1025.BackgroundTransparency = 1
ImageLabel1025.Image = "rbxassetid://187884215"
TextLabel1026.Name = "Count"
TextLabel1026.Parent = Frame1018
TextLabel1026.Position = UDim2.new(0.231578946, 0, 0.273684204, 0)
TextLabel1026.Size = UDim2.new(0, 103, 0, 83)
TextLabel1026.BackgroundColor = BrickColor.new("Institutional white")
TextLabel1026.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel1026.BackgroundTransparency = 1
TextLabel1026.Font = Enum.Font.SourceSans
TextLabel1026.FontSize = Enum.FontSize.Size14
TextLabel1026.Text = ""
TextLabel1026.TextColor = BrickColor.new("Institutional white")
TextLabel1026.TextColor3 = Color3.new(1, 1, 1)
TextLabel1026.TextScaled = true
TextLabel1026.TextSize = 14
TextLabel1026.TextStrokeTransparency = 0
TextLabel1026.TextWrap = true
TextLabel1026.TextWrapped = true
ScreenGui1027.Name = "MoveList"
ScreenGui1027.Parent = Folder519
ScreenGui1027.Enabled = false
ScreenGui1027.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame1028.Name = "Moves"
Frame1028.Parent = ScreenGui1027
Frame1028.Position = UDim2.new(0.00300000003, 0, 0.621999979, 0)
Frame1028.Size = UDim2.new(0, 280, 0, 317)
Frame1028.BackgroundColor = BrickColor.new("Institutional white")
Frame1028.BackgroundColor3 = Color3.new(1, 1, 1)
Frame1028.BackgroundTransparency = 1
TextLabel1029.Name = "Title"
TextLabel1029.Parent = Frame1028
TextLabel1029.Position = UDim2.new(0, 0, 0.234156653, 0)
TextLabel1029.Size = UDim2.new(0, 280, 0, 24)
TextLabel1029.BackgroundColor = BrickColor.new("Institutional white")
TextLabel1029.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel1029.BackgroundTransparency = 1
TextLabel1029.Font = Enum.Font.SourceSans
TextLabel1029.FontSize = Enum.FontSize.Size14
TextLabel1029.Text = "Moves:"
TextLabel1029.TextColor = BrickColor.new("Really black")
TextLabel1029.TextColor3 = Color3.new(0, 0, 0)
TextLabel1029.TextScaled = true
TextLabel1029.TextSize = 14
TextLabel1029.TextStrokeColor3 = Color3.new(1, 1, 1)
TextLabel1029.TextStrokeTransparency = 0
TextLabel1029.TextWrap = true
TextLabel1029.TextWrapped = true
TextLabel1029.TextXAlignment = Enum.TextXAlignment.Left
TextLabel1030.Name = "Q"
TextLabel1030.Parent = Frame1028
TextLabel1030.Position = UDim2.new(0, 0, 0.309866428, 0)
TextLabel1030.Size = UDim2.new(0, 280, 0, 24)
TextLabel1030.BackgroundColor = BrickColor.new("Institutional white")
TextLabel1030.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel1030.BackgroundTransparency = 1
TextLabel1030.Font = Enum.Font.SourceSans
TextLabel1030.FontSize = Enum.FontSize.Size14
TextLabel1030.Text = "Q - De/Summon Stand"
TextLabel1030.TextColor = BrickColor.new("Institutional white")
TextLabel1030.TextColor3 = Color3.new(1, 1, 1)
TextLabel1030.TextScaled = true
TextLabel1030.TextSize = 14
TextLabel1030.TextStrokeTransparency = 0
TextLabel1030.TextWrap = true
TextLabel1030.TextWrapped = true
TextLabel1030.TextXAlignment = Enum.TextXAlignment.Left
TextLabel1031.Name = "E"
TextLabel1031.Parent = Frame1028
TextLabel1031.Position = UDim2.new(0, 0, 0.385576218, 0)
TextLabel1031.Size = UDim2.new(0, 280, 0, 24)
TextLabel1031.BackgroundColor = BrickColor.new("Institutional white")
TextLabel1031.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel1031.BackgroundTransparency = 1
TextLabel1031.Font = Enum.Font.SourceSans
TextLabel1031.FontSize = Enum.FontSize.Size14
TextLabel1031.Text = "E (Hold) - Barrage"
TextLabel1031.TextColor = BrickColor.new("Institutional white")
TextLabel1031.TextColor3 = Color3.new(1, 1, 1)
TextLabel1031.TextScaled = true
TextLabel1031.TextSize = 14
TextLabel1031.TextStrokeTransparency = 0
TextLabel1031.TextWrap = true
TextLabel1031.TextWrapped = true
TextLabel1031.TextXAlignment = Enum.TextXAlignment.Left
TextLabel1032.Name = "R"
TextLabel1032.Parent = Frame1028
TextLabel1032.Position = UDim2.new(0, 0, 0.461286008, 0)
TextLabel1032.Size = UDim2.new(0, 280, 0, 24)
TextLabel1032.BackgroundColor = BrickColor.new("Institutional white")
TextLabel1032.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel1032.BackgroundTransparency = 1
TextLabel1032.Font = Enum.Font.SourceSans
TextLabel1032.FontSize = Enum.FontSize.Size14
TextLabel1032.Text = "R - Strong Punch"
TextLabel1032.TextColor = BrickColor.new("Institutional white")
TextLabel1032.TextColor3 = Color3.new(1, 1, 1)
TextLabel1032.TextScaled = true
TextLabel1032.TextSize = 14
TextLabel1032.TextStrokeTransparency = 0
TextLabel1032.TextWrap = true
TextLabel1032.TextWrapped = true
TextLabel1032.TextXAlignment = Enum.TextXAlignment.Left
TextLabel1033.Name = "T"
TextLabel1033.Parent = Frame1028
TextLabel1033.Position = UDim2.new(0, 0, 0.536995769, 0)
TextLabel1033.Size = UDim2.new(0, 280, 0, 24)
TextLabel1033.BackgroundColor = BrickColor.new("Institutional white")
TextLabel1033.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel1033.BackgroundTransparency = 1
TextLabel1033.Font = Enum.Font.SourceSans
TextLabel1033.FontSize = Enum.FontSize.Size14
TextLabel1033.Text = "T - Time Stop/Resume"
TextLabel1033.TextColor = BrickColor.new("Institutional white")
TextLabel1033.TextColor3 = Color3.new(1, 1, 1)
TextLabel1033.TextScaled = true
TextLabel1033.TextSize = 14
TextLabel1033.TextStrokeTransparency = 0
TextLabel1033.TextWrap = true
TextLabel1033.TextWrapped = true
TextLabel1033.TextXAlignment = Enum.TextXAlignment.Left
TextLabel1034.Name = "F"
TextLabel1034.Parent = Frame1028
TextLabel1034.Position = UDim2.new(0, 0, 0.612705529, 0)
TextLabel1034.Size = UDim2.new(0, 280, 0, 24)
TextLabel1034.BackgroundColor = BrickColor.new("Institutional white")
TextLabel1034.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel1034.BackgroundTransparency = 1
TextLabel1034.Font = Enum.Font.SourceSans
TextLabel1034.FontSize = Enum.FontSize.Size14
TextLabel1034.Text = "F - Knife Throw"
TextLabel1034.TextColor = BrickColor.new("Institutional white")
TextLabel1034.TextColor3 = Color3.new(1, 1, 1)
TextLabel1034.TextScaled = true
TextLabel1034.TextSize = 14
TextLabel1034.TextStrokeTransparency = 0
TextLabel1034.TextWrap = true
TextLabel1034.TextWrapped = true
TextLabel1034.TextXAlignment = Enum.TextXAlignment.Left
TextLabel1035.Name = "G"
TextLabel1035.Parent = Frame1028
TextLabel1035.Position = UDim2.new(0, 0, 0.688415289, 0)
TextLabel1035.Size = UDim2.new(0, 280, 0, 24)
TextLabel1035.BackgroundColor = BrickColor.new("Institutional white")
TextLabel1035.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel1035.BackgroundTransparency = 1
TextLabel1035.Font = Enum.Font.SourceSans
TextLabel1035.FontSize = Enum.FontSize.Size14
TextLabel1035.Text = "G - Muda Muda (Taunt)"
TextLabel1035.TextColor = BrickColor.new("Institutional white")
TextLabel1035.TextColor3 = Color3.new(1, 1, 1)
TextLabel1035.TextScaled = true
TextLabel1035.TextSize = 14
TextLabel1035.TextStrokeTransparency = 0
TextLabel1035.TextWrap = true
TextLabel1035.TextWrapped = true
TextLabel1035.TextXAlignment = Enum.TextXAlignment.Left
TextLabel1036.Name = "Click"
TextLabel1036.Parent = Frame1028
TextLabel1036.Position = UDim2.new(0, 0, 0.839834809, 0)
TextLabel1036.Size = UDim2.new(0, 280, 0, 24)
TextLabel1036.BackgroundColor = BrickColor.new("Institutional white")
TextLabel1036.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel1036.BackgroundTransparency = 1
TextLabel1036.Font = Enum.Font.SourceSans
TextLabel1036.FontSize = Enum.FontSize.Size14
TextLabel1036.Text = "Left Click - Punch"
TextLabel1036.TextColor = BrickColor.new("Institutional white")
TextLabel1036.TextColor3 = Color3.new(1, 1, 1)
TextLabel1036.TextScaled = true
TextLabel1036.TextSize = 14
TextLabel1036.TextStrokeTransparency = 0
TextLabel1036.TextWrap = true
TextLabel1036.TextWrapped = true
TextLabel1036.TextXAlignment = Enum.TextXAlignment.Left
TextLabel1037.Name = "Z"
TextLabel1037.Parent = Frame1028
TextLabel1037.Position = UDim2.new(0, 0, 0.764125049, 0)
TextLabel1037.Size = UDim2.new(0, 280, 0, 24)
TextLabel1037.BackgroundColor = BrickColor.new("Institutional white")
TextLabel1037.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel1037.BackgroundTransparency = 1
TextLabel1037.Font = Enum.Font.SourceSans
TextLabel1037.FontSize = Enum.FontSize.Size14
TextLabel1037.Text = "Z - Stand Jump"
TextLabel1037.TextColor = BrickColor.new("Institutional white")
TextLabel1037.TextColor3 = Color3.new(1, 1, 1)
TextLabel1037.TextScaled = true
TextLabel1037.TextSize = 14
TextLabel1037.TextStrokeTransparency = 0
TextLabel1037.TextWrap = true
TextLabel1037.TextWrapped = true
TextLabel1037.TextXAlignment = Enum.TextXAlignment.Left
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.Character
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.Character
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
-->Made By XDavodioX<--
 
--=(Category = Fun, Action, Quick)=--
 
--:The World:--
 
--//Unknown\\--

Folder0:WaitForChild("Stand")
Folder0:WaitForChild("ColorCorrection")
Folder0:WaitForChild("RemoveColorCorrection")
Folder0:WaitForChild("MoveList")
Folder0:WaitForChild("RoadRoller")
Folder0:WaitForChild("ClockGui")
Folder0:WaitForChild("TimeStopSounds")
Folder0:WaitForChild("TimeResumeSounds")
Folder0:WaitForChild("FeModule")
local OriginalStand = Folder0["Stand"]:Clone()
local OriginalRoller = Folder0["RoadRoller"]:Clone()
local CorrectionScript = Folder0["ColorCorrection"]:Clone()
local CorrectionRemoveScript = Folder0["RemoveColorCorrection"]:Clone()
local SoundStopScript = Folder0["TimeStopSounds"]:Clone()
local SoundResumeScript = Folder0["TimeResumeSounds"]:Clone()
wait(0.25)
Folder0["Stand"]:Destroy()
Folder0["RoadRoller"]:Destroy()

local StandName = "The World"
local ModelCreator = "BiggerGames_YT"

local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
local Character = Player.Character
local Root = Character.HumanoidRootPart
local LArm = Character:FindFirstChild("Left Arm") or Character:FindFirstChild("LeftUpperArm")
local LLeg = Character:FindFirstChild("Left Leg") or Character:FindFirstChild("LeftUpperLeg")
local RArm = Character:FindFirstChild("Right Arm") or Character:FindFirstChild("RightUpperArm")
local RLeg = Character:FindFirstChild("Right Leg") or Character:FindFirstChild("RightUpperLeg")
local Torso = Character:FindFirstChild("Torso") or Character:FindFirstChild("UpperTorso")
local Head = Character.Head
local Hum = Character:FindFirstChildOfClass("Humanoid")
local RJ = Root:FindFirstChild("RootJoint") or Torso:FindFirstChild("Waist")
local LAJ = Torso:FindFirstChild("Left Shoulder") or LArm:FindFirstChild("LeftShoulder")
local LLJ = Torso:FindFirstChild("Left Hip") or LLeg:FindFirstChild("LeftHip")
local RAJ = Torso:FindFirstChild("Right Shoulder") or RArm:FindFirstChild("RightShoulder")
local RLJ = Torso:FindFirstChild("Right Hip") or RLeg:FindFirstChild("RightHip")
local Neck = Torso:FindFirstChild("Neck") or Head:FindFirstChild("Neck")

Folder0.Name = Player.Name.."'s "..StandName

local MoveList = Folder0["MoveList"]
MoveList.Parent = Player:FindFirstChildOfClass("PlayerGui")
MoveList.Enabled = true
local Clock = Folder0["ClockGui"]
Clock.Parent = Player:FindFirstChildOfClass("PlayerGui")
Clock.Enabled = false

warn("Huge Credit to "..ModelCreator.." for the "..StandName.." Model! \nGo check them out!")

local AttackSpeed = 1
local Sine = 0

local CurrentStand = nil
local TimeStopSeconds = 7 -- Time Stop Time - In seconds, just normal numbers no .2 stuff
local TimeStopImmunity = 4 -- Time Stop Immunity when someone else Time Stops - In seconds, just normal numbers no .2 stuff
local Move = false
local BarrageDown = false
local Anim = "Idle"
local TimeStopped = false
local AnchoredList = {}
local SoundList = {}
local TimeStopHits = {}
local StrongMUDA = false
local NormalPunch = false
local KnifeThrowing = false
local PunchAfterBarrage = false
local TimeStopKnifes = {}
local RoadRollering = false
local AllowClockMovment = false
local ClockTime = 0
local TSConnections = {}
local StandUsers = {
	Player
}

local ImmunityCharacter = Instance.new("BoolValue")
ImmunityCharacter.Name = "IsTSImmune"
ImmunityCharacter.Value = true
ImmunityCharacter.Parent = Character

local AnimDefaults = {
	["head"] = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
	["head1"] = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
	["tors"] = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
	["tors0"] = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
	["rarm"] = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
	["rarm1"] = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
	["larm"] = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	["larm1"] = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	["rleg"] = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
	["rleg1"] = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
	["lleg"] = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	["lleg1"] = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
}

Hum.WalkSpeed = 22
Hum.MaxHealth = 350
Hum.Health = Hum.MaxHealth

function CreateTextGui(Parent, Text, TextSpeed, TextColor, TextStrokeColor, Font)
	local ToWrite = Text
	local DoStroke = false
	local Billboard = Instance.new("BillboardGui")
	Billboard.Adornee = Parent
	Billboard.Name = tostring(tick()^20*5*math.random())
	Billboard.Size = UDim2.new(2, 0, 1.2, 0)
	Billboard.StudsOffset = Vector3.new(-6, 0, 0)
	Billboard.Parent = Parent
	local WriterGui = Instance.new("TextLabel")
	WriterGui.Size = UDim2.new(7, 0, 0.5, 0)
	WriterGui.TextScaled = true
	WriterGui.FontSize = "Size24"
	WriterGui.TextSize = 22
	WriterGui.BackgroundTransparency = 1
	WriterGui.TextTransparency = 1
	WriterGui.TextStrokeTransparency = 1
	if TextStrokeColor ~= "None" then
		DoStroke = true
		WriterGui.TextStrokeColor3 = TextStrokeColor
	end
	WriterGui.Font = Font
	WriterGui.Name = tostring(tick()^20*5*math.random())
	WriterGui.Text = ""
	WriterGui.TextColor3 = TextColor
	WriterGui.Parent = Billboard
	coroutine.resume(coroutine.create(function()
		for i = 1, 20 do
			WriterGui.TextTransparency = WriterGui.TextTransparency - 0.05
			if DoStroke == true then
				WriterGui.TextStrokeTransparency = WriterGui.TextTransparency
			end
			Billboard.StudsOffset = Billboard.StudsOffset + Vector3.new(0, 0.15, 0)
			game:GetService("RunService").RenderStepped:Wait(25)
		end
	end))
	coroutine.resume(coroutine.create(function()
		for i = 1, #ToWrite do
			WriterGui.Text = string.sub(ToWrite, 1, i)
			wait(0.4/(TextSpeed*2.5))
		end
		wait(1.25)
		for i = 1, 20 do
			WriterGui.TextTransparency = WriterGui.TextTransparency + 0.05
			if DoStroke == true then
				WriterGui.TextStrokeTransparency = WriterGui.TextTransparency
			end
			Billboard.StudsOffset = Billboard.StudsOffset + Vector3.new(0, 0.15, 0)
			game:GetService("RunService").RenderStepped:Wait(25)
		end
		Billboard:Destroy()
	end))
end

function CreateSound(ID, Parent, Volume, Pitch, TimePos, Loop, StayForever, CustomName)
	local New = nil
	coroutine.resume(coroutine.create(function()
		New = Instance.new("Sound")
		New.Name = CustomName
		New.Parent = Parent
		New.Volume = Volume
		New.SoundId = "rbxassetid://"..ID
		New.Pitch = Pitch
		New.TimePosition = TimePos
		New.Looped = Loop
		if StayForever == false then
			New.Ended:Connect(function()
				New:Destroy()
			end)
		end
		New:Play()
	end))
	return New
end

function CreateClientSound(ID, Parent, Volume, TimePosition, Pitch, DebrisTime)
	local NEWCLIENTSOUND = nil
	local NEWCLIENTSOUNDDATA = nil
	coroutine.resume(coroutine.create(function()
		NEWCLIENTSOUNDDATA = Folder0["ClientSound"]
		local pt = NEWCLIENTSOUNDDATA:WaitForChild("SoundParent")
		local si = NEWCLIENTSOUNDDATA:WaitForChild("SoundID")
		local vo = NEWCLIENTSOUNDDATA:WaitForChild("SoundVolume")
		local pi = NEWCLIENTSOUNDDATA:WaitForChild("SoundPitch")
		local dt = NEWCLIENTSOUNDDATA:WaitForChild("DestroyTime")
		local tpo = NEWCLIENTSOUNDDATA:WaitForChild("TimePos")
		pt.Value = Parent
		si.Value = tonumber(ID)
		vo.Value = tonumber(Volume)
		pi.Value = tonumber(Pitch)
		dt.Value = tonumber(DebrisTime)
		tpo.Value = tonumber(TimePosition)
		NEWCLIENTSOUND = Folder0["ClientSound"]:Clone()
		NEWCLIENTSOUND.Parent = Player:FindFirstChildOfClass("PlayerGui")
		NEWCLIENTSOUND.Disabled = false
	end))
end

function Glue(a, b)
	local weldd = Instance.new("ManualWeld")
	weldd.Part0 = a
	weldd.Part1 = b
	weldd.C0 = CFrame.new()
	weldd.C1 = b.CFrame:inverse() * a.CFrame
	weldd.Parent = a
	return weldd
end

function CheckTable(Table, Value, ValueIndex, Return)
	for Index,Val in pairs(Table) do
		if Val == Value then
			if Return == "Index" then
				return Index
			else
				if ValueIndex == 0 or ValueIndex == nil then
					return Val
				else
					return Val[ValueIndex]
				end
			end
		end
	end
	return nil
end

function CheckTableWithValueIndex(Table, Value, ValueIndex, Return)
	for Index,Val in pairs(Table) do
		if Val[ValueIndex] == Value then
			if Return == "Index" then
				return Index
			else
				return Val[ValueIndex]
			end
		end
	end
	return nil
end

function IsAHumanoid(Part)
	if Part:FindFirstAncestorWhichIsA("Model") then
		if Part:FindFirstAncestorWhichIsA("Model").Name == "Stand" then
			if Part:FindFirstAncestorWhichIsA("Model"):FindFirstAncestorWhichIsA("Model"):FindFirstChildOfClass("Humanoid") then
				return Part:FindFirstAncestorWhichIsA("Model"):FindFirstAncestorWhichIsA("Model")
			else
				return nil
			end
		end
		if Part:FindFirstAncestorWhichIsA("Model"):FindFirstChildOfClass("Humanoid") then
			return Part:FindFirstAncestorWhichIsA("Model")
		else
			return nil
		end
	else
		return nil
	end
end

function IsAStand(Part)
	if Part:FindFirstAncestorWhichIsA("Model") then
		if Part:FindFirstAncestorWhichIsA("Model"):FindFirstChild("IsAStand") then
			if Part:FindFirstAncestorWhichIsA("Model").IsAStand.Value == true then
				return Part:FindFirstAncestorWhichIsA("Model")
			else
				return nil
			end
		else
			return nil
		end
	else
		return nil
	end
end

function Lock(Character)
	for Index,Child in next, Character:GetChildren() do
		if Child:IsA("BasePart") then
			Child.Anchored = true
		end
	end
end

function Unlock(Character)
	for Index,Child in next, Character:GetChildren() do
		if Child:IsA("BasePart") then
			Child.Anchored = false
		end
	end
end

function CreateEffect(Parent, EffectType, EffectColor)
	if EffectType == "Ball" then
		local Ball = Instance.new("Part")
		Ball.Shape = Enum.PartType.Ball
		Ball.Name = StandName.."'s Effect"
		Ball.Color = EffectColor
		Ball.Material = Enum.Material.Neon
		Ball.Anchored = true
		Ball.CanCollide = false
		Ball.Transparency = 0
		Ball.Parent = Parent
		Ball.Size = Vector3.new(0.1,0.1,0.1)
		Ball.CFrame = Parent.CFrame * CFrame.new(math.random(-7,7)/10,math.random(-7,7)/10,math.random(-7,7)/10)
		coroutine.resume(coroutine.create(function()
			for i = 1, 50 do
				game:GetService("RunService").RenderStepped:Wait()
				Ball.Size = Ball.Size + Vector3.new(0.05,0.05,0.05)
				Ball.Transparency = Ball.Transparency + 0.02
			end
			Ball:Destroy()
		end))
	elseif EffectType == "Slice" then
		coroutine.resume(coroutine.create(function()
			for i = 1, 2 do
				local ZC = Instance.new("Part")
				ZC.Parent = Parent
				ZC.Size = Vector3.new(1,1,1)
				ZC.CanCollide = false
				ZC.Anchored = true
				ZC.Name = StandName.."'s Effect"
				ZC.CFrame = Parent.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.random(-4,4),math.random(-4,4),math.random(-4,4))
				ZC.Shape = Enum.PartType.Ball
				ZC.Material = Enum.Material.Neon
				ZC.Color = EffectColor
				local ZC2 = Instance.new("SpecialMesh",ZC)
				ZC2.MeshType = Enum.MeshType.Sphere
				ZC2.Scale = Vector3.new(2,0.7,0.3)
				coroutine.resume(coroutine.create(function()
					for i = 1,35 do
						game:GetService("RunService").RenderStepped:Wait()
						ZC2.Scale = ZC2.Scale + Vector3.new(0,0,0.4)
						ZC.Transparency = ZC.Transparency + 0.03
					end
					ZC:Destroy()
				end))
			end
		end))
	elseif EffectType == "BarrageArm" then
		local FadeArm = Parent:Clone()
		FadeArm.Anchored = true
		FadeArm.Color = EffectColor
		FadeArm.CFrame = FadeArm.CFrame * CFrame.new(math.random(-1,1), 0, math.random(-1.5,1.5))
		FadeArm.Name = StandName.."'s Barrage Arm"
		FadeArm.Parent = CurrentStand
		coroutine.resume(coroutine.create(function()
			for i = 1,27 do
				game:GetService("RunService").RenderStepped:Wait()
				for Index, Child in next, FadeArm:GetDescendants() do
					if Child:IsA("BasePart") then
						Child.Transparency = Child.Transparency + 0.06
					end
				end
			end
			FadeArm:Destroy()
		end))
	elseif EffectType == "PunchWave" then
		local WavePart = Instance.new("Part")
		WavePart.Anchored = true
		WavePart.CanCollide = false
		WavePart.Transparency = 0
		WavePart.Size = Vector3.new(0.5,0.5,0.5)
		WavePart.CFrame = Parent.CFrame * CFrame.new(math.random(-1,1), 0, math.random(-1.5,1.5))
		WavePart.Orientation = Vector3.new(90, CurrentStand.StandTorso.Orientation.Y, CurrentStand.StandTorso.Orientation.Z)
		WavePart.Name = StandName.."'s Wave Effect"
		WavePart.Parent = Parent
		WavePart.Color = EffectColor
		local Wave = Instance.new("SpecialMesh")
		Wave.Parent = WavePart
		Wave.MeshId = "rbxassetid://989468093"
		Wave.Scale = Vector3.new(0.35,0.05,0.35)
		coroutine.resume(coroutine.create(function()
			for i = 1,15 do
				game:GetService("RunService").RenderStepped:Wait()
				Wave.Scale = Wave.Scale + Vector3.new(0.25, 0, 0.25)
			end
			for i = 1,20 do
				game:GetService("RunService").RenderStepped:Wait()
				Wave.Scale = Wave.Scale + Vector3.new(0.17, 0, 0.17)
				WavePart.Transparency = WavePart.Transparency + 0.05
			end
			WavePart:Destroy()
		end))
	elseif EffectType == "RollerPunch" then
		local WavePart = Instance.new("Part")
		WavePart.Anchored = true
		WavePart.CanCollide = false
		WavePart.Transparency = 0
		WavePart.Size = Vector3.new(0.5,0.5,0.5)
		WavePart.Position = Parent.Position + Vector3.new(0, -0.75, 0)
		WavePart.Orientation = Vector3.new(0, math.random(-9,9)*10, 0)
		WavePart.Name = StandName.."'s Wave Effect"
		WavePart.Parent = Parent
		WavePart.Color = EffectColor
		local Wave = Instance.new("SpecialMesh")
		Wave.Parent = WavePart
		Wave.MeshId = "rbxassetid://989468093"
		Wave.Scale = Vector3.new(0.35,0.05,0.35)
		local WavePart2 = Instance.new("Part")
		WavePart2.Anchored = true
		WavePart2.CanCollide = false
		WavePart2.Transparency = 0
		WavePart2.Size = Vector3.new(0.5,0.5,0.5)
		WavePart2.Position = Parent.Position + Vector3.new(0, -0.75, 0)
		WavePart2.Orientation = Vector3.new(0, math.random(-9,9)*10, 0)
		WavePart2.Name = StandName.."'s Wave Effect 2"
		WavePart2.Parent = Parent
		WavePart2.Color = EffectColor
		local Wave2 = Instance.new("SpecialMesh")
		Wave2.Parent = WavePart2
		Wave2.MeshId = "rbxassetid://20329976"
		Wave2.Scale = Vector3.new(0.35,0.05,0.35)
		coroutine.resume(coroutine.create(function()
			for i = 1,15 do
				game:GetService("RunService").RenderStepped:Wait()
				Wave.Scale = Wave.Scale + Vector3.new(0.25, 0, 0.25)
			end
			for i = 1,20 do
				game:GetService("RunService").RenderStepped:Wait()
				Wave.Scale = Wave.Scale + Vector3.new(0.17, 0, 0.17)
				WavePart.Transparency = WavePart.Transparency + 0.05
			end
			WavePart:Destroy()
		end))
		coroutine.resume(coroutine.create(function()
			for i = 1,15 do
				game:GetService("RunService").RenderStepped:Wait()
				Wave2.Scale = Wave2.Scale + Vector3.new(0.07, 0.065, 0.07)
			end
			for i = 1,15 do
				game:GetService("RunService").RenderStepped:Wait()
				Wave2.Scale = Wave2.Scale + Vector3.new(0.03, 0.045, 0.03)
				WavePart2.Transparency = WavePart2.Transparency + 0.075
			end
			WavePart:Destroy()
		end))
		local WavePart = Instance.new("Part")
		WavePart.Anchored = true
		WavePart.CanCollide = false
		WavePart.Transparency = 0
		WavePart.Size = Vector3.new(0.5,0.5,0.5)
		WavePart.Position = Torso.Position + Vector3.new(0, -4, 0)
		WavePart.Orientation = Vector3.new(0, math.random(-9,9)*10, 0)
		WavePart.Name = StandName.."'s Wave Effect"
		WavePart.Parent = Parent
		WavePart.Color = EffectColor
		local Wave = Instance.new("SpecialMesh")
		Wave.Parent = WavePart
		Wave.MeshId = "rbxassetid://989468093"
		Wave.Scale = Vector3.new(0.35,0.05,0.35)
		local WavePart2 = Instance.new("Part")
		WavePart2.Anchored = true
		WavePart2.CanCollide = false
		WavePart2.Transparency = 0
		WavePart2.Size = Vector3.new(0.5,0.5,0.5)
		WavePart2.Position = Torso.Position + Vector3.new(0, -4, 0)
		WavePart2.Orientation = Vector3.new(0, math.random(-9,9)*10, 0)
		WavePart2.Name = StandName.."'s Wave Effect 2"
		WavePart2.Parent = Parent
		WavePart2.Color = EffectColor
		local Wave2 = Instance.new("SpecialMesh")
		Wave2.Parent = WavePart2
		Wave2.MeshId = "rbxassetid://20329976"
		Wave2.Scale = Vector3.new(0.35,0.05,0.35)
		coroutine.resume(coroutine.create(function()
			for i = 1,15 do
				game:GetService("RunService").RenderStepped:Wait()
				Wave.Scale = Wave.Scale + Vector3.new(1.35, 0, 1.75)
			end
			for i = 1,10 do
				game:GetService("RunService").RenderStepped:Wait()
				Wave.Scale = Wave.Scale + Vector3.new(1.17, 0, 1.17)
				WavePart.Transparency = WavePart.Transparency + 0.1
			end
			WavePart:Destroy()
		end))
		coroutine.resume(coroutine.create(function()
			for i = 1,15 do
				game:GetService("RunService").RenderStepped:Wait()
				Wave2.Scale = Wave2.Scale + Vector3.new(0.87, 0.58, 0.87)
			end
			for i = 1,10 do
				game:GetService("RunService").RenderStepped:Wait()
				Wave2.Scale = Wave2.Scale + Vector3.new(0.5, 0.45, 0.5)
				WavePart2.Transparency = WavePart2.Transparency + 0.1
			end
			WavePart:Destroy()
		end))
	elseif EffectType == "Roller" then
		local WavePart = Instance.new("Part")
		WavePart.Anchored = true
		WavePart.CanCollide = false
		WavePart.Transparency = 0
		WavePart.Size = Vector3.new(0.5,0.5,0.5)
		WavePart.Position = Parent.Position + Vector3.new(0, -4, 0)
		WavePart.Orientation = Vector3.new(0, math.random(-9,9)*10, 0)
		WavePart.Name = StandName.."'s Wave Effect"
		WavePart.Parent = Parent
		WavePart.Color = EffectColor
		local Wave = Instance.new("SpecialMesh")
		Wave.Parent = WavePart
		Wave.MeshId = "rbxassetid://989468093"
		Wave.Scale = Vector3.new(0.35,0.05,0.35)
		local WavePart2 = Instance.new("Part")
		WavePart2.Anchored = true
		WavePart2.CanCollide = false
		WavePart2.Transparency = 0
		WavePart2.Size = Vector3.new(0.5,0.5,0.5)
		WavePart2.Position = Parent.Position + Vector3.new(0, -4, 0)
		WavePart2.Orientation = Vector3.new(0, math.random(-9,9)*10, 0)
		WavePart2.Name = StandName.."'s Wave Effect 2"
		WavePart2.Parent = Parent
		WavePart2.Color = EffectColor
		local Wave2 = Instance.new("SpecialMesh")
		Wave2.Parent = WavePart2
		Wave2.MeshId = "rbxassetid://20329976"
		Wave2.Scale = Vector3.new(0.35,0.05,0.35)
		coroutine.resume(coroutine.create(function()
			for i = 1,15 do
				game:GetService("RunService").RenderStepped:Wait()
				Wave.Scale = Wave.Scale + Vector3.new(2.25, 0, 2.25)
			end
			for i = 1,25 do
				game:GetService("RunService").RenderStepped:Wait()
				Wave.Scale = Wave.Scale + Vector3.new(2.17, 0, 2.17)
				WavePart.Transparency = WavePart.Transparency + 0.0425
			end
			WavePart:Destroy()
		end))
		coroutine.resume(coroutine.create(function()
			for i = 1,15 do
				game:GetService("RunService").RenderStepped:Wait()
				Wave2.Scale = Wave2.Scale + Vector3.new(1.27, 1.115, 1.27)
			end
			for i = 1,20 do
				game:GetService("RunService").RenderStepped:Wait()
				Wave2.Scale = Wave2.Scale + Vector3.new(1.13, 0.89, 1.13)
				WavePart2.Transparency = WavePart2.Transparency + 0.05
			end
			WavePart:Destroy()
		end))
	end
end

function HitEffect(OriginalHit, Character, RootFrame, HitType)
	local Humanoid = Character:FindFirstChildOfClass("Humanoid")
	local HitTorso = Humanoid.Parent:FindFirstChild("Torso") or Humanoid.Parent:FindFirstChild("UpperTorso")
	CreateEffect(OriginalHit, "PunchWave", Color3.fromRGB(255, 255, 255))
	if HitType == "Barrage" then
		Humanoid.WalkSpeed = 3.5
		coroutine.resume(coroutine.create(function()
			wait(1.5)
			Humanoid.WalkSpeed = 16
		end))
		if Humanoid.Health < 12 and Humanoid.Health > 0 then
			Humanoid.Health = Humanoid.Health + 7.5
			PunchAfterBarrage = true
			Lock(Humanoid.Parent)
		end
	elseif HitType == "Strong" then
		Unlock(Humanoid.Parent)
		local Velo = Instance.new("BodyVelocity")
		Velo.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		Velo.P = 3000
		Velo.Velocity = RootFrame * CFrame.new(0,0,-195).p
		Velo.Parent = HitTorso
		coroutine.resume(coroutine.create(function()
			wait(0.1275)
			Velo:Destroy()
		end))
	elseif HitType == "Punch" then
		local Velo = Instance.new("BodyVelocity")
		Velo.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		Velo.P = 2500
		Velo.Velocity = RootFrame * CFrame.new(0,0,-65).p
		Velo.Parent = HitTorso
		coroutine.resume(coroutine.create(function()
			wait(0.11)
			Velo:Destroy()
		end))
	elseif HitType == "Roller" then
		local Velo = Instance.new("BodyVelocity")
		Velo.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		Velo.P = 2500
		Velo.Velocity = RootFrame * CFrame.new(222,230,-265).p
		Velo.Parent = HitTorso
		coroutine.resume(coroutine.create(function()
			wait(0.11)
			Velo:Destroy()
		end))
	end
end

function CreatePopUpGui(Parent, AnimationType, Text, TextColor)
	if AnimationType == "FadeOut" then
		local txt = Instance.new("BillboardGui")
		txt.Parent = Parent
		txt.Adornee = Parent
		txt.Name = StandName.."'s PopUp"
		txt.Size = UDim2.new(2, 0, 1.2, 0)
		txt.StudsOffset = Vector3.new(math.random(-5,-1) , math.random(0,2), math.random(-2,2))
		local text = Instance.new("TextLabel", txt)
		text.Size = UDim2.new(4, 0, 1.25, 0)
		text.TextScaled = true
		text.FontSize = Enum.FontSize.Size24
		text.TextSize = 26
		text.TextTransparency = 0
		text.BackgroundTransparency = 1
		text.TextStrokeTransparency = 1
		text.Font = Enum.Font.Fantasy
		text.Text = Text
		text.TextColor3 = TextColor
		coroutine.resume(coroutine.create(function()
			for i = 1,22 do
				game:GetService("RunService").RenderStepped:Wait()
				txt.StudsOffset = txt.StudsOffset + Vector3.new(0, 0.05, 0)
			end
			for i = 1,20 do
				game:GetService("RunService").RenderStepped:Wait()
				text.TextTransparency = text.TextTransparency + 0.05
				txt.StudsOffset = txt.StudsOffset - Vector3.new(0, 0.015, 0)
			end
			txt:Destroy()
		end))
	elseif AnimationType == "Jump" then
		local JumpDirection = math.random(1,2)
		local txt = Instance.new("BillboardGui")
		txt.Parent = Parent
		txt.Adornee = Parent
		txt.Name = StandName.."'s PopUp"
		txt.Size = UDim2.new(2, 0, 1.2, 0)
		txt.StudsOffset = Vector3.new(math.random(-5,-1) , math.random(3,5), math.random(-2,2))
		local text = Instance.new("TextLabel", txt)
		text.Size = UDim2.new(4, 0, 1.25, 0)
		text.TextScaled = true
		text.FontSize = Enum.FontSize.Size24
		text.TextSize = 26
		text.TextTransparency = 0
		text.BackgroundTransparency = 1
		text.TextStrokeTransparency = 1
		text.Font = Enum.Font.Fantasy
		text.Text = Text
		text.TextColor3 = TextColor
		if JumpDirection == 1 then
			coroutine.resume(coroutine.create(function()
				for i = 1,15 do
					game:GetService("RunService").RenderStepped:Wait()
					txt.StudsOffset = txt.StudsOffset + Vector3.new(0, 0.12, 0)
				end
				for i = 1,3 do
					game:GetService("RunService").RenderStepped:Wait()
					txt.StudsOffset = txt.StudsOffset - Vector3.new(0.009, -0.015, 0)
					text.Rotation = text.Rotation - 1.15
				end
				for i = 1,7 do
					game:GetService("RunService").RenderStepped:Wait()
					txt.StudsOffset = txt.StudsOffset - Vector3.new(0.045, 0.085, 0)
					text.TextTransparency = text.TextTransparency + 0.01
					text.Rotation = text.Rotation - 1.3
				end
				for i = 1,35 do
					game:GetService("RunService").RenderStepped:Wait()
					text.TextTransparency = text.TextTransparency + 0.05
					txt.StudsOffset = txt.StudsOffset - Vector3.new(0.055, 0.19, 0)
					text.Rotation = text.Rotation - 1.75
				end
				txt:Destroy()
			end))
		else
			coroutine.resume(coroutine.create(function()
				for i = 1,15 do
					game:GetService("RunService").RenderStepped:Wait()
					txt.StudsOffset = txt.StudsOffset + Vector3.new(0, 0.12, 0)
				end
				for i = 1,3 do
					game:GetService("RunService").RenderStepped:Wait()
					txt.StudsOffset = txt.StudsOffset - Vector3.new(-0.009, -0.015, 0)
					text.Rotation = text.Rotation + 1.15
				end
				for i = 1,7 do
					game:GetService("RunService").RenderStepped:Wait()
					txt.StudsOffset = txt.StudsOffset - Vector3.new(-0.045, 0.085, 0)
					text.TextTransparency = text.TextTransparency + 0.01
					text.Rotation = text.Rotation + 1.3
				end
				for i = 1,35 do
					game:GetService("RunService").RenderStepped:Wait()
					text.TextTransparency = text.TextTransparency + 0.04
					txt.StudsOffset = txt.StudsOffset - Vector3.new(-0.055, 0.19, 0)
					text.Rotation = text.Rotation + 1.75
				end
				txt:Destroy()
			end))
		end
	end
end

function CreateHitBox(Cframe, Damage, Size, DebrisTime, Overwrite, Effect, HitSound, HitType, EffectColor)
	if Overwrite == true then
		if CurrentStand:FindFirstChild(StandName.."'s Hit Box") then
			CurrentStand[StandName.."'s Hit Box"]:Destroy()
		end
	end
	local HB = Instance.new("Part")
	HB.Orientation = Vector3.new(0, 90, 0)
	HB.Name = StandName.."'s Hit Box"
	HB.CanCollide = false
	HB.Massless = true
	HB.Size = Size
	HB.CFrame = Cframe
	HB.BrickColor = BrickColor.new("Really red")
	HB.Transparency = 1
	HB.Parent = CurrentStand
	local AnchoredV1 = Instance.new("BodyVelocity")
	AnchoredV1.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	AnchoredV1.Parent = HB
	AnchoredV1.P = 3e9
	AnchoredV1.Velocity = Vector3.new(Cframe)
	local AnchoredV2 = Instance.new("BodyPosition")
	AnchoredV2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	AnchoredV2.Parent = HB
	AnchoredV2.Position = Vector3.new(Cframe)
	AnchoredV2.P = 3e9
	AnchoredV2.D = 3e9
	HB.Touched:Connect(function(Toucher)
		if IsAHumanoid(Toucher) and IsAHumanoid(Toucher) ~= Character and IsAHumanoid(Toucher):FindFirstChildOfClass("Humanoid").Health > 0 and IsAHumanoid(Toucher):FindFirstChild("JustGotHitten") == nil then
			--HB:Destroy()
			game:GetService("Debris"):AddItem(HB, 0.05)
			local Humanoid = IsAHumanoid(Toucher):FindFirstChildOfClass("Humanoid")
			local HitTorso = Humanoid.Parent:FindFirstChild("Torso") or Humanoid.Parent:FindFirstChild("UpperTorso")
			local Val = Instance.new("BoolValue")
			Val.Name = "JustGotHitten"
			Val.Value = true
			Val.Parent = Humanoid.Parent
			game:GetService("Debris"):AddItem(Val, 0.05)
			if TimeStopped == false then
				if Humanoid.Parent:FindFirstChild("CanDodge") then
					if Humanoid.Parent.CanDodge.Value == true then
						if Humanoid.Parent:FindFirstChild("GotHitButNot") then
							Humanoid.Parent.GotHitButNot:Destroy()
						end
						local Val = Instance.new("StringValue")
						Val.Name = "GotHitButNot"
						Val.Parent = Humanoid.Parent
						Val.Value = "Missed Hit"
						game:GetService("Debris"):AddItem(Val, 0.2)
						CreatePopUpGui(Toucher, "FadeOut", "Miss", Color3.fromRGB(199, 199, 199))
						return
					end
				end
				if Humanoid.Parent:FindFirstChild("ReturnStandDamage") then
					local Val = Instance.new("StringValue")
					Val.Name = "RTZActive"
					Val.Parent = Hum.Parent
					Val.Value = "Missed Hit"
					game:GetService("Debris"):AddItem(Val, 0.2)
					if Humanoid.Parent.ReturnStandDamage.Value == true then
						if Hum.MaxHealth > 10000 then
							Hum.Parent:BreakJoints()
						end
						coroutine.resume(coroutine.create(function()
							CreateEffect(Root, Effect, EffectColor)
						end))
						CreateSound(HitSound, Root, 3, math.random(95,113)/100, 0, false, false, "Hit SFX")
						if HitType == "Strong" then
							Hum.BreakJointsOnDeath = false
						end
						if Damage == "Instant Kill" then
							Hum.Parent:BreakJoints()
							CreatePopUpGui(Root, "Jump", tostring(Humanoid.MaxHealth), Color3.fromRGB(188, 0, 0))
						else
							Hum:TakeDamage(Damage)
							CreatePopUpGui(Root, "Jump", tostring(Damage), Color3.fromRGB(188, 0, 0))
						end
						HitEffect(Root, Hum.Parent, CurrentStand.RootPart.CFrame, HitType)
						return
					end
				end
				CreateSound(HitSound, Toucher, 3, math.random(95,113)/100, 0, false, false, "Hit SFX")
				if Humanoid.MaxHealth > 10000 then
					Humanoid.Parent:BreakJoints()
				end
				coroutine.resume(coroutine.create(function()
					CreateEffect(Toucher, Effect, EffectColor)
				end))
				if HitType == "Strong" then
					Humanoid.BreakJointsOnDeath = false
				end
				if Damage == "Instant Kill" then
					Humanoid.Parent:BreakJoints()
					CreatePopUpGui(Toucher, "Jump", tostring(Humanoid.MaxHealth), Color3.fromRGB(188, 0, 0))
				else
					Humanoid:TakeDamage(Damage)
					CreatePopUpGui(Toucher, "Jump", tostring(Damage), Color3.fromRGB(188, 0, 0))
				end
				HitEffect(Toucher, Humanoid.Parent, CurrentStand.RootPart.CFrame, HitType)
			else
				if Humanoid.Parent:FindFirstChild("CanDodgeInTS") then
					if Humanoid.Parent.CanDodgeInTS.Value == true then
						if Humanoid.Parent:FindFirstChild("GotHitButNot") then
							Humanoid.Parent.GotHitButNot:Destroy()
						end
						local Val = Instance.new("StringValue")
						Val.Name = "GotHitButNot"
						Val.Parent = Humanoid.Parent
						Val.Value = "Missed Hit"
						game:GetService("Debris"):AddItem(Val, 0.2)
						CreatePopUpGui(Toucher, "FadeOut", "Miss", Color3.fromRGB(199, 199, 199))
						return
					end
				end
				table.insert(TimeStopHits, {Humanoid, Damage, HitSound, Effect, EffectColor, CurrentStand.RootPart.CFrame, HitType})
			end
		end
	end)
	game:GetService("Debris"):AddItem(HB, DebrisTime)
	return HB
end

function Stand()
	Move = true
	if CurrentStand == nil then
		CurrentStand = OriginalStand:Clone()
		CreateSound(616576400, Head, 5, 1, 0.4, false, false, "Stand Call")
		for Index,Child in next, CurrentStand:GetDescendants() do
			if Child:IsA("BasePart") or Child:IsA("Decal") then
				Child.Transparency = 1
			end
		end
		CurrentStand:SetPrimaryPartCFrame(Root.CFrame)
		CurrentStand.Parent = Head
		for Index,Child in next, CurrentStand:GetDescendants() do
			if (Child:IsA("BasePart") or Child:IsA("Decal")) and Child.Name ~= "RootPart" and Child.Parent ~= CurrentStand then
				coroutine.resume(coroutine.create(function(Part)
					for i = 1, 20 do
						game:GetService("RunService").RenderStepped:Wait()
						Part.Transparency = Part.Transparency - 0.06
					end
					Part.Transparency = 0
				end), Child)
			end
		end
		CreateSound(1438146024, CurrentStand.PrimaryPart, 10, math.random(98,103)/100, 0.2, false, false, "Stand Appear")
		for i = 0,1,0.02 do
			game:GetService("RunService").RenderStepped:Wait()
			CurrentStand.PrimaryPart.CFrame = CurrentStand.PrimaryPart.CFrame:Lerp(Root.CFrame * CFrame.new(-2.2, 1.3, 2.25), i)
			CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.new(0, 0, 0.8*math.sin(Sine/75))*CFrame.Angles(0, 0, math.rad(-41.998)), 0.23)
			CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.new(0.033, 0.27, -0.068) * CFrame.Angles(math.rad(0.172), math.rad(32.028), math.rad(5.329)), 0.23)
			CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.new(-0.212, -0.01, 0.007) * CFrame.Angles(math.rad(-4.526), math.rad(-12.089), math.rad(1.432)), 0.23)
			CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(-0.061, 0, 0.081) * CFrame.Angles(math.rad(-17.418), math.rad(-12.949), math.rad(-14.381)), 0.23)
			CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.Angles(math.rad(-16.845), math.rad(21.601), math.rad(2.979)), 0.23)
			CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(0, 0, math.rad(35.008)), 1)
		end
	else
		for Index,Child in next, CurrentStand:GetDescendants() do
			if Child:IsA("BasePart") or Child:IsA("Decal") then
				coroutine.resume(coroutine.create(function(Part)
					for i = 1, 20 do
						game:GetService("RunService").RenderStepped:Wait()
						Part.Transparency = Part.Transparency + 0.05
					end
					Part.Transparency = 1
				end), Child)
			end
		end
		for i = 0,1,0.02 do
			game:GetService("RunService").RenderStepped:Wait()
			CurrentStand.PrimaryPart.CFrame = CurrentStand.PrimaryPart.CFrame:Lerp(Root.CFrame, i)
		end
		wait(0.01)
		CurrentStand:Destroy()
		CurrentStand = nil
	end
	Move = false
end

function Barrage(Times, NeutralStop, BarrageSFX, External)
	if CurrentStand == nil then
		return
	end
	Move = true
	local WalkSpeed = Hum.WalkSpeed
	Hum.WalkSpeed = 10
	local Done = false
	local Repeat = Times
	local BarrageSound = CreateSound(BarrageSFX, CurrentStand.Head, 3.25, 1, 0, not NeutralStop, not NeutralStop, "Barrage Shout")
	BarrageSound.Ended:Connect(function()
		if NeutralStop == true then
			Done = true
		end
	end)
	if NeutralStop == false and External == true then
		BarrageSound.TimePosition = 0.1
		coroutine.resume(coroutine.create(function()
			while BarrageSound do
				game:GetService("RunService").RenderStepped:Wait()
				if BarrageSound.TimePosition > 3.2 then
					BarrageSound:Pause()
					BarrageSound.TimePosition = 1
					BarrageSound:Resume()
				end
			end
		end))
	end
	local AttachmentLeft1 = Instance.new("Attachment")
	AttachmentLeft1.Parent = CurrentStand["Left Arm"]
	AttachmentLeft1.Position = Vector3.new(0,-2.5,0)
	local AttachmentLeft2 = Instance.new("Attachment")
	AttachmentLeft2.Parent = CurrentStand["Left Arm"]
	AttachmentLeft2.Position = Vector3.new(0,2.5,0)
	local AttachmentRight1 = Instance.new("Attachment")
	AttachmentRight1.Parent = CurrentStand["Right Arm"]
	AttachmentRight1.Position = Vector3.new(0,-2.5,0)
	local AttachmentRight2 = Instance.new("Attachment")
	AttachmentRight2.Parent = CurrentStand["Right Arm"]
	AttachmentRight2.Position = Vector3.new(0,2.5,0)
	local TrailLeft = Instance.new("Trail")
	TrailLeft.Parent = CurrentStand["Left Arm"]
	TrailLeft.Lifetime = 0.05
	TrailLeft.LightEmission = 0.8
	TrailLeft.Transparency = NumberSequence.new(0.7)
	TrailLeft.Attachment0 = AttachmentLeft1
	TrailLeft.Attachment1 = AttachmentLeft2
	local TrailRight = Instance.new("Trail")
	TrailRight.Parent = CurrentStand["Right Arm"]
	TrailRight.Lifetime = 0.05
	TrailRight.LightEmission = 0.8
	TrailRight.Transparency = NumberSequence.new(0.7)
	TrailRight.Attachment0 = AttachmentRight1
	TrailRight.Attachment1 = AttachmentRight2
	repeat
		game:GetService("RunService").RenderStepped:Wait()
		Repeat = Repeat - 1
		CreateHitBox(CurrentStand.PrimaryPart.CFrame * CFrame.new(0, 0, -2.35), math.random(4,9), Vector3.new(4.2,3.4,4), 0.35, true, "Ball", 2974875851, "Barrage", Color3.fromRGB(255, 255, 255))
		for i = 0,1,0.225*AttackSpeed/0.75 do
			game:GetService("RunService").RenderStepped:Wait()
			CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.Angles(math.rad(28.018), math.rad(-4.526), math.rad(-8.48)), i)
			CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.new(0.056, -0.008, 0.011) * CFrame.Angles(math.rad(3.667), math.rad(6.646), math.rad(13.923)), i)
			CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.new(0.952, 0.496, -0.141) * CFrame.Angles(math.rad(-5.73), math.rad(6.933), math.rad(-12.261)), i)
			CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(-1.587, 0.561, -0.296) * CFrame.Angles(math.rad(-19.996), math.rad(-32.143), math.rad(-108.862)), i)
			CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.new(-1.515, -0.375, 0.297) * CFrame.Angles(math.rad(-4.412), math.rad(5.214), math.rad(108.518)), i)
			CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.new(0.049, 0.007, -0.004) * CFrame.Angles(math.rad(-23.377), math.rad(0.745), math.rad(8.308)), i)
		end
		CreateEffect(CurrentStand["Left Arm"], "BarrageArm", CurrentStand["Left Arm"].Color)
		CreateHitBox(CurrentStand.PrimaryPart.CFrame * CFrame.new(0, 0, -2.35), math.random(4,9), Vector3.new(4.2,3.4,4), 0.35, true, "Ball", 2974875851, "Barrage", Color3.fromRGB(255, 255, 255))
		for i = 0,1,0.225*AttackSpeed/0.75 do
			game:GetService("RunService").RenderStepped:Wait()
			CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.Angles(math.rad(27.846), math.rad(5.73), math.rad(10.714)), i)
			CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.new(-0.057, 0.038, -0.01) * CFrame.Angles(math.rad(-2.693), math.rad(-5.157), math.rad(15.069)), i)
			CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.new(0.927, 0.471, 0.061) * CFrame.Angles(math.rad(1.318), math.rad(-4.813), math.rad(-12.892)), i)
			CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(1.596, -0.316, 0.111) * CFrame.Angles(math.rad(-1.776), math.rad(-3.037), math.rad(-103.075)), i)
			CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.new(1.659, 0.498, -0.516) * CFrame.Angles(math.rad(-19.079), math.rad(38.961), math.rad(106.284)), i)
			CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.new(-0.117, 0.022, -0.012) * CFrame.Angles(math.rad(-23.377), math.rad(-0.917), math.rad(-10.084)), i)
		end
		CreateEffect(CurrentStand["Right Arm"], "BarrageArm", CurrentStand["Right Arm"].Color)
	until Repeat < 0 or Repeat == 0 or BarrageDown == false or Done == true
	BarrageSound:Destroy()
	Hum.WalkSpeed = WalkSpeed
	AttachmentLeft1:Destroy()
	AttachmentLeft2:Destroy()
	AttachmentRight1:Destroy()
	AttachmentRight2:Destroy()
	TrailLeft:Destroy()
	TrailRight:Destroy()
	if PunchAfterBarrage == false then
		for i = 0,1,0.3 do
			game:GetService("RunService").RenderStepped:Wait()
			CurrentStand.PrimaryPart.CFrame = CurrentStand.PrimaryPart.CFrame:Lerp(Root.CFrame * CFrame.new(-2, 1.3, 3), 0.3)
		end
		Move = false
	else
		StrongPunch()
		PunchAfterBarrage = false
	end
end

function ClockFade()
	local Clone = Clock.Clock.Count:Clone()
	Clone.Name = "CounterFade"
	Clone.Parent = Clock.Clock
	coroutine.resume(coroutine.create(function()
		for i = 1, 75 do
			game:GetService("RunService").RenderStepped:Wait()
			Clone.Size = Clone.Size + UDim2.new(0, 2, 0, 2)
			Clone.Position = Clone.Position + UDim2.new(-0.005, 0, -0.005, 0)
			Clone.TextTransparency = Clone.TextTransparency + 0.025
			Clone.TextStrokeTransparency = Clone.TextTransparency
		end
		Clone:Destroy()
	end))
end

function AddingStopper(Child)
	local ChildAdderConnection = Child.DescendantAdded:Connect(function(Child2)
		CheckObject(Child2)
		if Child2:IsA("BasePart") and Child2:FindFirstChild(StandName.."'s Anchored Value") == nil then
			StopObject(Child2)
		end
	end)
	table.insert(TSConnections, ChildAdderConnection)
end

function StopObject(Child)
	local AnchoredValue = Instance.new("BoolValue")
	AnchoredValue.Value = Child.Anchored
	AnchoredValue.Name = StandName.."'s Anchored Value"
	AnchoredValue.Parent = Child
	local SizeValue = Instance.new("Vector3Value")
	SizeValue.Value = Child.Size
	SizeValue.Name = StandName.."'s Size Value"
	SizeValue.Parent = Child
	local TransparencyValue = Instance.new("NumberValue")
	TransparencyValue.Value = Child.Transparency
	TransparencyValue.Name = StandName.."'s Transparency Value"
	TransparencyValue.Parent = Child
	local ColorValue = Instance.new("Color3Value")
	ColorValue.Value = Child.Color
	ColorValue.Name = StandName.."'s Color Value"
	ColorValue.Parent = Child
	local OriginalCFrame = Child.CFrame
	local OriginalSize = Child.Size
	local OriginalTransparency = Child.Transparency
	local OriginalColor = Child.Color
	Child.Anchored = true
	local AnchoredConnection = Child:GetPropertyChangedSignal("Anchored"):Connect(function()
		Child.Anchored = true
	end)
	table.insert(TSConnections, AnchoredConnection)
	local CFrameConnection = Child:GetPropertyChangedSignal("CFrame"):Connect(function()
		Child.CFrame = OriginalCFrame
	end)
	table.insert(TSConnections, CFrameConnection)
	local SizeConnection = Child:GetPropertyChangedSignal("Size"):Connect(function()
		Child.Size = OriginalSize
	end)
	table.insert(TSConnections, SizeConnection)
	local TransparencyConnection = Child:GetPropertyChangedSignal("Transparency"):Connect(function()
		Child.Transparency = OriginalTransparency
	end)
	table.insert(TSConnections, TransparencyConnection)
	local ColorConnection = Child:GetPropertyChangedSignal("Color"):Connect(function()
		Child.Color = OriginalColor
	end)
	table.insert(TSConnections, ColorConnection)
	--[[ Useless since I use workspace.DescendantAdded now
	local ChildAdderConnection = Child.ChildAdded:Connect(function(Child2)
		if Child2:IsA("BasePart") then
			StopObject(Child2)
		else
			AddingStopper(Child2)
		end
	end)
	table.insert(TSConnections, ChildAdderConnection)
	]]
end

function CheckObject(Child)
	for Index, Child2 in next, Child:GetDescendants() do
		if Child2:IsA("BasePart") and Child2:FindFirstChild(StandName.."'s Anchored Value") == nil then 
			StopObject(Child2)
		end
	end
end

function TimeStop()
	if CurrentStand == nil then
		return
	end
	if (Hum.FloorMaterial == nil or Hum.FloorMaterial == "" or Hum.FloorMaterial == Enum.Material.Air) and Hum.Sit == false then
		return
	end
	Move = true
	if workspace:FindFirstChild("IsTimeStopped") then
		if workspace.IsTimeStopped.Value == Player.Name then
			workspace.IsTimeStopped:Destroy()
		end
	end
	local Val = Instance.new("StringValue")
	Val.Value = Player.Name
	Val.Name = "IsTimeStopped"
	Val.Parent = workspace
	ClockTime = TimeStopSeconds
	Clock.Clock.MainArrow.Rotation = 0.015
	Clock.Clock.Count.Text = tostring(ClockTime)
	Clock.Enabled = true
	Lock(Character)
	local StopAudio = CreateSound(1571597070, Head, 5.5, 1, 0.865, false, false, "Stop Shout")
	local i = 0.095
	repeat
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.Angles(math.rad(3.323), 0, 0), i)
		CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.Angles(math.rad(-4.125), math.rad(0.344), math.rad(-4.641)), i)
		CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.Angles(math.rad(-7.85), math.rad(-0.917), math.rad(6.474)), i)
		CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.Angles(math.rad(10.943), math.rad(-41.597), math.rad(-69.328)), i)
		CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.Angles(math.rad(9.282), math.rad(41.769), math.rad(84.339)), i)
		CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(math.rad(12.6), 0, 0), i)
	until StopAudio.TimePosition > 2.645
	TimeStopped = true
	StopAudio.Parent = CurrentStand.Head
	StopAudio.Volume = 9
	for Index, Player in next, game:GetService("Players"):GetPlayers() do
		local TheScriptParent = "PlayerGui"
		if Player:FindFirstChildOfClass(TheScriptParent):FindFirstChild(StandName.."'s Sound Resumer") then
			Player:FindFirstChildOfClass(TheScriptParent)[StandName.."'s Sound Resumer"]:Destroy()
		end
		if Player:FindFirstChildOfClass(TheScriptParent):FindFirstChild(StandName.."'s Sound Stopper") then
			Player:FindFirstChildOfClass(TheScriptParent)[StandName.."'s Sound Stopper"]:Destroy()
		end
		if Player:FindFirstChildOfClass(TheScriptParent):FindFirstChild(StandName.." Stop Effect") then
			Player:FindFirstChildOfClass(TheScriptParent)[StandName.." Stop Effect"]:Destroy()
		end
		if Player:FindFirstChildOfClass(TheScriptParent):FindFirstChild(StandName.." Resume Effect") then
			Player:FindFirstChildOfClass(TheScriptParent)[StandName.." Resume Effect"]:Destroy()
		end
		local Copy = CorrectionScript:Clone()
		Copy.Name = StandName.." Stop Effect"
		Copy.StandName.Value = StandName
		Copy.Parent = Player:FindFirstChildOfClass(TheScriptParent)
		Copy.Disabled = false
		local Sounder = SoundStopScript:Clone()
		Sounder.Name = StandName.."'s Sound Stopper"
		Sounder.StandName.Value = StandName
		Sounder.Char.Value = Character
		Sounder.Parent = Player:FindFirstChildOfClass(TheScriptParent)
		Sounder.Disabled = false
		game:GetService("Debris"):AddItem(Sounder, TimeStopSeconds+TimeStopSeconds/1.75)
		game:GetService("Debris"):AddItem(Copy, TimeStopSeconds+TimeStopSeconds/1.75)
	end
	coroutine.resume(coroutine.create(function()
		for Index, Child in next, workspace:GetDescendants() do
			if Child:IsA("BasePart") and not Child:IsDescendantOf(Character) then
				if IsAHumanoid(Child) then
					local TsChar = IsAHumanoid(Child)
					if TsChar:FindFirstChild("IsTSImmune") then
						local Value = TsChar["IsTSImmune"]
						local ValueConnection = Value:GetPropertyChangedSignal("Value"):Connect(function()
							if Value.Value == false then
								StopObject(Child)
							end
						end)
						table.insert(TSConnections, ValueConnection)
					else
						StopObject(Child)
					end
				else
					StopObject(Child)
				end
			elseif not Child:IsA("BasePart") and not Child:IsDescendantOf(Character) and not Child == Character then
				if IsAHumanoid(Child) then
					local TsChar = IsAHumanoid(Child)
					if TsChar:FindFirstChild("IsTSImmune") then
						local Value = TsChar["IsTSImmune"]
						local ValueConnection = Value:GetPropertyChangedSignal("Value"):Connect(function()
							if Value.Value == false then
								CheckObject(Child)
								AddingStopper(Child)
							end
						end)
						table.insert(TSConnections, ValueConnection)
					else
						CheckObject(Child)
						AddingStopper(Child)
					end
				else
					CheckObject(Child)
					AddingStopper(Child)
				end
			end
		end
		--[[
		for Index, Plr in next, game:GetService("Players"):GetPlayers() do
			if Plr ~= Player then
				local CharacterAddingConnection = Plr.CharacterAdded:Connect(function()
					local Char = workspace:WaitForChild(Plr.Name)
					for Index2, Child in next, Char:GetDescendants() do
						if Child:IsA("BasePart") then
							CheckObject(Child)
							StopObject(Child)
						else
							CheckObject(Child)
							AddingStopper(Child)
						end
					end
				end)
				table.insert(TSConnections, CharacterAddingConnection)
			end
		end
		local PlayerJoinedConnection = game:GetService("Players").PlayerAdded:Connect(function(Plr)
			local CharacterAddingConnection = Plr.CharacterAdded:Connect(function()
				local Char = workspace:WaitForChild(Plr.Name)
				for Index2, Child in next, Char:GetDescendants() do
					if Child:IsA("BasePart") then
						CheckObject(Child)
						StopObject(Child)
					else
						CheckObject(Child)
						AddingStopper(Child)
					end
				end
			end)
			table.insert(TSConnections, CharacterAddingConnection)
			local Char = workspace:WaitForChild(Plr.Name)
			for Index, Child in next, Char:GetDescendants() do
				if Child:IsA("BasePart") then
					CheckObject(Child)
					StopObject(Child)
				else
					CheckObject(Child)
					AddingStopper(Child)
				end
			end
		end)
		table.insert(TSConnections, PlayerJoinedConnection)
		]]
		local WorkspaceConnection = workspace.DescendantAdded:Connect(function(Child)
			if not Child:IsDescendantOf(Character) then
				CheckObject(Child)
			end
			if Child:IsA("BasePart") and not Child:IsDescendantOf(Character) then
				StopObject(Child)
			elseif not Child:IsA("BasePart") and not Child:IsDescendantOf(Character) then
				AddingStopper(Child)
			end
		end)
		table.insert(TSConnections, WorkspaceConnection)
	end))
	coroutine.resume(coroutine.create(function()
		for p = 1, 4 do
			local CirclePart = Instance.new("Part")
			CirclePart.Shape = Enum.PartType.Ball
			CirclePart.Color = Color3.fromRGB(255, 255, 255)
			CirclePart.Reflectance = p/4
			CirclePart.Transparency = 0.5
			CirclePart.CanCollide = false
			CirclePart.Anchored = true
			CirclePart.Massless = true
			CirclePart.Material = Enum.Material.Glass
			CirclePart.CFrame = Root.CFrame
			CirclePart.Name = StandName.."'s Time Stop Effect Part "..p
			CirclePart.Parent = CurrentStand
			coroutine.resume(coroutine.create(function()
				for i = 1, 20 do
					CirclePart.Transparency = CirclePart.Transparency + 0.015
					CirclePart.Size = Vector3.new(2 + (i * 2.25 * (p*5)), 2 + (i * 2.25 * (p*5)), 2 + (i * 2.25 * (p*5)))
					wait(0.01)
				end
				for i = 20, 1, -1 do
					CirclePart.Transparency = CirclePart.Transparency - 0.015
					CirclePart.Size = Vector3.new(2 + (i * 2.25 * (p*5)), 2 + (i * 2.25 * (p*5)), 2 + (i * 2.25 * (p*5)))
					wait(0.01)
				end
				CirclePart:Destroy()
			end))
			wait(0.02)
		end
	end))
	AllowClockMovment = true
	coroutine.resume(coroutine.create(function()
		repeat
			game:GetService("RunService").RenderStepped:Wait()
		until ClockTime < 0 or ClockTime == 0 or TimeStopped == false
		if TimeStopped == true then
			if CurrentStand == nil then
				Stand()
			end
			TimeResume()
		end
	end))
	for i = 0,1,0.008*AttackSpeed/0.75 do
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.Angles(math.rad(-5.443), 0, 0), 1.86)
		CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.Angles(math.rad(-4.125), math.rad(-0.63), math.rad(8.652)), 1.86)
		CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.Angles(math.rad(-7.792), math.rad(1.318), math.rad(-9.511)), 1.86)
		CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(-0.669, 0.039, 0.18) * CFrame.Angles(math.rad(13.35), math.rad(49.504), math.rad(-103.591)), 1.86)
		CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.new(0.782, 0.086, 0.12) * CFrame.Angles(math.rad(-4.756), math.rad(-30.882), math.rad(102.445)), 1.86)
		CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(math.rad(-8.193), 0, 0), 1.86)
	end
	Unlock(Character)
	Move = false
end

function InstantResume()
	TimeStopped = false
	AllowClockMovment = false
	ClockTime = 0
	Clock.Enabled = false
	for Index, Knife in next, TimeStopKnifes do
		if Knife:IsA("BasePart") then
			Knife.Anchored = false
			local Original = 100
			local Velocity = Instance.new("BodyVelocity")
			Velocity.Name = "KnifeThrowing"
			Velocity.Parent = Knife
			Velocity.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			Velocity.Velocity = Knife.CFrame.lookVector*Original
			coroutine.resume(coroutine.create(function()
				repeat 
					game:GetService("RunService").RenderStepped:Wait()
					Velocity.Velocity = Knife.CFrame.lookVector*Original
					Original = Original - 1.25
				until Velocity.Parent == nil or Original < 10
				Velocity:Destroy()
			end))
			game:GetService("Debris"):AddItem(Knife, 10)
		end
	end
	if workspace:FindFirstChild("IsTimeStopped") then
		if workspace.IsTimeStopped.Value == Player.Name then
			workspace.IsTimeStopped:Destroy()
		end
	end
	for Index,Player in next, game:GetService("Players"):GetPlayers() do
		local TheScriptParent = "PlayerGui"
		if Player:FindFirstChildOfClass(TheScriptParent):FindFirstChild(StandName.."'s Sound Resumer") then
			Player:FindFirstChildOfClass(TheScriptParent)[StandName.."'s Sound Resumer"]:Destroy()
		end
		if Player:FindFirstChildOfClass(TheScriptParent):FindFirstChild(StandName.."'s Sound Stopper") then
			Player:FindFirstChildOfClass(TheScriptParent)[StandName.."'s Sound Stopper"]:Destroy()
		end
		if Player:FindFirstChildOfClass(TheScriptParent):FindFirstChild(StandName.." Resume Effect") then
			Player:FindFirstChildOfClass(TheScriptParent)[StandName.." Resume Effect"]:Destroy()
		end
		if Player:FindFirstChildOfClass(TheScriptParent):FindFirstChild(StandName.." Stop Effect") then
			Player:FindFirstChildOfClass(TheScriptParent)[StandName.." Stop Effect"]:Destroy()
		end
		local Copy = CorrectionRemoveScript:Clone()
		Copy.Name = StandName.." Resume Effect"
		Copy.StandName.Value = StandName
		Copy.Parent = Player:FindFirstChildOfClass(TheScriptParent)
		Copy.Disabled = false
		local Resumer = SoundResumeScript:Clone()
		Resumer.Name = StandName.."'s Sound Resumer"
		Resumer.StandName.Value = StandName
		Resumer.Parent = Player:FindFirstChildOfClass(TheScriptParent)
		Resumer.Disabled = false
		game:GetService("Debris"):AddItem(Resumer, 6)
		game:GetService("Debris"):AddItem(Copy, 8)
		for Index2, Child in next, Player:FindFirstChildOfClass("Backpack"):GetDescendants() do
			if Child:IsA("BasePart") then
				if Child:FindFirstChild(StandName.."'s Anchored Value") then
					Child.Anchored = Child[StandName.."'s Anchored Value"].Value
					Child[StandName.."'s Anchored Value"]:Destroy()
				end
				if Child:FindFirstChild(StandName.."'s Size Value") then
					Child.Size = Child[StandName.."'s Size Value"].Value
					Child[StandName.."'s Size Value"]:Destroy()
				end
				if Child:FindFirstChild(StandName.."'s Transparency Value") then
					Child.Transparency = Child[StandName.."'s Transparency Value"].Value
					Child[StandName.."'s Transparency Value"]:Destroy()
				end
				if Child:FindFirstChild(StandName.."'s Color Value") then
					Child.Color = Child[StandName.."'s Color Value"].Value
					Child[StandName.."'s Color Value"]:Destroy()
				end
			end
		end
	end
	for Index, Connection in next, TSConnections do
		Connection:Disconnect()
	end
	for Index, Child in next, workspace:GetDescendants() do
		if Child:IsA("BasePart") then
			if Child:FindFirstChild(StandName.."'s Anchored Value") then
				Child.Anchored = Child[StandName.."'s Anchored Value"].Value
				Child[StandName.."'s Anchored Value"]:Destroy()
			end
			if Child:FindFirstChild(StandName.."'s Size Value") then
				Child.Size = Child[StandName.."'s Size Value"].Value
				Child[StandName.."'s Size Value"]:Destroy()
			end
			if Child:FindFirstChild(StandName.."'s Transparency Value") then
				Child.Transparency = Child[StandName.."'s Transparency Value"].Value
				Child[StandName.."'s Transparency Value"]:Destroy()
			end
			if Child:FindFirstChild(StandName.."'s Color Value") then
				Child.Color = Child[StandName.."'s Color Value"].Value
				Child[StandName.."'s Color Value"]:Destroy()
			end
		end
		if Child:IsA("Humanoid") then
			coroutine.resume(coroutine.create(function()
				for i = 1, #TimeStopHits do
					if CheckTableWithValueIndex(TimeStopHits, Child, 1, "Value") then
						local HitTorso = Child.Parent:FindFirstChild("Torso") or Child.Parent:FindFirstChild("UpperTorso")
						local TableIndex = CheckTableWithValueIndex(TimeStopHits, Child, 1, "Index")
						Child:TakeDamage(TimeStopHits[TableIndex][2])
						if TimeStopHits[TableIndex][7] == "Strong" then
							Child.BreakJointsOnDeath = false
						end
						if TimeStopHits[TableIndex][2] == "Instant Kill" then
							HitTorso.Parent:BreakJoints()
						else
							Child:TakeDamage(TimeStopHits[TableIndex][2])
						end
						coroutine.resume(coroutine.create(function()
							CreateEffect(HitTorso, TimeStopHits[TableIndex][4], TimeStopHits[TableIndex][5])
						end))
						coroutine.resume(coroutine.create(function()
							HitEffect(HitTorso, HitTorso.Parent, TimeStopHits[TableIndex][6], TimeStopHits[TableIndex][7])
						end))
						CreateSound(TimeStopHits[TableIndex][3], HitTorso, 3, math.random(95,113)/100, 0, false, false, "Hit SFX")
						PunchAfterBarrage = false
						table.remove(TimeStopHits, TableIndex)
					end
				end
			end))
		end
	end
	TSConnections = {}
	TimeStopHits = {}
	TimeStopKnifes = {}
end

function TimeResume()
	if CurrentStand == nil then
		return
	end
	AllowClockMovment = false
	ClockTime = 0
	Clock.Enabled = false
	Move = true
	BarrageDown = false
	TimeStopped = false
	if Character and Character ~= nil and Character:IsDescendantOf(workspace) then
		Lock(Character)
		if Character:FindFirstChild("Head") then
			CreateSound(4748344579, Head, 7.5, 1, 0, false, false, "Time Resume Call")
			wait(1.65)
		end
	end
	local DidSound = false
	if DidSound == false and Character and Character ~= nil and Character:IsDescendantOf(workspace) and Torso and Torso:IsDescendantOf(Character) then
		DidSound = true
		CreateSound(864569342, Torso, 6.9, 1, 0.056, false, false, "Time Resume")
	end
	for Index, Knife in next, TimeStopKnifes do
		if Knife:IsA("BasePart") then
			Knife.Anchored = false
			local Original = 100
			local Velocity = Instance.new("BodyVelocity")
			Velocity.Name = "KnifeThrowing"
			Velocity.Parent = Knife
			Velocity.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			Velocity.Velocity = Knife.CFrame.lookVector*Original
			coroutine.resume(coroutine.create(function()
				repeat 
					game:GetService("RunService").RenderStepped:Wait()
					Velocity.Velocity = Knife.CFrame.lookVector*Original
					Original = Original - 1.25
				until Velocity.Parent == nil or Original < 10
				Velocity:Destroy()
			end))
			game:GetService("Debris"):AddItem(Knife, 10)
		end
	end
	if workspace:FindFirstChild("IsTimeStopped") then
		if workspace.IsTimeStopped.Value == Player.Name then
			workspace.IsTimeStopped:Destroy()
		end
	end
	for Index,Player in next, game:GetService("Players"):GetPlayers() do
		local TheScriptParent = "PlayerGui"
		if Player:FindFirstChildOfClass(TheScriptParent):FindFirstChild(StandName.."'s Sound Resumer") then
			Player:FindFirstChildOfClass(TheScriptParent)[StandName.."'s Sound Resumer"]:Destroy()
		end
		if Player:FindFirstChildOfClass(TheScriptParent):FindFirstChild(StandName.."'s Sound Stopper") then
			Player:FindFirstChildOfClass(TheScriptParent)[StandName.."'s Sound Stopper"]:Destroy()
		end
		if Player:FindFirstChildOfClass(TheScriptParent):FindFirstChild(StandName.." Resume Effect") then
			Player:FindFirstChildOfClass(TheScriptParent)[StandName.." Resume Effect"]:Destroy()
		end
		if Player:FindFirstChildOfClass(TheScriptParent):FindFirstChild(StandName.." Stop Effect") then
			Player:FindFirstChildOfClass(TheScriptParent)[StandName.." Stop Effect"]:Destroy()
		end
		local Copy = CorrectionRemoveScript:Clone()
		Copy.Name = StandName.." Resume Effect"
		Copy.StandName.Value = StandName
		Copy.Parent = Player:FindFirstChildOfClass(TheScriptParent)
		Copy.Disabled = false
		local Resumer = SoundResumeScript:Clone()
		Resumer.Name = StandName.."'s Sound Resumer"
		Resumer.StandName.Value = StandName
		Resumer.Parent = Player:FindFirstChildOfClass(TheScriptParent)
		Resumer.Disabled = false
		game:GetService("Debris"):AddItem(Resumer, 6)
		game:GetService("Debris"):AddItem(Copy, 8)
		for Index2, Child in next, Player:FindFirstChildOfClass("Backpack"):GetDescendants() do
			if Child:IsA("BasePart") then
				if Child:FindFirstChild(StandName.."'s Anchored Value") then
					Child.Anchored = Child[StandName.."'s Anchored Value"].Value
					Child[StandName.."'s Anchored Value"]:Destroy()
				end
				if Child:FindFirstChild(StandName.."'s Size Value") then
					Child.Size = Child[StandName.."'s Size Value"].Value
					Child[StandName.."'s Size Value"]:Destroy()
				end
				if Child:FindFirstChild(StandName.."'s Transparency Value") then
					Child.Transparency = Child[StandName.."'s Transparency Value"].Value
					Child[StandName.."'s Transparency Value"]:Destroy()
				end
				if Child:FindFirstChild(StandName.."'s Color Value") then
					Child.Color = Child[StandName.."'s Color Value"].Value
					Child[StandName.."'s Color Value"]:Destroy()
				end
			end
		end
	end
	for Index, Connection in next, TSConnections do
		Connection:Disconnect()
	end
	for Index, Child in next, workspace:GetDescendants() do
		if Child:IsA("BasePart") then
			if Child:FindFirstChild(StandName.."'s Anchored Value") then
				Child.Anchored = Child[StandName.."'s Anchored Value"].Value
				Child[StandName.."'s Anchored Value"]:Destroy()
			end
			if Child:FindFirstChild(StandName.."'s Size Value") then
				Child.Size = Child[StandName.."'s Size Value"].Value
				Child[StandName.."'s Size Value"]:Destroy()
			end
			if Child:FindFirstChild(StandName.."'s Transparency Value") then
				Child.Transparency = Child[StandName.."'s Transparency Value"].Value
				Child[StandName.."'s Transparency Value"]:Destroy()
			end
			if Child:FindFirstChild(StandName.."'s Color Value") then
				Child.Color = Child[StandName.."'s Color Value"].Value
				Child[StandName.."'s Color Value"]:Destroy()
			end
		end
		if Child:IsA("Humanoid") then
			coroutine.resume(coroutine.create(function()
				for i = 1, #TimeStopHits do
					if CheckTableWithValueIndex(TimeStopHits, Child, 1, "Value") then
						local HitTorso = Child.Parent:FindFirstChild("Torso") or Child.Parent:FindFirstChild("UpperTorso")
						local TableIndex = CheckTableWithValueIndex(TimeStopHits, Child, 1, "Index")
						Child:TakeDamage(TimeStopHits[TableIndex][2])
						if TimeStopHits[TableIndex][7] == "Strong" then
							Child.BreakJointsOnDeath = false
						end
						if TimeStopHits[TableIndex][2] == "Instant Kill" then
							HitTorso.Parent:BreakJoints()
						else
							Child:TakeDamage(TimeStopHits[TableIndex][2])
						end
						coroutine.resume(coroutine.create(function()
							CreateEffect(HitTorso, TimeStopHits[TableIndex][4], TimeStopHits[TableIndex][5])
						end))
						coroutine.resume(coroutine.create(function()
							HitEffect(HitTorso, HitTorso.Parent, TimeStopHits[TableIndex][6], TimeStopHits[TableIndex][7])
						end))
						CreateSound(TimeStopHits[TableIndex][3], HitTorso, 3, math.random(95,113)/100, 0, false, false, "Hit SFX")
						PunchAfterBarrage = false
						table.remove(TimeStopHits, TableIndex)
					end
				end
			end))
		end
	end
	if Character and Character ~= nil and Character:IsDescendantOf(workspace) then
		Unlock(Character)
	end
	TSConnections = {}
	TimeStopHits = {}
	TimeStopKnifes = {}
	Move = false
end

function Punch()
	if CurrentStand == nil then
		return
	end
	Move = true
	NormalPunch = true
	local WalkSpeed = Hum.WalkSpeed
	Hum.WalkSpeed = 9
	for i = 0,1,0.165*AttackSpeed/0.75 do
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.Angles(math.rad(35.008), math.rad(0.172), math.rad(-1.547)), i)
		CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.new(0.055, -0.008, -0.009) * CFrame.Angles(math.rad(2.75), math.rad(5.386), math.rad(14.037)), i)
		CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.new(0.977, 0.511, -0.028) * CFrame.Angles(math.rad(-3.037), math.rad(3.151), math.rad(-12.662)), i)
		CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(0.435, -0.129, 0.287) * CFrame.Angles(math.rad(156.188), math.rad(60.103), math.rad(129.145)), i)
		CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.new(0.137, 0.072, 0.013) * CFrame.Angles(math.rad(-2.005), math.rad(61.249), math.rad(81.074)), i)
		CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.new(0.049, 0.007, -0.004) * CFrame.Angles(math.rad(-23.377), math.rad(0.573), math.rad(7.678)), i)
	end
	CreateSound(138097048, CurrentStand.PrimaryPart, 6.5, math.random(97,108)/100, 0, false, false, "Woosh")
	coroutine.resume(coroutine.create(function()
		wait(0.06)
		CreateHitBox(CurrentStand.PrimaryPart.CFrame * CFrame.new(0, 0, -2.35), math.random(35,50), Vector3.new(4.2,3.4,4), 0.35, true, "Ball", 2974875851, "Punch", Color3.fromRGB(255, 255, 255))
	end))
	for i = 0,1,0.1*AttackSpeed/0.75 do
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.Angles(math.rad(33.289), math.rad(-11.631), math.rad(-18.908)), i)
		CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.new(0.056, -0.008, 0.011) * CFrame.Angles(math.rad(11.918), math.rad(17.704), math.rad(12.089)), i)
		CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.new(0.971, 0.512, -0.238) * CFrame.Angles(math.rad(-10.6), math.rad(13.522), math.rad(-11.173)), i)
		CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(-0.351, 0.091, -0.295) * CFrame.Angles(math.rad(-15.47), math.rad(-34.779), math.rad(-105.482)), i)
		CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.new(0.145, 0.078, 0.013) * CFrame.Angles(math.rad(-30.309), math.rad(-14.897), math.rad(5.157)), i)
		CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.new(0.049, 0.007, -0.004) * CFrame.Angles(math.rad(-24.465), math.rad(4.183), math.rad(25.783)), i)
	end
	for i = 0,1,0.2*AttackSpeed/0.75 do
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.Angles(math.rad(35.008), math.rad(0.172), math.rad(-1.547)), i)
		CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.new(0.055, -0.008, -0.009) * CFrame.Angles(math.rad(2.75), math.rad(5.386), math.rad(14.037)), i)
		CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.new(0.977, 0.511, -0.028) * CFrame.Angles(math.rad(-3.037), math.rad(3.151), math.rad(-12.662)), i)
		CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(0.435, -0.129, 0.287) * CFrame.Angles(math.rad(156.188), math.rad(60.103), math.rad(129.145)), i)
		CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.new(0.137, 0.072, 0.013) * CFrame.Angles(math.rad(-2.005), math.rad(61.249), math.rad(81.074)), i)
		CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.new(0.049, 0.007, -0.004) * CFrame.Angles(math.rad(-23.377), math.rad(0.573), math.rad(7.678)), i)
	end
	NormalPunch = false
	Hum.WalkSpeed = WalkSpeed
	for i = 0,1,0.3 do
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.PrimaryPart.CFrame = CurrentStand.PrimaryPart.CFrame:Lerp(Root.CFrame * CFrame.new(-2, 1.3, 3), 0.3)
	end
	Move = false
end

function StrongPunch()
	if CurrentStand == nil then
		return
	end
	Move = true
	StrongMUDA = true
	local WalkSpeed = Hum.WalkSpeed
	Hum.WalkSpeed = 7
	if PunchAfterBarrage == true then
		CreateSound(616593932, CurrentStand.Head, 6.5, 1, 3.545, false, false, "Strong Shout")
	else
		CreateSound(1277342512, CurrentStand.Head, 6.5, math.random(98,102)/100, 0.1, false, false, "Strong Shout")
	end
	for i = 0,1,0.15*AttackSpeed/0.75 do
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.Angles(math.rad(35.008), math.rad(0.172), math.rad(-1.547)), i)
		CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.new(0.055, -0.008, -0.009) * CFrame.Angles(math.rad(2.75), math.rad(5.386), math.rad(14.037)), i)
		CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.new(0.977, 0.511, -0.028) * CFrame.Angles(math.rad(-3.037), math.rad(3.151), math.rad(-12.662)), i)
		CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(0.571, -0.22, 0.493) * CFrame.Angles(math.rad(152.922), math.rad(46.238), math.rad(119.462)), i)
		CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.new(0.306, 0.057, 0.008) * CFrame.Angles(math.rad(2.807), math.rad(66.349), math.rad(84.74)), i)
		CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.new(0.049, 0.007, -0.004) * CFrame.Angles(math.rad(-23.377), math.rad(0.573), math.rad(7.678)), i)
	end
	coroutine.resume(coroutine.create(function()
		wait(0.06)
		CreateHitBox(CurrentStand.PrimaryPart.CFrame * CFrame.new(0, 0, -2.35), "Instant Kill", Vector3.new(4.2,3.4,4), 0.35, true, "Slice", 2319521125, "Strong", Color3.fromRGB(255, 255, 255))
	end))
	for i = 0,1,0.0315*AttackSpeed/0.75 do
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.Angles(math.rad(33.289), math.rad(-11.631), math.rad(-18.908)), i)
		CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.new(0.056, -0.008, 0.011) * CFrame.Angles(math.rad(11.918), math.rad(17.704), math.rad(12.089)), i)
		CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.new(0.971, 0.512, -0.238) * CFrame.Angles(math.rad(-10.6), math.rad(13.522), math.rad(-11.173)), i)
		CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(-0.615, 0.279, -0.164) * CFrame.Angles(math.rad(-9.683), math.rad(-21.772), math.rad(-98.721)), i)
		CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.new(0.145, 0.078, 0.013) * CFrame.Angles(math.rad(-30.309), math.rad(-14.897), math.rad(5.157)), i)
		CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.new(0.049, 0.007, -0.004) * CFrame.Angles(math.rad(-24.465), math.rad(4.183), math.rad(25.783)), i)
	end
	for i = 0,1,0.2*AttackSpeed/0.75 do
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.Angles(math.rad(35.008), math.rad(0.172), math.rad(-1.547)), i)
		CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.new(0.055, -0.008, -0.009) * CFrame.Angles(math.rad(2.75), math.rad(5.386), math.rad(14.037)), i)
		CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.new(0.977, 0.511, -0.028) * CFrame.Angles(math.rad(-3.037), math.rad(3.151), math.rad(-12.662)), i)
		CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(0.571, -0.22, 0.493) * CFrame.Angles(math.rad(152.922), math.rad(46.238), math.rad(119.462)), i)
		CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.new(0.306, 0.057, 0.008) * CFrame.Angles(math.rad(2.807), math.rad(66.349), math.rad(84.74)), i)
		CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.new(0.049, 0.007, -0.004) * CFrame.Angles(math.rad(-23.377), math.rad(0.573), math.rad(7.678)), i)
	end
	StrongMUDA = false
	Hum.WalkSpeed = WalkSpeed
	for i = 0,1,0.3 do
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.PrimaryPart.CFrame = CurrentStand.PrimaryPart.CFrame:Lerp(Root.CFrame * CFrame.new(-2, 1.3, 3), 0.3)
	end
	Move = false
end

function StandJump()
	if CurrentStand == nil then
		return
	end
	if Hum.FloorMaterial == nil or Hum.FloorMaterial == "" or Hum.FloorMaterial == Enum.Material.Air then
		return
	end
	for i = 1, 3 do
		local EffectPart = Instance.new("Part")
		EffectPart.Anchored = true
		EffectPart.Transparency = 1
		EffectPart.Size = Vector3.new(1,1,1)
		EffectPart.CFrame = RLeg.CFrame
		EffectPart.Parent = Character
		game:GetService("Debris"):AddItem(EffectPart, 1.5)
		CreateEffect(EffectPart, "Slice", Color3.fromRGB(127, 127, 127))
	end
	local Bod = Instance.new("BodyPosition",Root)
	Bod.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	Bod.Position = Root.CFrame * CFrame.new(0,80,-80).p
	wait(0.1)
	Bod:Destroy()
end

function KnifeThrow()
	if CurrentStand == nil then
		return
	end
	Move = true
	KnifeThrowing = true
	local WalkSpeed = Hum.WalkSpeed
	Hum.WalkSpeed = 6
	for i = 0,1,0.065*AttackSpeed/0.75 do
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.new(0, -0.44, 0) * CFrame.Angles(math.rad(11.746), 0, 0), i)
		CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.Angles(math.rad(-3.209), math.rad(0.688), 0), i)
		CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.Angles(math.rad(-4.183), math.rad(-0.859), math.rad(-0.057)), i)
		CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(-0.323, 0.067, 0) * CFrame.Angles(math.rad(4.641), math.rad(-59.759), math.rad(-78.782)), i)
		CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.new(0.333, 0.069, 0) * CFrame.Angles(math.rad(5.157), math.rad(54.66), math.rad(75.401)), i)
		CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(math.rad(-7.047), 0, 0), i)
	end
	coroutine.resume(coroutine.create(function()
		wait(0.085)
		CreateSound(166423113, CurrentStand.StandTorso, 4, 1, 0.04, false, false, "Throw SFX")
		local KnivesParent = Instance.new("Model")
		KnivesParent.Name = StandName.."'s Knives"
		KnivesParent.Parent = Head
		game:GetService("Debris"):AddItem(KnivesParent, TimeStopSeconds*2)
		for i = 1, 3 do
			local KnifePart = Instance.new("Part")
			KnifePart.Size = Vector3.new(1,1,3)
			KnifePart.Name = "Knife"
			KnifePart.Anchored = false
			KnifePart.CanCollide = false
			KnifePart.Massless = true
			KnifePart.Parent = KnivesParent
			KnifePart.CFrame = CurrentStand.StandTorso.CFrame * CFrame.new(-4+(1*i),-1,-2-math.sin(i*math.random(1,5)))
			local Mesh = Instance.new("SpecialMesh")
			Mesh.MeshId = "rbxassetid://2047774297"
			Mesh.TextureId = "rbxassetid://2047774362"
			Mesh.Scale = Vector3.new(.4,.4,.4)
			Mesh.Parent = KnifePart
			local Att1 = Instance.new("Attachment")
			Att1.Parent = KnifePart
			Att1.Position = Vector3.new(0, -0.069, 1.317)
			local Att2 = Instance.new("Attachment")
			Att2.Parent = KnifePart
			Att2.Position = Vector3.new(0, 0.103, 1.317)
			local Trail = Instance.new("Trail")
			Trail.Parent = KnifePart
			Trail.FaceCamera = true
			Trail.Enabled = true
			Trail.Attachment0 = Att1
			Trail.Attachment1 = Att2
			Trail.Lifetime = 0.15
			Trail.Parent = KnifePart
			Trail.WidthScale = NumberSequence.new(1,0)
			local Original = 100
			if TimeStopped == false then
				KnifePart.Anchored = false
				local Velocity = Instance.new("BodyVelocity")
				Velocity.Name = "KnifeThrowing"
				Velocity.Parent = KnifePart
				Velocity.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
				Velocity.Velocity = KnifePart.CFrame.lookVector*Original
				coroutine.resume(coroutine.create(function()
					repeat 
						game:GetService("RunService").RenderStepped:Wait()
						Velocity.Velocity = KnifePart.CFrame.lookVector*Original
						Original = Original - 1.25
					until Velocity.Parent == nil or Original < 10
					Velocity:Destroy()
				end))
				game:GetService("Debris"):AddItem(KnifePart, 10)
			else
				KnifePart.Anchored = true
				table.insert(TimeStopKnifes, KnifePart)
			end
			local DidHit = false
			local Damage = math.random(40,70)
			KnifePart.Touched:Connect(function(Toucher)
				if DidHit == false and IsAHumanoid(Toucher) and IsAHumanoid(Toucher) ~= Character and IsAHumanoid(Toucher):FindFirstChildOfClass("Humanoid").Health > 0 then
					DidHit = true
					local DoDamage = true
					local Humanoid = IsAHumanoid(Toucher):FindFirstChildOfClass("Humanoid")
					local HitTorso = Humanoid.Parent:FindFirstChild("Torso") or Humanoid.Parent:FindFirstChild("UpperTorso")
					if Humanoid.Parent:FindFirstChild("ReturnStandDamage") then
						if Humanoid.Parent.ReturnStandDamage.Value == true then
							local Val = Instance.new("StringValue")
							Val.Name = "RTZActive"
							Val.Parent = Hum.Parent
							Val.Value = "Missed Hit"
							game:GetService("Debris"):AddItem(Val, 0.2)
							if Hum.MaxHealth > 10000 then
								Hum.Parent:BreakJoints()
							end
							CreateSound(201858024, Root, 3, math.random(95,113)/100, 0, false, false, "Hit SFX")
							if Damage == "Instant Kill" then
								Hum.Parent:BreakJoints()
							else
								Hum:TakeDamage(Damage)
							end
							DoDamage = false
						end
					end
					if Humanoid.Parent:FindFirstChild("CanDodge") then
						if Humanoid.Parent.CanDodge.Value == true then
							if Humanoid.Parent:FindFirstChild("GotHitButNot") then
								Humanoid.Parent.GotHitButNot:Destroy()
							end
							local Val = Instance.new("StringValue")
							Val.Name = "GotHitButNot"
							Val.Parent = Humanoid.Parent
							Val.Value = "Missed Hit"
							game:GetService("Debris"):AddItem(Val, 0.2)
							CreatePopUpGui(Toucher, "FadeOut", "Miss", Color3.fromRGB(199, 199, 199))
							DoDamage = false
						end
					end
					if DoDamage == true then
						if KnifePart:FindFirstChild("KnifeThrowing") then
							KnifePart.KnifeThrowing:Destroy()
						end
						Glue(Toucher, KnifePart)
						CreateSound(201858024, Toucher, 3, math.random(95,113)/100, 0, false, false, "Hit SFX")
						CreatePopUpGui(Toucher, "Jump", tostring(Damage), Color3.fromRGB(188, 0, 0))
						if Humanoid.MaxHealth > 10000 then
							Humanoid.Parent:BreakJoints()
						end
						if Damage == "Instant Kill" then
							Humanoid.Parent:BreakJoints()
						else
							Humanoid:TakeDamage(Damage)
						end
					end
				end
			end)
		end
	end))
	for i = 0,1,0.065*AttackSpeed/0.75 do
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.new(0, 1.09, 0) * CFrame.Angles(math.rad(-13.178), 0, 0), i)
		CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.Angles(math.rad(-3.266), 0, math.rad(12.032)), i)
		CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.Angles(math.rad(-4.297), math.rad(-0.057), math.rad(-10.6)), i)
		CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(-0.323, 0.067, 0.26) * CFrame.Angles(math.rad(35.638), math.rad(49.561), math.rad(-112.185)), i)
		CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.new(0.333, 0.069, 0.2) * CFrame.Angles(math.rad(41.024), math.rad(-53.686), math.rad(113.56)), i)
		CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(math.rad(12.319), 0, 0), i)
	end
	KnifeThrowing = false
	Hum.WalkSpeed = WalkSpeed
	for i = 0,1,0.3 do
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.PrimaryPart.CFrame = CurrentStand.PrimaryPart.CFrame:Lerp(Root.CFrame * CFrame.new(-2, 1.3, 3), 0.3)
	end
	Move = false
end

--[[
	for i = 0,1,0.165/2 do
		if Hum.RigType == Enum.HumanoidRigType.R6 then
			RJ.C0 = RJ.C0:Lerp(AnimDefaults.tors0*0, 0.25)
			LAJ.C0 = LAJ.C0:Lerp(AnimDefaults.larm*0, 0.25)
			LLJ.C0 = LLJ.C0:Lerp(AnimDefaults.lleg*0, 0.25)
			RAJ.C0 = RAJ.C0:Lerp(AnimDefaults.rarm*0, 0.25)
			RLJ.C0 = RLJ.C0:Lerp(AnimDefaults.rleg*0, 0.25)
			Neck.C0 = Neck.C0:Lerp(AnimDefaults.head*0, 0.25)
		end
	end
]]

function GetTargets(Position, Range, Ignore)
	local list = workspace:GetChildren()
	local MoveToPart = nil
	local dist = Range
	local Targets = {}
	for x = 1, #list do
		local CurrentObject = list[x]
		if CurrentObject:IsA("Model") and not CurrentObject:IsDescendantOf(Ignore) and CurrentObject ~= Ignore then
			local FoundHumanoid = CurrentObject:FindFirstChildOfClass("Humanoid")
			if FoundHumanoid ~= nil and FoundHumanoid.Health > 0 then
				local Torso = CurrentObject:FindFirstChild("Torso") or CurrentObject:FindFirstChild("UpperTorso")
				if Torso ~= nil and (Torso.Position - Position).magnitude < dist and Torso.Transparency < 0.9 and CurrentObject:FindFirstChild("ReturnStandDamage") == nil and Torso:FindFirstChildOfClass("Motor6D") then
					table.insert(Targets, CurrentObject)
				end
			end
		end
	end
	return Targets
end

function RoadRoller()
	if CurrentStand == nil then
		return
	end
	if (Hum.FloorMaterial == nil or Hum.FloorMaterial == "" or Hum.FloorMaterial == Enum.Material.Air) and Hum.Sit == false then
		return
	end
	if TimeStopped == false then 
		return
	end
	if ClockTime < 2 then
		return
	end
	Move = true
	RoadRollering = true
	AllowClockMovment = false
	Clock.Clock.Count.Text = "FROZEN"
	local MoveChar = true
	local WalkSpeed = Hum.WalkSpeed
	local JumpPower = Hum.JumpPower
	if Character:FindFirstChild("Animate") then
		Character.Animate.Disabled = true
	end
	local NoMove = nil
	local Anim = nil
	if Hum.RigType == Enum.HumanoidRigType.R6 then
		for Index, Animation in next, Hum:GetPlayingAnimationTracks() do 
			Animation:Stop()
		end
		Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://180435571"
		NoMove = Hum:LoadAnimation(Anim)
		NoMove:Play()
		NoMove:AdjustSpeed(0.01)
	else
		MoveChar = false
	end
	wait(0.025)
	Hum.WalkSpeed = 0
	Hum.JumpPower = 0
	local ROADROLLERDA = CreateSound(4658201896, Root, 10, 1, 0, false, false, "Road Roller Audio")
	local Roller = OriginalRoller:Clone()
	for i = 0,1,0.035/2 do
		game:GetService("RunService").RenderStepped:Wait()
		if Hum.RigType == Enum.HumanoidRigType.R6 then
			RJ.C0 = RJ.C0:Lerp(AnimDefaults.tors0*CFrame.new(0, 0, -0.49) * CFrame.Angles(math.rad(41.425), math.rad(-7.907), math.rad(17.074)), 0.25)
			LAJ.C0 = LAJ.C0:Lerp(AnimDefaults.larm*CFrame.Angles(math.rad(-21.944), math.rad(-3.438), math.rad(-5.73)), 0.25)
			LLJ.C0 = LLJ.C0:Lerp(AnimDefaults.lleg*CFrame.new(-0.156, 0.138, -0.028) * CFrame.Angles(math.rad(12.834), math.rad(1.318), math.rad(-39.133)), 0.25)
			RAJ.C0 = RAJ.C0:Lerp(AnimDefaults.rarm*CFrame.new(0.942, 0.144, 0.036) * CFrame.Angles(math.rad(-25.898), math.rad(-11.688), math.rad(47.212)), 0.25)
			RLJ.C0 = RLJ.C0:Lerp(AnimDefaults.rleg*CFrame.Angles(math.rad(-11.001), math.rad(14.553), math.rad(-4.183)), 0.25)
			Neck.C0 = Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(math.rad(22.746), math.rad(10.829), math.rad(-17.131)), 0.25)
		end
	end
	for i = 0,1,0.115/2 do
		game:GetService("RunService").RenderStepped:Wait()
		if Hum.RigType == Enum.HumanoidRigType.R6 then
			RJ.C0 = RJ.C0:Lerp(AnimDefaults.tors0*CFrame.new(0, 0, -0.49+(i*75)) * CFrame.Angles(math.rad(41.425), math.rad(-7.907), math.rad(17.074)), 0.25)
			LAJ.C0 = LAJ.C0:Lerp(AnimDefaults.larm*CFrame.Angles(math.rad(-21.944), math.rad(-3.438), math.rad(-5.73)), 0.25)
			LLJ.C0 = LLJ.C0:Lerp(AnimDefaults.lleg*CFrame.new(-0.156, 0.138, -0.028) * CFrame.Angles(math.rad(12.834), math.rad(1.318), math.rad(-39.133)), 0.25)
			RAJ.C0 = RAJ.C0:Lerp(AnimDefaults.rarm*CFrame.new(0.942, 0.144, 0.036) * CFrame.Angles(math.rad(-25.898), math.rad(-11.688), math.rad(47.212)), 0.25)
			RLJ.C0 = RLJ.C0:Lerp(AnimDefaults.rleg*CFrame.Angles(math.rad(-11.001), math.rad(14.553), math.rad(-4.183)), 0.25)
			Neck.C0 = Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(math.rad(22.746), math.rad(10.829), math.rad(-17.131)), 0.25)
		end
	end
	for i = 0,1,0.04/2 do
		game:GetService("RunService").RenderStepped:Wait()
		if Hum.RigType == Enum.HumanoidRigType.R6 then
			RJ.C0 = RJ.C0:Lerp(AnimDefaults.tors0*CFrame.new(0, 0, 68) * CFrame.Angles(math.rad(41.425), math.rad(-7.907), math.rad(17.074)), 0.25)
			LAJ.C0 = LAJ.C0:Lerp(AnimDefaults.larm*CFrame.Angles(math.rad(-21.944), math.rad(-3.438), math.rad(-5.73)), 0.25)
			LLJ.C0 = LLJ.C0:Lerp(AnimDefaults.lleg*CFrame.new(-0.156, 0.138, -0.028) * CFrame.Angles(math.rad(12.834), math.rad(1.318), math.rad(-39.133)), 0.25)
			RAJ.C0 = RAJ.C0:Lerp(AnimDefaults.rarm*CFrame.new(0.942, 0.144, 0.036) * CFrame.Angles(math.rad(-25.898), math.rad(-11.688), math.rad(47.212)), 0.25)
			RLJ.C0 = RLJ.C0:Lerp(AnimDefaults.rleg*CFrame.Angles(math.rad(-11.001), math.rad(14.553), math.rad(-4.183)), 0.25)
			Neck.C0 = Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(math.rad(22.746), math.rad(10.829), math.rad(-17.131)), 0.25)
		end
	end
	Roller:SetPrimaryPartCFrame(Torso.CFrame * CFrame.new(0, -5, 1.2) * CFrame.Angles(math.rad(90),math.rad(90), math.rad(-50)))
	Root.Anchored = true
	Roller.Parent = Character
	coroutine.resume(coroutine.create(function()
		wait(0.565)
		for i = 1, 3 do
			CreateEffect(Torso, "Roller", Color3.fromRGB(255, 255, 255))
			wait(0.0325)
		end
	end))
	for i = 0,1,0.115/2 do
		game:GetService("RunService").RenderStepped:Wait()
		Roller:SetPrimaryPartCFrame(Torso.CFrame * CFrame.new(0, -5, 1.2)* CFrame.Angles(math.rad(90),math.rad(90), math.rad(-50)))
		if Hum.RigType == Enum.HumanoidRigType.R6 then
			RJ.C0 = RJ.C0:Lerp(AnimDefaults.tors0*CFrame.new(0, 0, 68-(i*15)) * CFrame.Angles(math.rad(41.425), math.rad(-7.907), math.rad(17.074)), 0.25)
			LAJ.C0 = LAJ.C0:Lerp(AnimDefaults.larm*CFrame.Angles(math.rad(-21.944), math.rad(-3.438), math.rad(-5.73)), 0.25)
			LLJ.C0 = LLJ.C0:Lerp(AnimDefaults.lleg*CFrame.new(-0.156, 0.138, -0.028) * CFrame.Angles(math.rad(12.834), math.rad(1.318), math.rad(-39.133)), 0.25)
			RAJ.C0 = RAJ.C0:Lerp(AnimDefaults.rarm*CFrame.new(0.942, 0.144, 0.036) * CFrame.Angles(math.rad(-25.898), math.rad(-11.688), math.rad(47.212)), 0.25)
			RLJ.C0 = RLJ.C0:Lerp(AnimDefaults.rleg*CFrame.Angles(math.rad(-11.001), math.rad(14.553), math.rad(-4.183)), 0.25)
			Neck.C0 = Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(math.rad(22.746), math.rad(10.829), math.rad(-17.131)), 0.25)
		end
	end
	for i = 0,1,0.00733/2 do
		game:GetService("RunService").RenderStepped:Wait()
		Roller:SetPrimaryPartCFrame(Torso.CFrame * CFrame.new(0, -5, 1.2)* CFrame.Angles(math.rad(90),math.rad(90), math.rad(-50)))
		if Hum.RigType == Enum.HumanoidRigType.R6 then
			RJ.C0 = RJ.C0:Lerp(AnimDefaults.tors0*CFrame.new(-0.75, 0, 2.9) * CFrame.Angles(math.rad(43.316), math.rad(6.99), math.rad(2.292)), 0.25)
			LAJ.C0 = LAJ.C0:Lerp(AnimDefaults.larm*CFrame.new(-0.805, -0.038, -0.027) * CFrame.Angles(math.rad(-11.746), math.rad(-5.959), math.rad(-60.103)), 0.25)
			LLJ.C0 = LLJ.C0:Lerp(AnimDefaults.lleg*CFrame.new(-0.156, 0.138, -0.028) * CFrame.Angles(math.rad(12.834), math.rad(1.318), math.rad(-39.133)), 0.25)
			RAJ.C0 = RAJ.C0:Lerp(AnimDefaults.rarm*CFrame.new(0.952, 0.175, -0.212) * CFrame.Angles(math.rad(-3.61), math.rad(4.469), math.rad(54.717)), 0.25)
			RLJ.C0 = RLJ.C0:Lerp(AnimDefaults.rleg*CFrame.Angles(math.rad(-11.001), math.rad(14.553), math.rad(-4.183)), 0.25)
			Neck.C0 = Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(math.rad(-6.761), math.rad(-1.891), math.rad(-2.865)), 0.25)
		end
	end
	repeat
		game:GetService("RunService").RenderStepped:Wait()
		Roller.PrimaryPart.CFrame = Roller.PrimaryPart.CFrame * CFrame.Angles(math.rad(7), 0, 0)
		CreateEffect(LArm, "RollerPunch", Color3.fromRGB(199, 199, 199))
		for i = 0,1,0.72/2 do
			game:GetService("RunService").RenderStepped:Wait()
			if Hum.RigType == Enum.HumanoidRigType.R6 then
				RJ.C0 = RJ.C0:Lerp(AnimDefaults.tors0*CFrame.new(-0.75, 0, 2.9) * CFrame.Angles(math.rad(42.972), math.rad(-1.776), math.rad(10.485)), i)
				LAJ.C0 = LAJ.C0:Lerp(AnimDefaults.larm*CFrame.new(0.363, -0.415, 0.573) * CFrame.Angles(math.rad(-92.189), math.rad(-16.673), math.rad(72.307)), i)
				LLJ.C0 = LLJ.C0:Lerp(AnimDefaults.lleg*CFrame.new(-0.156, 0.138, -0.028) * CFrame.Angles(math.rad(12.834), math.rad(1.318), math.rad(-39.133)), i)
				RAJ.C0 = RAJ.C0:Lerp(AnimDefaults.rarm*CFrame.new(1.724, -0.585, -0.493) * CFrame.Angles(math.rad(-107.945), math.rad(26.528), math.rad(-70.073)), i)
				RLJ.C0 = RLJ.C0:Lerp(AnimDefaults.rleg*CFrame.Angles(math.rad(-11.001), math.rad(14.553), math.rad(-4.183)), i)
				Neck.C0 = Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(math.rad(-6.761), math.rad(-1.891), math.rad(-2.865)), i)
			end
			CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.new(-5.5, -3.2, 2) * CFrame.Angles(math.rad(42.972), math.rad(-1.776), math.rad(10.485)), i)
			CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.new(-0.156, 0.138, -0.028) * CFrame.Angles(math.rad(12.834), math.rad(1.318), math.rad(-39.133)), i)
			CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.Angles(math.rad(-11.001), math.rad(14.553), math.rad(-4.183)), i)
			CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(0.363, -0.415, 0.573) * CFrame.Angles(math.rad(-92.189), math.rad(-16.673), math.rad(72.307)), i)
			CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.new(1.724, -0.585, -0.493) * CFrame.Angles(math.rad(-107.945), math.rad(26.528), math.rad(-70.073)), i)
			CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(math.rad(-6.761), math.rad(-1.891), math.rad(-2.865)), i)
		end
		CreateEffect(RArm, "RollerPunch", Color3.fromRGB(199, 199, 199))
		Roller.PrimaryPart.CFrame = Roller.PrimaryPart.CFrame * CFrame.Angles(math.rad(-7), 0, 0)
		for i = 0,1,0.72/2 do
			game:GetService("RunService").RenderStepped:Wait()
			if Hum.RigType == Enum.HumanoidRigType.R6 then
				RJ.C0 = RJ.C0:Lerp(AnimDefaults.tors0*CFrame.new(-0.75, 0, 2.9) * CFrame.Angles(math.rad(46.524), math.rad(4.87), math.rad(-15.413)), i)
				LAJ.C0 = LAJ.C0:Lerp(AnimDefaults.larm*CFrame.new(-1.877, -0.376, -0.053) * CFrame.Angles(math.rad(-99.007), math.rad(-19.939), math.rad(79.24)), i)
				LLJ.C0 = LLJ.C0:Lerp(AnimDefaults.lleg*CFrame.new(-0.156, 0.138, -0.028) * CFrame.Angles(math.rad(-6.131), math.rad(20.913), math.rad(-36.956)), i)
				RAJ.C0 = RAJ.C0:Lerp(AnimDefaults.rarm*CFrame.new(-0.334, -0.241, 0.368) * CFrame.Angles(math.rad(-91.96), math.rad(16.558), math.rad(-85.084)), i)
				RLJ.C0 = RLJ.C0:Lerp(AnimDefaults.rleg*CFrame.Angles(math.rad(-8.995), math.rad(8.251), math.rad(19.538)), i)
				Neck.C0 = Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(math.rad(-9.454), math.rad(-4.526), math.rad(17.131)), i)
			end
			CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.new(-5.5, -3.2, 2) * CFrame.Angles(math.rad(46.524), math.rad(4.87), math.rad(-15.413)), i)
			CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.new(-0.156, 0.138, -0.028) * CFrame.Angles(math.rad(-6.131), math.rad(20.913), math.rad(-36.956)), i)
			CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.Angles(math.rad(-8.995), math.rad(8.251), math.rad(19.538)), i)
			CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(-1.877, -0.376, -0.053) * CFrame.Angles(math.rad(-99.007), math.rad(-19.939), math.rad(79.24)), i)
			CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.new(-0.334, -0.241, 0.368) * CFrame.Angles(math.rad(-91.96), math.rad(16.558), math.rad(-85.084)), i)
			CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(math.rad(-9.454), math.rad(-4.526), math.rad(17.131)), i)
		end
	until ROADROLLERDA.TimePosition > 14
	for i = 0,1,0.01/2 do
		game:GetService("RunService").RenderStepped:Wait()
		if Hum.RigType == Enum.HumanoidRigType.R6 then
			RJ.C0 = RJ.C0:Lerp(AnimDefaults.tors0*CFrame.new(-0.75, 0, 2.9) * CFrame.Angles(math.rad(39.248), math.rad(7.448), math.rad(-6.36)), i)
			LAJ.C0 = LAJ.C0:Lerp(AnimDefaults.larm*CFrame.new(-1.541, -0.802, 0.458) * CFrame.Angles(math.rad(-115.508), math.rad(-23.205), math.rad(79.698)), i)
			LLJ.C0 = LLJ.C0:Lerp(AnimDefaults.lleg*CFrame.new(-0.152, 0.526, -0.079) * CFrame.Angles(math.rad(-28.476), math.rad(-20.34), math.rad(-26.643)), i)
			RAJ.C0 = RAJ.C0:Lerp(AnimDefaults.rarm*CFrame.new(-1.39, 0.742, -0.248) * CFrame.Angles(math.rad(3.438), math.rad(-15.126), math.rad(69.442)), i)
			RLJ.C0 = RLJ.C0:Lerp(AnimDefaults.rleg*CFrame.new(0.513, -0.27, -0.092) * CFrame.Angles(math.rad(0.802), math.rad(6.99), math.rad(-29.507)), i)
			Neck.C0 = Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(math.rad(9.053), math.rad(5.157), math.rad(3.552)), i)
		end
		CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.new(-5.5, -3.2, 2) * CFrame.Angles(math.rad(39.248), math.rad(7.448), math.rad(-6.36)), i)
		CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.new(-0.152, 0.526, -0.079) * CFrame.Angles(math.rad(-28.476), math.rad(-20.34), math.rad(-26.643)), i)
		CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.new(0.513, -0.27, -0.092) * CFrame.Angles(math.rad(0.802), math.rad(6.99), math.rad(-29.507)), i)
		CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(-1.541, -0.802, 0.458) * CFrame.Angles(math.rad(-115.508), math.rad(-23.205), math.rad(79.698)), i)
		CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.new(-1.39, 0.742, -0.248) * CFrame.Angles(math.rad(3.438), math.rad(-15.126), math.rad(69.442)), i)
		CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(math.rad(9.053), math.rad(5.157), math.rad(3.552)), i)
	end
	if TimeStopped == true then
		InstantResume()
	end
	coroutine.resume(coroutine.create(function()
		coroutine.resume(coroutine.create(function()
			for i = 1, 3 do
				CreateEffect(Torso, "Roller", Color3.fromRGB(255, 255, 255))
				CreateEffect(Torso, "RollerPunch", Color3.fromRGB(255, 255, 255))
				wait(0.035)
			end
		end))
		for i = 0,1,0.055/2 do
			game:GetService("RunService").RenderStepped:Wait()
			if Hum.RigType == Enum.HumanoidRigType.R6 then
				RJ.C0 = RJ.C0:Lerp(AnimDefaults.tors0*CFrame.new(-0.75, 0, 2.9) * CFrame.Angles(math.rad(44.003), math.rad(-25.439), math.rad(22.173)), 0.25)
				LAJ.C0 = LAJ.C0:Lerp(AnimDefaults.larm*CFrame.new(0.054, -0.095, 0.158) * CFrame.Angles(math.rad(-35.122), math.rad(-3.896), math.rad(57.296)), 0.25)
				LLJ.C0 = LLJ.C0:Lerp(AnimDefaults.lleg*CFrame.new(-0.156, 0.138, -0.028) * CFrame.Angles(math.rad(0.344), math.rad(-26.528), math.rad(27.445)), 0.25)
				RAJ.C0 = RAJ.C0:Lerp(AnimDefaults.rarm*CFrame.new(0.912, 0.26, -0.294) * CFrame.Angles(math.rad(3.438), math.rad(-15.126), math.rad(69.442)), 0.25)
				RLJ.C0 = RLJ.C0:Lerp(AnimDefaults.rleg*CFrame.Angles(math.rad(0.688), math.rad(6.36), math.rad(-24.523)), 0.25)
				Neck.C0 = Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(math.rad(18.449), math.rad(28.877), math.rad(-27.846)), 0.25)
			end
			CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.new(-5.5, -3.2, 2) * CFrame.Angles(math.rad(44.003), math.rad(-25.439), math.rad(22.173)), 0.25)
			CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.new(-0.156, 0.138, -0.028) * CFrame.Angles(math.rad(0.344), math.rad(-26.528), math.rad(27.445)), 0.25)
			CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.Angles(math.rad(0.688), math.rad(6.36), math.rad(-24.523)), 0.25)
			CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(0.054, -0.095, 0.158) * CFrame.Angles(math.rad(-35.122), math.rad(-3.896), math.rad(57.296)), 0.25)
			CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.new(0.912, 0.26, -0.294) * CFrame.Angles(math.rad(3.438), math.rad(-15.126), math.rad(69.442)), 0.25)
			CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(math.rad(18.449), math.rad(28.877), math.rad(-27.846)), 0.25)
		end
		if Hum.RigType == Enum.HumanoidRigType.R6 then
			NoMove:Stop()
			Anim:Destroy()
		end
		if Character:FindFirstChild("Animate") then
			if Hum.RigType == Enum.HumanoidRigType.R6 then
				RJ.C0 = AnimDefaults.tors0
				LAJ.C0 = AnimDefaults.larm
				LLJ.C0 = AnimDefaults.lleg
				RAJ.C0 = AnimDefaults.rarm
				RLJ.C0 = AnimDefaults.rleg
				Neck.C0 = AnimDefaults.head
			end
			Character.Animate.Disabled = false
		end
	end))
	ROADROLLERDA.Volume = 10
	game:GetService("Debris"):AddItem(ROADROLLERDA, 2.85)
	RoadRollering = false
	coroutine.resume(coroutine.create(function()
		wait(0.585)
		Root.Anchored = false
	end))
	Hum.WalkSpeed = WalkSpeed
	Hum.JumpPower = JumpPower
	coroutine.resume(coroutine.create(function()
		Roller:BreakJoints()
		local Boom = Instance.new("Explosion")
		Boom.BlastPressure = 9e999
		Boom.BlastRadius = 0
		Boom.Position = Roller.PrimaryPart.Position
		Boom.Parent = Roller.PrimaryPart
		Roller.PrimaryPart.Transparency = 1
		game:GetService("Debris"):AddItem(Roller, 2)
		for Index, Child in next, Roller:GetChildren() do
			if Child:IsA("BasePart") then
				local Velo = Instance.new("BodyVelocity")
				Velo.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
				Velo.P = 2500
				Velo.Velocity = Child.CFrame * CFrame.new(math.random(-3,3)*34,math.random(-3,3)*34,math.random(-3,3)*34).p
				Velo.Parent = Child
				game:GetService("Debris"):AddItem(Velo, 0.075)
			end
		end
		for Index, Humanoid in next, GetTargets(Torso.Position, 40, Character) do
			CreateSound(4764210465, Humanoid.Head, 2.5, 1, 0, false, false, "Time Stop Heavy Hit")
			HitEffect(Humanoid.Head, Humanoid, Root.CFrame, "Roller")
			Humanoid:BreakJoints()
		end
	end))
	Move = false
end

function DodgeAnimation()
	if Character:FindFirstChild("GotHitButNot") then
		Character.GotHitButNot:Destroy()
	end
	local RandomDirection = math.random(1,2)
	if Hum.RigType ~= Enum.HumanoidRigType.R15 then
		if RandomDirection == 1 then
			for i = 0,1,0.15 do
				game:GetService("RunService").RenderStepped:Wait()
				RJ.C0 = RJ.C0:Lerp(AnimDefaults.tors*CFrame.new(-2.628, 1.074, 0) * CFrame.Angles(0, 0, math.rad(48)), 0.25)
			end
			for i = 0,1,0.25 do
				game:GetService("RunService").RenderStepped:Wait()
				RJ.C0 = RJ.C0:Lerp(AnimDefaults.tors, 0.33)
			end
		else
			for i = 0,1,0.15 do
				game:GetService("RunService").RenderStepped:Wait()
				RJ.C0 = RJ.C0:Lerp(AnimDefaults.tors*CFrame.new(3.574, 1.32, 0) * CFrame.Angles(0, 0, math.rad(-48)), 0.25)
			end
			for i = 0,1,0.25 do
				game:GetService("RunService").RenderStepped:Wait()
				RJ.C0 = RJ.C0:Lerp(AnimDefaults.tors, 0.33)
			end
		end
	end
end

function AttackTemplate()
	if CurrentStand == nil then
		return
	end
	Move = true
	for i = 0,1,0.165*AttackSpeed/0.75 do
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*0, i)
		CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*0, i)
		CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*0, i)
		CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*0, i)
		CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*0, i)
		CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*0, i)
	end
	Move = false
end

Mouse.Button1Down:Connect(function()
	if workspace:FindFirstChild("IsTimeStopped") then
		if workspace.IsTimeStopped.Value ~= Player.Name and Root.Anchored == true and Head.Anchored == true then
			return
		end
	end
	if Move == false then
		Punch()
	end
end)

Mouse.KeyDown:Connect(function(Key)
	if workspace:FindFirstChild("IsTimeStopped") then
		if workspace.IsTimeStopped.Value ~= Player.Name and Root.Anchored == true and Head.Anchored == true then
			return
		end
	end
	if Key == "q" and Move == false then
		Stand()
	end
	if Key == "e" and Move == false then
		BarrageDown = true
		Barrage(42, false, 616593932, true)
	end
	if Key == "t" and Move == false then
		if workspace:FindFirstChild("IsTimeAccelerating") then
			if workspace.IsTimeAccelerating.Value ~= Player.Name then
				return
			end
		end
		if workspace:FindFirstChild("IsTimeStopped") then
			if workspace.IsTimeStopped.Value ~= Player.Name then
				return
			end
		end
		if TimeStopped == true then
			TimeResume()
		else
			TimeStop()
		end
	end
	if Key == "g" then
		if Head:FindFirstChild("Muda-Muda") then
			return
		end
		CreateSound(2553978464, Head, 7.5, 1, 0, false, false, "Muda-Muda")
		CreateTextGui(Head, "Useless Useless!", 2.75, Color3.fromRGB(255, 255, 255), Color3.fromRGB(123, 123, 123), Enum.Font.Bodoni)
	end
	if Key == "f" and Move == false then
		KnifeThrow()
	end
	if Key == "r" and Move == false then
		StrongPunch()
	end
	if Key == "z" and Move == false then
		StandJump()
	end
	if Key == "c" and TimeStopped == true then
		InstantResume()
	end
	if Key == "v" and Move == false then
		RoadRoller()
	end
end)

Mouse.KeyUp:Connect(function(Key)
	if Key == "e" then
		BarrageDown = false
	end
end)

function DeSpawn()
	if workspace:FindFirstChild("IsTimeStopped") then
		if workspace.IsTimeStopped.Value == Player.Name then
			workspace.IsTimeStopped:Destroy()
		end
	end
	coroutine.resume(coroutine.create(function()
		while Folder0.Parent ~= nil do
			game:GetService("RunService").RenderStepped:Wait()
			Move = true
			BarrageDown = false
		end
	end))
	if MoveList ~= nil then
		MoveList:Destroy()
	end
	if Clock ~= nil then
		Clock:Destroy()
	end
	if TimeStopped == true then
		InstantResume()
	end
	if CurrentStand ~= nil then
		pcall(Stand)
	end
	wait(0.1)
	Folder0:Destroy()
end

Hum.Died:Connect(function()
	DeSpawn()
end)

Character.Changed:Connect(function(Parent)
	if not Character:IsDescendantOf(workspace) then
		DeSpawn()
	end
end)

Character.ChildAdded:Connect(function(Child)
	if Child:IsA("StringValue") and Child.Name == "ForceResumeTimeStop" and TimeStopped == true then
		TimeResume()
	elseif Child:IsA("StringValue") and Child.Name == "MIHInstantResume" and TimeStopped == true then
		InstantResume()
	end
end)

Player.CharacterAdded:Connect(function()
	DeSpawn()
end)

workspace.ChildAdded:Connect(function(AddedChild)
	if AddedChild:IsA("StringValue") and AddedChild.Name == "IsTimeStopped" and AddedChild.Value ~= Player.Name then
		ClockTime = TimeStopImmunity
		Clock.Clock.MainArrow.Rotation = 0.015
		Clock.Clock.Count.Text = tostring(ClockTime)
		Clock.Enabled = true
		AllowClockMovment = true
		coroutine.resume(coroutine.create(function()
			repeat
				game:GetService("RunService").RenderStepped:Wait()
			until ClockTime < 0 or ClockTime == 0 or AddedChild == nil or AddedChild.Parent ~= workspace or AddedChild.Value == Player.Name
			Clock.Enabled = false
			AllowClockMovment = false
			Character.IsTSImmune.Value = false
			if CurrentStand ~= nil then
				CurrentStand.IsTSImmune.Value = false
			end
		end))
		AddedChild:GetPropertyChangedSignal("Parent"):Connect(function()
			if AddedChild == nil or AddedChild.Parent ~= workspace or AddedChild.Value == Player.Name then
				Clock.Enabled = false
				AllowClockMovment = false
				Character.IsTSImmune.Value = true
				if CurrentStand ~= nil then
					CurrentStand.IsTSImmune.Value = true
				end
			end
		end)
	end
end)

game:GetService("RunService").RenderStepped:Connect(function()
	Sine = Sine + 1
	Hum.PlatformStand = false
	if Hum.Health ~= Hum.MaxHealth then
		Hum.Health = Hum.Health + 0.1
	end
	if Clock and AllowClockMovment == true then
		Clock.Clock.MainArrow.Rotation = Clock.Clock.MainArrow.Rotation + 5
		Clock.Clock.SecondaryArrow.Rotation = Clock.Clock.SecondaryArrow.Rotation + 0.85
		if Clock.Clock.MainArrow.Rotation > 359 then
			CreateClientSound(850256806, Character, 3.5, 1.49, 1, 1.7)
			Clock.Clock.MainArrow.Rotation = 0
			ClockTime = ClockTime - 1
			Clock.Clock.Count.Text = tostring(ClockTime)
			ClockFade()
		end
		if Clock.Clock.SecondaryArrow.Rotation > 359 then
			Clock.Clock.SecondaryArrow.Rotation = 0
		end
	end
	if Move == true and CurrentStand ~= nil then
		if (BarrageDown == true or StrongMUDA == true or NormalPunch == true or KnifeThrowing == true) and PunchAfterBarrage == false then
			CurrentStand.PrimaryPart.CFrame = CurrentStand.PrimaryPart.CFrame:Lerp(Root.CFrame * CFrame.new(0, 0.5, -3.75), 0.23)
		end
	end
	if Move == false then
		if Anim == "Idle" then
			if CurrentStand ~= nil then
				CurrentStand.PrimaryPart.CFrame = CurrentStand.PrimaryPart.CFrame:Lerp(Root.CFrame * CFrame.new(-2.2, 1.3, 2.25), 0.2)
				CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.new(0, 0, 0.8*math.sin(Sine/75))*CFrame.Angles(0, 0, math.rad(-41.998)), 0.23)
				CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.new(0.033, 0.27, -0.068) * CFrame.Angles(math.rad(0.172), math.rad(32.028), math.rad(5.329)), 0.23)
				CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.new(-0.212, -0.01, 0.007) * CFrame.Angles(math.rad(-4.526), math.rad(-12.089), math.rad(1.432)), 0.23)
				CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(-0.061, 0, 0.081) * CFrame.Angles(math.rad(-17.418), math.rad(-12.949), math.rad(-14.381)), 0.23)
				CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.Angles(math.rad(-16.845), math.rad(21.601), math.rad(2.979)), 0.23)
				CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(0, 0, math.rad(35.008)), 1)
			end
		end
	end
	if Character:FindFirstChild("GotHitButNot") then
		Character.GotHitButNot:Destroy()
		DodgeAnimation()
	end
	if Character:FindFirstChild("IsTSImmune") == nil then
		local ImmunityCharacter = Instance.new("BoolValue")
		ImmunityCharacter.Name = "IsTSImmune"
		ImmunityCharacter.Value = true
		ImmunityCharacter.Parent = Character
	end
	if CurrentStand ~= nil then
		if CurrentStand:FindFirstChild("IsTSImmune") == nil then
			local ImmunityStand = Instance.new("BoolValue")
			ImmunityStand.Name = "IsTSImmune"
			ImmunityStand.Value = true
			ImmunityStand.Parent = CurrentStand
		end
	end
	if Character:FindFirstChild("StandValue") == nil then
		local StandValue = Instance.new("StringValue")
		StandValue.Name = "StandValue"
		StandValue.Value = StandName
		StandValue.Parent = Character
	end
end)
