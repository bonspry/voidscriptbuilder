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
Beam0 = Instance.new("Beam")
LocalScript1 = Instance.new("LocalScript")
SphereHandleAdornment2 = Instance.new("SphereHandleAdornment")
Model3 = Instance.new("Actor")
Model4 = Instance.new("Actor")
Model5 = Instance.new("Actor")
Model6 = Instance.new("Actor")
Shirt7 = Instance.new("Shirt")
ForceField8 = Instance.new("ForceField")
Humanoid9 = Instance.new("Humanoid")
Model10 = Instance.new("Actor")
Part11 = Instance.new("Part")
Part12 = Instance.new("Part")
Part13 = Instance.new("Part")
Part14 = Instance.new("Part")
SpecialMesh15 = Instance.new("SpecialMesh")
Part16 = Instance.new("Part")
SpecialMesh17 = Instance.new("SpecialMesh")
Part18 = Instance.new("Part")
SpecialMesh19 = Instance.new("SpecialMesh")
Part20 = Instance.new("Part")
SpecialMesh21 = Instance.new("SpecialMesh")
Part22 = Instance.new("Part")
SpecialMesh23 = Instance.new("SpecialMesh")
Part24 = Instance.new("Part")
Part25 = Instance.new("Part")
Part26 = Instance.new("Part")
Part27 = Instance.new("Part")
Part28 = Instance.new("Part")
Part29 = Instance.new("Part")
Pants30 = Instance.new("Pants")
Part31 = Instance.new("Part")
SpecialMesh32 = Instance.new("SpecialMesh")
Part33 = Instance.new("Part")
SpecialMesh34 = Instance.new("SpecialMesh")
Folder35 = Instance.new("Folder")
Motor6D36 = Instance.new("Motor6D")
Motor6D37 = Instance.new("Motor6D")
Motor6D38 = Instance.new("Motor6D")
Motor6D39 = Instance.new("Motor6D")
Motor6D40 = Instance.new("Motor6D")
Motor6D41 = Instance.new("Motor6D")
Weld42 = Instance.new("Weld")
Weld43 = Instance.new("Weld")
Weld44 = Instance.new("Weld")
Weld45 = Instance.new("Weld")
Weld46 = Instance.new("Weld")
Weld47 = Instance.new("Weld")
Weld48 = Instance.new("Weld")
Weld49 = Instance.new("Weld")
Weld50 = Instance.new("Weld")
Part51 = Instance.new("Part")
Part52 = Instance.new("Part")
Trail53 = Instance.new("Trail")
Beam0.Name = "NeonBeam"
Beam0.Parent = mas
Beam0.FaceCamera = true
Beam0.LightEmission = 1
Beam0.LightInfluence = 1
Beam0.Segments = 5
Beam0.Transparency = NumberSequence.new(0,0)
Beam0.Width0 = 0.20000000298023224
Beam0.Width1 = 0.20000000298023224
LocalScript1.Name = "Replicate"
LocalScript1.Parent = mas
LocalScript1.Enabled = false
--[[table.insert(cors,sandbox(LocalScript1,function()
local ID = script:GetAttribute("ID")
local EN = script:GetAttribute("EventName")

script.Disabled = true

function Randomstring(Len)
	local String = ""
	for i=1,Len or math.random(5,20) do
		local Tbl = {
char(math.random(65,90)),
			string.char(math.random(97,122)),
			string.char(math.random(48,57))
		}
		String = String..Tbl[math.random(1,#Tbl)]
	end
	return String
end


local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()

local StoredMovement = CFrame.new(0,5,0)
local Keys = {w = false,a = false,s = false,d = false}
local Event = nil

local CameraSubject = nil
local CameraRotation = Vector2.new(0, 0)
local CameraZoom = 15

function FireServer(...)
	if Event and Event ~= nil then
		Event:FireServer(...)
	end
end

function ClientConnect(Event)
	Event.OnClientEvent:Connect(function(type,data)
		if type == "SetCS" then
			CameraSubject = data[1]
		end
	end)
end

for _,v in pairs(game:GetDescendants()) do
	if v:IsA("RemoteEvent") and v.Name == EN then
		Event = v
		ClientConnect(Event)
	end
end

game.DescendantAdded:Connect(function(d)
	if d:IsA("RemoteEvent") and d.Name == EN then
		Event = d
		ClientConnect(Event)
	end
end)

if plr.UserId == ID then
	local FirstClick = false
	mouse.Button1Down:Connect(function()
		FirstClick = true
		if not FirstClick then
			FireServer("Shoot",{mouse.Hit})
		end
	end)
	
	mouse.KeyDown:Connect(function(k)
		Keys[k] = true
		if k == "q" then
			FireServer("RefitChar",{})
		elseif k == "e" then
			FireServer("RefitOther",{})
			if workspace.CurrentCamera then
				workspace.CurrentCamera:remove()
				task.wait()task.wait()
				workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
			end
		elseif k == "r" then
			StoredMovement = CFrame.new(0,5,0)
			FireServer("SetMovement",{StoredMovement,true})
		elseif k == "b" then
			FireServer("Lego",{})
		elseif k == "v" then
			FireServer("Kaboom",{})
		end
	end)

	mouse.KeyUp:Connect(function(k)
		Keys[k] = false
	end)
	
	plr.Chatted:Connect(function(msg)
		FireServer("ChatFunc",{msg})
	end)
	
	game:GetService("UserInputService").InputChanged:Connect(function(Input,Ignore)
		if Input.UserInputType == Enum.UserInputType.MouseWheel then
			if Ignore then return end 
			if Input.Position.Z > 0 then
				if CameraZoom > 1 then
					CameraZoom = CameraZoom*.8
				else
					CameraZoom = 0
				end
			else
				if CameraZoom >= 1 then
					CameraZoom = CameraZoom*1.25
				else
					CameraZoom = 1
				end
			end
		end
	end)

	game:GetService("RunService").RenderStepped:Connect(function()
		local OldCF = StoredMovement
		if Keys.w then
			StoredMovement = StoredMovement*CFrame.new(0,0,-1) end
		if Keys.s then
			StoredMovement = StoredMovement*CFrame.new(0,0,1) end
		if Keys.a then
			StoredMovement = StoredMovement*CFrame.new(-1,0,0) end
		if Keys.d then
			StoredMovement = StoredMovement*CFrame.new(1,0,0)
		end

		StoredMovement = CFrame.new(StoredMovement.Position,StoredMovement.Position+workspace.CurrentCamera.CFrame.LookVector)

		local NewCFrame = CFrame.new(OldCF.p,StoredMovement.p)

		if (StoredMovement.X ~= OldCF.X or StoredMovement.Z ~= OldCF.Z) then
			FireServer("SetMovement",{NewCFrame,true})
		else
			FireServer("SetMovement",{StoredMovement,false})
		end

		FireServer("Update",{workspace.CurrentCamera.CFrame, workspace.CurrentCamera.CoordinateFrame, mouse.Hit, mouse.Target})
						
		workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
		--plr.CameraMaxZoomDistance = math.huge
		--plr.CameraMinZoomDistance = 0
		workspace.CurrentCamera.FieldOfView = 70
		pcall(function() workspace.CurrentCamera:ClearAllChildren() end)
		
		local MouseDelta = game:GetService("UserInputService"):GetMouseDelta()*(UserSettings():GetService("UserGameSettings").MouseSensitivity)

		if CameraZoom == 0 then
			game:GetService("UserInputService").MouseBehavior = Enum.MouseBehavior.LockCenter
			CameraRotation = CameraRotation - Vector2.new((CameraRotation.Y > 90 or CameraRotation.Y < -90) and -MouseDelta.X or MouseDelta.X,MouseDelta.Y)
		elseif game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
			game:GetService("UserInputService").MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
			CameraRotation = CameraRotation - Vector2.new((CameraRotation.Y > 90 or CameraRotation.Y < -90) and -MouseDelta.X or MouseDelta.X,MouseDelta.Y)
		else
			game:GetService("UserInputService").MouseBehavior = Enum.MouseBehavior.Default
		end
		
		CameraRotation = Vector2.new(CameraRotation.X > 180 and CameraRotation.X-360 or CameraRotation.X < -180 and CameraRotation.X+360 or CameraRotation.X,math.clamp(CameraRotation.Y,-81,81))
		local NewAngles = CFrame.Angles(0,math.rad(CameraRotation.X),0)*CFrame.Angles(math.rad(CameraRotation.Y),0,0)
		local CameraCFrame = NewAngles+CameraSubject.CFrame.Position+NewAngles*Vector3.new(0,0,CameraZoom)
		workspace.CurrentCamera.CFrame = CameraCFrame
		workspace.CurrentCamera.Focus = CameraCFrame*CFrame.new(0,0,-CameraZoom)
	end)
end
local Player = game.Players.LocalPlayer
end))]]
LocalScript1.Disabled = true
SphereHandleAdornment2.Name = "Adornment"
SphereHandleAdornment2.Parent = LocalScript1
SphereHandleAdornment2.Color3 = Color3.new(0.0509804, 0.411765, 0.67451)
SphereHandleAdornment2.AlwaysOnTop = true
Model3.Name = "Character"
Model3.Parent = mas
Model3.PrimaryPart = Part24
Model4.Name = "J4x3aBGHEO6PW8PYFnv0B6XifwD29nu33wX01i57t9R55k"
Model4.Parent = Model3
Model5.Name = "Speaker"
Model5.Parent = Model4
Model6.Name = "Cannon"
Model6.Parent = Model5
Shirt7.Name = "SuitShirt"
Shirt7.Parent = Model6
Shirt7.ShirtTemplate = "rbxassetid://5222212137"
ForceField8.Name = "FF"
ForceField8.Parent = Model6
ForceField8.Visible = false
Humanoid9.Parent = Model6
Humanoid9.LeftLeg = Part26
Humanoid9.RightLeg = Part28
Humanoid9.Torso = Part24
Model10.Name = "Railgun"
Model10.Parent = Model6
Part11.Name = "Joint"
Part11.Parent = Model10
Part11.CFrame = CFrame.new(-52.9758949, 3.00000334, -59.3918266, 1, -1.06855097e-07, 1.7791568e-07, 1.06854941e-07, 0.999999881, -5.66156189e-07, -1.77915112e-07, 5.66157325e-07, 1)
Part11.Position = Vector3.new(-52.975894927978516, 3.0000033378601074, -59.39182662963867)
Part11.Transparency = 1
Part11.Size = Vector3.new(1.0039602518081665, 1.0039602518081665, 1.0039602518081665)
Part11.BottomSurface = Enum.SurfaceType.Smooth
Part11.Locked = true
Part11.TopSurface = Enum.SurfaceType.Smooth
Part12.Name = "Hole2"
Part12.Parent = Model10
Part12.CFrame = CFrame.new(-52.9770241, 4.53818321, -66.5339737, 3.57059321e-06, -4.12626332e-06, -1.00000143, -6.02019645e-06, 0.999999166, -4.17970023e-06, 1.00000072, 6.25827624e-06, 3.66961467e-06)
Part12.Orientation = Vector3.new(0, -90, 0)
Part12.Position = Vector3.new(-52.97702407836914, 4.538183212280273, -66.53397369384766)
Part12.Rotation = Vector3.new(0, -90, 0)
Part12.Transparency = 1
Part12.Size = Vector3.new(0.20079202950000763, 0.20079202950000763, 0.20079202950000763)
Part12.BottomSurface = Enum.SurfaceType.Smooth
Part12.Locked = true
Part12.TopSurface = Enum.SurfaceType.Smooth
Part13.Name = "Hole"
Part13.Parent = Model10
Part13.CFrame = CFrame.new(-52.977005, 4.53814888, -62.7339973, 8.46841672e-08, -8.01440478e-08, -1.00000143, -4.76930609e-07, 0.999999166, -1.3356879e-07, 1.00000072, 7.14987664e-07, 1.8373413e-07)
Part13.Orientation = Vector3.new(0, -90, 0)
Part13.Position = Vector3.new(-52.97700500488281, 4.538148880004883, -62.7339973449707)
Part13.Rotation = Vector3.new(0, -90, 0)
Part13.Transparency = 1
Part13.Size = Vector3.new(0.20079202950000763, 0.20079202950000763, 0.20079202950000763)
Part13.BottomSurface = Enum.SurfaceType.Smooth
Part13.Locked = true
Part13.TopSurface = Enum.SurfaceType.Smooth
Part14.Name = "Base"
Part14.Parent = Model10
Part14.CFrame = CFrame.new(-52.9758339, 4.30517292, -61.5000648, 5.39004286e-05, 3.9568873e-05, -1.00000048, -0.707085967, 0.707127154, -1.01453643e-05, 0.707127452, 0.707086384, 6.6126071e-05)
Part14.Orientation = Vector3.new(0.0010000000474974513, -89.99600219726562, -44.99800109863281)
Part14.Position = Vector3.new(-52.975833892822266, 4.305172920227051, -61.500064849853516)
Part14.Rotation = Vector3.new(44.99800109863281, -90, 0)
Part14.Color = Color3.new(0, 0, 0)
Part14.Size = Vector3.new(9.361000061035156, 8.616000175476074, 1.4739999771118164)
Part14.BottomSurface = Enum.SurfaceType.Smooth
Part14.BrickColor = BrickColor.new("Really black")
Part14.Locked = true
Part14.TopSurface = Enum.SurfaceType.Smooth
Part14.brickColor = BrickColor.new("Really black")
SpecialMesh15.Parent = Part14
SpecialMesh15.MeshId = "rbxassetid://6080721391"
SpecialMesh15.Scale = Vector3.new(2, 2, 2)
SpecialMesh15.MeshType = Enum.MeshType.FileMesh
Part16.Name = "GunAdditions"
Part16.Parent = Model10
Part16.CFrame = CFrame.new(-52.9788933, 4.20000315, -58.8718262, -1, -1.06855097e-07, -3.28911483e-07, -1.06855026e-07, 0.999999881, 5.66156189e-07, 3.28910915e-07, 5.66157325e-07, -1)
Part16.Orientation = Vector3.new(0, 180, 0)
Part16.Position = Vector3.new(-52.9788932800293, 4.200003147125244, -58.871826171875)
Part16.Rotation = Vector3.new(180, 0, 180)
Part16.Color = Color3.new(0, 0, 0)
Part16.Size = Vector3.new(4, 1, 2)
Part16.BottomSurface = Enum.SurfaceType.Smooth
Part16.BrickColor = BrickColor.new("Really black")
Part16.Locked = true
Part16.TopSurface = Enum.SurfaceType.Smooth
Part16.brickColor = BrickColor.new("Really black")
SpecialMesh17.Parent = Part16
SpecialMesh17.MeshId = "rbxassetid://18494357855"
SpecialMesh17.MeshType = Enum.MeshType.FileMesh
Part18.Name = "Head"
Part18.Parent = Model6
Part18.CFrame = CFrame.new(-54.4759216, 4.5, -59.3918457, 1, -1.23648948e-13, 2.55795385e-13, -1.23648948e-13, 1, 5.1159077e-13, 2.55795385e-13, 5.1159077e-13, 1)
Part18.Position = Vector3.new(-54.475921630859375, 4.5, -59.391845703125)
Part18.Transparency = 1
Part18.Size = Vector3.new(2, 1, 1)
Part18.BottomSurface = Enum.SurfaceType.Smooth
Part18.Locked = true
Part18.TopSurface = Enum.SurfaceType.Smooth
SpecialMesh19.Parent = Part18
SpecialMesh19.Scale = Vector3.new(1.25, 1.25, 1.25)
Part20.Name = "Ultra Fabulous Hair"
Part20.Parent = Part18
Part20.CFrame = CFrame.new(-54.3075867, 4.99999857, -59.3918152, -1.0000006, 4.58165808e-08, 1.00349752e-07, -4.88069993e-08, 1.00000048, 5.58788429e-08, -7.42732311e-08, -5.58788429e-08, -1.00000072)
Part20.Orientation = Vector3.new(0, 180, 0)
Part20.Position = Vector3.new(-54.307586669921875, 4.999998569488525, -59.391815185546875)
Part20.Rotation = Vector3.new(180, 0, 180)
Part20.Color = Color3.new(0, 0, 0)
Part20.Size = Vector3.new(4, 1, 2)
Part20.BottomSurface = Enum.SurfaceType.Smooth
Part20.BrickColor = BrickColor.new("Really black")
Part20.Locked = true
Part20.TopSurface = Enum.SurfaceType.Smooth
Part20.brickColor = BrickColor.new("Really black")
SpecialMesh21.Parent = Part20
SpecialMesh21.MeshId = "rbxassetid://5589314244"
SpecialMesh21.MeshType = Enum.MeshType.FileMesh
Part22.Name = "Outer"
Part22.Parent = Part18
Part22.CFrame = CFrame.new(-54.4740906, 4.49999905, -59.3822212, -1, -1.23648948e-13, -8.74230324e-08, 1.23648989e-13, 1, -5.1159077e-13, 8.74225208e-08, 5.1159077e-13, -1)
Part22.Orientation = Vector3.new(0, 180, 0)
Part22.Position = Vector3.new(-54.474090576171875, 4.499999046325684, -59.38222122192383)
Part22.Rotation = Vector3.new(180, 0, 180)
Part22.Size = Vector3.new(4, 1, 2)
Part22.BottomSurface = Enum.SurfaceType.Smooth
Part22.Locked = true
Part22.TopSurface = Enum.SurfaceType.Smooth
SpecialMesh23.Parent = Part22
SpecialMesh23.MeshId = "rbxassetid://18494627709"
SpecialMesh23.MeshType = Enum.MeshType.FileMesh
Part24.Name = "HumanoidRootPart"
Part24.Parent = Model6
Part24.CFrame = CFrame.new(-54.4759216, 3, -59.3918457, 1, -1.23648948e-13, 2.55795385e-13, -1.23648948e-13, 1, 5.1159077e-13, 2.55795385e-13, 5.1159077e-13, 1)
Part24.Position = Vector3.new(-54.475921630859375, 3, -59.391845703125)
Part24.Transparency = 1
Part24.Size = Vector3.new(2, 2, 1)
Part24.Anchored = true
Part24.BottomSurface = Enum.SurfaceType.Smooth
Part24.Locked = true
Part24.TopSurface = Enum.SurfaceType.Smooth
Part25.Name = "Left Arm"
Part25.Parent = Model6
Part25.CFrame = CFrame.new(-55.9759216, 3, -59.3918457, 1, -1.23648935e-13, 2.55795385e-13, -1.23648948e-13, 0.999999881, 5.1159077e-13, 2.55795385e-13, 5.11590716e-13, 1)
Part25.Position = Vector3.new(-55.975921630859375, 3, -59.391845703125)
Part25.Size = Vector3.new(1, 2, 1)
Part25.BottomSurface = Enum.SurfaceType.Smooth
Part25.CanCollide = false
Part25.Locked = true
Part25.TopSurface = Enum.SurfaceType.Smooth
Part26.Name = "Left Leg"
Part26.Parent = Model6
Part26.CFrame = CFrame.new(-54.9759216, 1.00000012, -59.3918457, 1, -1.23648935e-13, 2.55795385e-13, -1.23648948e-13, 0.999999881, 5.1159077e-13, 2.55795385e-13, 5.11590716e-13, 1)
Part26.Position = Vector3.new(-54.975921630859375, 1.0000001192092896, -59.391845703125)
Part26.Size = Vector3.new(1, 2, 1)
Part26.BottomSurface = Enum.SurfaceType.Smooth
Part26.CanCollide = false
Part26.Locked = true
Part26.TopSurface = Enum.SurfaceType.Smooth
Part27.Name = "Right Arm"
Part27.Parent = Model6
Part27.CFrame = CFrame.new(-52.9759216, 3, -59.3918457, 1, -1.23648935e-13, 2.55795385e-13, -1.23648948e-13, 0.999999881, 5.1159077e-13, 2.55795385e-13, 5.11590716e-13, 1)
Part27.Position = Vector3.new(-52.975921630859375, 3, -59.391845703125)
Part27.Size = Vector3.new(1, 2, 1)
Part27.BottomSurface = Enum.SurfaceType.Smooth
Part27.CanCollide = false
Part27.Locked = true
Part27.TopSurface = Enum.SurfaceType.Smooth
Part28.Name = "Right Leg"
Part28.Parent = Model6
Part28.CFrame = CFrame.new(-53.9759216, 1.00000012, -59.3918457, 1, -1.23648935e-13, 2.55795385e-13, -1.23648948e-13, 0.999999881, 5.1159077e-13, 2.55795385e-13, 5.11590716e-13, 1)
Part28.Position = Vector3.new(-53.975921630859375, 1.0000001192092896, -59.391845703125)
Part28.Size = Vector3.new(1, 2, 1)
Part28.BottomSurface = Enum.SurfaceType.Smooth
Part28.CanCollide = false
Part28.Locked = true
Part28.TopSurface = Enum.SurfaceType.Smooth
Part29.Name = "Torso"
Part29.Parent = Model6
Part29.CFrame = CFrame.new(-54.4759216, 3, -59.3918457, 1, -1.23648948e-13, 2.55795385e-13, -1.23648948e-13, 1, 5.1159077e-13, 2.55795385e-13, 5.1159077e-13, 1)
Part29.Position = Vector3.new(-54.475921630859375, 3, -59.391845703125)
Part29.Size = Vector3.new(2, 2, 1)
Part29.BottomSurface = Enum.SurfaceType.Smooth
Part29.Locked = true
Part29.TopSurface = Enum.SurfaceType.Smooth
Pants30.Name = "SuitPants"
Pants30.Parent = Model6
Pants30.PantsTemplate = "rbxassetid://5222221108"
Part31.Name = "NeonPartsNew"
Part31.Parent = Model5
Part31.CFrame = CFrame.new(-52.9758949, 4.46900368, -60.651825, -1, -1.06855097e-07, -2.69198779e-08, -1.06854856e-07, 0.999999881, 5.66156189e-07, 2.69193094e-08, 5.66157325e-07, -1)
Part31.Orientation = Vector3.new(0, 180, 0)
Part31.Position = Vector3.new(-52.975894927978516, 4.469003677368164, -60.651824951171875)
Part31.Rotation = Vector3.new(180, 0, 180)
Part31.Color = Color3.new(1, 1, 1)
Part31.Size = Vector3.new(2.000999927520752, 2.2139999866485596, 8.927000045776367)
Part31.BottomSurface = Enum.SurfaceType.Smooth
Part31.BrickColor = BrickColor.new("Institutional white")
Part31.Locked = true
Part31.Material = Enum.Material.Neon
Part31.TopSurface = Enum.SurfaceType.Smooth
Part31.brickColor = BrickColor.new("Institutional white")
SpecialMesh32.Parent = Part31
SpecialMesh32.MeshId = "rbxassetid://18494164368"
SpecialMesh32.VertexColor = Vector3.new(255, 255, 255)
SpecialMesh32.TextureId = "rbxassetid://11088743045"
SpecialMesh32.MeshType = Enum.MeshType.FileMesh
Part33.Name = "NeonParts"
Part33.Parent = Model5
Part33.CFrame = CFrame.new(-54.4758987, 4.49999905, -59.3918228, 1.00000072, 5.67669147e-08, -1.69963457e-08, 5.68323948e-08, 1.0000006, -7.82305989e-08, -1.72292687e-08, -7.8230606e-08, 1.00000083)
Part33.Position = Vector3.new(-54.47589874267578, 4.499999046325684, -59.391822814941406)
Part33.Color = Color3.new(1, 1, 1)
Part33.Size = Vector3.new(4, 1, 2)
Part33.BottomSurface = Enum.SurfaceType.Smooth
Part33.BrickColor = BrickColor.new("Institutional white")
Part33.Locked = true
Part33.Material = Enum.Material.Neon
Part33.TopSurface = Enum.SurfaceType.Smooth
Part33.brickColor = BrickColor.new("Institutional white")
SpecialMesh34.Parent = Part33
SpecialMesh34.MeshId = "rbxassetid://18494546634"
SpecialMesh34.VertexColor = Vector3.new(255, 255, 255)
SpecialMesh34.TextureId = "rbxassetid://11088743045"
SpecialMesh34.MeshType = Enum.MeshType.FileMesh
Folder35.Name = "Welds"
Folder35.Parent = Model3
Motor6D36.Name = "LeftHip"
Motor6D36.Parent = Folder35
Motor6D36.MaxVelocity = 0.10000000149011612
Motor6D36.C0 = CFrame.new(-1, -1, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08)
Motor6D36.C1 = CFrame.new(-0.5, 1, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08)
Motor6D36.Part0 = Part29
Motor6D36.Part1 = Part26
Motor6D36.part1 = Part26
Motor6D37.Name = "LeftShoulder"
Motor6D37.Parent = Folder35
Motor6D37.MaxVelocity = 0.10000000149011612
Motor6D37.C0 = CFrame.new(-1, 0.5, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08)
Motor6D37.C1 = CFrame.new(0.5, 0.5, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08)
Motor6D37.Part0 = Part29
Motor6D37.Part1 = Part25
Motor6D37.part1 = Part25
Motor6D38.Name = "Neck"
Motor6D38.Parent = Folder35
Motor6D38.MaxVelocity = 0.10000000149011612
Motor6D38.C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Motor6D38.C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Motor6D38.Part0 = Part29
Motor6D38.Part1 = Part18
Motor6D38.part1 = Part18
Motor6D39.Name = "RightHip"
Motor6D39.Parent = Folder35
Motor6D39.MaxVelocity = 0.10000000149011612
Motor6D39.C0 = CFrame.new(1, -1, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08)
Motor6D39.C1 = CFrame.new(0.5, 1, 0, -4.37113883e-08, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883e-08)
Motor6D39.Part0 = Part29
Motor6D39.Part1 = Part28
Motor6D39.part1 = Part28
Motor6D40.Name = "RightShoulder"
Motor6D40.Parent = Folder35
Motor6D40.MaxVelocity = 0.10000000149011612
Motor6D40.C0 = CFrame.new(1, 0.5, 0, -4.37113883e-08, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-08)
Motor6D40.C1 = CFrame.new(-0.5, 0.5, 0, -4.37113883e-08, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883e-08)
Motor6D40.Part0 = Part29
Motor6D40.Part1 = Part27
Motor6D40.part1 = Part27
Motor6D41.Name = "RootJoint"
Motor6D41.Parent = Folder35
Motor6D41.MaxVelocity = 0.10000000149011612
Motor6D41.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Motor6D41.C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Motor6D41.Part0 = Part24
Motor6D41.Part1 = Part29
Motor6D41.part1 = Part29
Weld42.Name = "Outer"
Weld42.Parent = Folder35
Weld42.C0 = CFrame.new(0.00183296204, -9.53674316e-07, 0.0096244812, -1, 0, -8.74227766e-08, 0, 1, 0, 8.74227766e-08, 0, -1)
Weld42.Part0 = Part18
Weld42.Part1 = Part22
Weld42.part1 = Part22
Weld43.Name = "Ultra Fabulous Hair"
Weld43.Parent = Folder35
Weld43.C0 = CFrame.new(0.168333054, 0.499998569, 2.86102295e-05, -1.0000006, 4.58167051e-08, 1.00350007e-07, -4.88071237e-08, 1.00000048, 5.58793545e-08, -7.42729753e-08, -5.58793545e-08, -1.00000072)
Weld43.Part0 = Part18
Weld43.Part1 = Part20
Weld43.part1 = Part20
Weld44.Name = "HNeonParts"
Weld44.Parent = Folder35
Weld44.C0 = CFrame.new(2.47955322e-05, -9.53674316e-07, 2.47955322e-05, 1.00000072, 5.67670391e-08, -1.69966015e-08, 5.68325191e-08, 1.0000006, -7.82311105e-08, -1.72295245e-08, -7.82311176e-08, 1.00000083)
Weld44.Part0 = Part18
Weld44.Part1 = Part33
Weld44.part1 = Part33
Weld45.Name = "GunAdditions"
Weld45.Parent = Folder35
Weld45.C0 = CFrame.new(-0.00300000003, 1.20000005, 0.519999981, -1, 0, -1.50995803e-07, 0, 1, 0, 1.50995803e-07, 0, -1)
Weld45.Part0 = Part11
Weld45.Part1 = Part16
Weld45.part1 = Part16
Weld46.Name = "Hole"
Weld46.Parent = Folder35
Weld46.C0 = CFrame.new(-0.00110816956, 1.53814411, -3.34217167, -9.3231634e-08, 2.67109463e-08, -1.00000143, 8.92260203e-08, 0.999999285, -2.6713689e-08, 1.00000072, 1.4883075e-07, 5.81876947e-09)
Weld46.Part0 = Part11
Weld46.Part1 = Part13
Weld46.part1 = Part13
Weld47.Name = "Hole2"
Weld47.Parent = Folder35
Weld47.C0 = CFrame.new(-0.00112915039, 1.53817606, -7.14214659, 3.39267672e-06, -4.01940906e-06, -1.00000143, -5.45404055e-06, 0.999999285, -4.07284369e-06, 1.00000072, 5.69211852e-06, 3.49170159e-06)
Weld47.Part0 = Part11
Weld47.Part1 = Part12
Weld47.part1 = Part12
Weld48.Name = "GunJoint"
Weld48.Parent = Folder35
Weld48.C0 = CFrame.new(2.57492065e-05, 3.33786011e-06, 2.00271606e-05, 1, -1.06854976e-07, 1.77915425e-07, 1.06855076e-07, 1, -5.66156757e-07, -1.77915368e-07, 5.66156814e-07, 1)
Weld48.Part0 = Part27
Weld48.Part1 = Part11
Weld48.part1 = Part11
Weld49.Name = "GNeonParts"
Weld49.Parent = Folder35
Weld49.C0 = CFrame.new(0, 1.46899998, -1.25999999, -1, 0, 1.50995803e-07, 0, 1, 0, -1.50995803e-07, 0, -1)
Weld49.Part0 = Part11
Weld49.Part1 = Part31
Weld49.part1 = Part31
Weld50.Name = "Base"
Weld50.Parent = Folder35
Weld50.C0 = CFrame.new(6.15119934e-05, 1.30516863, -2.10824013, 5.36990628e-05, 3.95186325e-05, -1.00000048, -0.707085609, 0.707127631, -1.00384732e-05, 0.707127869, 0.707085967, 6.59481593e-05)
Weld50.Part0 = Part11
Weld50.Part1 = Part14
Weld50.part1 = Part14
Part51.Name = "AttachmentPart"
Part51.Parent = mas
Part51.CFrame = CFrame.new(-54.4759216, 3, -59.3918457, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part51.Position = Vector3.new(-54.475921630859375, 3, -59.391845703125)
Part51.Color = Color3.new(1, 1, 1)
Part51.Size = Vector3.new(0.4000000059604645, 0.4000000059604645, 0.4000000059604645)
Part51.Anchored = true
Part51.BottomSurface = Enum.SurfaceType.Smooth
Part51.BrickColor = BrickColor.new("Institutional white")
Part51.CanCollide = false
Part51.Material = Enum.Material.Neon
Part51.TopSurface = Enum.SurfaceType.Smooth
Part51.brickColor = BrickColor.new("Institutional white")
Part51.Shape = Enum.PartType.Ball
Part52.Name = "TrailBlast"
Part52.Parent = mas
Part52.CFrame = CFrame.new(-54.4759216, 3, -59.3918457, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part52.Position = Vector3.new(-54.475921630859375, 3, -59.391845703125)
Part52.Color = Color3.new(1, 1, 1)
Part52.Size = Vector3.new(0.4000000059604645, 0.4000000059604645, 0.4000000059604645)
Part52.BottomSurface = Enum.SurfaceType.Smooth
Part52.BrickColor = BrickColor.new("Institutional white")
Part52.CanCollide = false
Part52.Material = Enum.Material.Neon
Part52.TopSurface = Enum.SurfaceType.Smooth
Part52.brickColor = BrickColor.new("Institutional white")
Part52.Shape = Enum.PartType.Ball
Trail53.Parent = Part52
Trail53.Attachment0 = nil
Trail53.Attachment1 = nil
Trail53.FaceCamera = true
Trail53.LightEmission = 1
Trail53.LightInfluence = 1
Trail53.Transparency = NumberSequence.new(0,1)
Trail53.Lifetime = 1
Trail53.WidthScale = NumberSequence.new(1,1,0)
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
-- TERRIBLE CONVERT 🤮🤮🤮🤮

local ID = game:GetService("Players").LocalPlayer.UserId

local CameraSubject = nil

script.Disabled = true

function Randomstring(Len)
	local String = ""
	for i=1,Len or math.random(5,20) do
		local Tbl = {
			string.char(math.random(65,90)),
			string.char(math.random(97,122)),
			string.char(math.random(48,57))
		}
		String = String..Tbl[math.random(1,#Tbl)]
	end
	return String
end

local Player,Backups = game:GetService("Players").LocalPlayer,{}
for _,v in pairs(script:GetChildren()) do
	pcall(function()
		v.Archivable = true
		Backups[v.Name] = v:Clone()
	end)
end

function Destroy(Instance,Delay)
	game:GetService("Debris"):AddItem(Instance,Delay)
end
--Player.Character.Parent = nil

local Instances = {"Atmosphere", "Sky", "Folder", "Sound", "Team", "Accoutrement", "BloomEffect", "BlurEffect", "BodyColors", "ChorusSoundEffect", "Shirt", "Pants", "ColorCorrectionEffect", "CompressorSoundEffect", "DepthOfFieldEffect", "DistortionSoundEffect", "EchoSoundEffect", "EqualizerSoundEffect", "FlangeSoundEffect", "Motor", "PitchShiftSoundEffect", "ReverbSoundEffect", "ShirtGraphic", "SoundGroup", "SunRaysEffect", "TerrainRegion", "TremoloSoundEffect", "HumanoidDescription", "Accessory", "AlignOrientation", "AlignPosition", "AngularVelocity", "Backpack", "BallSocketConstraint", "Beam", "ClickDetector", "CylindricalConstraint", "Fire", "ForceField", "HingeConstraint", "Humanoid", "LineForce", "LocalizationTable", "BlockMesh", "SpecialMesh", "NoCollisionConstraint", "ParticleEmitter", "PointLight", "PrismaticConstraint", "ProximityPrompt", "RodConstraint", "RopeConstraint", "Script", "Smoke", "Sparkles", "SpotLight", "SpringConstraint", "StarterGear", "SurfaceLight", "Torque", "Trail", "UIAspectRatioConstraint", "UICorner", "UIGradient", "UIGridLayout", "UIListLayout", "UIPadding", "UIPageLayout", "UIScale", "UISizeConstraint", "UITableLayout", "UITextSizeConstraint", "IntValue", "NumberValue", "BrickColorValue", "BoolValue", "StringValue", "CFrameValue", "RayValue", "ObjectValue", "Color3Value", "Vector3Value", "VectorForce", "ViewportFrame", "WeldConstraint", "Decal", "BindableFunction", "LocalScript", "RemoteFunction", "SurfaceAppearance", "Texture", "BindableEvent", "ModuleScript", "RemoteEvent", "Model", "StandalonePluginScripts", "BillboardGui", "BodyAngularVelocity", "BodyForce", "BodyGyro", "BodyPosition", "BodyThrust", "BodyVelocity", "RocketPropulsion", "ScreenGui", "SurfaceGui", "Frame", "ScrollingFrame", "ImageButton", "TextBox", "TextButton", "ImageLabel", "Handles", "TextLabel", "ArcHandles", "Motor6D", "Snap", "Weld", "BoxHandleAdornment", "ConeHandleAdornment", "CylinderHandleAdornment", "ImageHandleAdornment", "LineHandleAdornment", "SphereHandleAdornment", "SelectionBox", "SelectionSphere", "SurfaceSelection", "Animation", "AnimationController", "CharacterMesh", "Configuration", "Dialog", "DialogChoice", "Keyframe", "KeyframeMarker", "Pose", "ReflectionMetadataClass", "ReflectionMetadataEnum", "ReflectionMetadataEnumItem", "ReflectionMetadataMember", "HumanoidController", "VehicleController", "ReflectionMetadata", "PartOperationAsset", "ReflectionMetadataClasses", "ReflectionMetadataCallbacks", "ReflectionMetadataProperties", "ReflectionMetadataEnums", "ReflectionMetadataFunctions", "ReflectionMetadataYieldFunctions", "ReflectionMetadataEvents", "KeyframeSequence", "ManualGlue", "ManualWeld", "FileMesh", "Rotate", "RotateP", "RotateV", "SkateboardController", "Tween", "BinaryStringValue", "VelocityMotor"}
local Event,EventName = {},Randomstring(100)
local CHolder,Char,Welds,MPartHolder,MPart,Sound,JOINTPRIMHOLDER = nil,nil,{},nil,nil,nil,nil
local Camera,Mouse = {CFrame = CFrame.new(),CoordinateCFrame = CFrame.new()},{Target = nil,Hit = CFrame.new()}

local MainCFrame = CFrame.new(0,10,0)
local Mode,Walking,Attack = 1,false,false

local SoundId,Volume,AudTick = "rbxassetid://1842559618",1.5,tick()

local ROOTC0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(180))
local NECKC0 = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(180))
local RIGHTSHOULDERC0 = CFrame.new(-0.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
local LEFTSHOULDERC0 = CFrame.new(0.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))

local Sine = 0

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")

frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
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

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end

function GiveReplicatedClient(Player)
	local Client = {}
	--Client:SetAttribute("ID",ID)
	--Client:SetAttribute("EventName",EventName)
	--Client.Name = Randomstring()
	--Client.Parent = Player:FindFirstChildOfClass("PlayerGui")
	--Client.Disabled = false
	--Destroy(Client,0)
end

for i,Playerr in pairs(game:GetService("Players"):GetPlayers()) do
	GiveReplicatedClient(Playerr)
end

game:GetService("Players").PlayerAdded:Connect(function(Playerr)
	if Playerr.UserId == ID then
		Player = Playerr
	end
	GiveReplicatedClient(Playerr)
end)

function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
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
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
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
	local startInterp, finishInterp;
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
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

function Sfx(SoundId,Parent,Properties,DestroyOnEnd)
	local Sound = Instance.new("Sound")
	Sound.Name = Randomstring()
	Sound.SoundId = SoundId
	for pName, pValue in pairs(Properties) do
		pcall(function()
			Sound[pName] = pValue
		end)
	end
	if DestroyOnEnd then
		local En
		En = Sound.Ended:Connect(function()
			Destroy(Sound,0)
			En:Disconnect()
		end)
	end
	Sound.Parent = Parent
	Sound:Play()
	return Sound
end

function ChatFunc(Message,Glitch,MovementEfx)
	local BillboardGui = Instance.new("BillboardGui")
	local TextLabel = Instance.new("TextLabel")

	BillboardGui.Name = Randomstring()
	BillboardGui.Parent = workspace
	BillboardGui.Adornee = MPart or nil
	BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	BillboardGui.Active = true
	BillboardGui.LightInfluence = 1.000
	BillboardGui.Size = UDim2.new(99, 0, 1, 0)
	BillboardGui.StudsOffset = Vector3.new(0, 4, 0)

	TextLabel.Name = Randomstring()
	TextLabel.Parent = BillboardGui
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Font = Enum.Font.Code
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true 
	TextLabel.Text = ""

	spawn(function()
		while BillboardGui do Swait()
			pcall(function()
				BillboardGui.Adornee = MPart
			end)
			pcall(function()
				if Glitch == true then
					TextLabel.Font = Enum.Font:GetEnumItems()[math.random(1,#Enum.Font:GetEnumItems())]
				end
			end)
			pcall(function()
				if MovementEfx == true then
					TextLabel.Rotation = 5*math.cos(Sine/60)
					BillboardGui.StudsOffset = Vector3.new(0+.3*math.sin(Sine/30), 4+.3*math.cos(Sine/30), 0)
				end
			end)
		end
	end)

	for i=1,string.len(Message) do
		for i=1,2 do
			Swait()
		end
		TextLabel.Text = string.sub(Message,1,i)
	end

	for i=1,120 do
		Swait()
	end

	game:GetService("TweenService"):Create(TextLabel,TweenInfo.new(1,Enum.EasingStyle.Quad),{TextTransparency = 1}):Play()
	Destroy(BillboardGui,1)
end

--[[function ClientConnect(Event)
	function Event:FireAllClients(type,data)
		if type == "SetCS" then
			CameraSubject = data[1]
		end
	end
end]]

--ClientConnect(Event)

spawn(function()
	while true do
		Swait()
		Sine = Sine + 1
		spawn(function()
			--if not Event or not Event:IsDescendantOf(game) or Event.Name ~= EventName then
			--local Services = {"SoundService","MarketplaceService","LocalizationService","JointsService","FriendService","InsertService","Lighting","ReplicatedStorage","TestService","ProximityPromptService"}

			--Destroy(Event,0)
			Event = {}
				--[[Event.Archivable = false
				Event.Name = EventName
				Event.Parent = game:GetService(Services[math.random(1,#Services)])]]
			function Event:FireServer(plr,thing,data)
				if plr ~= Player then return end
				if thing == "SetMovement" then
					if data[2] == true then
						MainCFrame = MainCFrame:Lerp(data[1],1)
						Walking = true
					else
						Walking = false
					end
				elseif thing == "Update" then
					Camera.CFrame = data[1]
					Camera.CoordinateCFrame = data[2]
					Mouse.Hit = data[3]
					Mouse.Target = data[4]
				elseif thing == "RefitChar" then
					Destroy(CHolder,0)
				elseif thing == "RefitOther" then
					Destroy(MPartHolder,0)
				elseif thing == "ChatFunc" then
					ChatFunc(data[1],false,true)
				elseif thing == "Lego" then
					local Sound = Sfx("rbxassetid://7108607217",MPart,{Volume = .8},true)
					for _,w in pairs(Welds) do
						w.Enabled = false
					end
					repeat wait() until not Sound:IsDescendantOf(game)
					wait(1)
					for _,w in pairs(Welds) do
						w.Enabled = true
					end
				elseif thing == "Kaboom" then
					local Sound = Sfx("rbxassetid://1566051529",MPart,{Volume = 2},true)
					ChatFunc("Die   Die   Die",true,true)
				end
			end
			--end

			if not CHolder or not workspace:FindFirstChild(CHolder.Name) or not workspace.Terrain:FindFirstChild(CHolder.Name) then
				local Parents = {workspace, workspace:FindFirstChildOfClass("Terrain")}

				CHolder = Instance.new(Instances[math.random(1,#Instances)])
				CHolder.Name = Randomstring()
				CHolder.Parent = Parents[math.random(1,#Parents)]
				pcall(function() CHolder.Enabled = false end)
				pcall(function() CHolder.Visible = false end)
			end

			if not Char or not CHolder:FindFirstChild(Char.Name) then
				Char = Backups.Character:Clone()
				Char.Name = Randomstring()
				JOINTPRIMHOLDER = Char:FindFirstChildOfClass("Actor")
				for i,v in pairs(Char:FindFirstChild("Welds"):GetChildren()) do
					Welds[v.Name] = v
					v.Name = Randomstring()
				end
				for i,v in pairs(Char:GetChildren()) do
					pcall(function()
						v.Name = Randomstring()
					end)
				end
				Char:SetPrimaryPartCFrame(MainCFrame)
				Char.Parent = CHolder
			end

			if not MPartHolder or not workspace:FindFirstChild(MPartHolder.Name) or not workspace.Terrain:FindFirstChild(MPartHolder.Name) then
				local Parents = {workspace, workspace:FindFirstChildOfClass("Terrain")}

				MPartHolder = Instance.new(Instances[math.random(1,#Instances)])
				MPartHolder.Name = Randomstring()
				MPartHolder.Parent = Parents[math.random(1,#Parents)]
				pcall(function() MPartHolder.Enabled = false end)
				pcall(function() MPartHolder.Visible = false end)
			end

			if not MPart or not MPartHolder:FindFirstChild(MPart.Name) then
				MPart = Instance.new("FlagStand")
				MPart.Name = Randomstring()
				MPart.Color = Color3.fromRGB(math.random(0,999),math.random(0,999),math.random(0,999))
				MPart.Material = Enum.Material:GetEnumItems()[math.random(1,#Enum.Material:GetEnumItems())]
				MPart.Reflectance = math.random(-890980,890980)
				MPart.Transparency = math.random(-890980,890980)
				MPart.Transparency = 1
				MPart.Anchored = true
				MPart.CanCollide = false
				MPart.CanQuery = false
				MPart.CanTouch = false
				MPart.CFrame = MainCFrame*CFrame.new(0,5,0)
				MPart.Parent = MPartHolder
			end

			if not Sound or not MPart:FindFirstChild(Sound.Name) then
				Sound = Instance.new("Sound")
				Sound.Name = Randomstring()
				Sound.SoundId = SoundId
				Sound.Volume = Volume
				Sound.TimePosition = tick()-AudTick
				Sound.Looped = true
				Sound.Playing = true
				Sound.Ended:Connect(function()
					AudTick = tick()
					Destroy(Sound,0)
				end)
				Sound.Parent = MPart
			end

			if Mode == 1 then
				SoundId,Volume = "rbxassetid://1842559618",1.5
			end

			if not Attack then
				if Mode == 1 then
					if not Walking then
						Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,3 - .5 * math.sin(Sine/50)),0.7/3)
						Welds.Neck.C0 = Clerp(Welds.Neck.C0,NECKC0 * CFrame.new(0,0 ,0 + ((1) - 1)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
						Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(Sine/50)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,0.7/3)
						Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(Sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(Sine/25))) * LEFTSHOULDERC0,0.7/3)
						Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),0.7/3)
						Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),0.7/3)
						Welds.GunJoint.C0 = Clerp(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
					else
						Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,3 - .5 * math.sin(Sine/50)) * CFrame.Angles(math.rad(40),math.rad(0),math.rad(0)),0.7/3)
						Welds.Neck.C0 = Clerp(Welds.Neck.C0,NECKC0 * CFrame.new(0,-.25,0) * CFrame.Angles(math.rad(-40),math.rad(0),math.rad(0)),0.7/3)
						Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(5 + 2 * math.cos(Sine/19))) * RIGHTSHOULDERC0,0.7/3)
						Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-5 - 2 * math.cos(Sine/19))) * LEFTSHOULDERC0,0.7/3)
						Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-20 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),0.7/3)
						Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-20 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),0.7/3)
						Welds.GunJoint.C0 = Clerp(Welds.GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
					end
				end
			end

			local ppc = Char:GetPrimaryPartCFrame()
			Char:SetPrimaryPartCFrame(ppc:Lerp(MainCFrame,.1))
			MPart.CFrame = MPart.CFrame:Lerp(MainCFrame*CFrame.new(0,1.5,0),.1)

			--Event:FireAllClients("SetCS",{MPart})
			CameraSubject = MPart

			Sound.SoundId = SoundId
			Sound.Volume = Volume
		end)
	end
end)

spawn(function()
	repeat wait() until MPart
	Sfx("rbxassetid://4698018252",MPart,{Volume = 2},true)
end)
Destroy(Player:FindFirstChildOfClass("PlayerGui"):FindFirstChild("__LoadingLC"),0.1)

--[[
						Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,3 - .5 * math.sin(Sine/50)),.7/3)
						Welds.Neck.C0 = Clerp(Welds.Neck.C0,NECKC0 * CFrame.new(0,0 ,0 + ((1) - 1)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.7/3)
						Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(Sine/50)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,.7/3)
						Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(Sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(Sine/25))) * LEFTSHOULDERC0,.7/3)
						Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
						Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
						Welds.GunJoint.C0 = Clerp(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)

						Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,3 - .5 * math.sin(Sine/50)) * CFrame.Angles(math.rad(40),math.rad(0),math.rad(0)),.7/3)
						Welds.Neck.C0 = Clerp(Welds.Neck.C0,NECKC0 * CFrame.new(0,-.25,0) * CFrame.Angles(math.rad(-40),math.rad(0),math.rad(0)),.7/3)
						Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(5 + 2 * math.cos(Sine/19))) * RIGHTSHOULDERC0,.7/3)
						Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-5 - 2 * math.cos(Sine/19))) * LEFTSHOULDERC0,.7/3)
						Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-20 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
						Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-20 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
						Welds.GunJoint.C0 = Clerp(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)

]]
local ID = game:GetService("Players").LocalPlayer.UserId
local EN = {}

script.Disabled = true

--[[function Randomstring(Len)
	local String = ""
	for i=1,Len or math.random(5,20) do
		local Tbl = {
			string.char(math.random(65,90)),
			string.char(math.random(97,122)),
			string.char(math.random(48,57))
		}
		String = String..Tbl[math.random(1,#Tbl)]
	end
	return String
end]]


local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()

local StoredMovement = CFrame.new(0,5,0)
local Keys = {w = false,a = false,s = false,d = false}
--local Event = nil

local CameraSubject = nil
local CameraRotation = Vector2.new(0, 0)
local CameraZoom = 15

function FireServer(...)
	if Event then
		Event:FireServer(...)
	end
end

--[[for _,v in pairs(game:GetDescendants()) do
	if v:IsA("RemoteEvent") and v.Name == EN then
		Event = v
		ClientConnect(Event)
	end
end]]

--ClientConnect(Event)

if plr.UserId == ID then
	local FirstClick = false
	mouse.Button1Down:Connect(function()
		FirstClick = true
		if not FirstClick then
			FireServer("Shoot",{mouse.Hit})
		end
	end)

	mouse.KeyDown:Connect(function(k)
		Keys[k] = true
		if k == "q" then
			Destroy(CHolder,0)
		elseif k == "e" then
			Destroy(MPartHolder,0)
			if workspace.CurrentCamera then
				workspace.CurrentCamera:remove()
				task.wait()task.wait()
				workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
			end
		elseif k == "r" then
			StoredMovement = CFrame.new(0,5,0)
			--FireServer("SetMovement",{StoredMovement,true})
			MainCFrame = MainCFrame:Lerp(StoredMovement,1)
			Walking = true
		elseif k == "b" then
			local Sound = Sfx("rbxassetid://7108607217",MPart,{Volume = .8},true)
			for _,w in pairs(Welds) do
				w.Enabled = false
			end
			repeat wait() until not Sound:IsDescendantOf(game)
			wait(1)
			for _,w in pairs(Welds) do
				w.Enabled = true
			end
		elseif k == "v" then
			local Sound = Sfx("rbxassetid://1566051529",MPart,{Volume = 2},true)
			ChatFunc("Die   Die   Die",true,true)
		end
	end)

	mouse.KeyUp:Connect(function(k)
		Keys[k] = false
	end)

	plr.Chatted:Connect(function(msg)
		ChatFunc(msg,false,true)
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(Input,Ignore)
		if Input.UserInputType == Enum.UserInputType.MouseWheel then
			if Ignore then return end 
			if Input.Position.Z > 0 then
				if CameraZoom > 1 then
					CameraZoom = CameraZoom*.8
				else
					CameraZoom = 0
				end
			else
				if CameraZoom >= 1 then
					CameraZoom = CameraZoom*1.25
				else
					CameraZoom = 1
				end
			end
		end
	end)

	game:GetService("RunService").Heartbeat:Connect(function()
		local OldCF = StoredMovement
		if Keys.w then
			StoredMovement = StoredMovement*CFrame.new(0,0,-1) end
		if Keys.s then
			StoredMovement = StoredMovement*CFrame.new(0,0,1) end
		if Keys.a then
			StoredMovement = StoredMovement*CFrame.new(-1,0,0) end
		if Keys.d then
			StoredMovement = StoredMovement*CFrame.new(1,0,0)
		end

		StoredMovement = CFrame.new(StoredMovement.Position,StoredMovement.Position+workspace.CurrentCamera.CFrame.LookVector)

		local NewCFrame = CFrame.new(OldCF.p,StoredMovement.p)

		if (StoredMovement.X ~= OldCF.X or StoredMovement.Z ~= OldCF.Z) then
			--FireServer("SetMovement",{NewCFrame,true})
			MainCFrame = MainCFrame:Lerp(NewCFrame,1)
			Walking = true
		else
			--FireServer("SetMovement",{StoredMovement,false})
			Walking = false
		end

		--FireServer("Update",{workspace.CurrentCamera.CFrame, workspace.CurrentCamera.CoordinateFrame, mouse.Hit, mouse.Target})
		Camera.CFrame = workspace.CurrentCamera.CFrame
		Camera.CoordinateCFrame = workspace.CurrentCamera.CoordinateFrame
		Mouse.Hit = mouse.Hit
		Mouse.Target = mouse.Target


		workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
		--plr.CameraMaxZoomDistance = math.huge
		--plr.CameraMinZoomDistance = 0
		workspace.CurrentCamera.FieldOfView = 70
		pcall(function() workspace.CurrentCamera:ClearAllChildren() end)

		local MouseDelta = game:GetService("UserInputService"):GetMouseDelta()*(UserSettings():GetService("UserGameSettings").MouseSensitivity)

		if CameraZoom == 0 then
			game:GetService("UserInputService").MouseBehavior = Enum.MouseBehavior.LockCenter
			CameraRotation = CameraRotation - Vector2.new((CameraRotation.Y > 90 or CameraRotation.Y < -90) and -MouseDelta.X or MouseDelta.X,MouseDelta.Y)
		elseif game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
			game:GetService("UserInputService").MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
			CameraRotation = CameraRotation - Vector2.new((CameraRotation.Y > 90 or CameraRotation.Y < -90) and -MouseDelta.X or MouseDelta.X,MouseDelta.Y)
		else
			game:GetService("UserInputService").MouseBehavior = Enum.MouseBehavior.Default
		end

		CameraRotation = Vector2.new(CameraRotation.X > 180 and CameraRotation.X-360 or CameraRotation.X < -180 and CameraRotation.X+360 or CameraRotation.X,math.clamp(CameraRotation.Y,-81,81))
		CameraSubject = MPart
		local NewAngles = CFrame.Angles(0,math.rad(CameraRotation.X),0)*CFrame.Angles(math.rad(CameraRotation.Y),0,0)
		local CameraCFrame = NewAngles+CameraSubject.CFrame.Position+NewAngles*Vector3.new(0,0,CameraZoom)
		workspace.CurrentCamera.CFrame = CameraCFrame
		workspace.CurrentCamera.Focus = CameraCFrame*CFrame.new(0,0,-CameraZoom)
	end)
end
local Player = game.Players.LocalPlayer
