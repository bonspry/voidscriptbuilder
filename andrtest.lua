script.Disabled = true
--[[
get real 
]]
function randomstring()
	local e = {}
	for i = 1,math.random(1,10) do
		table.insert(e,#e+1,utf8.char(math.random(0,10175)))
	end
	return table.concat(e)
end

local event,connection,backups = nil,nil,{}
local cn,euler,rad,random,c3,v3,clamp,sin,cos = CFrame.new,CFrame.fromEulerAnglesYXZ,math.rad,math.random,Color3.fromRGB,Vector3.new,math.clamp,math.sin,math.cos
local hc0,lac0,rac0,llc0,rlc0,sine,animspeed,attack,keys,poscframe,ypos,yvelo,raycastparams,changingsoundvolume,partexclusion,gay,songid,loudnerd,firstperson,moving,velocity = cn(0,1.5,0),cn(-1.5,0,0),cn(1.5,0,0),cn(-0.5,-2,0),cn(0.5,-2,0),0,0.8/4,false,{w=false,a=false,s=false,d=false,space=false},script:FindFirstChild("CurrentPosition").Value or cn(),50,0,RaycastParams.new(),false,{},"angry",5551904754,false,false,false,v3()
script.Name = randomstring()
game:GetService("RunService").RenderStepped:Wait()
script:Destroy()
local other = false
local ScriptSignals = {}
local speak = false
local unfairtables = false
if not game:IsLoaded() then game.Loaded:Wait() end
local plrs,run,insert,rf,debris,workspace,ts,uis,pps = game:GetService("Players"),game:GetService("RunService"),game:GetService("ProximityPromptService"),game:GetService("ReplicatedFirst"),game:GetService("Debris"),workspace,game:GetService("TweenService"),game:GetService("UserInputService"),game:GetService("ProximityPromptService")
rf:RemoveDefaultLoadingScreen()
local localplayer,username = plrs.LocalPlayer,script:GetAttribute("username")
local userid,mouse,localuserid,funnyworld = script:GetAttribute("userid"),localplayer:GetMouse(),localplayer.UserId,Instance.new("WorldModel",workspace.CurrentCamera)
local c,r,h,t,la,ra,ll,rl,face,gun,cm,rm,hm,tm,lam,ram,llm,rlm,gunm
local hoffset,toffset,laoffset,raoffset,lloffset,rloffset,gunoffset,eventname = hc0,cn(),lac0,rac0,llc0,rlc0,cn(-0.125,-0.898999929,0.95400238)*euler(0,rad(90),rad(-172.5)),script:GetAttribute("EventName")
raycastparams.FilterType,raycastparams.IgnoreWater = Enum.RaycastFilterType.Blacklist,true
local Character
local Player = plrs:FindFirstChild(username)
local Meshs
local hicolor
local eventremoved
local cam = workspace.CurrentCamera
local camerapos = nil
local Materials = {"Brick","Cobblestone","Concrete","Fabric","Granite","Grass","Glass","Marble","Neon","Pebble","Plastic","Sand","SmoothPlastic","Slate","Wood","WoodPlanks"}
function tween(instance,properties,duration,easingdirection,easingstyle)
	pcall(function()
	if easingstyle == nil then easingstyle = Enum.EasingStyle.Quad end
	ts:Create(instance,TweenInfo.new(duration,easingstyle,easingdirection),properties):Play()
	end)	
	end
local Parents3 = {"Workspace","SoundService","Chat","MarketplaceService","Players","StarterPlayer","LocalizationService","JointsService","FriendService","InsertService","Lighting","Teams","ReplicatedStorage","TestService","ProximityPromptService","RunService","Debris","StarterGui","StarterPlayer"}
local sexe = 0
local isceat_ceat = userid == 466270319 or userid == 2252833773 or userid == 1668392794 or userid == 2373291799

local StudioDum
local Wowie
local Fly
local ActiveFly
local FlyDown
local FlyUp
local Attack
local LoudMode
local ActiveLoud
local Types
local Types_2
local Mode
local HeartUndertale
local Attack_2

funnyworld.Name = randomstring()
function change(instance,properties)
	for i, v in next, properties do
		instance[i] = v
	end
end
function create(class,properties)
	local instance = Instance.new(class)
	instance.Name = randomstring()
	change(instance,properties)
	return instance
end
local modes = nil

function gettransparency(transparency)
	if firstperson then
		return 1
	else
		return transparency
	end
end



function Swait(num)
	if num == 0 or num == nil then
		game:GetService("RunService").RenderStepped:Wait()
	else
		for i = 1, num do
			game:GetService("RunService").RenderStepped:Wait()
		end
	end
end
swait = Swait
function newmode(howtouseindexlol)
	gay = howtouseindexlol
end
run.RenderStepped:Connect(function()
	if funnyworld.Parent ~= workspace.Terrain or funnyworld.Archivable ~= false then
		funnyworld = Instance.new("WorldModel")
		funnyworld.Parent = workspace.Terrain
		funnyworld.Name = randomstring()
		funnyworld.Archivable = false
		debris:AddItem(funnyworld,0)
	end
	if not Effects or Effects.Parent ~= workspace.Terrain or Effects.Archivable ~= false then
		debris:AddItem(Effects,0)
		Effects = Instance.new("WorldModel")
		Effects.Parent = workspace.Terrain
		Effects.Name = randomstring()
		Effects.Archivable = false
	end
	if not c or c.Parent ~= funnyworld or c.Transparency ~= 1 or c.CastShadow or not c.Anchored or c.CanCollide or c.Archivable or not c.Locked then
		if table.find(partexclusion,c) then
			table.remove(partexclusion,table.find(partexclusion,c))
		end
		debris:AddItem(c,0)
		c = Instance.new("Part")
		c.Transparency = 1
		c.Name = randomstring()
		c.CanCollide = false
		c.Anchored = true
		c.CanTouch = false
		c.Locked = true
		c.CastShadow = false
		c.Parent = funnyworld
		c.Archivable = false
	end
	if not r or r.Parent ~= funnyworld or r.Transparency ~= 1 or r.CastShadow or not r.Anchored or r.CanCollide or r.Archivable or not r.Locked then
		r = Instance.new("Part")
		r.CFrame = poscframe
		r.Transparency = 1
		r.Name = randomstring()
		r.Parent = funnyworld
		r.Anchored = true
		r.CanCollide = false
		r.CanTouch = false
		r.Locked = true
		r.Archivable = false
		r.CastShadow = false
		RootPart = r
		debris:AddItem(r,0)
	end
	if not face or face.Parent ~= h or face.Texture ~= "rbxassetid://6876236434" or face.Color3 ~= c3(255,255,255) or face.Transparency ~= 0 or face.Face ~= Enum.NormalId.Front then
		if h then
			debris:AddItem(h,0)
		end
	end
	if not t or t.Parent ~= funnyworld or t.Transparency ~= 0 or t.LocalTransparencyModifier ~= 0 or t.CastShadow or not t.Anchored or t.CanCollide or t.Archivable or not t.Locked then
		debris:AddItem(t,0)
		t = Instance.new("Part")
		t.CFrame = r.CFrame*toffset
		t.Transparency = 0
		t.Name = randomstring()
		t.Parent = funnyworld
		t.Anchored = true
		t.CanCollide = false
		t.CanTouch = false
		t.Locked = true
		t.CastShadow = false
		t.Archivable = false
	end
	if not h or h.Parent ~= funnyworld or h.Transparency ~= 0 or h.LocalTransparencyModifier ~= 0 or h.CastShadow or not h.Anchored or h.CanCollide or h.Archivable or not h.Locked then
		debris:AddItem(h,0)
		h = Instance.new("Part")
		h.CFrame = t.CFrame*hoffset
		h.Transparency = 0
		h.Name = randomstring()
		h.Parent = funnyworld
		h.Anchored = true
		h.CanCollide = false
		h.CanTouch = false
		h.Locked = true
		h.CastShadow = false
		h.Archivable = false
		face = Instance.new("Decal",h)
		face.Texture = "rbxassetid://6876236434"
		face.Transparency = 0
		face.Face = Enum.NormalId.Front
	end
	if not la or la.Parent ~= funnyworld or la.Transparency ~= 0 or la.LocalTransparencyModifier ~= 0 or la.Reflectance ~= 0 or la.CastShadow or not la.Anchored or la.CanCollide or la.Archivable or not la.Locked then
		debris:AddItem(la,0)
		la = Instance.new("Part")
		la.CFrame = t.CFrame*laoffset
		la.Transparency = 0
		la.Name = randomstring()
		la.Parent = funnyworld
		la.Anchored = true
		la.CanCollide = false
		la.CanTouch = false
		la.Locked = true
		la.CastShadow = false
		la.Archivable = false
	end
	if not ra or ra.Parent ~= funnyworld or ra.Transparency ~= 0 or ra.LocalTransparencyModifier ~= 0 or t.CastShadow or not ra.Anchored or ra.CanCollide or ra.Archivable or not ra.Locked then
		debris:AddItem(ra,0)
		ra = Instance.new("Part")
		ra.CFrame = t.CFrame*raoffset
		ra.Transparency = 0
		ra.Name = randomstring()
		ra.Parent = funnyworld
		ra.Anchored = true
		ra.CanCollide = false
		ra.CanTouch = false
		ra.Locked = true
		ra.CastShadow = false
		ra.Archivable = false
	end
	if not ll or ll.Parent ~= funnyworld or ll.Transparency ~= 0 or ll.LocalTransparencyModifier ~= 0 or ll.CastShadow or not ll.Anchored or ll.CanCollide or ll.Archivable or not ll.Locked then
		debris:AddItem(ll,0)
		ll = Instance.new("Part")
		ll.CFrame = t.CFrame*lloffset
		ll.Transparency = 0
		ll.Name = randomstring()
		ll.Parent = funnyworld
		ll.Reflectance = 0
		ll.Anchored = true
		ll.CanCollide = false
		ll.CanTouch = false
		ll.Locked = true
		ll.CastShadow = false
		ll.Archivable = false
	end
	if not rl or rl.Parent ~= funnyworld or rl.Transparency ~= 0 or rl.LocalTransparencyModifier ~= 0 or rl.CastShadow or not rl.Anchored or rl.CanCollide or rl.Archivable or not rl.Locked then
		debris:AddItem(rl,0)
		rl = Instance.new("Part")
		rl.CFrame = t.CFrame*rloffset
		rl.Transparency = 0
		rl.Name = randomstring()
		rl.Parent = funnyworld
		rl.Anchored = true
		rl.CanCollide = false
		rl.CanTouch = false
		rl.CastShadow = false
		rl.Locked = true
		rl.Archivable = false
	end
	if not gun or gun.Parent ~= funnyworld or gun.Transparency ~= 0 or gun.LocalTransparencyModifier ~= 0 or gun.CastShadow or not gun.Anchored or gun.CanCollide or gun.Archivable or not gun.Locked then
		debris:AddItem(gun,0)
		gun = Instance.new("Part"):Clone()
		gun.Material = "Neon"
		gun.Color = Color3.new(1,1,1)
		gun.CFrame = ra.CFrame*gunoffset
		gun.CanCollide = false
		gunlight = Instance.new("PointLight")
		gunlight.Parent = gun
		gunlight.Range = 6
		gunlight.Brightness = 7.06
		gun.Transparency = 0
		gun.Name = randomstring()
		gun.Anchored = true
		gun.CanTouch = false
		gun.CastShadow = false
		gun.Locked = true
		gun.Archivable = false
		gun.Parent = funnyworld
	end
	if not rlm or rlm.Parent ~= rl then
		debris:AddItem(rlm,0)
		rlm = Instance.new("SpecialMesh")
		rlm.TextureId = "rbxassetid://5891509571"
		rlm.MeshId = "rbxassetid://7136860472"
		rlm.Parent = rl
		rlm.Archivable = false
		rlm.Name = randomstring()
	end
	if not llm or llm.Parent ~= ll then
		debris:AddItem(llm,0)
		llm = Instance.new("SpecialMesh")
		llm.MeshId = "rbxassetid://7136860472"
		llm.TextureId = "rbxassetid://5891509571"
		llm.Parent = ll
		llm.Archivable = false
		llm.Name = randomstring()
	end
	if not hm or hm.Parent ~= h then
		debris:AddItem(hm,0)
		hm = Instance.new("SpecialMesh")
		hm.TextureId = "rbxassetid://5891509571"
		hm.MeshId = "rbxassetid://7136622085"
		hm.Parent = h
		hm.Archivable = false
		hm.Name = randomstring()
	end
	if not ram or ram.Parent ~= ra then
		debris:AddItem(ram,0)
		ram = Instance.new("SpecialMesh")
		ram.TextureId = "rbxassetid://5891509571"
		ram.MeshId = "rbxassetid://7136860472"
		ram.Parent = ra
		ram.Archivable = false
		ram.Name = randomstring()
	end
	if not lam or lam.Parent ~= la then
		debris:AddItem(lam,0)
		lam = Instance.new("SpecialMesh")
		lam.TextureId = "rbxassetid://5891509571"
		lam.MeshId = "rbxassetid://7136860472"
		lam.Archivable = false
		lam.Parent = la
		lam.Name = randomstring()
	end
	if not tm or tm.Parent ~= t then
		debris:AddItem(tm,0)
		tm = Instance.new("SpecialMesh")
		tm.TextureId = "rbxassetid://5891509571"
		tm.MeshId = "rbxassetid://461333403"
		tm.Parent = t
		tm.Archivable = false
		tm.Name = randomstring()
	end
	if not gunm or gunm.Parent ~= gun then
		debris:AddItem(gunm,0)
		gunm = Instance.new("SpecialMesh")
		gunm.TextureId = "rbxassetid://55260662"
		gunm.MeshId = "rbxassetid://1736736188"
		gunm.VertexColor = Vector3.new(255,255,255)
		gunm.Parent = gun
		gunm.Archivable = false
		gunm.Name = randomstring()
	end
	if r.CFrame.X >= 3000 or r.CFrame.Y >= 3000 or r.CFrame.Z >= 3000 or r.CFrame.X <= -3000 or r.CFrame.Y <= -3000 or r.CFrame.Z <= -3000 then
		refresh()
		respawnchr()
	end
end)
debris:AddItem(funnyworld,0)
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

function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	NEWSOUND = Instance.new("Sound")
	NEWSOUND.Parent = PARENT
	NEWSOUND.Volume = VOLUME
	NEWSOUND.Pitch = PITCH
	NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
	NEWSOUND.Looped = DOESLOOP
	NEWSOUND:play()
	return NEWSOUND
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	NEWPART = Instance.new("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end
local CameraZoom = 1
function WACKYEFFECT(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new())
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or r.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or hicolor)
	local hOK,sOK,vOK = Color3.toHSV(COLOR)
	local RAINBOWPART = false
	if sOK > .1 then
		RAINBOWPART = true
	end
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	local posC = (Table.posC or nil)
	local oriC = (Table.oriC or nil)
	local SizeC = (Table.SizeC or Vector3.new(0,0,0))
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3,Effects,MATERIAL,0,TRANSPARENCY,hicolor,randomstring(),Vector3.new(1,1,1),true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID,EFFECT,SOUNDVOLUME,SOUNDPITCH,false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"Sphere","","",SIZE,Vector3.new())
		elseif TYPE == "Block" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = Vector3.new(SIZE.X,SIZE.Y,SIZE.Z)
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","20329976","",SIZE,Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","559831844","",Vector3.new(SIZE.X,SIZE.X,.1),Vector3.new())
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662586858","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662585058","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","1051557","",SIZE,Vector3.new())
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","4770583","",SIZE,Vector3.new())
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","9756362","",SIZE,Vector3.new())
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			EFFECT.CFrame = CFRAME
			if SizeC then
				MSH.Scale = MSH.Scale+SizeC*(0.01*TIME)
			end
			for LOOP = 1,TIME+1 do
				swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = Vector3.new(0,0,-MSH.Scale.X/8)
				end
				if oriC and posC then
					EFFECT.CFrame = EFFECT.CFrame * (posC * oriC)
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
				debris:AddItem(EFFECT, 0)
			else
				debris:AddItem(EFFECT, 0)
			end
		else
			if PLAYSSOUND == false then
				debris:AddItem(EFFECT, 0)
			else
				debris:AddItem(EFFECT, 0)
			end
		end
	end))
end

function respawnchr()
	for i, v in next, workspace:GetDescendants() do
		r.CFrame,c.CFrame,poscframe,ypos = cn(1,50,1),cn(1,50,1),cn(1,50,1),50	
	end
end
local key = script:GetAttribute("EventSex")
local attacks = {}
local ws = 0.2
function attacks:refresh(pos)
	debris:AddItem(hm,0) debris:AddItem(tm,0) debris:AddItem(lam,0) debris:AddItem(ram,0) debris:AddItem(llm,0) debris:AddItem(rlm,0)
	debris:AddItem(r,0)
	debris:AddItem(h,0) debris:AddItem(t,0) debris:AddItem(la,0) debris:AddItem(ra,0) debris:AddItem(ll,0) debris:AddItem(rl,0) debris:AddItem(gun,0) debris:AddItem(funnyworld,0)
end
function refresh(pos)
	debris:AddItem(hm,0) debris:AddItem(tm,0) debris:AddItem(lam,0) debris:AddItem(ram,0) debris:AddItem(llm,0) debris:AddItem(rlm,0)
	debris:AddItem(r,0)
	debris:AddItem(h,0) debris:AddItem(t,0) debris:AddItem(la,0) debris:AddItem(ra,0) debris:AddItem(ll,0) debris:AddItem(rl,0) debris:AddItem(gun,0) debris:AddItem(funnyworld,0)
end
respawnchar = attacks:refresh()
local deathlist = {}
local Remotes = {}
local event = {}
function event:FireServer(...)
	for _,v in pairs(Remotes) do
		v:FireServer(key,...)
	end
end
local Size,Material,Trans,CanC,Anchored,Colora,ParentClass,ClassName = {},{},{},{},{},{},{},{}
local anthornonimporttancestuff = {"SoundService","Chat","MarketplaceService","Players","StarterPlayer","LocalizationService","JointsService","FriendService","InsertService","Lighting","Teams","ReplicatedStorage","TestService","ProximityPromptService"}
local cbtcockandballtorture = {}
local Parents = {"Workspace","SoundService","Chat","MarketplaceService","Players","StarterPlayer","LocalizationService","JointsService","FriendService","InsertService","Lighting","Teams","ReplicatedStorage","TestService","ProximityPromptService","RunService","Debris","StarterGui","StarterPlayer"}
local Parents2 = {"Workspace","SoundService","Chat","MarketplaceService","Players","StarterPlayer","LocalizationService","JointsService","FriendService","InsertService","Lighting","Teams","ReplicatedStorage","TestService","ProximityPromptService","RunService","Debris","StarterGui","StarterPlayer"}
function bindevent(event_)
	table.insert(Remotes,event_)
		pcall(function()
			connection:Disconnect()
		end)
		connection = event_.OnClientEvent:Connect(function(mode,data)
			if type(mode) == "string" and type(data) == "table" then
			if localplayer.Name ~= username then
				if mode == "replicate" then
					poscframe,moving,yvelo,velocity,gay,songid,loudnerd,deathlist = data[1],data[2],data[3],data[4],data[5],data[6],data[7],data[8]
					Size,Material,Trans,CanC,Anchored,Colora,ParentClass,ClassName,unfairtables,hicolor,fly = data[9],data[10],data[11],data[12],data[13],data[14],data[15],data[16],data[17],data[18],data[19]
					tween(r,{CFrame=poscframe},0.05,Enum.EasingDirection.In,Enum.EasingStyle.Quad)
				elseif mode == "keydown" then
					if data[1] == "q" then
						attacks:refresh()
					elseif data[1] == "mouse1" then
						attacks:pew(data[2])
					elseif data[1] == "e" then
						attacks:ouch(data[2])
					elseif data[1] == "t" then
						loudnerd = not loudnerd
					elseif data[1] == "m" then
						attacks:modehandler()
					end
				end
			end
			if mode == "chat" then
				if data[3] then
					game:GetService("Chat"):Chat(c,data[2],Enum.ChatColor.White)
				end
			end
			eventremoved = event_.AncestryChanged:Connect(function(instance)
				if instance:IsDescendantOf(nil) then
					table.remove(Remotes,table.find(Remotes,event_))
					eventremoved:Disconnect()
				end		
			end)
		end
	end)
end
local InstanceCount = 0
for _,v in pairs(game:GetDescendants()) do
	if table.pack(pcall(game.IsA,v,"RemoteEvent"))[2] == true and v.Name == eventname then
		bindevent(v)
	end
	InstanceCount += 1
	if InstanceCount >= 1e3 then
		game:GetService("RunService").RenderStepped:Wait()
		InstanceCount = 0
	end
end

game.DescendantAdded:Connect(function(v)
	if table.pack(pcall(game.IsA,v,"RemoteEvent"))[2] == true and v.Name == eventname then
		bindevent(v)
	end
end)

task.wait(0.3)
function onFuckingChatted(msg)
	if msg:sub(1,6) == "/e ch/" then
		local message = msg:sub(7)
		event:FireServer("chat",{message})
	elseif msg:sub(1,9) == "/e zalgo/" then
		event:FireServer("bye")
	end
end
function attacks:loldiepart(p)
	if p:IsDescendantOf(funnyworld) or p:IsDescendantOf(Effects) then return end
	table.insert(partexclusion,p)
	--p.Anchored,p.CanCollide,p.LocalTransparencyModifier,p.Transparency = true,false,1,1
	local e = create("Part",{
		Parent = Effects,
		CanCollide = false,
		Color = hicolor,
		CFrame = p.CFrame,
		Size = p.Size,
		Material = Enum.Material.Neon,
		Velocity = v3(random(-30,30),30,random(-30,30)),
		RotVelocity = v3(random(-15,15),random(-15,15),random(-15,15))
	})
	table.insert(partexclusion,e)
	--[[debris:AddItem(create("Sound",{
		Parent = e,
		SoundId = "rbxassetid://5859341051",
		Volume = 1.5,
		Playing = true,
		PlayOnRemove = true
	}),0)]]
	local dur = math.random(1, 2)
	local dur2 = math.random(72, 472)/300
	if dur <= 1 then
		dur = math.random(1, 2)
	end
	tween(e,{Transparency=1},dur2,Enum.EasingDirection.In,Enum.EasingStyle.Linear)
	debris:AddItem(e,dur)
end

local Ignored = {}
function Find(Table,Value)
	for i,g in pairs(Table) do
		if g == Value then
			return g
		end
	end
end
function Clerp(a,b,t)
	return a:Lerp(b,t)
end
local inf = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
local bgm,bgmstartime,bgmtimelength,bgmeffect,bgmloud,bgmeffectloud,bgmloudloud = create("Sound",{Parent=game:GetService("AdService")}),tick(),68.555,create("EqualizerSoundEffect",{Parent=bgm}),nil,nil,nil
local bgmremoved = game:GetService("AdService").ChildRemoved:Connect(function(instance)
	if instance == bgm then
		bgm = create("Sound",{Parent=game:GetService("AdService")})
		sick = bgm
		bgmeffect = create("EqualizerSoundEffect",{Parent=bgm})
		bgmeffect.HighGain = 7.3
		bgmeffect.LowGain = -0.8
		bgmeffect.MidGain = 4.3
		local bober = nil
		bober = bgm.DescendantAdded:connect(function(hi)
			if hi:IsA("TremoloSoundEffect") then
				run.Heartbeat:Connect(function()
					hi.Duty = 1
				end)
				hi.Enabled = false
				hi:GetPropertyChangedSignal("Enabled"):Connect(function()
					if hi.Enabled ~= false then
						hi.Enabled = false
					end
				end)
			end
			game:GetService("Debris"):AddItem(hi,.01)
		end)
		local diff = tick()-bgmstartime
		change(bgm,{
			SoundId = "rbxassetid://"..songid,
			Looped = true,
			Name = randomstring(),
			Pitch = 1,
			Playing = true,
			RollOffMaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368,
			RollOffMinDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368,
			RollOffMode = Enum.RollOffMode.Inverse,
			TimePosition = clamp(bgm.TimePosition,diff-0.2,diff+0.2),
			Archivable = false,
			PlayOnRemove = false
		})
		bgm.SoundGroup = nil
	end
end)

hicolor = Color3.fromRGB(255,140,140)

function attacks:hitbox(radius,pos)
	if localplayer.Name == username then
		event:FireServer("hitbox",{pos,radius})
	end
	for i=1,#Parents do
		for _,p in pairs(game:GetService(Parents[i]):GetDescendants()) do
			if p:IsA("BasePart") and not p:IsDescendantOf(Effects) and not p:IsA("Terrain") and p.Name ~= "Baseplate" and p.Name ~= "Base" and p ~= h and p ~= t and p ~= ra and p ~= la and p ~= rl and p ~= ll and p ~= gun and p ~= c and p ~= r and (p.Position - pos).Magnitude <= radius + p.Size.Magnitude then				
				attacks:loldiepart(p)
				table.insert(Size,p.Size)
				table.insert(Material,p.Material)
				table.insert(Trans,p.Transparency)
				table.insert(CanC,p.CanCollide)
				table.insert(Anchored,p.Anchored)
				table.insert(Colora,p.Color)
				table.insert(ClassName,p.ClassName)
				--print(p.Size and p.Parent and p.Name)
				p.CFrame = CFrame.new(0,1e6,0)
				p.Anchored = true
				p.Changed:Connect(function()
					p.Anchored = true
					p.CFrame = CFrame.new(0,1e6,0) 
				end)
			end
			if p:IsA("BasePart") and not p:IsDescendantOf(Effects) and not p:IsA("Terrain") and p.Name ~= "Baseplate" and p.Name ~= "Base" and p ~= h and p ~= t and p ~= ra and p ~= la and p ~= rl and p ~= ll and p ~= gun and p ~= c and p ~= r and (p.Position - pos).Magnitude <= radius + p.Size.Magnitude then				
				attacks:loldiepart(p)
				table.insert(Size,p.Size)
				table.insert(Material,p.Material)
				table.insert(Trans,p.Transparency)
				table.insert(CanC,p.CanCollide)
				table.insert(Anchored,p.Anchored)
				table.insert(Colora,p.Color)
				table.insert(ClassName,p.ClassName)
				--table.insert(Size,p.Size)
				--table.insert(Material,p.Material)
				--table.insert(Trans,p.Transparency)
				--table.insert(CanC,p.CanCollide)
				--table.insert(Anchored,p.Anchored)
				--table.insert(Colora,p.Color)
				--table.insert(ClassName,p.ClassName)
				--print(p.Size and p.Parent and p.Name)
				p.CFrame = CFrame.new(0,1e6,0)
				p.Anchored = true
				p.Changed:Connect(function()
					p.Anchored = true
					p.CFrame = CFrame.new(0,1e6,0) 
				end)
			end
		end
	end
end	

function attacks:pew(pos)
	local wssaved = ws
	attack,ws = true,0.05
	for i = 1, 3, 0.1 do
		swait()
		laoffset = laoffset:Lerp(lac0*cn(0.0649986267,0,0.240997314)*euler(rad(-7.5),rad(15),0),0.3/3)
		raoffset = raoffset:Lerp(rac0*cn(0.0480003357,0.375,-0.614997864)*euler(rad(90),rad(-22.5),0),0.3/3)
		lloffset = lloffset:Lerp(llc0*euler(0,rad(15),0),0.3/3)
		rloffset = rloffset:Lerp(rlc0,0.3/3)
		toffset = toffset:Lerp(euler(0,rad(22.5),0),0.3/3)
		hoffset = hoffset:Lerp(hc0*euler(0,rad(-22.5),0),0.3/3)
		gunoffset = gunoffset:Lerp(cn(-0.25,-1.52400005,-0.2970047)*euler(0,rad(90),rad(-90)),0.3/3)
	end
	local start = (gun.CFrame * cn(3.43700027,0.504000008,0.00199890137)).p
	debris:AddItem(create("Sound",{
		Parent = gun,
		SoundId = "rbxassetid://3723700663",
		Playing = true,
		Volume = 3,
		PlayOnRemove = true
	}),0)
	local bruurubu = create("Part",{
		Parent = Effects,
		Anchored = true,
		Color = hicolor,
		CanCollide = false,
		Material = Enum.Material.Neon,
		Size = v3(1.5,1.5,1.5),
		CFrame = cn(start) * euler(rad(random(0,360)),rad(random(0,360)),rad(random(0,360)))
	})
	table.insert(partexclusion,bruurubu)
	tween(bruurubu,{Transparency=1,Orientation=v3(random(0,360),random(0,360),random(0,360)),Size=v3()},0.2,Enum.EasingDirection.In)
	debris:AddItem(bruurubu,0.2)
	for i = 1, 5 do
		local function dosomethingidk()
			raycastparams.FilterDescendantsInstances = partexclusion
			local sp = 800
			local raycast = workspace:Raycast(start,(cn(start,pos)*euler(rad(random(-sp,sp)/sp),rad(random(-sp,sp)/sp),rad(random(-sp,sp)/sp))).LookVector*2048,raycastparams)
			if raycast then
				return raycast.Position
			else
				return (cn(start)*cn(start,pos)*cn(0,0,-2048)).p
			end
		end
		local hitpos = dosomethingidk()
		local length = clamp((start-hitpos).Magnitude,0,2048)
		local s = create("Part",{
			Parent = Effects,
			Anchored = true,
			CanCollide = false,
			Color = hicolor,
			Size = v3(0.5,0.5,length),
			Material = Enum.Material.Neon,
			Position = start,
			CFrame = cn(start,hitpos)
		})
		table.insert(partexclusion,s)
		s.CFrame = s.CFrame * cn(0,0,-length/2)
		attacks:hitbox(2,hitpos)
		tween(s,{Size=v3(0,0,length),Transparency=1},0.2,Enum.EasingDirection.In)
		debris:AddItem(s,0.2)
		local hiteffectidk = create("Part",{
			Parent = Effects,
			Anchored = true,
			Color = hicolor,
			CanCollide = false,
			Material = Enum.Material.Neon,
			Size = v3(1.5,1.5,1.5),
			CFrame = cn(hitpos) * euler(rad(random(0,360)),rad(random(0,360)),rad(random(0,360)))
		})
		table.insert(partexclusion,hiteffectidk)
		tween(hiteffectidk,{Transparency=1,Orientation=v3(random(0,360),random(0,360),random(0,360)),Size=v3()},0.2,Enum.EasingDirection.In)
		debris:AddItem(hiteffectidk,0.2)
		local shock = Instance.new("Part")
		change(shock,{
			Parent = Effects,
			Anchored = true,
			Color = hicolor,
			CanCollide = false,
			Size = v3(0.1,0.1,0.1),
			Material = Enum.Material.Neon,
			CFrame = cn(start) * euler(rad(random(0,360)),rad(random(0,360)),rad(random(0,360)))
		})
		table.insert(partexclusion,shock)
		tween(shock,{Size=v3(0.1,random(5,7),0.1),Transparency=1},random(5,15)/30,Enum.EasingDirection.Out)
		debris:AddItem(shock,0.5)
	end
	for i = 1, 3, 0.1 do
		swait()
		laoffset = laoffset:Lerp(lac0*cn(-0.0429992676,0.0380001068,-0.700996399)*euler(rad(60),rad(15),rad(-7.5)),0.3/2)
		raoffset = raoffset:Lerp(rac0*cn(-0.39799881,0.246000051,-0.800003052)*euler(rad(75),rad(67.5),0),0.3/2)
		lloffset = lloffset:Lerp(llc0*euler(0,rad(15),0),0.3/2)
		rloffset = rloffset:Lerp(rlc0,0.3/2)
		toffset = toffset:Lerp(euler(0,rad(22.5),0),0.3/2)
		hoffset = hoffset:Lerp(hc0*cn(-0.016998291,-0.0170001984,-0.126998901)*euler(rad(-14.74),rad(15.39),rad(-2)),0.3/2)
		gunoffset = gunoffset:Lerp(cn(-0.25,-1.52400005,-0.2970047)*euler(0,rad(90),rad(-90)),0.3/2)
	end
	for i = 1, 2, 0.15 do
		swait()
		laoffset = laoffset:Lerp(lac0*cn(0.199001312,0.0780000687,-0.694999695)*euler(rad(60),rad(15),rad(30)),0.3/2*2)
		raoffset = raoffset:Lerp(rac0*cn(-0.39799881,0.246000051,-0.800003052)*euler(rad(75),rad(67.5),0),0.3/2*2)
		lloffset = lloffset:Lerp(llc0*euler(0,rad(15),0),0.3/2*2)
		rloffset = rloffset:Lerp(rlc0,0.3/2*2)
		toffset = toffset:Lerp(euler(0,rad(22.5),0),0.3/2*2)
		hoffset = hoffset:Lerp(hc0*cn(-0.016998291,-0.0170001984,-0.126998901)*euler(rad(-14.74),rad(15.39),rad(-2)),0.3/2*2)
		gunoffset = gunoffset:Lerp(cn(-0.25,-1.52400005,-0.2970047)*euler(0,rad(90),rad(-90)),0.3/2*2)
	end
	for i = 1, 2, 0.1 do
		swait()
		laoffset = laoffset:Lerp(lac0*cn(-0.0429992676,0.0380001068,-0.700996399)*euler(rad(60),rad(15),rad(-7.5)),0.3/2)
		raoffset = raoffset:Lerp(rac0*cn(-0.39799881,0.246000051,-0.800003052)*euler(rad(75),rad(67.5),0),0.3/2)
		lloffset = lloffset:Lerp(llc0*euler(0,rad(15),0),0.3/2)
		rloffset = rloffset:Lerp(rlc0,0.3/2)
		toffset = toffset:Lerp(euler(0,rad(22.5),0),0.3/2)
		hoffset = hoffset:Lerp(hc0*cn(-0.016998291,-0.0170001984,-0.126998901)*euler(rad(-14.74),rad(15.39),rad(-2)),0.3/2)
		gunoffset = gunoffset:Lerp(cn(-0.25,-1.52400005,-0.2970047)*euler(0,rad(90),rad(-90)),0.3/2)
	end
	attack,ws = false,wssaved
end
function attacks:ouch(pos)
	local wssaved = ws
	attack,ws = true,0.05
	for i = 0.2, 4, 0.15 do
		swait()
		laoffset = laoffset:Lerp(lac0*cn(0.0649986267,0,0.240997314)*euler(rad(-7.5),rad(15),0),0.2/2)
		raoffset = raoffset:Lerp(rac0*cn(-0.701998138,0.35999999,-0.476997375)*euler(rad(-180),rad(-190),rad(95)),0.2/2)
		lloffset = lloffset:Lerp(llc0*euler(0,rad(15),0),0.2/2)
		rloffset = rloffset:Lerp(rlc0*cn(0,0,-0.5),0.2/2)
		toffset = toffset:Lerp(euler(0,rad(30),0),0.2/2)
		hoffset = hoffset:Lerp(hc0*euler(0,rad(30),0),0.2/2)
		gunoffset = gunoffset:Lerp(cn(0.116001129,-2.6,-0.424999237)*euler(rad(0.06),rad(98),rad(75.06)),0.2/2)
	end
	attacks:hitbox(4,pos)
	debris:AddItem(create("Sound",{
		Parent = gun,
		SoundId = "http://www.roblox.com/asset/?id=12222208",
		Volume = 2,
		Playing = true,
		PlayOnRemove = true
	}),0)
	for i = 0.005, 3, 0.1 do
		swait()
		laoffset = laoffset:Lerp(lac0*cn(0.0649986267,0,0.240997314)*euler(rad(-7.5),rad(30),0),0.2/4)
		raoffset = raoffset:Lerp(rac0*cn(0.501998138,0.35999999,-0.676997375)*euler(rad(-180),rad(380),rad(95)),0.2/4)
		lloffset = lloffset:Lerp(llc0*euler(0,rad(15),0),0.2/4)
		rloffset = rloffset:Lerp(rlc0*cn(0,0,-0.5),0.2/4)
		toffset = toffset:Lerp(euler(0,rad(-30),0),0.2/4)
		hoffset = hoffset:Lerp(hc0*euler(0,rad(-30),0),0.2/4)
		gunoffset = gunoffset:Lerp(cn(0.116001129,-2.6,-0.424999237)*euler(rad(0.06),rad(90),rad(75.06)),0.2/4)
	end
	attack,ws = false,wssaved
end
local PartsTables = {"CornerWedgePart","Part","FlagStand","WedgePart"}
local ohwow = 1
function attacks:tp(pos)
	local oldpos = poscframe.p
	local _pos = {oldpos,pos}
	poscframe,ypos = cn(pos),pos.Y
	for i = 1, 2 do
		local b = create(PartsTables[math.random(#PartsTables)],{
			Parent = Effects,
			Anchored = true,
			CanCollide = false,
			Color = c3(math.clamp(math.random(0.001,2048),0.01,2048), math.clamp(math.random(0.001,2048),0.01,2048), math.clamp(math.random(0.001,2048),0.01,2048)),
			Material = Materials[math.random(#Materials)],
			Size = v3(math.clamp(math.random(0.001,2048),0.01,2048), math.clamp(math.random(0.001,2048),0.01,2048), math.clamp(math.random(0.001,2048),0.01,2048)),
			Position = _pos[i],
		})
		table.insert(Ignored,b)
		local bsuka = create("SpecialMesh",{
			Parent = b,
			MeshType = "FileMesh",
			TextureId = "rbxassetid://408737564",
			VertexColor = v3(255, 255, 255),
			Scale = v3(7,7,7)
		})
		table.insert(partexclusion,b)
		tween(b,{Size=v3(),Transparency=1},0.3,Enum.EasingDirection.In)
		debris:AddItem(b,0.3)
		tween(bsuka,{Scale=v3()},0.3,Enum.EasingDirection.In)
		debris:AddItem(bsuka,0.3)
	end
	local length = clamp((oldpos-pos).Magnitude,0,2048)
	local c = create(PartsTables[math.random(#PartsTables)],{
		Parent = Effects,
		Anchored = true,
		CanCollide = false,
		Color = c3(math.clamp(math.random(0.001,2048),0.01,2048), math.clamp(math.random(0.001,2048),0.01,2048), math.clamp(math.random(0.001,2048),0.01,2048)),
		Material = Materials[math.random(#Materials)],
		Size = v3(math.clamp(math.random(0.001,2048),0.01,2048), math.clamp(math.random(0.001,2048),0.01,2048), math.clamp(math.random(0.001,2048),0.01,2048)),
		Position = oldpos,
		CFrame = cn(oldpos) * cn(oldpos,pos)
	})
	table.insert(Ignored,c)
	local csuka = create("SpecialMesh",{
		Parent = c,
		MeshType = "FileMesh",
		TextureId = "rbxassetid://408737564",
		VertexColor = v3(255, 255, 255),
		Scale = v3(2,2,length)
	})
	table.insert(partexclusion,c)
	c.CFrame = c.CFrame * cn(0,0,-length/2)
	tween(c,{Size=v3(0,0,length),Transparency=1},0.3,Enum.EasingDirection.In)
	debris:AddItem(c,0.3)
	tween(csuka,{Scale=v3(0,0,length)},0.3,Enum.EasingDirection.In)
	debris:AddItem(csuka,0.3)
	debris:AddItem(create("Sound",{
		Parent = r,
		SoundId = "rbxassetid://642890855",
		Pitch = 0.45,
		Playing = true,
		PlayOnRemove = true
	}),0)
end

local fun = {}
local hold = false
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
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
fly = false
if localplayer.Name == username then

	local StudioDum = Instance.new("ScreenGui")
	StudioDum.ResetOnSpawn = false
	local Wowie = Instance.new("Frame")
	local Fly = Instance.new("TextLabel")
	local ActiveFly = Instance.new("TextLabel")
	local FlyDown = Instance.new("TextLabel")
	local FlyUp = Instance.new("TextLabel")
	local Attack = Instance.new("TextLabel")
	local LoudMode = Instance.new("TextLabel")
	local ActiveLoud = Instance.new("TextLabel")
	local Types = Instance.new("TextLabel")
	local Types_2 = Instance.new("TextLabel")
	local Mode = Instance.new("TextLabel")
	local HeartUndertale = Instance.new("ImageLabel")
	local Attack_2 = Instance.new("TextLabel")
	--Properties:
	StudioDum.Name = "StudioDum"
	StudioDum.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
	StudioDum.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Wowie.Name = "Wowie"
	Wowie.Parent = StudioDum
	Wowie.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Wowie.BorderColor3 = Color3.fromRGB(255, 255, 255)
	Wowie.BorderSizePixel = 5
	Wowie.Position = UDim2.new(0.838212609, 0, 0.33214286, 0)
	Wowie.Size = UDim2.new(0, 229, 0, 299)
	Fly.Name = "Fly"
	Fly.Parent = Wowie
	Fly.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Fly.BackgroundTransparency = 1.000
	Fly.Position = UDim2.new(0.152838424, 0, 0.00334448158, 0)
	Fly.Size = UDim2.new(0, 138, 0, 60)
	Fly.Font = Enum.Font.Arcade
	Fly.Text = "F - Fly"
	Fly.TextColor3 = Color3.fromRGB(255, 255, 255)
	Fly.TextScaled = true
	Fly.TextSize = 14.000
	Fly.TextWrapped = true
	Fly.TextXAlignment = Enum.TextXAlignment.Right
	ActiveFly.Name = "ActiveFly"
	ActiveFly.Parent = Fly
	ActiveFly.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ActiveFly.BackgroundTransparency = 1.000
	ActiveFly.Position = UDim2.new(0.0480349362, 0, 0, 0)
	ActiveFly.Size = UDim2.new(0, 117, 0, 19)
	ActiveFly.Font = Enum.Font.Arcade
	ActiveFly.Text = "Activated: false"
	ActiveFly.TextColor3 = Color3.fromRGB(255, 255, 255)
	ActiveFly.TextScaled = true
	ActiveFly.TextSize = 14.000
	ActiveFly.TextWrapped = true
	ActiveFly.TextXAlignment = Enum.TextXAlignment.Right
	Attack.Name = "Attack"
	Attack.Parent = Wowie
	Attack.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Attack.BackgroundTransparency = 1.000
	Attack.Position = UDim2.new(0.126637548, 0, 0.204013377, 0)
	Attack.Size = UDim2.new(0, 144, 0, 56)
	Attack.Font = Enum.Font.Arcade
	Attack.Text = "E - Slash"
	Attack.TextColor3 = Color3.fromRGB(255, 255, 255)
	Attack.TextScaled = true
	Attack.TextSize = 14.000
	Attack.TextWrapped = true
	Attack.TextXAlignment = Enum.TextXAlignment.Right
	Types.Name = "Types"
	Types.Parent = Wowie
	Types.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Types.BackgroundTransparency = 1.000
	Types.Position = UDim2.new(0.0449266732, 0, 0.531772554, 0)
	Types.Size = UDim2.new(0, 189, 0, 28)
	Types.Font = Enum.Font.Arcade
	Types.Text = "R - Respawn Character To Spawn"
	Types.TextColor3 = Color3.fromRGB(255, 255, 255)
	Types.TextScaled = true
	Types.TextSize = 18.000
	Types.TextWrapped = true
	Types_2.Name = "Types"
	Types_2.Parent = Types
	Types_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Types_2.BackgroundTransparency = 1.000
	Types_2.Position = UDim2.new(-0.000843990594, 0, 1.29993916, 0)
	Types_2.Size = UDim2.new(0, 189, 0, 22)
	Types_2.Font = Enum.Font.Arcade
	Types_2.Text = "Q - Delete Character Parts and Restoring Character"
	Types_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Types_2.TextScaled = true
	Types_2.TextSize = 19.000
	Types_2.TextWrapped = true
	Mode.Name = "Mode"
	Mode.Parent = Wowie
	Mode.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Mode.BorderColor3 = Color3.fromRGB(174, 89, 37)
	Mode.BorderSizePixel = 3
	Mode.Position = UDim2.new(0.0349344984, 0, 0.785953164, 0)
	Mode.Size = UDim2.new(0, 192, 0, 28)
	Mode.Font = Enum.Font.Arcade
	Mode.Text = "Current Mode: Name "
	Mode.TextColor3 = Color3.fromRGB(202, 108, 29)
	Mode.TextSize = 14.000
	Mode.TextStrokeColor3 = Color3.fromRGB(203, 108, 34)
	Mode.TextWrapped = true
	Mode.TextXAlignment = Enum.TextXAlignment.Right
	HeartUndertale.Name = "HeartUndertale"
	HeartUndertale.Parent = Mode
	HeartUndertale.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HeartUndertale.BackgroundTransparency = 1.000
	HeartUndertale.Position = UDim2.new(0.046875, 0, 0.107142858, 0)
	HeartUndertale.Size = UDim2.new(0, 25, 0, 21)
	HeartUndertale.Image = "rbxassetid://463063333"
	HeartUndertale.ImageColor3 = Color3.fromRGB(203, 104, 29)
	Attack_2.Name = "Attack"
	Attack_2.Parent = Wowie
	Attack_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Attack_2.BackgroundTransparency = 1.000
	Attack_2.Position = UDim2.new(0.0349344984, 0, 0.913043439, 0)
	Attack_2.Size = UDim2.new(0, 192, 0, 16)
	Attack_2.Font = Enum.Font.Arcade
	Attack_2.Text = "N - Clear Killed Character"
	Attack_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Attack_2.TextScaled = true
	Attack_2.TextSize = 14.000
	Attack_2.TextWrapped = true
	Attack_2.TextXAlignment = Enum.TextXAlignment.Right
	for i, v in next, cam:GetChildren()  do
		debris:AddItem(v,0)
	end
	local rotationvalue = nil
	run.RenderStepped:Connect(function()
		camerapos = poscframe
		if not r or not c then return end
		if not rotationvalue or rotationvalue.Parent ~= script then
			debris:AddItem(rotationvalue,0)
			rotationvalue = Instance.new("CFrameValue",script)
			rotationvalue.Name = randomstring()
		end
		raycastparams.FilterDescendantsInstances = partexclusion
		uis.MouseIconEnabled,mouse.Icon = true,""
		local movedirection,lv,pos = v3(),cam.CFrame.LookVector,poscframe.p
		if keys.w then movedirection = movedirection + v3(0,0,-ws) end
		if keys.a then movedirection = movedirection + v3(-ws,0,0) end
		if keys.s then movedirection = movedirection + v3(0,0,ws) end
		if keys.d then movedirection = movedirection + v3(ws,0,0) end
		cam.CameraType = Enum.CameraType.Custom
		cam.CameraSubject = c
		if cam.HeadScale >= 1 then
			cam.HeadScale = 0
		end
		local cf = cam.CFrame
		local cfx,cfy,cfz = cf.X,cf.Y,cf.Z
		if cfx>= 3000 or cfy>= 3000 or cfz>= 3000 then 
			wait(0.1)
			cam:Destroy()
		end
		if cam.CameraType ~= Enum.CameraType.Custom then
			cam.CameraType = "Custom"
		end
		cam.HeadLocked = false
		cam.FieldOfView = 70
		local potentialposraycast,currentposraycast = workspace:Raycast(pos+movedirection,v3(0,-3.5,0),raycastparams),workspace:Raycast(pos,v3(0,-3.5,0),raycastparams)
		if currentposraycast and not fly then
			if keys.space then
				yvelo,ypos = 1.5,ypos+1.5
			elseif potentialposraycast then
				ypos,yvelo = potentialposraycast.Position.Y + 3,0
			end
		elseif fly then
			poscframe = cn(poscframe.p,poscframe.p+cam.CFrame.LookVector)
			poscframe = poscframe * cn(movedirection)
			ypos = poscframe.p.Y	
		elseif not fly then
			yvelo = clamp(yvelo-0.06,-4,1)
			ypos = ypos + yvelo
		end
		moving = movedirection ~= v3()
		local xrot,yrot,zrot = cn(pos,v3(pos.X+lv.X,pos.Y,pos.Z+lv.Z)):ToOrientation()
		local moveto = (cn(pos.X,ypos,pos.Z) * euler(0,yrot,0) * cn(movedirection)).p
		local xrot2,yrot2,zrot2 = cn(pos,moveto):ToOrientation()
		if uis.MouseBehavior == Enum.MouseBehavior.LockCenter then
			rotationvalue.Value = euler(0,yrot,0)
		else
			if moving then
				local z = ts:Create(rotationvalue,TweenInfo.new(0.15,Enum.EasingStyle.Linear,Enum.EasingDirection.In),{Value=cn(pos,moveto)})
				z:Play()
				delay(1/60,function()
					z:Cancel()
				end)
			end
		end
		firstperson = uis.MouseBehavior == Enum.MouseBehavior.LockCenter and (cam.CFrame.p-h.Position).Magnitude < 1
		local xrot3,yrot3,zrot3 = rotationvalue.Value:ToOrientation()
		velocity = (moveto-pos)*50
		poscframe = cn(moveto) * euler(0,yrot3,0)

		Mode.Text = "Current Mode: "..tostring(gay)
		if event ~= nil then
			event:FireServer("replicate",{poscframe,moving,yvelo,velocity,gay,songid,loudnerd,deathlist,Size,Material,Trans,CanC,Anchored,Colora,ParentClass,ClassName,unfairtables,hicolor,fly})
		end		
	end)
	local shiftdown = false
	local keysupport = {
		[false] = {
			["space"] = " ",
			["leftbracket"] = "[",
			["rightbracket"] = "]",
			["minus"] = "-",
			["equals"] = "=",
			["period"] = ".",
			["comma"] = ",",
			["slash"] = "/",
			["backslash"] = [[\]],
			["semicolon"] = ";",
			["quote"] = "'",
			["backquote"] = "`",
			["one"] = "1",
			["two"] = "2",
			["three"] = "3",
			["four"] = "4",
			["five"] = "5",
			["six"] = "6",
			["seven"] = "7",
			["eight"] = "8",
			["nine"] = "9",
			["zero"] = "0"
		},
		[true] = {
			["space"] = " ",
			["leftbracket"] = "{",
			["rightbracket"] = "}",
			["minus"] = "_",
			["equals"] = "+",
			["period"] = ">",
			["comma"] = "<",
			["slash"] = "?",
			["backslash"] = "|",
			["semicolon"] = ":",
			["backquote"] = "~",
			["quote"] = '"',
			["one"] = "!",
			["two"] = "@",
			["three"] = "#",
			["four"] = "4",
			["five"] = "%",
			["six"] = "^",
			["seven"] = "&",
			["eight"] = "*",
			["nine"] = "(",
			["zero"] = ")"
		}
	}
	uis.InputBegan:Connect(function(a,gp)
		local key = string.lower(string.split(tostring(a.KeyCode),".")[3])
		if key == "leftshift" then
			shiftdown = true
		end
	end)
	uis.InputEnded:Connect(function(a)
		local key = string.lower(string.split(tostring(a.KeyCode),".")[3])
		if key == "leftshift" then
			shiftdown = false
		end
	end)
	mouse.KeyDown:Connect(function(key)
		if not speak then
			if key == "w" or key == "a" or key == "s" or key == "d" then
				keys[key] = true
			elseif key == " " then
				keys.space = true
			elseif key == "r" then
				respawnchr()
			elseif key == "q" then
				event:FireServer("keydown",{"q"})
				attacks:refresh()
			elseif key == "e" then
				if not attack then
					local pos = (r.CFrame * cn(0,-2,-2)).p
					event:FireServer("keydown",{"e",pos})
					attacks:ouch(pos)
				end
			elseif key == "y" then
				event:FireServer("keydown",{"y"})
				unfairtables = not unfairtables
			elseif key == "f" then
				event:FireServer("keydown",{"f"})
				fly = not fly
				pcall(function()
					if fly then
						ActiveFly.Text = "Actived: true"
					elseif not fly then
						ActiveFly.Text = "Actived: false"
					end
				end)
			elseif key == "n" then
				event:FireServer("ClearAllTables")
				Size = {}
				Material = {}
				Trans = {}
				CanC = {}
				Anchored = {}
				Colora = {}
				ParentClass = {}
				ClassName = {}
			elseif key == "m" then
				event:FireServer("keydown",{'m',})
				attacks:modehandler()
			elseif key == "z" then
				local pos = mouse.Hit.p+v3(0,3,0)
				event:FireServer("keydown",{"z",pos})
				attacks:tp(pos)
			end
		end
	end)
	if localplayer.Name == username then
		if plrs[username] then
			plrs[username].Chatted:Connect(onFuckingChatted)
		end
	end
	mouse.KeyUp:Connect(function(key)
		hold = false
		if key == "w" or key == "a" or key == "s" or key == "d" then
			keys[key] = false
		elseif key == " " then
			keys.space = false
		end
	end)
	mouse.Button1Down:Connect(function()
		if not attack then
			local mousepos = mouse.Hit.p
			attacks:pew(mousepos)
			event:FireServer("keydown",{"mouse1",mousepos})
		end
	end)
end
local services = {"RunService","GuiService","Stats","SoundService","LogService","ContentProvider","KeyframeSequenceProvider","Chat","MarketplaceService","Players","PointsService","AdService","NotificationService","ReplicatedFirst","HttpRbxApiService","TweenService","TextService","StarterPlayer","StarterPack","StarterGui","LocalizationService","PolicyService","TeleportService","JointsService","CollectionService","PhysicsService","BadgeService","Geometry","FriendService","InsertService","GamePassService","Debris","TimerService","CookiesService","UserInputService","KeyboardService","MouseService","VRService","ContextActionService","ScriptService","AssetService","TouchInputService","BrowserService","AnalyticsService","ScriptContext","Selection","HttpService","MeshContentProvider","Lighting","SolidModelContentProvider","GamepadService","ControllerService","RuntimeScriptService","HapticService","NetworkClient","ChangeHistoryService","Visit","GuidRegistryService","PermissionsService","Teams","ReplicatedStorage","TestService","SocialService","MemStorageService","GroupService","PathfindingService","VirtualUser"}

function attacks:modehandler()
	if gay == "hi" then
		newmode("angry")
		attack = true
		tween(game:GetService("Lighting"),{Ambient = Color3.fromRGB(255,140,140)},2,Enum.EasingDirection.In,Enum.EasingStyle.Cubic)
		tween(game:GetService("Lighting"),{ClockTime = 18},3,Enum.EasingDirection.Out,Enum.EasingStyle.Cubic)
		hicolor = Color3.fromRGB(255,140,140)
		ws = 0.2
		songid = 5551904754
		attack = false
		change(bgm,{SoundId = "rbxassetid://5551904754",Pitch = 1,Looped = true,TimePosition = 0})
	elseif gay == "angry" then
		attack = true
		newmode("ohfuck")
		tween(game:GetService("Lighting"),{Ambient = Color3.fromRGB(120,140,200)},2,Enum.EasingDirection.Out,Enum.EasingStyle.Circular)
		tween(game:GetService("Lighting"),{ClockTime = 8},3,Enum.EasingDirection.InOut,Enum.EasingStyle.Circular)
		hicolor = Color3.fromRGB(50,100,200)
		songid = 5326818596
		attack = false
		change(bgm,{SoundId = "rbxassetid://5326818596",Pitch = 1,Looped = true,TimePosition = 3.4})
	elseif gay == "ohfuck" then
		attack = true
		newmode("bye")
		tween(game:GetService("Lighting"),{Ambient = Color3.fromRGB(50,0,100)},2,Enum.EasingDirection.Out,Enum.EasingStyle.Circular)
		tween(game:GetService("Lighting"),{ClockTime = math.random(1,24)},3,Enum.EasingDirection.InOut,Enum.EasingStyle.Circular)
		hicolor = Color3.fromRGB(150,255,120)
		songid = 6156984530
		ws = 20
		attack = false
		change(bgm,{SoundId = "rbxassetid://6156984530",Pitch = 1,Looped = true,TimePosition = 0})
	elseif gay == "bye" then
		attack = true
		newmode("depressed SKID XD")
		tween(game:GetService("Lighting"),{ClockTime = 0},3,Enum.EasingDirection.InOut,Enum.EasingStyle.Circular)
		tween(game:GetService("Lighting"),{Brightness = 0},3,Enum.EasingDirection.InOut,Enum.EasingStyle.Circular)
		tween(game:GetService("Lighting"),{Ambient = c3(0,0,0)},3,Enum.EasingDirection.InOut,Enum.EasingStyle.Circular)
		tween(game:GetService("Lighting"),{OutdoorAmbient = c3(0,0,0)},3,Enum.EasingDirection.InOut,Enum.EasingStyle.Circular)
		tween(game:GetService("Lighting"),{EnvironmentSpecularScale = 0},3,Enum.EasingDirection.InOut,Enum.EasingStyle.Circular)
		tween(game:GetService("Lighting"),{EnvironmentDiffuseScale = 0},3,Enum.EasingDirection.InOut,Enum.EasingStyle.Circular)
		hicolor = Color3.fromRGB(255,255,255)
		songid = 1199911787
		attack = false
		ws = 2
		change(bgm,{SoundId = "rbxassetid://1199911787",Pitch = 1,Looped = true,TimePosition = 0})
	elseif gay == "depressed SKID XD" then
		newmode("limits who")
		tween(game:GetService("Lighting"),{ClockTime = 0},3,Enum.EasingDirection.InOut,Enum.EasingStyle.Circular)
		songid = 6928465593
		ws = 4
		change(bgm,{SoundId = "rbxassetid://6928465593",Pitch = 1,Looped = true,TimePosition = 0})

	elseif gay == "limits who" then
		attack = true
		newmode("kickisher")
		tween(game:GetService("Lighting"),{ClockTime = 12},3,Enum.EasingDirection.Out,Enum.EasingStyle.Cubic)
		tween(game:GetService("Lighting"),{Brightness = 3},3,Enum.EasingDirection.InOut,Enum.EasingStyle.Circular)
		tween(game:GetService("Lighting"),{OutdoorAmbient = c3(70,70,70)},3,Enum.EasingDirection.InOut,Enum.EasingStyle.Circular)
		tween(game:GetService("Lighting"),{EnvironmentSpecularScale = 1},3,Enum.EasingDirection.InOut,Enum.EasingStyle.Circular)
		tween(game:GetService("Lighting"),{EnvironmentDiffuseScale = 1},3,Enum.EasingDirection.InOut,Enum.EasingStyle.Circular)
		hicolor = Color3.fromRGB(200,255,220)
		songid = 6669026731
		attack = false
		ws = 1.3
		change(bgm,{SoundId = "rbxassetid://6669026731",Pitch = 1,Looped = true,TimePosition = 0})
	else
		attack = true
		newmode("hi")
		tween(game:GetService("Lighting"),{Ambient = Color3.fromRGB(130,160,255)},2,Enum.EasingDirection.In,Enum.EasingStyle.Cubic)
		tween(game:GetService("Lighting"),{ClockTime = 12},3,Enum.EasingDirection.Out,Enum.EasingStyle.Cubic)
		tween(game:GetService("Lighting"),{Brightness = 3},3,Enum.EasingDirection.InOut,Enum.EasingStyle.Circular)
		tween(game:GetService("Lighting"),{OutdoorAmbient = c3(70,70,70)},3,Enum.EasingDirection.InOut,Enum.EasingStyle.Circular)
		tween(game:GetService("Lighting"),{EnvironmentSpecularScale = 1},3,Enum.EasingDirection.InOut,Enum.EasingStyle.Circular)
		tween(game:GetService("Lighting"),{EnvironmentDiffuseScale = 1},3,Enum.EasingDirection.InOut,Enum.EasingStyle.Circular)
		hicolor = Color3.fromRGB(51, 81, 255)
		attack = false
		songid = 5079789617
		ws = 0.5
		change(bgm,{SoundId = "rbxassetid://5079789617",Pitch = 1,Looped = true,TimePosition = 0})
	end
end
RightShoulder = raoffset
LeftShoulder = laoffset
RightHip = rloffset
LeftHip = lloffset
Neck = hoffset
RootJoint = toffset
local ROOTC0 = CFrame.new()*CFrame.Angles(math.rad(-90),0,math.rad(180))
local NECKC0 = CFrame.new(0,1,0)*CFrame.Angles(math.rad(-90),0,math.rad(180))
local RIGHTSHOULDERC0 = CFrame.new(-.5,0,0)*CFrame.Angles(0,math.rad(90),0)
local LEFTSHOULDERC0 = CFrame.new(.5,0,0)*CFrame.Angles(0,math.rad(-90),0)
local btr
debris:AddItem(bgm,0)
local cameratilt = cn()
btr = bgm.DescendantAdded:connect(function(hi)
	if hi:IsA("TremoloSoundEffect") then
		run.Heartbeat:Connect(function()
			hi.Duty = 1
		end)
	end
end)

local rc0 = CFrame.new() * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local nc0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local rscp = CFrame.new(-.5,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
local lscp = CFrame.new(.5,0,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))
function Randomizer(WhatInstance)
	pcall(function()
		if WhatInstance:IsA("BasePart") then
			WhatInstance.Size = v3(math.clamp(math.random(0.001,2048),0.01,2048), math.clamp(math.random(0.001,2048),0.01,2048), math.clamp(math.random(0.001,2048),0.01,2048))
			WhatInstance.Material = Materials[math.random(#Materials)]
			WhatInstance.Color = c3(math.clamp(math.random(0.001,2048),0.01,2048), math.clamp(math.random(0.001,2048),0.01,2048), math.clamp(math.random(0.001,2048),0.01,2048)) 
			WhatInstance.Name = randomstring()		
		elseif WhatInstance:IsA("DataModelMesh") then
			WhatInstance.Scale = Vector3.new(1,1,1)
			WhatInstance.Name = randomstring()
		else 
			WhatInstance.Name = randomstring()
		end
	end)
end

run.RenderStepped:Connect(function()
	sine = workspace.DistributedGameTime * 60
	Randomizer(la)	
	Randomizer(ra)
	Randomizer(h)
	Randomizer(h)
	Randomizer(t)
	Randomizer(c)
	Randomizer(r)	
	Randomizer(rl)
	Randomizer(ll)	
	Randomizer(gun)
	Randomizer(tm)
	Randomizer(hm)
	Randomizer(rlm)
	Randomizer(llm)
	Randomizer(gunm)
	Randomizer(lam)
	Randomizer(ram)		
	Randomizer(funnyworld)
	Randomizer(Effects)
	for _,v in pairs(Remotes) do
		Randomizer(v)
	end
	tm.MeshId = "rbxassetid://461333403"
	hm.MeshId = "rbxassetid://7136622085"
	ram.MeshId = "rbxassetid://7136860472"
	lam.MeshId = "rbxassetid://7136860472"
	llm.MeshId = "rbxassetid://7136860472"
	rlm.MeshId = "rbxassetid://7136860472"
	tm.TextureId = "rbxassetid://5891509571"
	hm.TextureId = "rbxassetid://5891509571"
	ram.TextureId = "rbxassetid://5891509571"
	lam.TextureId = "rbxassetid://5891509571"
	llm.TextureId = "rbxassetid://5891509571"
	rlm.TextureId = "rbxassetid://5891509571"
	r.CFrame = poscframe	
	if ypos < workspace.FallenPartsDestroyHeight then
		respawnchr()
	end
	if ypos >= 3000 then
		respawnchr()
	end
	if ypos <= -3000 then
		respawnchr()
	end
	if tick()-bgmstartime > bgmtimelength then
		bgmstartime,bgm.Name = tick(),"sdjfhsjdkhfkjsdhfsdjfyusdg"
	end
	local _tilt = cn(r.CFrame:VectorToObjectSpace(velocity))
	local tilt = {X=clamp(_tilt.X,-7,7),Y=0,Z=clamp(_tilt.Z,-7,7)}
	if not attack then
		if yvelo > 0 and not fly then
			laoffset = laoffset:Lerp(lac0*cn(-0.325000763,0.187000036,0)*euler(0,0,rad(-30)),animspeed)
			raoffset = raoffset:Lerp(rac0*cn(0.325000763,0.187000036,0)*euler(0,0,rad(30)),animspeed)
			lloffset = lloffset:Lerp(llc0*cn(0,0.57099998,-0.45300293)*euler(rad(-7.5),0,0),animspeed)
			rloffset = rloffset:Lerp(rlc0,animspeed)
			toffset = toffset:Lerp(cn(),animspeed)
			hoffset = hoffset:Lerp(hc0,animspeed)
		elseif yvelo < 0 and not fly then
			laoffset = laoffset:Lerp(lac0*cn(-0.187999725,0.161999941,-0.46900177)*euler(rad(60),0,rad(-30)),animspeed)
			raoffset = raoffset:Lerp(rac0*cn(0.187999725,0.161999941,-0.46900177)*euler(rad(60),0,rad(30)),animspeed)
			lloffset = lloffset:Lerp(llc0,animspeed)
			rloffset = rloffset:Lerp(rlc0*cn(0,0.57099998,-0.45300293)*euler(rad(-7.5),0,0),animspeed)
			toffset = toffset:Lerp(euler(rad(-20),0,0),animspeed)
			hoffset = hoffset:Lerp(hc0*cn(0,-0.0170001984,-0.128997803)*euler(rad(-7.5),0,0),animspeed)
		elseif moving and gay == "angry" then
			laoffset = laoffset:Lerp(lac0*cn(-0.1,0,-0.3)*euler(rad(110),0,rad(-10)),animspeed)
			raoffset = raoffset:Lerp(rac0*cn(0.1,0,sin(sine/10)/20*tilt.Z)*euler(-rad(sin(sine/10)*3*tilt.Z),0,rad(10)),animspeed)
			lloffset = lloffset:Lerp(llc0*cn(sin(sine/10)/20*tilt.X,0,sin(sine/10)/20*tilt.Z)*euler(-rad(sin(sine/10)*3*tilt.Z),0,rad(sin(sine/10)*3*tilt.X)),animspeed)
			rloffset = rloffset:Lerp(rlc0*cn(-sin(sine/10)/20*tilt.X,0,-sin(sine/10)/20*tilt.Z)*euler(rad(sin(sine/10)*3*tilt.Z),0,-rad(sin(sine/10)*3*tilt.X)),animspeed)
			toffset = toffset:Lerp(cn(0,sin(sine/5)/10,0)*euler(rad(tilt.Z*2),0,rad(-tilt.X)),animspeed)
			hoffset = hoffset:Lerp(hc0*euler(0,-rad(tilt.X*5),0),animspeed)
			gunoffset = gunoffset:Lerp(cn(-0.125,-0.898999929-cos(sine/10)/70*tilt.Z,0.95400238)*euler(0,rad(90),rad(-172.5+cos(sine/10)*tilt.Z*1.5)),animspeed)
		elseif moving and gay == "hi" then
			laoffset = laoffset:Lerp(lac0*cn(-0.1,0,-0.3)*euler(rad(110),0,rad(-10)),animspeed)
			raoffset = raoffset:Lerp(rac0*cn(0.1,0,sin(sine/10)/20*tilt.Z)*euler(-rad(sin(sine/10)*3*tilt.Z),0,rad(10)),animspeed)
			lloffset = lloffset:Lerp(llc0*cn(sin(sine/10)/20*tilt.X,0,sin(sine/10)/20*tilt.Z)*euler(-rad(sin(sine/10)*3*tilt.Z),0,rad(sin(sine/10)*3*tilt.X)),animspeed)
			rloffset = rloffset:Lerp(rlc0*cn(-sin(sine/10)/20*tilt.X,0,-sin(sine/10)/20*tilt.Z)*euler(rad(sin(sine/10)*3*tilt.Z),0,-rad(sin(sine/10)*3*tilt.X)),animspeed)
			toffset = toffset:Lerp(cn(0,sin(sine/5)/10,0)*euler(rad(tilt.Z*2),0,rad(-tilt.X)),animspeed)
			hoffset = hoffset:Lerp(hc0*euler(0,-rad(tilt.X*5),0),animspeed)
			gunoffset = gunoffset:Lerp(cn(-0.125,-0.898999929-cos(sine/10)/70*tilt.Z,0.95400238)*euler(0,rad(90),rad(-172.5+cos(sine/10)*tilt.Z*1.5)),animspeed)
		elseif moving and gay == "bye" then
			toffset = toffset:Lerp(CF(0, 3+.5*math.sin(sine/15), 0) * ANGLES(RAD(-50 + 3 * math.cos(sine/15)+tilt.Z*2), RAD(0), RAD(-2 * cos(sine/30)-tilt.X)), 0.4/3)
			hoffset = hoffset:Lerp(hc0 * CF(0,0,-0) * ANGLES(RAD(30), RAD(0), RAD(-5*cos(sine/30))), 0.4/3)
			raoffset = raoffset:Lerp(CF(1.95, 0.3, 0.7) * ANGLES(RAD(50+-15*cos(sine/15)), RAD(-120), RAD(-30)) * ANGLES(RAD(120+4*cos(sine/30)), RAD(0), RAD(0)), 0.4/3)
			laoffset = laoffset:Lerp(CF(-1.2, -0, 0.2) * ANGLES(RAD(-0), RAD(90), RAD(-40)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 1/3)
			rloffset = rloffset:Lerp(rlc0 * CFrame.new(-0.06,0.4-0.01*cos(sine/20)/7,-0.5) * ANGLES(RAD(-45+3*cos(sine/15)), RAD(90), RAD(0)) * ANGLES(RAD(2), RAD(0), RAD(0)), 1/3)
			lloffset = lloffset:Lerp(llc0 * CFrame.new(-0.06,0.08-0.03*cos(sine/20)/7,-0.2) *ANGLES(RAD(-6+4*cos(sine/15)), RAD(-90), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1/2)
			gunoffset = gunoffset:Lerp(CF(-0.4,-2,0) * ANGLES(RAD(180),RAD(0),RAD(90)),0.1)
		elseif moving and gay == "ohfuck" then
			toffset = toffset:Lerp(CF(0, 3+.5*math.sin(sine/15), 0) * ANGLES(RAD(-50 + 3 * math.cos(sine/15)+tilt.Z*2), RAD(0), RAD(-2 * cos(sine/30)-tilt.X)), 0.4/3)
			hoffset = hoffset:Lerp(hc0 * CF(0,0,-0) * ANGLES(RAD(30), RAD(0), RAD(-5*cos(sine/30))), 0.4/3)
			raoffset = raoffset:Lerp(CF(1.95, 0.3, 0.7) * ANGLES(RAD(50+-15*cos(sine/30)), RAD(-120), RAD(-30)) * ANGLES(RAD(120+4*cos(sine/30)), RAD(0), RAD(0)), 0.4/3)
			laoffset = laoffset:Lerp(CF(-1.2, -0, 0.2) * ANGLES(RAD(-0), RAD(90), RAD(-40)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 1/3)
			rloffset = rloffset:Lerp(rlc0 * CFrame.new(-0.06,0.4-0.01*cos(sine/20)/7,-0.5) * ANGLES(RAD(-45+3*cos(sine/15)), RAD(90), RAD(0)) * ANGLES(RAD(2), RAD(0), RAD(0)), 1/3)
			lloffset = lloffset:Lerp(llc0 * CFrame.new(-0.06,0.08-0.03*cos(sine/20)/7,-0.2) *ANGLES(RAD(-6+4*cos(sine/15)), RAD(-90), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1/2)
			gunoffset = gunoffset:Lerp(CF(-0.4,-2,0) * ANGLES(RAD(180),RAD(0),RAD(90)),0.1)
		elseif moving and gay == "depressed SKID XD" then
			toffset = toffset:Lerp(CF(0, 4+.5*math.sin(sine/15), 0) * ANGLES(RAD(-70+-3*math.cos(sine/17)+tilt.Z*2), RAD(0), RAD(0-tilt.X)), 0.3/3)
			hoffset = hoffset:Lerp(hc0 * CF(0,0,-0.1) * ANGLES(RAD(-30+4*cos(sine/0.000000000001)), RAD(0+4*cos(sine/0.000000000001)), RAD(-5*cos(sine/0.000000000001))), 0.3/3)
			raoffset = raoffset:Lerp(CF(1.7, 0.2+0.07*math.sin(sine/16), 0.4) * ANGLES(RAD(-20+5*cos(sine/15)), RAD(-80), RAD(40)) * ANGLES(RAD(20+4*cos(sine/17)), RAD(0), RAD(0)), 0.3/3)
			laoffset = laoffset:Lerp(CF(-0.2, 1.3+0.07*math.sin(sine/16), -0.5) * ANGLES(RAD(160+5*cos(sine/15)), RAD(90), RAD(-40)) * ANGLES(RAD(-90+4*cos(sine/18)), RAD(0), RAD(0)), 1/3)
			rloffset = rloffset:Lerp(rlc0 * CFrame.new(-0.06,0.5-0.01*cos(sine/20)/7,-0.3) * ANGLES(RAD(-30+5*cos(sine/15)), RAD(90), RAD(0)) * ANGLES(RAD(8), RAD(0), RAD(0)), 1/3)
			lloffset = lloffset:Lerp(llc0 * CFrame.new(-0.06,0.1-0.01*cos(sine/20)/7,-0.2) *ANGLES(RAD(20+4*cos(sine/15)), RAD(-90), RAD(10)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1/2)
			gunoffset = gunoffset:Lerp(CF(-0.4,-0.7,0) * ANGLES(RAD(180),RAD(0),RAD(0)),0.1)
		elseif moving and gay == "kickisher" then
			toffset = toffset:Lerp(CF(0, 1.8+.2*math.sin(sine/6), 0) * ANGLES(RAD(-50), RAD(0), RAD(0)), 0.2/3)
			hoffset = hoffset:Lerp(hc0 * CF(0,0,0) * ANGLES(RAD(-30+2*cos(sine/0.000000000001)), RAD(10+2*cos(sine/0.000000000001)), RAD(-3*cos(sine/0.000000000001))), 0.4/3)
			raoffset = raoffset:Lerp(CF(1.6, -0.1+0.07*math.sin(sine/16), 0.4) * ANGLES(RAD(0+5*cos(sine/13)), RAD(-80), RAD(10)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.4/3)
			laoffset = laoffset:Lerp(CF(-0.5, 0.6, -0.5) * ANGLES(RAD(180+4*cos(sine/13)), RAD(90), RAD(-40)) * ANGLES(RAD(-30), RAD(0), RAD(0)), 1/3)
			rloffset = rloffset:Lerp(rlc0 * CFrame.new(-0.02,0.3-0.2*cos(sine/20)/7,-0.5) * ANGLES(RAD(-30+5*cos(sine/15)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1/3)
			lloffset = lloffset:Lerp(llc0 * CFrame.new(-0.02,0-0.2*cos(sine/18)/7,0) *ANGLES(RAD(0+4*cos(sine/15)), RAD(-90), RAD(10)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1/2)
			gunoffset = gunoffset:Lerp(CF(-0.4,-0.7,0) * ANGLES(RAD(180),RAD(0),RAD(0)),0.1)
		elseif moving and gay == "limits who" then
			toffset = toffset:Lerp(CF(0, 4+.5*math.sin(sine/15), 0) * ANGLES(RAD(-50+-5*math.cos(sine/15)), RAD(0), RAD(0)), 0.4/3)
			hoffset = hoffset:Lerp(hc0 * CF(0,0,0) * ANGLES(RAD(40+4*cos(sine/15)), RAD(0), RAD(-10*cos(sine/30))), 0.7/3)
			raoffset = raoffset:Lerp(CF(1.7, -0.2+0.07*math.sin(sine/16), 0.2) * ANGLES(RAD(30+2*cos(sine/15)), RAD(-90), RAD(40)) * ANGLES(RAD(40+4*cos(sine/17)), RAD(0), RAD(0)), 0.7/3)
			laoffset = laoffset:Lerp(CF(-1.7, -0.2+0.07*math.sin(sine/16), 0.2) * ANGLES(RAD(30+2*cos(sine/15)), RAD(90), RAD(-40)) * ANGLES(RAD(40+4*cos(sine/18)), RAD(0), RAD(0)), 0.4/3)
			rloffset = rloffset:Lerp(rlc0 * CFrame.new(-0.06,0.4-0.01*cos(sine/20)/7,-0.6) * ANGLES(RAD(-50+2*cos(sine/15)), RAD(90), RAD(0)) * ANGLES(RAD(2), RAD(0), RAD(0)), 0.4/3)
			lloffset = lloffset:Lerp(llc0 * CFrame.new(-0.04,0.6-0.01*cos(sine/20)/7,0.4) *ANGLES(RAD(-40+1*cos(sine/15)), RAD(-90), RAD(0)) * ANGLES(RAD(-7), RAD(0), RAD(0)), 0.4/2)
			gunoffset = gunoffset:Lerp(CF(0.2,0.3,0.7) * ANGLES(RAD(0),RAD(0),RAD(45)),0.1)
		elseif gay == "hi" then
			toffset = toffset:Lerp(CF(0, 0.50+.2*math.sin(sine/32), 0) * ANGLES(RAD(50), RAD(0), RAD(0)), 0.4/3)
			hoffset = hoffset:Lerp(hc0 * CF(0,0.2,-0.3) * ANGLES(RAD(-40), RAD(10), RAD(0)), 0.4/3)
			raoffset = raoffset:Lerp(CF(1.5, 0.1, -0.5) * ANGLES(RAD(40), RAD(-90), RAD(10-5*math.sin(sine/24))), 0.4/3)
			laoffset = laoffset:Lerp(CF(-0.9, 0.3, -0.5) * ANGLES(RAD(-85), RAD(20), RAD(-80+5*math.sin(sine/24))), 0.4/3)
			rloffset = rloffset:Lerp(rlc0 * ANGLES(RAD(-10), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(8+2.5*math.sin(sine/32)), RAD(0)), 0.4/3)
			lloffset = lloffset:Lerp(llc0 *ANGLES(RAD(20), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(8+2.5*math.sin(sine/32)), RAD(0)), 0.4/3)
			gunoffset = gunoffset:Lerp(CF(-0.4,-1.7,0) * ANGLES(RAD(180),RAD(0),RAD(100)),0.1)
		elseif gay == "bye" then
			toffset = toffset:Lerp(CF(0, 4+.5*math.sin(sine/15), 0) * EULER(RAD(40), RAD(30), RAD(-30+5*cos(sine/30))), 0.4/3)
			hoffset = hoffset:Lerp(hc0 * CF(0,0.2,-0.2) * EULER(RAD(-30), RAD(-35), RAD(-5*cos(sine/30))), 0.7/3)
			raoffset = raoffset:Lerp(CF(1.5, 0.5, -0.3) * EULER(RAD(30), RAD(-90), RAD(-30)) * EULER(RAD(10+4*cos(sine/30)), RAD(0), RAD(0)), 0.7/3)
			laoffset = laoffset:Lerp(CF(-1.5, -0, 0) * EULER(RAD(90), RAD(90), RAD(-40)) * EULER(RAD(35), RAD(0), RAD(0)), 1/3)
			rloffset = rloffset:Lerp(rlc0 * CFrame.new(-0.2,0.5-0.01*cos(sine/20)/7,-0.8) * EULER(RAD(-40+3*cos(sine/15)), RAD(90), RAD(0)) * ANGLES(RAD(22), RAD(0), RAD(0)), 1/3)
			lloffset = lloffset:Lerp(llc0 * CFrame.new(-0.04,0.08-0.01*cos(sine/20)/7,-0) *EULER(RAD(-16-2*cos(sine/15)), RAD(-90), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1/2)
			gunoffset = gunoffset:Lerp(CF(-0.4,-1.7,0) * EULER(RAD(180),RAD(0),RAD(100)),0.1)
		elseif gay == "depressed SKID XD" then
			toffset = toffset:Lerp(CF(0, 4+.5*math.sin(sine/15), 0) * ANGLES(RAD(20+-3*math.cos(sine/17)), RAD(20), RAD(20)), 0.4/3)
			hoffset = hoffset:Lerp(hc0 * CF(0,0.2,-0.1) * ANGLES(RAD(-30+4*cos(sine/0.000000000001)), RAD(20+4*cos(sine/0.000000000001)), RAD(-5*cos(sine/0.000000000001))), 0.4/3)
			raoffset = raoffset:Lerp(CF(1.7, 0.2+0.07*math.sin(sine/16), 0.4) * ANGLES(RAD(-50+5*cos(sine/15)), RAD(-80), RAD(40)) * ANGLES(RAD(50+4*cos(sine/17)), RAD(0), RAD(0)), 0.4/3)
			laoffset = laoffset:Lerp(CF(-0.2, 1.3+0.07*math.sin(sine/16), -0.7) * ANGLES(RAD(180+5*cos(sine/15)), RAD(90), RAD(-40)) * ANGLES(RAD(-95+4*cos(sine/18)), RAD(0), RAD(0)), 1/3)
			rloffset = rloffset:Lerp(rlc0 * CFrame.new(-0.06,0.5-0.01*cos(sine/20)/7,-0.5) * ANGLES(RAD(-30+5*cos(sine/15)), RAD(90), RAD(0)) * ANGLES(RAD(8), RAD(0), RAD(0)), 1/3)
			lloffset = lloffset:Lerp(llc0 * CFrame.new(-0.4,0.1-0.01*cos(sine/20)/7,-0.7) *ANGLES(RAD(50+4*cos(sine/15)), RAD(-90), RAD(10)) * ANGLES(RAD(-23), RAD(0), RAD(0)), 1/2)
			gunoffset = gunoffset:Lerp(CF(-0.4,-0.7,0) * ANGLES(RAD(180),RAD(0),RAD(0)),0.1)
		elseif gay == "kickisher" then
			toffset = toffset:Lerp(CF(0, 1+.2*math.sin(sine/15), 0) * ANGLES(RAD(0), RAD(20), RAD(0)), 0.4/3)
			hoffset = hoffset:Lerp(hc0 * CF(0,0,0) * ANGLES(RAD(-30+2*cos(sine/0.000000000001)), RAD(-15+2*cos(sine/0.000000000001)), RAD(-5*cos(sine/0.000000000001))), 0.4/3)
			raoffset = raoffset:Lerp(CF(1.6, -0.1+0.07*math.sin(sine/16), 0.4) * ANGLES(RAD(-20+5*cos(sine/15)), RAD(-80), RAD(10)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.4/3)
			laoffset = laoffset:Lerp(CF(-0.4, 0.6, -0.5) * ANGLES(RAD(180+3*cos(sine/15)), RAD(90), RAD(-40)) * ANGLES(RAD(-30), RAD(0), RAD(0)), 1/3)
			rloffset = rloffset:Lerp(rlc0 * CFrame.new(-0.02,0.5-0.2*cos(sine/20)/7,-0.5) * ANGLES(RAD(-10+5*cos(sine/15)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1/3)
			lloffset = lloffset:Lerp(llc0 * CFrame.new(-0.02,0.1-0.2*cos(sine/20)/7,-0.6) *ANGLES(RAD(50+4*cos(sine/15)), RAD(-90), RAD(10)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1/2)
			gunoffset = gunoffset:Lerp(CF(-0.4,-0.7,0) * ANGLES(RAD(180),RAD(0),RAD(0)),0.1)
		elseif gay == "limits who" then
			toffset = toffset:Lerp(CF(0, 4+.5*math.sin(sine/15), 0) * ANGLES(RAD(20+-3*math.cos(sine/17)), RAD(-40), RAD(30)), 0.4/3)
			hoffset = hoffset:Lerp(hc0 * CF(0,0.2,-0.1) * ANGLES(RAD(-30+4*cos(sine/15)), RAD(35), RAD(-10*cos(sine/30))), 0.4/3)
			raoffset = raoffset:Lerp(CF(1.7, -0.2+0.07*math.sin(sine/16), 0.2) * ANGLES(RAD(10+5*cos(sine/15)), RAD(-90), RAD(40)) * ANGLES(RAD(20+4*cos(sine/17)), RAD(0), RAD(0)), 0.4/3)
			laoffset = laoffset:Lerp(CF(-1.2, 0.7+0.07*math.sin(sine/16), -0.5) * ANGLES(RAD(30+5*cos(sine/15)), RAD(90), RAD(-40)) * ANGLES(RAD(-150+4*cos(sine/18)), RAD(0), RAD(0)), 0.4/3)
			rloffset = rloffset:Lerp(rlc0 * CFrame.new(-0.06,0.5-0.01*cos(sine/20)/7,-0.5) * ANGLES(RAD(-30+5*cos(sine/15)), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.4/3)
			lloffset = lloffset:Lerp(llc0 * CFrame.new(0,0,0.8) *ANGLES(RAD(-40+4*cos(sine/15)), RAD(-90), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.4/2)
			gunoffset = gunoffset:Lerp(CF(0.2,0.3,0.7) * ANGLES(RAD(0),RAD(0),RAD(45)),0.1)
		elseif gay == "angry" then
			toffset = toffset:Lerp(CF(0, -1+.05*math.sin(sine/32), 0) * ANGLES(RAD(-10), RAD(0), RAD(20)), 0.15 / 3.5)
			hoffset = hoffset:Lerp(hc0 * CF(0,0.2,-0.3) * ANGLES(RAD(-40), RAD(10), RAD(20)), 0.15 / 3.5)
			raoffset = raoffset:Lerp(CF(1.8, -0.1, 0.4) * ANGLES(RAD(10), RAD(-60+3*math.sin(sine/30)), RAD(100)), 0.15 / 3.5)
			laoffset = laoffset:Lerp(CF(-0.8, 0.7, -0.8) * ANGLES(RAD(140), RAD(40-3*math.sin(sine/30)), RAD(-140)), 0.15 / 3.5)
			rloffset = rloffset:Lerp(rlc0 * cn(-0.1,0.8-.05*math.sin(sine/32),-0.8) * ANGLES(RAD(15), RAD(120), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / 3.5)
			lloffset = lloffset:Lerp(llc0*cn(-0.2,0.4-.05*math.sin(sine/32),0.4) *ANGLES(RAD(-50), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / 3.5)
			gunoffset = gunoffset:Lerp(cn(0.2,-0.7,0)*euler(0,rad(-180),rad(-180.5)),0.1)
		elseif gay == "ohfuck" then
			toffset = toffset:Lerp(CF(0, 3+.7*math.sin(sine/32), 0) * ANGLES(RAD(75 + 25 * sin(sine/26)), RAD(0), RAD(0)), 0.15 / 2)
			hoffset = hoffset:Lerp(hc0 * CF(0,0,-0.2) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.15 / 2)
			raoffset = raoffset:Lerp(CF(1.5, -0.3+0.02*sin(sine/28), 0.5) * ANGLES(RAD(-70), RAD(-90), RAD(-10-10*math.sin(sine/28))), 0.15 / 2)
			laoffset = laoffset:Lerp(CF(-0.7, 0.7, 0.3) * ANGLES(RAD(20), RAD(20), RAD(-40+5*math.sin(sine/24))), 0.15 / 1)
			rloffset = rloffset:Lerp(rlc0 * cn(0,0.7,-0.3) * ANGLES(RAD(-40 + 5 * sin(sine/21)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / 1)
			lloffset = lloffset:Lerp(llc0*cn(0,0.4,-0.3) *ANGLES(RAD(10 + 5 * sin(sine/23)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / 1)
			gunoffset = gunoffset:Lerp(cn(0.2,-0.5,0)*euler(0,rad(180),rad(-180.5)),0.1)
		else
			laoffset = laoffset:Lerp(lac0*cn(0.262001038-sin(sine/30)/10,-0.0739998817,-0.13999939)*euler(rad(7.44),0,rad(7.56-sin(sine/30)*7)),animspeed)
			raoffset = raoffset:Lerp(rac0*cn(-0.125,-0.125,0.217002869-sin(sine/30)/10)*euler(rad(-7.5+sin(sine/30)*7),rad(-30),0),animspeed)
			lloffset = lloffset:Lerp(llc0*euler(0,rad(15),0),animspeed)
			rloffset = rloffset:Lerp(rlc0*cn(0,0.0160000324,0.124000549)*euler(rad(-7.5),0,0),animspeed)
			toffset = toffset:Lerp(euler(rad(cos(sine/30)*2.5-2),rad(-15),0),animspeed)
			hoffset = hoffset:Lerp(cn(0,1,0)*euler(rad(cos(sine/30)*5),rad(15),rad(cos(sine/60)*10))*cn(0,0.5,0),animspeed)
			gunoffset = gunoffset:Lerp(cn(-0.6,-0.898999929+cos(sine/30)/5,0.95400238)*euler(rad(0),rad(60),rad(-182.5-cos(sine/30)*10)),animspeed)
		end
	end
	t.CFrame = r.CFrame*toffset
	h.CFrame,la.CFrame,ra.CFrame,ll.CFrame,rl.CFrame = t.CFrame*hoffset,t.CFrame*laoffset,t.CFrame*raoffset,t.CFrame*lloffset,t.CFrame*rloffset
	gun.CFrame = ra.CFrame*gunoffset
	local speen = 0
	speen = speen + 0.04
	if speen == 360 then
		speen = 0
	end
	if gay == "bye" then
		WACKYEFFECT({Time = 25,
			EffectType = "Sphere",
			Size = VT(0,0,0),
			Size2 = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25),
			Transparency = 0.3,
			Transparency2 = 1,
			CFrame = RootPart.CFrame*CF(0,-3,0),
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 0, 
			RotationZ = 0,
			Material = "Neon",
			Color = Color3.fromRGB(0+55*sick.PlaybackLoudness/100,0,0+55*sick.PlaybackLoudness/80),
			SoundID = nil,
			SoundPitch = 1,
			SoundVolume = 0})
		WACKYEFFECT({Time = 5, EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(2,2,2), Transparency = 0.1, Transparency2 = 1, CFrame = t.CFrame*laoffset*CFrame.new(0,-1.6,0)*CFrame.fromEulerAnglesXYZ(RAD(999*math.cos(sine/50)),RAD(0),RAD(999*math.cos(sine/50))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+55*sick.PlaybackLoudness/100,0,0+55*sick.PlaybackLoudness/80), SoundID = nil, SoundPitch = 1, SoundVolume = 0})		
		WACKYEFFECT({Time = 25, EffectType = "Block", Size = VT(0,0,0), Size2 = VT(2,2,2), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(8*math.cos(sine/3),-3,8*math.sin(sine/3)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+55*sick.PlaybackLoudness/100,0,0+55*sick.PlaybackLoudness/80), SoundID = nil, SoundPitch = 1, SoundVolume = 0,oriC = CFrame.new(0,0,0),posC = CFrame.new(0,0.5,0)})		
		hicolor = Color3.fromRGB(0+135*sick.PlaybackLoudness/100,0,0+135*sick.PlaybackLoudness/80)		
	elseif gay == "depressed SKID XD" then		
		WACKYEFFECT({Time = 1, EffectType = "Block", Size = VT(7+sick.PlaybackLoudness/55,0.55,7+sick.PlaybackLoudness/55), Size2 = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness),RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0+178*sick.PlaybackLoudness/100,0+178*sick.PlaybackLoudness/100), SoundID = nil, SoundPitch = 0, SoundVolume = 0})
		WACKYEFFECT({Time = 1, EffectType = "Block", Size = VT(10+sick.PlaybackLoudness/25,0.44,10+sick.PlaybackLoudness/25), Size2 = VT(10+sick.PlaybackLoudness/55,0.44,10+sick.PlaybackLoudness/55), Transparency = 0.6, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0)*CFrame.Angles(RAD(0),RAD(-sick.PlaybackLoudness/2),RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0,0,0), SoundID = nil, SoundPitch = 0, SoundVolume = 0})
	elseif gay == "limits who" then		
		WACKYEFFECT({Time = 47, EffectType = "Sphere", Size = VT(1.081, 0.267, 0.211), Size2 = VT(1.081, 0.267, 0.211), Transparency = 0.4, Transparency2 = 0.6, CFrame = RootPart.CFrame*CFrame.new(10*math.sin(sine/45),math.random(-10,10),10*math.cos(sine/45))*CFrame.Angles(math.rad(speen),math.rad(180),math.rad(speen)), MoveToPos = nil, RotationX = 1, RotationY = 1, RotationZ = 1, Material = "Neon", Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0+178*sick.PlaybackLoudness/100,0+178*sick.PlaybackLoudness/100), SoundID = nil, SoundPitch = 0, SoundVolume = 0})
		WACKYEFFECT({Time = 47, EffectType = "Sphere", Size = VT(0.581, 0.067, 0.011), Size2 = VT(1.081, 0.267, 0.211), Transparency = 0.7, Transparency2 = 0.6, CFrame = RootPart.CFrame*CFrame.new(-10*math.sin(sine/45),math.random(-10,10),-10*math.cos(sine/45))*CFrame.Angles(math.rad(speen),math.rad(180),math.rad(speen)), MoveToPos = nil, RotationX = 1, RotationY = 1, RotationZ = 1, Material = "Neon", Color = Color3.fromRGB(255,0,0), SoundID = nil, SoundPitch = 0, SoundVolume = 0})
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0.581, 0.067, 0.011), Size2 = VT(1.081, 0.267, 0.211), Transparency = 0.7, Transparency2 = 0.6, CFrame = RootPart.CFrame*CFrame.new(-5*math.sin(sine/5),math.random(-10,10),-5*math.cos(sine/5))*CFrame.Angles(math.rad(speen),math.rad(180),math.rad(speen)), MoveToPos = nil, RotationX = 1, RotationY = 1, RotationZ = 1, Material = "Neon", Color = Color3.fromRGB(0,175,255), SoundID = nil, SoundPitch = 0, SoundVolume = 0})

	end
	if gay == "limits who" then
		gun.CFrame = t.CFrame*gunoffset
		gunm.VertexColor = Vector3.new(0+bgm.PlaybackLoudness/500,0,0)
		gunlight.Color = Color3.new(0+bgm.PlaybackLoudness/500,0,0)
		cam.FieldOfView = 70 + bgm.PlaybackLoudness/55
		hicolor = Color3.new(0+bgm.PlaybackLoudness/500,0,0)
	else
		gun.CFrame = ra.CFrame*gunoffset
		gunm.VertexColor = Vector3.new(255,255,255)
		gunlight.Color = Color3.new(1,1,1)
		cam.FieldOfView = 70
	end
	c.CFrame = r.CFrame * cn(0,1.5,0)	
	if sine/20 == math.floor(sine/20) then
		debris:AddItem(r,0)
		debris:AddItem(h,0) debris:AddItem(t,0) debris:AddItem(la,0) debris:AddItem(ra,0) debris:AddItem(ll,0) debris:AddItem(rl,0)
	end
	bgm.Volume = clamp(25/(cam.CFrame.p-r.Position).Magnitude,0,10)
end)

workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
	cam =workspace.CurrentCamera
end)

if event ~= nil then
	event:FireServer("ready")
end
