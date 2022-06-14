
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
LocalScript0 = Instance.new("LocalScript")
Folder1 = Instance.new("Folder")
UnionOperation2 = Instance.new("UnionOperation")
MeshPart3 = Instance.new("MeshPart")
UnionOperation4 = Instance.new("UnionOperation")
LocalScript5 = Instance.new("LocalScript")
UnionOperation6 = Instance.new("UnionOperation")
MeshPart7 = Instance.new("MeshPart")
UnionOperation8 = Instance.new("UnionOperation")
LocalScript0.Name = "noooooo"
LocalScript0.Parent = game:GetService("Workspace")
table.insert(cors,sandbox(LocalScript0,function()
print("Loaded fake script")
end))
Folder1.Name = "Models"
Folder1.Parent = LocalScript0
UnionOperation2.Name = "Limb"
UnionOperation2.Parent = Folder1
UnionOperation2.CFrame = CFrame.new(-500101.281, 2.5625, -500045.25, 1, -4.47034068e-07, -1.91601572e-07, -4.47034068e-07, 0.999995708, 6.11821235e-07, -1.91601572e-07, 6.11821235e-07, 1)
UnionOperation2.Position = Vector3.new(-500101.28125, 2.5625, -500045.25)
UnionOperation2.Color = Color3.new(0.25098, 0.25098, 0.25098)
UnionOperation2.Size = Vector3.new(4, 1, 2)
UnionOperation2.Anchored = true
UnionOperation2.BrickColor = BrickColor.new("Medium brown")
UnionOperation2.Material = Enum.Material.Metal
UnionOperation2.brickColor = BrickColor.new("Medium brown")
MeshPart3.Name = "MeshKiller"
MeshPart3.Parent = Folder1
MeshPart3.CFrame = CFrame.new(499898.344, 1000000.5, 499955, 1, -2.38418437e-07, -9.5800111e-08, -2.08616115e-07, 0.999997854, 2.76108665e-07, -9.58013899e-08, 3.35713253e-07, 1)
MeshPart3.Position = Vector3.new(499898.34375, 1000000.5, 499955)
MeshPart3.Size = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.05000000074505806)
UnionOperation4.Name = "Torso"
UnionOperation4.Parent = Folder1
UnionOperation4.CFrame = CFrame.new(-500101.281, 2.5625, -500045.25, 1, -2.38418437e-07, -9.5800111e-08, -2.08616115e-07, 0.999997854, 2.76108665e-07, -9.58013899e-08, 3.35713253e-07, 1)
UnionOperation4.Position = Vector3.new(-500101.28125, 2.5625, -500045.25)
UnionOperation4.Color = Color3.new(0.25098, 0.25098, 0.25098)
UnionOperation4.Size = Vector3.new(4, 1, 2)
UnionOperation4.Anchored = true
UnionOperation4.BrickColor = BrickColor.new("Medium brown")
UnionOperation4.Material = Enum.Material.Metal
UnionOperation4.brickColor = BrickColor.new("Medium brown")
LocalScript5.Name = "Client"
LocalScript5.Parent = LocalScript0
table.insert(cors,sandbox(LocalScript5,function()
--[[​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​]]
script.Disabled = true
game:GetService("RunService").RenderStepped:Wait()
script:Destroy()
game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()
local function AttributeToCFrame(Position,Orientation)
	return CFrame.new(Position)*CFrame.Angles(Orientation.X,Orientation.Y,Orientation.Z)
end
local Ignoring,Effects,RayProperties,Remotes,CameraPosition,Throttle,ConsecutiveFrames,Frame,RemoteName,Movement,Trottle,RemoteKey,Mouse,WorldModels,CameraRotation,CameraZoom,CameraCFrame,Character,ToReplace,Received = true,{},RaycastParams.new(),{},Vector3.new(),0,0,1/60,script:GetAttribute("RemoteName"),{CFrame = AttributeToCFrame(script:GetAttribute("StartPosition"),script:GetAttribute("StartOrientation"))},1,script:GetAttribute("RemoteKey"),game:GetService("Players").LocalPlayer:GetMouse(),{},Vector2.new(0,-15),15,CFrame.new()
RayProperties.FilterType = Enum.RaycastFilterType.Blacklist
local function FireServer(...)
	for _,v in pairs(Remotes) do
		v:FireServer(RemoteKey,...)
	end
end
local function ConnectEvent(Event_)
	table.insert(Remotes,Event_)
	local EventConnect = Event_.OnClientEvent:Connect(function(Method,Things)
		if type(Method) == "string" and type(Things) == "table" then
			if Method == "SetCharacter" then
				Character,CameraPosition = Things.Character,Things.CameraPosition.Position
				local RayCharacter = {}
				for _,v in pairs(Character) do
					if v:IsA("BasePart") then
						table.insert(RayCharacter,v)
					end
				end
				for _,v in pairs(Effects) do
					table.insert(RayCharacter,v)
				end
				RayProperties.FilterDescendantsInstances = RayCharacter
			elseif Method == "Received" then
				Received = true
			elseif Method == "Effects" then
				for _,v in pairs(Things) do
					table.insert(Effects,v)
					local Removed
					Removed = v.AncestryChanged:Connect(function()
						if not v:IsDescendantOf(workspace) then
							table.remove(Effects,table.find(Effects,v))
							Removed:Disconnect()
						end
					end)
				end
			elseif Method == "Notification" then
				game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{Text = "​[The Ascentionist​]​:​ ​"..Things.Text,Font = 43,Color = Color3.new(.5,.5,.5),FontSize = 2})
			end
		end
	end)
	local EventRemoval
	EventRemoval = Event_.AncestryChanged:Connect(function()
		if not Event_:IsDescendantOf(game) then
			table.remove(Remotes,table.find(Remotes,Event_))
			EventConnect:Disconnect()
			EventRemoval:Disconnect()
		end
	end)
end
game.DescendantAdded:Connect(function(v)
	if table.pack(pcall(game.IsA,v,"RemoteEvent"))[2] == true and v:GetAttribute("Name") == RemoteName then
		ConnectEvent(v)
	end
end)
workspace.DescendantAdded:Connect(function(v)
	if table.pack(pcall(game.IsA,v,"WorldModel"))[2] == true then
		table.insert(WorldModels,v)
		local Removed
		Removed = v.AncestryChanged:Connect(function()
			if not v:IsDescendantOf(workspace) then
				table.remove(WorldModels,table.find(WorldModels,v))
				Removed:Disconnect()
			end
		end)
	end
end)
do
	local InstanceCount = 0
	for _,v in pairs(game:GetDescendants()) do
		if table.pack(pcall(game.IsA,v,"RemoteEvent"))[2] == true and v:GetAttribute("Name") == RemoteName then
			ConnectEvent(v)
		end
		InstanceCount += 1
		if InstanceCount >= 1e3 then
			game:GetService("RunService").RenderStepped:Wait()
			InstanceCount = 0
		end
	end
end
do
	local InstanceCount = 0
	for _,v in pairs(workspace:GetDescendants()) do
		if table.pack(pcall(game.IsA,v,"WorldModel"))[2] == true then
			table.insert(WorldModels,v)
			local Removed
			Removed = v.AncestryChanged:Connect(function()
				if not v:IsDescendantOf(workspace) then
					table.remove(WorldModels,table.find(WorldModels,v))
					Removed:Disconnect()
				end
			end)
		end
		InstanceCount += 1
		if InstanceCount >= 1e3 then
			game:GetService("RunService").RenderStepped:Wait()
			InstanceCount = 0
		end
	end
end
local function KeyDown(Key)
	return (not Ignoring or not game:GetService("UserInputService"):GetFocusedTextBox()) and game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode[Key]) or false
end
local function ValidNumber(Number)
	local Returned = table.pack(pcall(function()
		return type(Number) == "number" and not string.find(string.lower(tostring(Number)),"nan")
	end))
	table.remove(Returned,1)
	return unpack(Returned)
end
game:GetService("UserInputService").InputBegan:Connect(function(Input,Ignore)
	if Input.UserInputType == Enum.UserInputType.Keyboard then
		local Key = string.sub(tostring(Input.KeyCode),14)
		if Key == "F1" then
			Ignoring = not Ignoring
		end
		if Ignore and Ignoring then
			return
		end 
		if Key == "F" then
			FireServer("ToggleFly",{})
		elseif Key == "Q" then
			FireServer("ReplaceCharacter",{})
		elseif Key == "X" then
			FireServer("Attack",{Type = "SkySmash"})
		elseif Key == "I" then
			if CameraZoom > 1 then
				CameraZoom = CameraZoom*.8
			else
				CameraZoom = 0
			end
		elseif Key == "O" then
			if CameraZoom >= 1 then
				CameraZoom = CameraZoom*1.25
			else
				CameraZoom = 1
			end
		elseif Key == "P" then
			FireServer("ResetPosition",{})
		end
	elseif Input.UserInputType == Enum.UserInputType.MouseButton1 then
		if Ignore and Ignoring then
			return
		end 
		FireServer("Attack",{Type = "ClickAttack"})
	elseif Input.UserInputType == Enum.UserInputType.MouseWheel then
		if Ignore and Ignoring then
			return
		end 
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
game:GetService("UserInputService").InputChanged:Connect(function(Input,Ignore)
	if Input.UserInputType == Enum.UserInputType.MouseWheel then
		if Ignore and Ignoring then
			return
		end 
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
if not game:GetService("RunService"):IsStudio() then
	game:GetService("NetworkClient").ChildRemoved:Connect(function(v)
		if v.ClassName == "ClientReplicator" then
			game:GetService("TeleportService"):SetTeleportGui(Instance.new("ScreenGui"))
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId)
			game:GetService("TeleportService").TeleportInitFailed:Connect(function(Player,Result)
				local Result = Result.Value
				if Player ~= game:GetService("Players").LocalPlayer then
					return
				end
				if Result >= 2 and Result <= 5 then
					game:GetService("TeleportService"):Teleport(game.PlaceId)
				else
					local Start = tick()
					repeat
						game:GetService("RunService").RenderStepped:Wait()
					until tick()-Start >= 5
					game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId)
				end
			end)
		end
	end)
end

local function RandomString(Length)
	local Returned = table.pack(pcall(function()
		return string.gsub(string.rep(" ",ValidNumber(Length) and math.clamp(Length,1,1e4) or math.random(5,100)),".",function(x)
			return string.char(({math.random(48,57),math.random(65,90),math.random(97,122)})[math.random(1,3)])
		end)
	end))
	table.remove(Returned,1)
	return unpack(Returned)
end
game:GetService("UserInputService"):GetPropertyChangedSignal("MouseBehavior"):Connect(function()
	local MouseBehavior = game:GetService("UserInputService").MouseBehavior.Value
	if CameraZoom == 0 then
		game:GetService("UserInputService").MouseBehavior = 1
	elseif game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
		game:GetService("UserInputService").MouseBehavior = 2
	else
		game:GetService("UserInputService").MouseBehavior = 0
	end
end)
game:GetService("UserInputService"):GetPropertyChangedSignal("MouseDeltaSensitivity"):Connect(function()
	if game:GetService("UserInputService").MouseDeltaSensitivity ~= 1 then
		game:GetService("UserInputService").MouseDeltaSensitivity = 1
	end
end)
game:GetService("RunService").RenderStepped:Connect(function(Frames)
	ConsecutiveFrames += Frames
	Throttle = 0
	for _ = 1,ConsecutiveFrames/Frame do
		ConsecutiveFrames -= Frame
		Throttle += 1
	end
	if not workspace.CurrentCamera or workspace.CurrentCamera.CameraType ~= Enum.CameraType.Scriptable or math.floor(workspace.CurrentCamera.FieldOfView*10+.5)/10 ~= 70 or workspace.CurrentCamera.CFrame ~= CameraCFrame then
		game:GetService("Debris"):AddItem(workspace.CurrentCamera,0)
		local Camera,Removed = Instance.new("Camera")
		Camera.Name = RandomString()
		Removed = Camera.AncestryChanged:Connect(function()
			if Camera.Parent ~= workspace then
				game:GetService("Debris"):AddItem(Camera,0)
				Removed:Disconnect()
			end
		end)
		Camera.Parent = workspace
		workspace.CurrentCamera = Camera
	end
	if Received and Character then
		for i,v in pairs(Character) do
			if not v:IsDescendantOf(game) then
				Received = false
				FireServer("ReplaceCharacter",{})
				break
			end
		end
	end
	workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
	workspace.CurrentCamera.FieldOfView = 70
	local MouseDelta = game:GetService("UserInputService"):GetMouseDelta()*(UserSettings():GetService("UserGameSettings").MouseSensitivity/2)
	if CameraZoom == 0 then
		game:GetService("UserInputService").MouseBehavior = Enum.MouseBehavior.LockCenter
		CameraRotation -= Vector2.new((CameraRotation.Y > 90 or CameraRotation.Y < -90) and -MouseDelta.X or MouseDelta.X,MouseDelta.Y)
	elseif game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
		game:GetService("UserInputService").MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
		CameraRotation -= Vector2.new((CameraRotation.Y > 90 or CameraRotation.Y < -90) and -MouseDelta.X or MouseDelta.X,MouseDelta.Y)
	else
		game:GetService("UserInputService").MouseBehavior = Enum.MouseBehavior.Default
	end
	if KeyDown("Left") then
		CameraRotation += Vector2.new(2.5*Throttle,0)
	end
	if KeyDown("Right") then
		CameraRotation -= Vector2.new(2.5*Throttle,0)
	end
	if KeyDown("Up") then
		CameraRotation += Vector2.new(0,2.5*Throttle)
	end
	if KeyDown("Down") then
		CameraRotation -= Vector2.new(0,2.5*Throttle)
	end
	CameraRotation = Vector2.new(CameraRotation.X > 180 and CameraRotation.X-360 or CameraRotation.X < -180 and CameraRotation.X+360 or CameraRotation.X,math.clamp(CameraRotation.Y,-81,81))
	local NewAngles = CFrame.Angles(0,math.rad(CameraRotation.X),0)*CFrame.Angles(math.rad(CameraRotation.Y),0,0)
	CameraCFrame = NewAngles+CameraPosition+NewAngles*Vector3.new(0,0,CameraZoom)
	workspace.CurrentCamera.CFrame = CameraCFrame
	workspace.CurrentCamera.Focus = CameraCFrame*CFrame.new(0,0,-CameraZoom)
	if CameraZoom == 0 then
		if Character then
			for _,v in pairs(Character) do
				if typeof(v) == "Instance" then
					if v:IsA("BasePart") then
						v.Transparency = 1
					end
				end
			end
		end
	else
		if Character then
			for _,v in pairs(Character) do
				if typeof(v) == "Instance" then
					if v:IsA("BasePart") then
						v.Transparency = 0
					end
				end
			end
		end
	end
	local UnitRay = workspace.CurrentCamera:ScreenPointToRay(Mouse.X,Mouse.Y)
	local Closest,Rays,Ray_ = math.huge,{},nil
	table.insert(Rays,workspace:Raycast(UnitRay.Origin,UnitRay.Direction*1e3,RayProperties))
	for _,v in pairs(WorldModels) do
		table.insert(Rays,v:Raycast(UnitRay.Origin,UnitRay.Direction*1e3,RayProperties))
	end
	for _,v in pairs(Rays) do
		local Magnitude = (UnitRay.Origin-v.Position).Magnitude
		if Magnitude < Closest then
			Closest,Ray_ = Magnitude,v
		end
	end
	FireServer("Movement",{CFrame = CameraCFrame,Rotation = CameraRotation,Angles = NewAngles,Zoom = CameraZoom,W = KeyDown("W"),A = KeyDown("A"),S = KeyDown("S"),D = KeyDown("D"),Hit = Ray_ and CFrame.new(Ray_.Position) or CFrame.new(UnitRay.Origin,UnitRay.Origin+UnitRay.Direction)*CFrame.new(0,0,-1e3),PlaybackLoudness = Character and Character.Music and Character.Music.PlaybackLoudness or 0})
end)
end))
LocalScript5.Disabled = true
UnionOperation6.Name = "Limb"
UnionOperation6.Parent = LocalScript0
UnionOperation6.CFrame = CFrame.new(-500101.281, 2.5625, -500045.25, 1, -4.47034068e-07, -1.91601572e-07, -4.47034068e-07, 0.999995708, 6.11821235e-07, -1.91601572e-07, 6.11821235e-07, 1)
UnionOperation6.Position = Vector3.new(-500101.28125, 2.5625, -500045.25)
UnionOperation6.Color = Color3.new(0.25098, 0.25098, 0.25098)
UnionOperation6.Size = Vector3.new(4, 1, 2)
UnionOperation6.Anchored = true
UnionOperation6.BrickColor = BrickColor.new("Medium brown")
UnionOperation6.Material = Enum.Material.Metal
UnionOperation6.brickColor = BrickColor.new("Medium brown")
MeshPart7.Name = "MeshKiller"
MeshPart7.Parent = LocalScript0
MeshPart7.CFrame = CFrame.new(499898.344, 1000000.5, 499955, 1, -2.38418437e-07, -9.5800111e-08, -2.08616115e-07, 0.999997854, 2.76108665e-07, -9.58013899e-08, 3.35713253e-07, 1)
MeshPart7.Position = Vector3.new(499898.34375, 1000000.5, 499955)
MeshPart7.Size = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.05000000074505806)
UnionOperation8.Name = "Torso"
UnionOperation8.Parent = LocalScript0
UnionOperation8.CFrame = CFrame.new(-500101.281, 2.5625, -500045.25, 1, -2.38418437e-07, -9.5800111e-08, -2.08616115e-07, 0.999997854, 2.76108665e-07, -9.58013899e-08, 3.35713253e-07, 1)
UnionOperation8.Position = Vector3.new(-500101.28125, 2.5625, -500045.25)
UnionOperation8.Color = Color3.new(0.25098, 0.25098, 0.25098)
UnionOperation8.Size = Vector3.new(4, 1, 2)
UnionOperation8.Anchored = true
UnionOperation8.BrickColor = BrickColor.new("Medium brown")
UnionOperation8.Material = Enum.Material.Metal
UnionOperation8.brickColor = BrickColor.new("Medium brown")
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
local IDLOL = 9405333681
local script = game:GetService("Workspace").noooooo
script.Disabled = true
local Backups,Start = {},tick()
for _,v in pairs(script.Models:GetChildren()) do
	pcall(function()
		v.Archivable = true
		Backups[v.Name] = v:Clone()
	end)
end
for _,v in pairs(script:GetChildren()) do
	pcall(function()
		v.Archivable = true
		Backups[v.Name] = v:Clone()
	end)
end
if not Backups.Client then
	local Client = script:FindFirstChildOfClass("LocalScript")
	if Client then
		Client.Archivable = true
		Backups.Client = Client:Clone()
	end
end
for _,v in pairs(Backups) do
	v:ClearAllChildren()
end
local Name = game:GetService("Players").LocalPlayer.Name
for _,v in pairs(game:GetChildren()) do
	pcall(function()
		if game:FindService(v.ClassName) then
			getfenv()[v.ClassName] = v
		end
	end)
end
RunService.Heartbeat:Wait()
script:Destroy()
--[[local pcall_ = pcall
local function pcall(...)
	local pcall__ = table.pack(pcall_(...))
	if pcall__[1] == false and not string.match(tostring(pcall__[2]),"The current identity %(%d%) cannot .+ %(lacking permission %d%)") then
		warn(string.format("%s:The Ascentionist:%s",Name,tostring(pcall__[2])))
	end
	return unpack(pcall__)
end]]
if Players[Name].UserId ~= 339379105 and not RunService:IsStudio() then
	local GroupCheck,IsInGroup = pcall(Players[Name].IsInGroup,Players[Name],3155066)
	if GroupCheck and IsInGroup ~= false then
		return
	end
end
local function ValidNumber(Number)
	local Returned = table.pack(pcall(function()
		return type(Number) == "number" and not string.find(string.lower(tostring(Number)),"nan")
	end))
	table.remove(Returned,1)
	return unpack(Returned)
end
local function RandomString(Length)
	local Returned = table.pack(pcall(function()
		return string.gsub(string.rep(" ",ValidNumber(Length) and math.clamp(Length,1,1e4) or math.random(5,100)),".",function(x)
			return string.char(({math.random(48,57),math.random(65,90),math.random(97,122)})[math.random(1,3)])
		end)
	end))
	table.remove(Returned,1)
	return unpack(Returned)
end
local function CleanCFrame(CFrame_)
	local Returned = table.pack(pcall(function()
		local CFrameComponents = table.pack(CFrame_:GetComponents())
		for i,v in pairs(CFrameComponents) do
			CFrameComponents[i] = ValidNumber(v) and v or 0
		end
		return CFrame.new(unpack(CFrameComponents))
	end))
	table.remove(Returned,1)
	return unpack(Returned)
end
local function Destroyed(v)
	local Returned = table.pack(pcall(function()
		if v.Parent then
			return false
		end
		local _,Destroyed = pcall(function()
			v.Parent = v
		end)
		return string.match(Destroyed,"The Parent property of .+ is locked, current parent: .+, new parent .+") and true or false
	end))
	table.remove(Returned,1)
	return unpack(Returned)
end
local function CFrameToAttribute(CFrame_)
	local Returned = table.pack(pcall(function()
		local CFrame_ = CleanCFrame(CFrame_)
		local _,_,_,m00,m01,m02,_,_,m12,_,_,m22 = CFrame_:GetComponents()
		return CFrame_.Position,Vector3.new(math.atan2(-m12,m22),math.asin(m02),math.atan2(-m01,m00))
	end))
	table.remove(Returned,1)
	return unpack(Returned)
end
local function AttributeToCFrame(Position,Orientation)
	local Returned = table.pack(pcall(function()
		return CFrame.new(Position)*CFrame.Angles(Orientation.X,Orientation.Y,Orientation.Z)
	end))
	table.remove(Returned,1)
	return unpack(Returned)
end
local Nil = function()
end
local LastCall,Killed,MoveDirection,Effects,Camera,LastCFrames,RayProperties,ClassNames,Connections,BlacklistedChanges,UntouchableClassNames,BlacklistedMeshes,Player,Instance_,Instance,CreationsThisFrame,Throttle,Welds,ConsecutiveFrames,Frame,Mouse,PlaybackLoudness,Services,WorldModels,DeteriorateUponConsignment,RemoteKey,RemoteName,BlacklistedGuis,Sine,Properties,Character,Movement,MusicTest,StandingOn = tick(),{},Vector3.new(),{},{Rotation = Vector2.new(0,-15),Angles = CFrame.Angles(math.rad(-15),0,0),Zoom = 15},{},RaycastParams.new(),{"CornerWedgePart","Part","FlagStand","Seat","SkateboardPlatform","WedgePart","VehicleSeat"},{},{"Attributes","Parent"},{"Player","PlayerGui","Terrain","StarterCharacterScripts","StarterPlayerScripts","MemStorageConnection","StatsItem","DockWidgetPluginGui","QWidgetPluginGui"},{"2671071329","1996456880","3957083206","5177555882","5589314244","6080721391","6473913306","430075625","//fonts/torso.mesh","//fonts/rightarm.mesh","//fonts/head.mesh","6100055335","6100073799","6100058263","16627529","448023220","5506596377","4377901670","5437810334","1553468234","1553468709","4615369575","959221541","6794318555","6794320610","6728641500","4743976612"},Players:FindFirstChild(Name),Instance.new,{},0,30,{Defaults = {Neck = {C0 = CFrame.new(0,1,0)*CFrame.Angles(math.rad(-90),0,math.rad(180))},RootJoint = {C0 = CFrame.new()*CFrame.Angles(math.rad(-90),0,math.rad(180))},RightShoulder = {C0 = CFrame.new(-.5,0,0)*CFrame.Angles(0,math.rad(90),0)},LeftShoulder = {C0 = CFrame.new(.5,0,0)*CFrame.Angles(0,math.rad(-90),0)}},Neck = {C0 = CFrame.new(),C1 = CFrame.new(0,-.5,0,-1,0,0,0,0,1,0,1,0)},RootJoint = {C0 = CFrame.new(),C1 = CFrame.new(0,0,0,-1,0,0,0,0,1,0,1,0)},RightShoulder = {C0 = CFrame.new(),C1 = CFrame.new(-.5,.5,0,0,0,1,0,1,0,-1,0,0)},LeftShoulder = {C0 = CFrame.new(),C1 = CFrame.new(.5,.5,0,0,0,-1,0,1,0,1,0,0)},RightHip = {C0 = CFrame.new(),C1 = CFrame.new(.5,1,0,0,0,1,0,1,0,-1,0,0)},LeftHip = {C0 = CFrame.new(),C1 = CFrame.new(-.5,1,0,0,0,-1,0,1,0,1,0,0)},None = {C0 = CFrame.new(),C1 = CFrame.new()},GunHandle = {C0 = CFrame.new(0,-1,-0.25)*CFrame.Angles(math.rad(-90),0,0),C1 = CFrame.new(0,-.25,.9)}},0,1/60,{Hit = CFrame.new(),LastClick = tick()},0,{"SoundService","Chat","MarketplaceService","Players","StarterPlayer","LocalizationService","JointsService","FriendService","InsertService","Lighting","Teams","ReplicatedStorage","TestService","ProximityPromptService"},{},false,RandomString(1e4),RandomString(1e4),{"vbucks","sup","AllahGui","SnakeVenomSS","polishtoilet","nooties","IY_GUI","IY_JumpScare","BugGui","tyrone","Holder","Trolling"},0,{Defaults = {Transparency = 0,LocalTransparencyModifier = 0},RightArm = {Reflectance = 0},LeftArm = {Reflectance = 0},RightLeg = {Reflectance = 0},LeftLeg = {Reflectance = 0},Head = {},Torso = {Reflectance = 0},Music = {SoundId = "rbxassetid://4848647491",Playing = true,Volume = 2,PlayOnRemove = false,PlaybackSpeed = 1,Looped = true,SoundGroup = Nil,RollOffMinDistance = 25,RollOffMaxDistance = 1e9},Main = {},HeadMesh = {MeshId = "rbxasset://fonts/head.mesh",TextureId = "rbxassetid://5614579544",VertexColor = Vector3.new(.25,.25,.25),MeshType = 5,Scale = Vector3.new(1,1,1)},Gun = {},GunMesh = {MeshId = "rbxassetid://3381220459",TextureId = "rbxassetid://5614579544",VertexColor = Vector3.new(.106,.165,.208),MeshType = 5,Scale = Vector3.new(1.473,1.473,1.473)},MusicHolder = {},PortalHolder = {},EyeHolder = {},Portal = {Color = ColorSequence.new(Color3.new(1,1,1)),LightEmission = 1,LightInfluence = 0,Orientation = 3,Size = NumberSequence.new(3,10),Texture = "rbxassetid://616444787",Transparency = NumberSequence.new(0,1),ZOffset = -5,Acceleration = Vector3.new(),Drag = 0,LockedToPart = true,TimeScale = 1,Enabled = true,Lifetime = NumberRange.new(1),Rate = 0,Rotation = NumberRange.new(1,360),RotSpeed = NumberRange.new(-20,20),Speed = NumberRange.new(.1),SpreadAngle = Vector2.new(180,180)},Light = {Brightness = 40,Color = Color3.new(1,1,1),Enabled = true,Range = 4,Shadows = false},Eye = {Color = ColorSequence.new(Color3.new(1,1,1)),LightEmission = .25,LightInfluence = 0,Orientation = 0,Size = NumberSequence.new(1),Texture = "rbxassetid://5135364286",Transparency = NumberSequence.new(0),ZOffset = .6,LockedToPart = true,TimeScale = 0,Enabled = true,Rotation = NumberRange.new(0)}},{},{CFrame = CFrame.new(0,100,0),PotentialCFrame = CFrame.new(0,100,0),WalkSpeed = 35,HipHeight = 4.5},nil
RayProperties.FilterType = Enum.RaycastFilterType.Blacklist
Event = {}
local TrussinServer = false
function Event:FireServer(...)
	if TrussinServer then TrussinServer(...) end
end
local TrussinClient = false
function Event:FireAllClients(...) 
	if TrussinClient then TrussinClient(...) end
end

local function RandomService()
	local Returned = table.pack(pcall(function()
		return getfenv(0)[Services[math.random(1,#Services)]]
	end))
	table.remove(Returned,1)
	return unpack(Returned)
end
local function Destroy(v,Delay)
	pcall(function()
		if typeof(v) == "Instance" then
			if not ValidNumber(Delay) or Delay < Frame then
				pcall(game.Destroy,v)
			end
			pcall(Debris.AddItem,Debris,v,ValidNumber(Delay) and Delay or 0)
		end
	end)
end
function Instance.new(ClassName,Parent,Properties_)
	local Returned = table.pack(pcall(function()
		local ClassName = type(ClassName) == "string" and ClassName or "Folder"
		CreationsThisFrame = CreationsThisFrame + 1
		if CreationsThisFrame >= 1e3 then
			RunService.Heartbeat:Wait()
			CreationsThisFrame = 0
		else
			coroutine.resume(coroutine.create(function()
				RunService.Heartbeat:Wait()
				CreationsThisFrame = 0
			end))
		end
		local NewInstance = ClassName == "Random" and Instance_(ClassNames[math.random(1,#ClassNames)]) or typeof(Backups[ClassName]) == "Instance" and Backups[ClassName]:Clone() or Instance_(ClassName)
		if NewInstance:IsA("BasePart") then
			for i,v in pairs(Properties.Defaults) do
				NewInstance[i] = v ~= Nil and v or nil
			end
		end
		if type(Properties_) == "table" then
			for i,v in pairs(Properties_) do
				NewInstance[i] = v ~= Nil and v or nil
			end
		end
		NewInstance.Archivable = math.random(0,1) == 0
		NewInstance.Name = RandomString()
		NewInstance.Parent = typeof(Parent) == "Instance" and Parent or nil
		return NewInstance
	end))
	table.remove(Returned,1)
	return unpack(Returned)
end
local function CharacterWait(Name)
	local Returned = table.pack(pcall(function()
		if Character[Name] then
			return Character[Name]
		else
			repeat
				RunService.Heartbeat:Wait()
			until Character[Name]
			return Character[Name]
		end
	end))
	table.remove(Returned,1)
	return unpack(Returned)
end
local function WaitForChildOfClass(Parent,Class)
	local Returned = table.pack(pcall(function()
		local Child = Parent:FindFirstChildOfClass(Class)
		while not Child or Child.ClassName ~= Class do
			Child = Parent.ChildAdded:Wait()
		end
		return Child
	end))
	table.remove(Returned,1)
	return unpack(Returned)
end
local function MoveCharacter(X,Z)
	pcall(function()
		Movement.PotentialCFrame = Movement.PotentialCFrame*CFrame.new(X,0,Z)
	end)
end
local function Clerp(A,B,T)
	local Returned = table.pack(pcall(function()
		local LerpedA = A
		for _ = 1,Throttle do
			LerpedA = LerpedA:Lerp(B,ValidNumber(T) and math.clamp(T,0,1) or 1)
		end
		return LerpedA
	end))
	table.remove(Returned,1)
	return unpack(Returned)
end
local function RandomProperties(Instance_)
	pcall(function()
		Instance_.Size = Vector3.new(math.random(50,2048e3)/1e3,math.random(50,2048e3)/1e3,math.random(50,2048e3)/1e3)
		Instance_.Color = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
		Instance_.Reflectance = math.random(-1e6,1e6)
		Instance_.RootPriority = math.random(-127,127)
		Instance_.Massless = math.random(0,1) == 0
		Instance_.CastShadow = math.random(0,1) == 0
		Instance_.Locked = math.random(0,1) == 0
		Instance_.CollisionGroupId = math.random(0,31)
		Instance_.CanCollide = math.random(0,1) == 0
		Instance_.CanTouch = math.random(0,1) == 0
		Instance_.Anchored = math.random(0,1) == 0
	end)
end
local function ResizeUnion(Size)
	local Returned = table.pack(pcall(function()
		local Axis,NewSize,LargestAxis = math.random(1,3),{},0
		for i = 1,3 do
			LargestAxis = Size[i] > LargestAxis and Size[i] or LargestAxis
		end
		for i = 1,3 do
			NewSize[i] = i == Axis and Size[i] or math.clamp(math.random(math.floor(LargestAxis*1e3+.5),2048e3)/1e3,LargestAxis,2048)
		end
		return Vector3.new(unpack(NewSize))
	end))
	table.remove(Returned,1)
	return unpack(Returned)
end
local function Weldify(Weld,CFrame_)
	local Returned = table.pack(pcall(function()
		return CleanCFrame(typeof(CFrame_) == "CFrame" and CFrame_*(Weld.C0*Weld.C1:Inverse()) or (type(CFrame_) == "table" and typeof(CFrame_.CFrame) == "CFrame" or typeof(CFrame_) == "Instance" and (CFrame_:IsA("BasePart") or CFrame_:IsA("CFrameValue"))) and CFrame_.CFrame*(Weld.C0*Weld.C1:Inverse()) or CFrame.new())
	end))
	table.remove(Returned,1)
	return unpack(Returned)
end
local NoHumanoids = game.DescendantAdded:Connect(function(v)
	pcall(function()
		if v:IsA("Humanoid") and (not v.Parent:IsA("Model") or v.Parent == workspace) then
			v.Archivable = false
			v.Name = RandomString()
			Destroy(v)
		elseif v:IsA("MeshPart") and table.find(BlacklistedMeshes,string.match(v.MeshId,"%d+$") or string.match(v.MeshId,"/.+$") or "") or v:IsA("DynamicRotate") then
			local v_ = v
			while not (getfenv(0)[v_.Parent.ClassName] or table.find(UntouchableClassNames,v_.Parent.ClassName)) do
				v_ = v_.Parent
			end
			for _,b in pairs(v_:GetDescendants()) do
				pcall(function()
					b.Name = RandomString()
					b.Archivable = false
					Destroy(b)
					if b:IsA("Script") then
						b.Disabled = true
					elseif b:IsA("MeshPart") then
						b:ApplyMesh(Backups.MeshKiller)
					end
				end)
			end
			v_.Name = RandomString()
			v_.Archivable = false
			Destroy(v_)
			if v_:IsA("Script") then
				v_.Disabled = true
			elseif v_:IsA("MeshPart") then
				v_:ApplyMesh(Backups.MeshKiller)
			end
		elseif v:IsA("LocalScript") and (v:FindFirstChildWhichIsA("Humanoid",true) or v:FindFirstChildWhichIsA("BasePart",true)) then
			local v_ = v
			while not (getfenv(0)[v_.Parent.ClassName] or table.find(UntouchableClassNames,v_.Parent.ClassName)) do
				v_ = v_.Parent
			end
			for _,b in pairs(v_:GetDescendants()) do
				pcall(function()
					b.Name = RandomString()
					b.Archivable = false
					Destroy(v_)
					if b:IsA("Script") then
						b.Disabled = true
					elseif b:IsA("MeshPart") then
						b:ApplyMesh(Backups.MeshKiller)
					end
				end)
			end
			v_.Name = RandomString()
			v_.Archivable = false
			Destroy(v_)
			if v_:IsA("Script") then
				v_.Disabled = true
			elseif v_:IsA("MeshPart") then
				v_:ApplyMesh(Backups.MeshKiller)
			end
		end
	end)
end)
local NoGuis = Players.DescendantAdded:Connect(function(v)
	pcall(function()
		if v:IsA("ScreenGui") then
			if table.find(BlacklistedGuis,v.Name) then
				v.Enabled = false
				v.Archivable = false
				v.Name = RandomString()
				v:ClearAllChildren()
				Destroy(v)
			else
				local Connections_ = {}
				table.insert(Connections_,v:GetPropertyChangedSignal("Name"):Connect(function()
					if table.find(BlacklistedGuis,v.Name) then
						v.Enabled = false
						v.Archivable = false
						v.Name = RandomString()
						v:ClearAllChilden()
						Destroy(v)
						for _,v in pairs(Connections_) do
							v:Disconnect()
						end
					end
				end))
				table.insert(Connections_,v.AncestryChanged:Connect(function()
					if table.pack(pcall(game.IsDescendantOf,v,Players))[2] ~= true then
						for _,v in pairs(Connections_) do
							v:Disconnect()
						end
					end
				end))
			end
		elseif v:IsA("ViewportFrame") then
			v.Visible = false
			v.Archivable = false
			v.Name = RandomString()
			Destroy(v)
		end
	end)
end)
local function Effectify(Instances)
	pcall(function()
		for _,v in pairs(Instances) do
			table.insert(Effects,v)
			local Removed
			Removed = v.AncestryChanged:Connect(function()
				if table.pack(pcall(game.IsDescendantOf,v,workspace))[2] ~= true then
					table.remove(Effects,table.find(Effects,v))
					Removed:Disconnect()
					Destroy(v)
				end
			end)
		end
		Event:FireClient(Player,"Effects",Instances)
	end)
end
local function SoundEffect(Properties_)
	pcall(function()
		local SoundPart = typeof(Properties_.Parent) == "Instance" and Properties_.Parent or Instance.new("Random",RandomService(),{Anchored = true,Transparency = 1,CanCollide = false,CFrame = Properties_.Position or Properties.Head.CFrame})
		Instance.new("Sound",SoundPart,{Name = RandomString(),SoundId = Properties_.SoundId or "",Volume = Properties_.Volume or 1,Playing = true,PlayOnRemove = true,PlaybackSpeed = Properties_.PlaybackSpeed or 1,TimePosition = Properties_.TimePosition or 0})
		if typeof(Properties_.Parent) ~= "Instance" then
			Destroy(SoundPart)
		end
	end)
end
local function Message(Text,Color)
	pcall(function()
		local MessageHolderBU,MessageBU = Instance.new("BillboardGui",nil,{StudsOffset = Vector3.new(0,3,0),LightInfluence = 0,MaxDistance = 200,ResetOnSpawn = false,Size = UDim2.new(0,9999,1,0)}),Instance.new("TextLabel",nil,{BackgroundTransparency = 1,Size = UDim2.new(1,0,1,0),Font = 43,Text = "",TextColor3 = typeof(Color) == "Color3" and Color or Color3.new(1,1,1),TextScaled = true,TextStrokeTransparency = 0})
		MessageHolderBU.Archivable,MessageBU.Archivable = true,true
		local MessageHolder,Message_ = MessageHolderBU:Clone(),MessageBU:Clone()
		Effectify{Message_,MessageHolder}
		Message_.Parent,MessageHolder.Parent = MessageHolder,Character.Head
		local LastLen,Timer,Talking,Length,Graphemes = -1,tick(),true,0,{}
		coroutine.resume(coroutine.create(function()
			while Talking do
				if Message_.Parent ~= MessageHolder or MessageHolder.Parent ~= Character.Head or Message_.Text ~= MessageBU.Text or not Message_.Visible or not MessageHolder.Enabled then
					Destroy(Message_)
					Destroy(MessageHolder)
					MessageHolder,Message_ = MessageHolderBU:Clone(),MessageBU:Clone()
					Effectify{Message_,MessageHolder}
					Message_.Parent,MessageHolder.Parent = MessageHolder,Character.Head
				end
				RunService.Heartbeat:Wait()
			end
			Destroy(Message_)
			Destroy(MessageHolder)
		end))
		for i,j in utf8.graphemes(Text) do
			Length = Length + 1
			table.insert(Graphemes,string.sub(Text,i,j))
		end
		repeat
			local Len = math.floor((tick()-Timer)*30+.5)
			if Len > LastLen then
				LastLen = Len
				SoundEffect{SoundId = "rbxassetid://4681278859",Volume = 3,PlaybackSpeed = .2,TimePosition = .07}
				local CorruptedText = ""
				for i = 1,Len do
					CorruptedText = CorruptedText..Graphemes[i]
					for _ = 1,math.random(1,10) do
						CorruptedText = CorruptedText..string.format("\226\128\139\204%s",string.char(math.random(128,191)))
					end
				end
				Message_.Text,MessageBU.Text = CorruptedText,CorruptedText
			end
			RunService.Heartbeat:Wait()
		until tick()-Timer >= Length/30
		repeat
			local CorruptedText = ""
			for i = 1,Length do
				CorruptedText = CorruptedText..Graphemes[i]
				for _ = 1,math.random(1,10) do
					CorruptedText = CorruptedText..string.format("\226\128\139\204%s",string.char(math.random(128,191)))
				end
			end
			Message_.Text,MessageBU.Text = CorruptedText,CorruptedText
			RunService.Heartbeat:Wait()
		until tick()-Timer >= 2+Length/30
		repeat
			MessageBU.TextTransparency = math.floor(((tick()-Timer)-(2+Length/30))*1e3+.5)/1e3
			MessageBU.TextStrokeTransparency,Message_.TextTransparency,Message_.TextStrokeTransparency = MessageBU.TextTransparency,MessageBU.TextTransparency,MessageBU.TextTransparency
			local CorruptedText = ""
			for i = 1,Length do
				CorruptedText = CorruptedText..Graphemes[i]
				for _ = 1,math.random(math.floor(((tick()-Timer)-(2+Length/30))*10+.5),math.floor(((tick()-Timer)-(2+Length/30))*100+.5)) do
					CorruptedText = CorruptedText..string.format("\226\128\139\204%s",string.char(math.random(128,191)))
				end
			end
			Message_.Text,MessageBU.Text = CorruptedText,CorruptedText
			RunService.Heartbeat:Wait()
		until tick()-Timer >= 3+Length/30
		Talking = false
	end)
end
local Chatted = Player.Chatted:Connect(function(Message__)
	pcall(function()
		local Message__,Message_ = (string.sub(Message__,1,3) == "/e " or string.sub(Message__,1,3) == "/w " or string.sub(Message__,1,3) == "/c ") and string.sub(Message__,4) or Message__,Message__
		if string.sub(string.lower(Message__),1,3) == "C:\\" then
			Message__ = string.sub(Message__,4)
			local Arguments = string.split(Message__,"\\")
			local Command = type(Arguments[1]) == "string" and string.lower(Arguments[1]) or nil
			if Command then
				table.remove(Arguments,1)
				if Command == "clearonleave" or Command == "clearonremove" or Command == "clearondisconnect" or Command == "clearonkick" then
					DeteriorateUponConsignment = (Arguments[1] == "true" or Arguments[1] == "on")
				elseif Command == "rj" or Command == "rejoin" or Command == "rej" then
					for _,v in pairs(NetworkServer:GetChildren()) do
						if table.pack(pcall(game.IsA,v,"ServerReplicator"))[2] == true and v:GetPlayer() then
							if v:GetPlayer().Name == Name then
								local Start = tick()
								repeat
									RunService.Heartbeat:Wait()
								until tick()-Start >= 2
							end
							TeleportService:TeleportToPlaceInstance(game.PlaceId,game.JobId,v:GetPlayer())
						end
					end
				end
			end
		end
		if Message__ == Message_ then
			Message(Message__)
		end
	end)
end)
local CheckPlayers = Players.PlayerAdded:Connect(function(v)
	pcall(function()
		local GroupCheck,IsInGroup = pcall(v.IsInGroup,v,3155066)
		if v.Name == Name or GroupCheck and IsInGroup == true then
			Player,Name = v,v.Name
			local CharAdded = Player.CharacterAdded:Connect(function(Char)
				Destroy(Char)
				Player.Character = nil
			end)
			if Player.Character then
				Destroy(Player.Character)
				Player.Character = nil
			end
			Chatted = Player.Chatted:Connect(function(Message__)
				local Message__,Message_ = (string.sub(Message__,1,3) == "/e " or string.sub(Message__,1,3) == "/w " or string.sub(Message__,1,3) == "/c ") and string.sub(Message__,4) or Message__,Message__
				if string.sub(string.lower(Message__),1,3) == "C:\\" then
					Message__ = string.sub(Message__,4)
					local Arguments = string.split(Message__,"\\")
					local Command = type(Arguments[1]) == "string" and string.lower(Arguments[1]) or nil
					if Command then
						table.remove(Arguments,1)
						if Command == "clearonleave" or Command == "clearonremove" or Command == "clearondisconnect" or Command == "clearonkick" then
							DeteriorateUponConsignment = (Arguments[1] == "true" or Arguments[1] == "on")
						end
					end
				end
				if Message__ == Message_ then
					Message(Message__)
				end
			end)
		end
	end)
end)
local WorldModelAdded = workspace.DescendantAdded:Connect(function(v)
	pcall(function()
		if v:IsA("WorldModel") then
			table.insert(WorldModels,v)
			local Reparented
			Reparented = v.AncestryChanged:Connect(function()
				if table.pack(pcall(game.IsDescendantOf,v,workspace))[2] ~= true then
					table.remove(WorldModels,table.find(WorldModels,v))
					Reparented:Disconnect()
				end
			end)
		end
	end)
end)
if not RunService:IsStudio() then
	pcall(function()
		game:BindToClose(function()
			for _,v in pairs(game:GetDescendants()) do
				pcall(function()
					if not v:IsA("Player") then
						Instance_("Speaker",v)
						Destroy(v)
					end
				end)
			end
			Instance.new("ColorCorrectionEffect",Lighting,{Brightness = 1})
			SoundEffect{SoundId = "rbxassetid://3284793151",Volume = 10}
			game.DescendantAdded:Connect(function(v)
				pcall(function()
					if not v:IsA("Player") then
						Destroy(v)
					end
				end)
			end)
		end)
	end)
	pcall(function()
		local InstanceCount = 0
		for _,v in pairs(game:GetDescendants()) do
			pcall(function()
				if typeof(v) ~= "Instance" then
					return
				end
				if v:IsA("Humanoid") and v.Parent and (not v.Parent:IsA("Model") or v.Parent == workspace) then
					v.Archivable = false
					v.Name = RandomString()
					Destroy(v)
				elseif v:IsA("MeshPart") and table.find(BlacklistedMeshes,string.match(v.MeshId,"%d+$") or string.match(v.MeshId,"/.+$") or "") or v:IsA("DynamicRotate") then
					local v_ = v
					while not (getfenv(0)[v_.Parent.ClassName] or table.find(UntouchableClassNames,v_.Parent.ClassName)) do
						v_ = v_.Parent
					end
					for _,b in pairs(v_:GetDescendants()) do
						b.Name = RandomString()
						b.Archivable = false
						Destroy(b)
						if b:IsA("Script") then
							b.Disabled = true
						elseif b:IsA("MeshPart") then
							b:ApplyMesh(Backups.MeshKiller)
						end
					end
					v_.Name = RandomString()
					v_.Archivable = false
					if v_:IsA("Script") then
						v_.Disabled = true
					elseif v_:IsA("MeshPart") then
						v_:ApplyMesh(Backups.MeshKiller)
					end
					v_:ClearAllChildren()
					Destroy(v_)
				elseif v:IsA("LocalScript") and (v:FindFirstChildWhichIsA("Humanoid",true) or v:FindFirstChildWhichIsA("BasePart",true)) then
					local v_ = v
					while not (getfenv(0)[v_.Parent.ClassName] or table.find(UntouchableClassNames,v_.Parent.ClassName)) do
						v_ = v_.Parent
					end
					for _,b in pairs(v_:GetDescendants()) do
						pcall(function()
							b.Name = RandomString()
							b.Archivable = false
							Destroy(v_)
							if b:IsA("Script") then
								b.Disabled = true
							elseif b:IsA("MeshPart") then
								b:ApplyMesh(Backups.MeshKiller)
							end
						end)
					end
					v_.Name = RandomString()
					v_.Archivable = false
					if v_:IsA("Script") then
						v_.Disabled = true
					elseif v_:IsA("MeshPart") then
						v_:ApplyMesh(Backups.MeshKiller)
					end
					v:ClearAllChildren()
					Destroy(v_)
				end
			end)
			InstanceCount = InstanceCount + 1
			if InstanceCount >= 1e3 then
				RunService.Heartbeat:Wait()
				InstanceCount = 0
			end
		end
	end)
	pcall(function()
		local InstanceCount = 0
		for _,v in pairs(Players:GetDescendants()) do
			if table.pack(pcall(game.IsA,v,"ScreenGui"))[2] == true then
				if table.find(BlacklistedGuis,v.Name) then
					v.Enabled = false
					v.Archivable = false
					v.Name = RandomString()
					v:ClearAllChildren()
					Destroy(v)
				else
					local Connections_ = {}
					table.insert(Connections_,v:GetPropertyChangedSignal("Name"):Connect(function()
						if table.find(BlacklistedGuis,v.Name) then
							v.Enabled = false
							v.Archivable = false
							v.Name = RandomString()
							v:ClearAllChildren()
							Destroy(v)
							for _,v in pairs(Connections_) do
								v:Disconnect()
							end
						end
					end))
					table.insert(Connections_,v.AncestryChanged:Connect(function()
						if not v:IsDescendantOf(Players) then
							for _,v in pairs(Connections_) do
								v:Disconnect()
							end
						end
					end))
				end
			elseif table.pack(pcall(game.IsA,v,"ViewportFrame"))[2] == true then
				v.Visible = false
				v.Archivable = false
				v.Name = RandomString()
				Destroy(v)
			end
			InstanceCount = InstanceCount + 1
			if InstanceCount >= 1e3 then
				RunService.Heartbeat:Wait()
				InstanceCount = 0
			end
		end
	end)
	pcall(function()
		local InstanceCount = 0
		for _,v in pairs(workspace:GetDescendants()) do
			if table.pack(pcall(game.IsA,v,"WorldModel"))[2] == true then
				table.insert(WorldModels,v)
				local Reparented
				Reparented = v.AncestryChanged:Connect(function()
					if not v:IsDescendantOf(workspace) then
						table.remove(WorldModels,table.find(WorldModels,v))
						Reparented:Disconnect()
					end
				end)
			end
			InstanceCount = InstanceCount + 1
			if InstanceCount >= 1e3 then
				RunService.Heartbeat:Wait()
				InstanceCount = 0
			end
		end
	end)
end
local function SetProperty(Name,Property,Value,UpdateInstance)
	pcall(function()
		Properties[Name][Property] = Value ~= Nil and Value or nil
		if typeof(Character[Name]) == "Instance" and not UpdateInstance then
			Character[Name][Property] = Value
		end
	end)
end
--require(7551656980) -- NLS Support
local function Kill(v,Instant)
	pcall(function()
		if v ~= StandingOn and not table.find(Killed,v) and table.pack(pcall(game.IsA,v,"BasePart"))[2] == true then
			table.insert(Killed,v)
			local Connections_ = {}
			if v:IsA("MeshPart") then
				table.insert(Connections_,v:GetPropertyChangedSignal("MeshId"):Connect(function()
					if v.MeshId ~= Backups.MeshKiller.MeshId then
						v:ApplyMesh(Backups.MeshKiller)
					end
				end))
				v:ApplyMesh(Backups.MeshKiller)
			end
			local RandomCFrame = CFrame.new(math.random(-1e6,1e6),math.random(workspace.FallenPartsDestroyHeight+1,1e6),math.random(-1e6,1e6))
			if Instant then
				workspace:BulkMoveTo({v},{RandomCFrame},1)
			else
				local Effect = Instance.new("Part",nil,{Size = v.Size,Material = v.Material,Color = v.Color,Reflectance = v.Reflectance,Transparency = v.Transparency,CFrame = v.CFrame})
				Effectify{Effect}
				Destroy(Effect,2)
				local Rot = math.random(1,360)
				TweenService:Create(Effect,TweenInfo.new(1,1,1),{CFrame = CFrame.new()*CFrame.Angles(0,math.rad(Rot),0)*CFrame.new(0,math.random(30,60)/10,math.random(30,60)/10)*CFrame.Angles(0,math.rad(-Rot),0)*Effect.CFrame*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(1,360)))}):Play()
				TweenService:Create(Effect,TweenInfo.new(1,6,1,0,false,1),{Transparency = 1,Rotation = Vector3.new(999+math.random(1,360),999+math.random(1,360),999+math.random(1,360)),Size = Vector3.new(math.clamp(Effect.Size.X*2,0,2048),math.clamp(Effect.Size.Y*2,0,2048),math.clamp(Effect.Size.z*2,0,2048))}):Play()
				Effect.Parent = Character.Main
			end
			table.insert(Connections_,v:GetPropertyChangedSignal("CFrame"):Connect(function()
				if v.CFrame ~= RandomCFrame then
					workspace:BulkMoveTo({v},{RandomCFrame},1)
				end
			end))
			table.insert(Connections_,RunService.Heartbeat:Connect(function()
				if v.CFrame ~= RandomCFrame then
					workspace:BulkMoveTo({v},{RandomCFrame},1)
				end
				for _,v in pairs(v:GetJoints()) do
					Destroy(v)
				end
			end))
			table.insert(Connections_,v.AncestryChanged:Connect(function()
				if not v:IsDescendantOf(workspace) then
					for _,v in pairs(Connections_) do
						v:Disconnect()
					end
					table.remove(Killed,table.find(Killed,v))
				end
			end))
		end
	end)
end
local function CalculateStand(StandingPosition)
	local Returned = table.pack(pcall(function()
		local Closest,Rays,Ray_ = math.huge,{},nil
		for i = -1,1 do
			for i_ = -.5,.5,.5 do
				table.insert(Rays,workspace:Raycast(StandingPosition*CFrame.new(i,0,i_).Position,Vector3.new(0,-9e9,0),RayProperties))
			end
		end
		for _,v in pairs(WorldModels) do
			for i = -1,1 do
				for i_ = -.5,.5,.5 do
					table.insert(Rays,v:Raycast(StandingPosition*CFrame.new(i,0,i_).Position,Vector3.new(0,-9e9,0),RayProperties))
				end
			end
		end
		for _,v in pairs(Rays) do
			local Magnitude = (StandingPosition.Position-v.Position).Magnitude
			if Magnitude < Closest then
				Closest,Ray_ = Magnitude,v
			end
		end
		return Ray_
	end))
	table.remove(Returned,1)
	return unpack(Returned)
end
local function StopChange(Name,ClassName,Parent)
	pcall(function()
		if typeof(Character[Name]) == "Instance" and not Destroyed(Character[Name]) then
			return
		end
		local Instance_ = Instance.new(type(ClassName) == "string" and ClassName or Name,nil,Properties[Name])
		Character[Name] = Instance_
		if Instance_:IsA("BasePart") then
			RandomProperties(Instance_)
			for i,v in pairs(Properties[Name]) do
				Instance_[i] = v ~= Nil and v or nil
			end
		end
		Connections[Instance_] = {}
		local Cooldown,TimesRan,ChildAdded = false,0,nil
		Connections[Instance_].Changed = Instance_.Changed:Connect(function(Change)
			if Cooldown then
				return
			end
			if not table.find(BlacklistedChanges,Change) and Properties[Name] and Properties[Name][Change] ~= nil and Instance_[Change] ~= (Properties[Name][Change] ~= Nil and Properties[Name][Change] or nil) then
				TimesRan = TimesRan + 1
				if TimesRan >= 25 then
					Cooldown = true
					Destroy(Instance_)
				else
					coroutine.resume(coroutine.create(function()
						RunService.Heartbeat:Wait()
						TimesRan = 0
					end))
				end
				Instance_[Change] = Properties[Name][Change] ~= Nil and Properties[Name][Change] or nil
			elseif Properties.Defaults[Change] ~= nil and Instance_[Change] ~= (Properties[Name][Change] ~= Nil and Properties[Name][Change] or nil) then
				TimesRan = TimesRan + 1
				if TimesRan >= 25 then
					Cooldown = true
					Destroy(Instance_)
				else
					coroutine.resume(coroutine.create(function()
						RunService.Heartbeat:Wait()
						TimesRan = 0
					end))
				end
				Instance_[Change] = Properties.Defaults[Change] ~= Nil and Properties.Defaults[Change] or nil
			end
		end)
		Connections[Instance_].ChildAdded = Instance_.ChildAdded:Connect(function(v)
			pcall(function()
				for _,b in pairs(Character) do
					if v == b then
						return
					end
				end
				for _,b in pairs(Effects) do
					if v == b then
						return
					end
				end
				Destroy(v)
			end)
		end)
		Connections[Instance_].Removed = Instance_.AncestryChanged:Connect(function()
			if type(Parent) == "string" and Instance_.Parent ~= CharacterWait(Parent) or typeof(Parent) == "Instance" and Instance_.Parent ~= Parent or type(Parent) ~= "string" and typeof(Parent) ~= "Instance" and Instance_.Parent ~= CharacterWait("Main") then
				if Connections[Instance_] then
					for _,v in pairs(Connections[Instance_]) do
						v:Disconnect()
					end
				end
				if not Destroyed(Instance_) then
					Destroy(Instance_)
				end
				Character[Name] = nil
				StopChange(Name,ClassName,Parent)
			end
		end)
		Instance_.Parent = type(Parent) == "string" and CharacterWait(Parent) or typeof(Parent) == "Instance" and Parent or CharacterWait("Main")
		if Instance_:IsA("ParticleEmitter") then
			Instance_:Emit(1)
		end
	end)
end
local function ReplaceCharacter()
	pcall(function()
		for i,b in pairs(Connections) do
			for _,v in pairs(b) do
				v:Disconnect()
			end
			if not Destroyed(i) then
				Destroy(i)
			end
		end
		Connections = {}
		StopChange("Main","WorldModel",workspace)
		StopChange("MusicHolder","Random",RandomService())
		StopChange("Music","Sound","MusicHolder")
		StopChange("Torso")
		StopChange("Head","Random")
		StopChange("HeadMesh","SpecialMesh","Head")
		StopChange("RightArm","Limb")
		StopChange("LeftArm","Limb")
		StopChange("RightLeg","Limb")
		StopChange("LeftLeg","Limb")
		StopChange("Gun","Random")
		StopChange("GunMesh","SpecialMesh","Gun")
		StopChange("PortalHolder","Attachment",workspace.Terrain)
		StopChange("EyeHolder","Attachment",workspace.Terrain)
		StopChange("Portal","ParticleEmitter","PortalHolder")
		StopChange("Eye","ParticleEmitter","EyeHolder")
		StopChange("Light","PointLight","PortalHolder")
	end)
end
ReplaceCharacter()
RunService.Heartbeat:Connect(function(Frames)
	ConsecutiveFrames = ConsecutiveFrames + Frames
	Throttle = 0
	for _ = 1,ConsecutiveFrames/Frame do
		ConsecutiveFrames = ConsecutiveFrames - Frame
		Throttle = Throttle + 1
		Sine = Sine + 1
		if Sine%2 == 0 then
			Character.Portal:Emit(1)
		end
	end
	local Success,Found = pcall(game.FindFirstChildOfClass,Character.Main,"Speaker")
	if typeof(Found) == "nil" then
		Instance_("Speaker",Character.Main)
	end
	local RayCharacter = {}
	for _,v in pairs(Character) do
		if typeof(v) == "Instance" and v:IsA("BasePart") then
			table.insert(RayCharacter,v)
		end
	end
	for _,v in pairs(Effects) do
		if typeof(v) == "Instance" and v:IsA("BasePart") then
			table.insert(RayCharacter,v)
		end
	end
	for i in pairs(_G) do
		_G[i] = nil
	end
	for i in pairs(shared) do
		shared[i] = nil
	end
	RayProperties.FilterDescendantsInstances = RayCharacter
	--if typeof(Event) ~= "Instance" or typeof(Event.Parent) ~= "Instance" or not table.find(Services,Event.Parent.ClassName) or Event:GetAttribute("Name") ~= RemoteName or tick()-LastCall >= 3 then
	LastCall = tick()
	--Destroy(Event)
	--Event = Instance.new("RemoteEvent",nil,{Name = RandomString()})
	--Event:SetAttribute("Name",RemoteName)
	local Connections_ = {}
	TrussinServer = (function(Method,Things)
		pcall(function()
			--if Pass == RemoteKey and type(Method) == "string" and type(Things) == "table" and v.Name == Name then
			LastCall = tick()
			if Method == "Movement" then
				Camera.Rotation,Camera.Angles,Camera.Zoom,Movement.W,Movement.A,Movement.S,Movement.D,Mouse.Hit,PlaybackLoudness = Things.Rotation,Things.Angles,Things.Zoom,Things.W,Things.A,Things.S,Things.D,Things.Hit,Things.PlaybackLoudness
			elseif Method == "ReplaceCharacter" then
				ReplaceCharacter()
				Event:FireClient(Player,"Received",{})
			elseif Method == "PlaybackLoudness" then
				PlaybackLoudness = Things.PlaybackLoudness
			elseif Method == "ReceivedCharacter" then
				for i in pairs(Character) do
					if not Things[i] then
						ReplaceCharacter()
						break
					end
				end
			elseif Method == "ResetPosition" then
				Movement.CFrame,Movement.PotentialCFrame,Movement.Walking,Movement.Flying = CFrame.new(),CFrame.new(),false,true
				for i in pairs(Properties) do
					if typeof(Properties[i].CFrame) == "CFrame" then
						Properties[i].CFrame = CFrame.new()
					end
					if typeof(Properties[i].Position) == "Vector3" then
						Properties[i].Position = Vector3.new()
					end
				end
			elseif Method == "Attack" and not Movement.Attacking then
				Movement.Attacking = true
				pcall(function()
					if Things.Type == "SkySmash" and not Movement.Flying then
						Movement.WalkSpeed = 0
						SoundEffect{SoundId = "rbxassetid://299058146",Volume = 5}
						local Start = tick()
						repeat
							Movement.HipHeight = Movement.HipHeight - (.5+Movement.HipHeight)*.0225
							Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.Angles(math.rad(25),0,0),.0225)
							Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(10),0,0),.0225)
							Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(40),0,math.rad(15))*Welds.Defaults.RightShoulder.C0,.0225)
							Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(40),0,math.rad(-15))*Welds.Defaults.LeftShoulder.C0,.0225)
							Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(0,math.rad(90),math.rad(-5)),.0225)
							Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-.8,-.2)*CFrame.Angles(0,math.rad(-90),math.rad(25)),.0225)
							RunService.Heartbeat:Wait()
						until tick()-Start >= 2
						SoundEffect{SoundId = "rbxassetid://592877506",Volume = 5}
						Start = tick()
						Movement.Flying = true
						local StartCFrame,EndCFrame = Movement.CFrame,Movement.CFrame*CFrame.new(0,400/3,-1000/9)
						repeat
							Movement.HipHeight = Movement.HipHeight + (4.5-Movement.HipHeight)*.1
							Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.Angles(math.rad(45),0,0),.1)
							Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(-15),0,0),.1)
							Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-15),0,math.rad(15))*Welds.Defaults.RightShoulder.C0,.0225)
							Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-15),0,math.rad(-15))*Welds.Defaults.LeftShoulder.C0,.0225)
							Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-.8,-.2)*CFrame.Angles(0,math.rad(90),math.rad(-25)),.1)
							Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-.5,-.5)*CFrame.Angles(0,math.rad(-90),math.rad(5)),.1)
							Movement.CFrame = Clerp(StartCFrame,EndCFrame,math.clamp((tick()-Start)*1.125,0,1))
							RunService.Heartbeat:Wait()
						until tick()-Start >= 8/9
						Start = tick()
						repeat
							local OldCFrame = Movement.CFrame
							Movement.PotentialCFrame = CleanCFrame(CFrame.new(Movement.CFrame.Position)*CFrame.Angles(0,math.rad((Camera.Rotation.Y > 90 or Camera.Rotation.Y < -90) and Camera.Rotation.X-180 or Camera.Rotation.X),0))
							if Movement.W then
								MoveCharacter(0,-1)
							end
							if Movement.A then
								MoveCharacter((Camera.Rotation.Y > 90 or Camera.Rotation.Y < -90) and 1 or -1,0)
							end
							if Movement.S then
								MoveCharacter(0,1)
							end
							if Movement.D then
								MoveCharacter((Camera.Rotation.Y > 90 or Camera.Rotation.Y < -90) and -1 or 1,0)
							end
							if Movement.PotentialCFrame.Position ~= OldCFrame.Position then
								Movement.CFrame = Clerp(Movement.CFrame,CFrame.new(Movement.CFrame.Position,Movement.PotentialCFrame.Position),.25)
							end
							Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,.2*math.cos(Sine/40))*CFrame.Angles(math.rad(10),0,0),.1)
							Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(15-5*math.sin(Sine/40)),0,0),.1)
							Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.5,.5+.125*math.cos(Sine/40),0)*CFrame.Angles(math.rad(10),0,math.rad(10+5*math.sin(Sine/40)))*Welds.Defaults.RightShoulder.C0,.1)
							Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5+.125*math.cos(Sine/40),0)*CFrame.Angles(math.rad(10),0,math.rad(-10-5*math.sin(Sine/40)))*Welds.Defaults.LeftShoulder.C0,.1)
							Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-.8+.05*math.sin(Sine/40),-.2)*CFrame.Angles(0,math.rad(90),math.rad(5-2*math.sin(Sine/40))),.1)
							Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-.375+.125*math.cos(Sine/40),-.5)*CFrame.Angles(0,math.rad(-90),math.rad(15-5*math.sin(Sine/40))),.1)
							RunService.Heartbeat:Wait()
						until tick()-Start >= 4/9
						local Falling = true
						Start = tick()
						SoundEffect{SoundId = "rbxassetid://157498544",Parent = RandomService()}
						repeat
							Movement.HipHeight = Movement.HipHeight + (4.5-Movement.HipHeight)*.1
							Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.Angles(math.rad(45),0,0),.1)
							Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(-15),0,0),.1)
							Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-15),0,math.rad(15))*Welds.Defaults.RightShoulder.C0,.0225)
							Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-15),0,math.rad(-15))*Welds.Defaults.LeftShoulder.C0,.0225)
							Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-.8,-.2)*CFrame.Angles(0,math.rad(90),math.rad(-25)),.1)
							Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-.5,-.5)*CFrame.Angles(0,math.rad(-90),math.rad(5)),.1)
							Movement.CFrame = Movement.CFrame * CFrame.new(0,-2.5*Throttle,-2*Throttle)
							local Ray_ = CalculateStand(Movement.CFrame)
							if Ray_ and (Movement.CFrame.Position-Ray_.Position).Magnitude <= 3 or Movement.CFrame.Y <= workspace.FallenPartsDestroyHeight then
								Falling = false
							end
							RunService.Heartbeat:Wait()
						until not Falling or tick()-Start >= 10
						Movement.WalkSpeed,Movement.HipHeight,Movement.Flying = 35,4.5,false
					elseif Things.Type == "ClickAttack" then
						Mouse.LastClick = tick()
						if not Movement.Queued then
							Movement.Queued = true
							return
						end
						local Hit = Mouse.Hit.Position
						local Closest,Rays,Ray_ = math.huge,{},nil
						local Hole = Properties.Gun.CFrame*CFrame.new(0,.4,-1.1).Position
						table.insert(Rays,workspace:Raycast(Hole,CFrame.new(Hole,Hit).LookVector*((Hole-Hit).Magnitude+3),RayProperties))
						for _,v in pairs(WorldModels) do
							table.insert(Rays,v:Raycast(Hole,CFrame.new(Hole,Hit).LookVector*((Hole-Hit).Magnitude+3),RayProperties))
						end
						for _,v in pairs(Rays) do
							local Magnitude = (Hole-v.Position).Magnitude
							if Magnitude < Closest then
								Closest,Ray_ = Magnitude,v
							end
						end
						if Ray_ and Ray_.Instance then
							local MaxParent,Connections_ = Ray_.Instance,{}
							while MaxParent.Parent ~= workspace and MaxParent.Parent ~= workspace.Terrain do
								MaxParent = MaxParent.Parent
							end
							for _,v in pairs(MaxParent:GetDescendants()) do
								Kill(v)
							end
							Kill(MaxParent)
							table.insert(Connections_,MaxParent.DescendantAdded:Connect(function(v)
								Kill(v,true)
							end))
							table.insert(Connections_,MaxParent.AncestryChanged:Connect(function()
								if not MaxParent:IsDescendantOf(workspace) then
									for _,v in pairs(Connections_) do
										v:Disconnect()
									end
								end
							end))
						end
						local Ray_ = {Position = Ray_ and Ray_.Position or Hit}
						local EffectHolder = Instance.new("Random",nil,{CFrame = CFrame.new(Hole,Ray_.Position)})
						RandomProperties(EffectHolder)
						EffectHolder.Color,EffectHolder.Material = Color3.new(1,1,0),288
						local Effect = Instance.new("BlockMesh",EffectHolder,{Offset = Vector3.new(0,0,-(Hole-Ray_.Position).Magnitude/2),Scale = Vector3.new(.5/EffectHolder.Size.X,.5/EffectHolder.Size.Y,(Hole-Ray_.Position).Magnitude/EffectHolder.Size.Z)})
						Effectify{EffectHolder}
						Destroy(EffectHolder,.25)
						EffectHolder.Parent = Character.Main
						local EffectHolder_ = Instance.new("Random",nil,{CFrame = CFrame.new(Hole)})
						RandomProperties(EffectHolder_)
						EffectHolder_.Color,EffectHolder_.Material = Color3.new(1,1,0),288
						local Effect_ = Instance.new("BlockMesh",EffectHolder_,{Scale = Vector3.new(.75/EffectHolder_.Size.X,.75/EffectHolder_.Size.Y,.75/EffectHolder_.Size.Z)})
						Effectify{EffectHolder_}
						Destroy(EffectHolder_,.25)
						EffectHolder_.Parent = Character.Main
						SoundEffect{SoundId = "rbxassetid://240718012",Volume = 5,PlaybackSpeed = math.random(8,12)/10}
						TweenService:Create(EffectHolder,TweenInfo.new(.25,0),{Transparency = 1}):Play()
						TweenService:Create(EffectHolder_,TweenInfo.new(.25,0),{Transparency = 1,Rotation = Vector3.new(999+math.random(1,360),999+math.random(1,360),999+math.random(1,360))}):Play()
						TweenService:Create(Effect,TweenInfo.new(.25,0),{Scale = Vector3.new(0,0,(Hole-Ray_.Position).Magnitude/EffectHolder.Size.Z)}):Play()
						TweenService:Create(Effect_,TweenInfo.new(.25,0),{Scale = Vector3.new(1.25/EffectHolder_.Size.X,1.25/EffectHolder_.Size.Y,1.25/EffectHolder_.Size.Z)}):Play()
						local Start = tick()
						repeat
							Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,.1,.2*math.cos(Sine/40))*CFrame.Angles(0,0,math.rad(40)),.25)
							Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(0,math.rad(5),math.rad(-40)),.25)
							Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.5,.5,.1)*CFrame.Angles(math.rad(85),0,math.rad(40))*Welds.Defaults.RightShoulder.C0,.25)
							Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.25,.85+.1*math.sin(Sine/40),-.25)*CFrame.Angles(math.rad(135),0,math.rad(45))*Welds.Defaults.LeftShoulder.C0,.25)
							Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-1+.05*math.sin(Sine/40),0)*CFrame.Angles(0,math.rad(90),math.rad(-5-2*math.sin(Sine/40))),.25)
							Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-.375+.125*math.cos(Sine/40),-.5)*CFrame.Angles(0,math.rad(-90),math.rad(15-5*math.sin(Sine/40))),.25)
							RunService.Heartbeat:Wait()
						until tick()-Start >= .25
					end
				end)
				Movement.WalkSpeed,Movement.HipHeight,Movement.Attacking = 35,4.5,false
			elseif Method == "ToggleFly" and not Movement.Attacking then
				Movement.Flying = not Movement.Flying
			end
			--end
		end)
	end)

	if (tick()-Start)*Properties.Music.PlaybackSpeed >= (Character.Music and Character.Music.IsLoaded and Character.Music.TimeLength or 420) then
		Start = tick()
	end
	if MusicTest ~= Character.Music and typeof(Character.Music) == "Instance" then
		MusicTest = Character.Music
		MusicTest.TimePosition = (tick()-Start)*Properties.Music.PlaybackSpeed
	end
	if MusicTest then
		if (tick()-(Start+Properties.Music.PlaybackSpeed))*Properties.Music.PlaybackSpeed > MusicTest.TimePosition or (tick()-(Start-Properties.Music.PlaybackSpeed))*Properties.Music.PlaybackSpeed < MusicTest.TimePosition then
			MusicTest.TimePosition = (tick()-Start)*Properties.Music.PlaybackSpeed
		end
	end
	if not Movement.Flying then
		local Ray_ = CalculateStand(Movement.CFrame)
		if Ray_ then
			StandingOn = Ray_.Instance
			local NewCFrame = CleanCFrame(CFrame.new(0,(Ray_.Position.Y-Movement.CFrame.Y)+3+Movement.HipHeight,0)*Movement.CFrame)
			if #LastCFrames >= 300 then
				table.remove(LastCFrames,1)
			end
			table.insert(LastCFrames,NewCFrame)
			Movement.CFrame = NewCFrame
		else
			for i = #LastCFrames,1,-1 do
				Ray_ = CalculateStand(LastCFrames[i])
				if Ray_ then
					StandingOn = Ray_.Instance
					local NewCFrame = CleanCFrame(CFrame.new(0,(Ray_.Position.Y-LastCFrames[i].Y)+3+Movement.HipHeight,0)*LastCFrames[i])
					if #LastCFrames >= 300 then
						table.remove(LastCFrames,1)
					end
					table.insert(LastCFrames,NewCFrame)
					Movement.CFrame = NewCFrame
					break
				else
					table.remove(LastCFrames,i)
				end
			end
			if not Ray_ then
				local Base = nil
				for i,v in pairs(workspace:GetDescendants()) do
					if table.pack(pcall(game.IsA,v,"SpawnLocation"))[2] == true and table.pack(pcall(function()
							for _,b in pairs(Character) do
								if v == b then
									return
								end
							end
							return true
						end))[2] then
						Base = v
						break
					end
				end
				if Base then
					Movement.CFrame = CFrame.new(Base.Position)*CFrame.new(0,(Base.Size.Y/2)+3+Movement.HipHeight,0)*Movement.CFrame-Movement.CFrame.Position
				else
					Movement.CFrame = CFrame.new(0,100,0)*Movement.CFrame-Movement.CFrame.Position
				end
			end
		end
	end
	local OldCFrame = Movement.CFrame
	if Movement.Flying then
		Movement.PotentialCFrame = CleanCFrame(CFrame.new(Movement.CFrame.Position)*Camera.Angles)
	else
		Movement.PotentialCFrame = CleanCFrame(CFrame.new(Movement.CFrame.Position)*CFrame.Angles(0,math.rad((Camera.Rotation.Y > 90 or Camera.Rotation.Y < -90) and Camera.Rotation.X-180 or Camera.Rotation.X),0))
	end
	if Movement.W then
		MoveCharacter(0,-1)
	end
	if Movement.A then
		MoveCharacter(not Movement.Flying and (Camera.Rotation.Y > 90 or Camera.Rotation.Y < -90) and 1 or -1,0)
	end
	if Movement.S then
		MoveCharacter(0,1)
	end
	if Movement.D then
		MoveCharacter(not Movement.Flying and (Camera.Rotation.Y > 90 or Camera.Rotation.Y < -90) and -1 or 1,0)
	end
	if Movement.PotentialCFrame.Position ~= OldCFrame.Position and Movement.WalkSpeed >= 1 then
		Movement.Walking = true
		Movement.CFrame = CleanCFrame(CFrame.new(Movement.CFrame.Position,Movement.PotentialCFrame.Position)*CFrame.new(0,0,-Throttle*(Movement.WalkSpeed/60)))
		Movement.CFrame = Clerp(CFrame.new(Movement.CFrame.Position)*(OldCFrame-OldCFrame.Position),Movement.CFrame,.1)
		MoveDirection = CFrame.new(OldCFrame.Position,Vector3.new(Movement.CFrame.X,OldCFrame.Y,Movement.CFrame.Z)).LookVector
	else
		Movement.Walking = false
		MoveDirection = Vector3.new()
	end
	if Camera.Zoom == 0 then
		if Movement.Flying then
			Movement.CFrame = CleanCFrame(CFrame.new(Movement.CFrame.Position)*Camera.Angles)
		else
			Movement.CFrame = CleanCFrame(CFrame.new(Movement.CFrame.Position)*CFrame.Angles(0,math.rad((Camera.Rotation.Y > 90 or Camera.Rotation.Y < -90) and Camera.Rotation.X-180 or Camera.Rotation.X),0))
		end
	end
	if tick()-Mouse.LastClick >= 2 then
		Movement.Queued = false
	end
	if not Movement.Attacking then
		local Look = CFrame.new(Movement.CFrame.Position,Movement.CFrame.Position+Vector3.new(Movement.CFrame.LookVector.X,0,Movement.CFrame.LookVector.Z))
		local ForwardMovement,SidewaysMovement = (MoveDirection*Look.LookVector).X+(MoveDirection*Look.LookVector).Z,(MoveDirection*Look.RightVector).X+(MoveDirection*Look.RightVector).Z
		if Movement.Queued then
			Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,.1,.2*math.cos(Sine/40))*CFrame.Angles(0,0,math.rad(40)),.25)
			Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(0,math.rad(5),math.rad(-40)),.25)
			Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.5,.5,.1)*CFrame.Angles(math.rad(85),0,math.rad(40))*Welds.Defaults.RightShoulder.C0,.25)
			Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.25,.85+.1*math.sin(Sine/40),-.25)*CFrame.Angles(math.rad(135),0,math.rad(45))*Welds.Defaults.LeftShoulder.C0,.25)
			Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-1+.05*math.sin(Sine/40),0)*CFrame.Angles(0,math.rad(90),math.rad(-5-2*math.sin(Sine/40))),.25)
			Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-.375+.125*math.cos(Sine/40),-.5)*CFrame.Angles(0,math.rad(-90),math.rad(15-5*math.sin(Sine/40))),.25)
		elseif Movement.Walking then
			Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,.6*math.sin(Sine/16))*CFrame.new(SidewaysMovement+(1.5*SidewaysMovement)*math.sin(Sine/16),ForwardMovement-ForwardMovement*math.cos(Sine/16),-.185+.045*math.cos(Sine/56))*CFrame.Angles(math.rad((-15*ForwardMovement*math.sin(Sine/16))+(ForwardMovement*20)),math.rad(-SidewaysMovement*50),math.rad(math.cos(Sine/16))),.1)
			Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad((25+20*ForwardMovement*math.sin(Sine/16))+(-ForwardMovement)*18),math.rad(SidewaysMovement*5),math.rad(-SidewaysMovement*45-1)),.1)
			Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.45+.0*math.cos(Sine/16),.5,0)*CFrame.Angles(math.rad((10*ForwardMovement*math.cos(Sine/16))-ForwardMovement*25),math.rad(ForwardMovement*5),math.rad(18-(SidewaysMovement*28)+ForwardMovement*-10*math.sin(Sine/16)))*Welds.Defaults.RightShoulder.C0,.1)
			Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.45+.0*math.cos(Sine/16),.5,0)*CFrame.Angles(math.rad((10*ForwardMovement*math.cos(Sine/16))-ForwardMovement*25),math.rad(-ForwardMovement*5),math.rad(-18-(SidewaysMovement*28)+ForwardMovement*10*math.sin(Sine/16)))*Welds.Defaults.LeftShoulder.C0,.1)
			Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-.8,-.15)*CFrame.Angles(math.rad(-20-(20*math.cos(Sine/16))*ForwardMovement),math.rad(85),math.rad((5*ForwardMovement)-SidewaysMovement*15)),.1)
			Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-.6,-.3)*CFrame.Angles(math.rad(-20-(20*math.cos(Sine/16))*ForwardMovement),math.rad(-85),math.rad((-5*ForwardMovement)-SidewaysMovement*15)),.1)
		else
			Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,.25*math.cos(Sine/16),.4*math.sin(Sine/16))*CFrame.Angles(math.rad(10-2.5*math.cos(Sine/16)),0,0),.1)
			Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(16.5-1.5*math.cos(Sine/16)),math.rad(2.5-5.5*math.cos(Sine/16)),math.rad(-16.5*math.cos(Sine/15+.4*math.cos(Sine/20)))),.1)
			Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.45,.6+.05*math.sin(Sine/16),0)*CFrame.Angles(math.rad(5+5*math.cos(Sine/16)),math.rad(-5),math.rad(28+4*math.sin(Sine/16)))*Welds.Defaults.RightShoulder.C0,.1)
			Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.45,.6+.05*math.sin(Sine/16),0)*CFrame.Angles(math.rad(5+5*math.cos(Sine/16)),math.rad(5),math.rad(-28-4*math.sin(Sine/16)))*Welds.Defaults.LeftShoulder.C0,.1)
			Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-.45+.1*math.sin(Sine/16),-.4)*CFrame.Angles(math.rad(-21.5+10*math.sin(Sine/16)),math.rad(65),math.rad(2.5)),.1)
			Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-.85+.1*math.sin(Sine/16),-.1)*CFrame.Angles(math.rad(-11.5+5*math.sin(Sine/16)),math.rad(-65),math.rad(-2.5)),.1)
		end
	end
	Character.Eye:Clear()
	Character.Eye:Emit(1)
	SetProperty("Torso","Size",ResizeUnion{2,2,1},true)
	SetProperty("RightArm","Size",ResizeUnion{1,2,1},true)
	SetProperty("LeftArm","Size",ResizeUnion{1,2,1},true)
	SetProperty("RightLeg","Size",ResizeUnion{1,2,1},true)
	SetProperty("LeftLeg","Size",ResizeUnion{1,2,1},true)
	SetProperty("Torso","CFrame",Weldify(Welds.RootJoint,Movement))
	SetProperty("PortalHolder","Position",Properties.Torso.CFrame.Position)
	SetProperty("Head","CFrame",Weldify(Welds.Neck,Properties.Torso))
	SetProperty("EyeHolder","Position",Properties.Head.CFrame*CFrame.new(0,0,-.6).Position)
	SetProperty("RightArm","CFrame",Weldify(Welds.RightShoulder,Properties.Torso))
	SetProperty("LeftArm","CFrame",Weldify(Welds.LeftShoulder,Properties.Torso))
	SetProperty("RightLeg","CFrame",Weldify(Welds.RightHip,Properties.Torso))
	SetProperty("LeftLeg","CFrame",Weldify(Welds.LeftHip,Properties.Torso))
	SetProperty("Gun","CFrame",Weldify(Welds.GunHandle,Properties.RightArm))
	SetProperty("MusicHolder","CFrame",Movement.CFrame)
	Event:FireClient(Player,"SetCharacter",{Character = Character,Movement = Movement,CameraPosition = Movement.CFrame*CFrame.new(0,1.5,0)})
end)

--Message(string.format("Took \226\137\136%.3f seconds to load",tick()-Start),Color3.new(.5,.5,.5))

-- CLIENT SCRIPT

game:GetService("RunService").RenderStepped:Wait()
game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()

local AM54CH7GW48T6H = Character.Head.CFrame

local Ignoring = true
local Effects = {}
local RayProperties = RaycastParams.new()
local Remotes = {}
local Throttle = 0
local ConsecutiveFrames = 0
local Frame = 1 / 60
local RemoteName = nil
local Movement = {CFrame = CFrame.new(0,20,0), CFrame.new(0,20,0)}

local Trottle = 1
local RemoteKey = nil
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local WorldModels = {}
local CameraRotation = Vector2.new(0, -15)
local CameraZoom = 15
local CameraCFrame = CFrame.new(0,0,0)
local Received = false

local function AttributeToCFrame(Position,Orientation)
	return CFrame.new(Position)*CFrame.Angles(Orientation.X,Orientation.Y,Orientation.Z)
end

local function FireServer(...)
	Event:FireServer(...)
end

TrussinClient = (function(Method,Things)
--	if type(Method) == "string" and type(Things) == "table" then
		if Method == "SetCharacter" then
		    print("EEEEEEEE")
			Character = Things.Character
			--ameraPosition = AM54CH7GW48T6H.Position
			local RayCharacter = {}
			for _,v in pairs(Character) do
				if v:IsA("BasePart") then
					table.insert(RayCharacter,v)
				end
			end
			for _,v in pairs(Effects) do
				table.insert(RayCharacter,v)
			end
			RayProperties.FilterDescendantsInstances = RayCharacter
		elseif Method == "Received" then
			Received = true
		elseif Method == "Effects" then
			for _,v in pairs(Things) do
				table.insert(Effects,v)
				local Removed
				Removed = v.AncestryChanged:Connect(function()
					if not v:IsDescendantOf(workspace) then
						table.remove(Effects,table.find(Effects,v))
						Removed:Disconnect()
					end
				end)
			end
		elseif Method == "Notification" then
			game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{Text = "​[The Ascentionist​]​:​ ​"..Things.Text,Font = 43,Color = Color3.new(.5,.5,.5),FontSize = 2})
		end
	--end
end)
local function KeyDown(Key)
	return (not Ignoring or not game:GetService("UserInputService"):GetFocusedTextBox()) and game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode[Key]) or false
end
local function ValidNumber(Number)
	local Returned = table.pack(pcall(function()
		return type(Number) == "number" and not string.find(string.lower(tostring(Number)),"nan")
	end))
	table.remove(Returned,1)
	return unpack(Returned)
end
game:GetService("UserInputService").InputBegan:Connect(function(Input,Ignore)
	if Input.UserInputType == Enum.UserInputType.Keyboard then
		local Key = string.sub(tostring(Input.KeyCode),14)
		if Key == "F1" then
			Ignoring = not Ignoring
		end
		if Ignore and Ignoring then
			return
		end 
		if Key == "F" then
			FireServer("ToggleFly",{})
		elseif Key == "Q" then
			FireServer("ReplaceCharacter",{})
		elseif Key == "X" then
			FireServer("Attack",{Type = "SkySmash"})
		elseif Key == "I" then
			if CameraZoom > 1 then
				CameraZoom = CameraZoom*.8
			else
				CameraZoom = 0
			end
		elseif Key == "O" then
			if CameraZoom >= 1 then
				CameraZoom = CameraZoom*1.25
			else
				CameraZoom = 1
			end
		elseif Key == "P" then
			FireServer("ResetPosition",{})
		end
	elseif Input.UserInputType == Enum.UserInputType.MouseButton1 then
		if Ignore and Ignoring then
			return
		end 
		FireServer("Attack",{Type = "ClickAttack"})
	elseif Input.UserInputType == Enum.UserInputType.MouseWheel then
		if Ignore and Ignoring then
			return
		end 
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
game:GetService("UserInputService").InputChanged:Connect(function(Input,Ignore)
	if Input.UserInputType == Enum.UserInputType.MouseWheel then
		if Ignore and Ignoring then
			return
		end 
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
if not game:GetService("RunService"):IsStudio() then
	game:GetService("NetworkClient").ChildRemoved:Connect(function(v)
		if v.ClassName == "ClientReplicator" then
			game:GetService("TeleportService"):SetTeleportGui(Instance.new("ScreenGui"))
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId)
			game:GetService("TeleportService").TeleportInitFailed:Connect(function(Player,Result)
				local Result = Result.Value
				if Player ~= game:GetService("Players").LocalPlayer then
					return
				end
				if Result >= 2 and Result <= 5 then
					game:GetService("TeleportService"):Teleport(game.PlaceId)
				else
					local Start = tick()
					repeat
						game:GetService("RunService").RenderStepped:Wait()
					until tick()-Start >= 5
					game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId)
				end
			end)
		end
	end)
end

local function RandomString(Length)
	local Returned = table.pack(pcall(function()
		return string.gsub(string.rep(" ",ValidNumber(Length) and math.clamp(Length,1,1e4) or math.random(5,100)),".",function(x)
			return string.char(({math.random(48,57),math.random(65,90),math.random(97,122)})[math.random(1,3)])
		end)
	end))
	table.remove(Returned,1)
	return unpack(Returned)
end
game:GetService("UserInputService"):GetPropertyChangedSignal("MouseBehavior"):Connect(function()
	local MouseBehavior = game:GetService("UserInputService").MouseBehavior.Value
	if CameraZoom == 0 then
		game:GetService("UserInputService").MouseBehavior = 1
	elseif game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
		game:GetService("UserInputService").MouseBehavior = 2
	else
		game:GetService("UserInputService").MouseBehavior = 0
	end
end)
game:GetService("UserInputService"):GetPropertyChangedSignal("MouseDeltaSensitivity"):Connect(function()
	if game:GetService("UserInputService").MouseDeltaSensitivity ~= 1 then
		game:GetService("UserInputService").MouseDeltaSensitivity = 1
	end
end)
game:GetService("RunService").RenderStepped:Connect(function(Frames)
	ConsecutiveFrames = ConsecutiveFrames + Frames
	Throttle = 0
	for _ = 1,ConsecutiveFrames/Frame do
		ConsecutiveFrames = ConsecutiveFrames - Frame
		Throttle = Throttle + 1
	end
	if not workspace.CurrentCamera or workspace.CurrentCamera.CameraType ~= Enum.CameraType.Scriptable or math.floor(workspace.CurrentCamera.FieldOfView*10+.5)/10 ~= 70 or workspace.CurrentCamera.CFrame ~= CameraCFrame then
		game:GetService("Debris"):AddItem(workspace.CurrentCamera,0)
		local Camera,Removed = Instance.new("Camera")
		Camera.Name = RandomString()
		Removed = Camera.AncestryChanged:Connect(function()
			if Camera.Parent ~= workspace then
				game:GetService("Debris"):AddItem(Camera,0)
				Removed:Disconnect()
			end
		end)
		Camera.Parent = workspace
		workspace.CurrentCamera = Camera
		--CameraPosition = AM54CH7GW48T6H.Position
	end
	if Received and Character then
		for i,v in pairs(Character) do
			if not v:IsDescendantOf(game) then
				Received = false
				FireServer("ReplaceCharacter",{})
				break
			end
		end
	end
	workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
	workspace.CurrentCamera.FieldOfView = 70
	local MouseDelta = game:GetService("UserInputService"):GetMouseDelta()*(UserSettings():GetService("UserGameSettings").MouseSensitivity/2)
	if CameraZoom == 0 then
		game:GetService("UserInputService").MouseBehavior = Enum.MouseBehavior.LockCenter
		CameraRotation = CameraRotation - Vector2.new((CameraRotation.Y > 90 or CameraRotation.Y < -90) and -MouseDelta.X or MouseDelta.X,MouseDelta.Y)
	elseif game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
		game:GetService("UserInputService").MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
		CameraRotation = CameraRotation - Vector2.new((CameraRotation.Y > 90 or CameraRotation.Y < -90) and -MouseDelta.X or MouseDelta.X,MouseDelta.Y)
	else
		game:GetService("UserInputService").MouseBehavior = Enum.MouseBehavior.Default
	end
	if KeyDown("Left") then
		CameraRotation = CameraRotation + Vector2.new(2.5*Throttle,0)
	end
	if KeyDown("Right") then
		CameraRotation = CameraRotation - Vector2.new(2.5*Throttle,0)
	end
	if KeyDown("Up") then
		CameraRotation = CameraRotation + Vector2.new(0,2.5*Throttle)
	end
	if KeyDown("Down") then
		CameraRotation = CameraRotation - Vector2.new(0,2.5*Throttle)
	end
	CameraRotation = Vector2.new(CameraRotation.X > 180 and CameraRotation.X-360 or CameraRotation.X < -180 and CameraRotation.X+360 or CameraRotation.X,math.clamp(CameraRotation.Y,-81,81))
	local NewAngles = CFrame.Angles(0,math.rad(CameraRotation.X),0)*CFrame.Angles(math.rad(CameraRotation.Y),0,0)
	CameraCFrame = NewAngles+Character.Head.CFrame.Position+NewAngles*Vector3.new(0,0,CameraZoom)
	workspace.CurrentCamera.CFrame = CameraCFrame
	workspace.CurrentCamera.Focus = CameraCFrame*CFrame.new(0,0,-CameraZoom)
	if CameraZoom == 0 then
		if Character then
			for _,v in pairs(Character) do
				if typeof(v) == "Instance" then
					if v:IsA("BasePart") then
						v.Transparency = 1
					end
				end
			end
		end
	else
		if Character then
			for _,v in pairs(Character) do
				if typeof(v) == "Instance" then
					if v:IsA("BasePart") then
						v.Transparency = 0
					end
				end
			end
		end
	end
	local UnitRay = workspace.CurrentCamera:ScreenPointToRay(Mouse.X,Mouse.Y)
	local Closest,Rays,Ray_ = math.huge,{},nil
	table.insert(Rays,workspace:Raycast(UnitRay.Origin,UnitRay.Direction*1e3,RayProperties))
	for _,v in pairs(WorldModels) do
		table.insert(Rays,v:Raycast(UnitRay.Origin,UnitRay.Direction*1e3,RayProperties))
	end
	for _,v in pairs(Rays) do
		local Magnitude = (UnitRay.Origin-v.Position).Magnitude
		if Magnitude < Closest then
			Closest,Ray_ = Magnitude,v
		end
	end
	FireServer("Movement",{CFrame = CameraCFrame,Rotation = CameraRotation,Angles = NewAngles,Zoom = CameraZoom,W = KeyDown("W"),A = KeyDown("A"),S = KeyDown("S"),D = KeyDown("D"),Hit = Ray_ and CFrame.new(Ray_.Position) or CFrame.new(UnitRay.Origin,UnitRay.Origin+UnitRay.Direction)*CFrame.new(0,0,-1e3),PlaybackLoudness = Character and Character.Music and Character.Music.PlaybackLoudness or 0})
end)
