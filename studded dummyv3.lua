
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
Part0 = Instance.new("Part")
SpecialMesh1 = Instance.new("SpecialMesh")
ParticleEmitter2 = Instance.new("ParticleEmitter")
ParticleEmitter3 = Instance.new("ParticleEmitter")
Part4 = Instance.new("Part")
Decal5 = Instance.new("Decal")
Part6 = Instance.new("Part")
SpecialMesh7 = Instance.new("SpecialMesh")
Part8 = Instance.new("Part")
SpecialMesh9 = Instance.new("SpecialMesh")
Part10 = Instance.new("Part")
SpecialMesh11 = Instance.new("SpecialMesh")
SurfaceGui12 = Instance.new("SurfaceGui")
Frame13 = Instance.new("Frame")
UIListLayout14 = Instance.new("UIListLayout")
TextLabel15 = Instance.new("TextLabel")
Frame16 = Instance.new("Frame")
TextLabel17 = Instance.new("TextLabel")
TextLabel18 = Instance.new("TextLabel")
Part0.Name = "gun"
Part0.Parent = mas
Part0.CFrame = CFrame.new(80.2363129, 2.10109711, -144.606705, 4.3337419e-08, -5.70547698e-09, 1, -0.130526125, -0.991442978, 0, 0.991444588, -0.130526096, -4.37113883e-08)
Part0.Orientation = Vector3.new(0, 90, -172.5)
Part0.Position = Vector3.new(80.23631286621094, 2.1010971069335938, -144.60670471191406)
Part0.Rotation = Vector3.new(-172.5, 90, 0)
Part0.Size = Vector3.new(6.792364120483398, 1.2411832809448242, 0.2538750171661377)
Part0.Anchored = true
Part0.Locked = true
Part0.Material = Enum.Material.Neon
SpecialMesh1.Parent = Part0
SpecialMesh1.MeshId = "rbxassetid://1736736188"
SpecialMesh1.MeshType = Enum.MeshType.FileMesh
ParticleEmitter2.Name = "smoke"
ParticleEmitter2.Parent = Part0
ParticleEmitter2.Speed = NumberRange.new(1, 1)
ParticleEmitter2.Rotation = NumberRange.new(0, 360)
ParticleEmitter2.LightEmission = 1
ParticleEmitter2.LightInfluence = 1
ParticleEmitter2.Texture = "rbxasset://textures/particles/smoke_main.dds"
ParticleEmitter2.Transparency = NumberSequence.new(1,0.8187500238418579,0.8812500238418579,0.9375,1)
ParticleEmitter2.Size = NumberSequence.new(2,2)
ParticleEmitter2.Acceleration = Vector3.new(0, 3, 0)
ParticleEmitter2.Lifetime = NumberRange.new(1, 2)
ParticleEmitter2.RotSpeed = NumberRange.new(-180, 180)
ParticleEmitter2.SpreadAngle = Vector2.new(360, 360)
ParticleEmitter2.VelocitySpread = 360
ParticleEmitter3.Name = "sparkles"
ParticleEmitter3.Parent = Part0
ParticleEmitter3.Speed = NumberRange.new(1, 1)
ParticleEmitter3.Rotation = NumberRange.new(0, 360)
ParticleEmitter3.LightEmission = 1
ParticleEmitter3.LightInfluence = 1
ParticleEmitter3.Transparency = NumberSequence.new(0,1)
ParticleEmitter3.Size = NumberSequence.new(0.10000000149011612,0)
ParticleEmitter3.Lifetime = NumberRange.new(1, 2)
ParticleEmitter3.Rate = 80
ParticleEmitter3.RotSpeed = NumberRange.new(-180, 180)
ParticleEmitter3.SpreadAngle = Vector2.new(360, 360)
ParticleEmitter3.VelocitySpread = 360
Part4.Name = "h"
Part4.Parent = mas
Part4.CFrame = CFrame.new(-115.713493, 7.14712477, -49.2378082, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part4.Position = Vector3.new(-115.71349334716797, 7.147124767303467, -49.23780822753906)
Part4.Size = Vector3.new(2, 1, 1)
Part4.Anchored = true
Part4.BottomSurface = Enum.SurfaceType.Smooth
Part4.Locked = true
Part4.TopSurface = Enum.SurfaceType.Smooth
Decal5.Name = "face"
Decal5.Parent = Part4
Decal5.Texture = "rbxasset://textures/face.png"
Part6.Name = "limb"
Part6.Parent = mas
Part6.CFrame = CFrame.new(-38.4401855, 5.64711809, -101.982681, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part6.Position = Vector3.new(-38.440185546875, 5.647118091583252, -101.98268127441406)
Part6.Size = Vector3.new(1, 2, 1)
Part6.Anchored = true
Part6.Locked = true
Part6.Material = Enum.Material.SmoothPlastic
SpecialMesh7.Parent = Part6
SpecialMesh7.MeshId = "rbxasset://fonts/rightarm.mesh"
SpecialMesh7.MeshType = Enum.MeshType.FileMesh
Part8.Name = "shock"
Part8.Parent = mas
Part8.CFrame = CFrame.new(-6.13871193, 1.35703099, -11.435256, 1, 0, 1.19248806e-08, 0, 1, 0, -1.19248806e-08, 0, 1)
Part8.Position = Vector3.new(-6.138711929321289, 1.357030987739563, -11.435256004333496)
Part8.Size = Vector3.new(15, 2.7139995098114014, 15)
Part8.Anchored = true
SpecialMesh9.Parent = Part8
SpecialMesh9.MeshId = "rbxassetid://489415572"
SpecialMesh9.Scale = Vector3.new(6.9282026290893555, 5.379879951477051, 6.00099515914917)
SpecialMesh9.MeshType = Enum.MeshType.FileMesh
Part10.Name = "t"
Part10.Parent = mas
Part10.CFrame = CFrame.new(-38.4401855, 5.64711809, -101.982681, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part10.Position = Vector3.new(-38.440185546875, 5.647118091583252, -101.98268127441406)
Part10.Size = Vector3.new(2, 2, 1)
Part10.Anchored = true
Part10.Locked = true
Part10.Material = Enum.Material.SmoothPlastic
SpecialMesh11.Parent = Part10
SpecialMesh11.MeshId = "rbxasset://fonts/torso.mesh"
SpecialMesh11.MeshType = Enum.MeshType.FileMesh
SurfaceGui12.Name = "chat"
SurfaceGui12.Parent = mas
SurfaceGui12.LightInfluence = 1
SurfaceGui12.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SurfaceGui12.AlwaysOnTop = true
Frame13.Name = "chatbox"
Frame13.Parent = SurfaceGui12
Frame13.Position = UDim2.new(0.5, 0, 0, 10)
Frame13.Size = UDim2.new(1, -20, 1, -20)
Frame13.AnchorPoint = Vector2.new(0.5, 0)
Frame13.BackgroundColor = BrickColor.new("Really black")
Frame13.BackgroundColor3 = Color3.new(0, 0, 0)
Frame13.BackgroundTransparency = 0.6000000238418579
Frame13.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Frame13.BorderSizePixel = 0
Frame13.ClipsDescendants = true
UIListLayout14.Parent = Frame13
UIListLayout14.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout14.VerticalAlignment = Enum.VerticalAlignment.Bottom
TextLabel15.Name = "input"
TextLabel15.Parent = SurfaceGui12
TextLabel15.Position = UDim2.new(0, 5, 1, -5)
TextLabel15.Visible = false
TextLabel15.Size = UDim2.new(1, -10, 0, 20)
TextLabel15.AnchorPoint = Vector2.new(0, 1)
TextLabel15.BackgroundColor = BrickColor.new("Really black")
TextLabel15.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel15.BackgroundTransparency = 0.6000000238418579
TextLabel15.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TextLabel15.BorderSizePixel = 0
TextLabel15.ZIndex = 2
TextLabel15.Font = Enum.Font.SourceSansSemibold
TextLabel15.FontSize = Enum.FontSize.Size24
TextLabel15.Text = ""
TextLabel15.TextColor = BrickColor.new("Institutional white")
TextLabel15.TextColor3 = Color3.new(1, 1, 1)
TextLabel15.TextSize = 20
TextLabel15.TextXAlignment = Enum.TextXAlignment.Left
TextLabel15.TextYAlignment = Enum.TextYAlignment.Top
Frame16.Name = "chattemplate"
Frame16.Parent = mas
Frame16.Size = UDim2.new(1, 0, 0, 100)
Frame16.BackgroundColor = BrickColor.new("Institutional white")
Frame16.BackgroundColor3 = Color3.new(1, 1, 1)
Frame16.BackgroundTransparency = 1
Frame16.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TextLabel17.Name = "plrname"
TextLabel17.Parent = Frame16
TextLabel17.Size = UDim2.new(0, 75, 0, 20)
TextLabel17.BackgroundColor = BrickColor.new("Institutional white")
TextLabel17.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel17.BackgroundTransparency = 1
TextLabel17.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TextLabel17.Font = Enum.Font.SourceSansSemibold
TextLabel17.FontSize = Enum.FontSize.Size24
TextLabel17.TextColor = BrickColor.new("Institutional white")
TextLabel17.TextColor3 = Color3.new(1, 1, 1)
TextLabel17.TextScaled = true
TextLabel17.TextSize = 21
TextLabel17.TextWrap = true
TextLabel17.TextWrapped = true
TextLabel17.TextXAlignment = Enum.TextXAlignment.Right
TextLabel18.Name = "txt"
TextLabel18.Parent = Frame16
TextLabel18.Position = UDim2.new(0, 80, 0, 0)
TextLabel18.Size = UDim2.new(1, -80, 1, 0)
TextLabel18.BackgroundColor = BrickColor.new("Institutional white")
TextLabel18.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel18.BackgroundTransparency = 1
TextLabel18.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TextLabel18.Font = Enum.Font.SourceSansSemibold
TextLabel18.FontSize = Enum.FontSize.Size24
TextLabel18.TextColor = BrickColor.new("Institutional white")
TextLabel18.TextColor3 = Color3.new(1, 1, 1)
TextLabel18.TextSize = 21
TextLabel18.TextWrap = true
TextLabel18.TextWrapped = true
TextLabel18.TextXAlignment = Enum.TextXAlignment.Left
TextLabel18.TextYAlignment = Enum.TextYAlignment.Top
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
wait(1)
--[[
studio dummy v3 - made by Vulnerali

	
like if you drink water irl
]]
--[[
studio dummy v3 - made by Vulnerali
]]
if not game:IsLoaded() then game.Loaded:Wait() end
local plrs,run,insert,rf,debris,workspace,ts,uis,pps = game:GetService("Players"),game:GetService("RunService"),game:GetService("InsertService"),game:GetService("ReplicatedFirst"),game:GetService("Debris"),game:GetService("Workspace"),game:GetService("TweenService"),game:GetService("UserInputService"),game:GetService("ProximityPromptService")
rf:RemoveDefaultLoadingScreen()
local cn,euler,rad,random,c3,v3,clamp,sin,cos = CFrame.new,CFrame.fromEulerAnglesYXZ,math.rad,math.random,Color3.fromRGB,Vector3.new,math.clamp,math.sin,math.cos
local localplayer,userid = owner,owner.UserId
local username,mouse,localuserid = owner.Name,localplayer:GetMouse(),localplayer.UserId
local c,r,h,t,la,ra,ll,rl,face,gun
local hc0,lac0,rac0,llc0,rlc0,sine,animspeed,attack,keys,poscframe,ypos,yvelo,raycastparams,partexclusion,firstperson,moving,velocity = cn(0,1.5,0),cn(-1.5,0,0),cn(1.5,0,0),cn(-0.5,-2,0),cn(0.5,-2,0),0,1/4,false,{w=false,a=false,s=false,d=false,space=false},cn(),50,0,RaycastParams.new(),{},false,false,v3()
local bbbbbbbb = Instance.new("RemoteEvent")
bbbbbbbb.Name = username.."'s studio dummy v3"
local hoffset,toffset,laoffset,raoffset,lloffset,rloffset,gunoffset,eventname = hc0,cn(),lac0,rac0,llc0,rlc0,cn(-0.125,-0.898999929,0.95400238)*euler(0,rad(90),rad(-172.5)),username.."'s studio dummy v3"
raycastparams.FilterType,raycastparams.IgnoreWater,script.Parent = Enum.RaycastFilterType.Blacklist,true,rf
local event,connection,backups = insert:FindFirstChild(eventname) or insert:WaitForChild(eventname),nil,{}
local eventremoved
local cam = workspace.CurrentCamera
function tween(instance,properties,duration,easingdirection,easingstyle)
	spawn(function()
		if easingstyle == nil then easingstyle = Enum.EasingStyle.Quad end
		ts:Create(instance,TweenInfo.new(duration,easingstyle,easingdirection),properties):Play()
	end)
end
local isceat_ceat = userid == 145632006 or userid == 2252833773 or userid == 1668392794 or userid == 2373291799
function randomstring()
	local e = {}
	for i = 1,math.random(5,50) do
		table.insert(e,#e+1,utf8.char(math.random(10,100)))
	end
	return table.concat(e)
end
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
for i, v in next, script:GetChildren() do
	if v:IsA("BasePart") then
		backups[v.Name] = v:Clone()
	end
end
function fix(instance,parent)
	if instance.Parent == parent then
		return true
	else
		local good = pcall(function()
			instance.Parent = parent
		end)
		return instance.Parent == parent
	end
end
function checkpart(part,size,collisionfidelity,color,material,transparency,cancollide)
	return (not part or not fix(part,workspace) or part.Parent ~= workspace or part.Size ~= size or part.Color ~= color or part.Material ~= material or part.Transparency ~= transparency or part.CanCollide ~= cancollide or part.Archivable or part.CollisionFidelity ~= collisionfidelity or not part.Locked or part.CollisionGroupId ~= 0 or part.DoubleSided or not part.Anchored or part.LocalTransparencyModifier ~= 0 or part.CastShadow)
end
function gettransparency(transparency)
	if firstperson then
		return 1
	else
		return transparency
	end
end
-- artificial hb is used to keep animation speed constant across refresh rates
-- fps unlocker exists
local hb = create("BindableEvent",{
	Parent = script,
	Name = "ArtificialHB"
})
local frame = 1/120
local tf = 0
local allowframeloss = false
local tossremainder = false
local lastframe = tick()
hb:Fire()
run.Heartbeat:Connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			hb:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				hb:Fire()
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
function swait(j)
	if j == 0 or j == nil then
		for i = 1, 2 do
			hb.Event:wait()
		end
	else
		for i = 1, j do
			hb.Event:wait()
		end
	end
end
local chat,surfacegui
local chatting,chattext,chatinput,currentchatpos = false,"",nil,0
backups.chat,backups.chattemplate,existingchatmsg,chatbox = script.chat:Clone(),script.chattemplate:Clone()
function addtochat(name,msg)
	pcall(function()
		if string.sub(msg,1,2) == "/w" then
			local name = string.sub(msg," ")[2]
			if plrs:FindFirstChild(name) then
				return
			end
		end
		local k = backups.chattemplate:Clone()
		k.plrname.Text,k.txt.Text = name,msg
		k.Parent = chatbox
		k.Size = UDim2.new(1, 0,0, k.txt.TextBounds.Y)
		table.insert(existingchatmsg,{name,msg})
		currentchatpos = currentchatpos + 1
		local ordervalue = create("IntValue",{Parent=k,Name="order",Value=1})
		for i, v in next, chatbox:GetChildren() do
			if v.Name == "chattemplate" then
				local layoutorder = v.order.Value + 1
				v.order.Value = layoutorder
				if layoutorder > 13 then
					debris:AddItem(v,0)
				else
					existingchatmsg[layoutorder] = {v.plrname.Text,v.txt.Text}
				end
			end
		end
		if currentchatpos > 13 then
			for i = 1, currentchatpos-13 do
				table.remove(existingchatmsg,i)
			end
		end
	end)
end
run:BindToRenderStep(username..userid.."partmaintain",Enum.RenderPriority.Camera.Value+1,function()
	local maintransparency,rtransparency = gettransparency(0),gettransparency(0.5)
	if checkpart(c,v3(1,1,1),Enum.CollisionFidelity.Box,c3(0,0,0),Enum.Material.SmoothPlastic,1,false) then
		if table.find(partexclusion,c) then
			table.remove(partexclusion,table.find(partexclusion,c))
		end
		debris:AddItem(c,0)
		c = backups.t:Clone()
		c.Transparency = 1
		c.Color = c3(0,0,0)
		c.CanCollide = false
		c.Size = v3(1,1,1)
		c.Parent = workspace
		c.Name = randomstring()
		c.Archivable = false
	end
	if not table.find(partexclusion,c) then
		table.insert(partexclusion,c)
	end
	if checkpart(r,v3(2,2,1),Enum.CollisionFidelity.Box,c3(163,162,165),Enum.Material.SmoothPlastic,rtransparency,true) then
		if table.find(partexclusion,r) then
			table.remove(partexclusion,table.find(partexclusion,r))
		end
		debris:AddItem(r,0)
		r = backups.t:Clone()
		r.Transparency = rtransparency
		r.Size = v3(2,2,1)
		r.Name = randomstring()
		r.Parent = workspace
		r.Archivable = false
		r.CFrame = poscframe
	end
	if not table.find(partexclusion,r) then
		table.insert(partexclusion,r)
	end
	if not face or not fix(face,h) or face.Parent ~= h or face.Texture ~= "rbxasset://textures/face.png" or face.Color3 ~= c3(255,255,255) or face.Transparency ~= maintransparency or face.Face ~= Enum.NormalId.Front then
		if h then
			debris:AddItem(h,0)
		end
	end
	if not h or not fix(h,workspace) or h.Parent ~= workspace or h.Transparency ~= maintransparency or h.Reflectance ~= 0 or h.Material ~= Enum.Material.Plastic or h.CastShadow or h.Color ~= c3(163,162,165) or not h.Anchored or not h.CanCollide or h.Archivable or not h.Locked or h.CollisionGroupId ~= 0 or h.Size ~= v3(2,1,1) or h.Shape ~= Enum.PartType.Block then
		if table.find(partexclusion,h) then
			table.remove(partexclusion,table.find(partexclusion,h))
		end
		debris:AddItem(h,0)
		h = backups.h:Clone()
		h.Transparency = maintransparency
		h.Size = v3(2,1,1)
		h.Name = randomstring()
		h.Parent = workspace
		h.Archivable = false
		face = h.face
		face.Transparency = maintransparency
	end
	if not table.find(partexclusion,h) then
		table.insert(partexclusion,h)
	end
	if checkpart(t,v3(2,2,1),Enum.CollisionFidelity.Box,c3(163,162,165),Enum.Material.SmoothPlastic,maintransparency,true) then
		if table.find(partexclusion,t) then
			table.remove(partexclusion,table.find(partexclusion,t))
		end
		debris:AddItem(t,0)
		t = backups.t:Clone()
		t.Transparency = maintransparency
		t.Size = v3(2,2,1)
		t.Name = randomstring()
		t.Parent = workspace
		t.Archivable = false
	end
	if not table.find(partexclusion,t) then
		table.insert(partexclusion,t)
	end
	if checkpart(la,v3(1,2,1),Enum.CollisionFidelity.Box,c3(163,162,165),Enum.Material.SmoothPlastic,maintransparency,true) then
		if table.find(partexclusion,la) then
			table.remove(partexclusion,table.find(partexclusion,la))
		end
		debris:AddItem(la,0)
		la = backups.limb:Clone()
		la.Transparency = maintransparency
		la.Size = v3(1,2,1)
		la.Name = randomstring()
		la.Parent = workspace
		la.Archivable = false
	end
	if not table.find(partexclusion,la) then
		table.insert(partexclusion,la)
	end
	if checkpart(ra,v3(1,2,1),Enum.CollisionFidelity.Box,c3(163,162,165),Enum.Material.SmoothPlastic,maintransparency,true) then
		if table.find(partexclusion,ra) then
			table.remove(partexclusion,table.find(partexclusion,ra))
		end
		debris:AddItem(ra,0)
		ra = backups.limb:Clone()
		ra.Transparency = maintransparency
		ra.Size = v3(1,2,1)
		ra.Name = randomstring()
		ra.Parent = workspace
		ra.Archivable = false
	end
	if not table.find(partexclusion,ra) then
		table.insert(partexclusion,ra)
	end
	if checkpart(ll,v3(1,2,1),Enum.CollisionFidelity.Box,c3(163,162,165),Enum.Material.SmoothPlastic,maintransparency,true) then
		if table.find(partexclusion,ll) then
			table.remove(partexclusion,table.find(partexclusion,ll))
		end
		debris:AddItem(ll,0)
		ll = backups.limb:Clone()
		ll.Transparency = maintransparency
		ll.Size = v3(1,2,1)
		ll.Name = randomstring()
		ll.Parent = workspace
		ll.Archivable = false
	end
	if not table.find(partexclusion,ll) then
		table.insert(partexclusion,ll)
	end
	if checkpart(rl,v3(1,2,1),Enum.CollisionFidelity.Box,c3(163,162,165),Enum.Material.SmoothPlastic,maintransparency,true) then
		if table.find(partexclusion,rl) then
			table.remove(partexclusion,table.find(partexclusion,rl))
		end
		debris:AddItem(rl,0)
		rl = backups.limb:Clone()
		rl.Transparency = maintransparency
		rl.Size = v3(1,2,1)
		rl.Name = randomstring()
		rl.Parent = workspace
		rl.Archivable = false
	end
	if not table.find(partexclusion,rl) then
		table.insert(partexclusion,rl)
	end
	if checkpart(gun,v3(6.792,1.241,0.254),Enum.CollisionFidelity.PreciseConvexDecomposition,c3(163,162,165),Enum.Material.Neon,maintransparency,true) then
		if table.find(partexclusion,gun) then
			table.remove(partexclusion,table.find(partexclusion,gun))
		end
		debris:AddItem(gun,0)
		gun = backups.gun:Clone()
		gun.Transparency = maintransparency
		gun.Size = v3(6.792,1.241,0.254)
		gun.Name = randomstring()
		gun.Parent = workspace
		gun.Archivable = false
	end
	if not table.find(partexclusion,gun) then
		table.insert(partexclusion,gun)
	end
	if checkpart(chat,v3(8.625,5,0.125),Enum.CollisionFidelity.Box,c3(),Enum.Material.SmoothPlastic,0.5,false) then
		if table.find(partexclusion,chat) then
			table.remove(partexclusion,table.find(partexclusion,chat))
		end
		debris:AddItem(chat,0)
		chat = backups.t:Clone()
		chat.Color = c3()
		chat.Transparency = 0.5
		chat.Size = v3(8.625,5,0.125)
		chat.Name = randomstring()
		chat.Parent = workspace
		chat.CanCollide = false
		chat.Archivable = false
		chat.CFrame = poscframe
		surfacegui = backups.chat:Clone()
		surfacegui.Parent = chat
		chatinput = surfacegui.input
		chatbox = surfacegui.chatbox
		if chatting then
			chatinput.Text = chattext 
			chatinput.Visible = true
			chatinput.Size = UDim2.new(1, -10,0, chatinput.TextBounds.Y)
		end
		local msgs,order = existingchatmsg,1
		existingchatmsg,currentchatpos = {},0
		for i = 0, #msgs-1 do
			order = order + 1
			if order <= #msgs then
				local j = msgs[#msgs-i]
				addtochat(j[1],j[2])
			end
		end
	end
	if not table.find(partexclusion,chat) then
		table.insert(partexclusion,chat)
	end
end)
function respawnchr()
	for i, v in next, workspace:GetDescendants() do
		if v:IsA("SpawnLocation") then
			local newpos = v.CFrame * cn(0,v.Size.Y/2+30,0).p
			poscframe,ypos = cn(newpos),newpos.Y
			return
		end
	end
	poscframe,ypos = cn(0,50,0),50
end
local attacks = {}
local ws = 0.2
function attacks:refresh(pos)
	debris:AddItem(r,0)
	debris:AddItem(h,0) debris:AddItem(t,0) debris:AddItem(la,0) debris:AddItem(ra,0) debris:AddItem(ll,0) debris:AddItem(rl,0)
	debris:AddItem(chat,0) debris:AddItem(gun,0)
end
function attacks:loldiepart(p)
	if table.find(partexclusion,p) then return end
	local hum = p.Parent:FindFirstChildOfClass("Humanoid") or p.Parent.Parent:FindFirstChildOfClass("Humanoid")
	if p.Size.X > 50 or p.Size.Y > 50 or p.Size.Z > 50 and not hum then return end
	table.insert(partexclusion,p)
	p.Anchored,p.CanCollide,p.LocalTransparencyModifier,p.Transparency = true,false,1,1
	local e = create("Part",{
		Parent = workspace,
		CanCollide = false,
		CFrame = p.CFrame,
		Size = p.Size,
		Material = Enum.Material.Neon,
		Velocity = v3(random(-30,30),30,random(-30,30)),
		RotVelocity = v3(random(-15,15),random(-15,15),random(-15,15))
	})
	p.Size = v3()
	table.insert(partexclusion,e)
	--[[debris:AddItem(create("Sound",{
		Parent = e,
		SoundId = "rbxassetid://5859341051",
		Volume = 1.5,
		Playing = true,
		PlayOnRemove = true
	}),0)]]
	local dur = random(75,150)/300
	tween(e,{Transparency=1},dur,Enum.EasingDirection.In,Enum.EasingStyle.Linear)
	debris:AddItem(e,dur)
end
function attacks:hitbox(radius,pos)
	if localuserid == userid then
		--event:FireServer("hitbox",{radius,pos})
		local h = create("Part",{
			Parent = workspace,
			Anchored = true,
			CanCollide = false,
			Transparency = 1,
			Shape = Enum.PartType.Ball,
			Size = Vector3.new(radius*2,radius*2,radius*2),
			Position = pos
		})
	end
	local h = create("Part",{
		Parent = workspace,
		Anchored = true,
		CanCollide = false,
		Transparency = 1,
		Shape = Enum.PartType.Ball,
		Size = v3(radius*2,radius*2,radius*2),
		Position = pos
	})
	table.insert(partexclusion,h)
	debris:AddItem(h,0.2)
	h.Touched:Connect(function() end)
	for i, v in next, h:GetTouchingParts() do
		local hum
		pcall(function()
			hum = v.Parent:FindFirstChildOfClass("Humanoid") or v.Parent.Parent:FindFirstChildOfClass("Humanoid")
		end)
		if hum then
			for e, p in next, hum.Parent:GetDescendants() do
				if p:IsA("BasePart") then
					attacks:loldiepart(p)
				end
			end
		end
		attacks:loldiepart(v)
	end
end
function attacks:pew(pos)
	attack,ws = true,0.05
	for i = 1, 3, 0.15 do
		swait()
		laoffset = laoffset:Lerp(lac0*cn(0.0649986267,0,0.240997314)*euler(rad(-7.5),rad(15),0),animspeed)
		raoffset = raoffset:Lerp(rac0*cn(0.0480003357,0.375,-0.614997864)*euler(rad(90),rad(-22.5),0),animspeed)
		lloffset = lloffset:Lerp(llc0*euler(0,rad(15),0),animspeed)
		rloffset = rloffset:Lerp(rlc0,animspeed)
		toffset = toffset:Lerp(euler(0,rad(22.5),0),animspeed)
		hoffset = hoffset:Lerp(hc0*euler(0,rad(-22.5),0),animspeed)
		gunoffset = gunoffset:Lerp(cn(-0.25,-1.52400005,-0.2970047)*euler(0,rad(90),rad(-90)),animspeed)
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
		Parent = workspace,
		Anchored = true,
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
			Parent = workspace,
			Anchored = true,
			CanCollide = false,
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
			Parent = workspace,
			Anchored = true,
			CanCollide = false,
			Material = Enum.Material.Neon,
			Size = v3(1.5,1.5,1.5),
			CFrame = cn(hitpos) * euler(rad(random(0,360)),rad(random(0,360)),rad(random(0,360)))
		})
		table.insert(partexclusion,hiteffectidk)
		tween(hiteffectidk,{Transparency=1,Orientation=v3(random(0,360),random(0,360),random(0,360)),Size=v3()},0.2,Enum.EasingDirection.In)
		debris:AddItem(hiteffectidk,0.2)
		local shock = backups.shock:Clone()
		change(shock,{
			Parent = workspace,
			Anchored = true,
			CanCollide = false,
			Size = v3(0.1,0.1,0.1),
			Material = Enum.Material.Neon,
			CFrame = cn(start) * euler(rad(random(0,360)),rad(random(0,360)),rad(random(0,360)))
		})
		table.insert(partexclusion,shock)
		tween(shock,{Size=v3(0.1,random(5,7),0.1),Transparency=1},random(5,15)/30,Enum.EasingDirection.Out)
		debris:AddItem(shock,0.5)
	end
	for i = 1, 3, 0.15 do
		swait()
		laoffset = laoffset:Lerp(lac0*cn(-0.0429992676,0.0380001068,-0.700996399)*euler(rad(60),rad(15),rad(-7.5)),animspeed)
		raoffset = raoffset:Lerp(rac0*cn(-0.39799881,0.246000051,-0.800003052)*euler(rad(75),rad(67.5),0),animspeed)
		lloffset = lloffset:Lerp(llc0*euler(0,rad(15),0),animspeed)
		rloffset = rloffset:Lerp(rlc0,animspeed)
		toffset = toffset:Lerp(euler(0,rad(22.5),0),animspeed)
		hoffset = hoffset:Lerp(hc0*cn(-0.016998291,-0.0170001984,-0.126998901)*euler(rad(-14.74),rad(15.39),rad(-2)),animspeed)
		gunoffset = gunoffset:Lerp(cn(-0.25,-1.52400005,-0.2970047)*euler(0,rad(90),rad(-90)),animspeed)
	end
	for i = 1, 2, 0.3 do
		swait()
		laoffset = laoffset:Lerp(lac0*cn(0.199001312,0.0780000687,-0.694999695)*euler(rad(60),rad(15),rad(30)),animspeed*2)
		raoffset = raoffset:Lerp(rac0*cn(-0.39799881,0.246000051,-0.800003052)*euler(rad(75),rad(67.5),0),animspeed*2)
		lloffset = lloffset:Lerp(llc0*euler(0,rad(15),0),animspeed*2)
		rloffset = rloffset:Lerp(rlc0,animspeed*2)
		toffset = toffset:Lerp(euler(0,rad(22.5),0),animspeed*2)
		hoffset = hoffset:Lerp(hc0*cn(-0.016998291,-0.0170001984,-0.126998901)*euler(rad(-14.74),rad(15.39),rad(-2)),animspeed*2)
		gunoffset = gunoffset:Lerp(cn(-0.25,-1.52400005,-0.2970047)*euler(0,rad(90),rad(-90)),animspeed*2)
	end
	for i = 1, 2, 0.3 do
		swait()
		laoffset = laoffset:Lerp(lac0*cn(-0.0429992676,0.0380001068,-0.700996399)*euler(rad(60),rad(15),rad(-7.5)),animspeed)
		raoffset = raoffset:Lerp(rac0*cn(-0.39799881,0.246000051,-0.800003052)*euler(rad(75),rad(67.5),0),animspeed)
		lloffset = lloffset:Lerp(llc0*euler(0,rad(15),0),animspeed)
		rloffset = rloffset:Lerp(rlc0,animspeed)
		toffset = toffset:Lerp(euler(0,rad(22.5),0),animspeed)
		hoffset = hoffset:Lerp(hc0*cn(-0.016998291,-0.0170001984,-0.126998901)*euler(rad(-14.74),rad(15.39),rad(-2)),animspeed)
		gunoffset = gunoffset:Lerp(cn(-0.25,-1.52400005,-0.2970047)*euler(0,rad(90),rad(-90)),animspeed)
	end
	attack,ws = false,0.2
end
function attacks:ouch(pos)
	attack,ws = true,0.05
	for i = 1, 3, 0.2 do
		swait()
		laoffset = laoffset:Lerp(lac0*cn(0.0649986267,0,0.240997314)*euler(rad(-7.5),rad(15),0),animspeed)
		raoffset = raoffset:Lerp(rac0*cn(0.301998138,0.25999999,-0.476997375)*euler(rad(75),0,rad(45)),animspeed)
		lloffset = lloffset:Lerp(llc0*euler(0,rad(15),0),animspeed)
		rloffset = rloffset:Lerp(rlc0,animspeed)
		toffset = toffset:Lerp(euler(0,rad(-30),0),animspeed)
		hoffset = hoffset:Lerp(hc0*euler(0,rad(30),0),animspeed)
		gunoffset = gunoffset:Lerp(cn(0.116001129,-0.170000076,-0.424999237)*euler(rad(0.06),rad(0.98),rad(75.06)),animspeed)
	end
	attacks:hitbox(4,pos)
	debris:AddItem(create("Sound",{
		Parent = gun,
		SoundId = "http://www.roblox.com/asset/?id=12222208",
		Volume = 2,
		Playing = true,
		PlayOnRemove = true
	}),0)
	for i = 1, 2, 0.15 do
		swait()
		laoffset = laoffset:Lerp(lac0*cn(0.0649986267,0,0.240997314)*euler(rad(-7.5),rad(15),0),animspeed*2)
		raoffset = raoffset:Lerp(rac0*cn(-0.459999084,0.112999916,-1.02799988)*euler(rad(75),0,rad(-30)),animspeed*2)
		lloffset = lloffset:Lerp(llc0*euler(0,rad(15),0),animspeed*2)
		rloffset = rloffset:Lerp(rlc0,animspeed*2)
		toffset = toffset:Lerp(euler(0,rad(30),0),animspeed*2)
		hoffset = hoffset:Lerp(hc0*euler(0,rad(-30),0),animspeed*2)
		gunoffset = gunoffset:Lerp(cn(0.116001129,-0.170000076,-0.424999237)*euler(rad(0.06),rad(0.98),rad(75.06)),animspeed*2)
	end
	attack,ws = false,0.2
end
function attacks:tp(pos)
	local oldpos = poscframe.p
	local _pos = {oldpos,pos}
	poscframe,ypos = cn(pos),pos.Y
	for i = 1, 2 do
		local b = create("Part",{
			Parent = workspace,
			Anchored = true,
			CanCollide = false,
			Material = Enum.Material.Neon,
			Position = _pos[i],
			Size = v3(7,7,7)
		})
		table.insert(partexclusion,b)
		tween(b,{Size=v3(),Transparency=1},0.3,Enum.EasingDirection.In)
		debris:AddItem(b,0.3)
	end
	local length = clamp((oldpos-pos).Magnitude,0,2048)
	local c = create("Part",{
		Parent = workspace,
		Anchored = true,
		CanCollide = false,
		Material = Enum.Material.Neon,
		Size = v3(2,2,length),
		Position = oldpos,
		CFrame = cn(oldpos) * cn(oldpos,pos)
	})
	table.insert(partexclusion,c)
	c.CFrame = c.CFrame * cn(0,0,-length/2)
	tween(c,{Size=v3(0,0,length),Transparency=1},0.3,Enum.EasingDirection.In)
	debris:AddItem(c,0.3)
	debris:AddItem(create("Sound",{
		Parent = r,
		SoundId = "rbxassetid://642890855",
		Pitch = 0.45,
		Playing = true,
		PlayOnRemove = true
	}),0)
end
if localuserid == userid then
	game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{Text="your player will be deleted once someone joins",Color=c3(0, 255, 255)})
	game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,false)
	for i, v in next, cam:GetChildren()  do
		debris:AddItem(v,0)
	end
	local rotationvalue = nil
	run:BindToRenderStep(userid.."movement",4354543,function()
		if not r or not c then return end
		if not rotationvalue or rotationvalue.Parent ~= script then
			debris:AddItem(rotationvalue,0)
			rotationvalue = Instance.new("CFrameValue",script)
			rotationvalue.Name = randomstring()
		end
		raycastparams.FilterDescendantsInstances = partexclusion
		uis.MouseIconEnabled,mouse.Icon = true,""
		cam.CameraSubject,cam.CameraType,cam.FieldOfView,localplayer.CameraMaxZoomDistance,localplayer.CameraMinZoomDistance,localplayer.CameraMode,cam.FieldOfViewMode = c,Enum.CameraType.Custom,70,math.huge,0,Enum.CameraMode.Classic,Enum.FieldOfViewMode.Vertical
		local movedirection,lv,pos = v3(),cam.CFrame.LookVector,poscframe.p
		if keys.w then movedirection = movedirection + v3(0,0,-ws) end
		if keys.a then movedirection = movedirection + v3(-ws,0,0) end
		if keys.s then movedirection = movedirection + v3(0,0,ws) end
		if keys.d then movedirection = movedirection + v3(ws,0,0) end
		local potentialposraycast,currentposraycast = workspace:Raycast(pos+movedirection,v3(0,-3.5,0),raycastparams),workspace:Raycast(pos,v3(0,-3.5,0),raycastparams)
		if currentposraycast then
			if keys.space then
				yvelo,ypos = 1.5,ypos+1.5
			elseif potentialposraycast then
				ypos,yvelo = potentialposraycast.Position.Y + 3,0
			end
		else
			yvelo = clamp(yvelo-0.06,-4,1)
			ypos = ypos + yvelo
		end
		if ypos < workspace.FallenPartsDestroyHeight then
			respawnchr()
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
		firstperson = uis.MouseBehavior == Enum.MouseBehavior.LockCenter and (cam.CFrame.p-c.Position).Magnitude < 1
		local xrot3,yrot3,zrot3 = rotationvalue.Value:ToOrientation()
		velocity = (moveto-pos)*50
		poscframe = cn(moveto) * euler(0,yrot3,0)
		r.CFrame = poscframe
		c.CFrame = r.CFrame * cn(0,1.5,0)
		--event:FireServer("replicate",{poscframe,moving,yvelo,velocity})
		position = poscframe
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
		if chatting then
			local newinput = key
			for i, v in next, keysupport[shiftdown] do
				if i == key then
					newinput = v
					break
				end
			end
			if shiftdown then newinput = string.upper(newinput) end
			if #newinput == 1 then
				chattext = chattext .. newinput
				chatinput.Text = chattext
				chatinput.Size = UDim2.new(1, -10,0, chatinput.TextBounds.Y)
			end
			if key == "backspace" then
				chattext = string.sub(chattext,1,#chattext-1)
				chatinput.Text = chattext
				chatinput.Size = UDim2.new(1, -10,0, chatinput.TextBounds.Y)
			elseif key == "return" then
				local txt = chattext
				chattext,chatinput.Visible,chatinput.Text = "",false,""
				chatting = false
				if txt ~= "" and txt ~= " " then
					--event:FireServer("chat",{txt})
					--event:FireAllClients("chat",{"studio dummy v3",msg,true})
					addtochat("studio dummy v3",txt)
					game:GetService("Chat"):Chat(c,txt,Enum.ChatColor.White)
				end
			end
		else
			if key == "slash" and not gp then
				chatting = true
				chatinput.Visible = true
			end
		end
	end)
	uis.InputEnded:Connect(function(a)
		local key = string.lower(string.split(tostring(a.KeyCode),".")[3])
		if key == "leftshift" then
			shiftdown = false
		end
	end)
	mouse.KeyDown:Connect(function(key)
		if not chatting then
			if key == "w" or key == "a" or key == "s" or key == "d" then
				keys[key] = true
			elseif key == " " then
				keys.space = true
			elseif key == "r" then
				respawnchr()
			elseif key == "q" then
				--event:FireServer("keydown",{"q"})
				attacks:refresh()
			elseif key == "e" then
				if not attack then
					local pos = (r.CFrame * cn(0,-2,-2)).p
					--event:FireServer("keydown",{"e",pos})
					attacks:ouch(pos)
				end
			elseif key == "z" then
				local pos = mouse.Hit.p+v3(0,3,0)
				--event:FireServer("keydown",{"z",pos})
				attacks:tp(pos)
			end
		end
	end)
	mouse.KeyUp:Connect(function(key)
		if key == "w" or key == "a" or key == "s" or key == "d" then
			keys[key] = false
		elseif key == " " then
			keys.space = false
		end
	end)
	mouse.Button1Down:Connect(function()
		if mouse.Target ~= chat then
			chatting = false
			chatinput.Visible = false
		end
		if not attack then
			local mousepos = mouse.Hit.p
			attacks:pew(mousepos)
			--event:FireServer("keydown",{"mouse1",mousepos})
		end
	end)
end
local bgm,bgmstartime,bgmtimelength = create("Sound",{Parent=cam}),tick(),68.555   
local bgmremoved = cam.ChildRemoved:Connect(function(instance)
	if instance == bgm then
		bgm = create("Sound",{Parent=cam})
		local changed,fixing = nil,false
		changed = bgm.Changed:Connect(function(property)
			if not bgm or bgm.Parent ~= cam then changed:Disconnect() debris:AddItem(bgm,0) return end
			if property == "Volume" or fixing then return end
			fixing = true
			local diff = tick()-bgmstartime
			change(bgm,{
				SoundId = "rbxassetid://4550046224",
				Looped = true,
				Name = randomstring(),
				Pitch = 1,
				Playing = true,
				RollOffMaxDistance = 10000,
				RollOffMinDistance = 10,
				RollOffMode = Enum.RollOffMode.Inverse,
				TimePosition = clamp(bgm.TimePosition,diff-0.2,diff+0.2),
				Archivable = false,
				PlayOnRemove = false
			})
			bgm.SoundGroup = nil
			fixing = false
		end)
		bgm.Name = "bru"
	end
end)
debris:AddItem(bgm,0)
local cameratilt = cn()
run.RenderStepped:Connect(function()
	sine = workspace.DistributedGameTime * 60
	bgm.Volume = clamp(25/(cam.CFrame.p-r.Position).Magnitude,0,10)
	if tick()-bgmstartime > bgmtimelength then
		bgmstartime,bgm.Name = tick(),"sdjfhsjdkhfkjsdhfsdjfyusdg"
	end
	c.CFrame = r.CFrame * cn(0,1.5,0)
	local _tilt = cn(r.CFrame:VectorToObjectSpace(velocity))
	local tilt = {X=clamp(_tilt.X,-7,7),Y=0,Z=clamp(_tilt.Z,-7,7)}
	if localuserid == userid then
		cameratilt = cameratilt:Lerp(cn(-tilt.X*3,-yvelo/2,0),0.03)
		cam.CFrame  = cam.CFrame * euler(rad(-cameratilt.Y/1.5),0,rad(cameratilt.X/4))
	end
	if not attack then
		if yvelo > 0 then
			laoffset = laoffset:Lerp(lac0*cn(-0.325000763,0.187000036,0)*euler(0,0,rad(-30)),animspeed)
			raoffset = raoffset:Lerp(rac0*cn(0.325000763,0.187000036,0)*euler(0,0,rad(30)),animspeed)
			lloffset = lloffset:Lerp(llc0*cn(0,0.57099998,-0.45300293)*euler(rad(-7.5),0,0),animspeed)
			rloffset = rloffset:Lerp(rlc0,animspeed)
			toffset = toffset:Lerp(cn(),animspeed)
			hoffset = hoffset:Lerp(hc0,animspeed)
		elseif yvelo < 0 then
			laoffset = laoffset:Lerp(lac0*cn(-0.187999725,0.161999941,-0.46900177)*euler(rad(60),0,rad(-30)),animspeed)
			raoffset = raoffset:Lerp(rac0*cn(0.187999725,0.161999941,-0.46900177)*euler(rad(60),0,rad(30)),animspeed)
			lloffset = lloffset:Lerp(llc0,animspeed)
			rloffset = rloffset:Lerp(rlc0*cn(0,0.57099998,-0.45300293)*euler(rad(-7.5),0,0),animspeed)
			toffset = toffset:Lerp(euler(rad(-20),0,0),animspeed)
			hoffset = hoffset:Lerp(hc0*cn(0,-0.0170001984,-0.128997803)*euler(rad(-7.5),0,0),animspeed)
		elseif moving then
			laoffset = laoffset:Lerp(lac0*cn(-0.1,0,-sin(sine/10)/20*tilt.Z)*euler(rad(sin(sine/10)*3*tilt.Z),0,rad(-10)),animspeed)
			raoffset = raoffset:Lerp(rac0*cn(0.1,0,sin(sine/10)/20*tilt.Z)*euler(-rad(sin(sine/10)*3*tilt.Z),0,rad(10)),animspeed)
			lloffset = lloffset:Lerp(llc0*cn(sin(sine/10)/20*tilt.X,0,sin(sine/10)/20*tilt.Z)*euler(-rad(sin(sine/10)*3*tilt.Z),0,rad(sin(sine/10)*3*tilt.X)),animspeed)
			rloffset = rloffset:Lerp(rlc0*cn(-sin(sine/10)/20*tilt.X,0,-sin(sine/10)/20*tilt.Z)*euler(rad(sin(sine/10)*3*tilt.Z),0,-rad(sin(sine/10)*3*tilt.X)),animspeed)
			toffset = toffset:Lerp(cn(0,sin(sine/5)/10,0)*euler(rad(tilt.Z*2),0,rad(-tilt.X)),animspeed)
			hoffset = hoffset:Lerp(hc0*euler(0,-rad(tilt.X*5),0),animspeed)
			gunoffset = gunoffset:Lerp(cn(-0.125,-0.898999929-cos(sine/10)/70*tilt.Z,0.95400238)*euler(0,rad(90),rad(-172.5+cos(sine/10)*tilt.Z*1.5)),animspeed)
		else
			laoffset = laoffset:Lerp(lac0*cn(0.262001038-sin(sine/30)/10,-0.0739998817,-0.13999939)*euler(rad(7.44),0,rad(7.56-sin(sine/30)*7)),animspeed)
			raoffset = raoffset:Lerp(rac0*cn(-0.125,-0.125,0.217002869-sin(sine/30)/10)*euler(rad(-7.5+sin(sine/30)*7),rad(-30),0),animspeed)
			lloffset = lloffset:Lerp(llc0*euler(0,rad(15),0),animspeed)
			rloffset = rloffset:Lerp(rlc0*cn(0,0.0160000324,0.124000549)*euler(rad(-7.5),0,0),animspeed)
			toffset = toffset:Lerp(euler(rad(cos(sine/30)*2.5-2),rad(-15),0),animspeed)
			hoffset = hoffset:Lerp(cn(0,1,0)*euler(rad(cos(sine/30)*5),rad(15),rad(cos(sine/60)*10))*cn(0,0.5,0),animspeed)
			gunoffset = gunoffset:Lerp(cn(-0.6,-0.898999929+cos(sine/30)/5,0.95400238)*euler(0,rad(60),rad(-172.5-cos(sine/30)*10)),animspeed)
		end
	end
	tween(chat,{CFrame=r.CFrame*cn(3.13899994+sin(sine/30)/2,3.16800022+sin(sine/20)/2,-1.19099998+sin(sine/40)/2)*euler(rad(-14.48+cos(sine/30)*10),rad(127+cos(sine/20)*10),rad(-3.97+cos(sine/40)*10))},0.5,Enum.EasingDirection.Out)
	t.CFrame = r.CFrame * toffset
	h.CFrame,la.CFrame,ra.CFrame,ll.CFrame,rl.CFrame = t.CFrame*hoffset,t.CFrame*laoffset,t.CFrame*raoffset,t.CFrame*lloffset,t.CFrame*rloffset
	gun.CFrame = ra.CFrame*gunoffset
	if sine/20 == math.floor(sine/20) then
		debris:AddItem(r,0)
		debris:AddItem(h,0) debris:AddItem(t,0) debris:AddItem(la,0) debris:AddItem(ra,0) debris:AddItem(ll,0) debris:AddItem(rl,0)
	end
end)
--[[function bindevent()
	connection = event.OnClientEvent:Connect(function(mode,data)
		if localuserid ~= userid then
			if mode == "replicate" then
				poscframe,moving,yvelo,velocity = data[1],data[2],data[3],data[4]
				tween(r,{CFrame=poscframe},0.05,Enum.EasingDirection.In,Enum.EasingStyle.Linear)
			elseif mode == "keydown" then
				if data[1] == "q" then
					attacks:refresh()
				elseif data[1] == "mouse1" then
					attacks:pew(data[2])
				elseif data[1] == "e" then
					attacks:ouch(data[2])
				elseif data[1] == "z" then
					attacks:tp(data[2])
				end
			end
		end
		if mode == "chat" then
			addtochat(data[1],data[2])
			if data[3] then
				game:GetService("Chat"):Chat(c,data[2],Enum.ChatColor.White)
			end
		elseif mode == "stopscript" then
			run:UnbindFromRenderStep(username..userid.."partmaintain")
			pcall(function()
				run:UnbindFromRenderStep(userid.."movement")
			end)
			bgmremoved:Disconnect()
			debris:AddItem(bgm,0)
			connection:Disconnect()
			eventremoved:Disconnect()
			debris:AddItem(c,0) debris:AddItem(r,0)
			debris:AddItem(h,0) debris:AddItem(t,0) debris:AddItem(la,0) debris:AddItem(ra,0) debris:AddItem(ll,0) debris:AddItem(rl,0)
			debris:AddItem(gun,0)
			if localuserid == userid then
				addtochat("<script>","script successfully stopped, rejoin to return")
			else
				debris:AddItem(chat,0)
			end
			debris:AddItem(script,1)
			script.Disabled = true
		end
	end)
end]]
eventremoved = insert.ChildRemoved:Connect(function(instance)
	if instance == event then
		event = insert:WaitForChild(eventname)
		--bindevent()
	end
end)
--bindevent()
function trackcancollide(p)
	local function checkcancollide()
		if p.CanCollide then
			local s = table.find(partexclusion,p)
			if s then table.remove(partexclusion,s) end
		else
			local s = table.find(partexclusion,p)
			if not s then table.insert(partexclusion,p) end
		end
	end
	local changed
	changed = p.Changed:Connect(function(prop)
		if not p or p.Parent ~= workspace then
			changed:Disconnect()
			local s = table.find(partexclusion,p)
			if s then table.remove(partexclusion,s) end
			return
		end
		if prop == "CanCollide" then
			checkcancollide()
		end
	end)
	checkcancollide()
end
for i, v in next, workspace:GetDescendants() do
	if v:IsA("BasePart") then
		trackcancollide(v)
	end
end
workspace.DescendantAdded:Connect(function(p)
	if p:IsA("BasePart") then
		trackcancollide(p)
	end
end)
workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
	cam = workspace.CurrentCamera
end)
--event:FireServer("ready")
--game:GetService("Debris"):AddItem(owner.Character,0)
owner.Character.Parent = nil
--[[speaker:SayMessage("studio dummy v3 - by Vulnerali")
speaker:SayMessage("current user is '"..username.."'")]]
if #plrs:GetPlayers() == 1 then plrs.PlayerAdded:Wait() end
--game:GetService("Debris"):AddItem(plr,0)
for i = 1, 2 do
	run.RenderStepped:Wait()
end
local addons,showname = "","someone lol"
if isceat_ceat then
	addons,showname = " the creator wow!!!","Vulnerali"
end
addtochat("studio dummy v3","studio dummy v3 - by Vulnerali")
addtochat("studio dummy v3","current user is '"..showname.."'"..addons)
if localuserid == userid then
	addtochat("<script>","press 'q' to refresh chat")
	addtochat("<script>","chat a script with '<script>' before it to run a serverside script")
	addtochat("<script>","chat '>stopscript' to stop the script")
end
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "studio dummy v3",
	Text = "created by Vulnerali",
})
for i, v in next, script:GetChildren() do
	debris:AddItem(v,0)
end
