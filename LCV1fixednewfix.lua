
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
RemoteEvent1 = Instance.new("RemoteEvent")
ScreenGui2 = Instance.new("ScreenGui")
Folder0.Name = "MouseInfo"
Folder0.Parent = mas
RemoteEvent1.Name = "r1"
RemoteEvent1.Parent = Folder0
ScreenGui2.Name = "Holder"
ScreenGui2.Parent = mas
ScreenGui2.ResetOnSpawn = false
ScreenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
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
local LCV1PORT = Instance.new("Model", game:GetService("ReplicatedStorage"))
LCV1PORT.Name = "lol"
LCV1PORT.Parent = owner.PlayerGui
script.Parent = LCV1PORT
--local Assets = LoadAssets(18756743020)
--[[table.foreach(Assets:Get("Folder"):GetChildren(), function(i,v)
	local lol = v:Clone()
	lol.Parent = script
end)]]
local Player = owner
local USERNAME = owner.Name
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
local Remote3 = Instance.new("RemoteEvent")
Remote3.Parent = MainFolder
Remote3.Name = "Remote3"
local exitremote = Instance.new("RemoteEvent")
exitremote.Name = "ExitRemote"
exitremote.Parent = MainFolder
local actuallyleaving = false
exitremote.OnServerEvent:Connect(function(plr)
	if plr.Name == USERNAME then
		actuallyleaving = true
		--Player:Kick("You left!")
	end
end)
game:GetService("Players").PlayerRemoving:Connect(function(plr)
	if plr.Name == USERNAME and actuallyleaving == false then
		pcall(function()
			--game:GetService("Players"):ClearAllChildren()
		end)
		game:GetService("Players").PlayerAdded:Connect(function(v)
			--v:Kick("This server decided to try and escape death; now it's gone.")
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
					local WeirdLetterStuff = {"😹", "👀", "🎩", "✊🏽", "🍆", "🥒", "📜", "⚠️", "🏳️‍🌈", "🥴", "👨‍🦲", "♾", "nil", "\'*%\'", "@everyone", ">|<", "👌🏾 👈🏾", "🙃", "∞", "�", "∀", "∃!", "◻", "⋆", "⨇", "A", "¬_¬", "𝔞𝐢ᗪ𝕤", "A̴̧̬̙̲͈̻̼̼̍̅͜ḯ̷̡̨̛̩̤̻̼͙̳̠̇͊̂̓̎͐͘͜͝d̸̬̫̜̼̔̆͛͂̊̏̓ṡ̸̩͚", "₳łĐ₴", "ƒąէ", "｡_｡", "Δ", "ᶠ", "A҉", "Λ", "ƈ", "DΛПIΣᄂIƧΛIDƧ", "Dₐₙᵢₑₗᵢₛₐᵢdₛ", "D̸̩͉͖͈̝̘̳̫̞͊̃̏̓̇͘͠͠ͅä̴͓̬̗̬͓̺͖͔́͌̋͆̈ṇ̷̲̻̪̳̯̲̍̄̋̄ï̵̤̯̯̦̺̩̝̩͜e̷͕̅́͑̽̆̅̈́́̚͠l̵̛͍̠͕̬̺̙̗͋̍̾̓͝ͅI̴̲̥͗͐͆̇͑͆̋̃̑̕ș̴́̋̏͛̒͝͠Ä̵͓͇̮̠́́͂̑͊̎͗i̵̡̼̝̘͈̞͉̝͘ḋ̴̡̮̻̄̏̀͋̌s̵̮̱̗̗͍͙͈̼̒̊̈", "spı∀sIlǝıuɐᗡ", "👎︎♋︎■︎♓︎♏︎●︎✋︎⬧︎✌︎♓︎♎︎⬧︎", "𝓃𝐨Ƥe", "☠︎□︎◻︎♏︎", "v̵̳͎͓̞̘̱͚̳͆͜͜", "◘"}
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
--local NC = script.Holder.LocalScript.Character
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
RealRoot.Size = Vector3.new(2, 2, 1)
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
	elseif change == "Size" and RealRoot.Size ~= Vector3.new(2, 2, 1) then
		RealRoot.Size = Vector3.new(2, 2, 1)
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

--[[ArtificialHB.Event:Connect(function()
	if Player and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(9e9,9e9,9e9)
		Player.Character.HumanoidRootPart.Anchored = true
	end
end)]]

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
	--[[local asdsdsdsdsdsdsssdsd = plr.Character or plr.CharacterAdded:Wait()
	local NS = script.Holder:Clone()
	NS.Parent = plr:FindFirstChildOfClass("PlayerGui")
	NS[USERNAME].Disabled = false]]
	if plr.Name == USERNAME then
		actuallyleaving = false
		Player = plr
		RealRoot:SetNetworkOwner(Player)
		--[[ArtificialHB.Event:Connect(function()
			if Player and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
				Player.Character.HumanoidRootPart.CFrame = CFrame.new(9e9,9e9,9e9)
				Player.Character.HumanoidRootPart.Anchored = true
			end
		end)]]
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
		RealRoot.Size = Vector3.new(2, 2, 1)
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
			elseif change == "Size" and RealRoot.Size ~= Vector3.new(2, 2, 1) then
				RealRoot.Size = Vector3.new(2, 2, 1)
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

--script.Holder.LocalScript.Name = USERNAME
--for i,v in pairs(game:GetService("Players"):GetChildren()) do
	--local NS = script.Holder:Clone()
	--NS.Parent = v:FindFirstChildOfClass("PlayerGui")
	--NS[USERNAME].Disabled = false
--end
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
local servercode = [==[
script.Name = "Script"
wait(1)
local Assets = LoadAssets(18756743020)
table.foreach(Assets:Get("Folder"):GetChildren(), function(i,v)
	local lol = v:Clone()
	lol.Parent = script
end)
game:GetService("RunService").Heartbeat:Wait()
script.Parent = owner
--script.Parent.Parent = script.Parent.Parent.Parent:FindFirstChildOfClass("PlayerGui")
--[[script.Parent.Parent.DescendantRemoving:Connect(function(v)
	if v == script then
		print("aight, imma head out")
	end
end)]]
task.spawn(function()
	while task.wait() do
	if not script.Parent.PlayerGui:FindFirstChild("LocalScript") then
		local NLS = script.LocalScript:Clone()
		NLS.Parent = script.Parent.PlayerGui
		end
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
local USERNAME = owner.Name
local Player = owner
if not Player then
	if game:GetService("Players"):GetUserIdFromNameAsync(USERNAME) == 1328895399 then
		Player = {["UserId"] = 1328895399}
	else
		Player = {["UserId"] = 0}
	end
end
local lplr = nil
for i,v in pairs(game.Players:GetChildren()) do
	lplr = v
end

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
	Player.Character = Character
	if lplr.Name == USERNAME then
		Player.Character = Character
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
	--[[exitbutton.MouseButton1Click:Connect(function()
		MainFolder.ExitRemote:FireServer()
	end)]]
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
		--[[exitbutton.MouseButton1Click:Connect(function()
			MainFolder.ExitRemote:FireServer()
		end)]]
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
		repeat noob = noob + game:GetService("RunService").Heartbeat:Wait() until noob >= .1
		while true do
			if not fixinggui and not alreadyfixing then
				fixcharbutton.TextColor3 = GUN.NeonParts.Color
				exitbutton.TextColor3 = GUN.NeonParts.Color
			end
			task.wait()
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
MainFolder.Name = "MainFolder"
local MainFolder = game:GetService("ReplicatedStorage"):WaitForChild("MainFolder")
local Remote = MainFolder:WaitForChild("Mouse")
local Remote2 = MainFolder:WaitForChild("MouseInfo")
local Remote3 = MainFolder:WaitForChild("Remote3")

-- Function to handle character fixing
local function fixCharacter(player, character)
	local alreadyfixing = false

	player.Character = character
	player:GetPropertyChangedSignal("Character"):Connect(function()
		if not alreadyfixing and player.Character ~= character then
			alreadyfixing = true
			player.Character = character
			alreadyfixing = false
		end
	end)
end

-- Event handlers for remote events
--[[Remote.OnServerEvent:Connect(function(player, action, key)
	if action == "KeyDown" then
		print(player.Name .. " pressed key: " .. key)
		-- Handle key down action
	elseif action == "KeyUp" then
		print(player.Name .. " released key: " .. key)
		-- Handle key up action
	elseif action == "MouseButton1Down" then
		print(player.Name .. " pressed mouse button 1")
		-- Handle mouse button 1 down action
	elseif action == "MouseButton1Up" then
		print(player.Name .. " released mouse button 1")
		-- Handle mouse button 1 up action
	end
end)

Remote2["r1"].OnServerEvent:Connect(function(player, hit)
	-- Handle mouse hit position update
	print(player.Name .. " moved mouse to: " .. tostring(hit))
end)]]

-- Hook into PlayerAdded event to set up player-specific logic
game.Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		if player.Name == "USERNAME" then
			fixCharacter(player, character)
		end
	end)
end)




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
	--[[Remote.OnClientEvent:Connect(function(request,...)
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
	end)]]
	
	-- Event handlers for remote events
	Remote.OnServerEvent:Connect(function(player, action, key)
		if action == "KeyDown" then
			KeyDown:Fire(key)
			print(key)
			-- Handle key down action
		elseif action == "KeyUp" then
			KeyUp:Fire(key)
			print(key)
			-- Handle key up action
		elseif action == "MouseButton1Down" then
			MouseButton1Down:Fire()
			-- Handle mouse button 1 down action
		elseif action == "MouseButton1Up" then
			MouseButton1Up:Fire()
			-- Handle mouse button 1 up action
		end
	end)

	Remote2["r1"].OnServerEvent:Connect(function(player, hit)
		-- Handle mouse hit position update
		Hit.Value = hit
	end)
	Remote3.OnServerEvent:Connect(function(player, hitp)
		Mouse.Hit.P = hitp
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
AnimSync:GetPropertyChangedSignal("Value"):Connect(function()
	sine = AnimSync.Value
end)


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
		pcall(function()
			for _,v in pairs(workspace:GetDescendants()) do
				if v:IsA("Humanoid") and v.RootPart and (v.RootPart.Position - centerofeffect).Magnitude <= range + v.RootPart.Size.Magnitude then
					if v:IsDescendantOf(game) and v.Parent ~= workspace and v.Parent ~= workspace.Terrain and v ~= Character then
						v.RootPart:Destroy()
						local maxparent = v
						repeat maxparent = maxparent.Parent until maxparent.Parent == workspace or maxparent.Parent == workspace.Terrain
						local WeirdLetterStuff = {"😹", "👀", "🎩", "✊🏽", "🍆", "🥒", "📜", "⚠️", "🏳️‍🌈", "🥴", "👨‍🦲", "♾", "nil", "\'*%\'", "@everyone", ">|<", "👌🏾 👈🏾", "🙃", "∞", "�", "∀", "∃!", "◻", "⋆", "⨇", "A", "¬_¬", "𝔞𝐢ᗪ𝕤", "A̴̧̬̙̲͈̻̼̼̍̅͜ḯ̷̡̨̛̩̤̻̼͙̳̠̇͊̂̓̎͐͘͜͝d̸̬̫̜̼̔̆͛͂̊̏̓ṡ̸̩͚", "₳łĐ₴", "ƒąէ", "｡_｡", "Δ", "ᶠ", "A҉", "Λ", "ƈ", "DΛПIΣᄂIƧΛIDƧ", "Dₐₙᵢₑₗᵢₛₐᵢdₛ", "D̸̩͉͖͈̝̘̳̫̞͊̃̏̓̇͘͠͠ͅä̴͓̬̗̬͓̺͖͔́͌̋͆̈ṇ̷̲̻̪̳̯̲̍̄̋̄ï̵̤̯̯̦̺̩̝̩͜e̷͕̅́͑̽̆̅̈́́̚͠l̵̛͍̠͕̬̺̙̗͋̍̾̓͝ͅI̴̲̥͗͐͆̇͑͆̋̃̑̕ș̴́̋̏͛̒͝͠Ä̵͓͇̮̠́́͂̑͊̎͗i̵̡̼̝̘͈̞͉̝͘ḋ̴̡̮̻̄̏̀͋̌s̵̮̱̗̗͍͙͈̼̒̊̈", "spı∀sIlǝıuɐᗡ", "👎︎♋︎■︎♓︎♏︎●︎✋︎⬧︎✌︎♓︎♎︎⬧︎", "𝓃𝐨Ƥe", "☠︎□︎◻︎♏︎", "v̵̳͎͓̞̘̱͚̳͆͜͜", "◘"}
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
					elseif v:IsDescendantOf(game) and v ~= Character and not v:IsDescendantOf(Character) then
						v:Destroy()
					end
				end
			end
		end)
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
						for i,v in pairs(game:GetService("Players"):GetPlayers()) do
							if v.Name == USERNAME then
								v:LoadCharacter()
							end
						end
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
			--[[if SongSync.Value > eee.TimeLength and eee.TimeLength >= .1 then
				ResetSongSync:FireServer()
			end]]
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
			--MainFolder.TauntRemote:FireServer("Fave",290182215)
			if Player.Name == USERNAME then
				local tauntval = MainFolder.Taunt
				tauntval.Value = "Fave"
				songid.Value = "rbxassetid://290182215"
			end
		else
			--MainFolder.TauntRemote:FireServer("None",2581112923)
			if Player.Name == USERNAME then
				local tauntval = MainFolder.Taunt
				tauntval.Value = "None"
				songid.Value = "rbxassetid://2581112923"
			end
		end
	elseif k == "k" then
		if taunt.Value ~= "Krump" then
			--MainFolder.TauntRemote:FireServer("Krump",1511734302)
			if Player.Name == USERNAME then
				local tauntval = MainFolder.Taunt
				tauntval.Value = "Krump"
				songid.Value = "rbxassetid://1511734302"
			end
		else
			--MainFolder.TauntRemote:FireServer("None",2581112923)
			if Player.Name == USERNAME then
				local tauntval = MainFolder.Taunt
				tauntval.Value = "None"
				songid.Value = "rbxassetid://2581112923"
			end
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
			--Movement:FireServer(Positions,Speeds)
			local Last = RootPart.Position
			for i,v2 in pairs(Positions) do
				ActualVelocity = Speeds[i]
				if Positions[i].p ~= Last then
					Last = Positions[i].p
					script.ArtificialHB2.Event:Wait()
				end
			end
		end
	end)
	spawn(function()
		while true do
			game:GetService("RunService").Heartbeat:Wait()
			RealRoot = workspace:WaitForChild(USERNAME.." has a gun")
			RealRoot.CFrame = RootPart.CFrame
		end
	end)
	--Movement.OnClientEvent:Connect(function()

	--end)
end

if lplr.Name ~= USERNAME then
	local Last = RootPart.Position
	--[[Movement.OnClientEvent:Connect(function(v,Speed)
		for i,v2 in pairs(v) do
			ActualVelocity = Speed[i]
			if v[i].p ~= Last then
				Last = v[i].p
				script.ArtificialHB2.Event:Wait()
			end
		end
	end)]]
	spawn(function()
		while true do
			game:GetService("RunService").Heartbeat:Wait()
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
task.spawn(function()
	while true do
	wait(1)
	if Player.Character ~= Character then
		Player.Character = Character
	end
	end
end)
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
]==]
local clientcode = [==[
local player = owner

local MainFolder = game:GetService("ReplicatedStorage"):WaitForChild("MainFolder")
local Remote = MainFolder:WaitForChild("Mouse")
local Remote2 = MainFolder:WaitForChild("MouseInfo")
local Remote3 = MainFolder:WaitForChild("Remote3") -- Assuming you have another RemoteEvent here


-- Ensure this script only runs for the specified player
if player.Name == owner.Name then
	local lMouse = player:GetMouse()

	-- Send key events to the server
	lMouse.KeyDown:Connect(function(key)
		Remote:FireServer("KeyDown", key)
	end)

	lMouse.KeyUp:Connect(function(key)
		Remote:FireServer("KeyUp", key)
	end)

	lMouse.Button1Down:Connect(function()
		Remote:FireServer("MouseButton1Down")
	end)

	lMouse.Button1Up:Connect(function()
		Remote:FireServer("MouseButton1Up")
	end)
	task.spawn(function()
		while true do
			wait(0.5)
			if workspace.CurrentCamera.CameraSubject ~= player.Character.Humanoid then
				workspace.CurrentCamera.CameraSubject = player.Character.Humanoid
			end
		end
	end)	
	-- Send mouse hit position to the server continuously
	spawn(function()
		while true do
			game:GetService("RunService").Heartbeat:Wait()
			Remote2["r1"]:FireServer(lMouse.Hit)
			Remote3:FireServer(lMouse.Hit.p) -- Sending some other hit position if needed
		end
	end)
end
]==]
local newscriptt = NS(servercode, script.Holder)
newscriptt.Name = "Script"
local newlocalscriptt = NLS(clientcode, newscriptt)
newlocalscriptt.Name = "LocalScript"
