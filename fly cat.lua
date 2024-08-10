local Assets = LoadAssets(18880821747)
table.foreach(Assets:Get("SDV2"):GetChildren(), function(i,v)
	local lol = v:Clone()
	lol.Parent = script
end)
wait(0.5)
local RunService = game:GetService("RunService")
local mouseevent = Instance.new("RemoteEvent", game:GetService("LocalizationService"))
mouseevent.Name = "MouseEvent"
local mousehitevent = Instance.new("RemoteEvent", game:GetService("LocalizationService"))
mousehitevent.Name = "MouseHitEvent"
local mouseclickevent = Instance.new("RemoteEvent", game:GetService("LocalizationService"))
mouseclickevent.Name = "MouseClickEvent"

local FakeRS = {
	_bthrs = {}
}

function FakeRS:BindToHeartbeat(name, whatever, fun)
	self._bthrs[name] = RunService.Heartbeat:Connect(fun)
end

function FakeRS:UnbindFromHeartbeat(name)
	if self._bthrs[name] then
		self._bthrs[name]:Disconnect()
		self._bthrs[name] = nil
	end
end
local plrs,workspace,run,pps,ts,--[[uis,]]debris,rf = game:GetService("Players"),game:GetService("Workspace"),game:GetService("RunService"),game:GetService("MarketplaceService"),game:GetService("TweenService"),--[[game:GetService("UserInputService"),]]game:GetService("Debris"),game:GetService("ReplicatedFirst")
local cn,euler,rad,v3,c3,sin,cos,clamp = CFrame.new,CFrame.fromEulerAnglesYXZ,math.rad,Vector3.new,Color3.fromRGB,math.sin,math.cos,math.clamp
local random = math.random
local S = 1
function cn2(x,y,z)
	return cn(x*S,y*S,z*S)
end
local userid,localplayer,plr = owner.UserId,owner,owner
script.Parent = rf
local username = owner.Name
local mouse,cam,event = {},workspace.CurrentCamera,Instance.new("RemoteEvent", game:GetService("LocalizationService"))
local funcs = {}
funcs.__index = funcs
function randomstring()
	local e = {}
	for i = 1,random(5,50) do
		table.insert(e,#e+1,string.char(random(10,100)))
	end
	return table.concat(e)
end
function tween(instance,properties,duration,easingdirection,easingstyle)
	spawn(function()
		if easingstyle == nil then easingstyle = Enum.EasingStyle.Quad end
		ts:Create(instance,TweenInfo.new(duration,easingstyle,easingdirection),properties):Play()
	end)
end
function change(instance, properties)
	for i, v in pairs(properties) do
		instance[i] = v
	end
end
function create(class,properties)
	local instance = Instance.new(class)
	instance.Name = randomstring()
	change(instance,properties)
	return instance
end
local h,t,r,la,ra,ll,rl,face,campart,gun
local hc0,lac0,rac0,llc0,rlc0,sine,animspeed,attack,falling,partexclusion,flying,raycastparams,keys,moving,poscframe,ypos,transparent = cn2(0,1.5,0),cn2(-1.5,0,0),cn2(1.5,0,0),cn2(-0.5,-2,0),cn2(0.5,-2,0),0,1/4,false,false,{},false,RaycastParams.new(),{w=false,a=false,s=false,d=false},false,cn(),50,false
local hoffset,toffset,laoffset,raoffset,lloffset,rloffset,gunoffset = hc0,cn(),lac0,rac0,llc0,rlc0,cn2(-0.365001678,-2.11000013,-0.125)*euler(rad(90),rad(180),0)
raycastparams.FilterType,raycastparams.IgnoreWater = Enum.RaycastFilterType.Blacklist,true
local rotationvalue = Instance.new("CFrameValue",script)
rotationvalue.Name = randomstring()
function fix(instance,parent)
	if instance == parent then
		return true
	else
		local kek = pcall(function()
			instance.Parent,instance.Name = parent,randomstring()
		end)
		if instance.Parent ~= parent then
			return false
		else
			return kek
		end
	end
end
function checkpart(part,size,collisionfidelity,color,material,transparency,cancollide,localtransparency)
	return (not part or not fix(part,workspace) or part.Parent ~= workspace or part.Size ~= size*S or part.Color ~= color or part.Material ~= material or (not transparent and part.Transparency ~= transparency) or (transparent and part.Transparency ~= 1) or part.CanCollide ~= cancollide or part.Archivable or part.CollisionFidelity ~= collisionfidelity or not part.Locked or part.CollisionGroupId ~= 0 or part.DoubleSided or not part.Anchored or part.LocalTransparencyModifier ~= 0 or part.CastShadow)
end
function gettransparency(transparency)
	if transparent then
		return 1
	else
		return transparency
	end
end
local backups = {}
backups.__index = backups
for i, v in pairs(script:GetChildren()) do
	if v:IsA("BasePart") then
		backups[v.Name] = v:Clone()
	end
end
FakeRS:BindToHeartbeat(username.."MaintainParts",777777,function()
	if not rotationvalue or not fix(rotationvalue,script) or rotationvalue.Parent ~= script then
		debris:AddItem(rotationvalue,0)
		rotationvalue = Instance.new("CFrameValue",script)
		rotationvalue.Name = randomstring()
	end
	if checkpart(campart,v3(1,1,1),Enum.CollisionFidelity.Box,c3(0,0,0),Enum.Material.SmoothPlastic,1,false,1) then
		if table.find(partexclusion,campart) then
			table.remove(partexclusion,table.find(partexclusion,campart))
		end
		debris:AddItem(campart,0)
		campart = backups.t:Clone()
		campart.Transparency = 1
		campart.Color = c3(0,0,0)
		campart.CanCollide = false
		campart.Size = v3(1,1,1)*S
		campart.Parent = workspace
		campart.Name = randomstring()
		campart.Archivable = false
		campartvalue = Instance.new("ObjectValue", game:GetService("LocalizationService"))
		campartvalue.Name = "CamPartValue"
		campartvalue.Value = campart
	end
	if not table.find(partexclusion,campart) then
		table.insert(partexclusion,campart)
	end
	if checkpart(r,v3(2,2,1),Enum.CollisionFidelity.Box,c3(163,162,165),Enum.Material.SmoothPlastic,0.5,true,0.5) then
		if table.find(partexclusion,r) then
			table.remove(partexclusion,table.find(partexclusion,r))
		end
		debris:AddItem(r,0)
		r = backups.t:Clone()
		r.Transparency = gettransparency(0.5)
		r.Size = v3(2,2,1)*S
		r.Name = randomstring()
		r.Parent = workspace
		r.Archivable = false
		r.CFrame = poscframe
	end
	if not table.find(partexclusion,r) then
		table.insert(partexclusion,r)
	end
	if (not face or not fix(face,h) or h.Parent ~= workspace or face.Color3 ~= c3(255,255,255) or face.Face ~= Enum.NormalId.Front or face.Transparency ~= 0 or face.Texture ~= "rbxasset://textures/face.png") then
		if h then
			debris:AddItem(h,0)
		end
	end
	if (not h or not fix(h,workspace) or h.Parent ~= workspace or h.Size ~= v3(2,1,1)*S or h.Color ~= c3(163,162,165) or h.Material ~= Enum.Material.Plastic or (not transparent and h.Transparency ~= 0) or (transparent and h.Transparency ~= 1) or not h.CanCollide or h.Archivable or not h.Locked or h.CollisionGroupId ~= 0 or not h.Anchored or h.LocalTransparencyModifier ~= 0) or h.CastShadow then
		if table.find(partexclusion,h) then
			table.remove(partexclusion,table.find(partexclusion,h))
		end
		debris:AddItem(h,0)
		h = backups.h:Clone()
		face = h.face
		h.Transparency = gettransparency(0)
		h.Size = v3(2,1,1)*S
		h.Name = randomstring()
		h.Parent = workspace
		h.Archivable = false
	end
	if not table.find(partexclusion,h) then
		table.insert(partexclusion,h)
	end
	if checkpart(t,v3(2,2,1),Enum.CollisionFidelity.Box,c3(163,162,165),Enum.Material.SmoothPlastic,0,true,0) then
		if table.find(partexclusion,t) then
			table.remove(partexclusion,table.find(partexclusion,t))
		end
		debris:AddItem(t,0)
		t = backups.t:Clone()
		t.Transparency = gettransparency(0)
		t.Size = v3(2,2,1)*S
		t.Name = randomstring()
		t.Parent = workspace
		t.Archivable = false
	end
	if not table.find(partexclusion,t) then
		table.insert(partexclusion,t)
	end
	if checkpart(la,v3(1,2,1),Enum.CollisionFidelity.Box,c3(163,162,165),Enum.Material.SmoothPlastic,0,true,0) then
		if table.find(partexclusion,la) then
			table.remove(partexclusion,table.find(partexclusion,la))
		end
		debris:AddItem(la,0)
		la = backups.limb:Clone()
		la.Transparency = gettransparency(0)
		la.Size = v3(1,2,1)*S
		la.Name = randomstring()
		la.Parent = workspace
		la.Archivable = false
	end
	if not table.find(partexclusion,la) then
		table.insert(partexclusion,la)
	end
	if checkpart(ra,v3(1,2,1),Enum.CollisionFidelity.Box,c3(163,162,165),Enum.Material.SmoothPlastic,0,true,0) then
		if table.find(partexclusion,ra) then
			table.remove(partexclusion,table.find(partexclusion,ra))
		end
		debris:AddItem(ra,0)
		ra = backups.limb:Clone()
		ra.Transparency = gettransparency(0)
		ra.Size = v3(1,2,1)*S
		ra.Name = randomstring()
		ra.Parent = workspace
		ra.Archivable = false
	end
	if not table.find(partexclusion,ra) then
		table.insert(partexclusion,ra)
	end
	if checkpart(ll,v3(1,2,1),Enum.CollisionFidelity.Box,c3(163,162,165),Enum.Material.SmoothPlastic,0,true,0) then
		if table.find(partexclusion,ll) then
			table.remove(partexclusion,table.find(partexclusion,ll))
		end
		debris:AddItem(ll,0)
		ll = backups.limb:Clone()
		ll.Transparency = gettransparency(0)
		ll.Size = v3(1,2,1)*S
		ll.Name = randomstring()
		ll.Parent = workspace
		ll.Archivable = false
	end
	if not table.find(partexclusion,ll) then
		table.insert(partexclusion,ll)
	end
	if checkpart(rl,v3(1,2,1),Enum.CollisionFidelity.Box,c3(163,162,165),Enum.Material.SmoothPlastic,0,true,0) then
		if table.find(partexclusion,rl) then
			table.remove(partexclusion,table.find(partexclusion,rl))
		end
		debris:AddItem(rl,0)
		rl = backups.limb:Clone()
		rl.Transparency = gettransparency(0)
		rl.Size = v3(1,2,1)*S
		rl.Name = randomstring()
		rl.Parent = workspace
		rl.Archivable = false
	end
	if not table.find(partexclusion,rl) then
		table.insert(partexclusion,rl)
	end
	if(not gun or not fix(gun,workspace) or gun.Parent ~= workspace or gun.Size ~= v3(0.271,1.53,7.186)*S or gun.Material ~= Enum.Material.Neon or (not transparent and gun.Transparency ~= 0) or (transparent and gun.Transparency ~= 1) or not gun.CanCollide or gun.Archivable or gun.CollisionFidelity ~= Enum.CollisionFidelity.PreciseConvexDecomposition or not gun.Locked or gun.CollisionGroupId ~= 0 or gun.DoubleSided or not gun.Anchored or gun.LocalTransparencyModifier ~= 0) or gun.CastShadow then
		if table.find(partexclusion,gun) then
			table.remove(partexclusion,table.find(partexclusion,gun))
		end
		debris:AddItem(gun,0)
		gun = backups.gun:Clone()
		gun.Transparency = gettransparency(0)
		gun.Size = v3(0.271,1.53,7.186)*S
		gun.Name = randomstring()
		gun.Parent = workspace
		gun.Archivable = false
	end
	if not table.find(partexclusion,gun) then
		table.insert(partexclusion,gun)
	end
end)
function respawn()
	if localplayer == plr then
		local spawnpoint = localplayer.RespawnLocation
		if not spawnpoint then
			for i, v in pairs(workspace:GetDescendants()) do
				if v:IsA("SpawnLocation") then
					spawnpoint = v
					break
				end
			end
		end
		if spawnpoint then
			local newpos = (spawnpoint.CFrame*cn(0,spawnpoint.Size.Y/2+50,0)).p
			ypos,poscframe = newpos.Y,cn(newpos)
		else
			ypos = 50
			poscframe = cn(0,ypos,0)
		end
	end
end
local ws = 0.5
local attacks = {}
attacks.__index = attacks
local chamberedbullets = 8
function attacks:part(v,supresssound)
	if not table.find(partexclusion,v) then
		if (v.Size.X < 50 and v.Size.Y < 50 and v.Size.Z < 50) or not v.Anchored then
			table.insert(partexclusion,v)
			v:BreakJoints()
			v.Anchored,v.CanCollide,v.Material = true,false,Enum.Material.Neon
			if not supresssound then
				debris:AddItem(create("Sound",{
					Parent = v,
					SoundId = "rbxassetid://4458055429",
					Volume = 3,
					Playing = true,
					PlayOnRemove = true
				}),0)
			end
			local dur = random(75,100)/100
			tween(v,{CFrame=v.CFrame*cn(random(-7,7),random(-7,7),random(-7,7))*euler(rad(random(0,360)),rad(random(0,360)),rad(random(0,360))),LocalTransparencyModifier=1,Size=v3()},dur,Enum.EasingDirection.Out)
			for i, v in pairs(v:GetChildren()) do
				if v:IsA("Decal") or v:IsA("Texture") then
					tween(v,{Transparency=1},dur,Enum.EasingDirection.Out)
				elseif v:IsA("Fire") or v:IsA("Smoke") or v:IsA("Sparkles") or v:IsA("ParticleEmitter") then
					v.Enabled = false
				elseif v:IsA("Light") then
					tween(v,{Brightness=1},dur,Enum.EasingDirection.Out)
				end
			end
			local flicker = run.Heartbeat:Connect(function()
				v.BrickColor = BrickColor.Random()
			end)
			delay(dur,function()
				flicker:Disconnect()
			end)
		end
	end
end
function attacks:hitbox(pos,range)
	--event:FireServer("hitbox",{pos,range})
	local hitbox = create("Part",{
		Parent = workspace,
		Anchored = true,
		CanCollide = false,
		Material = Enum.Material.ForceField,
		BrickColor = BrickColor.Random(),
		Shape = Enum.PartType.Ball,
		Size = v3(range*2,range*2,range*2),
		Position = pos
	})
	table.insert(partexclusion,hitbox)
	local flicker1 = run.Heartbeat:Connect(function()
		hitbox.BrickColor = BrickColor.Random()
	end)
	tween(hitbox,{Transparency=1},1,Enum.EasingDirection.In)
	debris:AddItem(hitbox,1)
	delay(1,function()
		flicker1:Disconnect()
	end)
	hitbox.Touched:Connect(function() end)
	for i, v in pairs(hitbox:GetTouchingParts()) do
		attacks:part(v)
	end
	for i = 1, random(8,12) do
		local yes = create("Part",{
			Parent = workspace,
			Anchored = true,
			CanCollide = false,
			Size = v3(random(2,6),random(10,15)/10,random(1,3))/4 * range * 3,
			CFrame = cn(pos) * euler(rad(random(0,360)),rad(random(0,360)),rad(random(0,360)))
		})
		attacks:part(yes,true)
		debris:AddItem(yes,1)
	end
end
function createlightningbolt(startpos,endpos,width)
	local _start,length = startpos,(startpos-endpos).Magnitude
	local segments = clamp(math.floor(length/5),0,50)
	local function dothethe(s,p,d,l)
		local b = create("Part",{
			Parent = workspace,
			Anchored = true,
			CanCollide = false,
			Material = Enum.Material.Neon,
			Size = v3(width,width,l),
			Position = s,
			CFrame = cn(s,p) * euler(rad(random(-d,d)),rad(random(-d,d)),rad(random(-d,d)))
		})
		table.insert(partexclusion,b)
		b.CFrame = b.CFrame * cn(0,0,-l/2)
		tween(b,{Size=v3(0,0,l),Transparency=1},0.2,Enum.EasingDirection.In,Enum.EasingStyle.Back)
		local flicker = run.Heartbeat:Connect(function()
			b.Color = gun.Color
		end)
		delay(0.2,function()
			flicker:Disconnect()
		end)
		return (b.CFrame * cn(0,0,-l/2)).p
	end
	for i = 1, segments do
		_start = dothethe(_start,endpos,20,5)
	end
	dothethe(_start,endpos,0,(_start-endpos).Magnitude)
end
mousehitevent.OnServerEvent:Connect(function(whatever, newmousepos, newlookvector)
	mousepos = newmousepos
	lookvector = newlookvector
end)
function attacks:pew(pos)
	attack = true
	for i = 1, 3, 0.1 do
		run.Heartbeat:Wait()
		laoffset = laoffset:Lerp(lac0*cn2(1.5870018,0.5,-1.52200317)*euler(rad(15),rad(52.5),rad(90)),animspeed)
		raoffset = raoffset:Lerp(rac0*cn2(-0.129001617,0.48300004,-0.625)*euler(rad(75),rad(90),rad(90)),animspeed)
		lloffset = lloffset:Lerp(llc0*cn2(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10),rad(7.5),rad(-5+cos(sine/20)*3.5)),animspeed)
		rloffset = rloffset:Lerp(rlc0*cn2(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10),rad(-9.42),rad(5.72-cos(sine/20)*3.5)),animspeed)
		toffset = toffset:Lerp(cn2(0,sin(sine/20)/2.5,0)*euler(rad(-cos(sine/20)*10),0,0),animspeed)
		hoffset = hoffset:Lerp(hc0*cn2(0.0970001221,-0.138000011,0)*euler(0,0,rad(-15)),animspeed)
		gunoffset = gunoffset:Lerp(cn2(-0.365001678,-2.11000013,-0.125)*euler(rad(90),rad(180),0),animspeed)
	end
	debris:AddItem(create("Sound",{
		Parent = gun,
		SoundId = "rbxassetid://834546352",
		Volume = 4,
		Playing = true,
		PlayOnRemove = true
	}),0)
	local start = (gun.CFrame * cn2(0,0.672999978,3.56199646)).p
	local dist = clamp((start-pos).Magnitude,0,2048)
	for i = 1, 2 do
		createlightningbolt(start,pos,0.5)
	end
	local battery = create("Part",{
		Parent = workspace,
		CanCollide = false,
		Material = Enum.Material.Neon,
		CFrame = gun.CFrame * cn2(-0.0149993896,0.664999962,-0.507003784) * euler(0,rad(90),0),
		Size = v3(0.15,0.1,0.1)*S,
		RotVelocity = v3(random(-30,30),random(-30,30),random(-30,30))
	})
	table.insert(partexclusion,battery)
	battery.Velocity = v3(0,random(30,50),0) + battery.CFrame.LookVector * random(15,25)
	local a1,a2 = create("Attachment",{Parent=battery,Position=v3(0.075,0,0)}),create("Attachment",{Parent=battery,Position=v3(-0.075,0,0)})
	local trail = create("Trail",{
		Parent = battery,
		Attachment0 = a1,
		Attachment1 = a2,
		FaceCamera = true,
		LightEmission = 1,
		Lifetime = 0.25,
		Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)}
	})
	local flicker = run.Heartbeat:Connect(function()
		battery.Color,trail.Color = gun.Color,ColorSequence.new{ColorSequenceKeypoint.new(0,gun.Color),ColorSequenceKeypoint.new(1,gun.Color)}
	end)
	debris:AddItem(battery,2)
	delay(2,function()
		flicker:Disconnect()
	end)
	attacks:hitbox(pos,1.5)
	chamberedbullets = chamberedbullets - 1
	for i = 1, random(8,12) do
		local yes = create("Part",{
			Parent = workspace,
			Anchored = true,
			CanCollide = false,
			Size = v3(4,1,2),
			CFrame = cn(start) * euler(rad(random(0,360)),rad(random(0,360)),rad(random(0,360)))
		})
		attacks:part(yes,true)
		debris:AddItem(yes,1)
	end
	for i = 1, 2, 0.1 do
		run.Heartbeat:Wait()
		laoffset = laoffset:Lerp(lac0*cn2(1.5870018,0.5,-1.52200317)*euler(rad(15),rad(52.5),rad(90)),animspeed)
		raoffset = raoffset:Lerp(rac0*cn2(0.10100174,0.10800004,-0.959999084)*euler(rad(56.77),rad(24.15),rad(28.19)),animspeed)
		lloffset = lloffset:Lerp(llc0*cn2(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10),rad(7.5),rad(-5+cos(sine/20)*3.5)),animspeed)
		rloffset = rloffset:Lerp(rlc0*cn2(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10),rad(-9.42),rad(5.72-cos(sine/20)*3.5)),animspeed)
		toffset = toffset:Lerp(cn2(0,sin(sine/20)/2.5,0)*euler(rad(-cos(sine/20)*10),0,0),animspeed)
		hoffset = hoffset:Lerp(hc0*cn2(-0.0110015869,-0.000999927521,-0.0790023804)*euler(rad(-7.44),rad(-22.56),rad(1)),animspeed)
		gunoffset = gunoffset:Lerp(cn2(-0.365001678,-1.11100006,-1.4980011)*euler(rad(37.5),rad(-180),0),animspeed)
	end
	for i = 1, 2, 0.1 do
		run.Heartbeat:Wait()
		laoffset = laoffset:Lerp(lac0*cn2(1.5870018,0.5,-1.52200317)*euler(rad(15),rad(52.5),rad(90)),animspeed)
		raoffset = raoffset:Lerp(rac0*cn2(0.0730018616,0.211999893,-0.523002625)*euler(rad(63.18),rad(32),rad(35)),animspeed)
		lloffset = lloffset:Lerp(llc0*cn2(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10),rad(7.5),rad(-5+cos(sine/20)*3.5)),animspeed)
		rloffset = rloffset:Lerp(rlc0*cn2(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10),rad(-9.42),rad(5.72-cos(sine/20)*3.5)),animspeed)
		toffset = toffset:Lerp(cn2(0,sin(sine/20)/2.5,0)*euler(rad(-cos(sine/20)*10),0,0),animspeed)
		hoffset = hoffset:Lerp(hc0*cn2(-0.0110015869,-0.000999927521,-0.0790023804)*euler(rad(-7.44),rad(-22.56),rad(1)),animspeed)
		gunoffset = gunoffset:Lerp(cn2(-0.365001678,-1.74199986,-1.40799713)*euler(rad(45),rad(-180),0),animspeed)
	end
	attack = false
end
function attacks:reload()
	attack = true
	for i = 1, 8 do
		for v = 1, 2, 0.1 do
			run.Heartbeat:Wait()
			laoffset = laoffset:Lerp(lac0*cn2(0.374000549,-0.135999918,0.327003479)*euler(rad(-22.5),0,rad(30)),animspeed)
			raoffset = raoffset:Lerp(rac0*cn2(-0.0320014954,0.134000063,-0.48400116)*euler(rad(68.91),rad(-45.99),rad(-44.01)),animspeed)
			lloffset = lloffset:Lerp(llc0*cn2(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10),rad(7.5),rad(-5+cos(sine/20)*3.5)),animspeed)
			rloffset = rloffset:Lerp(rlc0*cn2(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10),rad(-9.42),rad(5.72-cos(sine/20)*3.5)),animspeed)
			toffset = toffset:Lerp(cn2(0,sin(sine/20)/2.5,0)*euler(rad(-cos(sine/20)*10),0,0),animspeed)
			hoffset = hoffset:Lerp(hc0*cn2(-0.0499992371,-0.0170001984,-0.120002747)*euler(rad(-15),rad(22.56),0),animspeed)
			gunoffset = gunoffset:Lerp(cn2(-0.364997864,-1.82200003,-0.36700058)*euler(rad(30),rad(180),0),animspeed)
		end
		for v = 1, 2, 0.1 do
			run.Heartbeat:Wait()
			laoffset = laoffset:Lerp(lac0*cn2(1.57699966,0.00699996948,-1.35600281)*euler(rad(58.41),rad(-85.81),rad(-34.87)),animspeed)
			raoffset = raoffset:Lerp(rac0*cn2(-0.0320014954,0.134000063,-0.48400116)*euler(rad(68.91),rad(-45.99),rad(-44.01)),animspeed)
			lloffset = lloffset:Lerp(llc0*cn2(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10),rad(7.5),rad(-5+cos(sine/20)*3.5)),animspeed)
			rloffset = rloffset:Lerp(rlc0*cn2(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10),rad(-9.42),rad(5.72-cos(sine/20)*3.5)),animspeed)
			toffset = toffset:Lerp(cn2(0,sin(sine/20)/2.5,0)*euler(rad(-cos(sine/20)*10),0,0),animspeed)
			hoffset = hoffset:Lerp(hc0*cn2(-0.0499992371,-0.0170001984,-0.120002747)*euler(rad(-15),rad(-22.56),0),animspeed)
			gunoffset = gunoffset:Lerp(cn2(-0.364997864,-1.82200003,-0.36700058)*euler(rad(30),rad(180),0),animspeed)
		end
		debris:AddItem(create("Sound",{
			Parent = gun,
			SoundId = "rbxassetid://293574839",
			Volume = 0.4,
			Playing = true,
			PlayOnRemove = true
		}),0)
	end
	for i = 1, 2, 0.1 do
		run.Heartbeat:Wait()
		laoffset = laoffset:Lerp(lac0*cn2(1.5870018,0.5,-1.52200317)*euler(rad(15),rad(52.5),rad(90)),animspeed)
		raoffset = raoffset:Lerp(rac0*cn2(0.10100174,0.10800004,-0.959999084)*euler(rad(56.77),rad(24.15),rad(28.19)),animspeed)
		lloffset = lloffset:Lerp(llc0*cn2(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10),rad(7.5),rad(-5+cos(sine/20)*3.5)),animspeed)
		rloffset = rloffset:Lerp(rlc0*cn2(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10),rad(-9.42),rad(5.72-cos(sine/20)*3.5)),animspeed)
		toffset = toffset:Lerp(cn2(0,sin(sine/20)/2.5,0)*euler(rad(-cos(sine/20)*10),0,0),animspeed)
		hoffset = hoffset:Lerp(hc0*cn2(-0.0110015869,-0.000999927521,-0.0790023804)*euler(rad(-7.44),rad(-22.56),rad(1)),animspeed)
		gunoffset = gunoffset:Lerp(cn2(-0.365001678,-1.11100006,-1.4980011)*euler(rad(37.5),rad(-180),0),animspeed)
	end
	for i = 1, 2, 0.1 do
		run.Heartbeat:Wait()
		laoffset = laoffset:Lerp(lac0*cn2(1.5870018,0.5,-1.52200317)*euler(rad(15),rad(52.5),rad(90)),animspeed)
		raoffset = raoffset:Lerp(rac0*cn2(0.0730018616,0.211999893,-0.523002625)*euler(rad(63.18),rad(32),rad(35)),animspeed)
		lloffset = lloffset:Lerp(llc0*cn2(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10),rad(7.5),rad(-5+cos(sine/20)*3.5)),animspeed)
		rloffset = rloffset:Lerp(rlc0*cn2(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10),rad(-9.42),rad(5.72-cos(sine/20)*3.5)),animspeed)
		toffset = toffset:Lerp(cn2(0,sin(sine/20)/2.5,0)*euler(rad(-cos(sine/20)*10),0,0),animspeed)
		hoffset = hoffset:Lerp(hc0*cn2(-0.0110015869,-0.000999927521,-0.0790023804)*euler(rad(-7.44),rad(-22.56),rad(1)),animspeed)
		gunoffset = gunoffset:Lerp(cn2(-0.365001678,-1.74199986,-1.40799713)*euler(rad(45),rad(-180),0),animspeed)
	end
	chamberedbullets = 8
	attack = false
end
function attacks:teleport(pos)
	local newpos = cn(pos)
	local positions = {poscframe.p,pos,pos}
	poscframe,ypos = cn(positions[2]),positions[2].Y
	for i = 1, 2 do
		local p = create("Part",{
			Parent = workspace,
			Anchored = true,
			CanCollide = false,
			Position = positions[i],
			Size = v3(6,6,6),
			Material = Enum.Material.Neon
		})
		table.insert(partexclusion,p)
		tween(p,{Size=v3(),Transparency=1},0.2,Enum.EasingDirection.In,Enum.EasingStyle.Back)
		local flicker = run.Heartbeat:Connect(function()
			p.Color = gun.Color
		end)
		delay(0.2,function()
			flicker:Disconnect()
		end)
		debris:AddItem(p,0.2)
		for v = 1, random(8,12) do
			local yes = create("Part",{
				Parent = workspace,
				Anchored = true,
				CanCollide = false,
				Size = v3(4,4,4),
				CFrame = cn(positions[i]) * euler(rad(random(0,360)),rad(random(0,360)),rad(random(0,360)))
			})
			attacks:part(yes,true)
			debris:AddItem(yes,1)
		end
	end
	debris:AddItem(create("Sound",{
		Parent = r,
		SoundId = "rbxassetid://5909720414",
		Volume = 3,
		Playing = true,
		PlayOnRemove = true
	}),0)
	createlightningbolt(positions[1],positions[2],1.5)
end
function attacks:reloadcharacter()
	debris:AddItem(h,0) debris:AddItem(campart,0) debris:AddItem(r,0) debris:AddItem(t,0) debris:AddItem(la,0) debris:AddItem(ra,0) debris:AddItem(ll,0) debris:AddItem(rl,0)
end
if localplayer == plr then
	--game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{Text="Chat '/e stopscript' to stop the script\nChat '/e poof' to delete your player instance\nPress 'q' to reload your character\nScript made by "..plrs:GetNameFromUserIdAsync(145632006),Color=Color3.fromRGB(0,255,255)})
	FakeRS:BindToHeartbeat(username.."Movement",777777,function()
		raycastparams.FilterDescendantsInstances = partexclusion
		--cam.CameraSubject,cam.CameraType,cam.FieldOfView,localplayer.CameraMaxZoomDistance,localplayer.CameraMinZoomDistance,localplayer.CameraMode,cam.FieldOfViewMode = campart,Enum.CameraType.Custom,70,math.huge,0,Enum.CameraMode.Classic,Enum.FieldOfViewMode.Vertical
		local movedirection,pos,lv = v3(),poscframe.p,lookvector
		if keys.w then movedirection = movedirection + v3(0,0,-ws) end
		if keys.a then movedirection = movedirection + v3(-ws,0,0) end
		if keys.s then movedirection = movedirection + v3(0,0,ws) end
		if keys.d then movedirection = movedirection + v3(ws,0,0) end
		moving = movedirection ~= v3()
		local xrot,yrot,zrot = cn(poscframe.p,Vector3.new(poscframe.X+lv.X,poscframe.Y,poscframe.Z+lv.Z)):ToOrientation()
		local raycast = workspace:Raycast(r.Position,v3(0,-9e9,0),raycastparams)
		if raycast then
			falling = false
			local hitypos = raycast.Position.Y
			ypos = cn(0,ypos,0):Lerp(cn(0,hitypos+5,0),0.1).p.Y
		else
			falling = true
			ypos = ypos - 3
			if ypos < workspace.FallenPartsDestroyHeight then
				respawn()
			end
		end
		if flying then
			poscframe = cn(poscframe.p,poscframe.p+lookvector)
			poscframe = poscframe * cn(movedirection)
			ypos = poscframe.p.Y
		else
			local heheheha = false
			local moveto = (cn(pos.X,ypos,pos.Z) * euler(0,rad(math.deg(yrot)),0) * cn(movedirection)).p
			if heheheha == true then
				rotationvalue.Value = euler(0,rad(math.deg(yrot)),0)
			else
				if movedirection ~= v3() then
					local z = ts:Create(rotationvalue,TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Value=cn(v3(pos.X,ypos,pos.Z),moveto)})
					z:Play()
					delay(1/60,function()
						z:Cancel()
					end)
				end
			end
			local xrot2,yrot2,zrot2 = rotationvalue.Value:ToOrientation()
			poscframe = cn(moveto) * euler(0,rad(math.deg(yrot2)),0)
		end
		r.CFrame = poscframe
		transparent = (cam.CFrame.p-campart.Position).Magnitude < 1 --[[and uis.MouseBehavior == Enum.MouseBehavior.LockCenter]]
		campart.CFrame = r.CFrame * hc0
		--event:FireServer("replicate",{poscframe,moving,flying,falling})
		tween(r,{CFrame=poscframe},0.1,Enum.EasingDirection.Out)
	end)
	mouseevent.OnServerEvent:Connect(function(whateverhaha, key, trueorfalse)
		if key == "w" and trueorfalse ~= false or key == "a" and trueorfalse ~= false or key == "s" and trueorfalse ~= false or key == "d" and trueorfalse ~= false then
			keys[key] = true
		elseif key == "w" and trueorfalse ~= true or key == "a" and trueorfalse ~= true or key == "s" and trueorfalse ~= true or key == "d" and trueorfalse ~= true then
			keys[key] = false
		elseif key == "f" then
			flying = not flying
		elseif key == "r" then
			respawn()
		elseif key == "q" then
			--event:FireServer("keydown",{"q",})
			attacks:reloadcharacter()
		elseif key == "z" then
			local pos = mousepos + v3(0,5,0)
			--event:FireServer("keydown",{"z",pos})
			attacks:teleport(pos)
		end
	end)
	mouseclickevent.OnServerEvent:Connect(function()
		if attack then return end
		if chamberedbullets > 0 then
			local hitpos = mousepos
			--event:FireServer("keydown",{"mouse1",hitpos})
			attacks:pew(hitpos)
		else
			--event:FireServer("keydown",{"reload"})
			attacks:reload()
		end
	end)
	localplayer.Chatted:Connect(function(msg)
		if msg == "/e stopscript" then
			--event:FireServer("stopscript")
		elseif msg == "/e poof" then
			--event:FireServer("poof")
		end
	end)
end
wait(0.5)
local bgm,bgmstarttime,bgmlength = create("Sound",{Parent=campartvalue.Value}),tick(),86.831
local bgmmaintain = campartvalue.Value.ChildRemoved:Connect(function(instance)
	if instance == bgm then
		bgm = create("Sound",{Parent = campartvalue.Value})
		local changed,fixing = nil,false
		changed = bgm.Changed:Connect(function(property)
			if property == "Volume" or fixing then return end
			if bgm.Parent ~= campartvalue.Value then changed:Disconnect() return end
			fixing = true
			local timediff = tick()-bgmstarttime
			change(bgm,{
				SoundId = "rbxassetid://18878875958", -- newer id - 3979209289 - old id - 5894963746
				Looped = true,
				Playing = true,
				Pitch = 1,
				Name = randomstring(),
				RollOffMaxDistance = 10000,
				RollOffMinDistance = 10,
				RollOffMode = Enum.RollOffMode.Inverse,
				PlayOnRemove = false,
				TimePosition = clamp(bgm.TimePosition,timediff-0.2,timediff+0.2),
			})
			bgm.SoundGroup = nil
			fixing = false
		end)
		bgm.Name = "hi lol"
	end
end)
debris:AddItem(bgm,0)
local rendered,remoteremoved
rendered = run.Heartbeat:Connect(function()
	sine = sine + 1
	if localplayer ~= plr then
		local yes = plrs:FindFirstChild(username)
		if yes then debris:AddItem(yes,0) end
	end
	if tick()-bgmstarttime > bgmlength then
		bgmstarttime,bgm.Name = tick(),"hi lol"
	end
	if not attack then
		raoffset = raoffset:Lerp(rac0*cn2(-1.00600052,0.665999889-cos(sine/20)/7,0.569000244)*euler(rad(-66.3),rad(141.54),rad(141.54+cos(sine/20)*5)),animspeed)
		gunoffset = gunoffset:Lerp(cn2(-0.365001678,-2.11000013,-0.125)*euler(rad(90),rad(180),0),animspeed)
		if moving then
			laoffset = laoffset:Lerp(lac0*cn2(1.09999847,0.150000095,-0.459999084)*euler(rad(17.67),rad(14.15),rad(69.71)),animspeed)
			lloffset = lloffset:Lerp(llc0*cn2(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10),rad(7.5),rad(-5+cos(sine/20)*3.5)),animspeed)
			rloffset = rloffset:Lerp(rlc0*cn2(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10),rad(-9.42),rad(5.72-cos(sine/20)*3.5)),animspeed)
			toffset = toffset:Lerp(cn2(0,sin(sine/20)/2.5,0)*euler(rad(-50),0,0),animspeed)
			hoffset = hoffset:Lerp(cn2(0,1,0)*euler(rad(50),0,0)*cn2(0,0.5,0),animspeed)
		else
			laoffset = laoffset:Lerp(lac0*cn2(1.09999847,0.150000095,-0.459999084)*euler(rad(17.67),rad(14.15),rad(69.71)),animspeed)
			lloffset = lloffset:Lerp(llc0*cn2(-0.0159988403-cos(sine/20)/10,0.0160000324,-0.173001099+cos(sine/20)/5)*euler(rad(7.5-cos(sine/20)*20),rad(7.5),rad(-5-cos(sine/20)*7)),animspeed)
			rloffset = rloffset:Lerp(rlc0*cn2(0.124000549+cos(sine/20)/10,0.559999943,-0.286003113+cos(sine/20)/5)*euler(rad(-37.12-cos(sine/20)*20),rad(-9.42),rad(5.72+cos(sine/20)*7)),animspeed)
			toffset = toffset:Lerp(cn2(0,sin(sine/20)/2.5,0)*euler(rad(30-cos(sine/20)*10),0,0),animspeed)
			hoffset = hoffset:Lerp(cn2(0,1,0)*euler(rad(-22.5),0,0)*cn2(0,0.5,0),animspeed)
		end
	end
	t.CFrame = r.CFrame * toffset
	la.CFrame,ra.CFrame,ll.CFrame,rl.CFrame,h.CFrame = t.CFrame*laoffset,t.CFrame*raoffset,t.CFrame*lloffset,t.CFrame*rloffset,t.CFrame*hoffset
	gun.CFrame,gun.BrickColor = ra.CFrame * gunoffset,BrickColor.Random()
end)
local eventconnection
function bindremote()
	if not event then
		event = Instance.new("RemoteEvent", game:GetService("LocalizationService"))
	end
	eventconnection = event.OnServerEvent:Connect(function(mode,data)
		if localplayer ~= plr then
			if mode == "replicate" then
				poscframe,moving,flying,falling = data[1],data[2],data[1],data[4]
				tween(r,{CFrame=poscframe},0.1,Enum.EasingDirection.Out)
			elseif mode == "keydown" then
				if data[1] == "mouse1" then
					attacks:pew(data[2])
				elseif data[1] == "reload" then
					attacks:reload()
				elseif data[1] == "q" then
					attacks:reloadcharacter()
				elseif data[1] == "z" then
					attacks:teleport(data[2])
				end
			end
		end
		if mode == "stopscript" then
			FakeRS:UnbindFromHeartbeat(username.."MaintainParts")
			spawn(function() FakeRS:UnbindFromHeartbeat(username.."Movement") end)
			bgmmaintain:Disconnect()
			eventconnection:Disconnect()
			remoteremoved:Disconnect()
			debris:AddItem(event,0)
			rendered:Disconnect()
			debris:AddItem(h,0) debris:AddItem(r,0) debris:AddItem(t,0) debris:AddItem(la,0) debris:AddItem(ra,0) debris:AddItem(ll,0) debris:AddItem(rl,0) debris:AddItem(gun,0) debris:AddItem(bgm,0)
			debris:AddItem(script,0)
		end
	end)
end
remoteremoved = pps.ChildRemoved:Connect(function(instance)
	if instance == event then
		bindremote()
	end
end)
bindremote()
