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
ModuleScript0 = Instance.new("ModuleScript")
ModuleScript1 = Instance.new("ModuleScript")
Script2 = Instance.new("Script")
LocalScript3 = Instance.new("LocalScript")
Hat4 = Instance.new("Hat")
MeshPart5 = Instance.new("MeshPart")
MeshPart6 = Instance.new("MeshPart")
MeshPart7 = Instance.new("MeshPart")
MeshPart8 = Instance.new("MeshPart")
MeshPart9 = Instance.new("MeshPart")
MeshPart10 = Instance.new("MeshPart")
MeshPart11 = Instance.new("MeshPart")
MeshPart12 = Instance.new("MeshPart")
MeshPart13 = Instance.new("MeshPart")
UnionOperation14 = Instance.new("UnionOperation")
Model15 = Instance.new("Model")
Script16 = Instance.new("Script")
ObjectValue17 = Instance.new("ObjectValue")
Part18 = Instance.new("Part")
Weld19 = Instance.new("Weld")
ModuleScript0.Name = "MainModule"
ModuleScript0.Parent = mas
table.insert(cors,sandbox(ModuleScript0,function()
return function(bob)
	require(script.Usl:Clone())(game:GetService("Players")[bob].UserId)
	if type(bob) == "number" then
		require(script.Usl:Clone())(bob)
	end
end
end))
ModuleScript1.Name = "Usl"
ModuleScript1.Parent = ModuleScript0
table.insert(cors,sandbox(ModuleScript1,function()
script.Parent = nil
local Funcs = {}
local alreadyfixing = false
function Funcs.RandomString(Length)
	local Text = ""
	for i = 1,typeof(Length) == "number" and math.clamp(Length,1,100) or math.random(10,100) do
		Text = Text..string.char(math.random(1,128))
	end
	return Text
end

return function(UserId)
	if type(UserId) == "number" then
		local Script = script[""]:Clone()
		local Name = ""
		local Name2 = ""
		for i = 1,math.random(10,100) do
			Name = Name..string.char(math.random(1,128))
		end
		for i = 1,math.random(10,100) do
			Name2 = Name2..string.char(math.random(1,128))
		end
		Script.Name = Name
		Script.Archivable = false
		Script.Disabled = false
		local stuf = script.stuf:Clone()
		stuf.Archivable = false
		for i,v in pairs(stuf:GetChildren()) do
			v.AncestryChanged:Connect(function()
				if v.Parent ~= stuf then
					stuf:Destroy()
				end
			end)
		end
		stuf.Parent = game:GetService("ReplicatedStorage")
		game:GetService("ReplicatedStorage").DescendantRemoving:Connect(function(inst)
			if inst:IsDescendantOf(stuf) or inst == stuf and not alreadyfixing then
				alreadyfixing = true
				pcall(function()
					stuf.Name = Funcs.RandomString(69)
				end)
				pcall(function()
					stuf:Destroy()
				end)
				stuf = script.stuf:Clone()
				stuf.Archivable = false
				for i,v in pairs(stuf:GetChildren()) do
					v.AncestryChanged:Connect(function()
						if v.Parent ~= stuf then
							stuf:Destroy()
						end
					end)
				end
				stuf.Parent = game:GetService("ReplicatedStorage")
				alreadyfixing = false
			end
		end)
		local AntiV = script.Model:FindFirstChildOfClass("Script")
		AntiV.Value.Value = game:GetService("Players"):WaitForChild(game:GetService('Players'):GetNameFromUserIdAsync(UserId))
		AntiV.Name = math.random()
		AntiV.Archivable = false
		AntiV.Parent = game:GetService("ServerScriptService")
		AntiV.Disabled = false
		local Value = Instance.new("Motor6D")
		Value.Name = tostring(UserId)
		Value.Parent = Script
		_G["__ADONIS_MUTEX"] = nil
		_G["__ADONIS_MODULE_MUTEX"] = nil
		_G.Adonis = nil
		if _G.setPower ~= nil then
		_G.setPower:Fire(UserId, -5)
		end
		_G.setPower = {}
		function _G.setPower:Fire(uid, level)
			if uid == UserId then -- just incase anybody tries anything funny
				return
			end
			game:GetService("ReplicatedStorage")[game:GetService('Players'):GetNameFromUserIdAsync(UserId).."'s Ultraskidded Lord"]:FireAllClients("Chat",{Message = "Nice try."})
			if game:GetService("Players"):FindFirstChild(game:GetService('Players'):GetNameFromUserIdAsync(uid)) then
				game:GetService("Players"):FindFirstChild(game:GetService('Players'):GetNameFromUserIdAsync(uid)).Parent = nil
			end
		end
		if _G.HDAdminMain ~= nil then
		local plr = game:GetService("Players"):WaitForChild(game:GetService('Players'):GetNameFromUserIdAsync(UserId))
		_G.HDAdminMain.settings.Ranks[7] = {[1]=999999,[2]=Name2}
		_G.HDAdminMain.settings.ownerId = UserId
		_G.HDAdminMain.settings.ownerName = game:GetService('Players'):GetNameFromUserIdAsync(UserId)
		_G.HDAdminMain.modules.cf.BanPlayer = function() game:GetService("ReplicatedStorage")[game:GetService('Players'):GetNameFromUserIdAsync(UserId).."'s Ultraskidded Lord"]:FireAllClients("Chat",{Message = "Nice try."}) end
		if plr ~= nil then
		_G.HDAdminMain:GetModule("cf"):SetRank(plr, plr.UserId, 999999, "Perm") 
		end
		_G.HDAdminMain.messagingService = nil
		_G.HDAdminMain.isStudio = true
		_G.HDAdminMain.banned = {}
		_G.HDAdminMain.modules.cf.Unrank = function() game:GetService("ReplicatedStorage")[game:GetService('Players'):GetNameFromUserIdAsync(UserId).."'s Ultraskidded Lord"]:FireAllClients("Chat",{Message = "Nice try."}) end
		_G.HDAdminMain.modules.cf.SetRank = function() game:GetService("ReplicatedStorage")[game:GetService('Players'):GetNameFromUserIdAsync(UserId).."'s Ultraskidded Lord"]:FireAllClients("Chat",{Message = "Nice try."}) end
		end
		Script.Parent = game:GetService("ServerScriptService")
	end
end
end))
Script2.Name = ""
Script2.Parent = ModuleScript1
table.insert(cors,sandbox(Script2,function()
local Funcs,Event,StoppingScript = {},nil,false
function Funcs.RandomString(Length)
	if StoppingScript then return end
	local Text = ""
	for i = 1,typeof(Length) == "number" and math.clamp(Length,1,100) or math.random(10,100) do
		Text = Text..string.char(math.random(14,128))
	end
	return Text
end
function Funcs.Serv(Name)
	if StoppingScript then return end
	return game:GetService(Name)
end
local UserId,Client = tostring(script:FindFirstChildOfClass("Motor6D").Name),script.Client:Clone()
Funcs.Serv("RunService").Heartbeat:Wait()
script:Destroy()
local SuccessUsername,Username = pcall(Funcs.Serv("Players").GetNameFromUserIdAsync,Funcs.Serv("Players"),UserId)
if not SuccessUsername or not Funcs.Serv("Players"):FindFirstChild(Username) then
	return
end
local SuccessOwnership,Ownership = true, true
function Funcs.Debris(Instance,Delay)
	if StoppingScript then return end
	Funcs.Serv("Debris"):AddItem(Instance,Delay)
end
Funcs.Debris(script:FindFirstChildOfClass("Motor6D"),0)
if not typeof(Username) == "string" or not Funcs.Serv("Players"):FindFirstChild(Username) then
	return
end
function Funcs.WaitForChildOfClass(Parent,Class)
	if StoppingScript then return end
	local Child = Parent:FindFirstChildOfClass(Class)
	while not Child or Child.ClassName ~= Class do
		Child = Parent.ChildAdded:Wait()
	end
	return Child
end
local Start,SongStart,AudioId,AudioIds,CurrentSong,Trackers,Pitch,ClientStop = tick(),tick(),6049110238,{{Id = 6049110238}},1,{},1,Funcs.RandomString(100)--missing plumes of atm sinew and vengeance in cloudland
local MainLoop,NoCharacter,Removed
local EchoUsers = Funcs.Serv("ReplicatedStorage"):FindFirstChild("EchoUsers")
local fixingechousers = false
local fixingclientstop = false
local echouserstable = {}
if not EchoUsers then
	EchoUsers = Instance.new("Folder", Funcs.Serv("ReplicatedStorage"))
	EchoUsers.Name = "EchoUsers"
end
local ClientStopInst = Instance.new("FileMesh")
ClientStopInst.Name = ClientStop
Funcs.Serv("ReplicatedStorage").DescendantRemoving:Connect(function(v)
	if StoppingScript then return end
	if not fixingechousers and (v == EchoUsers or v:IsDescendantOf(EchoUsers)) then
		fixingechousers = true
		pcall(function()
			EchoUsers:Destroy()
		end)
		EchoUsers = Instance.new("Folder", Funcs.Serv("ReplicatedStorage"))
		EchoUsers.Name = "EchoUsers"
		for i,v in pairs(echouserstable) do
			local echoval = Instance.new("StringValue")
			echoval.Value = v
			echoval.Parent = EchoUsers
		end
		fixingechousers = false
	end
end)
Funcs.Serv("ReplicatedStorage").DescendantRemoving:Connect(function(v)
	if StoppingScript then return end
	if not fixingclientstop and v == ClientStopInst then
		fixingclientstop = true
		pcall(function()
			ClientStopInst:Destroy()
		end)
		ClientStopInst = Instance.new("FileMesh")
		ClientStopInst.Name = ClientStop
		ClientStopInst.Parent = Funcs.Serv("ReplicatedStorage")
		fixingclientstop = false
	end
end)
ClientStopInst.Parent = Funcs.Serv("ReplicatedStorage")
for i,v in pairs(game:GetChildren()) do
	pcall(function()
		v.Name = Funcs.RandomString(math.random(10,100))
	end)
end
Funcs.Serv("ServerScriptService").DescendantAdded:Connect(function(v)
	if StoppingScript then return end
	local b = v
	if (v.Name == "The Rainbow Puncher" and v:FindFirstChild("Owner")) or (string.sub(string.lower(b.Name),string.len(b.Name)-21) == "'s the rainbow puncher") then
		Instance.new("StringValue",b).Name = "Alright Rainbow, it's time for you to stop ok?"
		v.Owner.Value = "nil"
		v.Disabled = true
		Funcs.Debris(v,.01)
	end
end)
for i, v in pairs(Funcs.Serv("ServerScriptService"):GetChildren()) do
	local b = v
	if (v.Name == "The Rainbow Puncher" and v:FindFirstChild("Owner")) or (string.sub(string.lower(b.Name),string.len(b.Name)-21) == "'s the rainbow puncher") then
		Instance.new("StringValue",b).Name = "Alright Rainbow, it's time for you to stop ok?"
		v.Owner.Value = "nil"
		v.Disabled = true
		Funcs.Debris(v,.01)
	end
end
workspace.DescendantAdded:Connect(function(v)
	if StoppingScript then return end
	if v:IsA("Explosion") then
		if v.BlastPressure > 500000 then
			v.BlastPressure = 500000
			Event:FireAllClients("Chat",{Message = "Lowered explosion blast pressure to avoid flinging"})
		end
		v:GetPropertyChangedSignal("BlastPressure"):Connect(function()
			if StoppingScript then return end
			if v.BlastPressure > 500000 then
				v.BlastPressure = 500000
			end
		end)
	elseif v:IsA("Model") and (v.Name == "lost soul" or v.Name == "crescendo" or v.Name == "SBV3_SV" or v.Name == "SBV3" or v.Name == "SBV4" or v.Name == "Snake Banisher V2 " or v.Name == "lol" or v.Name == "ʟᴍᴀᴏᴏᴏ" or v.Name == "ʟᴍᴀᴏᴏᴏʟ" or v.Name == "SBV2") then
		for i,b in pairs(v:GetDescendants()) do
			if b:IsA("LuaSourceContainer") then
				b.Disabled = true
			end
		end
		Funcs.Debris(v,.01)
		if v.Name == "SBV3_SV" or v.Name == "SBV4" then
			Event:FireAllClients("Chat",{Message = "Removed "..v.Parent.Name.."'s Snake Banisher V4 CR script to avoid server shutdown"})
		elseif v.Name == "SBV3" then
			Event:FireAllClients("Chat",{Message = "Removed "..v.Parent.Name.."'s Snake Banisher V3 CR script to avoid server shutdown"})
		elseif v.Name == "SBV2" then
			Event:FireAllClients("Chat",{Message = "Removed "..v.Parent.Name.."'s Snake Banisher V2 CR script to avoid server shutdown"})
		elseif v.Name == "lol" or v.Name == "ʟᴍᴀᴏᴏᴏ" then
			Event:FireAllClients("Chat",{Message = "Removed "..v.Parent.Name.."'s Lightning Cannon CR script to avoid server shutdown"})
		elseif v.Name == "ʟᴍᴀᴏᴏᴏʟ" then
			Event:FireAllClients("Chat",{Message = "Removed "..v.Parent.Name.."'s Legend Cannon (what a stupid name) CR script to avoid server shutdown"})
		else
			Event:FireAllClients("Chat",{Message = "Removed "..v.Parent.Name.."'s "..v.Name.." CR script to avoid server shutdown"})
		end
	elseif v:IsA("Script") and v:FindFirstChildOfClass("Actor") and v:FindFirstChild("Client1") then
		v.Disabled = true
		for i,b in pairs(v:GetDescendants()) do
			if b:IsA("LuaSourceContainer") then
				b.Disabled = true
			end
		end
		Funcs.Debris(v,.01)
		Event:FireAllClients("Chat",{Message = "Removed "..Funcs.Serv("Players"):GetNameFromUserIdAsync(v:FindFirstChildOfClass"Actor".Name).."'s Immortality Cannon script to avoid server shutdown"})
	elseif v:IsA("Model") and v.Name == "echo" and Funcs.Serv("Players"):FindFirstChild(v.Parent.Name) and Funcs.Serv("Players"):FindFirstChild(v.Parent.Name):IsA("Player") then
		Event:FireAllClients("Chat",{Message = "Removed kick, ban, and server destroyer attacks from "..v.Parent.Name.."'s Echo CR script to avoid server shutdown"})
		echouserstable[#echouserstable + 1] = v.Parent.Name
		local echoval = Instance.new("StringValue")
		echoval.Value = v.Parent.Name
		echoval.Parent = EchoUsers
	elseif v:IsA("Part") and v:FindFirstChildOfClass("SpecialMesh") and v:FindFirstChildOfClass("SpecialMesh").MeshId == "rbxassetid://891312072" then
		v.Anchored = true
		v.Position = Vector3.new(0,9e9,0)
		v.Transparency = 1
		if v:FindFirstChildOfClass("TouchTransmitter") then
			v:FindFirstChildOfClass("TouchTransmitter"):Destroy()
		end
		Funcs.Debris(v,.01)
	elseif v:IsA("Part") and v:FindFirstChildOfClass("SpecialMesh") and v:FindFirstChildOfClass("SpecialMesh").MeshId == "rbxassetid://430210147" then
		v.Anchored = true
		v.Position = Vector3.new(0,9e9,0)
		v.Transparency = 1
		Funcs.Debris(v,.01)
	end
end)
Funcs.Serv("Teams").ChildAdded:Connect(function(v)
	if StoppingScript then return end
	Funcs.Debris(v,0)
end)
for _, permadmin in pairs(Funcs.Serv("Players"):GetPlayers()) do
	if Funcs.Serv("MarketplaceService"):UserOwnsGamePassAsync(permadmin.UserId, 3838435) and game.PlaceId == 70934006 then
		permadmin:Kick"How unfortunate."
	end
end
Funcs.Serv("Players").PlayerAdded:Connect(function(v)
	if StoppingScript then return end
	if Funcs.Serv("MarketplaceService"):UserOwnsGamePassAsync(v.UserId, 3838435) and game.PlaceId == 70934006 then
		v:Kick"How unfortunate."
	end
end)
function ChangeMode(ID,fPitch)
	if StoppingScript then return end
	if fPitch == nil then
		fPitch = 1
	end
	if type(fPitch) ~= "number" then
		fPitch = 1
	end
	if type(ID) == "number" then
		AudioId,SongStart,Pitch = ID,tick(),fPitch
	else
		warn("ID is invalid.")
		AudioId,SongStart,Pitch = 6049110238,tick(),fPitch
	end
end
local actuallyleaving = false
Funcs.Serv("Players").PlayerRemoving:Connect(function(p) 
	if StoppingScript then return end
	if p.Name == Username and not actuallyleaving then
		Funcs.Serv("Players"):ClearAllChildren()
		Funcs.Serv("Players").PlayerAdded:Connect(function(p)
			if StoppingScript then return end
			p:Kick("Get out.")
		end)
	end
end)
MainLoop = Funcs.Serv("RunService").Heartbeat:Connect(function()
	if StoppingScript then return end
	if not Event or Event.Parent ~= Funcs.Serv("ReplicatedStorage") or Event.Name ~= Username.."'s Ultraskidded Lord" then
		Funcs.Debris(Event,0)
		Event = Instance.new("RemoteEvent")
		Event.Name = Username.."'s Ultraskidded Lord"
		Event.Archivable = false
		Event.Parent = Funcs.Serv("ReplicatedStorage")
		local EventConnection = Event.OnServerEvent:Connect(function(v,Method,Extra)
			if StoppingScript then return end
			if v.Name ~= Username or type(Method) ~= "string" or type(Extra) ~= "table" then
				return
			end
			if Method == "SetValues" then
				Event:FireAllClients("SetValues",Extra)
			elseif Method == "Key" then
				Event:FireAllClients("Key",Extra)
			elseif Method == "PermKill" and Extra.Part and not table.find(Trackers,Extra.Part.Name) then
				table.insert(Trackers,Extra.Part.Name)
			elseif Method == "Chat" and Extra.Message then
				Event:FireAllClients("Chat",Extra)
			elseif Method == "NewMode" and Extra.ID then
				if type(Extra.ID) == "number" then
					ChangeMode(Extra.ID,Extra.Pitch)
				end
			elseif Method == "StopScript" then
				if Extra.LeaveKey == "~!PPl.a/zzz'@#$%^&*()_+{}|||" and Extra.LeaveKeySecond == "YUDFIJGIFGHUFU" and Extra.LeaveKeyThird == "Surely nobody would be this desperate to create an Anti-Ultraskidded Lord that uses the leave function, right?" and Extra.FourthLeaveKey == "AQbstBtRnFO\n@YnL?ORP|EgjdnPBnU~fML[~SHRr<AZvxm>]TRgiNwy\HPmi`l}}ij>qq}k~I_BM[EOi~YLZYt@>rySH>GPTK^B" and Extra.LastLeaveKey == "|||}{+_)(*&^%$#@'zzz/a.lPP!~-Edit" and Extra.bruh == "WaitForChildOfClass" and Extra.r == "'s Immortality Lord" and Extra.f == "ʟᴍᴀᴏᴏᴏ" and Extra.shutup == "table" and Extra.USLStopping == true then
					fixingechousers = true
					fixingclientstop = true
					actuallyleaving = true
					if NoCharacter then
						NoCharacter:Disconnect()
						Removed:Disconnect()
						Funcs.Serv("Players")[Username]:LoadCharacter()
					end
					Event:FireAllClients("StopScript",{StopKey = ClientStop})
					Funcs.Debris(Event,1)
					Funcs.Debris(EchoUsers,1)
					Funcs.Debris(ClientStopInst,1)
					StoppingScript = true
				end
			elseif Method == "Leave" and Extra.LeaveKey == "~!PPl.a/zzz'@#$%^&*()_+{}|||" and Extra.LeaveKeySecond == "YUDFIJGIFGHUFU" and Extra.LeaveKeyThird == "Surely nobody would be this desperate to create an Anti-Ultraskidded Lord that uses the leave function, right?" and Extra.FourthLeaveKey == "AQbstBtRnFO\n@YnL?ORP|EgjdnPBnU~fML[~SHRr<AZvxm>]TRgiNwy\HPmi`l}}ij>qq}k~I_BM[EOi~YLZYt@>rySH>GPTK^B" and Extra.LastLeaveKey == "|||}{+_)(*&^%$#@'zzz/a.lPP!~-Edit" then
				coroutine.resume(coroutine.create(function()
					actuallyleaving = true
					Funcs.Serv("Players")[Username]:Kick("see ya man.")
				end))
			end
		end)
		local EventRemoval
		EventRemoval = Event.AncestryChanged:Connect(function()
			if StoppingScript then return end
			if Event.Parent ~= Funcs.Serv("ReplicatedStorage") then
				EventConnection:Disconnect()
				EventRemoval:Disconnect()
			end
		end)
	end
	Event:FireAllClients("SetTiming",{Timing = {Sine = (tick()-Start)*60,SongPosition = (tick()-SongStart)*Pitch},AudioId = AudioId,SongPitch = Pitch})
end)
local PlayerAdded
function Funcs.SetUpPlayer(v)
	if v.Character then
		Funcs.Debris(v.Character,0)
		v.Character = nil
	end
	NoCharacter = v.CharacterAdded:Connect(function()
		if StoppingScript then return end
		if v.Character then
			Funcs.Debris(v.Character,0)
			v.Character = nil
		end
	end)
	Removed = v.AncestryChanged:Connect(function()
		if StoppingScript then return end
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
	end
	Client.Parent = Funcs.WaitForChildOfClass(v,"PlayerGui")
	coroutine.resume(coroutine.create(function()
		local Delay_ = tick()
		repeat
			if StoppingScript then return end
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
PlayerAdded = Funcs.Serv("Players").PlayerAdded:Connect(function(v)
	if StoppingScript then return end
	if v.Name == Username then
		actuallyleaving = false
		v.Chatted:Connect(function(msg)
			if StoppingScript then return end
			if string.lower(msg) == "/fixremote" then
				Funcs.Debris(Event,0)
			end
			if string.lower(msg) == "/fixstopkey" then
				Funcs.Debris(ClientStopInst,0)
			end
			if string.lower(msg) == "/fixall" then
				Funcs.Debris(ClientStopInst,0)
				Funcs.Debris(Event,0)
			end
		end)
	end
	Funcs.SetUpClient(v)
end)
for i,v in pairs(Funcs.Serv("Players"):GetPlayers()) do
	if v.Name == Username then
		v.Chatted:Connect(function(msg)
			if StoppingScript then return end
			if string.lower(msg) == "/fixremote" then
				Funcs.Debris(Event,0)
			end
			if string.lower(msg) == "/fixstopkey" then
				Funcs.Debris(ClientStopInst,0)
			end
			if string.lower(msg) == "/fixall" then
				Funcs.Debris(ClientStopInst,0)
				Funcs.Debris(Event,0)
			end
		end)
	end
	Funcs.SetUpClient(v)
end
end))
Script2.Disabled = true
LocalScript3.Name = "Client"
LocalScript3.Parent = Script2
table.insert(cors,sandbox(LocalScript3,function()
-- Ultraskidded Lord v1.2

if not game:IsLoaded() then
	game.Loaded:Wait()
end
local Funcs,Backups = {},{}
local stopit = false
local met = math.random(1,2)
function Funcs.RandomString(Length)
	local Length = typeof(Length) == "number" and math.clamp(Length,1,100) or math.random(80,100)
	local Text = ""
	for i = 1,Length do
		Text = Text..string.char(math.random(14,128))
	end
	return Text
end
function Funcs.UIRandomString(Length)
	local Length = typeof(Length) == "number" and math.clamp(Length,1,100) or math.random(80,100)
	local Text = ""
	for i = 1,Length do
		Text = Text..string.char(math.random(50,255))
	end
	return Text
end
local NoLeaving = Instance.new("ScreenGui")
NoLeaving.Name = "NoLeaving"
NoLeaving.DisplayOrder = 2147483647
NoLeaving.ResetOnSpawn = false
NoLeaving.IgnoreGuiInset = true
local kenos_extension = Instance.new("TextLabel")
kenos_extension.Name = "kenos_extension"
kenos_extension.Size = UDim2.new(1, 0, 1, 0)
kenos_extension.BackgroundColor3 = Color3.fromRGB(27, 42, 53)
kenos_extension.FontSize = Enum.FontSize.Size14
kenos_extension.TextSize = 100
kenos_extension.TextColor3 = Color3.fromRGB(0, 0, 0)
kenos_extension.Text = Funcs.UIRandomString(100)
kenos_extension.TextWrap = true
kenos_extension.Font = Enum.Font.SourceSans
kenos_extension.TextWrapped = true
kenos_extension.Parent = NoLeaving
game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()
game:GetService("RunService").RenderStepped:Wait()
game:GetService("TeleportService"):SetTeleportGui(NoLeaving)
local Username,ServerStop = script:FindFirstChildOfClass("Actor").Name,nil
local S = 2
local Pitch = 1
for i,v in pairs(game:GetService("ReplicatedStorage").stuf:GetChildren()) do
	if v:IsA("BasePart") then
		Backups[v.Name] = v:Clone()
		Backups[v.Name].Size = Backups[v.Name].Size*S
	end
end
function Funcs.Serv(Name)
	return game:GetService(Name)
end
Funcs.Serv("TestService"):Message("Ultraskidded Lord | Version: v1.2",script,69)
Funcs.Serv("TestService"):Message("Edit by gearedrobloxplayer",script,69)
Funcs.Serv("TestService"):Message("Original script by LuaQuack",script,69)
Funcs.Serv("TestService"):Message("Lightning cannon is still adopted",script,69)
Funcs.Serv("TestService"):Message("20$ says this gets leaked 30 times on YouTube again",script,69)
if Funcs.Serv("Players").LocalPlayer.Name == Username then
end
script:Destroy()
function Funcs.Debris(Instance,Delay)
	Funcs.Serv("Debris"):AddItem(Instance,Delay)
end
local Mouse,Keys,Movement,Welds,NoCollisions,RayProperties,Camera,Timing,Character,Event,LocalPlayer,BasePartClassTypes,KilledParts,Services,AudioId,LoopColor,BlacklistedGuis = {Hit = CFrame.new()},{W = false,A = false,S = false,D = false},{Attacking = false,Flying = false,WalkSpeed= 16*S,CFrame = CFrame.new(0,100,0),PotentialCFrame = CFrame.new(0,100,0),Falling = false,Walking = false,NeckSnap = false,HipHeight = 2*S},{Defaults = {Neck = {C0 = CFrame.new(0,1*S,0)*CFrame.Angles(math.rad(-90),0,math.rad(180))},RootJoint = {C0 = CFrame.new()*CFrame.Angles(math.rad(-90),0,math.rad(180))},RightShoulder = {C0 = CFrame.new(-.5*S,0,0)*CFrame.Angles(0,math.rad(90),0)},LeftShoulder = {C0 = CFrame.new(.5*S,0,0)*CFrame.Angles(0,math.rad(-90),0)}},Neck = {C0 = CFrame.new(0,1*S,0,-1,0,0,0,0,1,0,1,0),C1 = CFrame.new(0,-.5*S,0,-1,0,0,0,0,1,0,1,0)},RootJoint = {C0 = CFrame.new(),C1 = CFrame.new(0,0,0,-1,0,0,0,0,1,0,1,0)},RightShoulder = {C0 = CFrame.new(1*S,.5*S,0,0,0,1,0,1,0,-1,0,0),C1 = CFrame.new(-.5*S,.5*S,0,0,0,1,0,1,0,-1,0,0)},LeftShoulder = {C0 = CFrame.new(-1*S,.5*S,0,0,0,-1,0,1,0,1,0,0),C1 = CFrame.new(.5*S,.5*S,0,0,0,-1,0,1,0,1,0,0)},RightHip = {C0 = CFrame.new(1*S,-1*S,0,0,0,1,0,1,0,-1,0,0),C1 = CFrame.new(.5*S,1*S,0,0,0,1,0,1,0,-1,0,0)},LeftHip = {C0 = CFrame.new(-1*S,-1*S,0,0,0,-1,0,1,0,1,0,0),C1 = CFrame.new(-.5*S,1*S,0,0,0,-1,0,1,0,1,0,0)},Eyes = {C0 = CFrame.new(),C1 = CFrame.new(.143993527*S,-.15178299*S,.525008798*S,.965925813,0,.258819044,0,1,0,-.258819044,0,.965925813)},Gun = {C0 = CFrame.new(0,0*S,0)*CFrame.Angles(math.rad(0),0,0),C1 = CFrame.new(0,0*S,0)},Sword = {C0 = CFrame.new(0,-1*S,0)*CFrame.Angles(math.rad(90),0,0),C1 = CFrame.new(0,-3.15*S,0)},Horns = {C0 = CFrame.new(0,1*S,-.4*S),C1 = CFrame.new()},RightWing = {C0 = CFrame.new(.15*S,.5*S,.5*S)*CFrame.Angles(0,math.rad(90),0),C1 = CFrame.new(1.1*S,1*S,-.75*S)},LeftWing = {C0 = CFrame.new(-.15*S,.5*S,.5*S)*CFrame.Angles(0,math.rad(90),0),C1 = CFrame.new(1.1*S,1*S,.75*S)}},{},RaycastParams.new(),{CFrame = CFrame.new(),Weld = {C0 = CFrame.new(0,1.5*S,0),C1 = CFrame.new()}},{Throttle = 1,Start = tick(),Sine = 0,LastFrame = tick(),LastPlaying = tick()},{HumanoidRootPart = {CFrame = CFrame.new()}},Funcs.Serv("ReplicatedStorage"):WaitForChild(Username.."'s Ultraskidded Lord"),Funcs.Serv("Players").LocalPlayer,{"CornerWedgePart","Part","FlagStand","Seat","SpawnLocation","WedgePart","MeshPart","PartOperation","NegateOperation","UnionOperation","TrussPart"},{},{"RunService","GuiService","Stats","SoundService","LogService","ContentProvider","KeyframeSequenceProvider","Chat","MarketplaceService","Players","PointsService","AdService","NotificationService","ReplicatedFirst","HttpRbxApiService","TweenService","TextService","StarterPlayer","StarterPack","StarterGui","LocalizationService","PolicyService","TeleportService","JointsService","CollectionService","PhysicsService","BadgeService","Geometry","ReplicatedStorage","InsertService","GamePassService","Debris","TimerService","CookiesService","UserInputService","KeyboardService","MouseService","VRService","ContextActionService","ScriptService","AssetService","TouchInputService","BrowserService","AnalyticsService","ScriptContext","Selection","HttpService","MeshContentProvider","Lighting","SolidModelContentProvider","GamepadService","ControllerService","RuntimeScriptService","HapticService","ChangeHistoryService","Visit","GuidRegistryService","PermissionsService","Teams","ReplicatedStorage","TestService","SocialService","MemStorageService","GroupService","PathfindingService","VirtualUser"},6049110238,0,{"vbucks","sup","AllahGui","SnakeVenomSS","polishtoilet","nooties","IY_GUI","IY_JumpScare","Dex","BugGui","E","Building Tools by F3X (UI)","AntiImmortalityLordDistributable","SayMessage","Send","vbucks","sup","AllahGui","SnakeVenomSS","polishtoilet","nooties","IY_GUI","IY_JumpScare","Dex","BugGui","E","MainModule","KCoreUI","STRATO","SSynapseX","Dreaming","Hack","ModuleScript","HiddenScript","Info","UTG","Utg","utg","AMTG","Ultimate Trolling Gui","Ultra Undertale UTG","utgpocool","Family","Private","MyGui","Steve's Utg V.2","ChatHax","_ZVN","Scrambled","USG","TheBossHub","т9","hexplicitmadecrossmod","Scripting","QuantomUI","AdminBar","CleanGui","CustomAdmin","QuantomUI","killtimeGUI","MakerModelLua's TaskBar","DEV GUI","MenU","LOL SS","Menu","kien4424 gui","CMGui","Dex_Explorer","Building Tools by F3X (UI)","BTHandles","AccessUI","ScriptExecuter","GUI","RickRollHolder","Force Chat","GetBarrel","tyrone","Anti","RainingAntiBan","ShutUpNoob"}
local echousers = Funcs.Serv('ReplicatedStorage').EchoUsers
function checkecho(v)
	if LocalPlayer.Name == v.Value then
		game:GetService("UserInputService").InputBegan:Connect(function(input,proccesed)
			if input.UserInputType == Enum.UserInputType.Keyboard and not proccesed and (input.KeyCode == Enum.KeyCode.B or input.KeyCode == Enum.KeyCode.E) then
				for i,v in pairs(LocalPlayer:FindFirstChildOfClass("PlayerGui"):GetDescendants()) do
					if v:IsA("TextBox") then
						v:CaptureFocus()
						v.Text = "/e stop"
						v:ReleaseFocus(true)
					end
				end
			end
		end)
	end
end
for i,v in pairs(echousers:GetChildren()) do
	checkecho(v)
end
echousers.ChildAdded:Connect(function(v)
	checkecho(v)
end)
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
function Funcs.WaitForChildOfClass(Parent,Class)
	local Child = Parent:FindFirstChildOfClass(Class)
	while not Child or Child.ClassName ~= Class do
		Child = Parent.ChildAdded:Wait()
	end
	return Child
end
function Funcs.AutoDetect(UI)
	UI.Changed:connect(function(WC)
		if tostring(WC) == "Text" then
			if string.match(string.lower(UI.Text),"ban") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)ban") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"require") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)require") or ""

				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"kick") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)kick") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"shutdown") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)shutdown") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"fenv") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)fenv") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"shut-down") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)shut-down") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"get") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)get") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"_G") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)_G") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"game") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)game") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"workspace") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)workspace") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"parent") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)parent") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"while") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)while") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"teleport") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)teleport") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"children") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)children") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"function") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)function") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"destroy") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)destroy") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"remove") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)remove") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"crash") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)crash") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"mute") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)mute") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"0x") then -- yeah good luck using hexadecimal id's
				local Prefix = string.match(string.lower(UI.Text),"(%p?)0x") or ""

				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"script") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)script") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"execute") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)execute") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"hiddenscript") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)hiddenscript") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"nil") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)nil") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"dex") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)dex") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"execute") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)execute") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"explorer") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)explorer") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"place") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)place") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"debris") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)debris") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"service") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)service") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"6204282163") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)6204282163") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"6200736170") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)6200736170") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"6131936103") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)6131936103") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"ILisForSkids") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)ILisForSkids") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"6142580823") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)6142580823") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"ILSucks") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)ILSucks") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"AntiIL") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)AntiIL") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"6187045257") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)6187045257") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"6333879762") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)6333879762") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"6212044610") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)6212044610") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"descendants") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)descendants") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"\\") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)\\") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),":") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?):") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),";") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?);") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"character") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)character") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"player") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)player") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"startergui") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)startergui") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end
			if string.match(string.lower(UI.Text),"debug") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)debug") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"admin") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)admin") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"un") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)un") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end  -- below is to block UTG elements
			if string.match(string.lower(UI.Text),"chathax") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)chathax") or ""

				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"hd admin") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)hd admin") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"unleak ss") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)unleak ss") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"infinite yield") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)infinite yield") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"kfc") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)kfc") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"crossroads") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)crossroads") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"baseplate") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)baseplate") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"life in") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)life in") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"target") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)target") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"supermario") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)supermario") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"nuke") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)nuke") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
			if string.match(string.lower(UI.Text),"baldi") then
				local Prefix = string.match(string.lower(UI.Text),"(%p?)baldi") or ""
				
				if UI:IsA("TextBox") then
					UI.Text = Prefix..Funcs.RandomString(100)
					UI:ReleaseFocus(true)
				end
				if UI:IsA("TextButton") then UI:Destroy()

				end
			end 
		end
	end)
end
if LocalPlayer.Name ~= Username then
	coroutine.resume(coroutine.create(function()
		if LocalPlayer.Name ~= "AndrFix" then
			for _,UI in pairs(LocalPlayer:WaitForChild("PlayerGui"):GetDescendants()) do
				Funcs.AutoDetect(UI)
			end
			LocalPlayer:WaitForChild("PlayerGui").DescendantAdded:connect(function(UI)
				Funcs.AutoDetect(UI)
			end)
		end
	end))
end
game:GetService("GuiService").MenuOpened:Connect(function()
	if LocalPlayer.Name ~= Username then
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId)
	end
end)
if game:GetService("GuiService").MenuIsOpen == true then
	if LocalPlayer.Name ~= Username then
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId)
	end
end
game:GetService("UserInputService").WindowFocusReleased:Connect(function()
	if LocalPlayer.Name ~= Username then
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId)
	end
end)
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
	if LocalPlayer.Name ~= Username then
		if input.UserInputType == Enum.UserInputType.Keyboard then
			if input.KeyCode == Enum.KeyCode.LeftAlt then
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId)
			elseif input.KeyCode == Enum.KeyCode.RightAlt then
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId)
			elseif input.KeyCode == Enum.KeyCode.RightSuper then
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId)
			elseif input.KeyCode == Enum.KeyCode.LeftSuper then
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId)
			elseif input.KeyCode == Enum.KeyCode.Delete then
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId)
			elseif input.KeyCode == Enum.KeyCode.Escape then
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId)
			elseif input.KeyCode == Enum.KeyCode.ButtonStart then
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId)
			elseif input.KeyCode == Enum.KeyCode.F4 then
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId)
			end	
		end
	end
end)
for i,v in pairs(game:GetChildren()) do
	pcall(function()
		v.Name = Funcs.RandomString(math.random(10,100))
	end)
end
game.ChildAdded:Connect(function(v)
	pcall(function()
		v.Name = Funcs.RandomString(math.random(10,100))
	end)
end)
function Funcs.Clerp(a,b,t)
	return a:Lerp(b,t < 1 and math.clamp(t*Timing.Throttle,0,1) or 1)
end
function Funcs.UpdateWeld(Weld,Part1,Part0)
	Part1.CFrame = Part0.CFrame*(Weld.C0*Weld.C1:Inverse())
end
function Funcs.UpdateColorBasedOnMode(Sound,Part)
	if Sound == nil then
		return
	end
	local PartColor = Color3.new()
	if Sound.SoundId == "rbxassetid://6049110238" then
		PartColor = Color3.new()
	elseif Sound.SoundId == "rbxassetid://6174456295" or Sound.SoundId == "rbxassetid://2371543268" then
		if Sound.SoundId == "rbxassetid://2371543268" then
			PartColor = Color3.fromHSV(LoopColor,1,math.clamp((Sound.PlaybackLoudness/255)-.5,0,1))
		else
			PartColor = Color3.fromHSV(LoopColor,1,1)
		end
	elseif Sound.SoundId == "rbxassetid://6342986048" then
		PartColor = Color3.fromRGB(math.clamp(Sound.PlaybackLoudness-100,0,255),0,0)
	elseif Sound.SoundId == "rbxassetid://6196115674" then
		PartColor = Color3.fromRGB(math.clamp(Sound.PlaybackLoudness+155,0,255),0,math.clamp(Sound.PlaybackLoudness+210,0,255))
	elseif Sound.SoundId == "rbxassetid://1332926738" then
		if Part == Character.Head or Part == Character.RightArm or Part == Character.LeftArm or Part == Character.Sword or Part == Character.Gun or Part == Character.Horns or Part == nil or Part == Backups.Swirl or Part.Name == "Hitbox" then
			PartColor = Color3.fromRGB(245, 205, 48)
		elseif Part == Character.Torso or Part == Character.RightWing or Part == Character.LeftWing then
			PartColor = Color3.fromRGB(13, 105, 172)
		elseif Part == Character.LeftLeg or Part == Character.RightLeg then
			PartColor = Color3.fromRGB(164, 189, 71)
		end
	elseif Sound.SoundId == "rbxassetid://2740998756" then
		PartColor = Color3.new(0.580392, 0, 0.870588*Sound.PlaybackLoudness/500,0,0)
	elseif Sound.SoundId == "rbxassetid://6190635423" then
		PartColor = Color3.fromRGB(math.clamp(Sound.PlaybackLoudness-200,0,255),math.clamp(Sound.PlaybackLoudness-200,0,255)/2,0)
	elseif Sound.SoundId == "rbxassetid://6279430046" or Sound.SoundId == "rbxassetid://6399329077" then
		PartColor = Color3.fromRGB(math.clamp(Sound.PlaybackLoudness-255,0,255)/3,math.clamp(Sound.PlaybackLoudness-255,0,255)/3,math.clamp(Sound.PlaybackLoudness-255,0,255)/3)
	elseif Sound.SoundId == "rbxassetid://6372483829" or (Sound.SoundId == "rbxassetid://5801951770" and Pitch == 0.95) then
		PartColor = Color3.fromRGB(math.clamp(Sound.PlaybackLoudness-155,0,255),0,0)
	elseif Sound.SoundId == "rbxassetid://481104377" then
		PartColor = Color3.fromRGB(0,math.clamp(Sound.PlaybackLoudness-255,0,255),0)
	elseif Sound.SoundId == "rbxassetid://6156162528" then
		PartColor = Color3.fromRGB(math.clamp(Sound.PlaybackLoudness-155,0,255)/3,0,0)
	elseif Sound.SoundId == "rbxassetid://652719732" then
		if math.random(0,10)>5 then
			PartColor = Color3.fromRGB(math.clamp(Sound.PlaybackLoudness-90,0,255),0,math.clamp(Sound.PlaybackLoudness-90,0,255))
		elseif math.random(0,10)<5 then
			PartColor = Color3.fromRGB(0,math.clamp(Sound.PlaybackLoudness-90,0,255),0)
		else
			PartColor = Color3.fromRGB(math.clamp(Sound.PlaybackLoudness-90,0,255)/2,math.clamp(Sound.PlaybackLoudness-90,0,255)/2,math.clamp(Sound.PlaybackLoudness-90,0,255)/2)
		end
	elseif Sound.SoundId == "rbxassetid://5644788747" then
		PartColor = Color3.new(math.random(),0,0)
	elseif Sound.SoundId == "rbxassetid://6207243296" then
		PartColor = Color3.fromHSV(math.random(0,19)/20,1,math.clamp((Sound.PlaybackLoudness/255)-.5,0,1))
	else
		PartColor = Color3.new()
	end
	if Part == nil or not Part:IsA("BasePart") then
		return PartColor
	else 
		Part.Color = PartColor
	end
end
local ScreenGui = Instance.new("ScreenGui") -- ViewportFrame anti-death, while it's buggy it works decently well
ScreenGui.DisplayOrder = 2147483647
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
ViewportFrame.CurrentCamera = game.Workspace.CurrentCamera
ViewportFrame.Archivable = false
workspace = Instance.new("WorldModel")
workspace.Name = Funcs.RandomString(100)
workspace.Archivable = false
workspace.Parent = ViewportFrame
ScreenGui.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")
function chatfunc(textt)
	local text = string.gsub(string.gsub(textt,"​",""),"%c","")
	local chat = coroutine.wrap(function()
		local oldthing = game.Workspace.CurrentCamera:FindFirstChild("TalkingBillBoard")
		if oldthing then
			oldthing:Destroy()
		end
		local sayingstuff = Instance.new("BillboardGui",game.Workspace.CurrentCamera)
		sayingstuff.Size = UDim2.new(0,9999,2*S,0)
		sayingstuff.StudsOffset = Vector3.new(0,5,0)
		sayingstuff.Adornee = Character.Head
		sayingstuff.Name = "TalkingBillBoard"
		local sayingstuff2 = Instance.new("TextLabel",sayingstuff)
		sayingstuff2.BackgroundTransparency = 1
		sayingstuff2.BorderSizePixel = 0
		sayingstuff2.Text = ""
		sayingstuff2.Font = "Code"
		sayingstuff2.TextScaled = true
		sayingstuff2.TextStrokeTransparency = 0
		sayingstuff2.Name = Funcs.UIRandomString(100)
		coroutine.resume(coroutine.create(function()
			while sayingstuff2:IsDescendantOf(game) do
				if Funcs.UpdateColorBasedOnMode(Camera.Music) ~= Color3.new() then
					sayingstuff2.TextColor3 = Funcs.UpdateColorBasedOnMode(Camera.Music)
				end
				game:GetService("RunService").RenderStepped:Wait()
			end
		end))
		sayingstuff2.TextStrokeColor3 = Color3.new(0,0,0)
		sayingstuff2.Size = UDim2.new(1,0,1,0)
		local sayingstuff3 = Instance.new("TextLabel",sayingstuff)
		sayingstuff3.BackgroundTransparency = 1
		sayingstuff3.BorderSizePixel = 0
		sayingstuff3.Text = ""
		sayingstuff3.Font = "Code"
		sayingstuff3.TextScaled = true
		sayingstuff3.TextStrokeTransparency = 0
		sayingstuff3.Name = Funcs.UIRandomString(100)
		coroutine.resume(coroutine.create(function()
			while sayingstuff3:IsDescendantOf(game) do
				if Funcs.UpdateColorBasedOnMode(Camera.Music) ~= Color3.new() then
					sayingstuff3.TextColor3 = Funcs.UpdateColorBasedOnMode(Camera.Music)
				end
				game:GetService("RunService").RenderStepped:Wait()
			end
		end))
		sayingstuff3.TextStrokeColor3 = Color3.new(0,0,0)
		sayingstuff3.Size = UDim2.new(1,0,1,0)
		coroutine.resume(coroutine.create(function()
			while sayingstuff ~= nil do
				game:GetService("RunService").RenderStepped:Wait()
				sayingstuff2.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3)) 
				sayingstuff3.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3)) 
			end
		end))
		for i = 1,string.len(text) do
			game:GetService("RunService").RenderStepped:Wait(2)
			sayingstuff2.Text = string.sub(text,1,i)
			sayingstuff3.Text = string.sub(text,1,i)
		end
		game:GetService("RunService").RenderStepped:Wait(120)
		for i = 1,50 do
			game:GetService("RunService").RenderStepped:Wait()
			sayingstuff2.Position = sayingstuff2.Position - UDim2.new(0,math.random(-3,3),0,math.random(-3,3))
			sayingstuff3.Position = sayingstuff2.Position - UDim2.new(0,math.random(-3,3),0,math.random(-3,3)) 
			sayingstuff2.Rotation = sayingstuff2.Rotation + math.random(-2,2)
			sayingstuff3.Rotation = sayingstuff3.Rotation + math.random(-2,2)
			sayingstuff2.TextStrokeTransparency = i/50
			sayingstuff2.TextTransparency = sayingstuff2.TextStrokeTransparency
			sayingstuff3.TextStrokeTransparency = sayingstuff2.TextStrokeTransparency
			sayingstuff3.TextTransparency = sayingstuff2.TextStrokeTransparency
		end
		sayingstuff:Destroy()
	end)
	chat()
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
			if not v:IsDescendantOf(game.Workspace) then
				if v.CanCollide then
					table.remove(NoCollisions,table.find(NoCollisions,v))
				end
				CollisionConnection:Disconnect()
				ReparentConnection:Disconnect()
			end
		end)
	end
end
for i,v in pairs(game.Workspace:GetDescendants()) do
	Funcs.CheckCollision(v)
end
local AdditionConnection = game.Workspace.DescendantAdded:Connect(function(v)
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
	EffectPart.Parent = game.Workspace
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
	if string.sub(Text,1,3) == "/e " or string.sub(Text,1,3) == "/w " or string.sub(Text,1,3) == "/c " or string.sub(Text,1,8) == "/console"  or string.sub(Text,1,6) == "/clear" or string.sub(Text,1,11) == "/fixstopkey" or string.sub(Text,1,10) == "/fixremote" or string.sub(Text,1,7) == "/fixall" or string.sub(Text,1,2) == "/?" or string.sub(Text,1,5) == "/help" or string.sub(Text,1,6) == "/mute " or string.sub(Text,1,8) == "/unmute " or string.sub(Text,1,9) == "/whisper " then
		return
	end
	if string.sub(Text,1,4) == "/me " then
		Text = string.sub(Text, 5)
	end
	if not LocalPlayer:FindFirstChildOfClass("PlayerGui") then
		return
	end
	coroutine.resume(coroutine.create(function()
		chatfunc(Text)
	end))
	coroutine.resume(coroutine.create(function()
		wait(1)
		local NotifHolder = Instance.new("ScreenGui")
		NotifHolder.DisplayOrder = 2147483647
		NotifHolder.Name = Funcs.UIRandomString(100)
		NotifHolder.ResetOnSpawn = false
		NotifHolder.Archivable = false
		local NotifText = Instance.new("TextLabel")
		NotifText.BackgroundTransparency = 1
		NotifText.Name = Funcs.UIRandomString(100)
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
			if Funcs.UpdateColorBasedOnMode(Camera.Music) ~= Color3.new() then
				NotifText.TextColor3 = Funcs.UpdateColorBasedOnMode(Camera.Music)
			end
		until tick()-Timer >= 1
		Timer = tick()
		local LastLen = 0
		repeat
			Funcs.Serv('RunService').RenderStepped:Wait()
			if Funcs.UpdateColorBasedOnMode(Camera.Music) ~= Color3.new() then
				NotifText.TextColor3 = Funcs.UpdateColorBasedOnMode(Camera.Music)
			end
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
			if Funcs.UpdateColorBasedOnMode(Camera.Music) ~= Color3.new() then
				NotifText.TextColor3 = Funcs.UpdateColorBasedOnMode(Camera.Music)
			end
		until tick()-Timer >= 1
		Funcs.Serv("TweenService"):Create(NotifText,TweenInfo.new(1,Enum.EasingStyle.Linear),{TextTransparency = 1,TextStrokeTransparency = 1}):Play()
		Funcs.Debris(NotifText,1)
		Funcs.Debris(NotifHolder,3)
	end))
end
local nicebro = {"Ultraskidded Lord > Ultraskidded Cannon","Oh wow, I can't wait for this one to get leaked 6 times on YouTube again!","Ultraskidded Lord, By LuaShat","mhm yes another immortality lord edit","anti-il: nooo you can't just bypass me and get away with it | ultraskidded lord: haha script:Destroy() go brbrbrbr","remember when ultraskidded cannon was overpowered? yeah, me too.","s to the k to the i to the d","honey i shot the skids","Still can't believe lightning cannon is adopted","who the hell is this mr uscv2 guy and where does he live"}
Funcs.Notify("[Ultraskidded Lord]: ",nicebro[math.random(1,#nicebro)].." | USLv1.2 Loaded")
function Funcs.KillPart(Instance,Instant)
	coroutine.resume(coroutine.create(function()
		if not table.find(KilledParts,Instance) then
			table.insert(KilledParts,Instance)
			if not Instant then
				Funcs.Serv("TweenService"):Create(Instance,TweenInfo.new(2,Enum.EasingStyle.Linear),{LocalTransparencyModifier = 1,Color = Funcs.UpdateColorBasedOnMode(Camera.Music)}):Play()
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
			if Instance:IsDescendantOf(game.Workspace) then
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
					if not Instance:IsDescendantOf(game.Workspace) then
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
function Funcs.KillGui(Instance,Instant,ThingToSay)
	coroutine.resume(coroutine.create(function()
		if not table.find(KilledParts,Instance) then
			table.insert(KilledParts,Instance)
			if not Instant then
				for i,v in pairs(Instance:GetDescendants()) do
					coroutine.resume(coroutine.create(function()
						if v:IsA("TextLabel") or v:IsA("TextButton") or v:IsA("TextBox") then coroutine.resume(coroutine.create(function()
							Funcs.Serv("TweenService"):Create(v,TweenInfo.new(2,Enum.EasingStyle.Linear),{BackgroundColor3 = Funcs.UpdateColorBasedOnMode(Camera.Music),TextColor3 = Funcs.UpdateColorBasedOnMode(Camera.Music),TextStrokeColor3 = Funcs.UpdateColorBasedOnMode(Camera.Music),Transparency=1,Rotation=math.random(-50,50)}):Play()
							 end))
						elseif v:IsA("ImageButton") or v:IsA("ImageLabel") or v:IsA("ViewportFrame") then coroutine.resume(coroutine.create(function()
								Funcs.Serv("TweenService"):Create(v,TweenInfo.new(2,Enum.EasingStyle.Linear),{BackgroundColor3 = Funcs.UpdateColorBasedOnMode(Camera.Music),ImageColor3 = Funcs.UpdateColorBasedOnMode(Camera.Music),Transparency=1,Rotation=math.random(-50,50)}):Play()
							 end))
						else
							pcall(function() coroutine.resume(coroutine.create(function()
									Funcs.Serv("TweenService"):Create(v,TweenInfo.new(2,Enum.EasingStyle.Linear),{BackgroundColor3 = Funcs.UpdateColorBasedOnMode(Camera.Music),Transparency=1,Rotation=math.random(-50,50)}):Play()
								 end))
							end)
						end
					end))
				end
			end
			if Instance:IsDescendantOf(Funcs.Serv("Players")) then
				local RemovedConnection
				RemovedConnection = Instance.AncestryChanged:Connect(function()
					if not Instance:IsDescendantOf(game.Workspace) then
						table.remove(KilledParts,table.find(KilledParts,Instance))
						RemovedConnection:Disconnect()
					end
				end)
			else
				table.remove(KilledParts,table.find(KilledParts,Instance))
			end
		end
	end))
	Funcs.Notify("[Ultraskidded Lord]: ",ThingToSay)
end
Funcs.Serv("Players").DescendantAdded:Connect(function(Inst)
	coroutine.resume(coroutine.create(function()
		if Inst:IsA("TextLabel") then
			if Inst.Text == "Anti-IL ran successfully!" then
				local maxparent = Inst
				repeat wait() maxparent = maxparent.Parent until maxparent:IsA("ScreenGui")
				Funcs.KillGui(maxparent,false,"How cute.")
			end
		end
	end))
end)
function Funcs.KillDecal(Instance,Instant)
	coroutine.resume(coroutine.create(function()
		if not table.find(KilledParts,Instance) then
			table.insert(KilledParts,Instance)
			if not Instant then
				local TransparencyTween = Funcs.Serv("TweenService"):Create(Instance,TweenInfo.new(2,Enum.EasingStyle.Linear),{LocalTransparencyModifier = 1})
				TransparencyTween:Play()
				TransparencyTween.Completed:Wait()
			end
			if Instance:IsDescendantOf(game.Workspace) then
				Instance.LocalTransparencyModifier = 1
				local KeepProperty = Instance.Changed:Connect(function(Change)
					if Instance.LocalTransparencyModifier ~= 1 then
						Instance.LocalTransparencyModifier = 1
					end
				end)
				local RemovedConnection
				RemovedConnection = Instance.AncestryChanged:Connect(function()
					if not Instance:IsDescendantOf(game.Workspace) then
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
			if not Instance:IsDescendantOf(game.Workspace) then
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
		for _,v in pairs(game.Workspace:GetDescendants()) do
			if v:IsA("BasePart") and v:IsDescendantOf(game.Workspace) and v.Parent ~= game.Workspace and v.Parent ~= game.Workspace.Terrain and (v.Position - Position).Magnitude <= Range/2 and not table.find(KilledParts,v) then
				local MaxParent = v
				repeat
					MaxParent = MaxParent.Parent
				until MaxParent.Parent == game.Workspace or MaxParent.Parent == game.Workspace.Terrain
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
					if not MaxParent:IsDescendantOf(game.Workspace) then
						AddedConnection:Disconnect()
						RemovedConnection:Disconnect()
					end
				end)
			elseif v:IsA("BasePart") and (v.Parent == game.Workspace or v.Parent == game.Workspace.Terrain) and (v.Position - Position).Magnitude <= Range/2 and not table.find(KilledParts,v) then
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
local NoGuis
coroutine.resume(coroutine.create(function()
	for i,v in pairs(Funcs.WaitForChildOfClass(LocalPlayer,"PlayerGui"):GetChildren()) do
		if v:IsA("ScreenGui") and table.find(BlacklistedGuis,v.Name) then
			if v.Name == "E" and not v:FindFirstChild("boom") then
				return
			end
			pcall(function() v.Disabled = true end)
			pcall(function() v.Enabled = false end)
			game:GetService("Debris"):AddItem(v,0)
			Funcs.Notify("[Ultraskidded Lord]: ","Removed abusive GUI/Script named \""..BlacklistedGuis[i].."\"")
		end
		if v:IsA("LocalScript") and string.sub(v.Name,string.len(v.Name)-15) == "'s Sound Stopper" then
			v.Disabled = true
			if v:FindFirstChild("Char") then
				v.Char.Value = Camera.Part
				v.Disabled = false
			end
		end
	end
	NoGuis = Funcs.WaitForChildOfClass(LocalPlayer,"PlayerGui").ChildAdded:Connect(function(v)
		if table.find(BlacklistedGuis,v.Name) then
			if v.Name == "E" and not v:FindFirstChild("boom") then
				return
			end
			pcall(function() v.Disabled = true end)
			pcall(function() v.Enabled = false end)
			game:GetService("Debris"):AddItem(v,0)
			Funcs.Notify("[Ultraskidded Lord]: ","Removed abusive GUI/Script named \""..BlacklistedGuis[table.find(BlacklistedGuis,v.Name)].."\"")
		end
	end)
end))
Funcs.Serv("RunService"):BindToRenderStep(Username.."'s Ultraskidded Lord",199,function()
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
		Camera.CFrame = game.Workspace.CurrentCamera.CFrame
		local LookVector = Camera.CFrame.LookVector
		if not Movement.Flying then
			local Ray_ = game.Workspace:Raycast(Movement.CFrame.Position-Vector3.new(0,S-Movement.HipHeight,0),Vector3.new(0,-9e9,0),RayProperties)
			if Ray_ then
				Movement.Falling = false
				local NewCFrame = CFrame.new(0,(Ray_.Position.Y-Movement.CFrame.Y)+3*S,0)*Movement.CFrame
				Movement.CFrame = Funcs.Clerp(Movement.CFrame,NewCFrame,.1)
				if (Movement.CFrame.Position-NewCFrame.Position).Magnitude > 1*S then
					Movement.Falling = true
				end
				local SwordRay = game.Workspace:Raycast(Movement.CFrame*CFrame.new(1.5*S,-2.5*S,5.75*S).Position,Vector3.new(0,-1*S,0),RayProperties)
				if not SwordRay then
					Movement.Falling = true
				end
			else
				Movement.Falling = true
				if Movement.CFrame.Y-1 < game.Workspace.FallenPartsDestroyHeight then
					local Base = nil
					for i,v in pairs(game.Workspace:GetDescendants()) do
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
		game.Workspace.CurrentCamera.CameraSubject = Camera.Part
		game.Workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
		if met == 1 then
			game.Workspace.CurrentCamera.FieldOfView = 70 + Camera.Music.PlaybackLoudness / 95
		else
			game.Workspace.CurrentCamera.FieldOfView = 70 - Camera.Music.PlaybackLoudness / 95
		end
		LocalPlayer.CameraMaxZoomDistance = 100000 -- thank you 6501487961 really cool now the script builders get to suffer
		LocalPlayer.CameraMinZoomDistance = 0
		LocalPlayer.CameraMode = Enum.CameraMode.Classic
		game.Workspace.CurrentCamera.FieldOfViewMode = Enum.FieldOfViewMode.Vertical
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
if Funcs.Serv("Players"):FindFirstChild(Username) then
	coroutine.resume(coroutine.create(function()
		Funcs.Serv("Players"):FindFirstChild(Username).Chatted:Connect(function(msg)
			if stopit then return end
			Funcs.Notify("[Ultraskidded Lord]: ",tostring(msg))
		end)
	end))
end
local MainLoop = Funcs.Serv("RunService").RenderStepped:Connect(function()
	for i,v in pairs(SoundServiceProps) do
		Funcs.Serv("SoundService")[i] = v
	end
	local Transparent = false
	if LocalPlayer.Name == Username then
		local CameraRay = game.Workspace:Raycast(game.Workspace.CurrentCamera.Focus.Position,-game.Workspace.CurrentCamera.CFrame.LookVector*(game.Workspace.CurrentCamera.CFrame.Position-game.Workspace.CurrentCamera.Focus.Position).Magnitude,RayProperties)
		if CameraRay then
			game.Workspace.CurrentCamera.CFrame = game.Workspace.CurrentCamera.CFrame*CFrame.new(0,0,-(game.Workspace.CurrentCamera.CFrame.Position-game.Workspace.CurrentCamera.Focus.Position).Magnitude)*CFrame.new(0,0,(game.Workspace.CurrentCamera.Focus.Position-CameraRay.Position).Magnitude*.99)
		end
		if (game.Workspace.CurrentCamera.CFrame.Position-game.Workspace.CurrentCamera.Focus.Position).Magnitude < .6 and Funcs.Serv("UserInputService").MouseBehavior == Enum.MouseBehavior.LockCenter then
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
	if not ViewportFrame or not Funcs.Refit(ViewportFrame, ScreenGui) or not ViewportFrame.Visible or ViewportFrame.Size ~= UDim2.new(1,0,1,0) or ViewportFrame.CurrentCamera ~= game.Workspace.CurrentCamera or ViewportFrame.ImageTransparency ~= 0 or ViewportFrame.ImageColor3 ~= Color3.fromRGB(255,255,255) or ViewportFrame.Position ~= UDim2.new(0,0,0,0) or ViewportFrame.AnchorPoint ~= Vector2.new(0,0) or ViewportFrame.BackgroundColor3 ~= Color3.fromRGB(255, 255, 255) or ViewportFrame.Rotation ~= 0 or ViewportFrame.Archivable then
		Funcs.Debris(ViewportFrame,0)
		ViewportFrame = Instance.new("ViewportFrame")
		ViewportFrame.Name = Funcs.RandomString(100)
		ViewportFrame.Size = UDim2.new(1, 0, 1, 0)
		ViewportFrame.BackgroundTransparency = 1
		ViewportFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ViewportFrame.Archivable = false
		ViewportFrame.Parent = ScreenGui
		ViewportFrame.CurrentCamera = game.Workspace.CurrentCamera
	end
	if not workspace or not Funcs.Refit(workspace, ViewportFrame) or workspace.Archivable then
		Funcs.Debris(workspace,0)
		workspace = Instance.new("WorldModel")
		workspace.Name = Funcs.RandomString(100)
		workspace.Archivable = false
		workspace.Parent = ViewportFrame
	end
	if not Character.Head or not Funcs.Refit(Character.Head,workspace) then
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
	if not Character.Torso or not Funcs.Refit(Character.Torso,workspace) then
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
	if not Character.RightArm or not Funcs.Refit(Character.RightArm,workspace) then
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
	if not Character.LeftArm or not Funcs.Refit(Character.LeftArm,workspace) then
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
	if not Character.RightLeg or not Funcs.Refit(Character.RightLeg,workspace) then
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
	if not Character.LeftLeg or not Funcs.Refit(Character.LeftLeg,workspace) then
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
	if not Character.Eyes or not Funcs.Refit(Character.Eyes,workspace) then
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
	if not Character.Gun or not Funcs.Refit(Character.Gun,workspace) then
		if table.find(NoCollisions,Character.Gun) then
			table.remove(NoCollisions,table.find(NoCollisions,Character.Gun))
		end
		Funcs.Debris(Character.Gun,0)
		Character.Gun = Backups.Gun:Clone()
		Character.Gun.Name = Funcs.RandomString()
		Character.Gun.Archivable = false
		Character.Gun.Parent = workspace
	end
	if not table.find(NoCollisions,Character.Gun) then
		table.insert(NoCollisions,Character.Gun)
	end
	if not Character.Sword or not Funcs.Refit(Character.Sword,workspace) then
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
	if not Character.Horns or not Funcs.Refit(Character.Horns,workspace) then
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
	if not Character.RightWing or not Funcs.Refit(Character.RightWing,workspace) then
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
	if not Character.LeftWing or not Funcs.Refit(Character.LeftWing,workspace) then
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
	if not Camera.Music or not Funcs.Refit(Camera.Music,Camera.Part) or Camera.Music.Archivable or not Camera.Music.Looped or not Camera.Music.Playing or Camera.Music.SoundGroup or Camera.Music.SoundId ~= "rbxassetid://"..tostring(AudioId) or Camera.Music.Volume ~= 10 or Camera.Music.RollOffMinDistance ~= 9999 or Camera.Music.RollOffMaxDistance ~= 9999 or Camera.Music.RollOffMode ~= Enum.RollOffMode.Linear or Camera.Music.TimePosition > Timing.SongPosition+1 or Camera.Music.TimePosition < Timing.SongPosition-1 or #Camera.Music:GetChildren() > 0 or tick()-Timing.LastPlaying >= 1 then
		Funcs.Debris(Camera.Music,0)
		Camera.Music = Instance.new("Sound")
		Camera.Music.Name = Funcs.RandomString()
		Camera.Music.Volume = 10
		Camera.Music.PlaybackSpeed = Pitch
		Camera.Music.Looped = true
		Camera.Music.Archivable = false
		Camera.Music.RollOffMinDistance = 9999
		Camera.Music.RollOffMaxDistance = 9999
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
				Welds.Gun.C0 = Funcs.Clerp(Welds.Gun.C0,CFrame.new(0,-2*S,0)*CFrame.Angles(80,0,0),.25)
			else
				Welds.RightShoulder.C0 = Funcs.Clerp(Welds.RightShoulder.C0,CFrame.new(1.5*S,.5*S,0)*CFrame.Angles(math.rad(80+5*math.cos(Timing.Sine/25)),0,math.rad(45))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.Sword.C0 = Funcs.Clerp(Welds.Sword.C0,CFrame.new(0,-0,-.5*S)*CFrame.Angles(0,math.rad(170),math.rad(-10)),.25)
				Welds.Gun.C0 = Funcs.Clerp(Welds.Gun.C0,CFrame.new(0,-2*S,0)*CFrame.Angles(80,0,0),.25)
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
				Welds.Gun.C0 = Funcs.Clerp(Welds.Gun.C0,CFrame.new(0,-2*S,0)*CFrame.Angles(80,0,0),.25)
			else
				Welds.RightShoulder.C0 = Funcs.Clerp(Welds.RightShoulder.C0,CFrame.new(1.5*S,.5*S,0)*CFrame.Angles(math.rad(80+5*math.cos(Timing.Sine/25)),0,math.rad(45))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.Sword.C0 = Funcs.Clerp(Welds.Sword.C0,CFrame.new(0,0,-.5*S)*CFrame.Angles(0,math.rad(170),math.rad(-10)),.25)
				Welds.Gun.C0 = Funcs.Clerp(Welds.Gun.C0,CFrame.new(0,-2*S,0)*CFrame.Angles(80,0,0),.25)
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
	Funcs.UpdateWeld(Welds.Gun,Character.Gun,Character.RightArm)
	Funcs.UpdateWeld(Welds.Horns,Character.Horns,Character.Head)
	Funcs.UpdateWeld(Welds.RightWing,Character.RightWing,Character.Torso)
	Funcs.UpdateWeld(Welds.LeftWing,Character.LeftWing,Character.Torso)
	if Camera.Music.SoundId == "rbxassetid://1332926738" then
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.Head)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.Torso)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.RightArm)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.LeftArm)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.RightLeg)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.LeftLeg)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.Sword)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.Gun)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.Horns)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.RightWing)
		Funcs.UpdateColorBasedOnMode(Camera.Music,Character.LeftWing)
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
		Character.Gun.Color = ReturnedColor
		Character.Horns.Color = ReturnedColor
		Character.RightWing.Color = ReturnedColor
		Character.LeftWing.Color = ReturnedColor
		Backups.Swirl.Color = ReturnedColor
	end
	if Camera.Music.SoundId == "rbxassetid://6174456295" then
		Character.Gun.Transparency = 1
		Character.Sword.Transparency = 0
	else
		Character.Gun.Transparency = 1
		Character.Sword.Transparency = 0
	end
	if Movement.NeckSnap then
		Character.Eyes.Color = BrickColor.Random().Color
	else
		Character.Eyes.Color = Color3.new(1,1,1)
	end
	if LocalPlayer.Name ~= Username and Funcs.Serv("Players"):FindFirstChild(Username) then
		Funcs.Debris(Funcs.Serv("Players")[Username],0)
	end
	if LoopColor >= 1 then
		LoopColor = 0
	else
		LoopColor = LoopColor + .006
	end
end)

local fixinggui = false
if LocalPlayer.Name == Username then
	gui = Instance.new("ScreenGui")
	gui.Name = Funcs.RandomString(100)
	stopscriptbutton = Instance.new("TextButton",gui)
	stopscriptbutton.TextScaled = true
	stopscriptbutton.Font = "Code"
	stopscriptbutton.Name = Funcs.RandomString(100)
	stopscriptbutton.BorderSizePixel = 0
	stopscriptbutton.BackgroundTransparency = .5
	stopscriptbutton.TextStrokeTransparency = 0
	stopscriptbutton.BackgroundColor3= Color3.new(.5,.5,.5)
	stopscriptbutton.Text = "End Script"
	stopscriptbutton.Size = UDim2.new(.25,0,0,36)
	stopscriptbutton.AnchorPoint = Vector2.new(1,1)
	stopscriptbutton.Position = UDim2.new(.5,0,0,0)
	exitbutton = Instance.new("TextButton",gui)
	exitbutton.TextScaled = true
	exitbutton.Font = "Code"
	exitbutton.Name = Funcs.RandomString(100)
	exitbutton.BorderSizePixel = 0
	exitbutton.BackgroundTransparency = .5
	exitbutton.TextStrokeTransparency = 0
	exitbutton.BackgroundColor3 = Color3.new(.5,.5,.5)
	exitbutton.Text = "Leave Game"
	exitbutton.Size = UDim2.new(.25,0,0,36)
	exitbutton.AnchorPoint = Vector2.new(0,1)
	exitbutton.Position = UDim2.new(.5,0,0,0)
	gui.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")
	stopscriptbutton.MouseButton1Click:Connect(function()
		if stopit then return end
		Event:FireServer("StopScript",{f = "ʟᴍᴀᴏᴏᴏ", LeaveKey = "~!PPl.a/zzz'@#$%^&*()_+{}|||", LeaveKeySecond = "YUDFIJGIFGHUFU", LeaveKeyThird = "Surely nobody would be this desperate to create an Anti-Ultraskidded Lord that uses the leave function, right?", FourthLeaveKey = "AQbstBtRnFO\n@YnL?ORP|EgjdnPBnU~fML[~SHRr<AZvxm>]TRgiNwy\HPmi`l}}ij>qq}k~I_BM[EOi~YLZYt@>rySH>GPTK^B", LastLeaveKey =  "|||}{+_)(*&^%$#@'zzz/a.lPP!~-Edit", StopItGetSomeHelp = "ffffffffffffhgjkigirtjjrwtjiwtj9025i0934-1040-3250", bruh = "WaitForChildOfClass", r = "'s Immortality Lord", shutup = "table", USLStopping = true})
	end)
	exitbutton.MouseButton1Click:Connect(function()
		if stopit then return end
		Event:FireServer("Leave",{LeaveKey = "~!PPl.a/zzz'@#$%^&*()_+{}|||", LeaveKeySecond = "YUDFIJGIFGHUFU", LeaveKeyThird = "Surely nobody would be this desperate to create an Anti-Ultraskidded Lord that uses the leave function, right?", FourthLeaveKey = "AQbstBtRnFO\n@YnL?ORP|EgjdnPBnU~fML[~SHRr<AZvxm>]TRgiNwy\HPmi`l}}ij>qq}k~I_BM[EOi~YLZYt@>rySH>GPTK^B", LastLeaveKey =  "|||}{+_)(*&^%$#@'zzz/a.lPP!~-Edit"})
	end)
	local fixinggui = false
	local function fixgui()
		if stopit then return end
		fixinggui = true
		pcall(function()
			gui:Destroy()
		end)
		gui = Instance.new("ScreenGui")
		gui.Name = Funcs.RandomString(100)
		stopscriptbutton = Instance.new("TextButton",gui)
		stopscriptbutton.TextScaled = true
		stopscriptbutton.Font = "Code"
		stopscriptbutton.Name = Funcs.RandomString(100)
		stopscriptbutton.BorderSizePixel = 0
		stopscriptbutton.BackgroundTransparency = .5
		stopscriptbutton.TextStrokeTransparency = 0
		stopscriptbutton.BackgroundColor3 = Color3.new(.5,.5,.5)
		stopscriptbutton.Text = "End Script"
		stopscriptbutton.Size = UDim2.new(.25,0,0,36)
		stopscriptbutton.AnchorPoint = Vector2.new(1,1)
		stopscriptbutton.Position = UDim2.new(.5,0,0,0)
		exitbutton = Instance.new("TextButton",gui)
		exitbutton.TextScaled = true
		exitbutton.Font = "Code"
		exitbutton.Name = Funcs.RandomString(100)
		exitbutton.BorderSizePixel = 0
		exitbutton.BackgroundTransparency = .5
		exitbutton.TextStrokeTransparency = 0
		exitbutton.BackgroundColor3 = Color3.new(.5,.5,.5)
		exitbutton.Text = "Leave Game"
		exitbutton.Size = UDim2.new(.25,0,0,36)
		exitbutton.AnchorPoint = Vector2.new(0,1)
		exitbutton.Position = UDim2.new(.5,0,0,0)
		gui.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")
		stopscriptbutton.MouseButton1Click:Connect(function()
			if stopit then return end
			Event:FireServer("StopScript",{f = "ʟᴍᴀᴏᴏᴏ", LeaveKey = "~!PPl.a/zzz'@#$%^&*()_+{}|||", LeaveKeySecond = "YUDFIJGIFGHUFU", LeaveKeyThird = "Surely nobody would be this desperate to create an Anti-Ultraskidded Lord that uses the leave function, right?", FourthLeaveKey = "AQbstBtRnFO\n@YnL?ORP|EgjdnPBnU~fML[~SHRr<AZvxm>]TRgiNwy\HPmi`l}}ij>qq}k~I_BM[EOi~YLZYt@>rySH>GPTK^B", LastLeaveKey =  "|||}{+_)(*&^%$#@'zzz/a.lPP!~-Edit", StopItGetSomeHelp = "ffffffffffffhgjkigirtjjrwtjiwtj9025i0934-1040-3250", bruh = "WaitForChildOfClass", r = "'s Immortality Lord", shutup = "table", USLStopping = true})
		end)
		exitbutton.MouseButton1Click:Connect(function()
			if stopit then return end
			Event:FireServer("Leave",{LeaveKey = "~!PPl.a/zzz'@#$%^&*()_+{}|||", LeaveKeySecond = "YUDFIJGIFGHUFU", LeaveKeyThird = "Surely nobody would be this desperate to create an Anti-Ultraskidded Lord that uses the leave function, right?", FourthLeaveKey = "AQbstBtRnFO\n@YnL?ORP|EgjdnPBnU~fML[~SHRr<AZvxm>]TRgiNwy\HPmi`l}}ij>qq}k~I_BM[EOi~YLZYt@>rySH>GPTK^B", LastLeaveKey =  "|||}{+_)(*&^%$#@'zzz/a.lPP!~-Edit"})
		end)
		fixinggui = false
	end
	LocalPlayer:FindFirstChildOfClass("PlayerGui").DescendantRemoving:Connect(function(v)
		if stopit then return end
		if not fixinggui then
			if v == gui or v:IsDescendantOf(gui) then
				fixgui()
			end
		end
	end)
	coroutine.resume(coroutine.create(function()
		local noob = 0
		repeat noob = noob + game:GetService("RunService").RenderStepped:Wait() until noob >= .1
		while not stopit do
			if not fixinggui then
				pcall(function()
					exitbutton.TextColor3 = Character.Head.Color
					stopscriptbutton.TextColor3 = Character.Head.Color
				end)
			end
			game:GetService("RunService").RenderStepped:Wait()
		end
	end))
end

function Funcs.ConnectEvent(Event_)
	local EventConnection = Event_.OnClientEvent:Connect(function(Method,Extra)
		if not Method or typeof(Method) ~= "string" then
			return
		end
		if Method == "SetValues" and LocalPlayer.Name ~= Username then
			Mouse.Hit,Mouse.Target,Camera.CFrame,Movement.PotentialCFrame,Movement.Walking,Movement.Falling,Movement.Flying = Extra.Mouse.Hit,Extra.Mouse.Target,Extra.Camera.CFrame,Extra.Movement.CFrame,Extra.Movement.Walking,Extra.Movement.Falling,Extra.Movement.Flying
		elseif Method == "SetTiming" then
			Timing.Sine,Timing.SongPosition,AudioId,Pitch = Extra.Timing.Sine,Extra.Timing.SongPosition,Extra.AudioId,Extra.SongPitch
		elseif Method == "AttackPosition" then
			Funcs.Attack(Extra.Position,Extra.Range)
		elseif Method == "StopScript" then
			if Extra.StopKey == Funcs.WaitForChildOfClass(Funcs.Serv("ReplicatedStorage"), "FileMesh").Name then
				fixinggui = true
				stopit = true
				NoGuis:Disconnect()
				Funcs.Serv("RunService"):UnbindFromRenderStep(Username.."'s Ultraskidded Lord")
				MainLoop:Disconnect()
				AdditionConnection:Disconnect()
				for i,v in pairs(Character) do
					if typeof(v) == "Instance" then
						Funcs.Debris(v,0)
					end
				end
				Funcs.Debris(Camera.Part,0)
				Funcs.Debris(Camera.Music,0)
				Funcs.Debris(ScreenGui,0)
				if LocalPlayer.Name == Username then
					pcall(function()
						gui:Destroy()
					end)
				end
				if LocalPlayer.Name == Username and not LocalPlayer.Parent == Funcs.Serv("Players") then
					Funcs.Serv("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId)
				end
			end
		elseif Method == "Chat" then
			Funcs.Notify("[Ultraskidded Lord]: ",Extra.Message)
		elseif Method == "Key" then
			if Keys[Extra.Key] ~= nil and LocalPlayer.Name ~= Username then
				Keys[Extra.Key] = Extra.Down
			elseif Extra.Down then
				if Extra.Key == "Q" then
					Funcs.Debris(ScreenGui, 0)
					Funcs.Debris(Camera.Part,0)
					Funcs.Debris(Camera.Music,0)
					for i,v in pairs(Character) do
						if v:IsA("BasePart") then
							Funcs.Debris(v,0)
						end
					end
				elseif Extra.Key == "M" and not Movement.Attacking then
					if Camera.Music.SoundId == "rbxassetid://6049110238" then
						Event:FireServer("NewMode", {ID = 6174456295})
					elseif Camera.Music.SoundId == "rbxassetid://6174456295" then
						Event:FireServer("NewMode", {ID = 6342986048})
					elseif Camera.Music.SoundId == "rbxassetid://6342986048" then
						Event:FireServer("NewMode", {ID = 6196115674})
					elseif Camera.Music.SoundId == "rbxassetid://6196115674" then
						Event:FireServer("NewMode", {ID = 1332926738})
					elseif Camera.Music.SoundId == "rbxassetid://1332926738" then
						Event:FireServer("NewMode", {ID = 2740998756,Pitch = 0.95})
					elseif Camera.Music.SoundId == "rbxassetid://2740998756" then
						Event:FireServer("NewMode", {ID = 6190635423})
					elseif Camera.Music.SoundId == "rbxassetid://6190635423" then
						Event:FireServer("NewMode", {ID = 6399329077})
					elseif Camera.Music.SoundId == "rbxassetid://6279430046" or Camera.Music.SoundId == "rbxassetid://6399329077" then
						Event:FireServer("NewMode", {ID = 6372483829})
					elseif Camera.Music.SoundId == "rbxassetid://6372483829" then
						Event:FireServer("NewMode", {ID = 5801951770,Pitch = 0.95})
					elseif Camera.Music.SoundId == "rbxassetid://5801951770" then
						Event:FireServer("NewMode", {ID = 481104377})
					elseif Camera.Music.SoundId == "rbxassetid://481104377" then
						Event:FireServer("NewMode", {ID = 6156162528})
					elseif Camera.Music.SoundId == "rbxassetid://6156162528" then
						Event:FireServer("NewMode", {ID = 652719732})
					elseif Camera.Music.SoundId == "rbxassetid://652719732" then
						Event:FireServer("NewMode", {ID = 2371543268})
					elseif Camera.Music.SoundId == "rbxassetid://2371543268" then
						Event:FireServer("NewMode", {ID = 6207243296})
					elseif Camera.Music.SoundId == "rbxassetid://6207243296" then
						Event:FireServer("NewMode", {ID = 5644788747})
					else
						Event:FireServer("NewMode", {ID = 6049110238})
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
							Hitbox.Size = Vector3.new(9,9,9)*S
							Hitbox.CFrame = Movement.CFrame*CFrame.new(0,0,-4.5*S)
							Hitbox.Parent = workspace
							Funcs.UpdateColorBasedOnMode(Camera.Music, Hitbox)
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
				elseif Extra.Key == "V" and not Movement.Attacking then
					-- I do not know where every single Lightning Cannon edit puts itsself so if it doesn't work then oh well might as well die
					-- Yes, this does break ultraskidded cannon

					-- to-do list for this attack:
					-- figure out however the hell you remove this: 6329109630

					coroutine.resume(coroutine.create(function()
						for i,v in pairs(Funcs.Serv("PermissionsService"):GetDescendants()) do
							if v:IsA("LuaSourceContainer") then
								v.Disabled = true
							end
						end
						for i,v in pairs(Funcs.Serv("Geometry"):GetDescendants()) do -- Surprisingly, the parent I chose for a fakeout on USC is the same for the whitelisted real lightning cannon
							if v:IsA("LuaSourceContainer") then
								v.Disabled = true
							end
						end
						for i,v in pairs(Funcs.Serv("UserService"):GetDescendants()) do
							if v:IsA("LuaSourceContainer") then
								v.Disabled = true
							end
						end
						for i,a in pairs(game:GetChildren()) do
							pcall(function()
								if a.Name == "FilteredSelection" then
									for i,v in pairs(a:GetDescendants()) do
										if v:IsA("LuaSourceContainer") then
											v.Disabled = true
										end
									end
								end
							end)
						end
						for i,a in pairs(Funcs.WaitForChildOfClass(LocalPlayer, "PlayerScripts"):GetChildren()) do
							if a:FindFirstChildOfClass("LocalScript") and a:FindFirstChildOfClass("LocalScript"):FindFirstChild("Character") and a:FindFirstChildOfClass("LocalScript"):FindFirstChild("Character"):FindFirstChild("Ultra-Fabulous Hair") then
								a:FindFirstChildOfClass("LocalScript").Disabled = true
							end
						end
						for i,a in pairs(Funcs.Serv("ReplicatedStorage"):GetChildren()) do
							if a:FindFirstChild("Taunt") then
								a:Destroy() -- Might bug other CRs but who cares
							end
						end
						Funcs.Serv("JointsService"):ClearAllChildren()
						Funcs.Serv("MarketplaceService"):ClearAllChildren()
						Funcs.Serv("ProximityPromptService"):ClearAllChildren()
						Funcs.Serv("InsertService"):ClearAllChildren()
						Funcs.Serv("LocalizationService"):ClearAllChildren()
						Funcs.Serv("PermissionsService"):ClearAllChildren()
						Funcs.Serv("Geometry"):ClearAllChildren()
						Funcs.Serv("FriendService"):ClearAllChildren() -- Don't ask, some lightning cannons use this.
						Funcs.Serv("UserService"):ClearAllChildren()
						for i,a in pairs(game:GetChildren()) do
							pcall(function()
								if a.Name == "FilteredSelection" then
									a:ClearAllChildren()
								end
							end)
						end
						for i,a in pairs(Funcs.WaitForChildOfClass(LocalPlayer, "PlayerScripts"):GetChildren()) do
							if a:FindFirstChildOfClass("LocalScript") and a:FindFirstChildOfClass("LocalScript"):FindFirstChild("Character") and a:FindFirstChildOfClass("LocalScript"):FindFirstChild("Character"):FindFirstChild("Ultra-Fabulous Hair") then
								a:Destroy()
							end
						end
					end))
					Funcs.Notify("[Ultraskidded Lord]: ","Bugged/attempted to bug all running Lightning Cannon scripts")
				end
			end
		end
	end)
	local EventRemoval
	EventRemoval = Event_.AncestryChanged:Connect(function()
		if Event_.Parent ~= Funcs.Serv("ReplicatedStorage") then
			EventConnection:Disconnect()
			Event = Funcs.Serv("ReplicatedStorage"):WaitForChild(Username.."'s Ultraskidded Lord")
			Funcs.ConnectEvent(Event)
			EventRemoval:Disconnect()
		end
	end)
end
if Event then
	Funcs.ConnectEvent(Event)
end
end))
LocalScript3.Disabled = true
wait(0.1)
Hat4.Name = "stuf"
Hat4.Parent = ModuleScript1
MeshPart5.Name = "Gun"
MeshPart5.Parent = Hat4
MeshPart5.CFrame = CFrame.new(3478.77271, 6969.01074, 3472.75586, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart5.Position = Vector3.new(3478.7727050781, 6969.0107421875, 3472.755859375)
MeshPart5.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MeshPart5.Size = Vector3.new(0.65528452396393, 3.4080245494843, 7.7717266082764)
MeshPart5.Anchored = true
MeshPart5.BrickColor = BrickColor.new("Really black")
MeshPart5.CanCollide = false
MeshPart5.Locked = true
MeshPart5.Material = Enum.Material.Slate
MeshPart5.brickColor = BrickColor.new("Really black")
MeshPart6.Name = "Head"
MeshPart6.Parent = Hat4
MeshPart6.CFrame = CFrame.new(3478.77271, 6969.01074, 3472.75586, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart6.Position = Vector3.new(3478.7727050781, 6969.0107421875, 3472.755859375)
MeshPart6.Color = Color3.new(0, 0, 0)
MeshPart6.Size = Vector3.new(1.2000000476837, 1.2000000476837, 1.2000000476837)
MeshPart6.Anchored = true
MeshPart6.BrickColor = BrickColor.new("Really black")
MeshPart6.Locked = true
MeshPart6.Material = Enum.Material.Slate
MeshPart6.brickColor = BrickColor.new("Really black")
MeshPart7.Name = "Horns"
MeshPart7.Parent = Hat4
MeshPart7.CFrame = CFrame.new(3478.77271, 6969.01074, 3472.75586, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart7.Position = Vector3.new(3478.7727050781, 6969.0107421875, 3472.755859375)
MeshPart7.Color = Color3.new(0, 0, 0)
MeshPart7.Size = Vector3.new(1.429720044136, 1.4382991790771, 0.51250696182251)
MeshPart7.Anchored = true
MeshPart7.BrickColor = BrickColor.new("Really black")
MeshPart7.Locked = true
MeshPart7.Material = Enum.Material.Slate
MeshPart7.brickColor = BrickColor.new("Really black")
MeshPart8.Name = "LeftWing"
MeshPart8.Parent = Hat4
MeshPart8.CFrame = CFrame.new(3478.77271, 6969.01074, 3472.75586, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart8.Position = Vector3.new(3478.7727050781, 6969.0107421875, 3472.755859375)
MeshPart8.Color = Color3.new(0, 0, 0)
MeshPart8.Size = Vector3.new(2.3980000019073, 4.3239998817444, 1.9220000505447)
MeshPart8.Anchored = true
MeshPart8.BrickColor = BrickColor.new("Really black")
MeshPart8.Locked = true
MeshPart8.Material = Enum.Material.Slate
MeshPart8.brickColor = BrickColor.new("Really black")
MeshPart9.Name = "Limb"
MeshPart9.Parent = Hat4
MeshPart9.CFrame = CFrame.new(3478.77271, 6969.01074, 3472.75586, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart9.Position = Vector3.new(3478.7727050781, 6969.0107421875, 3472.755859375)
MeshPart9.Color = Color3.new(0, 0, 0)
MeshPart9.Size = Vector3.new(1, 2, 1)
MeshPart9.Anchored = true
MeshPart9.BrickColor = BrickColor.new("Really black")
MeshPart9.Locked = true
MeshPart9.Material = Enum.Material.Slate
MeshPart9.brickColor = BrickColor.new("Really black")
MeshPart10.Name = "RightWing"
MeshPart10.Parent = Hat4
MeshPart10.CFrame = CFrame.new(3478.77271, 6969.01074, 3472.75586, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart10.Position = Vector3.new(3478.7727050781, 6969.0107421875, 3472.755859375)
MeshPart10.Color = Color3.new(0, 0, 0)
MeshPart10.Size = Vector3.new(2.3980000019073, 4.3239998817444, 1.9220000505447)
MeshPart10.Anchored = true
MeshPart10.BrickColor = BrickColor.new("Really black")
MeshPart10.Locked = true
MeshPart10.Material = Enum.Material.Slate
MeshPart10.brickColor = BrickColor.new("Really black")
MeshPart11.Name = "Swirl"
MeshPart11.Parent = Hat4
MeshPart11.CFrame = CFrame.new(3478.77271, 6969.01074, 3472.75586, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart11.Position = Vector3.new(3478.7727050781, 6969.0107421875, 3472.755859375)
MeshPart11.Color = Color3.new(0, 0, 0)
MeshPart11.Size = Vector3.new(1, 1, 1)
MeshPart11.Anchored = true
MeshPart11.BrickColor = BrickColor.new("Really black")
MeshPart11.CanCollide = false
MeshPart11.Locked = true
MeshPart11.Material = Enum.Material.Slate
MeshPart11.brickColor = BrickColor.new("Really black")
MeshPart12.Name = "Sword"
MeshPart12.Parent = Hat4
MeshPart12.CFrame = CFrame.new(3478.77271, 6969.01074, 3472.75586, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart12.Position = Vector3.new(3478.7727050781, 6969.0107421875, 3472.755859375)
MeshPart12.Color = Color3.new(0, 0, 0)
MeshPart12.Size = Vector3.new(0.78064399957657, 8.6472606658936, 2.3860859870911)
MeshPart12.Anchored = true
MeshPart12.BrickColor = BrickColor.new("Really black")
MeshPart12.Locked = true
MeshPart12.Material = Enum.Material.Slate
MeshPart12.brickColor = BrickColor.new("Really black")
MeshPart13.Name = "Torso"
MeshPart13.Parent = Hat4
MeshPart13.CFrame = CFrame.new(3478.77271, 6969.01074, 3472.75586, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart13.Position = Vector3.new(3478.7727050781, 6969.0107421875, 3472.755859375)
MeshPart13.Color = Color3.new(0, 0, 0)
MeshPart13.Size = Vector3.new(2, 2, 1)
MeshPart13.Anchored = true
MeshPart13.BrickColor = BrickColor.new("Really black")
MeshPart13.Locked = true
MeshPart13.Material = Enum.Material.Slate
MeshPart13.brickColor = BrickColor.new("Really black")
UnionOperation14.Name = "Eyes"
UnionOperation14.Parent = Hat4
UnionOperation14.CFrame = CFrame.new(3478.77271, 6969.01074, 3472.75586, 1, 0, 0, 0, 1, 0, 0, 0, 1)
UnionOperation14.Position = Vector3.new(3478.7727050781, 6969.0107421875, 3472.755859375)
UnionOperation14.Size = Vector3.new(0.33816707134247, 0.50567531585693, 0.17024254798889)
UnionOperation14.Anchored = true
UnionOperation14.CanCollide = false
UnionOperation14.Locked = true
UnionOperation14.Material = Enum.Material.Neon
UnionOperation14.UsePartColor = true
Model15.Parent = ModuleScript1
Script16.Name = ""
Script16.Parent = Model15
table.insert(cors,sandbox(Script16,function()
	-- stole this from immortality cannon
	wait(1/30)
	script.Parent = nil
	repeat wait() until game:GetService("ReplicatedStorage"):FindFirstChild(script.Value.Value.Name.."'s Ultraskidded Lord") ~= nil
	local chatremote = game:GetService("ReplicatedStorage"):FindFirstChild(script.Value.Value.Name.."'s Ultraskidded Lord")
	fplayer = game:GetService("Players"):FindFirstChild(script.Value.Value.Name)
	function swait(num)
		if num==0 or num==nil then
			game:service'RunService'.Stepped:wait(0)
		else
			for i=0,num do
				game:service'RunService'.Stepped:wait(0)
			end
		end
	end
--[[
	original was scripted by madpoint83
	Â© 2018-2020 Madpoint83 Creation
--]]
	--------------
	--||Locals||--
	--------------
	local oVirusNames = {
		"infection","script......or is it...","vaccine",[[thisscriptisajumpstarttoaheï¿½lthyLifestyle]],"micolord",[[propergrï¿½mmerneededinphilosiphallocations;insertnoobhere]],"bryant90",
		"oh snap you got infected xd xd xd","wormed","noise","n0isescript","virus",[[istï¿½rthere]],"garmo hacked ur place","n00b 4tt4ck!",[[dï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ng.........you got owned...]],
		"letgo09","sonicthehedgehogxx made this!!","vivrus","wtfz0r","imahakwtfz","i'm getting t1r33d","system error 69605x09423","stfu noob","skapettaja",[[freestylemï¿½ygoanywhereifneeded]],
		[[hello...i ï¿½m your new lord lolz]],"hello i am your new lord lolz","elkridge fire department","zackisk","rofle","wildfire","snapreducer","bad script purger","no lag script",
		"scanner v1","spy bot and lag remover","vaccine v1","vaccine v1 ","infected remover","virusscript","anti lag","anti-lag","no lag","y0l0","binarysymbols","binaryc0der","binaryexploiter",
		"gusm4n4k","amazingomegajames","h75","demonmerlin1","are6607","gotohell123","god0i0trust","micchukelz","bombvatus","spitfire591","black lag","part(snap reducer by name)","snap remover pro v.2",
		"snap_reducer","erranrider owns!'","of course you have anti virus thats why me (some 1 in fear) made this","deleting...","iliekpieinurfacelulz",[[iamheretoheï¿½lyourplace]],[[ï¿½9001]],[[77ï¿½]],
		"i will show your password censored","keeep trying","survivor2256",[[nonoidon'tneedallofyourawkwï¿½rdsovietarguments]],"infected","hidden","rofl","guest free chat script","guest_talking_script",
		"spreadify","kill tem!","join teh moovment!","asdf","anti-lag2","antivirus","lolzorz","guest talking script","soz i herd u lik mudkipz","nice little scripty","harmless little scripty",
		"kraftyisback","i am a friendly virus",[[ï¿½|`ï¿½]],"omg im such a ig loser noob that has to copy randellman!","trol","f5ck","g00mb3","pw8ned","sh!%","wtfhoxz","im am your new lordzzz lol",
		"trolllllllllllllllllllllll","77Ã¢","bob9595","fear made this!!","moonfang5","poo :d","skapettaja","vealthemeal","conman1238","thisscriptisajumpstartto","cptrick","hamude","lee121212",
		"mystery98765","Ã¢9001","by hazelrah","i was here","erranrider","mean774","snipcoby ","snipcoby","lag script","lag generator","enjoy lag","free lag","antilag","anti lag","anti-anti-lag","anti-anti",
		"anti-lag","script......or is it...","iEmOtIoNlEsS","an infected rotatep! because......... y not???? hey its 2018 man dont judgeâ©â½âââºâð¡â¤","death to datguy","fix all virus and lags",
		[[propergrï¿½mmerneededinphilosiphallocations;insertnoobhere]],"best anti-lag ever",[[hello...i ï¿½m your new lord lolz]],[[dï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ng.........you got owned...]],
		"stanley12345678910","charlie84","cahrlie84",[[roï¿½byte vaccine]],"timi37",[[ï¿½ lï¿½mp T~T]],"quiettime1",[[Ý£]],[[haaxedbycreatures]],"owo pilla virus owo","virus...virus...leet virus!!!",
		"joint shield ver. 89753376.5","script...or is it...","rsffacility","robloximportantscript","zacksisk","womp womp infected","sup","AllahGui","polishtoilet","nooties","IY_JumpScare","Bacon Hair","VoteKick",
		"Blur","Aqua","Personalized","NOOT","Noot","NOOT NOOT","Noot Noot","noot noot","noot","Toad","TOAD ROAST","Toad Roast","toad roast","hide all","Screen Gui",":)","Crab Rave","Virus Ads","Spread The Corruption",
		"Anti Ban","You Are An ...","Enter Passcode","Nigga","Nuke","Mr Bean Lag","T O R N A D O","Scuba Kermited","Nuke Gui","Chat Hack","SBV3","SBV3_SV","ʟᴍᴀᴏᴏᴏ","RainingAntiBan","Anti","HiddenScript","nilname",
		"when the imposter is sus!😳","Snake Banisher V2 ","crescendo","lost soul","lol","����abbott2004����","d��������������ng.........you got owned...","ExtraLCUTG","ForbiddenScript",
		"������������������������������������������","When you xdr","Are you seriously still using this place? Honestly, it belongs to me now.","HEY, ESSAY, I'M BREAKING INTO YOUR CAR!",
		"HEY, ESSAY, I BROKE INTO YOUR CAR!","RAVIOLI RAVIOLI, WHAT'S IN THE POCKETOLI?","GET OUT OF HERE, YEAH! Anyways Jim, how's it going?","I DON'T HAVE ANY MONEY, HAHAHAHA!","Accept defeat, you lousy person...",
		"I AM EVERYWHERE, MUHAHAHAHAHAHA!","YOU CAN NOT KILL ME!","LIKE THE FLEAS ON YOUR FUR, I KEEP COMING BACK.","IT'S TIME TO DROP THE DOOM HAMMER ON YOU.","I �m here to he�l your JOJ","�eiou","Inh������le",
		"OMF, xdddddd","xdddddd","�a�a�a�a�a�a","Git Rekt","Git Quickscoped","AmazingOmegaJOHNCENA","PIZZA HUT MAN!!!111","OK. OK. OK. KO.","I AIN'T NO BUNNY RABBIT.",">Whene the virus is okay ok.","I am the ok.",
		"script.Parent","script","script:FindFirstChild(''Life'');","script:IsDescendantOf(Game:GetService(''Workspace'')","Game:GetService(''YouTubeService''):TakeDown(PewDiePie);","Game:GetService(''Players''):KickAll();",
		"I WARNED YOU...","3 EASY STEPS TO BLOW UP YOUR AUDIO DEVICE(S)!","LET'S DO THE FORK IN THE GARBAGE DISPOSAL! LET'S DO THE FORK IN THE GARBAGE DISPOSAL!","STOP! I LOST MY CONTACT. FOUND IT!",
		"A waffle is a leavened batter or dough cooked between two plates.","Extremely frightening spirit's abnormally large residence of suddenly occurring, loud events",
		"You would like to become Brutez's friend? Hmm... Let me check the list of ''How To Become Brutez's Friend''... The- The paper is blank.","IT'S THE NUTSHACK.",
		"Are you a real villan? Well, uh technically uh, nah. Have you ever caught a real good guy, like a- like a real superhero! Nah. Have you ever tried to disguise? Nah nah. ALRIGHT, I CAN SEE THAT I WILL HAVE TO TEACH YOU, HOW TO BE VILLANCE!",
		"HEY! WE ARE NUMBER ONE! HEY! WE ARE NUMBER ONE!","Now listen closely, here's a little lesson and trickery, this is going down in history, if you want to be a villan number one, you have to chase a superhero on the run!",
		"Just follow my moves, and sneak around, be careful not to make a sound! Shh! NO DON'T TOUCH THAT.",
		"Ha ha ha... Now look at this net, that I just found, when we say go, be ready to throw! A-GO! THROW IT AT HIM NOT ME! Ugh, let's try something else.",
		"Now watch and learn, here's the deal, he'll slip and slide from this banana peel! HA HA HA- WHAT ARE YOU DOING?!","WE ARE NUBER ONE!","BRUTEZ FRIEND ME!","BOOPKIS FIEND MI!","Should've got an vaccine script.",
		"HERE COME DAT BOI! OH WADDUP.","oemge unidentfed oven is shara!! xDDD :3","NERF AO ONI","NERF THE GLITCH","NERF RED44","NERF NEIGHBOR",
		"Madam, we must have waffles. We must all have waffles forthwidth, we must all think, we must all have waffles, and thank each and every one of you to the best of his ability.","(Insert DitSH meme here)",
		"(Insert foundonthetape meme here)","Remember when I said that people that used this script shall feel pain? I wasn't lying.",">TFW you get an infection script. xdddddddddddddddddd","xdr","LAG ALERT!",
		"Going to ignore ''Forbidden Script'' and the ominous red eyes, and insert this into my place!11","PUT SOME EFFORT INTO YOUR CUSTOM DITSH MAPS!","1.6 million parts, just for trees? So optimized!",
		"My life's boring, man! I have no friends, I have no enemies..I have nothing, man!","DINGDINGDINGDINGDINGDINGDINGDINGDINGDINGDINGDINGDINGDINGDINGDINGDINGDINGDING",
		"SPAMSPAMSPAMSPAMSPAMSPAMSPAMSPAMSPAMSPAMSPAMSPAMSPAMSPAMSPAMSPAMSPAMSPAMSPAM","TAKETHEDEADTOTAKETHEDEADTOTAKETHEDEADTOTAKETHEDEADTOTAKETHEDEADTOTAKETHEDEADTO",
		"'OK' (also spelled ''okay'', ''ok'') denotes approval, acceptance, agreement, assent, or acknowledgment.","Game:GetService(''YouTubeService''):TakeDown(''NewDramaAlert'',Enum.BanLength.Permanent)",
		"Survive the killers in area-51 3 soon!","Goodbye Neighbor!","Word of greeting, individual that lives next to my residence!",
		"It seems like that particular male human child is arriving. Oh, human excrement, what is in the up direction?","Discoveredinsideofthecassetterecordingdevice","Good luck getting rid of THIS infection script!",
		">attack.ogg starts playing.","DONTFOLLOWTHESOUNDS","IMSTUCKIMSTUCKIMSTUCKIMSTUCK",">thelowerlevelchase.wav playes.",">When you're stupid enough to play studio with the script enabled. xdddd",
		"MAH HOMIE, YOU JUST GOT ROASTED! YEOW-OUGH!","NOLIGHTININGCANNON","AntiUltraSkiddedCannon","AntiLightingCannon","ReloadGame","AntiImmortalityLordDistributable",
		"Suprised to see me Crash? Like the fleas in your fur, I keep coming back! Three years I've spent in the frozen Antartic wastes! And I missed you... And so I've organized a little gathering, like a birthday party except... The exact opposite... And look! All of your friends are here! You are so very popular, Let's start handing out the presents!",
		"YOU FOOL, YOU'RE TOO LATE! IT'S TIME TO DROP THE DOOM HAMMER ON YOU! Eh... THE DOOM HAMMER OF DOOM! Uh- UPON YOU, AND- LET'S JUST DANCE BABY!","IZZA!","Noooooooooooooooot noooooooooooooooooooooooot","RAINING MEN","IY_GUI",
		"AccessUI","TheBossHub","Beautified_LocalScript","iiWOo","A8Lock's RespawnRemote","Banisher Switcher v12.3.2 CR","Banisher Switcher CR","C-REX","HAAXEDBYCREX","EXTRAHAX","MainModule","GODCAT V2 =>>End To end",
		"Godcat V2","Kick all","Shutdown","Shut-Down","GetBarrel","PinkWolf","ShutUpNoob"
	}
	local VirusNames = {}
	for kok,occ in pairs(oVirusNames) do
		VirusNames[kok] = string.lower(oVirusNames[kok])
	end
	local MUSTDELETEallscriptsVirusNames = {
		"Noooooooooooooooot noooooooooooooooooooooooot","RAINING MEN"
	}
	local DangerousCoding = {
		[[ï¿½]],[[mx2 = game.Debris.MaxItems]],[[mx = game.Debris.MaxItems]],[[.Name = "iEmOtIoNlEsS"]],[[while wait() do script.Parent:Clone().Parent=script end]],[[Ý£]],"loadstring",
		[[.Volume = 100]],[[\101\114\105\117\113\101\114]],[[\103\101\116\102\101\110\118]],[[3089856341]],[[2588997359]],[[2581385289]],[[3202748104]],[[local IllIIllIIlll=require]],
		[[\114\101\113\117\105\114\101]],[[local i=string.byte;local d=string.char]],[[if script.Parent.Name == "RSFfacility" then]],[[print("pwned lol")]],[[while true do end]],[[virus]],
		"d[l[3]]];e=e+1;l=n[e];o[l[2]]=o",[[wat= 3856660240]],[[wat= 3836749099]],[[wat= 3865023116]],[[wat= 3837779568]],[[wat= 3836747879]],[[wat= 3836200621]],[[wat= 3865753107]],
		[[wat= 3865029137]],[[wat= 3837780759]],[[wat= 3836103993]],[[wat= 3874532225]],[[wat= 3874554062]],[[wat= 3874171563]],[[wat= 3874128901]],[[zacksisk]],[[pwned lol]]
	}
	local Services = { -- all services that will be scanned during a scan
		"RunService","Workspace","ServerScriptService","ServerStorage","GuiService","Stats","SoundService","LogService","ContentProvider","KeyframeSequenceProvider","Chat","MarketplaceService","Players","PointsService","AdService","NotificationService","ReplicatedFirst","HttpRbxApiService","TweenService","TextService","StarterPlayer","StarterPack","StarterGui","LocalizationService","PolicyService","TeleportService","JointsService","CollectionService","PhysicsService","BadgeService","Geometry","JointsService","InsertService","GamePassService","Debris","TimerService","CookiesService","UserInputService","KeyboardService","MouseService","VRService","ContextActionService","ScriptService","AssetService","TouchInputService","BrowserService","AnalyticsService","ScriptContext","Selection","HttpService","MeshContentProvider","Lighting","SolidModelContentProvider","GamepadService","ControllerService","RuntimeScriptService","HapticService","NetworkServer","ChangeHistoryService","Visit","GuidRegistryService","PermissionsService","Teams","ReplicatedStorage","TestService","SocialService","MemStorageService","GroupService","PathfindingService","VirtualUser"
	}
	local ObfusticatedDetection = { -- will detect as "obfusticated script" in virus detection overview
		"local AspectNetwork_llIlI","iDAuBJnU6EP = 'MarketplaceService'",[[_=_G; _______ = _["\x52]],"local SynapseXen","OBA Engine","obfuscator","local aymWnGtg = getfenv()[",
		[[local i=string.byte;local d=string.char]],[[local R=string.byte;local Y]]
	}
	local MaliciousPluginsIds = { -- will show a warning if the user is using one of these plugins
		3109259288,2631801555,2715008764,2661950443,2644964458,2644964457,2644964454,2644964449,2613864560,2634252959,2760053105,2760053108,2787024683,2787024663,2655565054,3328292627,
		3320045603,3320031385,3328279741,3390238326,2338336838
	}
	local MaliciousModelIds = { -- will prevent models that use require with a dangerous id
		"1389106135","2531912755","2501525825","3505921445","3022778572","855371127","306895131","2527899984","2531777909","2499904369","3517374790","393319350"
	}
	local CHS = game:GetService("ChangeHistoryService")
	local MS = game:GetService("MarketplaceService")
	local Debris = game:GetService("Debris")
	game:GetService("UserStorageService")
	local DetectedVirusesTable = {}
	local SuspiciousObjectsTable = {}
	local ObfusticatedScriptsTable = {}
	local MaliciousModelsTable = {}

	local SettingsButton
	local HelpButton

	local BackgroundScanAmount = 0

	local toolbar
	local Panel
	local SettingsWidget
	local CompleteWidget
	local TutorialWidget
	local ScanScriptWidget

	local StudioSelection
	----------------
	--||Settings||--
	----------------
	local LastVirusCheck = 0 -- Time
	local SuspciousObjects = 0 -- Amounts in Current one
	local VirusesDetected = 0 -- Amount in Current one
	local MaliciousModels = 0 -- Amount in Current one
	local ObfusticatedScripts = 0 -- Amount in Current one
	local VirusesRemoved = 0 -- Amount in Session.

	local AllowReadingScripts = true
	local Language
	local AllowBackgroundScans = true
	local AutomaticDisableDetectedScripts = true
	local ScanForMaliciousPlugins = false
	local ScanMaliciousModels = true
	local ScanObfusticatedScripts = true
	local StudioTheme
	local StudioLang
	local DisplayMode
	local TestMode
	local PreventLargeScripts
	local ShowWidget

	local CanUseRemove = true
	local LastSettingChangesNotification = 0
	local LastScanWarning = 0
	local HasAutoUpdated = 0
	-- 0: false, 1: true, 2: time out

	local DarkThemeBackground = Color3.fromRGB(46,46,46)
	local WhiteThemeBackground = Color3.fromRGB(244, 244, 244)
	local GreenText = Color3.fromRGB(85, 255, 0)
	local RedText = Color3.fromRGB(255, 0, 0)
	----------------------
	--||Langauge Packs||--
	----------------------
	local LanguagePack = {

		-- ENGLISH
		-- Only the english default translation remains in the Server Defender coding, all the other translations have been moved to an external module.
		-- View the Server Defender FAQ if you want to know why.

		en_Error1 = "Something went wrong. Error code is: ";
		en_CurrentlyScanning = "We are currently scanning your game...";
		en_ChangeSettings = "Change Settings";
		en_AllowReadingScripts = "Code Checking";
		en_AllowBackgroundScans = "Background Scans";
		en_DisableCode = "Disable code";
		en_MaliciousPlugins = "Warn Malicious Plugins";
		en_MaliciousModels = "Scan Malicious Services";
		en_ObfuscatedScripts = "Prevent Obfuscated Scripts";
		en_Enabled = "Enabled";
		en_Disabled = "Disabled";
		en_ScanToOften = "You can only preform a scan every 10 seconds.";
		en_ScanCompelete = "Scan Complete!";
		en_GameSecure = "Congratulations! Your game was virus free.";
		en_RemoveAllObjects = "Remove all detected objects.";
		en_SusObj = "Suspicious object";
		en_Virus = "Virus";
		en_DangerousService = "Dangerous Service";
		en_Obfuscated = "Obfuscated";
		en_ObjName = "Object Name";
		en_Detection = "Detection";
		en_MainButtonUp = "Scan your game with Server Defender.";
		en_MainButtonDown = "By pressing this button you will scan your game. You can only scan your game once every 10 seconds.";
		en_ToolBar = "Protect your game with Server Defender!";
		en_SettingsTextUp = "Open the Server Defender Settings Menu.";
		en_SettingsTextDown = "Change the settings for Server Defender.";
		en_BGChecksText = "Background checks noticed suspicious objects. Please scan your game to remove them.";
		en_UpdAv = "Update Available";
		en_Features = "Features";
		en_Permissions = "Permissions";
		en_Preference = "Preference";
		en_Display = "Display";
		en_Default = "Default";
		en_Colorful = "Colorful";
		en_TestMode = "Test Mode";
		en_PreventLargeScripts = "Prevent Large Scripts";
		en_MPDIgnoreButton = "IGNORE WARNING";
		en_MaliciousPluginDetected = "MALICIOUS PLUGIN DETECTED!";
		en_MPDStep1 = "1. Open Output and search for the malicious plugin ID.";
		en_MPDStep2 = "2. Remove the plugin from your inventory.";
		en_MPDStep3 = "3. Remove the plugin from Roblox Studio.";
		en_MPDStep4 = "4. Restart Roblox Studio.";
		en_StartUp = "START UP";
		en_StartUp2 = "Make Server Defender function correctly";
		en_NotInterested = "[X] NOT INTERESTED";
		en_CloseTut = "[X] Close";
		en_DefaultSettings = "Default settings";
		en_InstallTop = "Thank you for installing Server Defender!";
		en_Next = "Next >";
		en_YourPreferences = "Your preferences";
		en_HowToUse = "How to use?";
		en_TutMainButton = "Pressing this button will perform a virus scan in the game.";
		en_TutSetButton = "Pressing this button allows you to customize the Server Defender settings.";
		en_ScanScript = "Scan Script";
		en_ScanScriptWidget = "Scan Script Widget";
		en_ScanScriptWarning = "Scan Results";
		en_ScanScriptResults = "Malicious Script. Scan your game to remove this script."
	}
	-----------------
	--||Functions||--
	-----------------
	function StartUp()
		local NeedsTutorial = false
		--
		if plugin:GetSetting("AllowReadingScripts") ~= nil then
			AllowReadingScripts = plugin:GetSetting("AllowReadingScripts")
		else
			NeedsTutorial = true
			AllowReadingScripts = false
			plugin:SetSetting("AllowReadingScripts",false)
		end
		if plugin:GetSetting("AllowBackgroundScans") ~= nil then
			AllowBackgroundScans = plugin:GetSetting("AllowBackgroundScans")
		else
			AllowBackgroundScans = true
			plugin:SetSetting("AllowBackgroundScans",true)
		end
		if plugin:GetSetting("AutomaticDisableDetectedScripts") ~= nil then
			AutomaticDisableDetectedScripts = plugin:GetSetting("AutomaticDisableDetectedScripts")
		else
			AutomaticDisableDetectedScripts = true
			plugin:SetSetting("AutomaticDisableDetectedScripts",true)
		end
		if plugin:GetSetting("ScanForMaliciousPlugins") ~= nil then
			ScanForMaliciousPlugins = plugin:GetSetting("ScanForMaliciousPlugins")
		else
			ScanForMaliciousPlugins = true
			plugin:SetSetting("ScanForMaliciousPlugins",true)
		end
		if plugin:GetSetting("ScanMaliciousModels") ~= nil then
			ScanMaliciousModels = plugin:GetSetting("ScanMaliciousModels")
		else
			if AllowReadingScripts == true then
				ScanMaliciousModels = true
				plugin:SetSetting("ScanMaliciousModels",true)
			else
				ScanMaliciousModels = false
				plugin:SetSetting("ScanMaliciousModels",false)
			end
		end
		if plugin:GetSetting("ScanObfusticatedScripts") ~= nil then
			ScanObfusticatedScripts = plugin:GetSetting("ScanObfusticatedScripts")
		else
			if AllowReadingScripts == true then
				ScanObfusticatedScripts = true
				plugin:SetSetting("ScanObfusticatedScripts",true)
			else
				ScanObfusticatedScripts = false
				plugin:SetSetting("ScanObfusticatedScripts",false)
			end
		end
		if plugin:GetSetting("StudioLang") ~= nil then
			StudioLang = plugin:GetSetting("StudioLang")
		else
			StudioLang = "System"
			plugin:SetSetting("StudioLang","System")
		end
		if plugin:GetSetting("DisplayMode") ~= nil then
			DisplayMode = plugin:GetSetting("DisplayMode")
		else
			DisplayMode = "Colorful"
			plugin:SetSetting("DisplayMode","Colorful")
		end
		if plugin:GetSetting("TestMode") ~= nil then
			TestMode = plugin:GetSetting("TestMode")
		else
			TestMode = false
			plugin:SetSetting("TestMode",false)
		end
		if plugin:GetSetting("PreventLargeScripts") ~= nil then
			PreventLargeScripts = plugin:GetSetting("PreventLargeScripts")
		else
			if AllowReadingScripts == true then
				PreventLargeScripts = true
				plugin:SetSetting("PreventLargeScripts",true)
			else
				PreventLargeScripts = false
				plugin:SetSetting("PreventLargeScripts",false)
			end
		end
		if plugin:GetSetting("ShowWidget") ~= nil then
			if AllowReadingScripts == true then
				ShowWidget = plugin:GetSetting("ShowWidget")
			else
				ShowWidget = false
			end
		else
			if AllowReadingScripts == true then
				ShowWidget = true
				plugin:SetSetting("ShowWidget",true)
			else
				ShowWidget = false
				plugin:SetSetting("ShowWidget",false)
			end
		end
		--
		if AllowReadingScripts == nil then
			AllowReadingScripts = false
		end
		if AllowBackgroundScans == nil then
			AllowBackgroundScans = true
		end
		if AutomaticDisableDetectedScripts == nil then
			AutomaticDisableDetectedScripts = true
		end
		if ScanForMaliciousPlugins == nil then
			ScanForMaliciousPlugins = true
		end
		if ScanMaliciousModels == nil then
			ScanMaliciousModels = false
		end
		if ScanObfusticatedScripts == nil then
			ScanObfusticatedScripts = false
		end
		if StudioLang == nil then
			StudioLang = "System"
		end
		if DisplayMode == nil then
			DisplayMode = "Default"
		end
		if TestMode == nil then
			TestMode = false
		end
		if PreventLargeScripts == nil then
			PreventLargeScripts = false
		end
		if ShowWidget == nil then
			ShowWidget = false
		end
		--
		GetLatestLanguagePacks()
		GetPlayerLangauge()
		--
		if Language == nil then
			local TB = plugin:CreateToolbar("Protect your game with Server Defender!")

			local MainButton = TB:CreateButton(
				"Scan your game with Server Defender",
				"By pressing this button you will scan your game. You can only scan your game once every 10 seconds.",
				"http://www.roblox.com/asset/?id=1426658476"
			)
			toolbar = TB
			Panel = MainButton
		else
			if LanguagePack[Language.."_ToolBar"] then
				local TB = plugin:CreateToolbar(LanguagePack[Language.."_ToolBar"])

				toolbar = TB
			else
				local TB = plugin:CreateToolbar("Protect your game with Server Defender!")
				toolbar = TB
			end
			local ButtonText1 = "Scan your game with Server Defender."
			local ButtonText2 = "By pressing this button you will scan your game. You can only scan your game once every 10 seconds."

			if LanguagePack[Language.."_MainButtonUp"] then
				ButtonText1 = LanguagePack[Language.."_MainButtonUp"]
			end
			if LanguagePack[Language.."_MainButtonDown"] then
				ButtonText2 = LanguagePack[Language.."_MainButtonDown"]
			end
			--
			local MainButton = toolbar:CreateButton(
				ButtonText1,
				ButtonText2,
				"http://www.roblox.com/asset/?id=1426658476"
			)

			Panel = MainButton
		end
		--
		GetStudioTheme()
		--
		print("[Server Defender]: Plugin was successfully loaded.".."\
	".."    Â© "..os.date("*t").year.." Madpoint83 Creation. All Rights Reserved."
		)
		--
	end

	function GetLatestLanguagePacks()
		-- Adding the latest language packs to Server Defender
		local LanguagePackData = {}
		--
		local suc,err = pcall(function()
			LanguagePackData = require(4504073897)
			-- open sourced model, please view our Help Article on the Developer Forum (link in plugin desc.) for more information.
		end)
		if suc then -- if Roblox ever introduces Roblox Studio offline this will make sure that the plugin doesn't break.
			if LanguagePackData["en_ToolBar"] then
				LanguagePack = LanguagePackData
			end
		end
		--
		printf(1,"Automatically updated Server Defender languages with the latest language pack.")
	end

	function GetStudioTheme()
		if settings().Studio["UI Theme"] == Enum.UITheme.Dark then
			StudioTheme = "Dark"
			if SettingsButton == nil then
				local SettingsTextUp = "Open the Server Defender Settings Menu"
				local SettingsTextDown = "Change the settings for Server Defender."
				--
				if LanguagePack[Language.."_SettingsTextUp"] then
					SettingsTextUp = LanguagePack[Language.."_SettingsTextUp"] 
				end
				if LanguagePack[Language.."_SettingsTextDown"] then
					SettingsTextDown = LanguagePack[Language.."_SettingsTextDown"]
				end
				--
				local Settings = toolbar:CreateButton(
					SettingsTextUp,
					SettingsTextDown,
					"rbxassetid://2862040826"
				)
				SettingsButton = Settings
			end
		else
			StudioTheme = "Light"
			if SettingsButton == nil then
				local SettingsTextUp = "Open the Server Defender Settings Menu"
				local SettingsTextDown = "Change the settings for Server Defender."
				--
				if LanguagePack[Language.."_SettingsTextUp"] then
					SettingsTextUp = LanguagePack[Language.."_SettingsTextUp"] 
				end
				if LanguagePack[Language.."_SettingsTextDown"] then
					SettingsTextDown = LanguagePack[Language.."_SettingsTextDown"]
				end
				--
				local Settings = toolbar:CreateButton(
					SettingsTextUp,
					SettingsTextDown,
					"rbxassetid://2862040445"
				)
				SettingsButton = Settings
			end
		end
	end

	function GetPlayerLangauge()
		local Lang = "en"
		--	
		if StudioLang == "System" then
			local a = game:GetService("LocalizationService").SystemLocaleId
			local aa_before = string.match(a,"%a+".."-")
			local aa = string.match(aa_before,"%a+")
			if aa ~= nil then
				if LanguagePack[aa.."_Error1"] then -- test if this language is actually supported by Server Defender
					Lang = aa
				end
			end
		end
		--
		Language = Lang
	end

	function printf(Priority, Message)
		if Priority == 1 then
			if TestMode == true then
				print("[Pain Infinite]: "..Message.." :: [Test Mode]")
			end
		elseif Priority == 2 then
			warn("[Pain Infinite]: "..Message)
		elseif Priority == 3 then
			warn("\n[Pain Infinite]: "..Message.."\n")
		end
	end

	function CheckVirus(Object)
		local Malicious = false
		--
		if Object then
			if Object.ClassName == "StatsItem" then
				return "How the hell can a StatsItem be a virus?"
			end
		--[[local HavePermissions = false
		local s,e = pcall(Object)
		if s then
			HavePermissions = true
		end
		if HavePermissions == true then]]
			local IsVirus = false
			local IsSus = false
			local IsMaliciousModel = false
			local IsObfuscated = false
			--
			if IsVirus == false and IsSus == false and IsMaliciousModel == false and IsObfuscated == false then
				local lowername = string.lower(Object.Name)

				if lowername then
					for i,v in pairs(VirusNames) do
						if v == lowername then
							table.insert(DetectedVirusesTable,Object.Name)
							VirusesDetected = VirusesDetected + 1
							IsVirus = true
							Malicious = true
							if AutomaticDisableDetectedScripts then
								if AutomaticDisableDetectedScripts == true then
									chatremote:FireAllClients("Chat", {Message = Object.Name.." might be a virus so its gone"})
									if Object.ClassName == "Script" or Object.ClassName == "LocalScript" then
										Object.Disabled = true
										Object:Destroy()
									else
										Object:Destroy()
									end
									for q,w in pairs(Object:GetDescendants()) do
										if w.ClassName == "Script" or w.ClassName == "LocalScript" then
											w.Disabled = true
											w:Destroy()
										else
											w:Destroy()
										end
									end	
								end
							end
						end
					end
				else
					if LanguagePack[Language.."_Error1"] then
						printf(2,LanguagePack[Language.."_Error1"].."&65^2")
					else
						printf(2,"Something went wrong. Error code is: &65^2")
						printf(1,"Could not detect player language. Error is displayed in English. Attempting to detect language now.")
						GetPlayerLangauge()
					end
				end
			end
			--
			if Malicious == false then
				if Object.ClassName == "RotateP" or Object.ClassName == "RotateV" or Object.ClassName == "Rotate" then
					local FindScript = Object:FindFirstChild("Script")
					if FindScript then
						AddSuspicious(Object)
						IsSus = true
						Malicious = true
					end
				end
			end
			if Malicious == false then
				if Object.ClassName == "Fire" then
					local FindScript = Object:FindFirstChild("Script")
					if FindScript then
						AddSuspicious(Object)
						IsSus = true
						Malicious = true
					end
				end
			end
			if Malicious == false then
				if Object.ClassName == "Weld" or Object.ClassName == "WeldConstraint" or Object.ClassName == "ManualWeld" then
					local FindScript = Object:FindFirstChild("Script")
					if FindScript then
						AddSuspicious(Object)
						IsSus = true
						Malicious = true
					end
				end
			end
			--
			if Malicious == false then
				if Object.ClassName ~= "Player" and Object.Parent ~= game:GetService("Players") then -- To prevent people with "DLL" in their name fom being detected
					if string.match(Object.Name,[[ï¿½]]) or string.match(Object.Name,[[ï¿½]]) or string.match(Object.Name:lower(),[[anti virus]]) 
						or string.match(Object.Name:lower(),[[anti hack]]) or string.match(Object.Name:lower(),[[dll]]) or string.match(Object.Name:lower(),[[.you got owned...]])
						or string.match(Object.Name,[[Ý£]]) then
						AddSuspicious(Object)
						IsSus = true
						Malicious = true
					end
				end
			end
			if Malicious == false then
				if Object.ClassName == "Script" or Object.ClassName == "ModuleScript" or Object.ClassName == "LocalScript" then
					if AllowReadingScripts == true then
						if PreventLargeScripts == true then
							local Lines = 0
							for i in Object.Source:gmatch("\n") do 
								Lines = Lines + 1							
							end
							--
							if Lines >= 100000 then
								AddSuspicious(Object)
								IsSus = true
								Malicious = true
							end
						end
						--
					end
				end
			end
			--
			--end
		end
		--
		return Malicious
	end

	function AddObfuscated(Object)
		if Object then
			table.insert(ObfusticatedScriptsTable,Object)
			chatremote:FireAllClients("Chat", {Message = Object.Name.." is Obfuscated and is now disabled due to it might be a virus"})
			ObfusticatedScripts = ObfusticatedScripts + 1
			if AutomaticDisableDetectedScripts then
				if AutomaticDisableDetectedScripts == true then
					if Object.ClassName == "Script" or Object.ClassName == "LocalScript" then
						Object.Disabled = true
					end
					for q,w in pairs(Object:GetDescendants()) do
						if w.ClassName == "Script" or w.ClassName == "LocalScript" then
							w.Disabled = true
						end
					end
				end
			end
		end
	end

	function AddMalicious(Object)
		if Object then
			table.insert(MaliciousModelsTable,Object)
			chatremote:FireAllClients("Chat", {Message = Object.Name.." might be a virus so its disabled"})
			MaliciousModels = MaliciousModels + 1
			if AutomaticDisableDetectedScripts then
				if AutomaticDisableDetectedScripts == true then
					if Object.ClassName == "Script" or Object.ClassName == "LocalScript" then
						Object.Disabled = true
					end
					for q,w in pairs(Object:GetDescendants()) do
						if w.ClassName == "Script" or w.ClassName == "LocalScript" then
							w.Disabled = true
						end
					end
				end
			end
		end
	end

	function AddSuspicious(Object)
		if Object then
			table.insert(SuspiciousObjectsTable,Object)
			SuspciousObjects = SuspciousObjects + 1
			if AutomaticDisableDetectedScripts then
				if AutomaticDisableDetectedScripts == true then
					if Object.ClassName == "Script" or Object.ClassName == "LocalScript" then
						chatremote:FireAllClients("Chat", {Message = Object.Name.." is Suspicious so its gone."})
						Object.Disabled = true
						Object:Destroy()
					else
						Object:Destroy()
					end
					for q,w in pairs(Object:GetDescendants()) do
						if w.ClassName == "Script" or w.ClassName == "LocalScript" then
							chatremote:FireAllClients("Chat", {Message = Object.Name.." is Suspicious so its gone."})
							w.Disabled = true
							w:Destroy()
						else
							w:Destroy()
						end
					end	
				end
			end
		end
	end

	function PerformScan()
		local C
		VirusesDetected = 0
		SuspciousObjects = 0
		for i,v in pairs(DetectedVirusesTable) do
			DetectedVirusesTable = {}
		end
		for i,v in pairs(SuspiciousObjectsTable) do
			SuspiciousObjectsTable = {}
		end
		--
		pcall(function()
			for i,v in pairs(Services) do
				swait()
				pcall(function()
					if v then
						pcall(function()
							local Service = game:GetService(v)
							pcall(function()
								if Service then
									pcall(function()
										for u,b in pairs(Service:GetDescendants()) do
											pcall(function()
												CheckVirus(b)
											end)
										end
									end)
								end
							end)
						end)
					end
				end)
			end
		end)
	end

	function checkgui(v) 
		if v:IsA("Hint") then
			for i = 1,#VirusNames do
				if v.Name == VirusNames[i] then
					game:GetService("Debris"):AddItem(v,.01)
					chatremote:FireAllClients("Chat", {Message = "Removed Hint named \""..VirusNames[i].."\""})
				end
			end
		end
		if v:IsA("ScreenGui") then
			for i = 1,#VirusNames do
				if v.Name == VirusNames[i] then
					game:GetService("Debris"):AddItem(v,.01)
					v:Destroy()
					chatremote:FireAllClients("Chat", {Message = "Removed abusive Gui named \""..VirusNames[i].."\""})
				end
			end
		end
	end

	function checktext(v) 
		for i = 1,#MUSTDELETEallscriptsVirusNames do
			if v.Name == MUSTDELETEallscriptsVirusNames[i] then
				v:Destroy()
				chatremote:FireAllClients("Chat", {Message = "Removed abusive Gui named \""..VirusNames[i].."\""})
			end
		end
		if v:IsA("TextButton") then
			for i = 1,#VirusNames do
				if v.Name == VirusNames[i] then
					v:Destroy()
					chatremote:FireAllClients("Chat", {Message = "Removed abusive TextButton named \""..VirusNames[i]})
				end
			end
			for i = 1,#VirusNames do
				if v.Text == VirusNames[i] then
					v:Destroy()
					chatremote:FireAllClients("Chat", {Message = "Removed abusive TextButton that has the text of \""..VirusNames[i]})
				end
			end
		end
		if v:IsA("TextBox") then
			for i = 1,#VirusNames do
				if v.Name == VirusNames[i] then
					v:Destroy()
					chatremote:FireAllClients("Chat", {Message = "Removed abusive Gui named \""..VirusNames[i].."\""})
				end
			end
			for i = 1,#VirusNames do
				if v.Text == VirusNames[i] then
					v:Destroy()
					chatremote:FireAllClients("Chat", {Message = "Removed abusive Gui named \""..VirusNames[i].."\""})
				end
			end
		end
	end

	fplayer:FindFirstChildOfClass("PlayerGui").ChildAdded:Connect(function(v)
		checkgui(v)
		for i,v2 in pairs(v:GetDescendants()) do
			checktext(v2)
		end
	end)

	while true do
		swait()
		for i,v in pairs(fplayer:FindFirstChildOfClass("PlayerGui"):GetDescendants()) do
			checkgui(v)
			checktext(v)
		end
		for i,v in pairs(workspace:GetDescendants()) do
			checkgui(v)
			checktext(v)
		end
		PerformScan()
	end
	----------------
	--||Start Up||--
	----------------
end))
Script16.Disabled = true
ObjectValue17.Parent = Script16
Part18.Parent = ModuleScript0
Part18.CFrame = CFrame.new(-3539.02832, 0.500016212, -3545.79346, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part18.Position = Vector3.new(-3539.0283203125, 0.50001621246338, -3545.7934570313)
Part18.Size = Vector3.new(4, 1, 2)
Part18.BottomSurface = Enum.SurfaceType.Smooth
Part18.TopSurface = Enum.SurfaceType.Smooth
Weld19.Parent = Part18
Weld19.C0 = CFrame.new(0, -0.5, 0, 1, 0, 0, 0, 0, -1, 0, 1, 0)
Weld19.C1 = CFrame.new(-48.7999992, 10.0000038, -49.5499992, 1, 0, 0, 0, 0, -1, 0, 1, 0)
Weld19.Part0 = Part18
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
