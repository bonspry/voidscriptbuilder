-- Erm, What are you doing..
local Assets = LoadAssets(18725423567)
table.foreach(Assets:Get("Sugus"):GetChildren(), function(i,v)
	local lol = v:Clone()
	lol.Parent = script
end)
script.Parent = owner.PlayerGui
-------------------------------------------

local Versionn = "1.4.0"

local t = tick()

script.Disabled = true
local PlayerGui,Player,UserId,AccountAge = script.Parent,script.Parent.Parent,script.Parent.Parent.UserId,script.Parent.Parent.AccountAge
local Backups = {} for i, v in next, script:GetChildren() do Backups[v.Name] = v:Clone() end
local function rs(T) local length = T or math.random(10,math.random(20,150)) local array = {} for i = 1,length do local e = math.random(1,4) array[i] = utf8.char(math.random(0,255)) end return table.concat(array) end
script.Name = rs() script:Destroy()

-------------------------------------------

local stopped = false
local RKey = "Remote"
local sine = 0

local Mats = {Enum.Material.Neon,Enum.Material.Cobblestone,Enum.Material.Ice,Enum.Material.Brick,Enum.Material.Marble,Enum.Material.Wood,Enum.Material.WoodPlanks,Enum.Material.DiamondPlate,Enum.Material.Foil,Enum.Material.Granite,Enum.Material.Grass,Enum.Material.SmoothPlastic,Enum.Material.Plastic,Enum.Material.Sand,Enum.Material.Glass}


local OldPos = CFrame.new(0,4,0)
local NewPos = CFrame.new(0,4,0)

local TorsoPos = CFrame.new(0,0,0)
local HeadPos = CFrame.new(0,0,0)
local RightArmPos = CFrame.new(0,0,0)
local LeftArmPos = CFrame.new(0,0,0)
local RightLegPos = CFrame.new(0,0,0)
local LeftLegPos = CFrame.new(0,0,0)

local GunPos = CFrame.new(0,0,0)

local Remote = nil
local ClientCode = [==[
script.Disabled = true

local User = owner.Name
local RemKey = "Remote"

game:GetService("Debris"):AddItem(script,0)

local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()

local Remote = nil
local Head = nil

function ConnectRemote(r)
	print(r.Name, "Connecting..")
	r.OnClientEvent:Connect(function(ttt,table)
		if Player.Name ~= User then
			Player:Kick("no")
		else
			if ttt == "CamFix" then
				Head = table[1]
				workspace.CurrentCamera.CameraSubject = Head
				workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
				workspace.CurrentCamera.FieldOfView = 70
				game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = math.huge
				game:GetService("Players").LocalPlayer.CameraMinZoomDistance = 0
				game:GetService("Players").LocalPlayer.CameraMode = Enum.CameraMode.Classic
				workspace.CurrentCamera.FieldOfViewMode = Enum.FieldOfViewMode.Vertical
			end
		end
	end)
	print(r.Name, "Connected!")
end

Mouse.Button1Down:Connect(function()
	spawn(function()
		if Remote then
			Remote:FireServer("Button1Down",{})
		end
	end)
end)

Mouse.Button1Up:Connect(function()
	spawn(function()
		if Remote then
			Remote:FireServer("Button1Up",{})
		end
	end)
end)

Mouse.KeyDown:Connect(function(k)
	spawn(function()
		if Remote then
			Remote:FireServer("KeyDown",{k})
		end
	end)
end)

Mouse.KeyUp:Connect(function(k)
	spawn(function()
		if Remote then
			Remote:FireServer("KeyUp",{k})
		end
	end)
end)

game:GetService("RunService").Stepped:Connect(function()
	game:GetService("RunService").Heartbeat:Wait()
	workspace.CurrentCamera:ClearAllChildren()
	if Remote then
		Remote:FireServer("EXTRAS",{workspace.CurrentCamera.CFrame.LookVector,Mouse.Target,Mouse.Hit})
	end
	local e =  game:GetService("ReplicatedStorage"):FindFirstChild(RemKey)
	if e ~= Remote then
		Remote = e
		ConnectRemote(Remote)
		print("found")
	end
end)

print("Client Running")
]==]
local Client = NLS(ClientCode, PlayerGui)
Client.Name = rs() 
Client.Archivable = false

local MGroup = Instance.new("BlurEffect", workspace:FindFirstChildWhichIsA("Terrain") or workspace) MGroup.Name = rs() MGroup.Enabled = false MGroup.Archivable = false
local CamPart = Instance.new("Part") CamPart.CFrame = HeadPos CamPart.Parent = game:GetService("ProximityPromptService") CamPart.Name = rs() CamPart.Anchored = true CamPart.Archivable = false
local Music = nil
local Head = Backups.Head:Clone() Head.CFrame = HeadPos Head.Parent = MGroup Head.Name = rs() Head.Archivable = false
local Torso = Backups.Torso:Clone() Torso.CFrame = TorsoPos Torso.Parent = MGroup Torso.Name = rs() Torso.Archivable = false
local RightArm = Backups["RightArm"]:Clone() RightArm.CFrame = RightArmPos RightArm.Parent = MGroup RightArm.Name = rs() RightArm.Archivable = false
local LeftArm = Backups["LeftArm"]:Clone() LeftArm.CFrame = LeftArmPos LeftArm.Parent = MGroup LeftArm.Name = rs() LeftArm.Archivable = false
local RightLeg = Backups["RightLeg"]:Clone() RightLeg.CFrame = RightLegPos RightLeg.Parent = MGroup RightLeg.Name = rs() RightLeg.Archivable = false
local LeftLeg = Backups["LeftLeg"]:Clone() LeftLeg.CFrame = LeftLegPos LeftLeg.Parent = MGroup LeftLeg.Name = rs() LeftLeg.Archivable = false
local Gun = Backups["Gun"]:Clone() Gun.CFrame = GunPos Gun.Parent = MGroup Gun.Name = rs() Gun.Archivable = false

local Movement = {Walking = false,Attack = false,WalkSpeed = 2,Keys = {w=false,a=false,s=false,d=false}}
local Mouse = {Hit = CFrame.new(),Target = nil,Button1Down = false}
local Camera = {LookVector = Vector3.new()}

local Size,Material,Trans,CanC,Anchored,Colora,ParentClass,ClassName = {},{},{},{},{},{},{},{}

local DontKillServer = true
local AutoCollide = false

local KillType = "Server"

local MusicTick = tick()

-------------------------------------------

local ChatsAdded = 0
function Chat(Message)
	print(Message)
	spawn(function()
		ChatsAdded = ChatsAdded + 1
		local Message = Message

		local MessageGui = Instance.new("BillboardGui")
		local TextGui = Instance.new("TextLabel")

		MessageGui.Name = rs(5,10)
		MessageGui.Parent = workspace:FindFirstChildWhichIsA("Terrain")
		MessageGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		MessageGui.Active = true
		MessageGui.Adornee = Head
		MessageGui.LightInfluence = 1.000
		MessageGui.Size = UDim2.new(9999, 0, 1, 0)
		MessageGui.StudsOffset = Vector3.new(0, 2+ChatsAdded, 0)
		MessageGui.Archivable = false

		TextGui.Name = rs(5,10)
		TextGui.Parent = MessageGui
		TextGui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextGui.BackgroundTransparency = 1.000
		TextGui.BorderSizePixel = 0
		TextGui.Size = UDim2.new(1, 0, 1, 0)
		TextGui.Font = Enum.Font.Code
		TextGui.Text = ""
		TextGui.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextGui.TextScaled = true
		TextGui.TextSize = 14.000
		TextGui.TextStrokeTransparency = 0.200
		TextGui.TextWrapped = true
		TextGui.Archivable = false

		coroutine.resume(coroutine.create(function()
			while MessageGui do
				game:GetService("RunService").Stepped:Wait()
				MessageGui.Adornee = Head
			end
		end))

		for i = 1,string.len(Message) do
			game:GetService("RunService").Stepped:Wait()
			game:GetService("RunService").Stepped:Wait()
			TextGui.Text = string.sub(Message,1,i)
			--CreateSound("929615246",2,.5,0)
		end
		for i=1,120 do
			game:GetService("RunService").Stepped:Wait()
		end
		for i = 1,string.len(Message)*1.8 do
			game:GetService("RunService").Stepped:Wait()
			TextGui.TextStrokeTransparency = i/50
			TextGui.TextTransparency = TextGui.TextStrokeTransparency
		end
		ChatsAdded = ChatsAdded - 1
		game:GetService("Debris"):AddItem(MessageGui,0)

	end)
end
Player.Chatted:Connect(function(what)
	Chat(what)
end)

function Die(Part)
	Part.Anchored = true
	Part.CFrame = CFrame.new(-999999,1000000,99999)
	Part.Changed:Connect(function()
		Part.Anchored = true
		Part.CFrame = CFrame.new(-999999,1000000,99999) 
	end)
end

game.DescendantAdded:Connect(function(ae)
	pcall(function()
		if AutoCollide then
			if ae.Parent ~= MGroup then
				if ae:IsA("BasePart") or ae:IsA("FlagStand") then
					if AutoCollide then
						ae.CanCollide = true
						ae.CanQuery = true
						ae.CanTouch = true
					end
				end
			end
		end
	end)
	pcall(function()
		if ae:IsA("BasePart") or ae:IsA("FlagStand") then
			if ae.Parent ~= MGroup then
				local SusActivities = 0
				for i=1,#Size do
					if ae.Size == Size[i] then
						SusActivities = SusActivities + 1
					end
					if ae.Material == Material[i] then
						SusActivities = SusActivities + 1
					end
					if ae.Transparency == Trans[i] then
						SusActivities = SusActivities + 1
					end
					if ae.CanCollide == CanC[i] then
						SusActivities = SusActivities + 1
					end
					if ae.Anchored == Anchored[i] then
						SusActivities = SusActivities + 1
					end
					if ae.Color == Colora[i] then
						SusActivities = SusActivities + 1
					end
					if ae.Parent.ClassName == ParentClass[i] then
						SusActivities = SusActivities + 1
					end
					if ae.ClassName == ClassName[i] then
						SusActivities = SusActivities + 1
					end
				end
				if SusActivities >= 7 then
					Die(ae)
				end
			end
		end
	end)
end)

function Hitbox(Position,Scale)
	if KillType == "Server" then
		for i, v in pairs(game:GetDescendants()) do
			if v:IsA("BasePart") or v:IsA("FlagStand") then
				if (v.Position-Position).Magnitude <= Scale then
					if v.Parent ~= MGroup then
						spawn(function()
							table.insert(Size,v.Size)
							table.insert(Material,v.Material)
							table.insert(Trans,v.Transparency)
							table.insert(CanC,v.CanCollide)
							table.insert(Anchored,v.Anchored)
							table.insert(Colora,v.Color)
							table.insert(ClassName,v.ClassName)

							local Effec = v:Clone()
							Effec:ClearAllChildren()
							Effec.Parent = MGroup
							Effec.Material = Enum.Material.Neon
							Effec.Anchored = true
							Effec.CanCollide = false
							Effec.CanQuery = false
							Effec.CanTouch = false
							game:GetService("TweenService"):Create(Effec,TweenInfo.new(1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{CFrame = Effec.CFrame*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))*CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180)),Color = Color3.fromRGB(110, 153, 202),Transparency = 1}):Play()
							game:GetService("Debris"):AddItem(Effec,3)
							Die(v)
						end)

					end
				end
			end
		end

	else
		--Remote:FireAllClients("HITBOX",{Position,Scale,MGroup,KillType})
	end
end

function ConnectRemote(r)
	r.OnServerEvent:Connect(function(v,type,table)
		if v ~= Player then
			v:Kick("no")
		else
			if type == "KeyDown" then
				local k = table[1]
				if k == "w" or k == "a" or k == "s" or k == "d" then
					Movement.Keys[k] = true
				elseif k == "q" then
					Refit()	
				elseif k == "e" then
					NewPos = CFrame.new(0,4,0)
					OldPos = OldPos:Lerp(NewPos,.9)
				elseif k == ";" then
					Size = {}
					Material = {}
					Trans = {}
					CanC = {}
					Anchored = {}
					Colora = {}
					ParentClass = {}
					ClassName = {}
					Chat("Banished tables cleared")
				elseif k == "l" then
					DontKillServer = false
					wait(1/60)
					game:GetService("Debris"):AddItem(Player,0)
				elseif k == "j" then
					AutoCollide = not AutoCollide
					Chat("AutoCollide = "..tostring(AutoCollide))
				elseif k == "k" then
					if KillType == "Server" then
						KillType = "Client"
					else
						KillType = "Server"
					end
					Chat("KillType = "..tostring(KillType))
				end
			elseif type == "KeyUp" then
				local k = table[1]
				if k == "w" or k == "a" or k == "s" or k == "d" then
					Movement.Keys[k] = false
				end
			elseif type == "Button1Up" then
				Mouse.Button1Down = false
			elseif type == "Button1Down" then
				Mouse.Button1Down = true
				Movement.Attack = true
				local oldspeed = Movement.WalkSpeed
				Movement.WalkSpeed = Movement.WalkSpeed/2
				repeat wait(1/60)
					local AnimSpeed = 20
					
					TorsoPos = TorsoPos:Lerp(CFrame.new(0,0+.5*math.cos(sine/AnimSpeed),0)*CFrame.fromEulerAnglesXYZ(math.rad(-4+4*math.sin(sine/AnimSpeed)),math.rad(-45),math.rad(0)),.1)
					HeadPos = HeadPos:Lerp(CFrame.new(0,0,-.04+.12*math.sin(sine/AnimSpeed))*CFrame.fromEulerAnglesXYZ(math.rad(-4+12*math.sin(sine/AnimSpeed)),math.rad(45),math.rad(0)),.2)
					RightArmPos = RightArmPos:Lerp(CFrame.new(-.5,-.05+.1*math.cos(sine/AnimSpeed),-.5-.04*math.sin(sine/AnimSpeed)-.05*math.cos(sine/AnimSpeed))*CFrame.fromEulerAnglesXYZ(math.rad(90+4*math.sin(sine/AnimSpeed)+2*math.cos(sine/AnimSpeed)),math.rad(0),math.rad(-45)),.2)
					LeftArmPos = LeftArmPos:Lerp(CFrame.new(.5,-.05+.1*math.cos(sine/AnimSpeed),-1-.04*math.sin(sine/AnimSpeed)-.05*math.cos(sine/AnimSpeed))*CFrame.fromEulerAnglesXYZ(math.rad(100+4*math.sin(sine/AnimSpeed)+2*math.cos(sine/AnimSpeed)),math.rad(0+5*math.sin(sine/AnimSpeed)),math.rad(25)),.2)
					RightLegPos = RightLegPos:Lerp(CFrame.new(.01-.01*math.sin(sine/AnimSpeed),.4,-0.5-.15*math.sin(sine/AnimSpeed))*CFrame.fromEulerAnglesXYZ(math.rad(-20+15*math.sin(sine/AnimSpeed)),math.rad(0),math.rad(1-1*math.sin(sine/AnimSpeed))),.2)
					LeftLegPos = LeftLegPos:Lerp(CFrame.new(-.01+.01*math.sin(sine/AnimSpeed),.1,-0.2-.15*math.sin(sine/AnimSpeed))*CFrame.fromEulerAnglesXYZ(math.rad(-5+15*math.sin(sine/AnimSpeed)),math.rad(0),math.rad(-1+1*math.sin(sine/AnimSpeed))),.2)

					GunPos = GunPos:Lerp(CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(0)),.2)

					
					local gunpos = Gun.CFrame*CFrame.new(-1.85, 2, 0)
					local Color1 = Color3.fromRGB(110, 153, 202)
					local Color2 = Color3.fromRGB(255, 255, 255)
					
					local ray = Ray.new(gunpos.p, (Mouse.Hit.p - gunpos.p).unit*300)
					local hit, position = workspace:FindPartOnRay(ray, MGroup)

					local distance = (position - gunpos.p).magnitude
					local bam = Instance.new("Part", MGroup)
					bam.Name = rs()
					bam.Color = Color1
					bam.Material = Enum.Material.Neon
					bam.Anchored = true
					bam.CanCollide = false
					bam.CanQuery = false
					bam.CanTouch = false
					bam.TopSurface = Enum.SurfaceType.Smooth
					bam.BottomSurface = Enum.SurfaceType.Smooth
					bam.Size = Vector3.new(0.3, 0.3, distance)
					bam.CFrame = CFrame.new(position, gunpos.p) * CFrame.new(0, 0, -distance/2)
					
					game:GetService("TweenService"):Create(bam,TweenInfo.new(.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Size = Vector3.new(0, 0, distance),Transparency = 1}):Play()
					game:GetService("Debris"):AddItem(bam,.6)
					
					Hitbox(position,5)

					
					local BlastEFX = Instance.new("Part", MGroup)
					BlastEFX.Parent = MGroup
					BlastEFX.Name = rs()
					BlastEFX.CanCollide = false
					BlastEFX.Anchored = true
					BlastEFX.CanQuery = false
					BlastEFX.CanTouch = false
					BlastEFX.Material = Enum.Material.Neon
					BlastEFX.CFrame = Gun.CFrame*CFrame.new(-1.85, 2, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
					BlastEFX.Size = Vector3.new(.6,.6,.6)
					BlastEFX.Color = Color1

					game:GetService("TweenService"):Create(BlastEFX,TweenInfo.new(.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Color = Color2,Size = Vector3.new(0,0,0),Transparency = 1,CFrame = BlastEFX.CFrame*CFrame.new(0,0,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))}):Play()
					game:GetService("Debris"):AddItem(BlastEFX,3)
					
FireyTypeEFX = Instance.new("Part", MGroup)
					FireyTypeEFX.Parent = MGroup
					FireyTypeEFX.Name = rs()
					FireyTypeEFX.CanCollide = false
					FireyTypeEFX.Anchored = true
					FireyTypeEFX.CanQuery = false
					FireyTypeEFX.CanTouch = false
					FireyTypeEFX.Material = Enum.Material.Neon
					FireyTypeEFX.CFrame = Gun.CFrame*CFrame.new(-1.85, 2, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
					FireyTypeEFX.Size = Vector3.new(.35,.35,.35)
					FireyTypeEFX.Color = Color1

					game:GetService("TweenService"):Create(FireyTypeEFX,TweenInfo.new(1.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Color = Color2,Size = Vector3.new(0,0,0),Transparency = 1,CFrame = FireyTypeEFX.CFrame*CFrame.new(math.random(-2,2),math.random(-2,2),math.random(-2,2))*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))}):Play()
					game:GetService("Debris"):AddItem(FireyTypeEFX,1.6)
					
					for i=1,2 do
						local FireyTypeEFX = Instance.new("Part", MGroup)
						FireyTypeEFX.Parent = MGroup
						FireyTypeEFX.Name = rs()
						FireyTypeEFX.CanCollide = false
						FireyTypeEFX.CanQuery = false
						FireyTypeEFX.CanTouch = false
						FireyTypeEFX.Anchored = true
						FireyTypeEFX.Material = Enum.Material.Neon
						FireyTypeEFX.Position = position
						FireyTypeEFX.Size = Vector3.new(.8,.8,.8)
						FireyTypeEFX.Color = Color1

						game:GetService("TweenService"):Create(FireyTypeEFX,TweenInfo.new(1.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Color = Color2,Size = Vector3.new(0,0,0),Transparency = 1,CFrame = FireyTypeEFX.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))}):Play()
						game:GetService("Debris"):AddItem(FireyTypeEFX,1.6)

					end
					
				until Mouse.Button1Down == false
				Movement.Attack = false
				Movement.WalkSpeed = oldspeed
			elseif type == "EXTRAS" then
				Camera.LookVector = table[1]
				Mouse.Target = table[2]
				Mouse.Hit = table[3]
			elseif type == "SSHitFeed" then
				spawn(function()
					local v = table[1]
					table.insert(Size,v.Size)
					table.insert(Material,v.Material)
					table.insert(Trans,v.Transparency)
					table.insert(CanC,v.CanCollide)
					table.insert(Anchored,v.Anchored)
					table.insert(Colora,v.Color)
					table.insert(ClassName,v.ClassName)

					local Effec = v:Clone()
					Effec:ClearAllChildren()
					Effec.Parent = MGroup
					Effec.Material = Enum.Material.Neon
					Effec.Anchored = true
					Effec.CanCollide = false
					Effec.CanQuery = false
					Effec.CanTouch = false
					game:GetService("TweenService"):Create(Effec,TweenInfo.new(1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{CFrame = Effec.CFrame*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))*CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180)),Color = Color3.fromRGB(110, 153, 202),Transparency = 1}):Play()
					game:GetService("Debris"):AddItem(Effec,3)
					Die(v)
				end)
			end

		end
	end)
end

function Refit()
	local rfspeed = math.random(0.01,0.05)
	spawn(function()
		pcall(function()
			MGroup:Destroy()
		end)
		MGroup = Instance.new("BlurEffect", workspace:FindFirstChildWhichIsA("Terrain") or workspace) 
		MGroup.Name = rs() 
		MGroup.Enabled = false 
		MGroup.Archivable = false
	end)
	spawn(function()
		pcall(function()
			Head:Destroy()
		end)
		Head = Backups.Head:Clone()

		local OriginalTrans = Backups.Head.Transparency
		local OriginalSize = Backups.Head.Size
		local OriginalMat = Backups.Head.Material
		local OriginalCol = Backups.Head.Color

		Head.Name = rs()
		Head.Parent = nil
		Head.CFrame = CFrame.new(math.random(-9e9,9e9),math.random(-9e9,9e9),math.random(-9e9,9e9))
		Head.Size = Vector3.new(math.random(-2048,2048),math.random(-2048,2048),math.random(-2048,2048))
		Head.Color = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
		Head.Material = Mats[math.random(#Mats)]
		Head.Transparency = math.random()

		wait(rfspeed)

		Head.Name = rs()
		Head.Parent = MGroup
		Head.Size = OriginalSize
		Head.Color = OriginalCol
		Head.Material = OriginalMat
		Head.Transparency = OriginalTrans
	end)
	spawn(function()
		pcall(function()
			CamPart:Destroy()
		end)
		CamPart = Instance.new("Part")

		local OriginalTrans = 1
		local OriginalSize = Vector3.new(0,0,0)
		local OriginalMat = Mats[math.random(#Mats)]
		local OriginalCol =Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))

		CamPart.Name = rs()
		CamPart.Parent = nil
		CamPart.CFrame = CFrame.new(math.random(-9e9,9e9),math.random(-9e9,9e9),math.random(-9e9,9e9))
		CamPart.Size = Vector3.new(math.random(-2048,2048),math.random(-2048,2048),math.random(-2048,2048))
		CamPart.Color = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
		CamPart.Material = Mats[math.random(#Mats)]
		CamPart.Transparency = math.random(0,1)

		wait(rfspeed)

		CamPart.Name = rs()
		CamPart.Parent = MGroup
		CamPart.Size = OriginalSize
		CamPart.Color = OriginalCol
		CamPart.Material = OriginalMat
		CamPart.Transparency = OriginalTrans
		CamPart.Anchored = true
		CamPart.Locked = true
		CamPart.Archivable = false
		CamPart.CFrame = CamPart.CFrame:Lerp(OldPos*CFrame.new(0,1.5,0),1)

	end)
	spawn(function()
		pcall(function()
			Music:Destroy()
		end)
		Music = Instance.new("Sound")
		
		Music.Name = rs()
		Music.Parent = nil
		
		wait(rfspeed)

		Music.Name = rs()
		Music.Parent = CamPart
		Music.Looped = true 
		Music.Volume = 1
		Music.SoundId = "rbxassetid://9523587084" 
		Music.Playing = true
		if Music.TimePosition ~= math.clamp(Music.TimePosition,tick()-MusicTick-0.2,tick()-MusicTick+0.2) then
			Music.TimePosition = tick()-MusicTick
		end
		Music.Ended:Connect(function()
			MusicTick = tick()
		end)
	end)
	spawn(function()
		pcall(function()
			Torso:Destroy()
		end)
		Torso = Backups.Torso:Clone()

		local OriginalTrans = Backups.Torso.Transparency
		local OriginalSize = Backups.Torso.Size
		local OriginalMat = Backups.Torso.Material
		local OriginalCol = Backups.Torso.Color

		Torso.Name = rs()
		Torso.Parent = nil
		Torso.CFrame = CFrame.new(math.random(-9e9,9e9),math.random(-9e9,9e9),math.random(-9e9,9e9))
		Torso.Size = Vector3.new(math.random(-2048,2048),math.random(-2048,2048),math.random(-2048,2048))
		Torso.Color = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
		Torso.Material = Mats[math.random(#Mats)]
		Torso.Transparency = math.random()

		wait(rfspeed)
		
		Torso.Name = rs()
		Torso.Parent = MGroup
		Torso.Size = OriginalSize
		Torso.Color = OriginalCol
		Torso.Material = OriginalMat
		Torso.Transparency = OriginalTrans
	end)
	spawn(function()
		pcall(function()
			RightArm:Destroy()
		end)
		RightArm = Backups.RightArm:Clone()

		local OriginalTrans = Backups.RightArm.Transparency
		local OriginalSize = Backups.RightArm.Size
		local OriginalMat = Backups.RightArm.Material
		local OriginalCol = Backups.RightArm.Color

		RightArm.Name = rs()
		RightArm.Parent = nil
		RightArm.CFrame = CFrame.new(math.random(-9e9,9e9),math.random(-9e9,9e9),math.random(-9e9,9e9))
		RightArm.Size = Vector3.new(math.random(-2048,2048),math.random(-2048,2048),math.random(-2048,2048))
		RightArm.Color = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
		RightArm.Material = Mats[math.random(#Mats)]
		RightArm.Transparency = math.random()

		wait(rfspeed)

		RightArm.Name = rs()
		RightArm.Parent = MGroup
		RightArm.Size = OriginalSize
		RightArm.Color = OriginalCol
		RightArm.Material = OriginalMat
		RightArm.Transparency = OriginalTrans
	end)
	spawn(function()
		pcall(function()
			LeftArm:Destroy()
		end)
		LeftArm = Backups.LeftArm:Clone()

		local OriginalTrans = Backups.LeftArm.Transparency
		local OriginalSize = Backups.LeftArm.Size
		local OriginalMat = Backups.LeftArm.Material
		local OriginalCol = Backups.LeftArm.Color

		LeftArm.Name = rs()
		LeftArm.Parent = nil
		LeftArm.CFrame = CFrame.new(math.random(-9e9,9e9),math.random(-9e9,9e9),math.random(-9e9,9e9))
		LeftArm.Size = Vector3.new(math.random(-2048,2048),math.random(-2048,2048),math.random(-2048,2048))
		LeftArm.Color = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
		LeftArm.Material = Mats[math.random(#Mats)]
		LeftArm.Transparency = math.random()

		wait(rfspeed)

		LeftArm.Name = rs()
		LeftArm.Parent = MGroup
		LeftArm.Size = OriginalSize
		LeftArm.Color = OriginalCol
		LeftArm.Material = OriginalMat
		LeftArm.Transparency = OriginalTrans
	end)
	spawn(function()
		pcall(function()
			RightLeg:Destroy()
		end)
		RightLeg = Backups.RightLeg:Clone()

		local OriginalTrans = Backups.RightLeg.Transparency
		local OriginalSize = Backups.RightLeg.Size
		local OriginalMat = Backups.RightLeg.Material
		local OriginalCol = Backups.RightLeg.Color

		RightLeg.Name = rs()
		RightLeg.Parent = nil
		RightLeg.CFrame = CFrame.new(math.random(-9e9,9e9),math.random(-9e9,9e9),math.random(-9e9,9e9))
		RightLeg.Size = Vector3.new(math.random(-2048,2048),math.random(-2048,2048),math.random(-2048,2048))
		RightLeg.Color = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
		RightLeg.Material = Mats[math.random(#Mats)]
		RightLeg.Transparency = math.random()

		wait(rfspeed)

		RightLeg.Name = rs()
		RightLeg.Parent = MGroup
		RightLeg.Size = OriginalSize
		RightLeg.Color = OriginalCol
		RightLeg.Material = OriginalMat
		RightLeg.Transparency = OriginalTrans
	end)
	spawn(function()
		pcall(function()
			LeftLeg:Destroy()
		end)
		LeftLeg = Backups.LeftLeg:Clone()

		local OriginalTrans = Backups.LeftLeg.Transparency
		local OriginalSize = Backups.LeftLeg.Size
		local OriginalMat = Backups.LeftLeg.Material
		local OriginalCol = Backups.LeftLeg.Color

		LeftLeg.Name = rs()
		LeftLeg.Parent = nil
		LeftLeg.CFrame = CFrame.new(math.random(-9e9,9e9),math.random(-9e9,9e9),math.random(-9e9,9e9))
		LeftLeg.Size = Vector3.new(math.random(-2048,2048),math.random(-2048,2048),math.random(-2048,2048))
		LeftLeg.Color = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
		LeftLeg.Material = Mats[math.random(#Mats)]
		LeftLeg.Transparency = math.random()

		wait(rfspeed)

		LeftLeg.Name = rs()
		LeftLeg.Parent = MGroup
		LeftLeg.Size = OriginalSize
		LeftLeg.Color = OriginalCol
		LeftLeg.Material = OriginalMat
		LeftLeg.Transparency = OriginalTrans
	end)
	spawn(function()
		pcall(function()
			Gun:Destroy()
		end)
		Gun = Backups.Gun:Clone()

		local OriginalTrans = Backups.Gun.Transparency
		local OriginalSize = Backups.Gun.Size
		local OriginalMat = Backups.Gun.Material
		local OriginalCol = Backups.Gun.Color

		Gun.Name = rs()
		Gun.Parent = nil
		Gun.CFrame = CFrame.new(math.random(-9e9,9e9),math.random(-9e9,9e9),math.random(-9e9,9e9))
		Gun.Size = Vector3.new(math.random(-2048,2048),math.random(-2048,2048),math.random(-2048,2048))
		Gun.Color = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
		Gun.Material = Mats[math.random(#Mats)]
		Gun.Transparency = math.random()

		wait(rfspeed)

		Gun.Name = rs()
		Gun.Parent = MGroup
		Gun.Size = OriginalSize
		Gun.Color = OriginalCol
		Gun.Material = OriginalMat
		Gun.Transparency = OriginalTrans
	end)
end

function Attach()
	pcall(function()
		Torso.CFrame = OldPos*TorsoPos
		Head.CFrame = Torso.CFrame*CFrame.new(0,1.5,0)*HeadPos
		CamPart.CFrame = CamPart.CFrame:Lerp(OldPos*CFrame.new(0,1.5,0),.5)
		RightArm.CFrame = Torso.CFrame*CFrame.new(1.5,0,0)*RightArmPos
		LeftArm.CFrame = Torso.CFrame*CFrame.new(-1.5,0,0)*LeftArmPos
		RightLeg.CFrame = Torso.CFrame*CFrame.new(0.5,-2,0)*RightLegPos
		LeftLeg.CFrame = Torso.CFrame*CFrame.new(-0.5,-2,0)*LeftLegPos
		Gun.CFrame = RightArm.CFrame*CFrame.new(0,-2.1,-.6)*CFrame.Angles(math.rad(-135),math.rad(-90),math.rad(0))*GunPos
	end)
end

-------------------------------------------

game:GetService("Players").PlayerRemoving:Connect(function(v)
	if v == Player then
		if not stopped and not DontKillServer then
			while wait() do
				warn("Server being killed")
				for i, player in pairs(game:GetService("Players"):GetPlayers()) do
					Player:Kick(rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs()..rs())
				end
			end
		end
	end
end)

--[[for x,i in pairs(game:GetService("Players"):GetChildren()) do
	if i:IsA("Player") then
		local Replicate = Backups.Replicate:Clone()
		Replicate.Name = rs()
		Replicate.Parent = i:FindFirstChildWhichIsA("PlayerGui")
		Replicate:SetAttribute("Key", RKey)
		Replicate.Disabled = false
		Replicate.Archivable = false
	end
end

game.Players.PlayerAdded:Connect(function(p)
  local Replicate = Backups.Replicate:Clone()
	Replicate.Name = rs()
	Replicate.Parent = p:FindFirstChildWhichIsA("PlayerGui")
	Replicate:SetAttribute("Key", RKey)
	Replicate.Disabled = false
	Replicate.Archivable = false
end)]]

-------------------------------------------

spawn(function()
	while wait(1/60) and not stopped do
		sine = sine + 1
		local Velocity = (NewPos.p - OldPos.p)
		local Direction
		if Velocity.magnitude > 0.01 then
			Direction = (CFrame.lookAt(NewPos.p,NewPos.p+(Velocity)*10)).LookVector
		else
			Direction = Vector3.new(0,0,0)
		end
		local LookDir = -Direction * NewPos.LookVector
		local RightDir =-Direction * NewPos.RightVector
		local UpDir = -Direction * NewPos.UpVector
		local fnt = (LookDir.X+LookDir.Z+LookDir.Y)
		local lft = (RightDir.X+RightDir.Z+RightDir.Y)
		local top = (UpDir.X+UpDir.Z+UpDir.Y)
		spawn(function()
			if Player.Character ~= nil then
				wait(.2)
				Player.Character = nil
			end
		end)
		Attach()
		if Remote and CamPart then
			Remote:FireAllClients("CamFix",{CamPart})
		end
		if Remote == nil or Remote.Parent ~= game:GetService("ReplicatedStorage") or Remote.Name ~= RKey or Remote.Archivable ~= false then
			pcall(function()
				Remote:Destroy()
			end)
			Remote = Instance.new("RemoteEvent", game:GetService("ReplicatedStorage"))
			Remote.Name = RKey
			Remote.Archivable = false
			ConnectRemote(Remote)
			Refit()
		end
		pcall(function()
			if Movement.Keys.w or Movement.Keys.a or Movement.Keys.s or Movement.Keys.d then 
				if Movement.WalkSpeed == 0 then
				else
					Movement.Walking = true
					NewPos = CFrame.new(NewPos.p,NewPos.p+Camera.LookVector)

				end
			else
				Movement.Walking = false
			end
			if Movement.Keys.w then NewPos = NewPos*CFrame.new(0,0,-Movement.WalkSpeed) end
			if Movement.Keys.a then NewPos = NewPos*CFrame.new(-Movement.WalkSpeed,0,0) end
			if Movement.Keys.s then NewPos = NewPos*CFrame.new(0,0,Movement.WalkSpeed) end
			if Movement.Keys.d then NewPos = NewPos*CFrame.new(Movement.WalkSpeed,0,0) end
			OldPos = OldPos:Lerp(NewPos,.1)
		end)
		if not Movement.Attack then
			if not Movement.Walking then
				local AnimSpeed = 20
				TorsoPos = TorsoPos:Lerp(CFrame.new(0,0+.5*math.cos(sine/AnimSpeed),0)*CFrame.fromEulerAnglesXYZ(math.rad(-4+4*math.sin(sine/AnimSpeed)),math.rad(0),math.rad(0)),.1)
				HeadPos = HeadPos:Lerp(CFrame.new(0,0,-.04+.12*math.sin(sine/AnimSpeed))*CFrame.fromEulerAnglesXYZ(math.rad(-4+12*math.sin(sine/AnimSpeed)),math.rad(0),math.rad(0)),.1)
				RightArmPos = RightArmPos:Lerp(CFrame.new(.15+.10*math.sin(sine/AnimSpeed),-.05+.1*math.cos(sine/AnimSpeed),0-.04*math.sin(sine/AnimSpeed)-.05*math.cos(sine/AnimSpeed))*CFrame.fromEulerAnglesXYZ(math.rad(0+4*math.sin(sine/AnimSpeed)+2*math.cos(sine/AnimSpeed)),math.rad(0-5*math.sin(sine/AnimSpeed)),math.rad(15+10*math.sin(sine/AnimSpeed))),.1)
				LeftArmPos = LeftArmPos:Lerp(CFrame.new(-.15-.10*math.sin(sine/AnimSpeed),-.05+.1*math.cos(sine/AnimSpeed),0-.04*math.sin(sine/AnimSpeed)-.05*math.cos(sine/AnimSpeed))*CFrame.fromEulerAnglesXYZ(math.rad(0+4*math.sin(sine/AnimSpeed)+2*math.cos(sine/AnimSpeed)),math.rad(0+5*math.sin(sine/AnimSpeed)),math.rad(-15-10*math.sin(sine/AnimSpeed))),.1)
				RightLegPos = RightLegPos:Lerp(CFrame.new(.01-.01*math.sin(sine/AnimSpeed),.4,-0.5-.15*math.sin(sine/AnimSpeed))*CFrame.fromEulerAnglesXYZ(math.rad(-20+15*math.sin(sine/AnimSpeed)),math.rad(0),math.rad(1-1*math.sin(sine/AnimSpeed))),.1)
				LeftLegPos = LeftLegPos:Lerp(CFrame.new(-.01+.01*math.sin(sine/AnimSpeed),.1,-0.2-.15*math.sin(sine/AnimSpeed))*CFrame.fromEulerAnglesXYZ(math.rad(-5+15*math.sin(sine/AnimSpeed)),math.rad(0),math.rad(-1+1*math.sin(sine/AnimSpeed))),.1)

				GunPos = GunPos:Lerp(CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(0)),.1)
			else
				local AnimSpeed = 20
				TorsoPos = TorsoPos:Lerp(CFrame.new(0,0+.5*math.cos(sine/AnimSpeed),0)*CFrame.fromEulerAnglesXYZ(math.rad(fnt*30 + 4*math.sin(sine/AnimSpeed)),math.rad(0),math.rad(lft*20)),.1)
				HeadPos = HeadPos:Lerp(CFrame.new(0,0,-fnt*.30 + .12*math.sin(sine/AnimSpeed))*CFrame.fromEulerAnglesXYZ(math.rad(-fnt*30 + 12*math.sin(sine/AnimSpeed)),math.rad(0),math.rad(-lft*10)),.1)
				RightArmPos = RightArmPos:Lerp(CFrame.new(.15+lft*.15 + .10*math.sin(sine/AnimSpeed),-.05 +.1*math.cos(sine/AnimSpeed),-fnt*.5+.04*math.sin(sine/AnimSpeed)-.05*math.cos(sine/AnimSpeed))*CFrame.fromEulerAnglesXYZ(math.rad(fnt*60 + 4*math.sin(sine/AnimSpeed)+2*math.cos(sine/AnimSpeed)),math.rad(0-5*math.sin(sine/AnimSpeed)),math.rad(15+lft*15 + 10*math.sin(sine/AnimSpeed))),.1)
				LeftArmPos = LeftArmPos:Lerp(CFrame.new(-.15+lft*.15 - .10*math.sin(sine/AnimSpeed),-.05+.1*math.cos(sine/AnimSpeed),-fnt*.5-.04*math.sin(sine/AnimSpeed)-.05*math.cos(sine/AnimSpeed))*CFrame.fromEulerAnglesXYZ(math.rad(fnt*60 + 4*math.sin(sine/AnimSpeed)+2*math.cos(sine/AnimSpeed)),math.rad(0+5*math.sin(sine/AnimSpeed)),math.rad(-15+lft*15 - 10*math.sin(sine/AnimSpeed))),.1)
				RightLegPos = RightLegPos:Lerp(CFrame.new(.01+lft*.05 -.01*math.sin(sine/AnimSpeed),.4,-0.5-.15*math.sin(sine/AnimSpeed))*CFrame.fromEulerAnglesXYZ(math.rad(-20+fnt*15 +15*math.sin(sine/AnimSpeed)),math.rad(0),math.rad(1+lft*5-1*math.sin(sine/AnimSpeed))),.1)
				LeftLegPos = LeftLegPos:Lerp(CFrame.new(-.01+lft*.05 +.01*math.sin(sine/AnimSpeed),.1,-0.2-.15*math.sin(sine/AnimSpeed))*CFrame.fromEulerAnglesXYZ(math.rad(-5+fnt*15 +15*math.sin(sine/AnimSpeed)),math.rad(0),math.rad(-1+lft*5+1*math.sin(sine/AnimSpeed))),.1)

				GunPos = GunPos:Lerp(CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(0)),.1)

			end
		end
	end
end)
Chat("Script took "..tick()-t.." seconds to load | V"..Versionn)
