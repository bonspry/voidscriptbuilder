
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
MeshPart0 = Instance.new("MeshPart")
MeshPart1 = Instance.new("MeshPart")
MeshPart2 = Instance.new("MeshPart")
MeshPart3 = Instance.new("MeshPart")
MeshPart4 = Instance.new("MeshPart")
MeshPart5 = Instance.new("MeshPart")
MeshPart6 = Instance.new("MeshPart")
MeshPart7 = Instance.new("MeshPart")
MeshPart8 = Instance.new("MeshPart")
MeshPart9 = Instance.new("MeshPart")
MeshPart10 = Instance.new("MeshPart")
MeshPart11 = Instance.new("MeshPart")
MeshPart12 = Instance.new("MeshPart")
MeshPart0.Name = "Eye"
--MeshPart0.MeshId = "rbxassetid://694815280"
MeshPart0.Parent = mas
MeshPart0.CFrame = CFrame.new(13.2399979, 5.66300011, 17.8850002, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart0.Position = Vector3.new(13.239997863769531, 5.663000106811523, 17.885000228881836)
MeshPart0.Color = Color3.new(1, 0, 0)
MeshPart0.Size = Vector3.new(0.10000000149011612, 0.20000000298023224, 0.05000000074505806)
MeshPart0.BrickColor = BrickColor.new("Really red")
MeshPart0.Material = Enum.Material.Neon
MeshPart0.Reflectance = -1
MeshPart0.brickColor = BrickColor.new("Really red")
MeshPart1.Name = "Hair"
--MeshPart1.MeshId = "rbxassetid://949740856"
MeshPart1.Parent = mas
MeshPart1.CFrame = CFrame.new(13.3304977, 3.86802292, 18.8467255, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart1.Position = Vector3.new(13.330497741699219, 3.868022918701172, 18.846725463867188)
MeshPart1.Color = Color3.new(0, 0, 0)
MeshPart1.Size = Vector3.new(1.899999976158142, 4.900000095367432, 2)
MeshPart1.BrickColor = BrickColor.new("Really black")
MeshPart1.Material = Enum.Material.Glass
MeshPart1.Reflectance = -1
MeshPart1.brickColor = BrickColor.new("Really black")
MeshPart2.Name = "Halo"
--MeshPart2.MeshId = "rbxassetid://5632057546"
MeshPart2.Parent = mas
MeshPart2.CFrame = CFrame.new(13.3260002, 6.40100002, 18.548996, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart2.Position = Vector3.new(13.326000213623047, 6.401000022888184, 18.548995971679688)
MeshPart2.Color = Color3.new(1, 0, 0)
MeshPart2.Size = Vector3.new(1.100000023841858, 0.10999999940395355, 1.100000023841858)
MeshPart2.BrickColor = BrickColor.new("Really red")
MeshPart2.Material = Enum.Material.Neon
MeshPart2.Reflectance = -1
MeshPart2.brickColor = BrickColor.new("Really red")
MeshPart3.Name = "Head"
--MeshPart3.MeshId = "rbxassetid://4899782128"
MeshPart3.Parent = mas
MeshPart3.CFrame = CFrame.new(13.339942, 5.41746187, 18.490036, 0.999950171, -1.54775433e-38, -0.00998280942, -1.54775433e-38, 1, -3.10076203e-36, 0.00998280942, 3.10076203e-36, 0.999950171)
MeshPart3.Orientation = Vector3.new(0, -0.5720000267028809, 0)
MeshPart3.Position = Vector3.new(13.33994197845459, 5.41746187210083, 18.490036010742188)
MeshPart3.Rotation = Vector3.new(0, -0.5720000267028809, 0)
MeshPart3.Color = Color3.new(0, 0, 0)
MeshPart3.Size = Vector3.new(1.2000000476837158, 1.2000000476837158, 1.2000000476837158)
MeshPart3.BrickColor = BrickColor.new("Really black")
MeshPart3.Material = Enum.Material.Glass
MeshPart3.Reflectance = -1
MeshPart3.brickColor = BrickColor.new("Really black")
MeshPart4.Name = "LeftArm"
--MeshPart4.MeshId = "rbxassetid://83001137"
MeshPart4.Parent = mas
MeshPart4.CFrame = CFrame.new(11.839942, 3.91746902, 18.4890289, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart4.Position = Vector3.new(11.83994197845459, 3.917469024658203, 18.489028930664062)
MeshPart4.Color = Color3.new(0, 0, 0)
MeshPart4.Size = Vector3.new(1.25, 1.850000023841858, 0.8999999761581421)
MeshPart4.BrickColor = BrickColor.new("Really black")
MeshPart4.Material = Enum.Material.Glass
MeshPart4.Reflectance = -1
MeshPart4.brickColor = BrickColor.new("Really black")
MeshPart5.Name = "LeftLeg"
--MeshPart5.MeshId = "rbxassetid://81628361"
MeshPart5.Parent = mas
MeshPart5.CFrame = CFrame.new(12.839942, 1.91748798, 18.490036, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart5.Position = Vector3.new(12.83994197845459, 1.9174879789352417, 18.490036010742188)
MeshPart5.Color = Color3.new(0, 0, 0)
MeshPart5.Size = Vector3.new(0.699999988079071, 2.6500000953674316, 1)
MeshPart5.BrickColor = BrickColor.new("Really black")
MeshPart5.Material = Enum.Material.Glass
MeshPart5.Reflectance = -1
MeshPart5.brickColor = BrickColor.new("Really black")
MeshPart6.Name = "LeftWing"
--MeshPart6.MeshId = "rbxassetid://6913753840"
MeshPart6.Parent = mas
MeshPart6.CFrame = CFrame.new(12.474, 3.44400001, 19.4860001, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)
MeshPart6.Orientation = Vector3.new(0, -90, 0)
MeshPart6.Position = Vector3.new(12.473999977111816, 3.444000005722046, 19.486000061035156)
MeshPart6.Rotation = Vector3.new(0, -90, 0)
MeshPart6.Color = Color3.new(0, 0, 0)
MeshPart6.Size = Vector3.new(2.4000000953674316, 4.300000190734863, 1.899999976158142)
MeshPart6.BrickColor = BrickColor.new("Really black")
MeshPart6.Material = Enum.Material.Glass
MeshPart6.Reflectance = -1
MeshPart6.brickColor = BrickColor.new("Really black")
MeshPart7.Name = "RightArm"
--MeshPart7.MeshId = "rbxassetid://83001181"
MeshPart7.Parent = mas
MeshPart7.CFrame = CFrame.new(14.839942, 3.91746902, 18.490036, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart7.Position = Vector3.new(14.83994197845459, 3.917469024658203, 18.490036010742188)
MeshPart7.Color = Color3.new(0, 0, 0)
MeshPart7.Size = Vector3.new(1.25, 1.850000023841858, 0.8999999761581421)
MeshPart7.BrickColor = BrickColor.new("Really black")
MeshPart7.Material = Enum.Material.Glass
MeshPart7.Reflectance = -1
MeshPart7.brickColor = BrickColor.new("Really black")
MeshPart8.Name = "RightLeg"
--MeshPart8.MeshId = "rbxassetid://81628308"
MeshPart8.Parent = mas
MeshPart8.CFrame = CFrame.new(13.839942, 1.91748798, 18.490036, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart8.Position = Vector3.new(13.83994197845459, 1.9174879789352417, 18.490036010742188)
MeshPart8.Color = Color3.new(0, 0, 0)
MeshPart8.Size = Vector3.new(0.699999988079071, 2.6500000953674316, 1)
MeshPart8.BrickColor = BrickColor.new("Really black")
MeshPart8.Material = Enum.Material.Glass
MeshPart8.Reflectance = -1
MeshPart8.brickColor = BrickColor.new("Really black")
MeshPart9.Name = "RightWing"
--MeshPart9.MeshId = "rbxassetid://6913750838"
MeshPart9.Parent = mas
MeshPart9.CFrame = CFrame.new(14.2060003, 3.44400001, 19.4860001, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)
MeshPart9.Orientation = Vector3.new(0, -90, 0)
MeshPart9.Position = Vector3.new(14.206000328063965, 3.444000005722046, 19.486000061035156)
MeshPart9.Rotation = Vector3.new(0, -90, 0)
MeshPart9.Color = Color3.new(0, 0, 0)
MeshPart9.Size = Vector3.new(2.4000000953674316, 4.300000190734863, 1.899999976158142)
MeshPart9.BrickColor = BrickColor.new("Really black")
MeshPart9.Material = Enum.Material.Glass
MeshPart9.Reflectance = -1
MeshPart9.brickColor = BrickColor.new("Really black")
MeshPart10.Name = "Torso"
--MeshPart10.MeshId = "rbxassetid://82987757"
MeshPart10.Parent = mas
MeshPart10.CFrame = CFrame.new(13.339942, 3.91746902, 18.490036, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart10.Position = Vector3.new(13.33994197845459, 3.917469024658203, 18.490036010742188)
MeshPart10.Color = Color3.new(0, 0, 0)
MeshPart10.Size = Vector3.new(1.2999999523162842, 1.850000023841858, 0.8500000238418579)
MeshPart10.BrickColor = BrickColor.new("Really black")
MeshPart10.Material = Enum.Material.Glass
MeshPart10.Reflectance = -1
MeshPart10.brickColor = BrickColor.new("Really black")
MeshPart11.Name = "nil"
--MeshPart11.MeshId = "rbxassetid://1500643712"
MeshPart11.Parent = mas
MeshPart11.CFrame = CFrame.new(1000000, 1000000, 1000000, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart11.Position = Vector3.new(1000000, 1000000, 1000000)
MeshPart11.Size = Vector3.new(4, 1, 2)
MeshPart12.Name = "Dress"
--MeshPart12.MeshId = "rbxassetid://694815280"
MeshPart12.Parent = mas
MeshPart12.CFrame = CFrame.new(13.3024445, 2.22302699, 18.7129364, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart12.Position = Vector3.new(13.302444458007812, 2.223026990890503, 18.712936401367188)
MeshPart12.Color = Color3.new(0, 0, 0)
MeshPart12.Size = Vector3.new(3.200000047683716, 3.5, 2.9000000953674316)
MeshPart12.BrickColor = BrickColor.new("Really black")
MeshPart12.Material = Enum.Material.Glass
MeshPart12.Reflectance = -1
MeshPart12.brickColor = BrickColor.new("Really black")
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
local Debug = false
if pcall(getfenv,-1) or pcall(getfenv,3) then
	return
end
local fenv = 0
for _ in pairs(getfenv()) do
	fenv += 1
	if fenv ~= 1 then
		return
	end
end
if getfenv() ~= getfenv(0) or getfenv(0) ~= getfenv(1) or getfenv(1) ~= getfenv() then
	return
end
--[[local CleanEnv = require(5410096288)()
table.foreach({"pcall","getfenv","require","os","pairs","table","game","math","CFrame","print","warn","error","unpack","Enum","string","Color3","workspace","Instance","Vector3","Vector3","UDim","UDim2","type","typeof","utf8"},function(_,v)
	if CleanEnv[v] ~= getfenv()[v] then
		return
	end
end)]]
local print,warn = getfenv().print,getfenv().warn
getfenv().print,getfenv().warn = nil
script.Disabled = true
local tick = os.clock
local Backups,Start = {},tick()
for _,v in pairs(script:GetChildren()) do
	pcall(function()
		v.Archivable = true
		Backups[v.Name] = v
	end)
end
local ClientCodeLUA = [==[
script.Disabled = true
game:GetService("RunService").RenderStepped:Wait()
script:Destroy()
game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()
local function AttributeToCFrame(Position,Orientation)
	return CFrame.new(Position)*CFrame.Angles(Orientation.X,Orientation.Y,Orientation.Z)
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
local RemoteKey,Ignoring,Effects,RayProperties,Remotes,CameraPosition,Throttle,ConsecutiveFrames,Frame,RemoteName,Movement,Trottle,WorldModels,CameraRotation,CameraZoom,CameraCFrame,Character,ToReplace,Received,Typing,ShiftLock = script:GetAttribute("RemoteKey"),true,{},RaycastParams.new(),{},Vector3.new(),0,0,1/60,script:GetAttribute("RemoteName"),{CFrame = AttributeToCFrame(script:GetAttribute("StartPosition"),script:GetAttribute("StartOrientation"))},1,{},Vector2.new(0,-15),15,CFrame.new()
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
					if table.pack(pcall(game.IsA,v,"BasePart"))[2] == true then
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
				game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{Text = "​[Lucy Anna​]​:​ ​"..Things.Text,Font = 43,Color = Color3.new(.5,.5,.5),FontSize = 2})
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
				if table.pack(pcall(game.IsDescendantOf,v,workspace))[2] == false then
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
	return not Typing and (not Ignoring or not game:GetService("UserInputService"):GetFocusedTextBox()) and game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode[Key]) or false
end
game:GetService("UserInputService").InputBegan:Connect(function(Input,Ignore)
	if Typing then
		return
	end
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
		elseif Key == "LeftBracket" then
			--Typing = true
		elseif Key == "LeftShift" then
			ShiftLock = not ShiftLock
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
	if Typing then
		return
	end
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
game:GetService("UserInputService"):GetPropertyChangedSignal("MouseBehavior"):Connect(function()
	local MouseBehavior = game:GetService("UserInputService").MouseBehavior.Value
	if CameraZoom == 0 or ShiftLock then
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
		Camera.CameraType = 6
		Camera.FieldOfView = 70
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
	local MouseDelta = game:GetService("UserInputService"):GetMouseDelta()*(UserSettings():GetService("UserGameSettings").MouseSensitivity/2)
	if CameraZoom == 0 or ShiftLock then
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
					if table.pack(pcall(game.IsA,v,"BasePart"))[2] == true then
						v.Transparency = 1
					end
				end
			end
		end
	else
		if Character then
			for _,v in pairs(Character) do
				if typeof(v) == "Instance" then
					if table.pack(pcall(game.IsA,v,"BasePart"))[2] == true then
						v.Transparency = 0
					end
				end
			end
		end
	end
	local MousePosition = game:GetService("UserInputService"):GetMouseLocation()-game:GetService("GuiService"):GetGuiInset()
	local UnitRay = workspace.CurrentCamera:ScreenPointToRay(MousePosition.X,MousePosition.Y)
	local Closest,Rays,Ray_ = math.huge,{},nil
	table.insert(Rays,workspace:Raycast(UnitRay.Origin,UnitRay.Direction*1e3,RayProperties))
	for _,v in pairs(WorldModels) do
		pcall(function()
			table.insert(Rays,v:Raycast(UnitRay.Origin,UnitRay.Direction*1e3,RayProperties))
		end)
	end
	for _,v in pairs(Rays) do
		pcall(function()
			local Magnitude = (UnitRay.Origin-v.Position).Magnitude
			if Magnitude < Closest then
				Closest,Ray_ = Magnitude,v
			end
		end)
	end
	FireServer("Movement",{ShiftLock = ShiftLock,CFrame = CameraCFrame,Rotation = CameraRotation,Angles = NewAngles,Zoom = CameraZoom,W = KeyDown("W"),A = KeyDown("A"),S = KeyDown("S"),D = KeyDown("D"),Hit = Ray_ and CFrame.new(Ray_.Position) or CFrame.new(UnitRay.Origin,UnitRay.Origin+UnitRay.Direction)*CFrame.new(0,0,-1e3),PlaybackLoudness = Character and Character.Music and Character.Music.PlaybackLoudness or 0})
end)
]==]
local Client_ = NLS(ClientCodeLUA, script)
if Client_ then
	Client_.Archivable = true
	Backups.Client = Client_:Clone()
end
for _,v in pairs(Backups) do
	pcall(game.ClearAllChildren,v)
end
local Name = script:GetAttribute("Name")
for _,v in pairs(game:GetChildren()) do
	pcall(function()
		if game:FindService(v.ClassName) then
			getfenv()[v.ClassName] = v
		end
	end)
end
for i,v in pairs(table) do
	getfenv()[i] = v
end
for i,v in pairs(math) do
	getfenv()[i] = v
end
for _,v in pairs(Enum:GetEnums()) do
	getfenv()[tostring(v)] = v
end
RunService.Heartbeat:Wait()
script:Destroy()
local pcall_ = pcall
if Debug then
	local function pcall(...)
		local pcall__ = pack(pcall_(...))
		if pcall__[1] == false and not string.match(tostring(pcall__[2]),"The current identity %(%d%) cannot .+ %(lacking permission %d%)") then
			warn(string.format("%s:Lucy Anna:%s",Name,tostring(pcall__[2])))
		end
		return unpack(pcall__)
	end
end
local Player = owner
local function ValidNumber(Number)
	local Returned = pack(pcall(function()
		return type(Number) == "number" and not string.find(string.lower(tostring(Number)),"nan")
	end))
	remove(Returned,1)
	return unpack(Returned)
end
local function RandomString(Length)
	local Returned = pack(pcall(function()
		return string.gsub(string.rep(" ",ValidNumber(Length) and clamp(Length,1,2e5-1) or random(5,100)),".",function()
			return string.char(({random(48,57),random(65,90),random(97,122)})[random(1,3)])
		end)
	end))
	remove(Returned,1)
	return unpack(Returned)
end
local function CleanCFrame(CFrame_)
	local Returned = pack(pcall(function()
		local CFrameComponents = pack(CFrame_:GetComponents())
		for i,v in pairs(CFrameComponents) do
			CFrameComponents[i] = ValidNumber(v) and v or 0
		end
		return CFrame.new(unpack(CFrameComponents))
	end))
	remove(Returned,1)
	return unpack(Returned)
end
local function Destroyed(v)
	local Returned = pack(pcall(function()
		if v.Parent then
			return false
		end
		local _,Destroyed = pcall(function()
			v.Parent = v
		end)
		return not string.match(Destroyed,"Attempt to set .+ as its own parent")
	end))
	remove(Returned,1)
	return unpack(Returned)
end
local function CFrameToAttribute(CFrame_)
	local Returned = pack(pcall(function()
		local CFrame_ = CleanCFrame(CFrame_)
		local _,_,_,m00,m01,m02,_,_,m12,_,_,m22 = CFrame_:GetComponents()
		return CFrame_.Position,Vector3.new(atan2(-m12,m22),asin(m02),atan2(-m01,m00))
	end))
	remove(Returned,1)
	return unpack(Returned)
end
local function AttributeToCFrame(Position,Orientation)
	local Returned = pack(pcall(function()
		return CFrame.new(Position)*CFrame.Angles(Orientation.X,Orientation.Y,Orientation.Z)
	end))
	remove(Returned,1)
	return unpack(Returned)
end
local Nil = function()
end
local LastCall,Killed,MoveDirection,Effects,Camera,LastCFrames,RayProperties,ClassNames,Connections,BlacklistedChanges,UntouchableClassNames,BlacklistedMeshes,Instance_,Instance,CreationsThisFrame,Throttle,Welds,ConsecutiveFrames,Frame,Mouse,PlaybackLoudness,Services,WorldModels,DeteriorateUponConsignment,RemoteKey,RemoteName,BlacklistedGuis,Sine,Properties,Character,Movement,Event,MusicTest,StandingOn,Client = tick(),{},Vector3.new(),{},{Rotation = Vector2.new(0,-15),Angles = CFrame.Angles(rad(-15),0,0),Zoom = 15},{},RaycastParams.new(),{"CornerWedgePart","Part","FlagStand","Seat","SkateboardPlatform","WedgePart","VehicleSeat"},{},{"Attributes","Parent"},{"Player","PlayerGui","Terrain","StarterCharacterScripts","StarterPlayerScripts","MemStorageConnection","StatsItem","DockWidgetPluginGui","QWidgetPluginGui"},{"2671071329","1996456880","3957083206","5177555882","5589314244","6080721391","6473913306","430075625","//fonts/torso.mesh","//fonts/rightarm.mesh","//fonts/leftarm.mesh","//fonts/rightleg.mesh","//fonts/leftleg.mesh","//fonts/head.mesh","6100055335","6100073799","6100058263","16627529","448023220","5506596377","4377901670","5437810334","1553468234","1553468709","4615369575","959221541","6794318555","6794320610","6728641500","4743976612","5198865222","6822139949","6829474675","6834662855","6852507308","6344256880","6725572082","430080282","6379838281","6227931602","888904946"},Instance.new,{},0,30,{Defaults = {Neck = {C0 = CFrame.new(0,1,0)*CFrame.Angles(rad(-90),0,rad(180))},RootJoint = {C0 = CFrame.new()*CFrame.Angles(rad(-90),0,rad(180))},RightShoulder = {C0 = CFrame.new(-.5,0,0)*CFrame.Angles(0,rad(90),0)},LeftShoulder = {C0 = CFrame.new(.5,0,0)*CFrame.Angles(0,rad(-90),0)}},RootJoint = {C0 = CFrame.new(),C1 = CFrame.new()},Dress = {C0 = CFrame.new(0,-1.7,.25),C1 = CFrame.new()},RightHip = {C0 = CFrame.new(.3,-1,0),C1 = CFrame.new(-.2,1,0)},LeftHip = {C0 = CFrame.new(-.3,-1,0),C1 = CFrame.new(.2,1,0)},RightShoulder = {C0 = CFrame.new(.7,.4,0),C1 = CFrame.new(-.8,.4,0)},LeftShoulder = {C0 = CFrame.new(-.7,.4,-.001),C1 = CFrame.new(.8,.4,0)},RightWing = {C0 = CFrame.new(.15,.45,.4)*CFrame.Angles(0,rad(-90),0),C1 = CFrame.new(-.6,.9,.7)},LeftWing = {C0 = CFrame.new(-.15,.45,.4)*CFrame.Angles(0,rad(-90),0),C1 = CFrame.new(-.6,.9,-.7)},Neck = {C0 = CFrame.new(0,.9,0),C1 = CFrame.new(0,-.6,0)},Hair = {C0 = CFrame.new(0,-1.6,.35),C1 = CFrame.new()},Halo = {C0 = CFrame.new(0,.5,0),C1 = CFrame.new(0,-.5,0)},RightEye = {C0 = CFrame.new(.1,.25,-.6),C1 = CFrame.new()},LeftEye = {C0 = CFrame.new(-.1,.25,-.6),C1 = CFrame.new()}},0,1/60,{Hit = CFrame.new(),LastClick = tick()},0,{"SoundService","Chat","MarketplaceService","Players","StarterPlayer","LocalizationService","JointsService","FriendService","InsertService","Lighting","Teams","ReplicatedStorage","TestService","ProximityPromptService"},{},false,RandomString(1e3),RandomString(1e3),{"vbucks","sup","AllahGui","SnakeVenomSS","polishtoilet","nooties","IY_GUI","IY_JumpScare","BugGui","tyrone","Holder","Trolling"},0,{Defaults = {Transparency = 0,LocalTransparencyModifier = 0},RightArm = {},LeftArm = {},RightLeg = {},LeftLeg = {},Head = {},Torso = {},Music = {SoundId = "rbxassetid://289146147",Playing = true,Volume = 2,PlayOnRemove = false,PlaybackSpeed = 1.2,Looped = true,SoundGroup = Nil,RollOffMinDistance = 25,RollOffMaxDistance = 1e6},Main = {},MusicHolder = {},Dress = {},RightEye = {},LeftEye = {},Hair = {},Halo = {},RightWing = {},LeftWing = {},DressMesh = {MeshId = "rbxassetid://694815280",MeshType = MeshType.FileMesh,Offset = Vector3.new(),Scale = Vector3.new(.938,.586,.867),TextureId = "rbxassetid://5614579544",VertexColor = Vector3.new()},LeftEyeMesh = {MeshId = "rbxassetid://2936644507",MeshType = MeshType.FileMesh,Offset = Vector3.new(),Scale = Vector3.new(.1,.2,.05),TextureId = "rbxassetid://5614579544",VertexColor = Vector3.new(1e6,huge,huge)},HairMesh = {MeshId = "rbxassetid://949740856",MeshType = MeshType.FileMesh,Offset = Vector3.new(),Scale = Vector3.new(1.462,1.213,1.292),TextureId = "rbxassetid://5614579544",VertexColor = Vector3.new()},HaloMesh = {MeshId = "rbxassetid://5632057546",MeshType = MeshType.FileMesh,Offset = Vector3.new(),Scale = Vector3.new(.954,.999,.885),TextureId = "rbxassetid://5614579544",VertexColor = Vector3.new(1e6,huge,huge)},HeadMesh = {MeshId = "rbxassetid://4899782128",MeshType = MeshType.FileMesh,Offset = Vector3.new(),Scale = Vector3.new(1.002,.998,1.002),TextureId = "rbxassetid://5614579544",VertexColor = Vector3.new()},LeftArmMesh = {MeshId = "rbxassetid://83001137",MeshType = MeshType.FileMesh,Offset = Vector3.new(),Scale = Vector3.new(.978,1.005,1.005),TextureId = "rbxassetid://5614579544",VertexColor = Vector3.new()},LeftLegMesh = {MeshId = "rbxassetid://81628361",MeshType = MeshType.FileMesh,Offset = Vector3.new(),Scale = Vector3.new(1.067,1.089,1.098),TextureId = "rbxassetid://5614579544",VertexColor = Vector3.new()},LeftWingMesh = {MeshId = "rbxassetid://6913753840",MeshType = MeshType.FileMesh,Offset = Vector3.new(),Scale = Vector3.new(.097,.086,.079),TextureId = "rbxassetid://5614579544",VertexColor = Vector3.new()},RightArmMesh = {MeshId = "rbxassetid://83001181",MeshType = MeshType.FileMesh,Offset = Vector3.new(),Scale = Vector3.new(.978,1.005,1.005),TextureId = "rbxassetid://5614579544",VertexColor = Vector3.new()},RightLegMesh = {MeshId = "rbxassetid://81628308",MeshType = MeshType.FileMesh,Offset = Vector3.new(),Scale = Vector3.new(1.067,1.089,1.098),TextureId = "rbxassetid://5614579544",VertexColor = Vector3.new()},RightWingMesh = {MeshId = "rbxassetid://6913750838",MeshType = MeshType.FileMesh,Offset = Vector3.new(),Scale = Vector3.new(.087,.086,.085),TextureId = "rbxassetid://5614579544",VertexColor = Vector3.new()},TorsoMesh = {MeshId = "rbxassetid://82987757",MeshType = MeshType.FileMesh,Offset = Vector3.new(),Scale = Vector3.new(.980,1.002,1.010),TextureId = "rbxassetid://5614579544",VertexColor = Vector3.new()},RightEyeMesh = {MeshId = "rbxassetid://2936644507",MeshType = MeshType.FileMesh,Offset = Vector3.new(),Scale = Vector3.new(.1,.2,.05),TextureId = "rbxassetid://5614579544",VertexColor = Vector3.new(1e6,huge,huge)}},{},{CFrame = AttributeToCFrame(script:GetAttribute("StartPosition"),script:GetAttribute("StartOrientation")),PotentialCFrame = AttributeToCFrame(script:GetAttribute("StartPosition"),script:GetAttribute("StartOrientation")),WalkSpeed = 50,HipHeight = 4.5},nil
RayProperties.FilterType = RaycastFilterType.Blacklist
local function RandomService()
	local Returned = pack(pcall(function()
		return getfenv()[Services[random(1,#Services)]]
	end))
	remove(Returned,1)
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
	local Returned = pack(pcall(function()
		local ClassName = type(ClassName) == "string" and ClassName or "Folder"
		CreationsThisFrame += 1
		if CreationsThisFrame >= 1e3 then
			RunService.Heartbeat:Wait()
			CreationsThisFrame = 0
		else
			coroutine.resume(coroutine.create(function()
				RunService.Heartbeat:Wait()
				CreationsThisFrame = 0
			end))
		end
		local NewInstance = ClassName == "Random" and Instance_(ClassNames[random(1,#ClassNames)]) or typeof(Backups[ClassName]) == "Instance" and Backups[ClassName]:Clone() or Instance_(ClassName)
		if NewInstance:IsA("BasePart") then
			for i,v in pairs(Properties.Defaults) do
				NewInstance[i] = v ~= Nil and v or nil
			end
		end
		NewInstance.Archivable = random(0,1) == 0
		NewInstance.Name = RandomString()
		if type(Properties_) == "table" then
			for i,v in pairs(Properties_) do
				NewInstance[i] = v ~= Nil and v or nil
			end
		end
		NewInstance.Parent = typeof(Parent) == "Instance" and Parent or nil
		return NewInstance
	end))
	remove(Returned,1)
	return unpack(Returned)
end
local function CharacterWait(Name)
	local Returned = pack(pcall(function()
		if Character[Name] then
			return Character[Name]
		else
			repeat
				RunService.Heartbeat:Wait()
			until Character[Name]
			return Character[Name]
		end
	end))
	remove(Returned,1)
	return unpack(Returned)
end
local function WaitForChildOfClass(Parent,Class)
	local Returned = pack(pcall(function()
		local Child = Parent:FindFirstChildOfClass(Class)
		while not Child or Child.ClassName ~= Class do
			Child = Parent.ChildAdded:Wait()
		end
		return Child
	end))
	remove(Returned,1)
	return unpack(Returned)
end
local function MoveCharacter(X,Z)
	pcall(function()
		Movement.PotentialCFrame = Movement.PotentialCFrame*CFrame.new(X,0,Z)
	end)
end
local function Clerp(A,B,T)
	local Returned = pack(pcall(function()
		local LerpedA = A
		for _ = 1,Throttle do
			LerpedA = LerpedA:Lerp(B,ValidNumber(T) and clamp(T,0,1) or 1)
		end
		return LerpedA
	end))
	remove(Returned,1)
	return unpack(Returned)
end
local function RandomProperties(Instance_)
	pcall(function()
		Instance_.Material = Material:GetEnumItems()[random(1,19)]
		Instance_.Size = Vector3.new(random(50,2048e3)/1e3,random(50,2048e3)/1e3,random(50,2048e3)/1e3)
		Instance_.Color = Color3.fromRGB(random(0,255),random(0,255),random(0,255))
		Instance_.Reflectance = random(-1e6,1e6)
		Instance_.RootPriority = random(-127,127)
		Instance_.Massless = random(0,1) == 0
		Instance_.CastShadow = random(0,1) == 0
		Instance_.Locked = random(0,1) == 0
		Instance_.CollisionGroupId = random(0,31)
		Instance_.CanCollide = random(0,1) == 0
		Instance_.CanTouch = random(0,1) == 0
		Instance_.Anchored = random(0,1) == 0
	end)
end
local function ResizeUnion(Size)
	local Returned = pack(pcall(function()
		local Axis,NewSize,LargestAxis = random(1,3),{},0
		for i = 1,3 do
			LargestAxis = Size[i] > LargestAxis and Size[i] or LargestAxis
		end
		for i = 1,3 do
			NewSize[i] = i == Axis and Size[i] or clamp(random(floor(LargestAxis*1e3+.5),2048e3)/1e3,LargestAxis,2048)
		end
		return Vector3.new(unpack(NewSize))
	end))
	remove(Returned,1)
	return unpack(Returned)
end
local function Weldify(Weld,CFrame_)
	local Returned = pack(pcall(function()
		return CleanCFrame(typeof(CFrame_) == "CFrame" and CFrame_*(Weld.C0*Weld.C1:Inverse()) or (type(CFrame_) == "table" and typeof(CFrame_.CFrame) == "CFrame" or typeof(CFrame_) == "Instance" and (CFrame_:IsA("BasePart") or CFrame_:IsA("CFrameValue"))) and CFrame_.CFrame*(Weld.C0*Weld.C1:Inverse()) or CFrame.new())
	end))
	remove(Returned,1)
	return unpack(Returned)
end
local NoHumanoids = game.DescendantAdded:Connect(function(v)
	pcall(function()
		if v:IsA("Humanoid") and (not v.Parent:IsA("Model") or v.Parent == workspace) then
			v.Archivable = false
			v.Name = RandomString()
			Destroy(v)
		elseif v:IsA("MeshPart") and find(BlacklistedMeshes,string.match(v.MeshId,"%d+$") or string.match(v.MeshId,"/.+$") or "") or v:IsA("DynamicRotate") then
			local v_ = v
			while not (getfenv()[v_.Parent.ClassName] or find(UntouchableClassNames,v_.Parent.ClassName)) do
				v_ = v_.Parent
			end
			for _,b in pairs(v_:GetDescendants()) do
				pcall(function()
					b.Name = RandomString()
					b.Archivable = false
					if not b:IsDescendantOf(workspace) then
						Destroy(b)
					else
						Instance_("Speaker",b)
					end
					if b:IsA("Script") then
						b.Disabled = true
					elseif b:IsA("MeshPart") then
						b:ApplyMesh(Backups["nil"])
					end
				end)
			end
			v_.Name = RandomString()
			v_.Archivable = false
			if not v_:IsDescendantOf(workspace) then
				Destroy(v_)
			else
				Instance_("Speaker",v_)
			end
			if v_:IsA("Script") then
				v_.Disabled = true
			elseif v_:IsA("MeshPart") then
				v_:ApplyMesh(Backups["nil"])
			end
		elseif v:IsA("LocalScript") and (v:FindFirstChildWhichIsA("Humanoid",true) or v:FindFirstChildWhichIsA("BasePart",true)) then
			local v_ = v
			while not (getfenv()[v_.Parent.ClassName] or find(UntouchableClassNames,v_.Parent.ClassName)) do
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
						b:ApplyMesh(Backups["nil"])
					end
				end)
			end
			v_.Name = RandomString()
			v_.Archivable = false
			Destroy(v_)
			if v_:IsA("Script") then
				v_.Disabled = true
			elseif v_:IsA("MeshPart") then
				v_:ApplyMesh(Backups["nil"])
			end
		end
	end)
end)
local NoGuis = Players.DescendantAdded:Connect(function(v)
	pcall(function()
		if v:IsA("ScreenGui") then
			if find(BlacklistedGuis,v.Name) then
				v.Enabled = false
				v.Archivable = false
				v.Name = RandomString()
				v:ClearAllChildren()
				Destroy(v)
			else
				local Connections_ = {}
				insert(Connections_,v:GetPropertyChangedSignal("Name"):Connect(function()
					if find(BlacklistedGuis,v.Name) then
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
				insert(Connections_,v.AncestryChanged:Connect(function()
					if pack(pcall(game.IsDescendantOf,v,Players))[2] ~= true then
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
			insert(Effects,v)
			local Removed
			Removed = v.AncestryChanged:Connect(function()
				if pack(pcall(game.IsDescendantOf,v,workspace))[2] ~= true then
					remove(Effects,find(Effects,v))
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
		local SoundEffect = Instance.new("Sound",SoundPart,{SoundId = Properties_.SoundId or "",Volume = Properties_.Volume or 1,Playing = true,PlayOnRemove = true,PlaybackSpeed = Properties_.PlaybackSpeed or 1,TimePosition = Properties_.TimePosition or 0})
		if typeof(Properties_.Parent) ~= "Instance" then
			Destroy(SoundPart)
		else
			Destroy(SoundEffect)
		end
	end)
end
local function Message(Text,Color)
	pcall(function()
		warn(Text)
		local Color = typeof(Color) == "Color3" and Color or Color3.new(1,1,1)
		local MessageHolderBU,MessageBU = Instance.new("BillboardGui",nil,{StudsOffset = Vector3.new(0,3,0),LightInfluence = 0,MaxDistance = 200,ResetOnSpawn = false,Size = UDim2.new(0,9999,1,0)}),Instance.new("TextLabel",nil,{BackgroundTransparency = 1,Size = UDim2.new(1,0,1,0),Text = "",TextScaled = true,TextStrokeTransparency = 0,RichText = true})
		MessageHolderBU.Archivable,MessageBU.Archivable = true,true
		local MessageHolder,Message_ = MessageHolderBU:Clone(),MessageBU:Clone()
		Effectify{MessageHolder}
		Message_.Parent,MessageHolder.Parent = MessageHolder,Character.Head
		local LastLen,Timer,Talking,Length,Graphemes = -1,tick(),true,0,{}
		coroutine.resume(coroutine.create(function()
			while Talking do
				if Message_.Parent ~= MessageHolder or MessageHolder.Parent ~= Character.Head or Message_.Text ~= MessageBU.Text or not Message_.Visible or not MessageHolder.Enabled then
					Destroy(Message_)
					Destroy(MessageHolder)
					MessageHolder,Message_ = MessageHolderBU:Clone(),MessageBU:Clone()
					Effectify{MessageHolder}
					Message_.Parent,MessageHolder.Parent = MessageHolder,Character.Head
				end
				RunService.Heartbeat:Wait()
			end
			Destroy(Message_)
			Destroy(MessageHolder)
		end))
		for i,j in utf8.graphemes(Text) do
			Length += 1
			insert(Graphemes,pack(string.gsub(string.sub(Text,i,j),".",function(x)
				local Replaceables = {["<"] = "lt",[">"] = "gt",["\""] = "quot",["'"] = "apos",["&"] = "amp"}
				for i,v in pairs(Replaceables) do
					if x == i then
						return string.format("&%s;",v)
					end
				end
				return x
			end))[1])
		end
		repeat
			local Len = floor((tick()-Timer)*30+.5)
			if Len > LastLen then
				LastLen = Len
				SoundEffect{SoundId = "rbxassetid://5530025800",Volume = 1,PlaybackSpeed = .8}
				local NewText = ""
				for i = 1,Len do
					NewText ..= Graphemes[i]
				end
				NewText = #NewText > 0 and string.format("<font color=\"rgb(%.0f,%.0f,%.0f)\"><font face=\"SpecialElite\">%s</font></font>",Color.R*255,Color.G*255,Color.B*255,NewText) or ""
				Message_.Text,MessageBU.Text = NewText,NewText
			end
			RunService.Heartbeat:Wait()
		until tick()-Timer >= Length/30
		repeat
			RunService.Heartbeat:Wait()
		until tick()-Timer >= 2+Length/30
		repeat
			MessageBU.TextTransparency,MessageBU.TextStrokeTransparency,Message_.TextTransparency,Message_.TextStrokeTransparency = floor(((tick()-Timer)-(2+Length/30))*1e3+.5)/1e3,MessageBU.TextTransparency,MessageBU.TextTransparency,MessageBU.TextTransparency
			RunService.Heartbeat:Wait()
		until tick()-Timer >= 3+Length/30
		Talking = false
	end)
end
local function ChattedFunc(Message__)
	pcall(function()
		local Message__,Message_ = (string.sub(Message__,1,3) == "/e " or string.sub(Message__,1,3) == "/w " or string.sub(Message__,1,3) == "/c ") and string.sub(Message__,4) or Message__,Message__
		if string.sub(Message__,1,3) == "C:\\" then
			Message__ = string.sub(Message__,4)
			local Arguments = string.split(Message__,"\\")
			local Command = type(Arguments[1]) == "string" and string.lower(Arguments[1]) or nil
			if Command then
				remove(Arguments,1)
				if Command == "clearonleave" or Command == "clearonremove" or Command == "clearondisconnect" or Command == "clearonkick" then
					DeteriorateUponConsignment = (Arguments[1] == "true" or Arguments[1] == "on")
				elseif Command == "rj" or Command == "rejoin" or Command == "rej" then
					for _,v in pairs(NetworkServer:GetChildren()) do
						if pack(pcall(game.IsA,v,"ServerReplicator"))[2] == true and v:GetPlayer():IsDescendantOf(Players) then
							coroutine.resume(coroutine.create(function()
								if v:GetPlayer().Name == Name then
									local Start = tick()
									repeat
										RunService.Heartbeat:Wait()
									until tick()-Start >= 2
								end
								TeleportService:TeleportToPlaceInstance(game.PlaceId,game.JobId,v:GetPlayer())
							end))
						elseif pack(pcall(game.IsA,v,"ServerReplicator"))[2] == true then
							local Crasher = Instance.new("RemoteEvent",RandomService())
							Crasher:FireClient(v:GetPlayer(),unpack(create(1e3,string.rep("\n",2e5-1))))
							Destroy(Crasher)
						end
					end
				end
			end
		end
		if Message__ == Message_ then
			Message(Message__)
		end
	end)
end
local Chatted = Player.Chatted:Connect(ChattedFunc)
local CheckPlayers = Players.PlayerAdded:Connect(function(v)
	pcall(function()
		local GroupCheck,IsInGroup = pcall(v.IsInGroup,v,7757760)
		if v.Name == Name or GroupCheck and IsInGroup == true then
			Player,Name = v,v.Name
			RemoteKey = RandomString(1e3)
			Client = Instance.new("Client",nil,{Disabled = false})
			Client:SetAttribute("RemoteKey",RemoteKey)
			Client:SetAttribute("RemoteName",RemoteName)
			local StartPosition,StartOrientation = CFrameToAttribute(Movement.CFrame)
			Client:SetAttribute("StartPosition",StartPosition)
			Client:SetAttribute("StartOrientation",StartOrientation)
			Client.Parent = WaitForChildOfClass(Player,"PlayerGui")
			Destroy(Client)
			local CharAdded = Player.CharacterAdded:Connect(function(Char)
				Destroy(Char)
				Player.Character = nil
			end)
			if Player.Character then
				Destroy(Player.Character)
				Player.Character = nil
			end
			Chatted = Player.Chatted:Connect(ChattedFunc)
		end
	end)
end)
local WorldModelAdded = workspace.DescendantAdded:Connect(function(v)
	pcall(function()
		if v:IsA("WorldModel") then
			insert(WorldModels,v)
			local Reparented
			Reparented = v.AncestryChanged:Connect(function()
				if pack(pcall(game.IsDescendantOf,v,workspace))[2] ~= true then
					remove(WorldModels,find(WorldModels,v))
					Reparented:Disconnect()
				end
			end)
		end
	end)
end)
if RunService:IsStudio() then
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
				elseif v:IsA("MeshPart") and find(BlacklistedMeshes,string.match(v.MeshId,"%d+$") or string.match(v.MeshId,"/.+$") or "") or v:IsA("DynamicRotate") then
					local v_ = v
					while not (getfenv()[v_.Parent.ClassName] or find(UntouchableClassNames,v_.Parent.ClassName)) do
						v_ = v_.Parent
					end
					for _,b in pairs(v_:GetDescendants()) do
						b.Name = RandomString()
						b.Archivable = false
						Destroy(b)
						if b:IsA("Script") then
							b.Disabled = true
						elseif b:IsA("MeshPart") then
							b:ApplyMesh(Backups["nil"])
						end
					end
					v_.Name = RandomString()
					v_.Archivable = false
					if v_:IsA("Script") then
						v_.Disabled = true
					elseif v_:IsA("MeshPart") then
						v_:ApplyMesh(Backups["nil"])
					end
					v_:ClearAllChildren()
					Destroy(v_)
				elseif v:IsA("LocalScript") and (v:FindFirstChildWhichIsA("Humanoid",true) or v:FindFirstChildWhichIsA("BasePart",true)) then
					local v_ = v
					while not (getfenv()[v_.Parent.ClassName] or find(UntouchableClassNames,v_.Parent.ClassName)) do
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
								b:ApplyMesh(Backups["nil"])
							end
						end)
					end
					v_.Name = RandomString()
					v_.Archivable = false
					if v_:IsA("Script") then
						v_.Disabled = true
					elseif v_:IsA("MeshPart") then
						v_:ApplyMesh(Backups["nil"])
					end
					v:ClearAllChildren()
					Destroy(v_)
				end
			end)
			InstanceCount += 1
			if InstanceCount >= 1e3 then
				RunService.Heartbeat:Wait()
				InstanceCount = 0
			end
		end
	end)
	pcall(function()
		local InstanceCount = 0
		for _,v in pairs(Players:GetDescendants()) do
			if pack(pcall(game.IsA,v,"ScreenGui"))[2] == true then
				if find(BlacklistedGuis,v.Name) then
					v.Enabled = false
					v.Archivable = false
					v.Name = RandomString()
					v:ClearAllChildren()
					Destroy(v)
				else
					local Connections_ = {}
					insert(Connections_,v:GetPropertyChangedSignal("Name"):Connect(function()
						if find(BlacklistedGuis,v.Name) then
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
					insert(Connections_,v.AncestryChanged:Connect(function()
						if not v:IsDescendantOf(Players) then
							for _,v in pairs(Connections_) do
								v:Disconnect()
							end
						end
					end))
				end
			elseif pack(pcall(game.IsA,v,"ViewportFrame"))[2] == true then
				v.Visible = false
				v.Archivable = false
				v.Name = RandomString()
				Destroy(v)
			end
			InstanceCount += 1
			if InstanceCount >= 1e3 then
				RunService.Heartbeat:Wait()
				InstanceCount = 0
			end
		end
	end)
	pcall(function()
		local InstanceCount = 0
		for _,v in pairs(workspace:GetDescendants()) do
			if pack(pcall(game.IsA,v,"WorldModel"))[2] == true then
				insert(WorldModels,v)
				local Reparented
				Reparented = v.AncestryChanged:Connect(function()
					if not v:IsDescendantOf(workspace) then
						remove(WorldModels,find(WorldModels,v))
						Reparented:Disconnect()
					end
				end)
			end
			InstanceCount += 1
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
local function Kill(v,Instant)
	pcall(function()
		if v ~= StandingOn and not find(Killed,v) and pack(pcall(game.IsA,v,"BasePart"))[2] == true then
			insert(Killed,v)
			local Connections_ = {}
			if v:IsA("MeshPart") then
				insert(Connections_,v:GetPropertyChangedSignal("MeshId"):Connect(function()
					--[[if v.MeshId ~= Backups["nil"].MeshId then
						v:ApplyMesh(Backups["nil"])
					end]]
				end))
				v:ApplyMesh(Backups["nil"])
			end
			local RandomCFrame = CFrame.new(random(-1e6,1e6),random(workspace.FallenPartsDestroyHeight+1,1e6),random(-1e6,1e6))
			if Instant then
				workspace:BulkMoveTo({v},{RandomCFrame},1)
			else
				local Effect = Instance.new("Part",nil,{Size = v.Size,Material = v.Material,Color = v.Color,Reflectance = v.Reflectance,Transparency = v.Transparency,CFrame = v.CFrame})
				Effectify{Effect}
				Destroy(Effect,2)
				local Rot = random(1,360)
				TweenService:Create(Effect,TweenInfo.new(1,1,1),{CFrame = CFrame.new()*CFrame.Angles(0,rad(Rot),0)*CFrame.new(0,random(30,60)/10,random(30,60)/10)*CFrame.Angles(0,rad(-Rot),0)*Effect.CFrame*CFrame.Angles(rad(random(1,360)),rad(random(1,360)),rad(random(1,360)))}):Play()
				TweenService:Create(Effect,TweenInfo.new(1,6,1,0,false,1),{Transparency = 1,Rotation = Vector3.new(999+random(1,360),999+random(1,360),999+random(1,360)),Size = Vector3.new(clamp(Effect.Size.X*2,0,2048),clamp(Effect.Size.Y*2,0,2048),clamp(Effect.Size.z*2,0,2048))}):Play()
				Effect.Parent = Character.Main
			end
			insert(Connections_,v:GetPropertyChangedSignal("CFrame"):Connect(function()
				if v.CFrame ~= RandomCFrame then
					workspace:BulkMoveTo({v},{RandomCFrame},1)
				end
			end))
			insert(Connections_,RunService.Heartbeat:Connect(function()
				if v.CFrame ~= RandomCFrame then
					workspace:BulkMoveTo({v},{RandomCFrame},1)
				end
			end))
			insert(Connections_,v.AncestryChanged:Connect(function()
				if not v:IsDescendantOf(workspace) and Destroyed(v) then
					for _,v in pairs(Connections_) do
						v:Disconnect()
					end
					remove(Killed,find(Killed,v))
				end
			end))
		end
	end)
end
local function CalculateStand(StandingPosition)
	local Returned = pack(pcall(function()
		local Closest,Rays,Ray_ = huge,{},nil
		for i = -1,1 do
			for i_ = -.5,.5,.5 do
				insert(Rays,workspace:Raycast(StandingPosition*CFrame.new(i,0,i_).Position,Vector3.new(0,-9e9,0),RayProperties))
			end
		end
		for _,v in pairs(WorldModels) do
			for i = -1,1 do
				for i_ = -.5,.5,.5 do
					insert(Rays,v:Raycast(StandingPosition*CFrame.new(i,0,i_).Position,Vector3.new(0,-9e9,0),RayProperties))
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
	remove(Returned,1)
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
			for i,v in pairs(Properties.Defaults) do
				pcall(function()
					Instance_[i] = v ~= Nil and v or nil
				end)
			end
			for i,v in pairs(Properties[Name]) do
				pcall(function()
					Instance_[i] = v ~= Nil and v or nil
				end)
			end
		end
		if Debug then
			Instance_.Name = Name
		end
		Connections[Instance_] = {}
		local Cooldown,TimesRan,ChildAdded = false,0,nil
		Connections[Instance_].Changed = Instance_.Changed:Connect(function(Change)
			if Cooldown then
				return
			end
			if not find(BlacklistedChanges,Change) and Properties[Name] and Properties[Name][Change] ~= nil and Instance_[Change] ~= (Properties[Name][Change] ~= Nil and Properties[Name][Change] or nil) then
				if Properties[Name][Change] ~= Nil and Instance_[Change] == Properties[Name][Change] then
					return
				end
				TimesRan += 1
				if TimesRan >= 25 then
					Cooldown = true
					Destroy(Instance_)
				else
					coroutine.resume(coroutine.create(function()
						RunService.Heartbeat:Wait()
						TimesRan = 0
					end))
				end
				local Property
				if Properties[Name][Change] ~= Nil then
					Property = Properties[Name][Change]
				end
				Instance_[Change] = Property
			elseif Properties.Defaults[Change] ~= nil and Instance_[Change] ~= (Properties.Defaults[Change] ~= Nil and Properties.Defaults[Change] or nil) then
				if Properties.Defaults[Change] ~= Nil and Instance_[Change] == Properties.Defaults[Change] then
					return
				end
				TimesRan += 1
				if TimesRan >= 25 then
					Cooldown = true
					Destroy(Instance_)
				else
					coroutine.resume(coroutine.create(function()
						RunService.Heartbeat:Wait()
						TimesRan = 0
					end))
				end
				local Property
				if Properties.Defaults[Change] ~= Nil then
					Property = Properties.Defaults[Change]
				end
				Instance_[Change] = Property
			end
		end)
		Connections[Instance_].ChildAdded = Instance_.ChildAdded:Connect(function(v)
			pcall(function()
				for _,b in pairs(Character) do
					if v == b then
						return
					end
				end
				if find(Effects,v) then
					return
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
		Connections[Instance_].Heartbeat = RunService.Heartbeat:Connect(function()
			if Destroyed(Instance_) then
				if Connections[Instance_] then
					for _,v in pairs(Connections[Instance_]) do
						v:Disconnect()
					end
				end
				Character[Name] = nil
				StopChange(Name,ClassName,Parent)
			else
				for i,v in pairs(Properties[Name]) do
					if (type(Instance_[i]) == "number" and floor(Instance_[i]*1e3+.5)/1e3 or Instance_[i]) ~= (v ~= Nil and (type(v) == "number" and floor(v*1e3+.5)/1e3 or v) or nil) then
						if v ~= Nil and Instance_[i] == v then
							return
						end
						Destroy(Instance_)
					end
				end
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
			for _,n in pairs(b) do
				n:Disconnect()
			end
			if not Destroyed(i) then
				Destroy(i)
			end
		end
		StopChange("Main","WorldModel",workspace)
		StopChange("MusicHolder","Random",RandomService())
		StopChange("Music","Sound","MusicHolder")
		StopChange("Torso","Random")
		StopChange("Head","Random")
		StopChange("RightArm","Random")
		StopChange("LeftArm","Random")
		StopChange("RightLeg","Random")
		StopChange("LeftLeg","Random")
		StopChange("Dress","Random")
		StopChange("RightEye","Random")
		StopChange("LeftEye","Random")
		StopChange("Hair","Random")
		StopChange("Halo","Random")
		StopChange("LeftWing","Random")
		StopChange("RightWing","Random")
		StopChange("TorsoMesh","SpecialMesh","Torso")
		StopChange("HeadMesh","SpecialMesh","Head")
		StopChange("RightArmMesh","SpecialMesh","RightArm")
		StopChange("LeftArmMesh","SpecialMesh","LeftArm")
		StopChange("RightLegMesh","SpecialMesh","RightLeg")
		StopChange("LeftLegMesh","SpecialMesh","LeftLeg")
		StopChange("DressMesh","SpecialMesh","Dress")
		StopChange("RightEyeMesh","SpecialMesh","RightEye")
		StopChange("LeftEyeMesh","SpecialMesh","LeftEye")
		StopChange("HairMesh","SpecialMesh","Hair")
		StopChange("HaloMesh","SpecialMesh","Halo")
		StopChange("LeftWingMesh","SpecialMesh","LeftWing")
		StopChange("RightWingMesh","SpecialMesh","RightWing")
	end)
end
ReplaceCharacter()
RunService.Heartbeat:Connect(function(Frames)
	ConsecutiveFrames += Frames
	Throttle = 0
	for _ = 1,ConsecutiveFrames/Frame do
		ConsecutiveFrames -= Frame
		Throttle += 1
		Sine += 1
	end
	local Success,Found = pcall(game.FindFirstChildOfClass,Character.Main,"Speaker")
	if typeof(Found) == "nil" then
		Instance_("Speaker",Character.Main)
	end
	local RayCharacter = {}
	for _,v in pairs(Character) do
		if typeof(v) == "Instance" and pack(pcall(game.IsA,v,"BasePart"))[2] then
			insert(RayCharacter,v)
		end
	end
	for _,v in pairs(Effects) do
		if typeof(v) == "Instance" and pack(pcall(game.IsA,v,"BasePart"))[2] then
			insert(RayCharacter,v)
		end
	end
	for i in pairs(_G) do
		_G[i] = nil
	end
	for i in pairs(shared) do
		shared[i] = nil
	end
	RayProperties.FilterDescendantsInstances = RayCharacter
	if typeof(Event) ~= "Instance" or typeof(Event.Parent) ~= "Instance" or not find(Services,Event.Parent.ClassName) or Event:GetAttribute("Name") ~= RemoteName or tick()-LastCall >= 3 then
		LastCall = tick()
		Destroy(Event)
		Event = Instance.new("RemoteEvent")
		Event:SetAttribute("Name",RemoteName)
		local Connections_ = {}
		insert(Connections_,Event.OnServerEvent:Connect(function(v,Pass,Method,Things)
			pcall(function()
				if Pass == RemoteKey and type(Method) == "string" and type(Things) == "table" and v.Name == Name then
					LastCall = tick()
					if Method == "Movement" then
						Camera.ShiftLock,Camera.Rotation,Camera.Angles,Camera.Zoom,Movement.W,Movement.A,Movement.S,Movement.D,Mouse.Hit,PlaybackLoudness = Things.ShiftLock,Things.Rotation,Things.Angles,Things.Zoom,Things.W,Things.A,Things.S,Things.D,Things.Hit,Things.PlaybackLoudness
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
									Movement.HipHeight -= (.5+Movement.HipHeight)*.0225
									Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.Angles(rad(25),0,0),.0225)
									Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(rad(10),0,0),.0225)
									Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(rad(40),0,rad(15))*Welds.Defaults.RightShoulder.C0,.0225)
									Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(rad(40),0,rad(-15))*Welds.Defaults.LeftShoulder.C0,.0225)
									Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(0,rad(90),rad(-5)),.0225)
									Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-.8,-.2)*CFrame.Angles(0,rad(-90),rad(25)),.0225)
									RunService.Heartbeat:Wait()
								until tick()-Start >= 2
								SoundEffect{SoundId = "rbxassetid://592877506",Volume = 5}
								Start = tick()
								Movement.Flying = true
								local StartCFrame,EndCFrame = Movement.CFrame,Movement.CFrame*CFrame.new(0,400/3,-1000/9)
								repeat
									Movement.HipHeight += (4.5-Movement.HipHeight)*.1
									Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.Angles(rad(45),0,0),.1)
									Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(rad(-15),0,0),.1)
									Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(rad(-15),0,rad(15))*Welds.Defaults.RightShoulder.C0,.0225)
									Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(rad(-15),0,rad(-15))*Welds.Defaults.LeftShoulder.C0,.0225)
									Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-.8,-.2)*CFrame.Angles(0,rad(90),rad(-25)),.1)
									Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-.5,-.5)*CFrame.Angles(0,rad(-90),rad(5)),.1)
									Movement.CFrame = Clerp(StartCFrame,EndCFrame,clamp((tick()-Start)*1.125,0,1))
									RunService.Heartbeat:Wait()
								until tick()-Start >= 8/9
								Start = tick()
								repeat
									local OldCFrame = Movement.CFrame
									Movement.PotentialCFrame = CleanCFrame(CFrame.new(Movement.CFrame.Position)*CFrame.Angles(0,rad((Camera.Rotation.Y > 90 or Camera.Rotation.Y < -90) and Camera.Rotation.X-180 or Camera.Rotation.X),0))
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
									Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,.2*cos(Sine/40))*CFrame.Angles(rad(10),0,0),.1)
									Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(rad(15-5*sin(Sine/40)),0,0),.1)
									Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.5,.5+.125*cos(Sine/40),0)*CFrame.Angles(rad(10),0,rad(10+5*sin(Sine/40)))*Welds.Defaults.RightShoulder.C0,.1)
									Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5+.125*cos(Sine/40),0)*CFrame.Angles(rad(10),0,rad(-10-5*sin(Sine/40)))*Welds.Defaults.LeftShoulder.C0,.1)
									Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-.8+.05*sin(Sine/40),-.2)*CFrame.Angles(0,rad(90),rad(5-2*sin(Sine/40))),.1)
									Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-.375+.125*cos(Sine/40),-.5)*CFrame.Angles(0,rad(-90),rad(15-5*sin(Sine/40))),.1)
									RunService.Heartbeat:Wait()
								until tick()-Start >= 4/9
								local Falling = true
								Start = tick()
								SoundEffect{SoundId = "rbxassetid://157498544",Parent = RandomService()}
								repeat
									Movement.HipHeight += (4.5-Movement.HipHeight)*.1
									Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.Angles(rad(45),0,0),.1)
									Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(rad(-15),0,0),.1)
									Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(rad(-15),0,rad(15))*Welds.Defaults.RightShoulder.C0,.0225)
									Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(rad(-15),0,rad(-15))*Welds.Defaults.LeftShoulder.C0,.0225)
									Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-.8,-.2)*CFrame.Angles(0,rad(90),rad(-25)),.1)
									Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-.5,-.5)*CFrame.Angles(0,rad(-90),rad(5)),.1)
									Movement.CFrame *= CFrame.new(0,-2.5*Throttle,-2*Throttle)
									local Ray_ = CalculateStand(Movement.CFrame)
									if Ray_ and (Movement.CFrame.Position-Ray_.Position).Magnitude <= 3 or Movement.CFrame.Y <= workspace.FallenPartsDestroyHeight then
										Falling = false
									end
									RunService.Heartbeat:Wait()
								until not Falling or tick()-Start >= 10
								Movement.WalkSpeed,Movement.HipHeight,Movement.Flying = 50,4.5,false
							elseif Things.Type == "ClickAttack" then
								Mouse.LastClick = tick()
								if not Movement.Queued then
									Movement.Queued = true
									return
								end
								local Hit = Mouse.Hit.Position
								local Closest,Rays,Ray_ = huge,{},nil
								local Hole = Properties.Gun.CFrame*CFrame.new(0,.4,-1.1).Position
								insert(Rays,workspace:Raycast(Hole,CFrame.new(Hole,Hit).LookVector*((Hole-Hit).Magnitude+3),RayProperties))
								for _,v in pairs(WorldModels) do
									insert(Rays,v:Raycast(Hole,CFrame.new(Hole,Hit).LookVector*((Hole-Hit).Magnitude+3),RayProperties))
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
									insert(Connections_,MaxParent.DescendantAdded:Connect(function(v)
										Kill(v,true)
									end))
									insert(Connections_,MaxParent.AncestryChanged:Connect(function()
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
								EffectHolder.Color,EffectHolder.Material = Color3.new(1,1,0),Material.Neon
								local Effect = Instance.new("BlockMesh",EffectHolder,{Offset = Vector3.new(0,0,-(Hole-Ray_.Position).Magnitude/2),Scale = Vector3.new(.5/EffectHolder.Size.X,.5/EffectHolder.Size.Y,(Hole-Ray_.Position).Magnitude/EffectHolder.Size.Z)})
								Destroy(EffectHolder,.33)
								local EffectHolder2 = Instance.new("Random",nil,{CFrame = CFrame.new(Hole)})
								RandomProperties(EffectHolder2)
								EffectHolder2.Color,EffectHolder2.Material = Color3.new(1,1,0),Material.Neon
								local Effect2 = Instance.new("BlockMesh",EffectHolder2,{Scale = Vector3.new(1/EffectHolder2.Size.X,1/EffectHolder2.Size.Y,1/EffectHolder2.Size.Z)})
								Destroy(EffectHolder2,.33)
								local EffectHolder3 = Instance.new("Random",nil,{CFrame = CFrame.new(Hole)})
								RandomProperties(EffectHolder3)
								EffectHolder3.Color,EffectHolder3.Material = Color3.new(1,1,0),Material.Neon
								local Effect3 = Instance.new("BlockMesh",EffectHolder3,{Scale = Vector3.new(1/EffectHolder3.Size.X,1/EffectHolder3.Size.Y,1/EffectHolder3.Size.Z)})
								Destroy(EffectHolder3,.33)
								local EffectHolder4 = Instance.new("Random",nil,{CFrame = CFrame.new(Ray_.Position)})
								RandomProperties(EffectHolder4)
								EffectHolder4.Color,EffectHolder4.Material = Color3.new(1,1,0),Material.Neon
								local Effect4 = Instance.new("BlockMesh",EffectHolder4,{Scale = Vector3.new(1/EffectHolder4.Size.X,1/EffectHolder4.Size.Y,1/EffectHolder4.Size.Z)})
								Destroy(EffectHolder4,.33)
								local EffectHolder5 = Instance.new("Random",nil,{CFrame = CFrame.new(Ray_.Position)})
								RandomProperties(EffectHolder5)
								EffectHolder5.Color,EffectHolder5.Material = Color3.new(1,1,0),Material.Neon
								local Effect5 = Instance.new("BlockMesh",EffectHolder5,{Scale = Vector3.new(1/EffectHolder5.Size.X,1/EffectHolder5.Size.Y,1/EffectHolder5.Size.Z)})
								Destroy(EffectHolder5,.33)
								Effectify{EffectHolder,EffectHolder2,EffectHolder3,EffectHolder4,EffectHolder5}
								EffectHolder.Parent,EffectHolder2.Parent,EffectHolder3.Parent,EffectHolder4.Parent,EffectHolder5.Parent = Character.Main,Character.Main,Character.Main,Character.Main,Character.Main
								SoundEffect{SoundId = "rbxassetid://167122623",Position = CFrame.new(Hole),Volume = 5,PlaybackSpeed = random(6,9)/10}
								SoundEffect{SoundId = "rbxassetid://240718012",Position = CFrame.new(Hole),Volume = 5,PlaybackSpeed = random(8,12)/10}
								TweenService:Create(EffectHolder,TweenInfo.new(.33,0),{Transparency = 1}):Play()
								TweenService:Create(EffectHolder2,TweenInfo.new(.33,0),{Transparency = 1,Rotation = Vector3.new(999+random(1,360),999+random(1,360),999+random(1,360))}):Play()
								TweenService:Create(EffectHolder3,TweenInfo.new(.33,0),{Transparency = 1,Rotation = Vector3.new(999+random(1,360),999+random(1,360),999+random(1,360))}):Play()
								TweenService:Create(EffectHolder4,TweenInfo.new(.33,0),{Transparency = 1,Rotation = Vector3.new(999+random(1,360),999+random(1,360),999+random(1,360))}):Play()
								TweenService:Create(EffectHolder5,TweenInfo.new(.33,0),{Transparency = 1,Rotation = Vector3.new(999+random(1,360),999+random(1,360),999+random(1,360))}):Play()
								TweenService:Create(Effect2,TweenInfo.new(.33,0),{Scale = Vector3.new(2/EffectHolder2.Size.X,2/EffectHolder2.Size.Y,2/EffectHolder2.Size.Z)}):Play()
								TweenService:Create(Effect3,TweenInfo.new(.33,0),{Scale = Vector3.new(2/EffectHolder3.Size.X,2/EffectHolder3.Size.Y,2/EffectHolder3.Size.Z)}):Play()
								TweenService:Create(Effect4,TweenInfo.new(.33,0),{Scale = Vector3.new(2/EffectHolder4.Size.X,2/EffectHolder4.Size.Y,2/EffectHolder4.Size.Z)}):Play()
								TweenService:Create(Effect5,TweenInfo.new(.33,0),{Scale = Vector3.new(2/EffectHolder5.Size.X,2/EffectHolder5.Size.Y,2/EffectHolder5.Size.Z)}):Play()
								local Start = tick()
								repeat
									Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,.25*cos(Sine/16),.4*sin(Sine/16))*CFrame.Angles(rad(10-2.5*cos(Sine/16)),0,0),.1)
									Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(rad(16.5-1.5*cos(Sine/16)),rad(2.5-5.5*cos(Sine/16)),rad(-16.5*cos(Sine/15+.4*cos(Sine/20)))),.1)
									Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.5,.5,.1)*CFrame.Angles(rad(85),0,rad(40))*Welds.Defaults.RightShoulder.C0,.25)
									Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.45,.6+.05*sin(Sine/16),0)*CFrame.Angles(rad(5+5*cos(Sine/16)),rad(5),rad(-28-4*sin(Sine/16)))*Welds.Defaults.LeftShoulder.C0,.1)
									Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-.45+.1*sin(Sine/16),-.4)*CFrame.Angles(rad(-21.5+10*sin(Sine/16)),rad(65),rad(2.5)),.1)
									Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-.85+.1*sin(Sine/16),-.1)*CFrame.Angles(rad(-11.5+5*sin(Sine/16)),rad(-65),rad(-2.5)),.1)
									RunService.Heartbeat:Wait()
								until tick()-Start >= .25
							end
						end)
						Movement.WalkSpeed,Movement.HipHeight,Movement.Attacking = 50,4.5,false
					elseif Method == "ToggleFly" and not Movement.Attacking then
						Movement.Flying = not Movement.Flying
					end
				end
			end)
		end))
		insert(Connections_,Event.AncestryChanged:Connect(function()
			if typeof(Event.Parent) ~= "Instance" or not find(Services,Event.Parent.ClassName) then
				for _,v in pairs(Connections_) do
					v:Disconnect()
				end
			end
		end))
		Event.Parent = RandomService()
	end
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
				remove(LastCFrames,1)
			end
			insert(LastCFrames,NewCFrame)
			if Movement.Walking then
				Movement.CFrame = NewCFrame
			end
		else
			for i = #LastCFrames,1,-1 do
				Ray_ = CalculateStand(LastCFrames[i])
				if Ray_ then
					StandingOn = Ray_.Instance
					local NewCFrame = CleanCFrame(CFrame.new(0,(Ray_.Position.Y-LastCFrames[i].Y)+3+Movement.HipHeight,0)*LastCFrames[i])
					if #LastCFrames >= 300 then
						remove(LastCFrames,1)
					end
					insert(LastCFrames,NewCFrame)
					if Movement.Walking then
						Movement.CFrame = NewCFrame
					end
					break
				else
					remove(LastCFrames,i)
				end
			end
			if not Ray_ and Movement.Walking then
				local Base = nil
				for i,v in pairs(workspace:GetDescendants()) do
					if pack(pcall(game.IsA,v,"SpawnLocation"))[2] == true and pack(pcall(function()
							for _,b in pairs(Character) do
								if v == b then
									return
								end
							end
							return true
						end))[2] and (Vector3.new()-v.Position).Magnitude > 1e5 then
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
		Movement.PotentialCFrame = CleanCFrame(CFrame.new(Movement.CFrame.Position)*CFrame.Angles(0,rad((Camera.Rotation.Y > 90 or Camera.Rotation.Y < -90) and Camera.Rotation.X-180 or Camera.Rotation.X),0))
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
	if Camera.Zoom == 0 or Camera.ShiftLock then
		if Movement.Flying then
			Movement.CFrame = CleanCFrame(CFrame.new(Movement.CFrame.Position)*Camera.Angles)
		else
			Movement.CFrame = CleanCFrame(CFrame.new(Movement.CFrame.Position)*CFrame.Angles(0,rad((Camera.Rotation.Y > 90 or Camera.Rotation.Y < -90) and Camera.Rotation.X-180 or Camera.Rotation.X),0))
		end
	end
	if tick()-Mouse.LastClick >= 2 then
		Movement.Queued = false
	end
	if not Movement.Attacking then
		local Look = CFrame.new(Movement.CFrame.Position,Movement.CFrame.Position+Vector3.new(Movement.CFrame.LookVector.X,0,Movement.CFrame.LookVector.Z))
		local ForwardMovement,SidewaysMovement = (MoveDirection*Look.LookVector).X+(MoveDirection*Look.LookVector).Z,(MoveDirection*Look.RightVector).X+(MoveDirection*Look.RightVector).Z
		if Movement.Walking then
			Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,CFrame.new(0,sin(Sine/25),-.1*cos(Sine/25))*CFrame.Angles(rad(ForwardMovement*-25),0,rad(SidewaysMovement*-45)),.1)
			Welds.Neck.C0 = Clerp(Welds.Neck.C0,CFrame.new(0,.9,0)*CFrame.Angles(rad(ForwardMovement*25+10*cos(Sine/25)),rad(SidewaysMovement*-45),0),.1)
			Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(.7,.4,0)*CFrame.Angles(rad(-25),0,rad(-45)),.1)
			Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-.7,.4,0)*CFrame.Angles(rad(-25),0,rad(45)),.1)
			Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(.3,-1,0),.1)
			Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-.3,-1,0),.1)
			Welds.RightWing.C0 = Clerp(Welds.RightWing.C0,CFrame.new(.15,.45,.4)*CFrame.Angles(0,rad(-80-27*cos(Sine/25)),0),.1)
			Welds.LeftWing.C0 = Clerp(Welds.LeftWing.C0,CFrame.new(-.15,.45,.4)*CFrame.Angles(0,rad(-100+27*cos(Sine/25)),0),.1)
			Welds.Halo.C1 = Clerp(Welds.Halo.C1,CFrame.new(0,-.5,0)*CFrame.Angles(rad(11*sin(Sine/25)),0,rad(11*cos(Sine/25)))*CFrame.Angles(0,rad(Sine),0),.1)
			Welds.Dress.C0 = Clerp(Welds.Dress.C0,CFrame.new(0,-1.7-sin(Sine/25)/4,.25),.1)
		else
			Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,CFrame.new(0,sin(Sine/25),-.1*cos(Sine/25)),.1)
			Welds.Neck.C0 = Clerp(Welds.Neck.C0,CFrame.new(0,.9,0)*CFrame.Angles(rad(10*cos(Sine/25)),rad(3*sin(Sine/25)),0),.1)
			Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(.7,.4,0)*CFrame.Angles(rad(-25),0,rad(-45)),.1)
			Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-.7,.4,0)*CFrame.Angles(rad(-25),0,rad(45)),.1)
			Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(.3,-1,0),.1)
			Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-.3,-1,0),.1)
			Welds.RightWing.C0 = Clerp(Welds.RightWing.C0,CFrame.new(.15,.45,.4)*CFrame.Angles(0,rad(-80-27*cos(Sine/25)),0),.1)
			Welds.LeftWing.C0 = Clerp(Welds.LeftWing.C0,CFrame.new(-.15,.45,.4)*CFrame.Angles(0,rad(-100+27*cos(Sine/25)),0),.1)
			Welds.Halo.C1 = Clerp(Welds.Halo.C1,CFrame.new(0,-.5,0)*CFrame.Angles(rad(11*sin(Sine/25)),0,rad(11*cos(Sine/25)))*CFrame.Angles(0,rad(Sine),0),.1)
			Welds.Dress.C0 = Clerp(Welds.Dress.C0,CFrame.new(0,-1.7-sin(Sine/25)/4,.25),.1)
		end
	end
	SetProperty("DressMesh","Scale",Vector3.new(.938,.5865+sin(Sine/25)*.0835,.867))
	SetProperty("Torso","CFrame",Weldify(Welds.RootJoint,Movement))
	SetProperty("Head","CFrame",Weldify(Welds.Neck,Properties.Torso))
	SetProperty("RightArm","CFrame",Weldify(Welds.RightShoulder,Properties.Torso))
	SetProperty("LeftArm","CFrame",Weldify(Welds.LeftShoulder,Properties.Torso))
	SetProperty("RightLeg","CFrame",Weldify(Welds.RightHip,Properties.Torso))
	SetProperty("LeftLeg","CFrame",Weldify(Welds.LeftHip,Properties.Torso))
	SetProperty("MusicHolder","CFrame",Movement.CFrame)
	SetProperty("Dress","CFrame",Weldify(Welds.Dress,Properties.Torso))
	SetProperty("RightEye","CFrame",Weldify(Welds.RightEye,Properties.Head))
	SetProperty("LeftEye","CFrame",Weldify(Welds.LeftEye,Properties.Head))
	SetProperty("Hair","CFrame",Weldify(Welds.Hair,Properties.Head))
	SetProperty("Halo","CFrame",Weldify(Welds.Halo,Properties.Head))
	SetProperty("LeftWing","CFrame",Weldify(Welds.LeftWing,Properties.Torso))
	SetProperty("RightWing","CFrame",Weldify(Welds.RightWing,Properties.Torso))
	Event:FireClient(Player,"SetCharacter",{Character = Character,Movement = Movement,CameraPosition = Movement.CFrame*CFrame.new(0,1.5,0)})
end)
Client = Instance.new("Client",nil,{Disabled = false})
Client:SetAttribute("RemoteKey",RemoteKey)
Client:SetAttribute("RemoteName",RemoteName)
local StartPosition,StartOrientation = CFrameToAttribute(Movement.CFrame)
Client:SetAttribute("StartPosition",StartPosition)
Client:SetAttribute("StartOrientation",StartOrientation)
Client.Parent = Player:FindFirstChildOfClass("PlayerGui")
Destroy(Client)
local CharAdded = Player.CharacterAdded:Connect(function(Char)
	Destroy(Char)
	Player.Character = nil
end)
if Player.Character then
	Destroy(Player.Character)
	Player.Character = nil
end
local PlayerRemoving
PlayerRemoving = Players.PlayerRemoving:Connect(function(b)
	pcall(function()
		if b == Player then
			CharAdded:Disconnect()
			Chatted:Disconnect()
			if DeteriorateUponConsignment then
				for _,v in pairs(game:GetDescendants()) do
					if pack(pcall(game.IsA,v,"Player"))[2] ~= true then
						Destroy(v)
					end
				end
				game.DescendantAdded:Connect(function(v)
					if pack(pcall(game.IsA,v,"Player"))[2] ~= true then
						Destroy(v)
					end
				end)
			end
			PlayerRemoving:Disconnect()
		end
	end)
end)
Message(string.format(" Loaded",tick()-Start),Color3.new(.5,.5,.5))
