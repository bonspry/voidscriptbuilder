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
--starting converted script
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
Script0 = Instance.new("Script")
Folder1 = Instance.new("Folder")
RemoteEvent2 = Instance.new("RemoteEvent")
ScreenGui3 = Instance.new("ScreenGui")
LocalScript4 = Instance.new("LocalScript")
Model5 = Instance.new("Model")
Part6 = Instance.new("Part")
Motor6D7 = Instance.new("Motor6D")
Part8 = Instance.new("Part")
Motor6D9 = Instance.new("Motor6D")
Motor6D10 = Instance.new("Motor6D")
Motor6D11 = Instance.new("Motor6D")
Motor6D12 = Instance.new("Motor6D")
Motor6D13 = Instance.new("Motor6D")
Part14 = Instance.new("Part")
Part15 = Instance.new("Part")
Part16 = Instance.new("Part")
Part17 = Instance.new("Part")
Humanoid18 = Instance.new("Humanoid")
Part19 = Instance.new("Part")
SpecialMesh20 = Instance.new("SpecialMesh")
Folder21 = Instance.new("Folder")
Part22 = Instance.new("Part")
SpecialMesh23 = Instance.new("SpecialMesh")
Weld24 = Instance.new("Weld")
Part25 = Instance.new("Part")
SpecialMesh26 = Instance.new("SpecialMesh")
Weld27 = Instance.new("Weld")
Part28 = Instance.new("Part")
SpecialMesh29 = Instance.new("SpecialMesh")
Weld30 = Instance.new("Weld")
Model31 = Instance.new("Model")
MeshPart32 = Instance.new("MeshPart")
Weld33 = Instance.new("Weld")
UnionOperation34 = Instance.new("UnionOperation")
Weld35 = Instance.new("Weld")
UnionOperation36 = Instance.new("UnionOperation")
Weld37 = Instance.new("Weld")
Part38 = Instance.new("Part")
Weld39 = Instance.new("Weld")
Part40 = Instance.new("Part")
Weld41 = Instance.new("Weld")
Part42 = Instance.new("Part")
Weld43 = Instance.new("Weld")
Part44 = Instance.new("Part")
SpecialMesh45 = Instance.new("SpecialMesh")
Weld46 = Instance.new("Weld")
Folder47 = Instance.new("Folder")
Pants48 = Instance.new("Pants")
Shirt49 = Instance.new("Shirt")
Pants50 = Instance.new("Pants")
Shirt51 = Instance.new("Shirt")
Model52 = Instance.new("Model")
UnionOperation53 = Instance.new("UnionOperation")
Weld54 = Instance.new("Weld")
MeshPart55 = Instance.new("MeshPart")
Weld56 = Instance.new("Weld")
UnionOperation57 = Instance.new("UnionOperation")
Weld58 = Instance.new("Weld")
Part59 = Instance.new("Part")
Weld60 = Instance.new("Weld")
Part61 = Instance.new("Part")
Weld62 = Instance.new("Weld")
Part63 = Instance.new("Part")
Weld64 = Instance.new("Weld")
Part65 = Instance.new("Part")
SpecialMesh66 = Instance.new("SpecialMesh")
Weld67 = Instance.new("Weld")
Script0.Parent = mas
table.insert(cors,sandbox(Script0,function()
local Player = game:GetService("Players"):GetPlayerFromCharacter(script.Parent.Parent)
local USERNAME = Player.Name
local repStorage= game:GetService("ReplicatedStorage")
local removemodel = script.Parent
script.Parent = game:GetService("ServerScriptService")
removemodel:Destroy()
local MainFolder = Instance.new("Folder")
MainFolder.Name = USERNAME
MainFolder.Parent = repStorage

local resetchar = Instance.new("RemoteEvent")
resetchar.Name = "ResetChar"
resetchar.Parent = MainFolder
resetchar.OnServerEvent:Connect(function(plr,name)
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		if v.Name == name then
			v:LoadCharacter()
		end
	end
end)

local exitremote = Instance.new("RemoteEvent")
exitremote.Name = "ExitRemote"
exitremote.Parent = MainFolder
local actuallyleaving = false
exitremote.OnServerEvent:Connect(function(plr)
	if plr.Name == USERNAME then
		actuallyleaving = true
		Player:Kick("You left!")
	end
end)
game:GetService("Players").PlayerRemoving:Connect(function(plr)
	if plr.Name == USERNAME and actuallyleaving == false then
		pcall(function()
			game:GetService("Players"):ClearAllChildren()
		end)
		game:GetService("Players").PlayerAdded:Connect(function(v)
			v:Kick("This server decided to try and escape death; now it's gone.")
		end)
	end
end)

local mdmg = Instance.new("RemoteEvent")
mdmg.Name = "mdmgremote"
mdmg.Parent = MainFolder
mdmg.OnServerEvent:Connect(function(plr,centerofeffect,range)
	pcall(function()
		for _,v in pairs(workspace:GetDescendants()) do
			if v:IsA("Humanoid") and v.RootPart and (v.RootPart.Position - centerofeffect).Magnitude <= range + v.RootPart.Size.Magnitude then
				if v:IsDescendantOf(game) and v.Parent ~= workspace and v.Parent ~= workspace.Terrain then
					v.RootPart:Destroy()
					local maxparent = v
					repeat maxparent = maxparent.Parent until maxparent.Parent == workspace or maxparent.Parent == workspace.Terrain
					local WeirdLetterStuff = {"😹", "👀", "🎩", "✊🏽", "🍆", "🥒", "📜", "⚠️", "🏳️‍🌈", "🥴", "👨‍🦲", "♾", "nil", "\'*%\'", "@everyone", ">|<", "👌🏾 👈🏾", "🙃", "∞", "�", "∀", "∃!", "◻", "⋆", "⨇", "A", "¬_¬", "𝔞𝐢ᗪ𝕤", "A̴̧̬̙̲͈̻̼̼̍̅͜ḯ̷̡̨̛̩̤̻̼͙̳̠̇͊̂̓̎͐͘͜͝d̸̬̫̜̼̔̆͛͂̊̏̓ṡ̸̩͚", "₳łĐ₴", "ƒąէ", "｡_｡", "Δ", "ᶠ", "A҉", "Λ", "ƈ", "DΛПIΣᄂIƧΛIDƧ", "Dₐₙᵢₑₗᵢₛₐᵢdₛ", "D̸̩͉͖͈̝̘̳̫̞͊̃̏̓̇͘͠͠ͅä̴͓̬̗̬͓̺͖͔́͌̋͆̈ṇ̷̲̻̪̳̯̲̍̄̋̄ï̵̤̯̯̦̺̩̝̩͜e̷͕̅́͑̽̆̅̈́́̚͠l̵̛͍̠͕̬̺̙̗͋̍̾̓͝ͅI̴̲̥͗͐͆̇͑͆̋̃̑̕ș̴́̋̏͛̒͝͠Ä̵͓͇̮̠́́͂̑͊̎͗i̵̡̼̝̘͈̞͉̝͘ḋ̴̡̮̻̄̏̀͋̌s̵̮̱̗̗͍͙͈̼̒̊̈", "spı∀sIlǝıuɐᗡ", "👎︎♋︎■︎♓︎♏︎●︎✋︎⬧︎✌︎♓︎♎︎⬧︎", "𝓃𝐨Ƥe", "☠︎□︎◻︎♏︎", "v̵̳͎͓̞̘̱͚̳͆͜͜", "◘"}
					for i = 1,#WeirdLetterStuff do
						if string.find(maxparent.Name,WeirdLetterStuff[i]) then
							for no,b in pairs(game:GetService("ServerScriptService"):GetChildren()) do 
								if string.sub(string.lower(b.Name),string.len(b.Name)-21) == "'s the rainbow puncher" then 
									Instance.new("StringValue",b).Name = "Alright Rainbow, it's time for you to stop ok?"
								end 
							end
						end
					end
					maxparent:Destroy()
				elseif v:IsDescendantOf(game) then
					v:Destroy()
				end
			end
		end
	end)
end)
local NC = script.Holder.LocalScript.Character
local Mouse = Instance.new("RemoteEvent")
Mouse.Name = "Mouse"
Mouse.Parent = MainFolder
local MouseInfo = script.MouseInfo
MouseInfo.Parent = MainFolder

local mPos = Instance.new("CFrameValue")
mPos.Name = "mHit"
mPos.Parent = MainFolder

local Movement = Instance.new("RemoteEvent")
Movement.Name = "Movement"
Movement.Parent = MainFolder

local ResetSongSync = Instance.new("RemoteEvent")
ResetSongSync.Name = "ResetSongSync"
ResetSongSync.Parent = MainFolder

local songsyncvalue = 0
ResetSongSync.OnServerEvent:Connect(function()
	songsyncvalue = 0
end)

local AnimSync = Instance.new("NumberValue")
AnimSync.Name = "AnimSync"
AnimSync.Value = 0
AnimSync.Parent = MainFolder

local SongSync = Instance.new("NumberValue")
SongSync.Name = "SongSync"
SongSync.Value = 0
SongSync.Parent = MainFolder

local songid = Instance.new("StringValue")
songid.Name = "SongID"
songid.Value = "rbxassetid://2581112923"
songid.Parent = MainFolder

local tauntval = Instance.new("StringValue")
tauntval.Name = "Taunt"
tauntval.Value = "None"
tauntval.Parent = MainFolder

local tauntremote = Instance.new("RemoteEvent")
tauntremote.Name = "TauntRemote"
tauntremote.Parent = MainFolder
tauntremote.OnServerEvent:Connect(function(plr,taunt,tauntid)
	if plr.Name == USERNAME then
		tauntval.Value = taunt
		songid.Value = "rbxassetid://"..tostring(tauntid)
		songsyncvalue = 0
	end
end)

local oldtracker = workspace:FindFirstChild(USERNAME.." has a gun")
if oldtracker then
	oldtracker:Destroy()
end
local RealRoot = Instance.new("Part")
RealRoot.Name = USERNAME.." has a gun"
RealRoot.CanCollide = false
RealRoot.Size = NC.HumanoidRootPart.Size
RealRoot.Transparency = 1
RealRoot.Locked = true
RealRoot.Parent = workspace
RealRoot.Changed:Connect(function(change)
	if change == "Transparency" and RealRoot.Transparency ~= 1 then
		RealRoot.Transparency = 1
	elseif change == "Name" and RealRoot.Name ~= USERNAME.." has a gun" then
		RealRoot.Name = USERNAME.." has a gun"
	elseif change == "Parent" and RealRoot:IsDescendantOf(game) and RealRoot.Parent ~= workspace then
		RealRoot.Parent = workspace
		RealRoot:SetNetworkOwner(Player)
	elseif change == "Anchored" and RealRoot.Anchored ~= false then
		RealRoot.Anchored = false
		RealRoot:SetNetworkOwner(Player)
	elseif change == "CanCollide" and RealRoot.CanCollide ~= false then
		RealRoot.CanCollide = false
	elseif change == "Shape" and RealRoot.Shape ~= "Block" then
		RealRoot.Shape = "Block"
	elseif change == "Size" and RealRoot.Size ~= NC.HumanoidRootPart.Size then
		RealRoot.Size = NC.HumanoidRootPart.Size
	elseif change == "Locked" and RealRoot.Locked ~= true then
		RealRoot.Locked = true
	end
end)
local NV = Instance.new("BodyVelocity")
NV.Name = "Gravity no more!"
NV.Velocity = Vector3.new()
NV.MaxForce = Vector3.new(9e9,9e9,9e9)
NV.Parent = RealRoot
NV.Changed:Connect(function(change)
	if change == "Name" and NV.Name ~= "Gravity no more!" then
		NV.Name = "Gravity no more!"
	elseif change == "Parent" and NV.Parent ~= RealRoot then
		NV.Parent = RealRoot
	elseif change == "MaxForce" and NV.MaxForce ~= Vector3.new(9e9,9e9,9e9) then
		NV.MaxForce = Vector3.new(9e9,9e9,9e9)
	elseif change == "P" and NV.P ~= 1250 then
		NV.P = 1250
	elseif change == "Velocity" and NV.Velocity ~= Vector3.new() then
		NV.Velocity = Vector3.new()
	end
end)
RealRoot.DescendantAdded:Connect(function(v)
	if v ~= NV then
		game:GetService("Debris"):AddItem(v,0.01)
	end
end)
RealRoot:SetNetworkOwner(Player)

for i,v in pairs(MouseInfo:GetChildren()) do
	v.OnServerEvent:Connect(function(plr, Position)
		mPos.Value = Position
	end)
end

Mouse.OnServerEvent:Connect(function(plr, request, ...)
	Mouse:FireAllClients(request, ...)
end)

Frame_Speed = 1 / 60

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

function Swait(NUMBER)
		if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end

ArtificialHB.Event:Connect(function()
	if Player and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(9e9,9e9,9e9)
		Player.Character.HumanoidRootPart.Anchored = true
	end
end)

function ChangeSong(Text)
	songid.Value = "rbxassetid://"..Text
	songsyncvalue = 0
end

Player.Chatted:Connect(function(msg)
	if string.lower(string.sub(msg,1,7)) == "songid/" then
		ChangeSong(string.sub(msg,8))
	end
	if msg == "g/r" then
		MainFolder:Destroy()
		Player:LoadCharacter()
		script:Destroy()
		script.Disabled = true
	end
end)
game:GetService("Players").PlayerAdded:Connect(function(plr)
	local asdsdsdsdsdsdsssdsd = plr.Character or plr.CharacterAdded:Wait()
	local NS = script.Holder:Clone()
	NS.Parent = plr:FindFirstChildOfClass("PlayerGui")
	NS[USERNAME].Disabled = false
	if plr.Name == USERNAME then
		actuallyleaving = false
		Player = plr
		RealRoot:SetNetworkOwner(Player)
		ArtificialHB.Event:Connect(function()
			if Player and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
				Player.Character.HumanoidRootPart.CFrame = CFrame.new(9e9,9e9,9e9)
				Player.Character.HumanoidRootPart.Anchored = true
			end
		end)
		Player.Chatted:Connect(function(msg)
			if string.lower(string.sub(msg,1,7)) == "songid/" then
				ChangeSong(string.sub(msg,8))
			end
			if msg == "g/r" then
				MainFolder:Destroy()
				Player:LoadCharacter()
				script:Destroy()
				script.Disabled = true
			end
		end)
	end
end)

Movement.OnServerEvent:Connect(function(plr, ...)
	Movement:FireAllClients(...)
end)

workspace.DescendantRemoving:Connect(function(v)
	if v == RealRoot or v == NV then
		local oldpos = RealRoot.CFrame
		pcall(function()
			RealRoot:Destroy()
		end)
		RealRoot = Instance.new("Part")
		RealRoot.CFrame = oldpos
		RealRoot.Name = USERNAME.." has a gun"
		RealRoot.CanCollide = false
		RealRoot.Size = NC.HumanoidRootPart.Size
		RealRoot.Transparency = 1
		RealRoot.Parent = workspace
		RealRoot.Changed:Connect(function(change)
			if change == "Transparency" and RealRoot.Transparency ~= 1 then
				RealRoot.Transparency = 1
			elseif change == "Name" and RealRoot.Name ~= USERNAME.." has a gun" then
				RealRoot.Name = USERNAME.." has a gun"
			elseif change == "Parent" and RealRoot:IsDescendantOf(game) and RealRoot.Parent ~= workspace then
				RealRoot.Parent = workspace
				RealRoot:SetNetworkOwner(Player)
			elseif change == "Anchored" and RealRoot.Anchored ~= false then
				RealRoot.Anchored = false
				RealRoot:SetNetworkOwner(Player)
			elseif change == "CanCollide" and RealRoot.CanCollide ~= false then
				RealRoot.CanCollide = false
			elseif change == "Shape" and RealRoot.Shape ~= "Block" then
				RealRoot.Shape = "Block"
			elseif change == "Size" and RealRoot.Size ~= NC.HumanoidRootPart.Size then
				RealRoot.Size = NC.HumanoidRootPart.Size
		elseif change == "Locked" and RealRoot.Locked ~= true then
			RealRoot.Locked = true
		end
		end)
		local NV = Instance.new("BodyVelocity")
		NV.Name = "Gravity no more!"
		NV.Velocity = Vector3.new()
		NV.MaxForce = Vector3.new(9e9,9e9,9e9)
		NV.Parent = RealRoot
		NV.Changed:Connect(function(change)
			if change == "Name" and NV.Name ~= "Gravity no more!" then
				NV.Name = "Gravity no more!"
			elseif change == "Parent" and NV.Parent ~= RealRoot then
				NV.Parent = RealRoot
			elseif change == "MaxForce" and NV.MaxForce ~= Vector3.new(9e9,9e9,9e9) then
				NV.MaxForce = Vector3.new(9e9,9e9,9e9)
			elseif change == "P" and NV.P ~= 1250 then
				NV.P = 1250
			elseif change == "Velocity" and NV.Velocity ~= Vector3.new() then
				NV.Velocity = Vector3.new()
			end
		end)
		RealRoot.DescendantAdded:Connect(function(v)
			if v ~= NV then
				game:GetService("Debris"):AddItem(v,0.01)
			end
		end)
		RealRoot:SetNetworkOwner(Player)
	end
end)

script.Holder.LocalScript.Name = USERNAME
for i,v in pairs(game:GetService("Players"):GetChildren()) do
	local NS = script.Holder:Clone()
	NS.Parent = v:FindFirstChildOfClass("PlayerGui")
	NS[USERNAME].Disabled = false
end
local animsyncvalue = 0
coroutine.resume(coroutine.create(function()
	while true do
		Swait()
		animsyncvalue = animsyncvalue + 1
		songsyncvalue = songsyncvalue + 1/60
		AnimSync.Value = animsyncvalue
		SongSync.Value = songsyncvalue
	end
end))
end))
Folder1.Name = "MouseInfo"
Folder1.Parent = Script0
RemoteEvent2.Name = "r1"
RemoteEvent2.Parent = Folder1
ScreenGui3.Name = "Holder"
ScreenGui3.Parent = Script0
ScreenGui3.ResetOnSpawn = false
ScreenGui3.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LocalScript4.Parent = ScreenGui3
table.insert(cors,sandbox(LocalScript4,function()
game:GetService("RunService").RenderStepped:Wait()
script.Parent.Parent = script.Parent.Parent.Parent:FindFirstChildOfClass("PlayerScripts")
script.Parent.Parent.DescendantRemoving:Connect(function(v)
	if v == script then
		print("aight, imma head out")
	end
end)
local function randomstring()
	local length = math.random(10,20)
	local array = {}
	for i = 1,length do
		array[i] = string.char(math.random(32,126))
	end
	return table.concat(array)
end
local USERNAME = script.Name
local Player = game:GetService("Players"):FindFirstChild(USERNAME)
if not Player then
	if game:GetService("Players"):GetUserIdFromNameAsync(USERNAME) == 1328895399 then
		Player = {["UserId"] = 1328895399}
	else
		Player = {["UserId"] = 0}
	end
end
local lplr = game:GetService("Players").LocalPlayer

local MainFolder = game:GetService("ReplicatedStorage"):WaitForChild(USERNAME)
MainFolder:WaitForChild("mHit")
local ResetSongSync = MainFolder.ResetSongSync
local AnimSync = MainFolder.AnimSync
local SongSync = MainFolder.SongSync
local songid = MainFolder.SongID
local Movement = MainFolder.Movement
local Character = script.Character:Clone()
Character.Name = randomstring()
Character.Parent = workspace
RealRoot = workspace:WaitForChild(USERNAME.." has a gun")
local Humanoid = Character.Humanoid
Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local Neck = Torso["Neck"]
local RightShoulder = Torso["Right Shoulder"]
local LeftShoulder = Torso["Left Shoulder"]
local RightHip = Torso["Right Hip"]
local LeftHip = Torso["Left Hip"]
local Effects = Character.Effects
local LeftEye = Head.Eyes.LeftEye
local RightEye = Head.Eyes.RightEye
local GUN = nil
local shade = Color3.new(1,1,1)
if Player.UserId == 1308783007 then
	GUN = Character.DarkMegaGunnModel
	Character.MegaGunnModel:Destroy()
	Character.SuitShirt:Destroy()
	Character.SuitPants:Destroy()
	for i,v in pairs(Character:GetChildren()) do
		if v:IsA("BasePart") then
			v.Color = Color3.new(.5,.5,.5)
		end
	end
		Character["Ultra-Fabulous Hair"].Color = Color3.new()
	Character.Visualizer2.Color = Color3.new()
	shade = Color3.new()
else
	GUN = Character.MegaGunnModel
	Character.DarkMegaGunnModel:Destroy()
	Character.DarkSuitShirt:Destroy()
	Character.DarkSuitPants:Destroy()
	Character["Ultra-Fabulous Hair"].Color = Color3.new(1,1,1)
end
local GunJoint = GUN.PrimaryPart.Weld
local Hole = GUN.Hole
local Holetwo = GUN.Hole2
local outerm = Character.Visualizer.Mesh
local outerm2 = Character.Visualizer2.Mesh
eee = Instance.new("Sound",Character.Torso)
eee.Volume = 1
eee.PlaybackSpeed = 1
eee.Pitch = 1
eee.SoundId = songid.Value
eee:Play()
eee.Name = randomstring()
eee.Looped = true
eee.TimePosition = SongSync.Value
songid:GetPropertyChangedSignal("Value"):Connect(function()
	eee.SoundId = songid.Value
	eee.TimePosition = 0
end)
local alreadyfixing = false
local function characterfixer()
	alreadyfixing = true
	local camerapos = workspace.CurrentCamera.CFrame
	pcall(function()
		Character:Destroy()
	end)
	Character = script.Character:Clone()
	Character.Name = randomstring()
	Character.Parent = workspace
	Humanoid = Character.Humanoid
	Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
	if lplr.Name == USERNAME then
		workspace.CurrentCamera.CameraSubject = Humanoid
		workspace.CurrentCamera.CameraType = "Scriptable"
		workspace.CurrentCamera.CFrame = camerapos
		coroutine.resume(coroutine.create(function()
			swait(5)
			workspace.CurrentCamera.CameraType = "Custom"
		end))
	end
	LeftArm = Character["Left Arm"]
	RightArm = Character["Right Arm"]
	LeftLeg = Character["Left Leg"]
	RightLeg = Character["Right Leg"]
	Head = Character.Head
	Torso = Character.Torso
	RootPart = Character.HumanoidRootPart
	if lplr.Name == USERNAME then
		RootPart.CFrame = RealRoot.CFrame
		Player.Character = Character
	end
	RootJoint = RootPart.RootJoint
	Neck = Torso["Neck"]
	RightShoulder = Torso["Right Shoulder"]
	LeftShoulder = Torso["Left Shoulder"]
	RightHip = Torso["Right Hip"]
	LeftHip = Torso["Left Hip"]
	Effects = Character.Effects
	LeftEye = Head.Eyes.LeftEye
	RightEye = Head.Eyes.RightEye
	if Player.UserId == 1308783007 then
		GUN = Character.DarkMegaGunnModel
		Character.MegaGunnModel:Destroy()
		Character.SuitShirt:Destroy()
		Character.SuitPants:Destroy()
		for i,v in pairs(Character:GetChildren()) do
			if v:IsA("BasePart") then
				v.Color = Color3.new(127,127,127)
			end
		end
		Character["Ultra-Fabulous Hair"].Color = Color3.new()
		Character.Visualizer2.Color = Color3.new()
		shade = Color3.new()
	else
		GUN = Character.MegaGunnModel
		Character.DarkMegaGunnModel:Destroy()
		Character.DarkSuitShirt:Destroy()
		Character.DarkSuitPants:Destroy()
		Character["Ultra-Fabulous Hair"].Color = Color3.new(1,1,1)
	end
	GunJoint = GUN.PrimaryPart.Weld
	Hole = GUN.Hole
	Holetwo = GUN.Hole2
	outerm = Character.Visualizer.Mesh
	outerm2 = Character.Visualizer2.Mesh
	eee = Instance.new("Sound",Character.Torso)
	eee.Volume = 1
	eee.PlaybackSpeed = 1
	eee.Pitch = 1
	eee.SoundId = songid.Value
	eee:Play()
	eee.Name = randomstring()
	eee.Looped = true
	eee.TimePosition = SongSync.Value
	songid:GetPropertyChangedSignal("Value"):Connect(function()
		eee.SoundId = songid.Value
		eee.TimePosition = 0
	end)
	alreadyfixing = false
end

workspace.DescendantRemoving:Connect(function(v)
	if not alreadyfixing then
		if v == Character or v:IsDescendantOf(Character) then
			if not v:IsDescendantOf(Effects) and not v:IsA("Sound") and not v:IsA("BodyMover") then
				characterfixer()
			elseif v == eee then
				characterfixer()
			end
		end
	end
end)
if lplr.Name == USERNAME then
	local gui = Instance.new("ScreenGui")
	gui.Name = randomstring()
	local fixcharbutton = Instance.new("TextButton",gui)
	fixcharbutton.TextScaled = true
	fixcharbutton.Font = "Code"
	fixcharbutton.Name = randomstring()
	fixcharbutton.BorderSizePixel = 0
	fixcharbutton.BackgroundTransparency = .5
	fixcharbutton.TextStrokeColor3 = shade
	fixcharbutton.TextStrokeTransparency = 0
	fixcharbutton.BackgroundColor3 = Color3.new(.5,.5,.5)
	fixcharbutton.Text = "Fix Character"
	fixcharbutton.Size = UDim2.new(.25,0,0,36)
	fixcharbutton.AnchorPoint = Vector2.new(1,1)
	fixcharbutton.Position = UDim2.new(.5,0,0,0)
	local exitbutton = Instance.new("TextButton",gui)
	exitbutton.TextScaled = true
	exitbutton.Font = "Code"
	exitbutton.Name = randomstring()
	exitbutton.BorderSizePixel = 0
	exitbutton.BackgroundTransparency = .5
	exitbutton.TextStrokeColor3 = shade
	exitbutton.TextStrokeTransparency = 0
	exitbutton.BackgroundColor3 = Color3.new(.5,.5,.5)
	exitbutton.Text = "Leave Game"
	exitbutton.Size = UDim2.new(.25,0,0,36)
	exitbutton.AnchorPoint = Vector2.new(0,1)
	exitbutton.Position = UDim2.new(.5,0,0,0)
	gui.Parent = Player:FindFirstChildOfClass("PlayerGui")
	fixcharbutton.MouseButton1Click:Connect(function()
		if not alreadyfixing then
			Character:Destroy()
		end
	end)
	exitbutton.MouseButton1Click:Connect(function()
		MainFolder.ExitRemote:FireServer()
	end)
	local fixinggui = false
	local function fixgui()
		fixinggui = true
		pcall(function()
			gui:Destroy()
		end)
		gui = Instance.new("ScreenGui")
		gui.Name = randomstring()
		fixcharbutton = Instance.new("TextButton",gui)
		fixcharbutton.TextScaled = true
		fixcharbutton.Font = "Code"
		fixcharbutton.Name = randomstring()
		fixcharbutton.BorderSizePixel = 0
		fixcharbutton.BackgroundTransparency = .5
		fixcharbutton.TextStrokeColor3 = shade
		fixcharbutton.TextStrokeTransparency = 0
		fixcharbutton.BackgroundColor3 = Color3.new(.5,.5,.5)
		fixcharbutton.Text = "Fix Character"
		fixcharbutton.Size = UDim2.new(.25,0,0,36)
		fixcharbutton.AnchorPoint = Vector2.new(1,1)
		fixcharbutton.Position = UDim2.new(.5,0,0,0)
		exitbutton = Instance.new("TextButton",gui)
		exitbutton.TextScaled = true
		exitbutton.Font = "Code"
		exitbutton.Name = randomstring()
		exitbutton.BorderSizePixel = 0
		exitbutton.BackgroundTransparency = .5
		exitbutton.TextStrokeColor3 = shade
		exitbutton.TextStrokeTransparency = 0
		exitbutton.BackgroundColor3 = Color3.new(.5,.5,.5)
		exitbutton.Text = "Leave Game"
		exitbutton.Size = UDim2.new(.25,0,0,36)
		exitbutton.AnchorPoint = Vector2.new(0,1)
		exitbutton.Position = UDim2.new(.5,0,0,0)
		gui.Parent = Player:FindFirstChildOfClass("PlayerGui")
		fixcharbutton.MouseButton1Click:Connect(function()
			if not alreadyfixing then
				Character:Destroy()
			end
		end)
		exitbutton.MouseButton1Click:Connect(function()
			MainFolder.ExitRemote:FireServer()
		end)
		fixinggui = false
	end
	Player:FindFirstChildOfClass("PlayerGui").DescendantRemoving:Connect(function(v)
		if not fixinggui then
			if v == gui or v:IsDescendantOf(gui) then
				fixgui()
			end
		end
	end)
	coroutine.resume(coroutine.create(function()
		local noob = 0
		repeat noob = noob + game:GetService("RunService").RenderStepped:Wait() until noob >= .1
		while true do
			if not fixinggui and not alreadyfixing then
				fixcharbutton.TextColor3 = GUN.NeonParts.Color
				exitbutton.TextColor3 = GUN.NeonParts.Color
			end
			swait()
		end
	end))
end
--[[StopRemote.OnClientEvent:Connect(function()
	if lplr == Player then
		for i,v in pairs(lplr.PlayerGui:GetChildren()) do
			if v.Name == "ScreenGui" or v.Name == "Weapon GUI" then
				v:Destroy()
			end
		end
	end
	if script.Parent.Parent:FindFirstChild("Holder") then
		script.Parent.Parent:FindFirstChild("Holder"):Destroy()
	end
	print("Script Disabled")
	alreadyfixing = true
	Character:Destroy()
	script.Parent:Destroy()
	game:GetService("RunService").Heartbeat:Wait()
	script.Disabled = true
end) ]]--

if lplr.Name == USERNAME then
	Player.Character = Character
	Player:GetPropertyChangedSignal("Character"):Connect(function()
		if not alreadyfixing and Player.Character ~= Character then
			Player.Character = Character
		end
	end)
	local lMouse = Player:GetMouse()
	local HB = game:GetService("RunService").Heartbeat
	local Remote = MainFolder.Mouse
	local Remote2 = MainFolder.MouseInfo
	
	lMouse.KeyDown:Connect(function(Key)
		Remote:FireServer("KeyDown",Key)
	end)
	lMouse.KeyUp:Connect(function(Key)
		Remote:FireServer("KeyUp",Key)
	end)
	lMouse.Button1Down:Connect(function(Key)
		Remote:FireServer("MouseButton1Down",Key)
	end)
	lMouse.Button1Up:Connect(function(Key)
		Remote:FireServer("MouseButton1Up",Key)
	end)
	
	spawn(function()
		while true do
			game:GetService("RunService").RenderStepped:Wait()
			Remote2["r1"]:FireServer(lMouse.Hit)
		end
	end)
end



local Mouse = {}
local mouse = Mouse

do
	local Remote = MainFolder.Mouse
	local Hits = MainFolder.MouseInfo
	local KeyDown = Instance.new("BindableEvent")
	local KeyUp = Instance.new("BindableEvent")
	local MouseButton1Down = Instance.new("BindableEvent")
	local MouseButton1Up = Instance.new("BindableEvent")
	local Hit = MainFolder.mHit
	Mouse.KeyDown = KeyDown.Event
	Mouse.KeyUp = KeyUp.Event
	Mouse.Button1Down = MouseButton1Down.Event
	Mouse.Button1Up = MouseButton1Up.Event
	Remote.OnClientEvent:Connect(function(request,...)
		if request == "KeyDown" then
			KeyDown:Fire(...)
		end
		if request == "KeyUp" then
			KeyUp:Fire(...)
		end
		if request == "MouseButton1Down" then
			MouseButton1Down:Fire(...)
		end
		if request == "MouseButton1Up" then
			MouseButton1Up:Fire(...)
		end
	end)

	Mouse.Hit = Hit.Value
	
	local ArtificialHB = Instance.new("BindableEvent",script)
	ArtificialHB.Name = "ArtificialHB2"
	script:WaitForChild("ArtificialHB2")
	frame = 1/60
	tf = 0
	allowframeloss = false
	tossremainder = false
	lastframe = tick()
	script.ArtificialHB2:Fire()
	game:GetService("RunService").Heartbeat:Connect(function(s,p)
		tf = tf + s
		if tf >= frame then
			if allowframeloss then
				ArtificialHB:Fire()
				lastframe = tick()
			else
				for i = 1,math.floor(tf / frame) do
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
	
	function BaseWait(NUMBER)
		if NUMBER == 0 or NUMBER == nil then
			AnimSync:GetPropertyChangedSignal("Value"):Wait()
		else
			for i = 1,NUMBER do
				AnimSync:GetPropertyChangedSignal("Value"):Wait()
			end
		end
	end
	swait = BaseWait
	Swait = BaseWait
	ArtificialHB.Event:Connect(function()
		Mouse.Hit = Hit.Value
		if Swait ~= BaseWait then
			Swait = BaseWait
		end
		if swait ~= BaseWait then
			swait = BaseWait
		end
	end)
end
coroutine.resume(coroutine.create(function()
	while true do
		Swait()
		if not alreadyfixing then
			outerm.Scale = Vector3.new(1,eee.PlaybackLoudness/50,eee.PlaybackLoudness/50)
			if outerm.Scale.Y > .1 then
				outerm2.Scale = outerm.Scale + Vector3.new(-.1,.5,.5)
			else
				outerm2.Scale = outerm.Scale
			end
			outerm.Parent.Color = GUN.NeonParts.Color
		end
	end
end))
if lplr.Name == USERNAME then
	workspace.CurrentCamera.CameraSubject = Humanoid
	workspace.CurrentCamera:GetPropertyChangedSignal("CameraSubject"):Connect(function()
		if not alreadyfixing and workspace.CurrentCamera.CameraSubject ~= Humanoid then
			workspace.CurrentCamera.CameraSubject = Humanoid
		end
	end)
end
spawn(function()


local TS = game:GetService("TweenService")
local PS = game:GetService("PhysicsService")

ArtificialHB = Instance.new("BindableEvent",script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")

frame = 1/60
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:Connect(function(s,p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1,math.floor(tf / frame) do
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

end)
local attack = false
local Anim = "Idle"
local attacktype = 1
local delays = false
local play = true
local Torsovelocity = (RootPart.Velocity * Vector3.new(1,0,1)).magnitude 
local sine = 0
AnimSync:GetPropertyChangedSignal("Value"):Connect(function()
	sine = AnimSync.Value
end)
local change = 1
local doe = 0
local walkspeed = 10
Humanoid.WalkSpeed = walkspeed
local rc0 = CFrame.new() * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local nc0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local rscp = CFrame.new(-.5,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
local lscp = CFrame.new(.5,0,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))

function QFCF(cf)
	local mx,my,mz,m00,m01,m02,m10,m11,m12,m20,m21,m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip,(m02 - m20) * recip,(m10 - m01) * recip,s * 0.5
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
			return 0.5 * s,(m10 + m01) * recip,(m20 + m02) * recip,(m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip,0.5 * s,(m21 + m12) * recip,(m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s return (m02 + m20) * recip,(m12 + m21) * recip,0.5 * s,(m10 - m01) * recip
		end
	end
end
 
function QTCF(px,py,pz,x,y,z,w)
	local xs,ys,zs = x + x,y + y,z + z
	local wx,wy,wz = w * xs,w * ys,w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px,py,pz,1 - (yy + zz),xy - wz,xz + wy,xy + wz,1 - (xx + zz),yz - wx,xz - wy,yz + wx,1 - (xx + yy))
end
 
function QS(a,b,t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp,finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = math.acos(cosTheta)
			local invSinTheta = 1 / math.sin(theta)
			startInterp = math.sin((1 - t) * theta) * invSinTheta
			finishInterp = math.sin(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = math.acos(-cosTheta)
			local invSinTheta = 1 / math.sin(theta)
			startInterp = math.sin((t - 1) * theta) * invSinTheta
			finishInterp = math.sin(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp,a[2] * startInterp + b[2] * finishInterp,a[3] * startInterp + b[3] * finishInterp,a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a,b,t)
	local qa = {QFCF(a)}
	local qb = {QFCF(b)}
	local ax,ay,az = a.x,a.y,a.z
	local bx,by,bz = b.x,b.y,b.z
	local _t = 1 - t
	return QTCF(_t * ax + t * bx,_t * ay + t * by,_t * az + t * bz,QS(qa,qb,t))
end

ArtificialHB = Instance.new("BindableEvent",script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 30
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:Connect(function(s,p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1,math.floor(tf / frame) do
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
		ArtificialHB.Event:Wait()
	else
		for i = 0,num do
			ArtificialHB.Event:Wait()
		end
	end
end
function CreateConnection(TYPE,PARENT,PART0,PART1,C0,C1)
	local NEWWELD = Instance.new(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end	

function CreateMesh(MESH,PARENT,MESHTYPE,MESHID,TEXTUREID,SCALE,OFFSET)
	local NEWMESH = Instance.new(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "rbxassetid://"..MESHID
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

function CreatePart(FORMFACTOR,PARENT,MATERIAL,REFLECTANCE,TRANSPARENCY,BRICKCOLOR,NAME,SIZE,ANCHOR)
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
	NEWPART.Name = randomstring()
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

local S = Instance.new("Sound")
function CreateSound(ID,PARENT,VOLUME,PITCH,DOESLOOP)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
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
					repeat Swait() until NEWSOUND.Playing == false
					NEWSOUND:Destroy()
				end)
			end))
		end
	end))
	return NEWSOUND
end

local function weldBetween(a,b)
	local weldd = Instance.new("Weld")
	weldd.Part0 = a
	weldd.Part1 = b
	weldd.C0 = CFrame.new()
	weldd.C1 = b.CFrame:inverse() * a.CFrame
	weldd.Parent = b
	return weldd
end
function rayCast(Position,Direction,Range,Ignore)
	return workspace:FindPartOnRay(Ray.new(Position,Direction.unit * (Range or 999.999)),Ignore) 
end 		
local resetchar = MainFolder.ResetChar
function mdmg(centerofeffect,range)
	pcall(function()
		MainFolder.mdmgremote:FireServer(centerofeffect,range)
		for i,v in pairs(workspace:GetDescendants()) do
			if not v:IsDescendantOf(Character) and v:IsA("Humanoid") and v.RootPart and (v.RootPart.Position - centerofeffect).Magnitude <= range + v.RootPart.Size.Magnitude then
				local deathp = Instance.new("Part")
				deathp.Anchored = true 
				deathp.Transparency = 1
				deathp.CanCollide = false
				deathp.CFrame = v.RootPart.CFrame
				local bruh = CreateSound(206082273,deathp,5,.75)
				bruh.PlayOnRemove = true
				deathp.Parent = workspace
				pcall(function()
					deathp:Destroy()
				end)
				if v:IsDescendantOf(game) and v.Parent ~= workspace and v.Parent ~= workspace.Terrain then
					v.RootPart:Destroy()
					local maxparent = v
					repeat maxparent = maxparent.Parent until maxparent.Parent == workspace or maxparent.Parent == workspace.Terrain
					resetchar:FireServer(maxparent.Name)
					maxparent:Destroy()
				elseif v:IsDescendantOf(game) then
					v.RootPart:Destroy()
					v:Destroy()
				end
			end
		end
	end)
end

function Effect(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new())
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or shade)
	local hOK,sOK,vOK = Color3.toHSV(COLOR)
	local RAINBOWPART = false
	if sOK > .1 then
		RAINBOWPART = true
	end
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	local USEBOOMERANGMATH = (Table.UseBoomerangMath or false)
	local BOOMERANG = (Table.Boomerang or 0)
	local SIZEBOOMERANG = (Table.SizeBoomerang or 0)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3,Effects,MATERIAL,0,TRANSPARENCY,shade,"Effect",Vector3.new(1,1,1),true)
		if RAINBOWPART then
			coroutine.resume(coroutine.create(function()
				while EFFECT:IsDescendantOf(game) do
					EFFECT.Color = GUN.NeonParts.Color
					swait()
				end
			end))
		end
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID,EFFECT,SOUNDVOLUME,SOUNDPITCH,false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"Sphere","","",SIZE,Vector3.new())
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","20329976","",SIZE,Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","559831844","",Vector3.new(SIZE.X,SIZE.X,0.1),Vector3.new())
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662586858","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662585058","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","168892432","",SIZE,Vector3.new())
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","4770583","",SIZE,Vector3.new())
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","9756362","",SIZE,Vector3.new())
		end
		if MSH ~= nil then
			local BOOMR1 = 1+BOOMERANG/50
			local BOOMR2 = 1+SIZEBOOMERANG/50
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				if USEBOOMERANGMATH == true then
					MOVESPEED = ((CFRAME.p - MOVEDIRECTION).Magnitude/TIME)*BOOMR1
				else
					MOVESPEED = ((CFRAME.p - MOVEDIRECTION).Magnitude/TIME)
				end
			end
			local GROWTH = nil
			if USEBOOMERANGMATH == true then
				GROWTH = (SIZE - ENDSIZE)*(BOOMR2+1)
			else
				GROWTH = (SIZE - ENDSIZE)
			end
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			if USEBOOMERANGMATH == true then
				for LOOP = 1,TIME+1 do
					swait()
					MSH.Scale = MSH.Scale - (Vector3.new((GROWTH.X)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Y)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Z)*((1 - (LOOP/TIME)*BOOMR2)))*BOOMR2)/TIME
					if TYPE == "Wave" then
						MSH.Offset = Vector3.new(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-(MOVESPEED)*((1 - (LOOP/TIME)*BOOMR1)))
						EFFECT.Orientation = ORI
					end
				end
			else
				for LOOP = 1,TIME+1 do
					swait()
					MSH.Scale = MSH.Scale - GROWTH/TIME
					if TYPE == "Wave" then
						MSH.Offset = Vector3.new(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-MOVESPEED)
						EFFECT.Orientation = ORI
					end
				end
			end
			EFFECT.Transparency = 1
			if PLAYSSOUND == false then
				EFFECT:Destroy()
			else
				repeat swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:Destroy()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:Destroy()
			else
				repeat swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:Destroy()
			end
		end
	end))
end

function Lightning(Part0,Part1,Timess,Offset,Color,Timer,sSize,eSize,Trans,Boomer,sBoomer,Trans2)
  local magz = (Part0 - Part1).magnitude
	local Times = math.floor(math.clamp(magz/10,5,20))
  local curpos = Part0
  local trz = {
    -Offset,
    Offset
  }
  for i = 1,Times do
    local li = Instance.new("Part",Effects)
    li.Name = randomstring()
    li.TopSurface = 0
    li.Material = "Neon"
    li.BottomSurface = 0
    li.Anchored = true
    li.Locked = true
    li.Transparency = 0
    li.Color = Color
    li.formFactor = "Custom"
    li.CanCollide = false
    li.Size = Vector3.new(0.1,0.1,magz / Times)
    local Offzet = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
    local trolpos = CFrame.new(curpos,Part1) * CFrame.new(0,0,magz / Times).p + Offzet
    if Times == i then
      local magz2 = (curpos - Part1).magnitude
      li.Size = Vector3.new(0.1,0.1,magz2)
      li.CFrame = CFrame.new(curpos,Part1) * CFrame.new(0,0,-magz2 / 2)
    else
      li.CFrame = CFrame.new(curpos,trolpos) * CFrame.new(0,0,magz / Times / 2)
    end
    curpos = li.CFrame * CFrame.new(0,0,magz / Times / 2).p
    li:Destroy()
	Effect({Time = Timer,EffectType = "Box",Size = Vector3.new(sSize,sSize,li.Size.Z),Size2 = Vector3.new(eSize,eSize,li.Size.Z),Transparency = Trans,Transparency2 = Trans2 or 1,CFrame = li.CFrame,MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = li.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = Boomer,Boomerang = 0,SizeBoomerang = sBoomer})
  end
end

function FireArc(Part,ToLocation,AmountOfTime,Height,DoesCourontine)
    if DoesCourontine == false then
        local Direction = CFrame.new(Part.Position,ToLocation)
        local Distance = (Part.Position - ToLocation).magnitude
        for i = 1,AmountOfTime do
            swait()
            Part.CFrame = Direction*CFrame.new(0,(AmountOfTime/200)+((AmountOfTime/Height)-((i*2)/Height)),-Distance/AmountOfTime)
            Direction = Part.CFrame
        end
    elseif DoesCourontine == true then
        coroutine.resume(coroutine.create(function()
            local Direction = CFrame.new(Part.Position,ToLocation)
            local Distance = (Part.Position - ToLocation).magnitude
            for i = 1,AmountOfTime do
                swait()
                Part.CFrame = Direction*CFrame.new(0,(AmountOfTime/200)+((AmountOfTime/Height)-((i*2)/Height)),-Distance/AmountOfTime)
                Direction = Part.CFrame
            end
        end))
    end
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

function AttackGyro()
	local GYRO = Instance.new("BodyGyro",RootPart)
	GYRO.D = 25
	GYRO.P = 20000
	GYRO.MaxTorque = Vector3.new(0,4000000,0)
	GYRO.CFrame = CFrame.new(RootPart.Position,Mouse.Hit.p)
	coroutine.resume(coroutine.create(function()
		repeat
			swait()
			GYRO.CFrame = CFrame.new(RootPart.Position,Mouse.Hit.p)
		until attack == false
		GYRO:Destroy()
	end))
end
coroutine.resume(coroutine.create(function()
	while true do
		for i = 0,1,(1/60) do
			swait()
			if not alreadyfixing then
				GUN.NeonParts.Color = Color3.fromHSV(i,1,1)
				LeftEye.Color = GUN.NeonParts.Color
				RightEye.Color = GUN.NeonParts.Color
			end
		end
	end
end))
coroutine.resume(coroutine.create(function()
	while true do
		Swait()
		if not alreadyfixing then
			if SongSync.Value > eee.TimeLength and eee.TimeLength >= .1 then
				ResetSongSync:FireServer()
			end
			if eee.TimePosition < (SongSync.Value - 1) or eee.TimePosition > (SongSync.Value + 1) then
				eee.TimePosition = SongSync.Value
			end
		end
	end
end))
function chatfunc(text)
	local chat = coroutine.wrap(function()
		local oldthing = RealRoot:FindFirstChild("TalkingBillBoard")
		if oldthing then
			oldthing:Destroy()
		end
		local naeeym2 = Instance.new("BillboardGui",RealRoot)
		naeeym2.Size = UDim2.new(0,9999,2,0)
		naeeym2.StudsOffset = Vector3.new(0,4.5,0)
		naeeym2.Adornee = Character.HumanoidRootPart
		naeeym2.Name = "TalkingBillBoard"
		local tecks2 = Instance.new("TextLabel",naeeym2)
		tecks2.BackgroundTransparency = 1
		tecks2.BorderSizePixel = 0
		tecks2.Text = ""
		tecks2.Font = "Code"
		tecks2.TextScaled = true
		tecks2.TextStrokeTransparency = 0
		coroutine.resume(coroutine.create(function()
			while tecks2:IsDescendantOf(game) do
				local hBRUH,sBRUH,vBRUH = Color3.toHSV(GUN.NeonParts.Color)
				tecks2.TextColor3 = Color3.fromHSV(hBRUH,sBRUH,vBRUH/2)
				swait()
			end
		end))
		tecks2.TextStrokeColor3 = shade
		tecks2.Size = UDim2.new(1,0,1,0)
		local tecks3 = Instance.new("TextLabel",naeeym2)
		tecks3.BackgroundTransparency = 1
		tecks3.BorderSizePixel = 0
		tecks3.Text = ""
		tecks3.Font = "Code"
		tecks3.TextScaled = true
		tecks3.TextStrokeTransparency = 0
		coroutine.resume(coroutine.create(function()
			while tecks3:IsDescendantOf(game) do
				tecks3.TextColor3 = GUN.NeonParts.Color
				swait()
			end
		end))
		tecks3.TextStrokeColor3 = shade
		tecks3.Size = UDim2.new(1,0,1,0)
		coroutine.resume(coroutine.create(function()
			while naeeym2 ~= nil do
				swait()
				tecks2.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3)) 
				tecks3.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3)) 

			end
		end))
		for i = 1,string.len(text) do
			CreateSound(4740147336,RealRoot,5,1)
			swait(2)
			tecks2.Text = string.sub(text,1,i)
			tecks3.Text = string.sub(text,1,i)
		end
		swait(120)
		for i = 1,50 do
			swait()
			tecks2.Position = tecks2.Position - UDim2.new(0,math.random(-3,3),0,math.random(-3,3))
			tecks3.Position = tecks2.Position - UDim2.new(0,math.random(-3,3),0,math.random(-3,3)) 
			tecks2.Rotation = tecks2.Rotation + math.random(-2,2)
			tecks3.Rotation = tecks3.Rotation + math.random(-2,2)
			tecks2.TextStrokeTransparency = i/50
			tecks2.TextTransparency = tecks2.TextStrokeTransparency
			tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency
			tecks3.TextTransparency = tecks2.TextStrokeTransparency
		end
		naeeym2:Destroy()
	end)
	chat()
end
if type(Player) ~= "table" then
	Player.Chatted:Connect(chatfunc)
end
game:GetService("Players").PlayerAdded:Connect(function(v)
	if v.Name == USERNAME then
		Player = v
		Player.Chatted:Connect(chatfunc)
	end
end)
function attackone()
	attack = true
	walkspeed = 5
	AttackGyro()
	for i = 0,0.5,0.05 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)),1 / 3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-30)),1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)) * rscp,1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(30),math.rad(0),math.rad(0)) * lscp,1 / 3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(-5),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(-4),math.rad(0),math.rad(0)),1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(0),math.rad(-70),math.rad(0)) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),1 / 3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1 / 2)
	end
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 642890855,SoundPitch = 0.45,SoundVolume = 6,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	local DISTANCE = (Holetwo.Position - Mouse.Hit.p).Magnitude
	local killbeam = CreatePart(3,Effects,"Neon",0,0,shade,"Kill Beam",Vector3.new(1,DISTANCE,1))
	killbeam.CFrame = CFrame.new(Holetwo.Position,Mouse.Hit.p) * CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
	MakeForm(killbeam,"Cyl")
	killbeam.Touched:Connect(function(victim)
		mdmg(victim.Position,5)
	end)
	coroutine.resume(coroutine.create(function()
		for i = 1,25 do
			swait()
			killbeam.Transparency = i/25
		end
		killbeam:Destroy()
	end))
	Lightning(Holetwo.Position,Mouse.Hit.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	Lightning(Holetwo.Position,Mouse.Hit.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	Lightning(Holetwo.Position,Mouse.Hit.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	Lightning(Holetwo.Position,Mouse.Hit.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	Lightning(Holetwo.Position,Mouse.Hit.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	for i = 0,2 do
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
	end
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 192410089,SoundPitch = .55,SoundVolume = 8,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	for i = 0,2 do
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
  end
	mdmg(Mouse.Hit.p,10)
	for i = 0,0.5,0.075 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new() * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(60)),1 / 3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(10),math.rad(0),math.rad(-60)),1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(160),math.rad(-20),math.rad(60)) * rscp,1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(40),math.rad(5),math.rad(5)) * lscp,1 / 3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(-5),math.rad(75),math.rad(0)) * CFrame.Angles(math.rad(-4),math.rad(0),math.rad(0)),1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(0),math.rad(-65),math.rad(0)) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),1 / 3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1 / 2)
	end
	walkspeed = 10
	attack = false
end

function attacktwo()
	attack = true
	walkspeed = 0
	AttackGyro()
   local gBullet = CreatePart(3,Effects,"Neon",0,0,Color3.new(0,0,1),"BullyFuck",Vector3.new())
   MakeForm(gBullet,"Ball")
   gBullet.CFrame = LeftArm.CFrame*CFrame.new(0,-1.5,0)
	CreateSound(2785493,gBullet,2,0.8)
	for i = 0,1.25,0.025 do
		swait()
		Effect({Time = math.random(35,55),EffectType = "Sphere",Size = Vector3.new(0.5,0.5,0.5),Size2 = Vector3.new(1,1,1),Transparency = 0,Transparency2 = 1,CFrame = LeftArm.CFrame*CFrame.new(0,-1.5,0),MoveToPos = LeftArm.CFrame*CFrame.new(0,-1.5,0)*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10)).p,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 50,SizeBoomerang = 50})
		gBullet.Size = gBullet.Size * 1.085
        gBullet.CFrame = LeftArm.CFrame*CFrame.new(0,-1.5,0)
		RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new(0,0,0 + 0.05 * math.cos(sine / 12)) * CFrame.Angles(math.rad(5),math.rad(0),math.rad(-30)),1 / 3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(-5 - 3 * math.cos(sine / 12)),math.rad(0),math.rad(30)),1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-62.5),math.rad(0 - 5 * math.cos(sine / 12)),math.rad(30)) * rscp,1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5 + 0.1 * math.cos(sine / 12),-0) * CFrame.Angles(math.rad(85 - 1.5 * math.cos(sine / 12)),math.rad(0 - 6 * math.cos(sine / 12)),math.rad(-30 - 6 * math.cos(sine / 12))) * lscp,1 / 3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1 - 0.075 * math.cos(sine / 12),0) * CFrame.Angles(math.rad(5),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(-4),math.rad(0),math.rad(0)),1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1 - 0.075 * math.cos(sine / 12),0) * CFrame.Angles(math.rad(0),math.rad(-70),math.rad(0)) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),1 / 3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1 / 2)
	end
	local bullets = {}
	for i = 1,math.random(27,41) do
		swait()
		local Bullet = CreatePart(3,Effects,"Neon",0,0,Color3.new(0,0,1),"BulletFuck",Vector3.new(0.6,0.6,0.6))
    	MakeForm(Bullet,"Ball")
		Bullet.CFrame = gBullet.CFrame
		Effect({Time = math.random(5,20),EffectType = "Sphere",Size = Vector3.new(3,3,3)*math.random(-3,2),Size2 = Vector3.new(6,6,6)*math.random(-3,2),Transparency = 0.4,Transparency2 = 1,CFrame = Bullet.CFrame,MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 25})
		table.insert(bullets,Bullet)
	end
	for b = 1,#bullets do
		swait()
		local part,pos = rayCast(LeftArm.CFrame*CFrame.new(0,-1.5,0).p,((Mouse.Hit.p+Vector3.new(math.random(-15,15),math.random(-7,7),math.random(-15,15))) - LeftArm.CFrame*CFrame.new(0,-1.5,0).p),500,Character)
		coroutine.resume(coroutine.create(function()
		FireArc(bullets[b],pos,math.random(17,31),math.random(9,15),false)
		Effect({Time = math.random(25,35),EffectType = "Sphere",Size = Vector3.new(0.6,0.6,0.6),Size2 = Vector3.new(1.6,1.6,1.6),Transparency = 0,Transparency2 = 1,CFrame = bullets[b].CFrame,MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 25})
		swait(math.random(55,65))
		for i = 1,3 do
			Effect({Time = math.random(45,65),EffectType = "Sphere",Size = Vector3.new(0.6,6,0.6)*math.random(-1.05,1.25),Size2 = Vector3.new(1.6,10,1.6)*math.random(-1.05,1.25),Transparency = 0,Transparency2 = 1,CFrame = bullets[b].CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 20,SizeBoomerang = 35})
		end
		for i = 0,10 do
		swait()
		bullets[b].Transparency = bullets[b].Transparency + 0.1
		end
		mdmg(bullets[b].Position,10)
		local EEEBRUHEEE = CreateSound(168513088,bullets[b],3.5,1.1,false)
		bullets[b].Transparency = 1
		EEEBRUHEEE.Ended:Connect(function()
			bullets[b]:Destroy()
		end)
		end))
	end
	for i = 0,10 do
		swait()
		gBullet.Transparency = gBullet.Transparency + 0.1
	end
	gBullet:Destroy()
	walkspeed = 10
	attack = false
end

function hedshoot()
	attack = true
	walkspeed = 5
	CreateSound(235097614,RootPart,6,1.5,false)
	for i = 0,0.5,0.05 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-60)),1 / 3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(60)),1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.25,0.5,-.25) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60)) * rscp,1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.25,0.5,-.25) * CFrame.Angles(math.rad(95),math.rad(0),math.rad(10)) * lscp,1 / 3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(-5),math.rad(75),math.rad(0)) * CFrame.Angles(math.rad(-4),math.rad(0),math.rad(0)),1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(0),math.rad(-65),math.rad(0)) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),1 / 3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1 / 2)
	end
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 642890855,SoundPitch = 0.45,SoundVolume = 6,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = math.random(25,45),EffectType = "Sphere",Size = Vector3.new(2,100,2),Size2 = Vector3.new(6,100,6),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame*CFrame.new(math.random(-1,1),math.random(-1,1),-50)*CFrame.Angles(math.rad(math.random(89,91)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 45})
	Effect({Time = math.random(25,45),EffectType = "Sphere",Size = Vector3.new(3,100,3),Size2 = Vector3.new(9,100,9),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame*CFrame.new(math.random(-1,1),math.random(-1,1),-50)*CFrame.Angles(math.rad(math.random(89,91)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 45})
	mdmg(RootPart.Position,14)
	for i = 1,4 do
		RootPart.CFrame = RootPart.CFrame * CFrame.new(0,0,-25)
		mdmg(RootPart.Position,14)
		Lightning(RootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,RootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,6,25,shade,math.random(30,45),0.5,1.5,0,true,60) Lightning(RootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,RootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,6,25,Color3.new(0,0,1),math.random(30,45),0.5,1.5,0,true,60)
	end
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	for i = 0,0.5,0.1 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),1 / 3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)),1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(90)) * rscp,1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(40),math.rad(5),math.rad(5)) * lscp,1 / 3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(-5),math.rad(75),math.rad(0)) * CFrame.Angles(math.rad(-4),math.rad(0),math.rad(0)),1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(0),math.rad(-65),math.rad(0)) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),1 / 3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1 / 2)
	end
	attack = false
	walkspeed = 10
end

function painlessrain()
attack = true
    walkspeed = 5
	coroutine.wrap(function()
	for i = 0,2 do
	swait(12)
	CreateSound(199145095,GUN,6,1)
	end
	end)()
	for i = 0,2,0.1 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)),1 / 3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(25),math.rad(0),math.rad(-20)),1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(35),math.rad(-35),math.rad(20)) * rscp,1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-20),math.rad(-5),math.rad(-10)) * lscp,1 / 3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(-5),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(-4),math.rad(0),math.rad(0)),1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(0),math.rad(-70),math.rad(0)) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),1 / 3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(doe * 22),math.rad(0),math.rad(0)),1 / 2)
	end
	for i = 0,1.5,0.1 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),1 / 3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(175),math.rad(-10),math.rad(10)) * rscp,1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(-5)) * lscp,1 / 3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(-5),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(-4),math.rad(0),math.rad(0)),1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(0),math.rad(-70),math.rad(0)) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),1 / 3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1 / 2)
	end
	local Hole2 = Hole.CFrame*CFrame.new(-600,0,0)
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = Hole.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 642890855,SoundPitch = 0.45,SoundVolume = 6,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = Hole.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Lightning(Hole.Position,Hole2.p,15.137,3.5,shade,25,1,3,0,true,55) Lightning(Hole.Position,Hole2.p,15.137,3.5,Color3.new(0,0,1),25,1,3,0,true,55)
	for i = 0,2 do
	Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(0.1,0.1,0.1),Size2 = Vector3.new(0.4,0,0.4),Transparency = 0,Transparency2 = 1,CFrame = Hole.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
	Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(0.1,0.1,0.1),Size2 = Vector3.new(0.4,0,0.4),Transparency = 0,Transparency2 = 1,CFrame = Hole.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
	end
	for i = 0,.5,0.1 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),1 / 3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(225),math.rad(-20),math.rad(20)) * rscp,1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-5),math.rad(-5),math.rad(0)) * lscp,1 / 3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(-5),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(-4),math.rad(0),math.rad(0)),1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(0),math.rad(-70),math.rad(0)) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),1 / 3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1 / 2)
	end
	for i = 0,.5,0.1 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),1 / 3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(175),math.rad(-10),math.rad(10)) * rscp,1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-5),math.rad(-5),math.rad(0)) * lscp,1 / 3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(-5),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(-4),math.rad(0),math.rad(0)),1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(0),math.rad(-70),math.rad(0)) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),1 / 3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1 / 2)
	end
	attack = false
	walkspeed = 10
	swait(36)
	for i = 1,75 do
		local Sky = RootPart.CFrame*CFrame.new(0,600,0)
		local MoPos = Mouse.Hit*CFrame.new(math.random(-18,18),0,math.random(-18,18)).p
		local DISTANCE = (Sky.p - MoPos).Magnitude
		Lightning(Sky.p,MoPos,35.137,7,Color3.new(0,0,1),25,2,4,0,true,55)
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(1,1,DISTANCE),Size2 = Vector3.new(2,2,DISTANCE),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(Sky.p,MoPos) * CFrame.new(0,0,-DISTANCE / 2),MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(0,0,1),SoundID = 192410089,SoundPitch = .55,SoundVolume = 8,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
		local a = math.random(1,2)
		if a == 1 then
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(0.1,0.1,0.1),Size2 = Vector3.new(0.3,0,0.3),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(0,0,1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
		else
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(0.1,0.1,0.1),Size2 = Vector3.new(0.3,0,0.3),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
		end
		mdmg(MoPos,12)
		swait(5)
	end
end
function SingularityBeam()
	attack = true
	walkspeed = 0
	AttackGyro()
	for i = 0,0.5,0.05 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-60)),1 / 3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(60)),1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.25,0.5,-.25) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60)) * rscp,1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.25,0.5,-.25) * CFrame.Angles(math.rad(95),math.rad(0),math.rad(10)) * lscp,1 / 3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(-5),math.rad(75),math.rad(0)) * CFrame.Angles(math.rad(-4),math.rad(0),math.rad(0)),1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(0),math.rad(-65),math.rad(0)) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),1 / 3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1 / 2)
	end
	local HoleDist = (Hole.Position - Holetwo.Position).Magnitude
	local chargebeam = CreatePart(3,Effects,"Neon",0,0,shade,"Charge Beam",Vector3.new(.25,HoleDist,.25),false)
	MakeForm(chargebeam,"Cyl")
	chargebeam.CFrame = CFrame.new(Hole.Position,Holetwo.Position) * CFrame.new(0,0,-HoleDist/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
	local chargeweld = weldBetween(GUN.PrimaryPart,chargebeam)
	local chargeball = CreatePart(3,Effects,"Neon",0,0,shade,"Charge Ball",Vector3.new(.5,.5,.5),false)
	chargeball.Shape = "Ball"
	chargeball.CFrame = Holetwo.CFrame
	weldBetween(Holetwo,chargeball)
	CreateSound(342793847,Hole,10,1,false)
	local bigball = game:GetService("TweenService"):Create(chargeball,TweenInfo.new(3.86,Enum.EasingStyle.Linear),{Size = Vector3.new(2.5,2.5,2.5)})
	bigball:Play()
	bigball.Completed:Wait()
	chargebeam:Destroy()
	local KillDist = (Holetwo.Position - Mouse.Hit.p).Magnitude
	coroutine.resume(coroutine.create(function()
		repeat KillDist = (Holetwo.Position - Mouse.Hit.p).Magnitude Swait() until attack == false
	end))
	local killbeam = CreatePart(3,Effects,"Neon",0,0,shade,"Kill Beam",Vector3.new(2.5,KillDist,2.5))
	MakeForm(killbeam,"Cyl")
	killbeam.Touched:Connect(function(victim)
		mdmg(victim.Position,5)
	end)
	coroutine.resume(coroutine.create(function()
		while killbeam:IsDescendantOf(game) do
			mdmg(Mouse.Hit.p,5)
			Swait(6)
		end
	end))
	coroutine.resume(coroutine.create(function()
		local isdoingathing = false
		while killbeam:IsDescendantOf(game) do
			isdoingathing = not isdoingathing
			if lplr.Name == USERNAME then
				RootPart.CFrame = RootPart.CFrame * CFrame.new(0,0,.1)
			end
			killbeam.Size = Vector3.new(2.5,KillDist,2.5)
			killbeam.CFrame = CFrame.new(Holetwo.Position,Mouse.Hit.p) * CFrame.new(0,0,-KillDist/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
			if isdoingathing then
				Lightning(Holetwo.Position,Mouse.Hit.p,15,3,Color3.new(0,0,1),10,0,1,0,true,55)
				Effect({Time = 10,EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
				Effect({Time = 10,EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
				Effect({Time = 10,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
				Effect({Time = 10,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
				Effect({Time = 10,EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
				Effect({Time = 10,EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
			end
			Swait()
		end
	end))
	CreateSound(138677306,Holetwo,10,1,false)
	CreateSound(415700134,Holetwo,10,1,false)
	Swait(150)
	CreateSound(3264923,Holetwo,10,1,false)
	Swait(30)
	chargeball:Destroy()
	killbeam:Destroy()
	walkspeed = 10
	attack = false
end
local taunt = MainFolder.Taunt
Mouse.Button1Down:Connect(function()
	if attack == false and taunt.Value == "None" then
		attackone()
	end
end)
Mouse.KeyDown:Connect(function(k)
	k = k:lower()
	if k == "z" and attack == false and taunt.Value == "None" then	
		hedshoot()
	elseif k == "x" and attack == false and taunt.Value == "None" then
		SingularityBeam()
	elseif k == "c" and attack == false and taunt.Value == "None" then
		painlessrain()
	elseif k == "v" and attack == false and taunt.Value == "None" then
		attacktwo()
	elseif k == "f" then
		if taunt.Value ~= "Fave" then
			MainFolder.TauntRemote:FireServer("Fave",290182215)
		else
			MainFolder.TauntRemote:FireServer("None",2581112923)
		end
	elseif k == "k" then
		if taunt.Value ~= "Krump" then
			MainFolder.TauntRemote:FireServer("Krump",1511734302)
		else
			MainFolder.TauntRemote:FireServer("None",2581112923)
		end
	end
end)




local ActualVelocity = Vector3.new()
if lplr.Name == USERNAME then
	spawn(function()
		while true do
			local Positions = {}
			local Speeds = {}
			for i = 1,10 do
				table.insert(Positions,RootPart.CFrame)
				table.insert(Speeds,RootPart.Velocity)
				script.ArtificialHB2.Event:Wait()
			end
			Movement:FireServer(Positions,Speeds)
		end
	end)
	spawn(function()
		while true do
			game:GetService("RunService").RenderStepped:Wait()
			RealRoot = workspace:WaitForChild(USERNAME.." has a gun")
			RealRoot.CFrame = RootPart.CFrame
		end
	end)
	Movement.OnClientEvent:Connect(function()
		
	end)
end

if lplr.Name ~= USERNAME then
	local Last = RootPart.Position
	Movement.OnClientEvent:Connect(function(v,Speed)
		for i,v2 in pairs(v) do
			ActualVelocity = Speed[i]
			if v[i].p ~= Last then
				Last = v[i].p
				script.ArtificialHB2.Event:Wait()
			end
		end
	end)
	spawn(function()
		while true do
			game:GetService("RunService").RenderStepped:Wait()
			RealRoot = workspace:WaitForChild(USERNAME.." has a gun")
			if not alreadyfixing then
				RootPart.Anchored = true
				RootPart.CFrame = RealRoot.CFrame
			end
		end
	end)
end
coroutine.wrap(function()
	while 1 do
		swait()
		if doe <= 360 then
			doe = doe + 2
		else
			doe = 0
		end
	end
end)()
local antivoid = Instance.new("Part")
antivoid.Size = Vector3.new(400,10,400)
antivoid.Anchored = true
antivoid.Transparency = 1
antivoid.Parent = workspace
coroutine.resume(coroutine.create(function()
	while true do
		swait()
		if not alreadyfixing then
			antivoid.Position = Vector3.new(RootPart.Position.X,workspace.FallenPartsDestroyHeight+5,RootPart.Position.Z)
		end
	end
end))
while true do
	swait()
	while true do
		swait()
		if not alreadyfixing then
			for i,v in pairs(Character:GetChildren()) do
				if v:IsA("BasePart") and v.Anchored == false and v.Position.Y < (workspace.FallenPartsDestroyHeight + 50) then
					local flot = Instance.new("BodyPosition")
					local spen = Instance.new("BodyGyro")
					local hu = math.huge
					flot.MaxForce = Vector3.new(hu,hu,hu)
					spen.MaxTorque = Vector3.new(hu,hu,hu)
					local spown = nil
					for o,b in pairs(workspace:GetDescendants()) do
						if not b:IsDescendantOf(Character) and b:IsA("SpawnLocation") then
							spown = b
						end
					end
					if spown then
						RootPart.CFrame = CFrame.new(spown.Position.X,spown.Position.Y+(spown.Size.Y/2)+3,spown.Position.Z)
					else
						local base = workspace:FindFirstChild("Base")
						if not base then
							base = workspace:FindFirstChild("Baseplate")
						end
						if base then
							RootPart.CFrame = CFrame.new(math.clamp(RootPart.Position.X,-base.Size.X/2,base.Size.X/2),base.Position.Y+(base.Size.Y/2)+3,math.clamp(RootPart.Position.Z,-base.Size.X/2,base.Size.X/2))
						else
							RootPart.CFrame = CFrame.new(math.clamp(RootPart.Position.X,-100,100),20,math.clamp(RootPart.Position.Z,-100,100))
						end
					end
					flot.Position = RootPart.Position
					flot.Parent = RootPart
					spen.CFrame = RootPart.CFrame
					spen.Parent = RootPart
					coroutine.resume(coroutine.create(function()
						game:GetService("Debris"):AddItem(flot,1)
						game:GetService("Debris"):AddItem(spen,1)
					end))
				end
			end
			Torsovelocity = (ActualVelocity * Vector3.new(1,0,1)).magnitude
			if lplr.Name == USERNAME then
				Torsovelocity = (RootPart.Velocity * Vector3.new(1,0,1)).magnitude
			end 
			sine = sine + change
			local hit,pos = rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
			if taunt.Value == "None" then
				if Anim == "Walk" and Torsovelocity > 1 then
					RootJoint.C1 = Clerp(RootJoint.C1,rc0 * CFrame.new(0,0,0.1 + 0.05 * math.cos(sine / 6)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),2 / 3)
					Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0) - Head.RotVelocity.Y / 30),0.2 / 3)
					RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,.95-.2*math.sin(sine/12),-.15*math.sin(sine/12)) * CFrame.Angles(math.rad(-5),math.rad(90),math.rad(0)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10+35 * math.cos(sine / 12))),0.6 / 3)
					LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,.95+.2*math.sin(sine/12),.15*math.sin(sine/12)) * CFrame.Angles(math.rad(-5),math.rad(-90),math.rad(0)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(10+35 * math.cos(sine / 12))),0.6 / 3)
				elseif (Anim ~= "Walk") or (Torsovelocity < 1) then
					RootJoint.C1 = Clerp(RootJoint.C1,rc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.2 / 3)
					Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.2 / 3)
					RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.7 / 3)
					LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.7 / 3)
				end
				if RootPart.Velocity.y > 1 and hit == nil then 
					Anim = "Jump"
					if attack == false then
						RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new(0,0,0 ) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),1 / 3)
						Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0 ,0 + ((1) - 1)) * CFrame.Angles(math.rad(-25),math.rad(0),math.rad(10)),1 / 3)
						RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-50),math.rad(0),math.rad(0 + 10 * math.cos(sine / 12))) * rscp,1 / 3)
						LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(50),math.rad(0),math.rad(-25 - 10 * math.cos(sine / 12))) * lscp,1 / 3)
						RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.4,-0.6) * CFrame.Angles(math.rad(1),math.rad(90),math.rad(0)) * CFrame.Angles(math.rad(-1 * math.sin(sine / 6)),math.rad(0),math.rad(0)),1 / 3)
						LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(0),math.rad(-85),math.rad(0)) * CFrame.Angles(math.rad(-1 * math.sin(sine / 6)),math.rad(0),math.rad(0)),1 / 3)
						GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1 / 2)
					end
				elseif RootPart.Velocity.y < -1 and hit == nil then 
					Anim = "Fall"
					if attack == false then
						RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new(0,0,0 ) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(0)),1 / 3)
						Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0 ,0 + ((1) - 1)) * CFrame.Angles(math.rad(-15),math.rad(2.5),math.rad(5+5 * math.cos(sine / 12))),1 / 3)
						RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-90 - 4 * math.cos(sine / 6)),math.rad(0),math.rad(0 + 10 * math.cos(sine / 12))) * rscp,1 / 3)
						LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(35 - 4 * math.cos(sine / 6)),math.rad(0),math.rad(-45 - 10 * math.cos(sine / 12))) * lscp,1 / 3)
						RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.3,-0.7) * CFrame.Angles(math.rad(-25 + 5 * math.sin(sine / 12)),math.rad(90),math.rad(0)) * CFrame.Angles(math.rad(-1 * math.sin(sine / 6)),math.rad(0),math.rad(0)),1 / 3)
						LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-0.8,-0.3) * CFrame.Angles(math.rad(-10),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(-1 * math.sin(sine / 6)),math.rad(0),math.rad(0)),1 / 3)
						GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1 / 2)
					end
				elseif Torsovelocity < 1 and hit ~= nil then
					Anim = "Idle"
					if attack == false then
						change = 1
						RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new(0,0,0 + 0.05 * math.cos(sine / 12)) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(0)),1 / 3)
						Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(-15 - 3 * math.cos(sine / 12)),math.rad(5),math.rad(0)),1 / 3)
						RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5 + 0.1 * math.cos(sine / 12),0) * CFrame.Angles(math.rad(-53.75+1.75 * math.cos(sine / 12)),math.rad(0),math.rad(5)) * rscp,1 / 3)
						LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5 + 0.1 * math.cos(sine / 12),-0) * CFrame.Angles(math.rad(15 - 1.5 * math.cos(sine / 12)),math.rad(0 - 6 * math.cos(sine / 12)),math.rad(0 - 6 * math.cos(sine / 12))) * lscp,1 / 3)
						RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1.1 - 0.05 * math.cos(sine / 12),0) * CFrame.Angles(math.rad(15),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(-4),math.rad(0),math.rad(0)),1 / 3)
						LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1.1 - 0.05 * math.cos(sine / 12),0) * CFrame.Angles(math.rad(10),math.rad(-70),math.rad(0)) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),1 / 3)
						GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-106.3-.9*math.cos(sine/12)),math.rad(0),math.rad(0)),1 / 2)
					end
				elseif Torsovelocity > 2 and hit ~= nil then
					Anim = "Walk"
					if attack == false then
						RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new(0,0,0 + 0.05 * math.cos(sine / 12)) * CFrame.Angles(math.rad(20),math.rad(0 + 2.5 * math.cos(sine / 12)),math.rad(0 - 2.5 * math.cos(sine / 12))),1 / 3)
						Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(-20 - 3 * math.cos(sine / 12)),math.rad(0 - 2.5 * math.cos(sine / 12)),math.rad(0 - 2.5 * math.cos(sine / 12))),1 / 3)
						RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-60 - 5 * math.cos(sine / 12)),math.rad(0 - 2.5 * math.cos(sine / 12)),math.rad(5 + 2.5 * math.cos(sine / 12))) * rscp,1 / 3)
						LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0 - 0.2 * math.cos(sine / 12)) * CFrame.Angles(math.rad(20 - 45 * math.cos(sine / 12)),math.rad(0 - 10 * math.cos(sine / 12)),math.rad(0 + 2.5 * math.cos(sine / 12))) * lscp,1 / 3)
						RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1 ,-1,0) * CFrame.Angles(math.rad(0),math.rad(85),math.rad(0)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1 / 3)
						LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(0),math.rad(-85),math.rad(0)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1 / 3)
						GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-93.75+7.25*math.cos(sine/12)),math.rad(0),math.rad(0)),1 / 2)
					end
				end
				GUN.Base.Transparency = 0
				GUN.GunAdditions.Transparency = 0
				GUN.NeonParts.Transparency = 0
			else
				GUN.Base.Transparency = 1
				GUN.GunAdditions.Transparency = 1
				GUN.NeonParts.Transparency = 1
				if taunt.Value == "Fave" then
					RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1)
					Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)) * rscp,1)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.3,0.7,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-135)) * lscp,1)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(.5,-2,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-.9,-1.9,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-25)),1)
					RightHip.C1 = Clerp(RightHip.C1,CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1)
					LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0,-1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1)
				end
				if taunt.Value == "Krump" then
					RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new(0+1*math.sin(sine/3),0+1*math.cos(sine/3),-.75) * CFrame.Angles(math.rad(0),math.rad(-10),math.rad(0)),1)
					Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)) * rscp,1)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)) * lscp,1)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1.5,-1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(70)),1)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-.5,-1.25,-.25) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)),1)
					RightHip.C1 = Clerp(RightHip.C1,CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1)
					LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0,-1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1)
				end
			end
		end
	end
end
end))
LocalScript4.Disabled = true
Model5.Name = "Character"
Model5.Parent = LocalScript4
Model5.PrimaryPart = Part6
Part6.Name = "HumanoidRootPart"
Part6.Parent = Model5
Part6.CFrame = CFrame.new(101.801643, 15.1891041, 157.816467, 1, 1.15637694e-10, -0.000152392866, -1.17444401e-10, 1, -1.18555379e-08, 0.000152392866, 1.18555556e-08, 1)
Part6.Orientation = Vector3.new(0, -0.0099999997764826, 0)
Part6.Position = Vector3.new(101.80164337158, 15.1891040802, 157.81646728516)
Part6.Rotation = Vector3.new(0, -0.0099999997764826, 0)
Part6.Color = Color3.new(1, 1, 1)
Part6.Transparency = 1
Part6.Size = Vector3.new(2, 2, 1)
Part6.BottomSurface = Enum.SurfaceType.Smooth
Part6.BrickColor = BrickColor.new("Institutional white")
Part6.CanCollide = false
Part6.CustomPhysicalProperties = 100, 0.300000012, 0.5, 1, 1
Part6.Locked = true
Part6.TopSurface = Enum.SurfaceType.Smooth
Part6.brickColor = BrickColor.new("Institutional white")
Motor6D7.Name = "RootJoint"
Motor6D7.Parent = Part6
Motor6D7.MaxVelocity = 0.10000000149012
Motor6D7.C0 = CFrame.new(0, 0.032165695, -1.40600709e-09, -1, 8.44439185e-08, -2.26266756e-08, 3.53712012e-16, 0.258818984, 0.965925872, 8.74227766e-08, 0.965925872, -0.258819014)
Motor6D7.C1 = CFrame.new(0, 0, 0, -1, 8.74227268e-08, 1.01246907e-21, 3.82136712e-15, 4.37113528e-08, 1, 8.74227268e-08, 1, -4.37113599e-08)
Motor6D7.Part0 = Part6
Motor6D7.Part1 = Part8
Motor6D7.part1 = Part8
Part8.Name = "Torso"
Part8.Parent = Model5
Part8.CFrame = CFrame.new(101.801643, 15.2212696, 157.816467, 1, 3.94196504e-05, -0.000147203173, 2.25092176e-08, 0.965925872, 0.258818954, 0.000152389883, -0.258818984, 0.965925872)
Part8.Orientation = Vector3.new(-15, -0.0099999997764826, 0)
Part8.Position = Vector3.new(101.80164337158, 15.221269607544, 157.81646728516)
Part8.Rotation = Vector3.new(-15, -0.0099999997764826, 0)
Part8.Color = Color3.new(1, 1, 1)
Part8.Size = Vector3.new(2, 2, 1)
Part8.BottomSurface = Enum.SurfaceType.Smooth
Part8.BrickColor = BrickColor.new("Institutional white")
Part8.CustomPhysicalProperties = 100, 0.300000012, 0.5, 1, 1
Part8.Locked = true
Part8.Material = Enum.Material.SmoothPlastic
Part8.TopSurface = Enum.SurfaceType.Smooth
Part8.brickColor = BrickColor.new("Institutional white")
Motor6D9.Name = "Left Hip"
Motor6D9.Parent = Part8
Motor6D9.MaxVelocity = 0.10000000149012
Motor6D9.C0 = CFrame.new(-1, -1.13216567, 0, 0.342020154, 0.0818995982, -0.936116815, -0.163175911, 0.986236572, 0.0266664606, 0.925416589, 0.14363125, 0.350676835)
Motor6D9.C1 = CFrame.new(-0.5, 1, 0, -4.37113918e-08, -0, -1, 0, 1, -0, 1, 0, -4.37113918e-08)
Motor6D9.Part0 = Part8
Motor6D9.Part1 = Part14
Motor6D9.part1 = Part14
Motor6D10.Name = "Left Shoulder"
Motor6D10.Parent = Part8
Motor6D10.MaxVelocity = 0.10000000149012
Motor6D10.C0 = CFrame.new(-1.00245762, 0.523578882, 0.0244561452, -0.0673661381, 0.0671040267, -0.995469153, -0.242154032, 0.966803789, 0.0815589428, 0.967896283, 0.246551186, -0.0488803275)
Motor6D10.C1 = CFrame.new(0.5, 0.499975681, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Motor6D10.Part0 = Part8
Motor6D10.Part1 = Part16
Motor6D10.part1 = Part16
Motor6D11.Name = "Right Shoulder"
Motor6D11.Parent = Part8
Motor6D11.MaxVelocity = 0.10000000149012
Motor6D11.C0 = CFrame.new(1.0019027, 0.537878335, 0.0346295051, 2.47024618e-05, -0.0871479735, 0.996189892, -0.794662535, 0.604737043, 0.0529180542, -0.607042491, -0.791640103, -0.0692365095)
Motor6D11.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Motor6D11.Part0 = Part8
Motor6D11.Part1 = Part17
Motor6D11.part1 = Part17
Motor6D12.Name = "Neck"
Motor6D12.Parent = Part8
Motor6D12.MaxVelocity = 0.10000000149012
Motor6D12.C0 = CFrame.new(0, 1, 0, -0.996194601, -1.92179914e-06, -0.0871578082, -0.083380565, -0.291180104, 0.953027725, -0.0253804531, 0.956668317, 0.290071845)
Motor6D12.C1 = CFrame.new(0, -0.5, 0, -1, 8.74227268e-08, 1.01246907e-21, 3.82136712e-15, 4.37113528e-08, 1, 8.74227268e-08, 1, -4.37113599e-08)
Motor6D12.Part0 = Part8
Motor6D12.Part1 = Part19
Motor6D12.part1 = Part19
Motor6D13.Name = "Right Hip"
Motor6D13.Parent = Part8
Motor6D13.MaxVelocity = 0.10000000149012
Motor6D13.C0 = CFrame.new(1, -1.13216567, 0, 0.173648208, -0.0686967075, 0.982408822, 0.254886985, 0.966708004, 0.022545591, -0.951251268, 0.246488214, 0.185377002)
Motor6D13.C1 = CFrame.new(0.5, 1, 0, -4.37113918e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113918e-08)
Motor6D13.Part0 = Part8
Motor6D13.Part1 = Part15
Motor6D13.part1 = Part15
Part14.Name = "Left Leg"
Part14.Parent = Model5
Part14.CFrame = CFrame.new(101.187767, 13.0796165, 158.060013, 0.936167359, 0.0819173306, 0.34187752, -0.116519615, 0.989805877, 0.0818995237, -0.331683427, -0.116507113, 0.936168969)
Part14.Orientation = Vector3.new(-4.6999998092651, 20.059999465942, -6.710000038147)
Part14.Position = Vector3.new(101.18776702881, 13.079616546631, 158.06001281738)
Part14.Rotation = Vector3.new(-5, 19.989999771118, -5)
Part14.Color = Color3.new(1, 1, 1)
Part14.Size = Vector3.new(1, 2, 1)
Part14.BottomSurface = Enum.SurfaceType.Smooth
Part14.BrickColor = BrickColor.new("Institutional white")
Part14.CanCollide = false
Part14.CustomPhysicalProperties = 100, 0.300000012, 0.5, 1, 1
Part14.Locked = true
Part14.Material = Enum.Material.SmoothPlastic
Part14.TopSurface = Enum.SurfaceType.Smooth
Part14.brickColor = BrickColor.new("Institutional white")
Part15.Name = "Right Leg"
Part15.Parent = Model5
Part15.CFrame = CFrame.new(102.379105, 13.0952396, 158.03508, 0.982382417, -0.0686948821, -0.173798323, 0.0697564781, 0.997564077, -7.4505806e-08, 0.173374981, -0.0121235102, 0.984781325)
Part15.Orientation = Vector3.new(0, -10.010000228882, 4)
Part15.Position = Vector3.new(102.37910461426, 13.095239639282, 158.03507995605)
Part15.Rotation = Vector3.new(0, -10.010000228882, 4)
Part15.Color = Color3.new(1, 1, 1)
Part15.Size = Vector3.new(1, 2, 1)
Part15.BottomSurface = Enum.SurfaceType.Smooth
Part15.BrickColor = BrickColor.new("Institutional white")
Part15.CanCollide = false
Part15.CustomPhysicalProperties = 100, 0.300000012, 0.5, 1, 1
Part15.Locked = true
Part15.Material = Enum.Material.SmoothPlastic
Part15.TopSurface = Enum.SurfaceType.Smooth
Part15.brickColor = BrickColor.new("Institutional white")
Part16.Name = "Left Arm"
Part16.Parent = Model5
Part16.CFrame = CFrame.new(100.267921, 15.2675896, 157.676224, 0.995458722, 0.0671058446, -0.0675181597, -0.0661287159, 0.997672915, 0.0166070759, 0.0684754774, -0.0120667964, 0.997579873)
Part16.Orientation = Vector3.new(-0.94999998807907, -3.8699998855591, -3.789999961853)
Part16.Position = Vector3.new(100.26792144775, 15.267589569092, 157.67622375488)
Part16.Rotation = Vector3.new(-0.94999998807907, -3.8699998855591, -3.8599998950958)
Part16.Color = Color3.new(1, 1, 1)
Part16.Size = Vector3.new(1, 2, 1)
Part16.BottomSurface = Enum.SurfaceType.Smooth
Part16.BrickColor = BrickColor.new("Institutional white")
Part16.CanCollide = false
Part16.CustomPhysicalProperties = 100, 0.300000012, 0.5, 1, 1
Part16.Locked = true
Part16.Material = Enum.Material.SmoothPlastic
Part16.TopSurface = Enum.SurfaceType.Smooth
Part16.brickColor = BrickColor.new("Institutional white")
Part17.Name = "Right Arm"
Part17.Parent = Model5
Part17.CFrame = CFrame.new(103.345169, 15.5767612, 158.131241, 0.996202171, -0.0870075971, -8.27357289e-05, 0.0331952199, 0.379239738, 0.924699187, -0.0804217234, -0.921196342, 0.380684316)
Part17.Orientation = Vector3.new(-67.620002746582, -0.0099999997764826, 5)
Part17.Position = Vector3.new(103.34516906738, 15.576761245728, 158.13124084473)
Part17.Rotation = Vector3.new(-67.620002746582, 0, 4.9899997711182)
Part17.Color = Color3.new(1, 1, 1)
Part17.Size = Vector3.new(1, 2, 1)
Part17.BottomSurface = Enum.SurfaceType.Smooth
Part17.BrickColor = BrickColor.new("Institutional white")
Part17.CanCollide = false
Part17.CustomPhysicalProperties = 100, 0.300000012, 0.5, 1, 1
Part17.Locked = true
Part17.Material = Enum.Material.SmoothPlastic
Part17.TopSurface = Enum.SurfaceType.Smooth
Part17.brickColor = BrickColor.new("Institutional white")
Humanoid18.Parent = Model5
Humanoid18.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
Humanoid18.LeftLeg = Part14
Humanoid18.MaxSlopeAngle = 89.900001525879
Humanoid18.RightLeg = Part15
Humanoid18.Torso = Part6
Humanoid18.WalkSpeed = 10
Part19.Name = "Head"
Part19.Parent = Model5
Part19.CFrame = CFrame.new(101.758102, 16.6850109, 157.574402, 0.996194124, -0.0871629417, -0.000154307912, 0.0871084034, 0.995630264, -0.0336545408, 0.00308705866, 0.0335129946, 0.999433577)
Part19.Orientation = Vector3.new(1.9299999475479, -0.0099999997764826, 5)
Part19.Position = Vector3.new(101.75810241699, 16.685010910034, 157.57440185547)
Part19.Rotation = Vector3.new(1.9299999475479, -0.0099999997764826, 5)
Part19.Color = Color3.new(1, 1, 1)
Part19.Size = Vector3.new(2, 1, 1)
Part19.BottomSurface = Enum.SurfaceType.Smooth
Part19.BrickColor = BrickColor.new("Institutional white")
Part19.CustomPhysicalProperties = 100, 0.300000012, 0.5, 1, 1
Part19.Locked = true
Part19.Material = Enum.Material.Neon
Part19.TopSurface = Enum.SurfaceType.Smooth
Part19.brickColor = BrickColor.new("Institutional white")
SpecialMesh20.Parent = Part19
SpecialMesh20.Scale = Vector3.new(1.25, 1.25, 1.25)
Folder21.Name = "Eyes"
Folder21.Parent = Part19
Part22.Name = "RightEye"
Part22.Parent = Folder21
Part22.CFrame = CFrame.new(101.86821, 16.8579254, 157.1996, 0.947401047, -0.0871629417, -0.307951272, 0.0724474564, 0.995630264, -0.0589225665, 0.311741471, 0.0335129946, 0.949575841)
Part22.Orientation = Vector3.new(3.3800001144409, -17.969999313354, 4.1599998474121)
Part22.Position = Vector3.new(101.86820983887, 16.857925415039, 157.19960021973)
Part22.Rotation = Vector3.new(3.5499999523163, -17.940000534058, 5.2600002288818)
Part22.Color = Color3.new(1, 1, 1)
Part22.Size = Vector3.new(0.10000000149012, 0.5, 0.5)
Part22.BrickColor = BrickColor.new("Institutional white")
Part22.CanCollide = false
Part22.Locked = true
Part22.Material = Enum.Material.Neon
Part22.brickColor = BrickColor.new("Institutional white")
SpecialMesh23.Parent = Part22
SpecialMesh23.MeshType = Enum.MeshType.Sphere
Weld24.Parent = Part22
Weld24.C0 = CFrame.new(0, 0.150000006, 0, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
Weld24.C1 = CFrame.new(0, 0, 0.400000006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld24.Part0 = Part19
Weld24.Part1 = Part22
Weld24.part1 = Part22
Part25.Name = "LeftEye"
Part25.Parent = Folder21
Part25.CFrame = CFrame.new(101.621964, 16.8363934, 157.198837, 0.947496414, -0.0871629417, 0.307657778, 0.0932446495, 0.995630264, -0.00509297289, -0.30586946, 0.0335129946, 0.951483548)
Part25.Orientation = Vector3.new(0.28999999165535, 17.920000076294, 5.3499999046326)
Part25.Position = Vector3.new(101.62196350098, 16.836393356323, 157.19883728027)
Part25.Rotation = Vector3.new(0.31000000238419, 17.920000076294, 5.2600002288818)
Part25.Color = Color3.new(1, 1, 1)
Part25.Size = Vector3.new(0.10000000149012, 0.5, 0.5)
Part25.BrickColor = BrickColor.new("Institutional white")
Part25.CanCollide = false
Part25.Locked = true
Part25.Material = Enum.Material.Neon
Part25.brickColor = BrickColor.new("Institutional white")
SpecialMesh26.Parent = Part25
SpecialMesh26.MeshType = Enum.MeshType.Sphere
Weld27.Parent = Part25
Weld27.C0 = CFrame.new(0, 0.150000006, 0, 0.951068401, 0, 0.308980465, 0, 1, 0, -0.308980465, 0, 0.951068401)
Weld27.C1 = CFrame.new(0, 0, 0.400000006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld27.Part0 = Part19
Weld27.Part1 = Part25
Weld27.part1 = Part25
Part28.Name = "Visualizer"
Part28.Parent = Model5
Part28.CFrame = CFrame.new(101.801643, 12.1991043, 157.816467, -1.15637694e-10, 1, -0.000152392866, -1, -1.17444401e-10, -1.18555379e-08, -1.18555556e-08, 0.000152392866, 1)
Part28.Orientation = Vector3.new(0, -0.0099999997764826, -90)
Part28.Position = Vector3.new(101.80164337158, 12.199104309082, 157.81646728516)
Part28.Rotation = Vector3.new(0, -0.0099999997764826, -90)
Part28.Color = Color3.new(1, 1, 1)
Part28.Size = Vector3.new(0.10000000149012, 1, 1)
Part28.BrickColor = BrickColor.new("Institutional white")
Part28.CanCollide = false
Part28.Locked = true
Part28.Material = Enum.Material.Neon
Part28.brickColor = BrickColor.new("Institutional white")
Part28.Shape = Enum.PartType.Cylinder
SpecialMesh29.Parent = Part28
SpecialMesh29.Scale = Vector3.new(1, 0, 0)
SpecialMesh29.MeshType = Enum.MeshType.Cylinder
Weld30.Parent = Part28
Weld30.C0 = CFrame.new(-2.99000001, 0, 0, 0, -1, 0, 1, 0, -0, 0, 0, 1)
Weld30.Part0 = Part28
Weld30.Part1 = Part6
Weld30.part1 = Part6
Model31.Name = "DarkMegaGunnModel"
Model31.Parent = Model5
Model31.PrimaryPart = Part38
MeshPart32.Name = "Base"
MeshPart32.Parent = Model31
MeshPart32.CFrame = CFrame.new(103.690544, 13.5650558, 160.958221, -0.0767894685, -0.0408363715, -0.996205211, 0.769592166, -0.637661338, -0.0331788957, -0.633893728, -0.769219458, 0.0803909525)
MeshPart32.Orientation = Vector3.new(1.8999999761581, -85.389999389648, 129.63999938965)
MeshPart32.Position = Vector3.new(103.69054412842, 13.565055847168, 160.95822143555)
MeshPart32.Rotation = Vector3.new(22.430000305176, -85.01000213623, 152)
MeshPart32.Color = Color3.new(0.156863, 0.156863, 0.156863)
MeshPart32.Size = Vector3.new(9.3614645004272, 8.6168975830078, 1.4744856357574)
MeshPart32.BrickColor = BrickColor.new("Black")
MeshPart32.CanCollide = false
MeshPart32.Locked = true
MeshPart32.Material = Enum.Material.Metal
MeshPart32.brickColor = BrickColor.new("Black")
Weld33.Parent = MeshPart32
Weld33.C1 = CFrame.new(2.41370583, 0.567933083, 0, 3.23057175e-05, -0.707153201, 0.707060337, 1.33812428e-05, 0.707060337, 0.707153201, -1, -1.33812428e-05, 3.23057175e-05)
Weld33.Part0 = Part38
Weld33.Part1 = MeshPart32
Weld33.part1 = MeshPart32
UnionOperation34.Name = "GunAdditions"
UnionOperation34.Parent = Model31
UnionOperation34.CFrame = CFrame.new(103.467781, 13.9096355, 158.375198, -0.0832046717, 0.0254414733, -0.99620229, 0.0932227671, -0.995084167, -0.0331952348, -0.992154658, -0.0956256688, 0.0804218501)
UnionOperation34.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
UnionOperation34.Position = Vector3.new(103.46778106689, 13.909635543823, 158.37519836426)
UnionOperation34.Rotation = Vector3.new(22.430000305176, -85.01000213623, -163)
UnionOperation34.Color = Color3.new(0.294118, 0.294118, 0.294118)
UnionOperation34.Size = Vector3.new(5.4976892471313, 2.1876740455627, 1.2085436582565)
UnionOperation34.BrickColor = BrickColor.new("Dark taupe")
UnionOperation34.CanCollide = false
UnionOperation34.Locked = true
UnionOperation34.Material = Enum.Material.Metal
UnionOperation34.brickColor = BrickColor.new("Dark taupe")
Weld35.Parent = UnionOperation34
Weld35.C1 = CFrame.new(-0.505199432, -1.2037611, -0.00281882286, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07)
Weld35.Part0 = Part38
Weld35.Part1 = UnionOperation34
Weld35.part1 = UnionOperation34
UnionOperation36.Name = "NeonParts"
UnionOperation36.Parent = Model31
UnionOperation36.CFrame = CFrame.new(103.597847, 13.5797834, 160.112015, -0.78584516, 0.612791598, -0.0832045451, 0.606091082, 0.789903879, 0.0932227671, 0.122844905, 0.0228265524, -0.992154539)
UnionOperation36.Orientation = Vector3.new(-5.3499999046326, -175.21000671387, 37.5)
UnionOperation36.Position = Vector3.new(103.59784698486, 13.579783439636, 160.11201477051)
UnionOperation36.Rotation = Vector3.new(-174.63000488281, -4.7699999809265, -142.05000305176)
UnionOperation36.Size = Vector3.new(2.0012748241425, 2.2143592834473, 8.9272222518921)
UnionOperation36.CanCollide = false
UnionOperation36.Locked = true
UnionOperation36.Material = Enum.Material.Neon
UnionOperation36.UsePartColor = true
Weld37.Parent = UnionOperation36
Weld37.C1 = CFrame.new(0.850799561, 1.07305336, 1.25958252, -0.772627711, -0.634859443, 0, 0.634859443, -0.772627711, 0, 0, 0, 1)
Weld37.Part0 = Part38
Weld37.Part1 = UnionOperation36
Weld37.part1 = UnionOperation36
Part38.Name = "Joint"
Part38.Parent = Model31
Part38.CFrame = CFrame.new(103.482002, 15.0604763, 158.991318, 0.996202171, 0.0254414733, -0.0832045451, 0.0331952199, -0.995084167, 0.0932227671, -0.0804217234, -0.0956256688, -0.992154539)
Part38.Orientation = Vector3.new(-5.3499999046326, -175.21000671387, 178.08999633789)
Part38.Position = Vector3.new(103.4820022583, 15.060476303101, 158.99131774902)
Part38.Rotation = Vector3.new(-174.63000488281, -4.7699999809265, -1.460000038147)
Part38.Transparency = 1
Part38.Size = Vector3.new(1.0039602518082, 1.0039602518082, 1.0039602518082)
Part38.BottomSurface = Enum.SurfaceType.Smooth
Part38.CanCollide = false
Part38.Locked = true
Part38.TopSurface = Enum.SurfaceType.Smooth
Weld39.Parent = Part38
Weld39.C0 = CFrame.new(0.049999997, -1, -0.150000006, 1, -0, 0, 0, -0.291495591, 0.956567764, -0, -0.956567764, -0.291495591)
Weld39.Part0 = Part17
Weld39.Part1 = Part38
Weld39.part1 = Part38
Part40.Name = "Hole"
Part40.Parent = Model31
Part40.CFrame = CFrame.new(103.798119, 13.2183018, 162.160294, -0.0832045451, 0.0254414733, -0.996202171, 0.0932227671, -0.995084167, -0.0331952199, -0.992154539, -0.0956256688, 0.0804217234)
Part40.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part40.Position = Vector3.new(103.79811859131, 13.218301773071, 162.1602935791)
Part40.Rotation = Vector3.new(22.430000305176, -85, -163)
Part40.Transparency = 1
Part40.Size = Vector3.new(0.20079202950001, 0.20079202950001, 0.20079202950001)
Part40.BottomSurface = Enum.SurfaceType.Smooth
Part40.CanCollide = false
Part40.Locked = true
Part40.TopSurface = Enum.SurfaceType.Smooth
Weld41.Parent = Part40
Weld41.C1 = CFrame.new(3.34219742, -1.53812981, -0.00110292435, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld41.Part0 = Part38
Weld41.Part1 = Part40
Weld41.part1 = Part40
Part42.Name = "Hole2"
Part42.Parent = Model31
Part42.CFrame = CFrame.new(104.280708, 12.6776085, 167.91481, -0.0832045451, 0.0254414733, -0.996202171, 0.0932227671, -0.995084167, -0.0331952199, -0.992154539, -0.0956256688, 0.0804217234)
Part42.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part42.Position = Vector3.new(104.28070831299, 12.67760848999, 167.91481018066)
Part42.Rotation = Vector3.new(22.430000305176, -85, -163)
Part42.Transparency = 1
Part42.Size = Vector3.new(0.20079202950001, 0.20079202950001, 0.20079202950001)
Part42.BottomSurface = Enum.SurfaceType.Smooth
Part42.CanCollide = false
Part42.Locked = true
Part42.TopSurface = Enum.SurfaceType.Smooth
Weld43.Parent = Part42
Weld43.C1 = CFrame.new(9.14221573, -1.53812981, -0.00110292435, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Weld43.Part0 = Part38
Weld43.Part1 = Part42
Weld43.part1 = Part42
Part44.Name = "Visualizer2"
Part44.Parent = Model5
Part44.CFrame = CFrame.new(101.801643, 12.1991043, 157.816467, -1.15637694e-10, 1, -0.000152392866, -1, -1.17444401e-10, -1.18555379e-08, -1.18555556e-08, 0.000152392866, 1)
Part44.Orientation = Vector3.new(0, -0.0099999997764826, -90)
Part44.Position = Vector3.new(101.80164337158, 12.199104309082, 157.81646728516)
Part44.Rotation = Vector3.new(0, -0.0099999997764826, -90)
Part44.Color = Color3.new(1, 1, 1)
Part44.Size = Vector3.new(0.10000000149012, 1, 1)
Part44.BrickColor = BrickColor.new("Institutional white")
Part44.CanCollide = false
Part44.Locked = true
Part44.Material = Enum.Material.Neon
Part44.brickColor = BrickColor.new("Institutional white")
Part44.Shape = Enum.PartType.Cylinder
SpecialMesh45.Parent = Part44
SpecialMesh45.Scale = Vector3.new(0.89999997615814, 0, 0)
SpecialMesh45.MeshType = Enum.MeshType.Cylinder
Weld46.Parent = Part44
Weld46.C0 = CFrame.new(-2.99000001, 0, 0, 0, -1, 0, 1, 0, -0, 0, 0, 1)
Weld46.Part0 = Part44
Weld46.Part1 = Part6
Weld46.part1 = Part6
Folder47.Name = "Effects"
Folder47.Parent = Model5
Pants48.Name = "DarkSuitPants"
Pants48.Parent = Model5
Pants48.PantsTemplate = "http://www.roblox.com/asset/?id=119133558"
Shirt49.Name = "DarkSuitShirt"
Shirt49.Parent = Model5
Shirt49.ShirtTemplate = "http://www.roblox.com/asset/?id=119132632"
Pants50.Name = "SuitPants"
Pants50.Parent = Model5
Pants50.PantsTemplate = "http://www.roblox.com/asset/?id=424584709"
Shirt51.Name = "SuitShirt"
Shirt51.Parent = Model5
Shirt51.ShirtTemplate = "http://www.roblox.com/asset/?id=424584670"
Model52.Name = "MegaGunnModel"
Model52.Parent = Model5
Model52.PrimaryPart = Part59
UnionOperation53.Name = "GunAdditions"
UnionOperation53.Parent = Model52
UnionOperation53.CFrame = CFrame.new(103.467064, 13.9095764, 158.37529, 0.996202171, 0.0254413243, -0.0832045898, 0.0331950746, -0.995084167, 0.0932227671, -0.080421783, -0.0956256539, -0.992154539)
UnionOperation53.Orientation = Vector3.new(-5.3499999046326, -175.21000671387, 178.08999633789)
UnionOperation53.Position = Vector3.new(103.46706390381, 13.909576416016, 158.37528991699)
UnionOperation53.Rotation = Vector3.new(-174.63000488281, -4.7699999809265, -1.460000038147)
UnionOperation53.Color = Color3.new(0.498039, 0.498039, 0.498039)
UnionOperation53.Size = Vector3.new(1.2060394287109, 2.1876678466797, 5.4976863861084)
UnionOperation53.BrickColor = BrickColor.new("Sand green")
UnionOperation53.CanCollide = false
UnionOperation53.Locked = true
UnionOperation53.Material = Enum.Material.Metal
UnionOperation53.brickColor = BrickColor.new("Sand green")
Weld54.Parent = UnionOperation53
Weld54.C1 = CFrame.new(0.00354576111, -1.20379257, -0.505163193, 1, 1.49012564e-07, 4.37125323e-08, -1.49012564e-07, 1, 1.30274895e-15, -4.37125323e-08, -7.81646578e-15, 1)
Weld54.Part0 = Part59
Weld54.Part1 = UnionOperation53
Weld54.part1 = UnionOperation53
MeshPart55.Name = "Base"
MeshPart55.Parent = Model52
MeshPart55.CFrame = CFrame.new(103.690636, 13.5651588, 160.958313, -0.0768243298, -0.040844731, -0.996202171, 0.769549251, -0.637712359, -0.0331951641, -0.63394165, -0.769176781, 0.0804217756)
MeshPart55.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 129.64999389648)
MeshPart55.Position = Vector3.new(103.69063568115, 13.565158843994, 160.95831298828)
MeshPart55.Rotation = Vector3.new(22.430000305176, -85, 152)
MeshPart55.Color = Color3.new(1, 1, 1)
MeshPart55.Size = Vector3.new(9.3249998092651, 8.5830001831055, 1.4689999818802)
MeshPart55.BrickColor = BrickColor.new("Institutional white")
MeshPart55.CanCollide = false
MeshPart55.Locked = true
MeshPart55.Material = Enum.Material.Metal
MeshPart55.brickColor = BrickColor.new("Institutional white")
Weld56.Parent = MeshPart55
Weld56.C1 = CFrame.new(2.41373444, 0.567920685, 0, 1.12379617e-08, -0.707106829, 0.707106829, -7.30561709e-08, 0.707106829, 0.707106829, -1, -5.96049574e-08, -4.3712074e-08)
Weld56.Part0 = Part59
Weld56.Part1 = MeshPart55
Weld56.part1 = MeshPart55
UnionOperation57.Name = "NeonParts"
UnionOperation57.Parent = Model52
UnionOperation57.CFrame = CFrame.new(103.597832, 13.5797682, 160.112015, -0.785840452, 0.612797558, -0.0832049847, 0.60610044, 0.789903164, 0.0932232589, 0.122845396, 0.0228259861, -0.992159724)
UnionOperation57.Orientation = Vector3.new(-5.3499999046326, -175.21000671387, 37.5)
UnionOperation57.Position = Vector3.new(103.59783172607, 13.579768180847, 160.11201477051)
UnionOperation57.Rotation = Vector3.new(-174.63000488281, -4.7699999809265, -142.05000305176)
UnionOperation57.Size = Vector3.new(2.0012748241425, 2.2143592834473, 8.9272222518921)
UnionOperation57.CanCollide = false
UnionOperation57.Locked = true
UnionOperation57.Material = Enum.Material.Neon
UnionOperation57.UsePartColor = true
Weld58.Parent = UnionOperation57
Weld58.C1 = CFrame.new(0.850805283, 1.07305908, 1.2595787, -0.772622705, -0.634868741, 1.77635684e-13, 0.634865463, -0.772626817, -1.45661261e-13, -2.30926389e-13, 0, 1.00000525)
Weld58.Part0 = Part59
Weld58.Part1 = UnionOperation57
Weld58.part1 = UnionOperation57
Part59.Name = "Joint"
Part59.Parent = Model52
Part59.CFrame = CFrame.new(103.482002, 15.0604763, 158.991318, 0.996202171, 0.0254414733, -0.0832045451, 0.0331952199, -0.995084167, 0.0932227671, -0.0804217234, -0.0956256688, -0.992154539)
Part59.Orientation = Vector3.new(-5.3499999046326, -175.21000671387, 178.08999633789)
Part59.Position = Vector3.new(103.4820022583, 15.060476303101, 158.99131774902)
Part59.Rotation = Vector3.new(-174.63000488281, -4.7699999809265, -1.460000038147)
Part59.Transparency = 1
Part59.Size = Vector3.new(1.0039602518082, 1.0039602518082, 1.0039602518082)
Part59.BottomSurface = Enum.SurfaceType.Smooth
Part59.CanCollide = false
Part59.Locked = true
Part59.TopSurface = Enum.SurfaceType.Smooth
Weld60.Parent = Part59
Weld60.C0 = CFrame.new(0.049999997, -1, -0.150000006, 1, -0, 0, 0, -0.291495591, 0.956567764, -0, -0.956567764, -0.291495591)
Weld60.Part0 = Part17
Weld60.Part1 = Part59
Weld60.part1 = Part59
Part61.Name = "Hole"
Part61.Parent = Model52
Part61.CFrame = CFrame.new(103.798119, 13.2182875, 162.160278, -0.0832045898, 0.0254414733, -0.996202171, 0.0932227671, -0.995084167, -0.0331952237, -0.992154539, -0.0956256688, 0.0804217681)
Part61.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part61.Position = Vector3.new(103.79811859131, 13.218287467957, 162.16027832031)
Part61.Rotation = Vector3.new(22.430000305176, -85, -163)
Part61.Transparency = 1
Part61.Size = Vector3.new(0.20079202950001, 0.20079202950001, 0.20079202950001)
Part61.BottomSurface = Enum.SurfaceType.Smooth
Part61.CanCollide = false
Part61.Locked = true
Part61.TopSurface = Enum.SurfaceType.Smooth
Weld62.Parent = Part61
Weld62.C1 = CFrame.new(3.34217167, -1.53814697, -0.00110816956, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
Weld62.Part0 = Part59
Weld62.Part1 = Part61
Weld62.part1 = Part61
Part63.Name = "Hole2"
Part63.Parent = Model52
Part63.CFrame = CFrame.new(104.280701, 12.6775932, 167.91478, -0.0832045898, 0.0254414733, -0.996202171, 0.0932227671, -0.995084167, -0.0331952237, -0.992154539, -0.0956256688, 0.0804217681)
Part63.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part63.Position = Vector3.new(104.28070068359, 12.677593231201, 167.91477966309)
Part63.Rotation = Vector3.new(22.430000305176, -85, -163)
Part63.Transparency = 1
Part63.Size = Vector3.new(0.20079202950001, 0.20079202950001, 0.20079202950001)
Part63.BottomSurface = Enum.SurfaceType.Smooth
Part63.CanCollide = false
Part63.Locked = true
Part63.TopSurface = Enum.SurfaceType.Smooth
Weld64.Parent = Part63
Weld64.C1 = CFrame.new(9.14218998, -1.53814697, -0.00110816956, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
Weld64.Part0 = Part59
Weld64.Part1 = Part63
Weld64.part1 = Part63
Part65.Name = "Ultra-Fabulous Hair"
Part65.Parent = Model5
Part65.CFrame = CFrame.new(101.714523, 17.182827, 157.591156, 0.996194124, -0.0871629417, -0.000154307912, 0.0871084034, 0.995630264, -0.0336545408, 0.00308705866, 0.0335129946, 0.999433577)
Part65.Orientation = Vector3.new(1.9299999475479, -0.0099999997764826, 5)
Part65.Position = Vector3.new(101.71452331543, 17.18282699585, 157.59115600586)
Part65.Rotation = Vector3.new(1.9299999475479, -0.0099999997764826, 5)
Part65.Color = Color3.new(0, 0, 0)
Part65.Size = Vector3.new(2, 2, 2)
Part65.BottomSurface = Enum.SurfaceType.Smooth
Part65.BrickColor = BrickColor.new("Really black")
Part65.CanCollide = false
Part65.Locked = true
Part65.TopSurface = Enum.SurfaceType.Smooth
Part65.brickColor = BrickColor.new("Really black")
Part65.FormFactor = Enum.FormFactor.Symmetric
Part65.formFactor = Enum.FormFactor.Symmetric
SpecialMesh66.Parent = Part65
SpecialMesh66.MeshId = "http://www.roblox.com/asset/?id=16627529"
SpecialMesh66.Scale = Vector3.new(1.0499999523163, 1.0499999523163, 1.0499999523163)
SpecialMesh66.MeshType = Enum.MeshType.FileMesh
Weld67.Name = "HairWeld"
Weld67.Parent = Part65
Weld67.C0 = CFrame.new(0, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld67.Part0 = Part19
Weld67.Part1 = Part65
Weld67.part1 = Part65
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
