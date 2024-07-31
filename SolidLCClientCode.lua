function WaitForChildOfClass(Parent,Class)
	local Child = Parent:FindFirstChildOfClass(Class)
	while not Child or Child.ClassName ~= Class do
		Child = Parent.ChildAdded:Wait()
	end
	return Child
end
local RemoteName = "hiuwu"
local Movement,Trottle,RayProperties,CameraPart,Remote,LastFrame,Character,RemoteKey,Mouse,MusicHolder,Music,WorldModels = {CFrame = CFrame.new(0,100,0),PotentialCFrame = CFrame.new(0,100,0),WalkSpeed = 50},1,RaycastParams.new(),Instance.new("Part"),nil,tick(),nil,"hiuwu",game:GetService("Players").LocalPlayer:GetMouse(),nil,nil,{}
local RemoteKey = "hiuwu"
RayProperties.FilterType = Enum.RaycastFilterType.Blacklist
local Remote = game.ReplicatedStorage:WaitForChild(RemoteName)
for _,v in pairs(workspace:GetDescendants()) do
	if v:IsA("WorldModel") then
		table.insert(WorldModels,v)
		local Reparented
		Reparented = v.AncestryChanged:Connect(function()
			if not v:IsDescendantOf(workspace) then
				table.remove(WorldModels,table.find(WorldModels,v))
				Reparented:Disconnect()
			end
		end)
	end
end
workspace.DescendantAdded:Connect(function(v)
	if v:IsA("WorldModel") then
		table.insert(WorldModels,v)
		local Reparented
		Reparented = v.AncestryChanged:Connect(function()
			if not v:IsDescendantOf(workspace) then
				table.remove(WorldModels,table.find(WorldModels,v))
				Reparented:Disconnect()
			end
		end)
	end
end)
CameraPart:Destroy()
local function RandomString(Length)
	return game:GetService("HttpService"):GenerateGUID(false)
end
local RealPos = Instance.new("SelectionSphere")
RealPos.Name = RandomString()
RealPos.Color3 = Color3.new()
RealPos.Transparency = .75
RealPos.Adornee = CameraPart
RealPos.Parent = workspace
local function MoveCharacter(X,Z)
	Movement.PotentialCFrame = Movement.PotentialCFrame*CFrame.new(X,0,Z)
end
local function KeyDown(Key)
    return not game:GetService("UserInputService"):GetFocusedTextBox() and game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode[Key]) or false
end
Mouse.KeyDown:Connect(function(Key)
	if Key == "f" then
		Movement.Flying = not Movement.Flying
		local LookVector = Movement.CFrame.LookVector
		Movement.CFrame = CFrame.new(Movement.CFrame.Position,Movement.CFrame.Position+Vector3.new(LookVector.X,0,LookVector.Z))
	elseif Key == "m" then
		Remote:FireServer(RemoteKey,"SwitchMode",{})
	elseif Key == "n" then
		Remote:FireServer(RemoteKey,"Attack",{Type = "GroundShards"})
	elseif Key == "b" then
		Remote:FireServer(RemoteKey,"Attack",{Type = "KaBoom"})
	elseif Key == "v" then
		Remote:FireServer(RemoteKey,"Attack",{Type = "Bullets"})
	elseif Key == "z" then
		Remote:FireServer(RemoteKey,"Attack",{Type = "HedShoot"})
	elseif Key == "c" then
		Remote:FireServer(RemoteKey,"Attack",{Type = "PainlessRain"})
	elseif Key == "x" then
		Remote:FireServer(RemoteKey,"Attack",{Type = "SingularityBeam"})
	elseif Key == "r" then
		Remote:FireServer(RemoteKey,"Attack",{Type = "OwDudeStopMyEars"})
	elseif Key == "\\" then
		Remote:FireServer(RemoteKey,"Attack",{Type = "NightmareIsAlive",Confirmation = RemoteKey})
	end
	print(Key)
end)
Mouse.Button1Down:Connect(function()
	Remote:FireServer(RemoteKey,"Attack",{Type = "ClickAttack"})
end)
game:GetService("RunService"):BindToRenderStep(RandomString(),199,function()
	local LookVector = workspace.CurrentCamera.CFrame.LookVector
	if not Movement.Flying then
		local Closest,Rays,Ray_ = math.huge,{},nil
		table.insert(Rays,workspace:Raycast(Movement.CFrame.Position-Vector3.new(0,1,0),Vector3.new(0,-9e9,0),RayProperties))
		for _,v in pairs(WorldModels) do
			table.insert(Rays,v:Raycast(Movement.CFrame.Position-Vector3.new(0,1,0),Vector3.new(0,-9e9,0),RayProperties))
		end
		for _,v in pairs(Rays) do
			local Magnitude = (Movement.CFrame.Position-v.Position).Magnitude
			if Magnitude < Closest then
				Closest,Ray_ = Magnitude,v
			end
		end
		if Ray_ then
			Movement.CFrame = CFrame.new(0,(Ray_.Position.Y-Movement.CFrame.Y)+3,0)*Movement.CFrame
		else
			local Base = nil
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("SpawnLocation") then
					Base = v
					break
				end
			end
			if Base then
				Movement.CFrame = CFrame.new(Base.Position)*CFrame.new(0,(Base.Size.Y/2)+3,0)*Movement.CFrame-Movement.CFrame.Position
			else
				Movement.CFrame = CFrame.new(0,100,0)*Movement.CFrame-Movement.CFrame.Position
			end
		end
	end
	local OldCFrame = Movement.CFrame
	if Movement.Flying then
		Movement.PotentialCFrame = CFrame.new(Movement.CFrame.Position,Movement.CFrame.Position+LookVector)
	else
		Movement.PotentialCFrame = CFrame.new(Movement.CFrame.Position,Vector3.new(Movement.CFrame.X+LookVector.X,Movement.CFrame.Y,Movement.CFrame.Z+LookVector.Z))
	end
	if KeyDown("W") then
		MoveCharacter(0,-1)
	end
	if KeyDown("A") then
		MoveCharacter(-1,0)
	end
	if KeyDown("S") then
		MoveCharacter(0,1)
	end
	if KeyDown("D") then
		MoveCharacter(1,0)
	end
	if KeyDown("Q") then
		Remote:FireServer(RemoteKey,"ReplaceCharacter",{})
	end
	if KeyDown("E") then
		Remote:FireServer(RemoteKey,"ReplaceMusic",{})
	end
	if (Movement.PotentialCFrame.X ~= OldCFrame.X or Movement.PotentialCFrame.Z ~= OldCFrame.Z) then
		Movement.Walking = true
		Movement.CFrame = CFrame.new(Movement.CFrame.Position,Movement.PotentialCFrame.Position)*CFrame.new(0,0,(tick()-LastFrame)*-Movement.WalkSpeed)
	else
		Movement.Walking = false
	end
	workspace.CurrentCamera.CameraSubject = MusicHolder
	workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
	game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 100000
	game:GetService("Players").LocalPlayer.CameraMinZoomDistance = 0.5
	game:GetService("Players").LocalPlayer.CameraMode = Enum.CameraMode.Classic
	CameraPart.CFrame = CFrame.new(0,-2.25,0)*Movement.CFrame
	LookVector = workspace.CurrentCamera.CFrame.LookVector
	if game:GetService("UserInputService").MouseBehavior == Enum.MouseBehavior.LockCenter then
		if Movement.Flying then
			Movement.CFrame = CFrame.new(Movement.CFrame.Position,Movement.CFrame.Position+LookVector)
		else
			Movement.CFrame = CFrame.new(Movement.CFrame.Position,Vector3.new(Movement.CFrame.X+LookVector.X,Movement.CFrame.Y,Movement.CFrame.Z+LookVector.Z))
		end
	end
	Remote:FireServer(RemoteKey,"Movement",{CFrame = Movement.CFrame,Walking = Movement.Walking,Hit = Mouse.Hit})
	for _,v in pairs(Character) do
		if typeof(v) == "Instance" and v.LocalTransparencyModifier ~= 0 then
			Remote:FireServer(RemoteKey,"ReplaceCharacter",{})
			break
		end
	end
	for _,v in pairs(Character) do
		if typeof(v) == "Instance" then
			pcall(function()
				v.CanCollide = false
			end)
		end
	end
	Remote:FireServer(RemoteKey,"PlaybackLoudness",{PlaybackLoudness = Music.PlaybackLoudness,Hit = Mouse.Hit})
	LastFrame = tick()
end)
local function ConnectEvent(Event_)
	local EventConnect = Event_.OnClientEvent:Connect(function(Method,Things)
		if type(Method) == "string" and type(Things) == "table" then
			if Method == "SetCharacter" then
				Character = Things.Character
				local RayCharacter = {}
				for _,v in pairs(Character) do
					if typeof(v) == "Instance" then
						table.insert(RayCharacter,v)
					end
				end
				RayProperties.FilterDescendantsInstances = RayCharacter
				MusicHolder = Things.MusicHolder
				Music = Things.Music
				Movement.WalkSpeed = Things.WalkSpeed
			elseif Method == "SetPosition" then
				Movement.CFrame = Things.CFrame
			end
		end
	end)
	local EventRemoval
	EventRemoval = Event_.AncestryChanged:Connect(function()
		if not Event_:IsDescendantOf(game) then
			EventConnect:Disconnect()
			local FoundRemote = false
			repeat
				game:GetService("RunService").RenderStepped:Wait()
				local PotentialRemote = game:FindFirstChild(RemoteName,true)
				if typeof(PotentialRemote) == "Instance" and PotentialRemote:IsA("RemoteEvent") and PotentialRemote.Name == RemoteName then
					Remote = PotentialRemote
					FoundRemote = true
				end
			until FoundRemote
			ConnectEvent(Remote)
			EventRemoval:Disconnect()
		end
	end)
end
local FoundRemote = false
repeat
	game:GetService("RunService").RenderStepped:Wait()
	local PotentialRemote = game:FindFirstChild(RemoteName,true)
	if typeof(PotentialRemote) == "Instance" and PotentialRemote:IsA("RemoteEvent") and PotentialRemote.Name == RemoteName then
		Remote = PotentialRemote
		FoundRemote = true
	end
until FoundRemote
ConnectEvent(Remote)
