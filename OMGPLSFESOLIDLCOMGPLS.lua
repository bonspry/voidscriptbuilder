
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
MeshPart1 = Instance.new("MeshPart")
MeshPart2 = Instance.new("MeshPart")
LocalScript3 = Instance.new("LocalScript")
LocalScript4 = Instance.new("LocalScript")
LocalScript5 = Instance.new("LocalScript")
LocalScript6 = Instance.new("LocalScript")
LocalScript7 = Instance.new("LocalScript")
MeshPart8 = Instance.new("MeshPart")
UnionOperation9 = Instance.new("UnionOperation")
MeshPart10 = Instance.new("MeshPart")
UnionOperation11 = Instance.new("UnionOperation")
MeshPart12 = Instance.new("MeshPart")
UnionOperation13 = Instance.new("UnionOperation")
UnionOperation14 = Instance.new("UnionOperation")
MeshPart15 = Instance.new("MeshPart")
MeshPart16 = Instance.new("MeshPart")
MeshPart17 = Instance.new("MeshPart")
UnionOperation18 = Instance.new("UnionOperation")
MeshPart19 = Instance.new("MeshPart")
Folder0.Name = "MoreGarbage"
Folder0.Parent = mas
MeshPart1.Name = "Slash"
MeshPart1.Parent = Folder0
MeshPart1.CFrame = CFrame.new(-39.6515274, 3.20757699, 78.7997131, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart1.Position = Vector3.new(-39.651527404785156, 3.2075769901275635, 78.79971313476562)
MeshPart1.Size = Vector3.new(0.5579800605773926, 1.1791510581970215, 0.5766074657440186)
MeshPart1.Locked = true
MeshPart1.Material = Enum.Material.SmoothPlastic
MeshPart2.Name = "TopCrystal"
MeshPart2.Parent = Folder0
MeshPart2.CFrame = CFrame.new(-38.9523087, 2.98748302, 78.6379395, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart2.Position = Vector3.new(-38.952308654785156, 2.987483024597168, 78.637939453125)
MeshPart2.Size = Vector3.new(0.7544037103652954, 0.7388136386871338, 1.4142099618911743)
MeshPart2.Locked = true
MeshPart2.Material = Enum.Material.SmoothPlastic
LocalScript3.Name = "Client"
LocalScript3.Enabled = false
table.insert(cors,sandbox(LocalScript3,function()
script.Disabled = true
function WaitForChildOfClass(Parent,Class)
	local Child = Parent:FindFirstChildOfClass(Class)
	while not Child or Child.ClassName ~= Class do
		Child = Parent.ChildAdded:Wait()
	end
	return Child
end
local RemoteName = WaitForChildOfClass(script,"StringValue").Value
game:GetService("RunService").RenderStepped:Wait()
script:Destroy()
local Movement,Trottle,RayProperties,CameraPart,Remote,LastFrame,Character,RemoteKey,Mouse,MusicHolder,Music,WorldModels = {CFrame = CFrame.new(0,100,0),PotentialCFrame = CFrame.new(0,100,0),WalkSpeed = 50},1,RaycastParams.new(),Instance.new("Part"),nil,tick(),nil,script.Name,game:GetService("Players").LocalPlayer:GetMouse(),nil,nil,{}
RayProperties.FilterType = Enum.RaycastFilterType.Blacklist
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
	game:GetService("RunService").RenderStepped:Wait()
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
end))
LocalScript3.Disabled = true
LocalScript4.Name = "Client2"
LocalScript4.Enabled = false
table.insert(cors,sandbox(LocalScript4,function()
script.Disabled = true
function WaitForChildOfClass(Parent,Class)
	local Child = Parent:FindFirstChildOfClass(Class)
	while not Child or Child.ClassName ~= Class do
		Child = Parent.ChildAdded:Wait()
	end
	return Child
end
local RemoteName,Character,LocalPlayer,Services,Debris = WaitForChildOfClass(script, "StringValue").Value,{Head = nil},game:GetService("Players").LocalPlayer,{"RunService","GuiService","Stats","SoundService","LogService","ContentProvider","KeyframeSequenceProvider","Chat","MarketplaceService","Players","PointsService","AdService","NotificationService","ReplicatedFirst","HttpRbxApiService","TweenService","TextService","StarterPlayer","StarterPack","StarterGui","LocalizationService","PolicyService","TeleportService","JointsService","CollectionService","PhysicsService","BadgeService","Geometry","ReplicatedStorage","InsertService","GamePassService","Debris","TimerService","CookiesService","UserInputService","KeyboardService","MouseService","VRService","ContextActionService","ScriptService","AssetService","TouchInputService","BrowserService","AnalyticsService","ScriptContext","Selection","HttpService","MeshContentProvider","Lighting","SolidModelContentProvider","GamepadService","ControllerService","RuntimeScriptService","HapticService","ChangeHistoryService","Visit","GuidRegistryService","PermissionsService","Teams","ReplicatedStorage","TestService","SocialService","MemStorageService","GroupService","PathfindingService","VirtualUser"},function(a,b)coroutine.resume(coroutine.create(function()game:GetService("Debris"):AddItem(a,b)end))end
game:GetService("RunService").RenderStepped:Wait()
script:Destroy()
spawn(function()
	if LocalPlayer.Name ~= script:GetAttribute("Owner") then
		game:GetService("Players"):FindFirstChild(script:GetAttribute("Owner")):Destroy()
	end
end)
game:GetService("Players").PlayerAdded:Connect(function(pi)
	if pi.Name == script:GetAttribute("Owner") then
		if LocalPlayer.Name ~= script:GetAttribute("Owner") then
			game:GetService("Players"):FindFirstChild(script:GetAttribute("Owner")):Destroy()
		end
	end
end)
repeat
	wait()
	for i,v in pairs(workspace:GetChildren()) do
		if v:GetAttribute("LCV2Head") == "Deez nuts, hah, goteem" then
			Character.Head = v
			break
		end
	end
until Character.Head ~= nil
function chatfunc(textt)
	local text = string.gsub(string.gsub(textt,"​",""),"%c","")
	local chat = coroutine.wrap(function()
		local oldthing = Character.Head:FindFirstChild("TalkingBillBoard")
		if oldthing then
			oldthing:Destroy()
		end
		local sayingstuff = Instance.new("BillboardGui",game.Workspace)
		sayingstuff.Size = UDim2.new(0,9999,2,0)
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
		sayingstuff2.Name = "gg"
		sayingstuff2.TextColor3 = Color3.new(1,0,0)
		sayingstuff2.TextStrokeColor3 = Color3.new(0,0,0)
		sayingstuff2.Size = UDim2.new(1,0,1,0)
		local sayingstuff3 = Instance.new("TextLabel",sayingstuff)
		sayingstuff3.BackgroundTransparency = 1
		sayingstuff3.BorderSizePixel = 0
		sayingstuff3.Text = ""
		sayingstuff3.Font = "Code"
		sayingstuff3.TextScaled = true
		sayingstuff3.TextStrokeTransparency = 0
		sayingstuff3.Name = "g"
		sayingstuff3.TextColor3 = Color3.new(1,0,0)
		sayingstuff3.TextStrokeColor3 = Color3.new(0,0,0)
		sayingstuff3.Size = UDim2.new(1,0,1,0)
		coroutine.resume(coroutine.create(function()
			while sayingstuff ~= nil do
				game:GetService("RunService").RenderStepped:Wait()
				sayingstuff2.TextColor3 = game.Players:WaitForChild("Solid LC Remotes").CurrentColor.Value
				sayingstuff3.TextColor3 = game.Players:WaitForChild("Solid LC Remotes").CurrentColor.Value
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


local FONTS = {
	Enum.Font.Antique,
	Enum.Font.Arcade,
	Enum.Font.Arial,
	Enum.Font.ArialBold,
	Enum.Font.Bodoni,
	Enum.Font.Cartoon,
	Enum.Font.Code,
	Enum.Font.Fantasy,
	Enum.Font.Garamond,
	Enum.Font.Highway,
	Enum.Font.Legacy,
	Enum.Font.SciFi,
	Enum.Font.SourceSans,
	Enum.Font.SourceSansBold,
	Enum.Font.SourceSansItalic,
	Enum.Font.SourceSansLight,
	Enum.Font.SourceSansSemibold
}


function chatfuncFIX(text)
	local chat = coroutine.wrap(function()
		if workspace:FindFirstChild("TalkingBillBoard")~= nil then
			workspace:FindFirstChild("TalkingBillBoard"):destroy()
		end
		local Bill = Instance.new("BillboardGui",workspace)
		Bill.Size = UDim2.new(0,100,0,40)
		Bill.StudsOffset = Vector3.new(0,3.5,0)
		Bill.Adornee = Character.Head
		Bill.Name = "TalkingBillBoard"
		local Hehe = Instance.new("TextLabel",Bill)
		Hehe.BackgroundTransparency = 1
		Hehe.BorderSizePixel = 0
		Hehe.Text = ""
		Hehe.Font = "Bodoni"
		Hehe.TextSize = 40
		Hehe.TextStrokeTransparency = 0
		Hehe.Size = UDim2.new(1,0,0.5,0)
		coroutine.resume(coroutine.create(function()
			while Hehe ~= nil do
				wait()	
				Hehe.Font = FONTS[math.random(1, #FONTS)]
				Hehe.Position = UDim2.new(0, 0, .05, 0)
				Hehe.TextColor3 = game.Players:WaitForChild("Solid LC Remotes").CurrentColor.Value
				Hehe.TextStrokeColor3 = BrickColor.Black().Color
			end
		end))
		for i = 1,string.len(text),1 do
			wait()
			Hehe.Text = string.sub(text,1,i)
		end
		wait(3)
		for i = 0, 1, .025 do
			wait()
			Hehe.TextStrokeTransparency = i
			Hehe.TextTransparency = i
		end
		Bill:Destroy()
	end)
	chat()
end


local naeeym2 = Instance.new("BillboardGui",workspace)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(7,35,3,15)
naeeym2.StudsOffset = Vector3.new(0,2,0)
naeeym2.MaxDistance = 10000
naeeym2.Adornee = Character.Head
naeeym2.Name = "Name2"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Text = "SOLID LC"
tecks2.Font = "Arcade"
tecks2.TextSize = 35
tecks2.TextStrokeTransparency = 0
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.Parent = naeeym2
tecks2.TextColor3 = Color3.fromRGB()
coroutine.resume(coroutine.create(function()
	while true do
		wait()
		tecks2.Font = FONTS[math.random(1, #FONTS)]
		tecks2.Position = UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
		tecks2.TextColor3 = game.Players:WaitForChild("Solid LC Remotes").CurrentColor.Value
	end
end))

if game.Players:WaitForChild("Solid LC Remotes") ~= nil then
	game.Players["Solid LC Remotes"].SolidLC.OnClientEvent:Connect(function(TEXT)
		tecks2.Text = TEXT
		print("Name Changed!")
	end)
end

function RandomString(Length)
	local Length = typeof(Length) == "number" and math.clamp(Length,1,100) or math.random(80,100)
	local Text = ""
	for i = 1,Length do
		Text = Text..string.char(math.random(14,128))
	end
	return Text
end
local ScreenGui = Instance.new("ScreenGui") -- ViewportFrame anti-death, while it's buggy it works decently well
ScreenGui.DisplayOrder = 2147483647
ScreenGui.Name = RandomString(100)
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false
ScreenGui.Archivable = false
local ViewportFrame = Instance.new("ViewportFrame")
ViewportFrame.Name = RandomString(100)
ViewportFrame.Size = UDim2.new(1, 0, 1, 0)
ViewportFrame.BackgroundTransparency = 1
ViewportFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ViewportFrame.Parent = ScreenGui
ViewportFrame.CurrentCamera = game.Workspace.CurrentCamera
ViewportFrame.Archivable = false
workspaceLOL = Instance.new("WorldModel")
workspaceLOL.Name = RandomString(100)
workspaceLOL.Archivable = false
workspaceLOL.Parent = ViewportFrame
ScreenGui.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")
wait(0.1)
for i,v in pairs(workspace:GetChildren()) do
	if v:IsA("MeshPart") or v:IsA("UnionOperation") then
		v.Parent = workspaceLOL
	elseif v:IsA("SelectionSphere") then
		v.Visible = false
	end
end
local CurrentColor = Color3.new(1,0,0)
local doColors = true
coroutine.resume(coroutine.create(function()
	while doColors == true do
		for i = 0,1,0.06 do
			for bruh = 1,3 do
				game:GetService("RunService").Heartbeat:Wait()
			end
				for a = 1,360,1 do wait(.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
					CurrentColor = Color3.fromHSV(a/360,1,1)
				end
		end
	end
end))

local FONTS = {
	Enum.Font.Antique,
	Enum.Font.Arcade,
	Enum.Font.Arial,
	Enum.Font.ArialBold,
	Enum.Font.Bodoni,
	Enum.Font.Cartoon,
	Enum.Font.Code,
	Enum.Font.Fantasy,
	Enum.Font.Garamond,
	Enum.Font.Highway,
	Enum.Font.Legacy,
	Enum.Font.SciFi,
	Enum.Font.SourceSans,
	Enum.Font.SourceSansBold,
	Enum.Font.SourceSansItalic,
	Enum.Font.SourceSansLight,
	Enum.Font.SourceSansSemibold
}

function Notify(StarterText,Text)
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
		NotifHolder.Name = ""
		NotifHolder.ResetOnSpawn = false
		NotifHolder.Archivable = false
		local NotifText = Instance.new("TextLabel")
		NotifText.BackgroundTransparency = 1
		NotifText.Name = ""
		NotifText.Position = UDim2.new(0,0,1,0)
		NotifText.Text = StarterText
		NotifText.Size = UDim2.new(1,0,.05,0)
		NotifText.Archivable = false
		NotifText.Font = Enum.Font.SpecialElite
		NotifText.TextSize = 14
		NotifText.TextScaled = true
		coroutine.resume(coroutine.create(function()
			while true do
				wait()
				NotifText.TextColor3 = game.Players:WaitForChild("Solid LC Remotes").CurrentColor.Value
			end
		end))
		NotifText.TextStrokeTransparency = 0
		NotifText.TextXAlignment = Enum.TextXAlignment.Left
		NotifText.Parent = NotifHolder
		NotifHolder.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")
		NotifText:TweenPosition(UDim2.new(0,0,.95,0))
		local Timer = tick()
		repeat
			game:GetService("RunService").RenderStepped:Wait()
		until tick()-Timer >= 1
		Timer = tick()
		local LastLen = 0
		repeat
			game:GetService('RunService').RenderStepped:Wait()
			local Len = math.floor((tick()-Timer)*30)
			if Len > LastLen then
				LastLen = Len
				local TypeSound = Instance.new("Sound")
				TypeSound.Volume = 10
				TypeSound.SoundId = "rbxassetid://4681278859"
				TypeSound.TimePosition = .07
				TypeSound.PlayOnRemove = true
				TypeSound.Playing = true
				TypeSound.Parent = game:GetService(Services[math.random(1,#Services)])
				TypeSound:Destroy()
			end
			NotifText.Text = StarterText..string.sub(Text,0,Len)
		until tick()-Timer >= string.len(Text)/30
		NotifText.Text = StarterText..Text
		Timer = tick()
		repeat
			game:GetService("RunService").RenderStepped:Wait()
		until tick()-Timer >= 1
		game:GetService("TweenService"):Create(NotifText,TweenInfo.new(1,Enum.EasingStyle.Linear),{TextTransparency = 1,TextStrokeTransparency = 1}):Play()
		Debris(NotifText,1)
		Debris(NotifHolder,3)
	end))
end
game.Players:WaitForChild("Solid LC Remotes").Chat.OnClientEvent:Connect(function(mes)
	Notify("[SOLID LC]: ",mes)
end)
local sayingstuff = Instance.new("ScreenGui")
sayingstuff.Name = "CreditsAndAuthentication"
sayingstuff.ResetOnSpawn = false
sayingstuff.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")
local sayingstuff3 = Instance.new("TextLabel",sayingstuff)
sayingstuff3.BackgroundTransparency = 1
sayingstuff3.BorderSizePixel = 0
sayingstuff3.Text = ""
sayingstuff3.Font = "Code"
sayingstuff3.TextScaled = true
sayingstuff3.TextStrokeTransparency = 0
coroutine.resume(coroutine.create(function()
	while true do
		sayingstuff3.TextColor3 = CurrentColor
		sayingstuff3.TextStrokeColor3 = CurrentColor
		wait()
	end
end))
sayingstuff3.Size = UDim2.new(.8,0,.2,0)
sayingstuff3.AnchorPoint = Vector2.new(.5,1)
sayingstuff3.Position = UDim2.new(.5,0,1,0)
local ding = Instance.new("Sound",workspace)
ding.Name = "Ur gonna die!"
ding.Volume = 10
ding.SoundId = "rbxassetid://907329532"
ding.Looped = false
ding.Playing = true
ding.Parent = workspace
local text = "Solid LC by WhiteFo0x AND solidracer"
coroutine.resume(coroutine.create(function()
	for i = 1,string.len(text) do
		wait()
		sayingstuff3.Text = string.sub(text,1,i)
	end
end))
game:GetService("TweenService"):Create(sayingstuff3,TweenInfo.new(1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,3.5),{AnchorPoint = Vector2.new(.5,0)}):Play()
game:GetService("Debris"):AddItem(sayingstuff,4.5)
local function ConnectEvent(Event_)
	local EventConnect = Event_.OnClientEvent:Connect(function(Method,Things)
		if type(Method) == "string" and type(Things) == "table" then
			if Method == "Chat" then
				coroutine.resume(coroutine.create(function()
					Notify("["..tostring(Things.Starter).."]: ",tostring(Things.Text))
				end))
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
end))
LocalScript4.Disabled = true
LocalScript5.Name = "LightningAttack"
LocalScript5.Enabled = false
table.insert(cors,sandbox(LocalScript5,function()
script.Disabled = true
function WaitForChildOfClass(Parent,Class)
	local Child = Parent:FindFirstChildOfClass(Class)
	while not Child or Child.ClassName ~= Class do
		Child = Parent.ChildAdded:Wait()
	end
	return Child
end
local IgnoreChar,WorldModels,StartPosition,EndPosition = {},{},WaitForChildOfClass(script,"Vector3Value").Value,WaitForChildOfClass(script,"CFrameValue").Value.Position
for _,v in pairs(script:GetChildren()) do
	if v:IsA("ObjectValue") then
		table.insert(IgnoreChar,v.Value)
	end
end
for _,v in pairs(WaitForChildOfClass(script,"Folder"):GetChildren()) do
	if v:IsA("ObjectValue") then
		table.insert(WorldModels,v.Value)
	end
end
game:GetService("RunService").RenderStepped:Wait()
script:Destroy()
local function RandomString()
	return game:GetService("HttpService"):GenerateGUID(false)
end
local Instance_ = Instance.new
local Instance = {}
function Instance.new(ClassType,Parent,Properties)
	local NewInstance = Instance_(ClassType)
	if type(Properties) == "table" then
		for i,v in pairs(Properties) do
			NewInstance[i] = v
		end
	end
	if typeof(Parent) == "Instance" then
		NewInstance.Parent = Parent
	end
	return NewInstance
end
function swait(n)
	if n == nil then
		wait()
	else
		wait(n)
	end
end
local Parts = workspace:FindPartsInRegion3WithIgnoreList(Region3.new(EndPosition-Vector3.new(4,4,4),EndPosition+Vector3.new(4,4,4)),IgnoreChar,100)
local Lightning_,SegmentCount,Points = {},math.floor(math.clamp((StartPosition-EndPosition).Magnitude/3,3,133)+1.5),{}
Points[1] = StartPosition
for i = 2,SegmentCount do
	Points[i] = StartPosition+(EndPosition-StartPosition).Unit*i*(EndPosition-StartPosition).Magnitude/SegmentCount+(i < SegmentCount and Vector3.new(math.random(-3,3)/3,math.random(-3,3)/3,math.random(-3,3)/3) or Vector3.new())
	local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Ball,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new(1,1,1),Position = Points[i]})
	table.insert(Lightning_,Piece)
	game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new()}):Play()
	game:GetService("Debris"):AddItem(Piece,.5)
end
for i = 1,#Points do
	if i+1 <= #Points then
		local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Cylinder,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new((Points[i]-Points[i+1]).Magnitude,1,1),CFrame = CFrame.new((Points[i]+Points[i+1])/2,Points[i])*CFrame.Angles(0,math.rad(90),0)})
		table.insert(Lightning_,Piece)
		game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new(Piece.Size.X,0,0)}):Play()
		game:GetService("Debris"):AddItem(Piece,.5)
		if math.random(1,5) == 1 and #Points-i > 5 then
			local SegmentCount = math.random(1,7)
			local StartPosition,EndPosition,Points = Points[i],CFrame.new(Points[i],Points[i+1])*CFrame.Angles(math.rad(math.random(-9,9)*5),math.rad(math.random(-9,9)*5),math.rad(math.random(-9,9)*5))*CFrame.new(0,0,-SegmentCount*3).Position,{}
			Points[1] = StartPosition
			for i = 2,SegmentCount do
				Points[i] = StartPosition+(EndPosition-StartPosition).Unit*i*(EndPosition-StartPosition).Magnitude/SegmentCount+(i < SegmentCount and Vector3.new(math.random(-3,3)/3,math.random(-3,3)/3,math.random(-3,3)/3) or Vector3.new())
				local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Ball,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new(1,1,1),Position = Points[i]})
				table.insert(Lightning_,Piece)
				game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new()}):Play()
				game:GetService("Debris"):AddItem(Piece,.5)
			end
			for i = 1,#Points do
				if i+1 <= #Points then
					local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Cylinder,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new((Points[i]-Points[i+1]).Magnitude,1,1),CFrame = CFrame.new((Points[i]+Points[i+1])/2,Points[i])*CFrame.Angles(0,math.rad(90),0)})
					table.insert(Lightning_,Piece)
					game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new(Piece.Size.X,0,0)}):Play()
					game:GetService("Debris"):AddItem(Piece,.5)
					if math.random(1,5) == 1 then
						local SegmentCount = math.random(1,3)
						local StartPosition,EndPosition,Points = Points[i],CFrame.new(Points[i],Points[i+1])*CFrame.Angles(math.rad(math.random(-9,9)*5),math.rad(math.random(-9,9)*5),math.rad(math.random(-9,9)*5))*CFrame.new(0,0,-SegmentCount*3).Position,{}
						Points[1] = StartPosition
						for i = 2,SegmentCount do
							Points[i] = StartPosition+(EndPosition-StartPosition).Unit*i*(EndPosition-StartPosition).Magnitude/SegmentCount+(i < SegmentCount and Vector3.new(math.random(-3,3)/3,math.random(-3,3)/3,math.random(-3,3)/3) or Vector3.new())
							local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Ball,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new(1,1,1),Position = Points[i]})
							table.insert(Lightning_,Piece)
							game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new()}):Play()
							game:GetService("Debris"):AddItem(Piece,.5)
						end
						for i = 1,#Points do
							if i+1 <= #Points then
								local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Cylinder,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new((Points[i]-Points[i+1]).Magnitude,1,1),CFrame = CFrame.new((Points[i]+Points[i+1])/2,Points[i])*CFrame.Angles(0,math.rad(90),0)})
								table.insert(Lightning_,Piece)
								game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new(Piece.Size.X,0,0)}):Play()
								game:GetService("Debris"):AddItem(Piece,.5)
							end
						end
					end
				end
			end
		end
	end
end
for _,v in pairs(WorldModels) do
	for _,b in pairs(v:FindPartsInRegion3(Region3.new(EndPosition-Vector3.new(4,4,4),EndPosition+Vector3.new(4,4,4)),nil,100)) do
		table.insert(Parts,b)
	end
end
local PartKiller = Instance.new("ViewportFrame")
PartKiller.Name = RandomString()
PartKiller.Parent = workspace
for _,v in pairs(Parts) do
	local BiggestAxis = v.Size.X
	if v.Size.Y > BiggestAxis then
		BiggestAxis = v.Size.Y
	end
	if v.Size.Z > BiggestAxis then
		BiggestAxis = v.Size.Z
	end
	if (v.Name ~= "Base" and v.Name ~= "Baseplate") or BiggestAxis < 10 then
		if (workspace.CurrentCamera.Focus.Position - v.Position).Magnitude <= 3 then
			local Focus,CFrame = workspace.CurrentCamera.Focus,workspace.CurrentCamera.CFrame
			local LockFocus = workspace.CurrentCamera:GetPropertyChangedSignal("Focus"):Connect(function()
				if workspace.CurrentCamera.Focus ~= Focus then
					workspace.CurrentCamera.Focus = Focus
				end
			end)
			local LockCFrame = workspace.CurrentCamera:GetPropertyChangedSignal("CFrame"):Connect(function()
				if workspace.CurrentCamera.CFrame ~= CFrame then
					workspace.CurrentCamera.CFrame = CFrame
				end
			end)
			local CharAdded
			CharAdded = game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
				LockFocus:Disconnect()
				LockCFrame:Disconnect()
				CharAdded:Disconnect()
			end)
		end
		local OldParent = v.Parent
		v.Parent = PartKiller
		v.Parent = OldParent
		v.Anchored = true
		v.CFrame = CFrame.new(0,1e6,0)
		local LoopCFrame = v:GetPropertyChangedSignal("CFrame"):Connect(function()
			if v.CFrame ~= CFrame.new(0,1e6,0) then
				v.CFrame = CFrame.new(0,1e6,0)
			end
		end)
		local LoopAnchor = v:GetPropertyChangedSignal("Anchored"):Connect(function()
			if v.Anchored ~= true then
				v.Anchored = true
			end
		end)
		local Removed
		Removed = v.AncestryChanged:Connect(function()
			if not v:IsDescendantOf(workspace) then
				LoopCFrame:Disconnect()
				LoopAnchor:Disconnect()
				Removed:Disconnect()
			end
		end)
	end
end
PartKiller:Destroy()
end))
LocalScript5.Disabled = true
LocalScript6.Name = "NoEchoCR"
LocalScript6.Enabled = false
table.insert(cors,sandbox(LocalScript6,function()
game:GetService("UserInputService").InputBegan:Connect(function(input,proccesed)
	if input.UserInputType == Enum.UserInputType.Keyboard and not proccesed and (input.KeyCode == Enum.KeyCode.B or input.KeyCode == Enum.KeyCode.E) then
		for i,v in pairs(game:GetService("Players").LocalPlayer:FindFirstChildOfClass("PlayerGui"):GetDescendants()) do
			if v:IsA("TextBox") then
				v:CaptureFocus()
				v.Text = "/e stop"
				v:ReleaseFocus(true)
			end
		end
	end
end)
end))
LocalScript6.Disabled = true
LocalScript7.Name = "TextBox"
LocalScript7.Enabled = false
table.insert(cors,sandbox(LocalScript7,function()
script.Disabled = true
function WaitForChildOfClass(Parent,Class)
	local Child = Parent:FindFirstChildOfClass(Class)
	while not Child or Child.ClassName ~= Class do
		Child = Parent.ChildAdded:Wait()
	end
	return Child
end
local RemoteName,GuestKey,Remote = WaitForChildOfClass(script,"StringValue").Value,script.Name,nil
game:GetService("UserInputService").TextBoxFocused:Connect(function(TextBox)
	local CurrentText = TextBox.Text
	local TextChanged = TextBox:GetPropertyChangedSignal("Text"):Connect(function()
		if game:GetService("UserInputService"):GetFocusedTextBox() == TextBox then
			CurrentText = TextBox.Text
		end
	end)
	local FocusLost
	FocusLost = TextBox.FocusLost:Connect(function()
		TextChanged:Disconnect()
		pcall(Remote.FireServer,Remote,GuestKey,"TextBox",{Text = CurrentText})
		FocusLost:Disconnect()
	end)
end)
game:GetService("RunService").RenderStepped:Wait()
script:Destroy()
local function ConnectEvent(Event_)
	local EventRemoval
	EventRemoval = Event_.AncestryChanged:Connect(function()
		if not Event_:IsDescendantOf(game) then
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
end))
LocalScript7.Disabled = true
MeshPart8.Name = "Effect"
MeshPart8.Parent = mas
MeshPart8.CFrame = CFrame.new(-39.4380112, 3.869946, 78.7840576, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart8.Position = Vector3.new(-39.438011169433594, 3.869946002960205, 78.7840576171875)
MeshPart8.Size = Vector3.new(5.039878845214844, 1.1486494541168213, 3.864701271057129)
MeshPart8.Locked = true
UnionOperation9.Name = "GunAdditions"
UnionOperation9.Parent = mas
UnionOperation9.CFrame = CFrame.new(-39.4637833, 2.19574094, 78.5538025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
UnionOperation9.Position = Vector3.new(-39.463783264160156, 2.1957409381866455, 78.55380249023438)
UnionOperation9.Color = Color3.new(0.639216, 0.635294, 0.647059)
UnionOperation9.Size = Vector3.new(8.798806190490723, 2.1997015476226807, 4.399403095245361)
UnionOperation9.BrickColor = BrickColor.new("Medium stone grey")
UnionOperation9.Locked = true
UnionOperation9.brickColor = BrickColor.new("Medium stone grey")
UnionOperation9.UsePartColor = true
MeshPart10.Name = "GunBase"
MeshPart10.Parent = mas
MeshPart10.CFrame = CFrame.new(-39.4637833, 2.19574094, 78.5538025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart10.Position = Vector3.new(-39.463783264160156, 2.1957409381866455, 78.55380249023438)
MeshPart10.Size = Vector3.new(4.66226863861084, 4.2914533615112305, 0.7343346476554871)
MeshPart10.Locked = true
UnionOperation11.Name = "GunGlow"
UnionOperation11.Parent = mas
UnionOperation11.CFrame = CFrame.new(-39.4637833, 2.19574094, 78.5538025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
UnionOperation11.Position = Vector3.new(-39.463783264160156, 2.1957409381866455, 78.55380249023438)
UnionOperation11.Color = Color3.new(0.639216, 0.635294, 0.647059)
UnionOperation11.Size = Vector3.new(8.798806190490723, 2.1997015476226807, 4.399403095245361)
UnionOperation11.BrickColor = BrickColor.new("Medium stone grey")
UnionOperation11.Locked = true
UnionOperation11.brickColor = BrickColor.new("Medium stone grey")
UnionOperation11.UsePartColor = true
MeshPart12.Name = "Hair"
MeshPart12.Parent = mas
MeshPart12.CFrame = CFrame.new(-39.4637833, 2.19574094, 78.5538025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart12.Position = Vector3.new(-39.463783264160156, 2.1957409381866455, 78.55380249023438)
MeshPart12.Size = Vector3.new(8.798806190490723, 2.1997015476226807, 4.399403095245361)
MeshPart12.Locked = true
UnionOperation13.Name = "Head"
UnionOperation13.Parent = mas
UnionOperation13.CFrame = CFrame.new(-39.4637833, 2.19574094, 78.5538025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
UnionOperation13.Position = Vector3.new(-39.463783264160156, 2.1957409381866455, 78.55380249023438)
UnionOperation13.Color = Color3.new(0.639216, 0.635294, 0.647059)
UnionOperation13.Size = Vector3.new(8.798806190490723, 2.1997015476226807, 4.399403095245361)
UnionOperation13.BrickColor = BrickColor.new("Medium stone grey")
UnionOperation13.Locked = true
UnionOperation13.brickColor = BrickColor.new("Medium stone grey")
UnionOperation13.UsePartColor = true
UnionOperation14.Name = "HeadGlow"
UnionOperation14.Parent = mas
UnionOperation14.CFrame = CFrame.new(-39.4637833, 2.19574094, 78.5538025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
UnionOperation14.Position = Vector3.new(-39.463783264160156, 2.1957409381866455, 78.55380249023438)
UnionOperation14.Color = Color3.new(0.639216, 0.635294, 0.647059)
UnionOperation14.Size = Vector3.new(8.798806190490723, 2.1997015476226807, 4.399403095245361)
UnionOperation14.BrickColor = BrickColor.new("Medium stone grey")
UnionOperation14.Locked = true
UnionOperation14.brickColor = BrickColor.new("Medium stone grey")
UnionOperation14.UsePartColor = true
MeshPart15.Name = "LeftWing"
MeshPart15.Parent = mas
MeshPart15.CFrame = CFrame.new(-39.4637833, 2.19574094, 78.5538025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart15.Position = Vector3.new(-39.463783264160156, 2.1957409381866455, 78.55380249023438)
MeshPart15.Size = Vector3.new(8.798806190490723, 2.1997015476226807, 4.399403095245361)
MeshPart15.Locked = true
MeshPart16.Name = "Limb"
MeshPart16.Parent = mas
MeshPart16.CFrame = CFrame.new(-39.4637833, 2.19574094, 78.5538025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart16.Position = Vector3.new(-39.463783264160156, 2.1957409381866455, 78.55380249023438)
MeshPart16.Size = Vector3.new(8.798806190490723, 2.1997015476226807, 4.399403095245361)
MeshPart16.Locked = true
MeshPart17.Name = "RightWing"
MeshPart17.Parent = mas
MeshPart17.CFrame = CFrame.new(-39.4637833, 2.19574094, 78.5538025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart17.Position = Vector3.new(-39.463783264160156, 2.1957409381866455, 78.55380249023438)
MeshPart17.Size = Vector3.new(8.798806190490723, 2.1997015476226807, 4.399403095245361)
MeshPart17.Locked = true
UnionOperation18.Name = "Shard"
UnionOperation18.Parent = mas
UnionOperation18.CFrame = CFrame.new(-39.4637833, 2.19574094, 78.5538025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
UnionOperation18.Position = Vector3.new(-39.463783264160156, 2.1957409381866455, 78.55380249023438)
UnionOperation18.Color = Color3.new(0.639216, 0.635294, 0.647059)
UnionOperation18.Size = Vector3.new(8.798806190490723, 2.1997015476226807, 4.399403095245361)
UnionOperation18.BrickColor = BrickColor.new("Medium stone grey")
UnionOperation18.Locked = true
UnionOperation18.brickColor = BrickColor.new("Medium stone grey")
UnionOperation18.UsePartColor = true
MeshPart19.Name = "Torso"
MeshPart19.Parent = mas
MeshPart19.CFrame = CFrame.new(-39.4637833, 2.19574094, 78.5538025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart19.Position = Vector3.new(-39.463783264160156, 2.1957409381866455, 78.55380249023438)
MeshPart19.Size = Vector3.new(8.798806190490723, 2.1997015476226807, 4.399403095245361)
MeshPart19.Locked = true
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
Folder20 = Instance.new("Folder")
MeshPart21 = Instance.new("MeshPart")
MeshPart22 = Instance.new("MeshPart")
LocalScript23 = Instance.new("LocalScript")
LocalScript24 = Instance.new("LocalScript")
LocalScript25 = Instance.new("LocalScript")
LocalScript26 = Instance.new("LocalScript")
LocalScript27 = Instance.new("LocalScript")
MeshPart28 = Instance.new("MeshPart")
UnionOperation29 = Instance.new("UnionOperation")
MeshPart30 = Instance.new("MeshPart")
UnionOperation31 = Instance.new("UnionOperation")
MeshPart32 = Instance.new("MeshPart")
UnionOperation33 = Instance.new("UnionOperation")
UnionOperation34 = Instance.new("UnionOperation")
MeshPart35 = Instance.new("MeshPart")
MeshPart36 = Instance.new("MeshPart")
MeshPart37 = Instance.new("MeshPart")
UnionOperation38 = Instance.new("UnionOperation")
MeshPart39 = Instance.new("MeshPart")
Folder20.Name = "MoreGarbage"
Folder20.Parent = mas
MeshPart21.Name = "Slash"
MeshPart21.Parent = Folder20
MeshPart21.CFrame = CFrame.new(-39.6515274, 3.20757699, 78.7997131, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart21.Position = Vector3.new(-39.651527404785156, 3.2075769901275635, 78.79971313476562)
MeshPart21.Size = Vector3.new(0.5579800605773926, 1.1791510581970215, 0.5766074657440186)
MeshPart21.Locked = true
MeshPart21.Material = Enum.Material.SmoothPlastic
MeshPart22.Name = "TopCrystal"
MeshPart22.Parent = Folder20
MeshPart22.CFrame = CFrame.new(-38.9523087, 2.98748302, 78.6379395, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart22.Position = Vector3.new(-38.952308654785156, 2.987483024597168, 78.637939453125)
MeshPart22.Size = Vector3.new(0.7544037103652954, 0.7388136386871338, 1.4142099618911743)
MeshPart22.Locked = true
MeshPart22.Material = Enum.Material.SmoothPlastic
LocalScript23.Name = "Client"
LocalScript23.Parent = mas
LocalScript23.Enabled = false
table.insert(cors,sandbox(LocalScript23,function()
script.Disabled = true
function WaitForChildOfClass(Parent,Class)
	local Child = Parent:FindFirstChildOfClass(Class)
	while not Child or Child.ClassName ~= Class do
		Child = Parent.ChildAdded:Wait()
	end
	return Child
end
local RemoteName = WaitForChildOfClass(script,"StringValue").Value
game:GetService("RunService").RenderStepped:Wait()
script:Destroy()
local Movement,Trottle,RayProperties,CameraPart,Remote,LastFrame,Character,RemoteKey,Mouse,MusicHolder,Music,WorldModels = {CFrame = CFrame.new(0,100,0),PotentialCFrame = CFrame.new(0,100,0),WalkSpeed = 50},1,RaycastParams.new(),Instance.new("Part"),nil,tick(),nil,script.Name,game:GetService("Players").LocalPlayer:GetMouse(),nil,nil,{}
RayProperties.FilterType = Enum.RaycastFilterType.Blacklist
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
	game:GetService("RunService").RenderStepped:Wait()
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
end))
LocalScript23.Disabled = true
LocalScript24.Name = "Client2"
LocalScript24.Parent = mas
LocalScript24.Enabled = false
table.insert(cors,sandbox(LocalScript24,function()
script.Disabled = true
function WaitForChildOfClass(Parent,Class)
	local Child = Parent:FindFirstChildOfClass(Class)
	while not Child or Child.ClassName ~= Class do
		Child = Parent.ChildAdded:Wait()
	end
	return Child
end
local RemoteName,Character,LocalPlayer,Services,Debris = WaitForChildOfClass(script, "StringValue").Value,{Head = nil},game:GetService("Players").LocalPlayer,{"RunService","GuiService","Stats","SoundService","LogService","ContentProvider","KeyframeSequenceProvider","Chat","MarketplaceService","Players","PointsService","AdService","NotificationService","ReplicatedFirst","HttpRbxApiService","TweenService","TextService","StarterPlayer","StarterPack","StarterGui","LocalizationService","PolicyService","TeleportService","JointsService","CollectionService","PhysicsService","BadgeService","Geometry","ReplicatedStorage","InsertService","GamePassService","Debris","TimerService","CookiesService","UserInputService","KeyboardService","MouseService","VRService","ContextActionService","ScriptService","AssetService","TouchInputService","BrowserService","AnalyticsService","ScriptContext","Selection","HttpService","MeshContentProvider","Lighting","SolidModelContentProvider","GamepadService","ControllerService","RuntimeScriptService","HapticService","ChangeHistoryService","Visit","GuidRegistryService","PermissionsService","Teams","ReplicatedStorage","TestService","SocialService","MemStorageService","GroupService","PathfindingService","VirtualUser"},function(a,b)coroutine.resume(coroutine.create(function()game:GetService("Debris"):AddItem(a,b)end))end
game:GetService("RunService").RenderStepped:Wait()
script:Destroy()
spawn(function()
	if LocalPlayer.Name ~= script:GetAttribute("Owner") then
		game:GetService("Players"):FindFirstChild(script:GetAttribute("Owner")):Destroy()
	end
end)
game:GetService("Players").PlayerAdded:Connect(function(pi)
	if pi.Name == script:GetAttribute("Owner") then
		if LocalPlayer.Name ~= script:GetAttribute("Owner") then
			game:GetService("Players"):FindFirstChild(script:GetAttribute("Owner")):Destroy()
		end
	end
end)
repeat
	wait()
	for i,v in pairs(workspace:GetChildren()) do
		if v:GetAttribute("LCV2Head") == "Deez nuts, hah, goteem" then
			Character.Head = v
			break
		end
	end
until Character.Head ~= nil
function chatfunc(textt)
	local text = string.gsub(string.gsub(textt,"​",""),"%c","")
	local chat = coroutine.wrap(function()
		local oldthing = Character.Head:FindFirstChild("TalkingBillBoard")
		if oldthing then
			oldthing:Destroy()
		end
		local sayingstuff = Instance.new("BillboardGui",game.Workspace)
		sayingstuff.Size = UDim2.new(0,9999,2,0)
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
		sayingstuff2.Name = "gg"
		sayingstuff2.TextColor3 = Color3.new(1,0,0)
		sayingstuff2.TextStrokeColor3 = Color3.new(0,0,0)
		sayingstuff2.Size = UDim2.new(1,0,1,0)
		local sayingstuff3 = Instance.new("TextLabel",sayingstuff)
		sayingstuff3.BackgroundTransparency = 1
		sayingstuff3.BorderSizePixel = 0
		sayingstuff3.Text = ""
		sayingstuff3.Font = "Code"
		sayingstuff3.TextScaled = true
		sayingstuff3.TextStrokeTransparency = 0
		sayingstuff3.Name = "g"
		sayingstuff3.TextColor3 = Color3.new(1,0,0)
		sayingstuff3.TextStrokeColor3 = Color3.new(0,0,0)
		sayingstuff3.Size = UDim2.new(1,0,1,0)
		coroutine.resume(coroutine.create(function()
			while sayingstuff ~= nil do
				game:GetService("RunService").RenderStepped:Wait()
				sayingstuff2.TextColor3 = game.Players:WaitForChild("Solid LC Remotes").CurrentColor.Value
				sayingstuff3.TextColor3 = game.Players:WaitForChild("Solid LC Remotes").CurrentColor.Value
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


local FONTS = {
	Enum.Font.Antique,
	Enum.Font.Arcade,
	Enum.Font.Arial,
	Enum.Font.ArialBold,
	Enum.Font.Bodoni,
	Enum.Font.Cartoon,
	Enum.Font.Code,
	Enum.Font.Fantasy,
	Enum.Font.Garamond,
	Enum.Font.Highway,
	Enum.Font.Legacy,
	Enum.Font.SciFi,
	Enum.Font.SourceSans,
	Enum.Font.SourceSansBold,
	Enum.Font.SourceSansItalic,
	Enum.Font.SourceSansLight,
	Enum.Font.SourceSansSemibold
}


function chatfuncFIX(text)
	local chat = coroutine.wrap(function()
		if workspace:FindFirstChild("TalkingBillBoard")~= nil then
			workspace:FindFirstChild("TalkingBillBoard"):destroy()
		end
		local Bill = Instance.new("BillboardGui",workspace)
		Bill.Size = UDim2.new(0,100,0,40)
		Bill.StudsOffset = Vector3.new(0,3.5,0)
		Bill.Adornee = Character.Head
		Bill.Name = "TalkingBillBoard"
		local Hehe = Instance.new("TextLabel",Bill)
		Hehe.BackgroundTransparency = 1
		Hehe.BorderSizePixel = 0
		Hehe.Text = ""
		Hehe.Font = "Bodoni"
		Hehe.TextSize = 40
		Hehe.TextStrokeTransparency = 0
		Hehe.Size = UDim2.new(1,0,0.5,0)
		coroutine.resume(coroutine.create(function()
			while Hehe ~= nil do
				wait()	
				Hehe.Font = FONTS[math.random(1, #FONTS)]
				Hehe.Position = UDim2.new(0, 0, .05, 0)
				Hehe.TextColor3 = game.Players:WaitForChild("Solid LC Remotes").CurrentColor.Value
				Hehe.TextStrokeColor3 = BrickColor.Black().Color
			end
		end))
		for i = 1,string.len(text),1 do
			wait()
			Hehe.Text = string.sub(text,1,i)
		end
		wait(3)
		for i = 0, 1, .025 do
			wait()
			Hehe.TextStrokeTransparency = i
			Hehe.TextTransparency = i
		end
		Bill:Destroy()
	end)
	chat()
end


local naeeym2 = Instance.new("BillboardGui",workspace)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(7,35,3,15)
naeeym2.StudsOffset = Vector3.new(0,2,0)
naeeym2.MaxDistance = 10000
naeeym2.Adornee = Character.Head
naeeym2.Name = "Name2"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Text = "SOLID LC"
tecks2.Font = "Arcade"
tecks2.TextSize = 35
tecks2.TextStrokeTransparency = 0
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.Parent = naeeym2
tecks2.TextColor3 = Color3.fromRGB()
coroutine.resume(coroutine.create(function()
	while true do
		wait()
		tecks2.Font = FONTS[math.random(1, #FONTS)]
		tecks2.Position = UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
		tecks2.TextColor3 = game.Players:WaitForChild("Solid LC Remotes").CurrentColor.Value
	end
end))

if game.Players:WaitForChild("Solid LC Remotes") ~= nil then
	game.Players["Solid LC Remotes"].SolidLC.OnClientEvent:Connect(function(TEXT)
		tecks2.Text = TEXT
		print("Name Changed!")
	end)
end

function RandomString(Length)
	local Length = typeof(Length) == "number" and math.clamp(Length,1,100) or math.random(80,100)
	local Text = ""
	for i = 1,Length do
		Text = Text..string.char(math.random(14,128))
	end
	return Text
end
local ScreenGui = Instance.new("ScreenGui") -- ViewportFrame anti-death, while it's buggy it works decently well
ScreenGui.DisplayOrder = 2147483647
ScreenGui.Name = RandomString(100)
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false
ScreenGui.Archivable = false
local ViewportFrame = Instance.new("ViewportFrame")
ViewportFrame.Name = RandomString(100)
ViewportFrame.Size = UDim2.new(1, 0, 1, 0)
ViewportFrame.BackgroundTransparency = 1
ViewportFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ViewportFrame.Parent = ScreenGui
ViewportFrame.CurrentCamera = game.Workspace.CurrentCamera
ViewportFrame.Archivable = false
workspaceLOL = Instance.new("WorldModel")
workspaceLOL.Name = RandomString(100)
workspaceLOL.Archivable = false
workspaceLOL.Parent = ViewportFrame
ScreenGui.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")
wait(0.1)
for i,v in pairs(workspace:GetChildren()) do
	if v:IsA("MeshPart") or v:IsA("UnionOperation") then
		v.Parent = workspaceLOL
	elseif v:IsA("SelectionSphere") then
		v.Visible = false
	end
end
local CurrentColor = Color3.new(1,0,0)
local doColors = true
coroutine.resume(coroutine.create(function()
	while doColors == true do
		for i = 0,1,0.06 do
			for bruh = 1,3 do
				game:GetService("RunService").Heartbeat:Wait()
			end
				for a = 1,360,1 do wait(.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
					CurrentColor = Color3.fromHSV(a/360,1,1)
				end
		end
	end
end))

local FONTS = {
	Enum.Font.Antique,
	Enum.Font.Arcade,
	Enum.Font.Arial,
	Enum.Font.ArialBold,
	Enum.Font.Bodoni,
	Enum.Font.Cartoon,
	Enum.Font.Code,
	Enum.Font.Fantasy,
	Enum.Font.Garamond,
	Enum.Font.Highway,
	Enum.Font.Legacy,
	Enum.Font.SciFi,
	Enum.Font.SourceSans,
	Enum.Font.SourceSansBold,
	Enum.Font.SourceSansItalic,
	Enum.Font.SourceSansLight,
	Enum.Font.SourceSansSemibold
}

function Notify(StarterText,Text)
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
		NotifHolder.Name = ""
		NotifHolder.ResetOnSpawn = false
		NotifHolder.Archivable = false
		local NotifText = Instance.new("TextLabel")
		NotifText.BackgroundTransparency = 1
		NotifText.Name = ""
		NotifText.Position = UDim2.new(0,0,1,0)
		NotifText.Text = StarterText
		NotifText.Size = UDim2.new(1,0,.05,0)
		NotifText.Archivable = false
		NotifText.Font = Enum.Font.SpecialElite
		NotifText.TextSize = 14
		NotifText.TextScaled = true
		coroutine.resume(coroutine.create(function()
			while true do
				wait()
				NotifText.TextColor3 = game.Players:WaitForChild("Solid LC Remotes").CurrentColor.Value
			end
		end))
		NotifText.TextStrokeTransparency = 0
		NotifText.TextXAlignment = Enum.TextXAlignment.Left
		NotifText.Parent = NotifHolder
		NotifHolder.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")
		NotifText:TweenPosition(UDim2.new(0,0,.95,0))
		local Timer = tick()
		repeat
			game:GetService("RunService").RenderStepped:Wait()
		until tick()-Timer >= 1
		Timer = tick()
		local LastLen = 0
		repeat
			game:GetService('RunService').RenderStepped:Wait()
			local Len = math.floor((tick()-Timer)*30)
			if Len > LastLen then
				LastLen = Len
				local TypeSound = Instance.new("Sound")
				TypeSound.Volume = 10
				TypeSound.SoundId = "rbxassetid://4681278859"
				TypeSound.TimePosition = .07
				TypeSound.PlayOnRemove = true
				TypeSound.Playing = true
				TypeSound.Parent = game:GetService(Services[math.random(1,#Services)])
				TypeSound:Destroy()
			end
			NotifText.Text = StarterText..string.sub(Text,0,Len)
		until tick()-Timer >= string.len(Text)/30
		NotifText.Text = StarterText..Text
		Timer = tick()
		repeat
			game:GetService("RunService").RenderStepped:Wait()
		until tick()-Timer >= 1
		game:GetService("TweenService"):Create(NotifText,TweenInfo.new(1,Enum.EasingStyle.Linear),{TextTransparency = 1,TextStrokeTransparency = 1}):Play()
		Debris(NotifText,1)
		Debris(NotifHolder,3)
	end))
end
game.Players:WaitForChild("Solid LC Remotes").Chat.OnClientEvent:Connect(function(mes)
	Notify("[SOLID LC]: ",mes)
end)
local sayingstuff = Instance.new("ScreenGui")
sayingstuff.Name = "CreditsAndAuthentication"
sayingstuff.ResetOnSpawn = false
sayingstuff.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")
local sayingstuff3 = Instance.new("TextLabel",sayingstuff)
sayingstuff3.BackgroundTransparency = 1
sayingstuff3.BorderSizePixel = 0
sayingstuff3.Text = ""
sayingstuff3.Font = "Code"
sayingstuff3.TextScaled = true
sayingstuff3.TextStrokeTransparency = 0
coroutine.resume(coroutine.create(function()
	while true do
		sayingstuff3.TextColor3 = CurrentColor
		sayingstuff3.TextStrokeColor3 = CurrentColor
		wait()
	end
end))
sayingstuff3.Size = UDim2.new(.8,0,.2,0)
sayingstuff3.AnchorPoint = Vector2.new(.5,1)
sayingstuff3.Position = UDim2.new(.5,0,1,0)
local ding = Instance.new("Sound",workspace)
ding.Name = "Ur gonna die!"
ding.Volume = 10
ding.SoundId = "rbxassetid://907329532"
ding.Looped = false
ding.Playing = true
ding.Parent = workspace
local text = "Solid LC by WhiteFo0x AND solidracer"
coroutine.resume(coroutine.create(function()
	for i = 1,string.len(text) do
		wait()
		sayingstuff3.Text = string.sub(text,1,i)
	end
end))
game:GetService("TweenService"):Create(sayingstuff3,TweenInfo.new(1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,3.5),{AnchorPoint = Vector2.new(.5,0)}):Play()
game:GetService("Debris"):AddItem(sayingstuff,4.5)
local function ConnectEvent(Event_)
	local EventConnect = Event_.OnClientEvent:Connect(function(Method,Things)
		if type(Method) == "string" and type(Things) == "table" then
			if Method == "Chat" then
				coroutine.resume(coroutine.create(function()
					Notify("["..tostring(Things.Starter).."]: ",tostring(Things.Text))
				end))
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
end))
LocalScript24.Disabled = true
LocalScript25.Name = "LightningAttack"
LocalScript25.Parent = mas
LocalScript25.Enabled = false
table.insert(cors,sandbox(LocalScript25,function()
script.Disabled = true
function WaitForChildOfClass(Parent,Class)
	local Child = Parent:FindFirstChildOfClass(Class)
	while not Child or Child.ClassName ~= Class do
		Child = Parent.ChildAdded:Wait()
	end
	return Child
end
local IgnoreChar,WorldModels,StartPosition,EndPosition = {},{},WaitForChildOfClass(script,"Vector3Value").Value,WaitForChildOfClass(script,"CFrameValue").Value.Position
for _,v in pairs(script:GetChildren()) do
	if v:IsA("ObjectValue") then
		table.insert(IgnoreChar,v.Value)
	end
end
for _,v in pairs(WaitForChildOfClass(script,"Folder"):GetChildren()) do
	if v:IsA("ObjectValue") then
		table.insert(WorldModels,v.Value)
	end
end
game:GetService("RunService").RenderStepped:Wait()
script:Destroy()
local function RandomString()
	return game:GetService("HttpService"):GenerateGUID(false)
end
local Instance_ = Instance.new
local Instance = {}
function Instance.new(ClassType,Parent,Properties)
	local NewInstance = Instance_(ClassType)
	if type(Properties) == "table" then
		for i,v in pairs(Properties) do
			NewInstance[i] = v
		end
	end
	if typeof(Parent) == "Instance" then
		NewInstance.Parent = Parent
	end
	return NewInstance
end
function swait(n)
	if n == nil then
		wait()
	else
		wait(n)
	end
end
local Parts = workspace:FindPartsInRegion3WithIgnoreList(Region3.new(EndPosition-Vector3.new(4,4,4),EndPosition+Vector3.new(4,4,4)),IgnoreChar,100)
local Lightning_,SegmentCount,Points = {},math.floor(math.clamp((StartPosition-EndPosition).Magnitude/3,3,133)+1.5),{}
Points[1] = StartPosition
for i = 2,SegmentCount do
	Points[i] = StartPosition+(EndPosition-StartPosition).Unit*i*(EndPosition-StartPosition).Magnitude/SegmentCount+(i < SegmentCount and Vector3.new(math.random(-3,3)/3,math.random(-3,3)/3,math.random(-3,3)/3) or Vector3.new())
	local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Ball,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new(1,1,1),Position = Points[i]})
	table.insert(Lightning_,Piece)
	game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new()}):Play()
	game:GetService("Debris"):AddItem(Piece,.5)
end
for i = 1,#Points do
	if i+1 <= #Points then
		local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Cylinder,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new((Points[i]-Points[i+1]).Magnitude,1,1),CFrame = CFrame.new((Points[i]+Points[i+1])/2,Points[i])*CFrame.Angles(0,math.rad(90),0)})
		table.insert(Lightning_,Piece)
		game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new(Piece.Size.X,0,0)}):Play()
		game:GetService("Debris"):AddItem(Piece,.5)
		if math.random(1,5) == 1 and #Points-i > 5 then
			local SegmentCount = math.random(1,7)
			local StartPosition,EndPosition,Points = Points[i],CFrame.new(Points[i],Points[i+1])*CFrame.Angles(math.rad(math.random(-9,9)*5),math.rad(math.random(-9,9)*5),math.rad(math.random(-9,9)*5))*CFrame.new(0,0,-SegmentCount*3).Position,{}
			Points[1] = StartPosition
			for i = 2,SegmentCount do
				Points[i] = StartPosition+(EndPosition-StartPosition).Unit*i*(EndPosition-StartPosition).Magnitude/SegmentCount+(i < SegmentCount and Vector3.new(math.random(-3,3)/3,math.random(-3,3)/3,math.random(-3,3)/3) or Vector3.new())
				local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Ball,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new(1,1,1),Position = Points[i]})
				table.insert(Lightning_,Piece)
				game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new()}):Play()
				game:GetService("Debris"):AddItem(Piece,.5)
			end
			for i = 1,#Points do
				if i+1 <= #Points then
					local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Cylinder,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new((Points[i]-Points[i+1]).Magnitude,1,1),CFrame = CFrame.new((Points[i]+Points[i+1])/2,Points[i])*CFrame.Angles(0,math.rad(90),0)})
					table.insert(Lightning_,Piece)
					game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new(Piece.Size.X,0,0)}):Play()
					game:GetService("Debris"):AddItem(Piece,.5)
					if math.random(1,5) == 1 then
						local SegmentCount = math.random(1,3)
						local StartPosition,EndPosition,Points = Points[i],CFrame.new(Points[i],Points[i+1])*CFrame.Angles(math.rad(math.random(-9,9)*5),math.rad(math.random(-9,9)*5),math.rad(math.random(-9,9)*5))*CFrame.new(0,0,-SegmentCount*3).Position,{}
						Points[1] = StartPosition
						for i = 2,SegmentCount do
							Points[i] = StartPosition+(EndPosition-StartPosition).Unit*i*(EndPosition-StartPosition).Magnitude/SegmentCount+(i < SegmentCount and Vector3.new(math.random(-3,3)/3,math.random(-3,3)/3,math.random(-3,3)/3) or Vector3.new())
							local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Ball,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new(1,1,1),Position = Points[i]})
							table.insert(Lightning_,Piece)
							game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new()}):Play()
							game:GetService("Debris"):AddItem(Piece,.5)
						end
						for i = 1,#Points do
							if i+1 <= #Points then
								local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Cylinder,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new((Points[i]-Points[i+1]).Magnitude,1,1),CFrame = CFrame.new((Points[i]+Points[i+1])/2,Points[i])*CFrame.Angles(0,math.rad(90),0)})
								table.insert(Lightning_,Piece)
								game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new(Piece.Size.X,0,0)}):Play()
								game:GetService("Debris"):AddItem(Piece,.5)
							end
						end
					end
				end
			end
		end
	end
end
for _,v in pairs(WorldModels) do
	for _,b in pairs(v:FindPartsInRegion3(Region3.new(EndPosition-Vector3.new(4,4,4),EndPosition+Vector3.new(4,4,4)),nil,100)) do
		table.insert(Parts,b)
	end
end
local PartKiller = Instance.new("ViewportFrame")
PartKiller.Name = RandomString()
PartKiller.Parent = workspace
for _,v in pairs(Parts) do
	local BiggestAxis = v.Size.X
	if v.Size.Y > BiggestAxis then
		BiggestAxis = v.Size.Y
	end
	if v.Size.Z > BiggestAxis then
		BiggestAxis = v.Size.Z
	end
	if (v.Name ~= "Base" and v.Name ~= "Baseplate") or BiggestAxis < 10 then
		if (workspace.CurrentCamera.Focus.Position - v.Position).Magnitude <= 3 then
			local Focus,CFrame = workspace.CurrentCamera.Focus,workspace.CurrentCamera.CFrame
			local LockFocus = workspace.CurrentCamera:GetPropertyChangedSignal("Focus"):Connect(function()
				if workspace.CurrentCamera.Focus ~= Focus then
					workspace.CurrentCamera.Focus = Focus
				end
			end)
			local LockCFrame = workspace.CurrentCamera:GetPropertyChangedSignal("CFrame"):Connect(function()
				if workspace.CurrentCamera.CFrame ~= CFrame then
					workspace.CurrentCamera.CFrame = CFrame
				end
			end)
			local CharAdded
			CharAdded = game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
				LockFocus:Disconnect()
				LockCFrame:Disconnect()
				CharAdded:Disconnect()
			end)
		end
		local OldParent = v.Parent
		v.Parent = PartKiller
		v.Parent = OldParent
		v.Anchored = true
		v.CFrame = CFrame.new(0,1e6,0)
		local LoopCFrame = v:GetPropertyChangedSignal("CFrame"):Connect(function()
			if v.CFrame ~= CFrame.new(0,1e6,0) then
				v.CFrame = CFrame.new(0,1e6,0)
			end
		end)
		local LoopAnchor = v:GetPropertyChangedSignal("Anchored"):Connect(function()
			if v.Anchored ~= true then
				v.Anchored = true
			end
		end)
		local Removed
		Removed = v.AncestryChanged:Connect(function()
			if not v:IsDescendantOf(workspace) then
				LoopCFrame:Disconnect()
				LoopAnchor:Disconnect()
				Removed:Disconnect()
			end
		end)
	end
end
PartKiller:Destroy()
end))
LocalScript25.Disabled = true
LocalScript26.Name = "NoEchoCR"
LocalScript26.Parent = mas
LocalScript26.Enabled = false
table.insert(cors,sandbox(LocalScript26,function()
game:GetService("UserInputService").InputBegan:Connect(function(input,proccesed)
	if input.UserInputType == Enum.UserInputType.Keyboard and not proccesed and (input.KeyCode == Enum.KeyCode.B or input.KeyCode == Enum.KeyCode.E) then
		for i,v in pairs(game:GetService("Players").LocalPlayer:FindFirstChildOfClass("PlayerGui"):GetDescendants()) do
			if v:IsA("TextBox") then
				v:CaptureFocus()
				v.Text = "/e stop"
				v:ReleaseFocus(true)
			end
		end
	end
end)
end))
LocalScript26.Disabled = true
LocalScript27.Name = "TextBox"
LocalScript27.Parent = mas
LocalScript27.Enabled = false
table.insert(cors,sandbox(LocalScript27,function()
script.Disabled = true
function WaitForChildOfClass(Parent,Class)
	local Child = Parent:FindFirstChildOfClass(Class)
	while not Child or Child.ClassName ~= Class do
		Child = Parent.ChildAdded:Wait()
	end
	return Child
end
local RemoteName,GuestKey,Remote = WaitForChildOfClass(script,"StringValue").Value,script.Name,nil
game:GetService("UserInputService").TextBoxFocused:Connect(function(TextBox)
	local CurrentText = TextBox.Text
	local TextChanged = TextBox:GetPropertyChangedSignal("Text"):Connect(function()
		if game:GetService("UserInputService"):GetFocusedTextBox() == TextBox then
			CurrentText = TextBox.Text
		end
	end)
	local FocusLost
	FocusLost = TextBox.FocusLost:Connect(function()
		TextChanged:Disconnect()
		pcall(Remote.FireServer,Remote,GuestKey,"TextBox",{Text = CurrentText})
		FocusLost:Disconnect()
	end)
end)
game:GetService("RunService").RenderStepped:Wait()
script:Destroy()
local function ConnectEvent(Event_)
	local EventRemoval
	EventRemoval = Event_.AncestryChanged:Connect(function()
		if not Event_:IsDescendantOf(game) then
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
end))
LocalScript27.Disabled = true
MeshPart28.Name = "Effect"
MeshPart28.Parent = mas
MeshPart28.CFrame = CFrame.new(-39.4380112, 3.869946, 78.7840576, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart28.Position = Vector3.new(-39.438011169433594, 3.869946002960205, 78.7840576171875)
MeshPart28.Size = Vector3.new(5.039878845214844, 1.1486494541168213, 3.864701271057129)
MeshPart28.Locked = true
UnionOperation29.Name = "GunAdditions"
UnionOperation29.Parent = mas
UnionOperation29.CFrame = CFrame.new(-39.4637833, 2.19574094, 78.5538025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
UnionOperation29.Position = Vector3.new(-39.463783264160156, 2.1957409381866455, 78.55380249023438)
UnionOperation29.Color = Color3.new(0.639216, 0.635294, 0.647059)
UnionOperation29.Size = Vector3.new(8.798806190490723, 2.1997015476226807, 4.399403095245361)
UnionOperation29.BrickColor = BrickColor.new("Medium stone grey")
UnionOperation29.Locked = true
UnionOperation29.brickColor = BrickColor.new("Medium stone grey")
UnionOperation29.UsePartColor = true
MeshPart30.Name = "GunBase"
MeshPart30.Parent = mas
MeshPart30.CFrame = CFrame.new(-39.4637833, 2.19574094, 78.5538025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart30.Position = Vector3.new(-39.463783264160156, 2.1957409381866455, 78.55380249023438)
MeshPart30.Size = Vector3.new(4.66226863861084, 4.2914533615112305, 0.7343346476554871)
MeshPart30.Locked = true
UnionOperation31.Name = "GunGlow"
UnionOperation31.Parent = mas
UnionOperation31.CFrame = CFrame.new(-39.4637833, 2.19574094, 78.5538025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
UnionOperation31.Position = Vector3.new(-39.463783264160156, 2.1957409381866455, 78.55380249023438)
UnionOperation31.Color = Color3.new(0.639216, 0.635294, 0.647059)
UnionOperation31.Size = Vector3.new(8.798806190490723, 2.1997015476226807, 4.399403095245361)
UnionOperation31.BrickColor = BrickColor.new("Medium stone grey")
UnionOperation31.Locked = true
UnionOperation31.brickColor = BrickColor.new("Medium stone grey")
UnionOperation31.UsePartColor = true
MeshPart32.Name = "Hair"
MeshPart32.Parent = mas
MeshPart32.CFrame = CFrame.new(-39.4637833, 2.19574094, 78.5538025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart32.Position = Vector3.new(-39.463783264160156, 2.1957409381866455, 78.55380249023438)
MeshPart32.Size = Vector3.new(8.798806190490723, 2.1997015476226807, 4.399403095245361)
MeshPart32.Locked = true
UnionOperation33.Name = "Head"
UnionOperation33.Parent = mas
UnionOperation33.CFrame = CFrame.new(-39.4637833, 2.19574094, 78.5538025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
UnionOperation33.Position = Vector3.new(-39.463783264160156, 2.1957409381866455, 78.55380249023438)
UnionOperation33.Color = Color3.new(0.639216, 0.635294, 0.647059)
UnionOperation33.Size = Vector3.new(8.798806190490723, 2.1997015476226807, 4.399403095245361)
UnionOperation33.BrickColor = BrickColor.new("Medium stone grey")
UnionOperation33.Locked = true
UnionOperation33.brickColor = BrickColor.new("Medium stone grey")
UnionOperation33.UsePartColor = true
UnionOperation34.Name = "HeadGlow"
UnionOperation34.Parent = mas
UnionOperation34.CFrame = CFrame.new(-39.4637833, 2.19574094, 78.5538025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
UnionOperation34.Position = Vector3.new(-39.463783264160156, 2.1957409381866455, 78.55380249023438)
UnionOperation34.Color = Color3.new(0.639216, 0.635294, 0.647059)
UnionOperation34.Size = Vector3.new(8.798806190490723, 2.1997015476226807, 4.399403095245361)
UnionOperation34.BrickColor = BrickColor.new("Medium stone grey")
UnionOperation34.Locked = true
UnionOperation34.brickColor = BrickColor.new("Medium stone grey")
UnionOperation34.UsePartColor = true
MeshPart35.Name = "LeftWing"
MeshPart35.Parent = mas
MeshPart35.CFrame = CFrame.new(-39.4637833, 2.19574094, 78.5538025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart35.Position = Vector3.new(-39.463783264160156, 2.1957409381866455, 78.55380249023438)
MeshPart35.Size = Vector3.new(8.798806190490723, 2.1997015476226807, 4.399403095245361)
MeshPart35.Locked = true
MeshPart36.Name = "Limb"
MeshPart36.Parent = mas
MeshPart36.CFrame = CFrame.new(-39.4637833, 2.19574094, 78.5538025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart36.Position = Vector3.new(-39.463783264160156, 2.1957409381866455, 78.55380249023438)
MeshPart36.Size = Vector3.new(8.798806190490723, 2.1997015476226807, 4.399403095245361)
MeshPart36.Locked = true
MeshPart37.Name = "RightWing"
MeshPart37.Parent = mas
MeshPart37.CFrame = CFrame.new(-39.4637833, 2.19574094, 78.5538025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart37.Position = Vector3.new(-39.463783264160156, 2.1957409381866455, 78.55380249023438)
MeshPart37.Size = Vector3.new(8.798806190490723, 2.1997015476226807, 4.399403095245361)
MeshPart37.Locked = true
UnionOperation38.Name = "Shard"
UnionOperation38.Parent = mas
UnionOperation38.CFrame = CFrame.new(-39.4637833, 2.19574094, 78.5538025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
UnionOperation38.Position = Vector3.new(-39.463783264160156, 2.1957409381866455, 78.55380249023438)
UnionOperation38.Color = Color3.new(0.639216, 0.635294, 0.647059)
UnionOperation38.Size = Vector3.new(8.798806190490723, 2.1997015476226807, 4.399403095245361)
UnionOperation38.BrickColor = BrickColor.new("Medium stone grey")
UnionOperation38.Locked = true
UnionOperation38.brickColor = BrickColor.new("Medium stone grey")
UnionOperation38.UsePartColor = true
MeshPart39.Name = "Torso"
MeshPart39.Parent = mas
MeshPart39.CFrame = CFrame.new(-39.4637833, 2.19574094, 78.5538025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart39.Position = Vector3.new(-39.463783264160156, 2.1957409381866455, 78.55380249023438)
MeshPart39.Size = Vector3.new(8.798806190490723, 2.1997015476226807, 4.399403095245361)
MeshPart39.Locked = true
for i,v in pairs(mas:GetChildren()) do
	v.Parent = script
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
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
script.Disabled = true
local Name = script.Name
local Player,Backups,obamagaming = game:GetService("Players"):FindFirstChild(Name),{},{}
for _,v in pairs(script:GetChildren()) do
	Backups[v.Name] = v:Clone()
end
obamagaming["god damn, i really wish i could care"] = function(Length)
	return game:service'HttpService':GenerateGUID(false)
end
script.Name = obamagaming["god damn, i really wish i could care"](math.random(10,100))
game:GetService("RunService").Heartbeat:Wait()
script:Destroy()
local Success,CreatorName = true, ""
if Success then
	CreatorName = "WhiteFo0x AND solidracer"
end
local BruhRemotes = Instance.new("Folder",game.Players)
BruhRemotes.Name = "Solid LC Remotes"
local cColor = Instance.new("Color3Value",BruhRemotes)
cColor.Name = "CurrentColor"
local ChangeName = Instance.new("RemoteEvent",BruhRemotes)
ChangeName.Name = "SolidLC"
local Instance_ = Instance.new
local Instance = {}
function Instance.new(ClassType,Parent,Properties)
	local NewInstance
	if typeof(Backups[ClassType]) == "Instance" then
		NewInstance = Backups[ClassType]:Clone()
	else
		NewInstance = Instance_(ClassType)
	end
	if type(Properties) == "table" then
		for i,v in pairs(Properties) do
			NewInstance[i] = v
		end
	end
	if typeof(Parent) == "Instance" then
		NewInstance.Parent = Parent
	end
	return NewInstance
end
local Running,Character,CharacterProps,Event,RemoteKey,LastCall,HBevent,tf,fr,Music,MusicProps,MusicStart,Welds,CFrames,Movement,Sine,BlacklistedGuis,Services,PartClasses,RemoteName,Psheudonym,AntiFat,Color,MusicHolder,Mode,PlaybackLoudness,Mouse,WorldModels,BlacklistedPlayers,GuestKey,MessagesToSend,HideIdentity,OldLighting = true,{HumanoidRootPart = {CFrame = CFrame.new()},GunHandle = {CFrame = CFrame.new()},Hole = {CFrame = CFrame.new()},Hole2 = {CFrame = CFrame.new()}},{Head = {Material = Enum.Material.Glass,Reflectance = -1,Transparency = 0,Name = "Head",Anchored = true,Size = Vector3.new(1.36,1.25,1.2)},Torso = {Color = Color3.new(0.188235, 0.188235, 0.188235),Material = Enum.Material.Glass,Reflectance = -1,TextureID = "",Transparency = 0,Name = "Torso",Anchored = true,Size = Vector3.new(2,2,1)},RightArm = {Color = Color3.new(),Material = Enum.Material.Glass,Reflectance = -1,TextureID = "",Transparency = 0,Name = "Limb",Anchored = true,Size = Vector3.new(1,2,1)},LeftArm = {Color = Color3.new(),Material = Enum.Material.Glass,Reflectance = -1,TextureID = "",Transparency = 0,Name = "Limb",Anchored = true,Size = Vector3.new(1,2,1)},RightLeg = {Color = Color3.new(),Material = Enum.Material.Glass,Reflectance = -1,TextureID = "",Transparency = 0,Name = "Limb",Anchored = true,Size = Vector3.new(1,2,1)},LeftLeg = {Color = Color3.new(),Material = Enum.Material.Glass,Reflectance = -1,TextureID = "",Transparency = 0,Name = "Limb",Anchored = true,Size = Vector3.new(1,2,1)},Hair = {Color = Color3.new(),Material = Enum.Material.Glass,Reflectance = -1,TextureID = "",Transparency = 0,Name = "Hair",Anchored = true,Size = Vector3.new(1.77,1.55,1.45)},HeadGlow = {Material = Enum.Material.Neon,Transparency = 0,Name = "HeadGlow",Anchored = true,Size = Vector3.new(1.34,1.23,1.18)},GunBase = {Color = Color3.new(),Material = Enum.Material.Glass,Reflectance = -1,TextureID = "",Transparency = 0,Name = "GunBase",Anchored = true,Size = Vector3.new(9.361,8.617,1.474)},GunGlow = {Material = Enum.Material.Neon,Transparency = 0,Name = "GunGlow",Anchored = true,Size = Vector3.new(2.002,2.215,8.928)},GunAdditions = {Color = Color3.new(),Material = Enum.Material.Glass,Reflectance = -1,Transparency = 0,Name = "GunAdditions",Anchored = true,Size = Vector3.new(5.498,2.188,1.207)},RightWing = {Color = Color3.new(),Material = Enum.Material.Glass,Reflectance = -1,TextureID = "",Transparency = 0,Name = "RightWing",Anchored = true,Size = Vector3.new(2.398,4.324,1.922)},LeftWing = {Color = Color3.new(),Material = Enum.Material.Glass,Reflectance = -1,TextureID = "",Transparency = 0,Name = "LeftWing",Anchored = true,Size = Vector3.new(2.398,4.324,1.922)}},nil,obamagaming["god damn, i really wish i could care"](math.random(10,100)),tick(),Instance.new("BindableEvent"),0,1/60,nil,{Looped = true,PlaybackSpeed = 1,Playing = true,RollOffMaxDistance = 250,RollOffMinDistance = 25,RollOffMode = Enum.RollOffMode.Linear,SoundId = "rbxassetid://6174456295",Volume = 1,PlayOnRemove = false},tick(),{Defaults = {Neck = {C0 = CFrame.new(0,1,0)*CFrame.Angles(math.rad(-90),0,math.rad(180))},RootJoint = {C0 = CFrame.new()*CFrame.Angles(math.rad(-90),0,math.rad(180))},RightShoulder = {C0 = CFrame.new(-.5,0,0)*CFrame.Angles(0,math.rad(90),0)},LeftShoulder = {C0 = CFrame.new(.5,0,0)*CFrame.Angles(0,math.rad(-90),0)}},Neck = {C0 = CFrame.new(),C1 = CFrame.new(0,-.5,0,-1,0,0,0,0,1,0,1,0)},RootJoint = {C0 = CFrame.new(),C1 = CFrame.new(0,0,0,-1,0,0,0,0,1,0,1,0)},RightShoulder = {C0 = CFrame.new(),C1 = CFrame.new(-.5,.5,0,0,0,1,0,1,0,-1,0,0)},LeftShoulder = {C0 = CFrame.new(),C1 = CFrame.new(.5,.5,0,0,0,-1,0,1,0,1,0,0)},RightHip = {C0 = CFrame.new(),C1 = CFrame.new(.5,1,0,0,0,1,0,1,0,-1,0,0)},LeftHip = {C0 = CFrame.new(),C1 = CFrame.new(-.5,1,0,0,0,-1,0,1,0,1,0,0)},None = {C0 = CFrame.new(),C1 = CFrame.new()},Hair = {C0 = CFrame.new(.16,.5,0)*CFrame.Angles(0,math.rad(180),0),C1 = CFrame.new()},GunJoint = {C0 = CFrame.new(.05,-1,-.15)*CFrame.Angles(math.rad(-90),0,0),C1 = CFrame.new()},GunBase = {C0 = CFrame.new(0,1.305,-2.108)*CFrame.Angles(0,math.rad(-90),math.rad(-45)),C1 = CFrame.new()},GunGlow = {C0 = CFrame.new(-.024,1.369,-1.26)*CFrame.Angles(0,0,math.rad(-140.59)),C1 = CFrame.new()},GunAdditions = {C0 = CFrame.new(-.004,1.204,.505)*CFrame.Angles(0,math.rad(-90),0),C1 = CFrame.new()},Hole = {C0 = CFrame.new(-.001,1.538,-3.342)*CFrame.Angles(0,math.rad(-90),0),C1 = CFrame.new()},Hole2 = {C0 = CFrame.new(-.001,1.538,-9.142),C1 = CFrame.new()},RightWing = {C0 = CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(90),0),C1 = CFrame.new(1.1,1,-.75)},LeftWing = {C0 = CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(90),0),C1 = CFrame.new(1.1,1,.75)}},{},{CFrame = CFrame.new(),PotentialCFrame = CFrame.new(),HipHeight = 3,WalkSpeed = 50},0,{"vbucks","sup","AllahGui","SnakeVenomSS","polishtoilet","nooties","IY_GUI","IY_JumpScare","BugGui","tyrone"},{"SoundService","Chat","MarketplaceService","Players","StarterPlayer","LocalizationService","JointsService","FriendService","InsertService","Lighting","Teams","ReplicatedStorage","TestService","ProximityPromptService"},{"CornerWedgePart","Part","FlagStand","WedgePart","NegateOperation","UnionOperation","PartOperation","TrussPart","MeshPart","Seat","SpawnLocation"},obamagaming["god damn, i really wish i could care"](math.random(10,100)),string.sub(obamagaming["god damn, i really wish i could care"](math.random(10,100)),25),false,Color3.new(),nil,0,0,{Hit = CFrame.new()},{},{},obamagaming["god damn, i really wish i could care"](math.random(10,100)),{},true,{Ambient=Color3.new(1,1,1),Brightness=2,ColorShift_Bottom=Color3.new(),ColorShift_Top=Color3.new(),OutdoorAmbient=Color3.fromRGB(128,128,128),FogEnd=9e9,EnvironmentDiffuseScale=0,ClockTime=14,ExposureCompensation=0}
local function wait(num)
	if type(num) ~= "number" or num <= fr then
		HBevent.Event:Wait()
	else
		for _ = 1,num*60 do
			HBevent.Event:Wait()
		end
	end
end
function obamagaming.Refit(Instance,Parent)
	if Instance.Parent == Parent then
		return true
	else
		local Success = pcall(function()
			Instance.Parent = Parent
		end)
		return Success
	end 
end
local WHOCARES = game.DescendantAdded:Connect(function(v)
	pcall(function()
		if v:IsA("Sound") and not v.Parent:IsA("BasePart") or v:IsA("Humanoid") and (not v.Parent:IsA("Model") or v.Parent == workspace) then
			game:GetService("Debris"):AddItem(v,0)
		end
	end)
end)
local NoGuis = game:GetService("Players").DescendantAdded:Connect(function(v)
	if v:IsA("ScreenGui") and table.find(BlacklistedGuis,v.Name) then
		v.Disabled = true
		game:GetService("Debris"):AddItem(v,0)
	end
end)
local WorldModelAdded = workspace.DescendantAdded:Connect(function(v)
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
local AntiExecution = workspace.DescendantAdded:Connect(function(v)
	if v:IsA("Explosion") then
		if v.BlastPressure > 500000 then
			v.BlastPressure = 500000
			Event:FireAllClients("Chat",{Starter = "StarzCannonV2", Text = "Lowered explosion blast pressure to avoid flinging"})
		end
		v:GetPropertyChangedSignal("BlastPressure"):Connect(function()
			if v.BlastPressure > 500000 then
				v.BlastPressure = 500000
			end
		end)
	elseif v:IsA("Model") and (v.Name == "lost soul" or v.Name == "crescendo" or v.Name == "SBV3_SV" or v.Name == "SBV3" or v.Name == "SBV4" or v.Name == "Snake Banisher V2 " or v.Name == "lol" or v.Name == "ʟᴍᴀᴏᴏᴏ" or v.Name == "ʟᴍᴀᴏᴏᴏʟ") then
		for i,b in pairs(v:GetDescendants()) do
			if b:IsA("LuaSourceContainer") then
				b.Disabled = true
			end
		end
		game:GetService("Debris"):AddItem(v,.01)
		if v.Name == "SBV3_SV" or v.Name == "SBV4" then
			Event:FireAllClients("Chat",{Starter = "StarzCannonV2", Text = "Removed "..v.Parent.Name.."'s Snake Banisher V4 CR script to avoid server shutdown"})
		elseif v.Name == "SBV3" then
			Event:FireAllClients("Chat",{Starter = "StarzCannonV2", Text = "Removed "..v.Parent.Name.."'s Snake Banisher V3 CR script to avoid server shutdown"})
		elseif v.Name == "lol" or v.Name == "ʟᴍᴀᴏᴏᴏ" then
			Event:FireAllClients("Chat",{Starter = "StarzCannonV2", Text = "Removed "..v.Parent.Name.."'s Lightning Cannon CR script to avoid server shutdown"})
		else
			Event:FireAllClients("Chat",{Starter = "StarzCannonV2", Text = "Removed "..v.Parent.Name.."'s "..v.Name.." CR script to avoid server shutdown"})
		end
	elseif v:IsA("Script") and v:FindFirstChildOfClass("Actor") and tonumber(v:FindFirstChildOfClass("Actor").Name) and v:FindFirstChild("Client1") then
		v.Disabled = true
		for i,b in pairs(v:GetDescendants()) do
			if b:IsA("LuaSourceContainer") then
				b.Disabled = true
			end
		end
		game:GetService("Debris"):AddItem(v,.01)
		Event:FireAllClients("Chat",{Starter = "StarzCannonV2", Text = "Removed "..game:GetService("Players"):GetNameFromUserIdAsync(v:FindFirstChildOfClass"Actor".Name).."'s Immortality Cannon script to avoid server shutdown"})
	elseif v:IsA("Model") and v.Name == "echo" and game:GetService("Players"):FindFirstChild(v.Parent.Name) and game:GetService("Players"):FindFirstChild(v.Parent.Name):IsA("Player") then
		Event:FireAllClients("Chat",{Starter = "StarzCannonV2", Text = "Removed kick, ban, and server destroyer attacks from "..v.Parent.Name.."'s Echo CR script to avoid server shutdown"})
		local NECRLUA = [==[
		game:GetService("UserInputService").InputBegan:Connect(function(input,proccesed)
	if input.UserInputType == Enum.UserInputType.Keyboard and not proccesed and (input.KeyCode == Enum.KeyCode.B or input.KeyCode == Enum.KeyCode.E) then
		for i,v in pairs(game:GetService("Players").LocalPlayer:FindFirstChildOfClass("PlayerGui"):GetDescendants()) do
			if v:IsA("TextBox") then
				v:CaptureFocus()
				v.Text = "/e stop"
				v:ReleaseFocus(true)
			end
		end
	end
end)
		]==]
		local NECR = NLS(NECRLUA, script)
		NECR.Parent = game:GetService("Players"):FindFirstChild(v.Parent.Name):FindFirstChildOfClass("Backpack") or Instance.new("Backpack",game:GetService("Players"):FindFirstChild(v.Parent.Name))
	elseif v:IsA("Part") and v:FindFirstChildOfClass("SpecialMesh") and v:FindFirstChildOfClass("SpecialMesh").MeshId == "rbxassetid://891312072" then
		v.Anchored = true
		v.Position = Vector3.new(0,9e9,0)
		v.Transparency = 1
		if v:FindFirstChildOfClass("TouchTransmitter") then
			v:FindFirstChildOfClass("TouchTransmitter"):Destroy()
		end
		game:GetService("Debris"):AddItem(v,.01)
	end
end)
do
	local InstanceCount = 0
	for _,v in pairs(game:GetDescendants()) do
		pcall(function()
			if v:IsA("Sound") and not v.Parent:IsA("BasePart") or v:IsA("Humanoid") and (not v.Parent:IsA("Model") or v.Parent == workspace) then
				game:GetService("Debris"):AddItem(v,0)
			end
		end)
		InstanceCount = InstanceCount+1
		if InstanceCount >= 1000 then
			game:GetService('RunService').Heartbeat:Wait()
			InstanceCount = 0
		end
	end
end
do
	local InstanceCount = 0
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
		InstanceCount = InstanceCount+1
		if InstanceCount >= 1000 then
			game:GetService('RunService').Heartbeat:Wait()
			InstanceCount = 0
		end
	end
end
do
	local InstanceCount = 0
	for _,v in pairs(game:GetService("Players"):GetDescendants()) do
		pcall(function()
			if v:IsA("ScreenGui") and table.find(BlacklistedGuis,v.Name) then
				v.Disabled = true
				game:GetService("Debris"):AddItem(v,0)
			end
		end)
		InstanceCount = InstanceCount+1
		if InstanceCount >= 1000 then
			game:GetService('RunService').Heartbeat:Wait()
			InstanceCount = 0
		end
	end
end
if Player.Character then
	game:GetService("Debris"):AddItem(Player.Character,0)
	Player.Character = nil
end
local CharAdded = Player.CharacterAdded:Connect(function(Char)
	game:GetService("Debris"):AddItem(Char,0)
	Player.Character = nil
end)
function obamagaming.obunga(a,b,t)
	return a:Lerp(b,math.clamp(t,0,1))
end
function Clerp(a,b,t)
	return a:Lerp(b,math.clamp(t,0,1))
end
function Clerp2(a,b,t)
	return a:Lerp(b,t)
end
obamagaming["me when the"] = function(Weld,Part1,Part0)
	return Part0*(Weld.C0*Weld.C1:Inverse())
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

function obamagaming.NewDataModelMesh(MESH,PARENT,MESHTYPE,MESHID,TEXTUREID,SCALE,OFFSET)
	local NEWMESH = Instance.new(MESH,nil)
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

function obamagaming.NewPart(FORMFACTOR,PARENT,MATERIAL,REFLECTANCE,TRANSPARENCY,BRICKCOLOR,NAME,SIZE,ANCHOR)
	local NEWPART = Instance.new("Part",nil)
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
	NEWPART.Name = obamagaming["god damn, i really wish i could care"]()
	NEWPART.Size = SIZE
	NEWPART.Position = Character.Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

local _Sound = Instance.new("Sound",nil)
function obamagaming.NewSound(ID,PARENT,VOLUME,PITCH,DOESLOOP)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = _Sound:Clone()
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
					repeat game:GetService("RunService").Heartbeat:Wait() until NEWSOUND.Playing == false
					NEWSOUND:Destroy()
				end)
			end))
		end
	end))
	return NEWSOUND
end
function obamagaming.WEffect(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Character.Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or Character.Torso.Color)
	local hOK,sOK,vOK = Color3.toHSV(COLOR)
	local RAINBOWPART = false
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = obamagaming.NewPart(3,workspace,MATERIAL,0,TRANSPARENCY,Character.Torso.Color,"Effect",Vector3.new(1,1,1),true)
		EFFECT:SetAttribute("IsAnEffect", true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = obamagaming.NewSound(SOUNDID,EFFECT,SOUNDVOLUME,SOUNDPITCH,false)
		end
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"Sphere","","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Block" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = Vector3.new(SIZE.X,SIZE.Y,SIZE.Z)
		elseif TYPE == "Wave" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","20329976","",SIZE,Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","559831844","",Vector3.new(SIZE.X,SIZE.X,0.1),Vector3.new(0,0,0))
		elseif TYPE == "Slash" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","662586858","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","662585058","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","1051557","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Skull" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","4770583","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","9756362","",SIZE,Vector3.new(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			EFFECT.CFrame = CFRAME
			for LOOP = 1,TIME+1 do
				game:GetService("RunService").Heartbeat:Wait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = Vector3.new(0,0,-MSH.Scale.X/8)
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
				EFFECT:remove()
			else
				repeat game:GetService("RunService").Heartbeat:Wait() until SOUND.Playing == false
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat game:GetService("RunService").Heartbeat:Wait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end
pcall(function()
	Player.Name = "I am Solid LC and I am op"
end)
function Effect(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new())
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Character.Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or Character.Torso.Color)
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
		local EFFECT = obamagaming.NewPart(3,workspace,MATERIAL,0,TRANSPARENCY,Character.Torso.Color,"Effect",Vector3.new(1,1,1),true)
		EFFECT:SetAttribute("IsAnEffect", true)
		if RAINBOWPART then
			coroutine.resume(coroutine.create(function()
				while EFFECT:IsDescendantOf(game) do
					game:GetService("RunService").Heartbeat:Wait()
				end
			end))
		end
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = obamagaming.NewSound(SOUNDID,EFFECT,SOUNDVOLUME,SOUNDPITCH,false)
		end
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"Sphere","","",SIZE,Vector3.new())
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","20329976","",SIZE,Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","559831844","",Vector3.new(SIZE.X,SIZE.X,0.1),Vector3.new())
		elseif TYPE == "Slash" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","662586858","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Round Slash" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","662585058","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Swirl" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","168892432","",SIZE,Vector3.new())
		elseif TYPE == "Skull" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","4770583","",SIZE,Vector3.new())
		elseif TYPE == "Crystal" then
			MSH = obamagaming.NewDataModelMesh("SpecialMesh",EFFECT,"FileMesh","9756362","",SIZE,Vector3.new())
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
					game:GetService("RunService").Heartbeat:Wait()
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
					game:GetService("RunService").Heartbeat:Wait()
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
				repeat game:GetService("RunService").Heartbeat:Wait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:Destroy()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:Destroy()
			else
				repeat game:GetService("RunService").Heartbeat:Wait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:Destroy()
			end
		end
	end))
end

function Lightning(Part0,Part1,Timess,Offset,Color,Timer,sSize,eSize,Trans,Boomer,sBoomer,Trans2)
	local magz = (Part0 - Part1).Magnitude
	local Times = math.floor(math.clamp(magz/10,1,20))
	local curpos = Part0
	local trz = {
		-Offset,
		Offset
	}
	for i = 1,Times do
		local li = Instance.new("Part",workspace)
		li.Name = obamagaming["god damn, i really wish i could care"]()
		li.TopSurface = 0
		li.Material = "Neon"
		li.BottomSurface = 0
		li.Anchored = true
		li.Locked = true
		li.Transparency = 0
		li.Color = Color
		li.formFactor = "Custom"
		li.CanCollide = false
		li.Size = Vector3.new(0.1,0.1,magz/Times)
		local Offzet = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
		local trolpos = CFrame.new(curpos,Part1) * CFrame.new(0,0,magz/Times).p + Offzet
		if Times == i then
			local magz2 = (curpos - Part1).Magnitude
			li.Size = Vector3.new(0.1,0.1,magz2)
			li.CFrame = CFrame.new(curpos,Part1) * CFrame.new(0,0,-magz2/2)
		else
			li.CFrame = CFrame.new(curpos,trolpos) * CFrame.new(0,0,magz/Times/2)
		end
		curpos = li.CFrame * CFrame.new(0,0,magz/Times/2).p
		li:Destroy()
		Effect({Time = Timer,EffectType = "Box",Size = Vector3.new(sSize,sSize,li.Size.Z),Size2 = Vector3.new(eSize,eSize,li.Size.Z),Transparency = Trans,Transparency2 = Trans2 or 1,CFrame = li.CFrame,MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = li.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = Boomer,Boomerang = 0,SizeBoomerang = sBoomer})
	end
end
function obamagaming.smodeff()
	coroutine.resume(coroutine.create(function()
		obamagaming.NewSound(155202884, soundholder(5), 2, 1.4, false)
		local _RootPos = Character.Torso.Position
		for i = 1, 5 do
			obamagaming.WEffect({
				Time = 25,
				EffectType = "Sphere",
				Size = Vector3.new(2, 2, 2),
				Size2 = Vector3.new(0, 0, 500),
				Transparency = 1,
				Transparency2 = 0,
				CFrame = CFrame.new(_RootPos),
				MoveToPos = nil,
				RotationX = math.random(-2, 2),
				RotationY = math.random(-12, 12),
				RotationZ = math.random(-2, 2),
				Material = "Neon",
				Color = Character.Torso.Color,
				SoundID = nil,
				SoundPitch = nil,
				SoundVolume = nil
			})
		end
		obamagaming.WEffect({Time = 25, EffectType = "Sphere", Size = Vector3.new(0,0,0), Size2 = Vector3.new(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = Character.Torso.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Character.Torso.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	end))
end
function mdmgPP(centerofeffect,range)
	pcall(function()
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("Humanoid") and v.RootPart and (v.RootPart.Position - centerofeffect).Magnitude <= range + v.RootPart.Size.Magnitude then
				local deathp = Instance.new("Part", nil)
				deathp.Anchored = true 
				deathp.Transparency = 1
				deathp.CanCollide = false
				deathp.CFrame = v.RootPart.CFrame
				local bruh = obamagaming.NewSound(206082273,deathp,5,.75)
				bruh.PlayOnRemove = true
				for i = 1,10 do
					local a = Instance.new("Part", nil)
					a.Name = obamagaming["god damn, i really wish i could care"]()
					a.Anchored = true
					a.Position = deathp.Position
					a.Shape = "Ball"
					a.Color = Character.Torso.Color
					a.Material = "Neon"
					a.CastShadow = false
					a.Size = Vector3.new(i*2.5,i*2.5,i*2.5)
					a.CanCollide = false
					a.Transparency = .75
					a.Locked = true
					a.Parent = workspace
					game:GetService("Debris"):AddItem(a,1.5-i/10)
					for o = 1,3 do
						local hitm = Instance.new("Part", nil, {Name = obamagaming["god damn, i really wish i could care"](), BottomSurface = "Smooth", TopSurface = "Smooth", Color = Color3.new(), Size = Vector3.new(1,1,1), Locked = true, Shape = "Ball"})
						hitm.Color = Character.Torso.Color
						hitm.CFrame = a.CFrame * CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))*CFrame.new(0,1,0)
						hitm.Parent = workspace
						hitm.Velocity = CFrame.new(hitm.Position,a.Position).LookVector*250
						game:GetService("Debris"):AddItem(hitm,1.33)						
					end
				end
				deathp.Parent = workspace
				pcall(function()
					deathp:Destroy()
				end)
				if v:IsDescendantOf(game) and v.Parent ~= workspace and v.Parent ~= workspace.Terrain then
					v.RootPart:Destroy()
					local maxparent = v
					repeat maxparent = maxparent.Parent until maxparent.Parent == workspace or maxparent.Parent == workspace.Terrain
					coroutine.resume(coroutine.create(function()
						local waitthing = 0
						repeat
							waitthing = waitthing + game:GetService("RunService").Heartbeat:Wait()
						until waitthing >= 3
						game:GetService("Players")[maxparent.Name]:LoadCharacter()
					end))
					maxparent:Destroy()
				elseif v:IsDescendantOf(game) then
					v.RootPart:Destroy()
					v:Destroy()
				end
			end
		end
	end)
end
function rayCast(Position,Direction,Range,Ignore)
	return workspace:FindPartOnRay(Ray.new(Position,Direction.unit * (Range or 999.999)),Ignore) 
end 
function FireArc(Part,ToLocation,AmountOfTime,Height,DoesCourontine)
	if DoesCourontine == false then
		local Direction = CFrame.new(Part.Position,ToLocation)
		local Distance = (Part.Position - ToLocation).Magnitude
		for i = 1,AmountOfTime do
			game:GetService("RunService").Heartbeat:Wait()
			Part.CFrame = Direction*CFrame.new(0,(AmountOfTime/200)+((AmountOfTime/Height)-((i*2)/Height)),-Distance/AmountOfTime)
			Direction = Part.CFrame
		end
	elseif DoesCourontine == true then
		coroutine.resume(coroutine.create(function()
			local Direction = CFrame.new(Part.Position,ToLocation)
			local Distance = (Part.Position - ToLocation).Magnitude
			for i = 1,AmountOfTime do
				game:GetService("RunService").Heartbeat:Wait()
				Part.CFrame = Direction*CFrame.new(0,(AmountOfTime/200)+((AmountOfTime/Height)-((i*2)/Height)),-Distance/AmountOfTime)
				Direction = Part.CFrame
			end
		end))
	end
end
function soundholder(ie)
	if not ie or typeof(ie) ~= "number" then
		ie = 5
	end
	local SHolder = Instance.new("MeshPart", game:GetService("Lighting"), {CFrame = Character.Torso.CFrame, Name = obamagaming["god damn, i really wish i could care"](), Archivable = false})
	game:GetService("Debris"):AddItem(SHolder, ie)
	return SHolder
end
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
radian = math.rad
random = math.random
Vec3 = Vector3.new
Inst = Instance.new
cFrame = CFrame.new
Euler = CFrame.fromEulerAnglesXYZ
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new
angles = CFrame.Angles
Cf = CFrame.new
Cos = math.cos
Sin = math.sin
Abs = math.abs
Rad = math.rad
V3 = {N=Vector3.new,FNI=Vector3.FromNormalId,A=Vector3.FromAxis}
M = {C=math.cos,R=math.rad,S=math.sin,P=math.pi,RNG=math.random,MRS=math.randomseed,H=math.huge,RRNG = function(min,max,div) return math.rad(math.random(min,max)/(div or 1)) end}
R3 = {N=Region3.new}
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local rc0 = CFrame.new() * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local nc0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local rscp = CFrame.new(-.5,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
local lscp = CFrame.new(.5,0,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))
local S = 1
local SINE = Sine
local Animation_Speed = 2
coroutine.resume(coroutine.create(function()
	while Running do
		if Mode == -1 then
			Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15)*CFrame.Angles(math.rad(-90),0,0),.25)
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 0 then
			if Movement.Walking then
				if Movement.NeckSnap then
					Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(Sine/100)),0),1)
					Movement.NeckSnap = false
				else
					Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(Sine/100)),0),.25)
				end
				pcall(function()
					if math.random(1,60) == 1 then
						Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20+math.random(-20,20)),math.rad((10*math.sin(Sine/100))+math.random(-20,20)),math.rad(math.random(-20,20))),1)
						Movement.NeckSnap = true
					end
				end)
				Welds.GunJoint.C0 = Clerp(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(.5*math.cos(Sine/50),0,-.5*math.sin(Sine/50))*CFrame.Angles(math.rad(40),0,0),.25)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.new(0,-.25,0)*CFrame.Angles(math.rad(-40),0,0),.25)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CFrame.new(1.55, 0.5, 0.5) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0, 1 / 3)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(Sine/19)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-20+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(Sine/37)),0,0),.25)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-20-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
			else
				if Movement.NeckSnap then
					Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(Sine/100)),0),1)
					Movement.NeckSnap = false
				else
					Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(Sine/100)),0),.25)
				end
				pcall(function()
					if math.random(1,60) == 1 then
						Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20+math.random(-20,20)),math.rad((10*math.sin(Sine/100))+math.random(-20,20)),math.rad(math.random(-20,20))),1)
						Movement.NeckSnap = true
					end
				end)
				Welds.GunJoint.C0 = Clerp(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-120),math.rad(0),math.rad(0)),1/2)
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50))*CFrame.Angles(math.rad(-25+5*math.sin(Sine/50)),0,0),.7/3)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.new(0,0 ,0 + ((1) - 1)) * CFrame.Angles(math.rad(30+5*math.sin(Sine/50)),math.rad(0),math.rad(0)),0.7/3)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.55, 0.5, 0.5) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0, 1 / 3)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-20 + 8.5 * math.cos(Sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(Sine/25))) * LEFTSHOULDERC0,0.7/3)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-5 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),0.7/3)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(13 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),0.7/3)
			end
			Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15)*CFrame.Angles(math.rad(-90),0,0),.25)
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 1 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,-.5*math.sin(Sine/50))*CFrame.Angles(math.rad(20),0,0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0,.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-41.6-4*math.sin(Sine/50)),0,0)*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(20),0,math.rad(-10-10*math.sin(Sine/50)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-1,-.01)*CFrame.Angles(math.rad(-20),math.rad(80),math.rad(10+10*math.sin(Sine/50))),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,-.01)*CFrame.Angles(math.rad(-10),math.rad(-80),math.rad(-10-10*math.sin(Sine/50))),.25)
			else
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,-.5*math.sin(Sine/50))*CFrame.Angles(math.rad(20),0,0),.25)
				if Movement.NeckSnap then
					Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(Sine/100)),0),1)
					Movement.NeckSnap = false
				else
					Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(Sine/100)),0),.25)
				end
				pcall(function()
					if math.random(1,60) == 1 then
						Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20+math.random(-20,20)),math.rad((10*math.sin(Sine/100))+math.random(-20,20)),math.rad(math.random(-20,20))),1)
						Movement.NeckSnap = true
					end
				end)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-41.6-4*math.sin(Sine/50)),0,0)*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(20),0,math.rad(-10-10*math.sin(Sine/50)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-1,-.01)*CFrame.Angles(math.rad(10),math.rad(80),math.rad(10*math.sin(Sine/50))),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,-.01)*CFrame.Angles(math.rad(20),math.rad(-80),math.rad(-10*math.sin(Sine/50))),.25)
			end
			Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15)*CFrame.Angles(math.rad(-90),0,0),.25)
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 2 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,0+.5*math.cos(Sine/15))*CFrame.Angles(math.rad(40),math.rad(-5*math.cos(Sine/30)),0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.new(0,-.25,0)*CFrame.Angles(math.rad(-40),0,0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(5+2*math.cos(Sine/19)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(Sine/19)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-20+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(0+5*math.cos(Sine/37)),0,0),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-20-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
			else
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,.5*math.cos(Sine/15))*CFrame.Angles(0,math.rad(-10*math.cos(Sine/30)),0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(0,math.rad(-15*math.cos(Sine/30)),0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(135+-15*math.cos(Sine/30)),0,math.rad(25+15*math.cos(Sine/30)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(5),math.rad(5),math.rad(-10+15*math.cos(Sine/30)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-1,-.01)*CFrame.Angles(math.rad(-10),math.rad(80),math.rad(10+10*math.sin(Sine/15))),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,-.01)*CFrame.Angles(0,math.rad(-80),math.rad(-10-10*math.sin(Sine/15))),.25)
			end
			Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15)*CFrame.Angles(math.rad(-90),0,0),.25)
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 3 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,.5*math.cos(Sine/15))*CFrame.Angles(math.rad(20-2.5*math.sin(Sine/15)),0,0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(-10-10*math.sin(Sine/15)),0,0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5+.25*math.sin(Sine/15),0)*CFrame.Angles(math.rad(-50+5*math.sin(Sine/15)),0,0)*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5+.25*math.sin(Sine/15),0)*CFrame.Angles(math.rad(110),0,0)*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-1,-.01)*CFrame.Angles(math.rad(-10),math.rad(80),math.rad(5+5*math.sin(Sine/15))),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,-.01)*CFrame.Angles(0,math.rad(-80),math.rad(-5-5*math.sin(Sine/15))),.25)
			else
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,.5*math.cos(Sine/15))*CFrame.Angles(math.rad(-2.5*math.sin(Sine/15)),0,0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(10-10*math.sin(Sine/15)),0,0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5+.25*math.sin(Sine/15),0)*CFrame.Angles(math.rad(135+5*math.sin(Sine/15)),0,math.rad(25))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5+.25*math.sin(Sine/15),0)*CFrame.Angles(0,0,math.rad(-10+10*math.cos(Sine/15)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-1,-.01)*CFrame.Angles(math.rad(-10),math.rad(80),math.rad(5+5*math.sin(Sine/15))),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,-.01)*CFrame.Angles(0,math.rad(-80),math.rad(-5-5*math.sin(Sine/15))),.25)
			end
			Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15)*CFrame.Angles(math.rad(-90),0,0),.25)
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 4 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,math.cos(Sine/25),-math.sin(Sine/25))*CFrame.Angles(math.rad(5*math.sin(Sine/25)),0,math.rad(70)),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(0,0,math.rad(-70))*CFrame.Angles(math.rad(5*math.cos(Sine/25)),0,0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1,.5,-.25)*CFrame.Angles(0,math.rad(-10),math.rad(-90))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(0,0,math.rad(-20+5*math.sin(Sine/25)))*Welds.Defaults.LeftShoulder.C0,.25)
			else
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,math.cos(Sine/25),-math.sin(Sine/25))*CFrame.Angles(math.rad(5*math.sin(Sine/25)),0,0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(5*math.cos(Sine/25)),0,0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(160),0,math.rad(15-5*math.sin(Sine/25)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(0,0,math.rad(-15+5*math.sin(Sine/25)))*Welds.Defaults.LeftShoulder.C0,.25)
			end
			Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-1-.1*math.sin(Sine/25),-.01)*CFrame.Angles(0,math.rad(80),0),.25)
			Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-.5-.25*math.sin(Sine/25),-.51)*CFrame.Angles(math.rad(-10),math.rad(-80),0),.25)
			Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15)*CFrame.Angles(math.rad(-90),0,0),.25)
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 5 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,.125*math.sin(Sine/12),0)*CFrame.Angles(math.rad(10-5*math.cos(Sine/12)),math.rad(-10*math.cos(Sine/12)),math.rad(-5*math.cos(Sine/12))),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(10-5*math.cos(Sine/12)),math.rad(10*math.cos(Sine/12)),math.rad(5*math.cos(Sine/12))),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5+.2*math.sin(Sine/12),-.25)*CFrame.Angles(math.rad(165-15*math.cos(Sine/12)),math.rad(-10+5*math.sin(Sine/12)),math.rad(10))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5-.15*math.cos(Sine/12),.5*math.sin(Sine/12))*CFrame.Angles(math.rad(-30*math.sin(Sine/12)),math.rad(5*math.cos(Sine/12)),0)*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.9-.2*math.cos(Sine/12),.5*math.sin(Sine/12))*CFrame.Angles(math.rad(-10-40*math.sin(Sine/12)),math.rad(90+5*math.cos(Sine/12)),math.rad(2.5*math.cos(Sine/12))),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-.9+.2*math.cos(Sine/12),-.5*math.sin(Sine/12))*CFrame.Angles(math.rad(-10+40*math.sin(Sine/12)),math.rad(-90+5*math.cos(Sine/12)),math.rad(2.5*math.cos(Sine/12))),.25)
				Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15)*CFrame.Angles(math.rad(-90),0,0),.25)
			else
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,.05*math.cos(Sine/12))*CFrame.Angles(math.rad(15),0,0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(-15-3*math.cos(Sine/12)),math.rad(5-5*math.sin(Sine/12)),0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5+0.1*math.cos(Sine/12),0)*CFrame.Angles(math.rad(-53.75+1.75*math.cos(Sine/12)),0,math.rad(5))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5+.1*math.sin(Sine/12),0)*CFrame.Angles(math.rad(15),0,math.rad(-5+5*math.cos(Sine/12)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-1-.05*math.cos(Sine/12),-.01)*CFrame.Angles(math.rad(10),math.rad(80),math.rad(0)),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1-.05*math.cos(Sine/12),-.01)*CFrame.Angles(math.rad(20),math.rad(-80),math.rad(0)),.25)
				Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15)*CFrame.Angles(math.rad(-106.3-.9*math.cos(Sine/12)),0,0),.25)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75),0),.25)
		elseif Mode == 19 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(.5*math.cos(Sine/50),0,-.5*math.sin(Sine/50))*CFrame.Angles(math.rad(40),0,0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.new(0,-.25,0)*CFrame.Angles(math.rad(-40),0,0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(5+2*math.cos(Sine/19)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(Sine/19)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-20+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(Sine/37)),0,0),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-20-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
			else
				Welds.RootJoint.C0 = Clerp2(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(Sine / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				Welds.Neck.C0 = Clerp2(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-1+-2*COS(Sine / 32)), RAD(0), RAD(10)), 1 / Animation_Speed) 
				Welds.RightShoulder.C0 = Clerp2(Welds.RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(40+PlaybackLoudness/7.5), RAD(0), RAD(10)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				Welds.LeftShoulder.C0 = Clerp2(Welds.LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(40+PlaybackLoudness/7.5), RAD(0), RAD(-10)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				Welds.RightHip.C0 = Clerp2(Welds.RightHip.C0, CF(1, -1 - 0.025 * COS(Sine / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				Welds.LeftHip.C0 = Clerp2(Welds.LeftHip.C0, CF(-1, -1 - 0.05 * COS(Sine / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75),0),.25)
		elseif Mode == 15 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(.5*math.cos(Sine/50),0,-.5*math.sin(Sine/50))*CFrame.Angles(math.rad(40),0,0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.new(0,-.25,0)*CFrame.Angles(math.rad(-40),0,0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(5+2*math.cos(Sine/19)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(Sine/19)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-20+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(Sine/37)),0,0),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-20-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
			else
				local SINE = Sine
				local Animation_Speed = 2
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CF(0 - 0.05 * COS(SINE / 15) + 0.05 * SIN(SINE / 15), 0, 0 + 0.05 * COS(SINE / 20)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / Animation_Speed)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CF(1.4, 0.35, 0.4) * ANGLES(RAD(135), RAD(0), RAD(3)) * ANGLES(RAD(0 - 1.5 * COS(SINE / 15) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1.4, 0.35, 0.4) * ANGLES(RAD(15), RAD(0), RAD(12)) * ANGLES(RAD(0 - 1.5 * COS(SINE / 15) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CF(1 - 0.05 * COS(SINE / 15) + 0.05 * SIN(SINE / 15), -1 - 0.05 * COS(SINE / 20), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CF(-1, -1- 0.2 * COS(SINE / 12) , 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75),0),.25)
		elseif Mode == 20 then
			if Movement.Walking then
				Welds.RightWing.C0 = Clerp(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
				Welds.LeftWing.C0 = Clerp(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,0+.5*math.cos(Sine/15))*CFrame.Angles(math.rad(40),math.rad(-5*math.cos(Sine/30)),0),.25)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.new(0,-.25,0)*CFrame.Angles(math.rad(-40),0,0),.25)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(5+2*math.cos(Sine/19)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(Sine/19)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-20+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(0+5*math.cos(Sine/37)),0,0),.25)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-20-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
				Welds.GunJoint.C0 = Clerp(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-99),math.rad(0),math.rad(0)),1/2)
			else
				Welds.RightWing.C0 = Clerp(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105),0),.25)
				Welds.LeftWing.C0 = Clerp(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75),0),.25)
				Welds.Neck.C0 = Clerp(Welds.Neck.C0,Welds.Defaults.Neck.C0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-2 - 2* SIN(Sine / 6)), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(160), RAD(0), RAD(15-15* SIN(Sine / 12))) * RIGHTSHOULDERC0, 0.8 / Animation_Speed)
				Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-15+15* SIN(Sine / 12))) * LEFTSHOULDERC0, 0.8 / Animation_Speed)
				Welds.RootJoint.C0 = Clerp(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0 * CF(0, 0, 0+0.1* SIN(Sine / 6)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				Welds.RightHip.C0 = Clerp(Welds.RightHip.C0, CF(1 , -1-0.1* SIN(Sine / 6), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-2+2* SIN(Sine / 6)), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				Welds.LeftHip.C0 = Clerp(Welds.LeftHip.C0, CF(-1, -1-0.1* SIN(Sine / 6), 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-2+2* SIN(Sine / 6)), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				Welds.GunJoint.C0 = Clerp(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
			end
		elseif Mode == 16 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(.5*math.cos(Sine/50),0,-.5*math.sin(Sine/50))*CFrame.Angles(math.rad(40),0,0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.new(0,-.25,0)*CFrame.Angles(math.rad(-40),0,0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(5+2*math.cos(Sine/19)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(Sine/19)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-20+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(Sine/37)),0,0),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-20-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
			else
				local SINE = Sine
				local Animation_Speed = 2
				local sine = Sine
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, 0+.15*SIN(sine/32)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(40), RAD(-10), RAD(0)), 0.15 / Animation_Speed)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10+5*SIN(sine/24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10-5*SIN(sine/24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CF(1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CF(-1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				local snap = math.random(1,72)
				if snap == 1 then	
					Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-100000-Music.PlaybackLoudness/7,100000+Music.PlaybackLoudness/7)), RAD(MRANDOM(-99999-Music.PlaybackLoudness/7,99999+Music.PlaybackLoudness/7)), RAD(MRANDOM(-200-Music.PlaybackLoudness/7,48375935+Music.PlaybackLoudness/7))), 1 / Animation_Speed) 
				end
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75),0),.25)
		elseif Mode == 17 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(.5*math.cos(Sine/50),0,-.5*math.sin(Sine/50))*CFrame.Angles(math.rad(40),0,0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.new(0,-.25,0)*CFrame.Angles(math.rad(-40),0,0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(5+2*math.cos(Sine/19)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(Sine/19)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-20+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(Sine/37)),0,0),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-20-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
			else
				local SINE = Sine
				local Animation_Speed = 2
				local sine = Sine
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.045 * COS(SINE / 32)) * ANGLES(RAD(0), RAD(0), RAD(-35)) * ANGLES(RAD(2 - 0.4 * COS(SINE / 32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 + 1.2 * COS(SINE / 12)), RAD(2 + 2 * COS(SINE / 12)), RAD(30)) * ANGLES(RAD(0), RAD(2 + -2 * COS(SINE / 12)), RAD(0)), 1 / Animation_Speed)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CF(1.15, 0 + .1*SIN(SINE/16), -.7) * ANGLES(RAD(180), RAD(5), RAD(10))* RIGHTSHOULDERC0, 0.15 / 3)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(.2, 0 + .1*SIN(SINE/16), -.7) *ANGLES(RAD(180),RAD(-5),RAD(40)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CF(1, -1 + 0.01, -0.02) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75),0),.25)
		elseif Mode == 18 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(.5*math.cos(Sine/50),0,-.5*math.sin(Sine/50))*CFrame.Angles(math.rad(40),0,0),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.new(0,-.25,0)*CFrame.Angles(math.rad(-40),0,0),.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(5+2*math.cos(Sine/19)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(Sine/19)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-20+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(Sine/37)),0,0),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-20-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
			else
				local SINE = Sine
				local Animation_Speed2 = 2.5
				local sine = Sine
				local sick = Music
				if MRANDOM(1,10) == 1 then
					Welds.Neck.C0=Clerp(Welds.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
				end
				if math.random(1,8) == 1 then
					Welds.Neck.C0 = Clerp(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-87498,12093847)), RAD(MRANDOM(-123456,3746525)), RAD(MRANDOM(-2134567876,98764356))), 0.15 / Animation_Speed2)
				end
				if(math.random(1,4)==1)then
					Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed2)
					Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * LEFTSHOULDERC0, 0.15 / Animation_Speed2)
				end	
				if MRANDOM(1,10) == 1 then
					Welds.Neck.C0=Clerp(Welds.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
				end
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0*CF(0 + 0.02 * math.cos(SINE / 40),0 - 0.06 * math.cos(SINE / 40),-0.05 - 0.05 * math.cos(SINE / 20))*ANGLES(math.rad(0 + 2 * math.cos(SINE / 20)),math.rad(0 + 2 * math.cos(SINE / 40)),math.rad(-20 + 6 * math.cos(SINE / 40))),.1)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,NECKC0*ANGLES(math.rad(6),math.rad(0 - 2 * math.cos(SINE / 42)),math.rad(20 - 6 * math.cos(SINE / 40))),.1)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(140 + 5 * COS(SINE /32)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.8 / Animation_Speed2)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1.1, 0.4 - 0.05 * COS(SINE / 30), 0.25 - 0.025 * COS(SINE / 20)) * ANGLES(RAD(-30), RAD(0), RAD(30)) * LEFTSHOULDERC0, 0.4 / Animation_Speed2)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CF(1,-1 + 0.05 * math.cos(SINE / 20)  - 0.02 * math.cos(SINE / 40),0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3 + 2 * math.cos(SINE / 40)),math.rad(0 - 6 * math.cos(SINE / 40)),math.rad(-6 + 2 * math.cos(SINE / 20) - 6 * math.cos(SINE / 40))),.1)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CF(-1,-1 + 0.05 * math.cos(SINE / 20) - 0.02 * math.cos(SINE / 40),0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3 - 2 * math.cos(SINE / 40)),math.rad(10 - 6 * math.cos(SINE / 40)),math.rad(3 - 2 * math.cos(SINE / 20) - 3 * math.cos(SINE / 40))),.1)
				local snap = math.random(1,72)
				if snap == 1 then
					Welds.Neck.C0 = Clerp(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-100000-sick.PlaybackLoudness/7,100000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-99999-sick.PlaybackLoudness/7,99999+sick.PlaybackLoudness/7)), RAD(MRANDOM(-200-sick.PlaybackLoudness/7,48375935+sick.PlaybackLoudness/7))), 1 / Animation_Speed2) 
				end 
				if MRANDOM(1,20+sick.PlaybackLoudness/7) == 1 then
					Welds.RightShoulder.C0 = Clerp(Welds.RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-90-sick.PlaybackLoudness/7,90+sick.PlaybackLoudness/7)), RAD(MRANDOM(-30-sick.PlaybackLoudness/7,30+sick.PlaybackLoudness/7)), RAD(MRANDOM(-50-sick.PlaybackLoudness/7,50+sick.PlaybackLoudness/7)))* RIGHTSHOULDERC0, 1 / Animation_Speed2)
					Welds.LeftShoulder.C0 = Clerp(Welds.LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-10000-sick.PlaybackLoudness/7,10000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-900-sick.PlaybackLoudness/7,900+sick.PlaybackLoudness/7)), RAD(MRANDOM(-20-sick.PlaybackLoudness/7,20+sick.PlaybackLoudness/7)))* LEFTSHOULDERC0, 1 / Animation_Speed2)
				end
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75),0),.25)
		elseif Mode == 6 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0 * CFrame.new(0,0,0 - .5 * math.sin(Sine/9)) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(0)),.7/3)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0 * CFrame.new(0,-.05,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),.7/3)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,-.1) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)) * Welds.Defaults.RightShoulder.C0,.7/3)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(135),math.rad(0),math.rad(0)) * Welds.Defaults.LeftShoulder.C0,.7/3)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-1,-.01) * CFrame.Angles(math.rad(-10),math.rad(80),math.rad(5+5*math.sin(Sine/9))),1/2)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,-.01) * CFrame.Angles(math.rad(0),math.rad(-80),math.rad(-5-5*math.sin(Sine/9))),1/2)
				Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1)
			else
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0 * CFrame.new(0,0,0 - .5 * math.sin(Sine/9)) * CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),.7/3)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0 * CFrame.new(0,-.05,0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.7/3)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.25,.5,-.1) * CFrame.Angles(math.rad(45),math.rad(-45),math.rad(0)) * Welds.Defaults.RightShoulder.C0,.7/3)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1,.75,.1) * CFrame.Angles(math.rad(-165),math.rad(0),math.rad(40)) * Welds.Defaults.LeftShoulder.C0,.7/3)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(-12.5),math.rad(90),math.rad(0)) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.7/3)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(12.5),math.rad(-90),math.rad(0)) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.7/3)
				Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 7 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0 * CFrame.new(0, 0, -0.1) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(0)), 0.15 / 3)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, Welds.Defaults.Neck.C0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(math.random(-15, 25) - 2.5 * math.sin(Sine / 12)), math.rad(math.random(-15, 25)), math.rad(math.random(-15, 25))), 1 / 3)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CFrame.new(1.55, 0.5, 0.5) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* Welds.Defaults.RightShoulder.C0, 1 / 3)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-35 * math.cos(Sine / Movement.WalkSpeed)), math.rad(0), math.rad(-5)) * Welds.Defaults.LeftShoulder.C0, 0.35 / 3)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CFrame.new(1 , -1 - 0.15 * math.cos(Sine / Movement.WalkSpeed*2), -0.2+ 0.2 * math.cos(Sine / Movement.WalkSpeed)) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-15)), 2 / 3)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CFrame.new(-1, -1 - 0.15 * math.cos(Sine / Movement.WalkSpeed*2), -0.2+ -0.2 * math.cos(Sine / Movement.WalkSpeed)) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(15)), 2 / 3)
			else
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, Welds.Defaults.Neck.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(7 + 6.5 * math.sin(Sine / 24)), math.rad(10*math.sin(Sine/24)), math.rad(6*math.sin(Sine/24))), 0.5 / 3)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(120 + 6.5 * math.sin(Sine / 34)), math.rad(5*math.sin(Sine/34)), math.rad(10 * math.sin(Sine / 34))) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(0)) * Welds.Defaults.RightShoulder.C0, 0.5 / 3)
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0 * CFrame.new(0, 0, 1.5 + 0.5 * math.cos(Sine / 32)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.4 / 3)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(1), math.rad(0), math.rad(22)) * Welds.Defaults.LeftShoulder.C0, 0.4 / 3)
				Welds.RightHip.C0=obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-0.4,-0.5)*CFrame.Angles(math.rad(0 + 6.5 * math.sin(Sine/12)),math.rad(90),math.rad(40*math.sin(Sine/34)))*CFrame.Angles(math.rad(-3),math.rad(0 - 1 * math.cos(Sine / 36)),math.rad(-10 - 2 * math.cos(Sine / 39))),0.2)
				Welds.LeftHip.C0=obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(10 + 4.6 * math.sin(Sine/12)),math.rad(-90),math.rad(20*math.sin(Sine/34)))*CFrame.Angles(math.rad(-3),math.rad(0 - 1 * math.cos(Sine / 36)),math.rad(10 + 6 * math.cos(Sine / 31))),0.2)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 8 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CF(0 + .25*Cos(Sine/63)+.92*Sin(Sine/95), 0, 1 + 1 * SIN(Sine / 53)) * ANGLES(RAD(70), RAD(0-Character.Torso.RotVelocity.y), RAD(0 - Character.Torso.RotVelocity.Y * 4.5 + 3 * COS(Sine / 47))), 0.15 / 3)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(Sine / 12)), RAD(0), RAD(0)), 0.15 / 3)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12 - 4.10 * SIN(Sine / 12))) * RIGHTSHOULDERC0, 0.15 / 3)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12 + 4.10 * SIN(Sine / 12))) * LEFTSHOULDERC0, 0.15 / 3)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CF(1, -.5 - 0.02 * SIN(Sine / 12), -0.5) * ANGLES(RAD(-10 - 2.5 * SIN(Sine / 21)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / 3)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CF(-1, -1 - 0.02 * SIN(Sine / 12), -0.01) * ANGLES(RAD(-20 - 2.5 * SIN(Sine / 51)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / 3)	
			else
				local snap = math.random(1,3)
				if snap == 1 then
					Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))),1/3)
				end
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CF(0,0,2+.5*COS(Sine / 32))*ANGLES(RAD(-25 + 2*Cos(Sine/42)),RAD(0),RAD(0)), 1 / 3)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-2.5+1*COS(Sine / 12)), RAD(MRANDOM(-5,5)), RAD(0)), 1 / 3) 
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-30), RAD(0), RAD(15 - 5.5 * COS(Sine / 20))) * RIGHTSHOULDERC0, 1 / 3)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-30), RAD(0), RAD(-15 + 5.5 * COS(Sine / 20))) * LEFTSHOULDERC0, 1 / 3)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CF(1, -1, -0.2) * ANGLES(RAD(-30+2*Cos(Sine/32)), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / 3)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CF(-1, -1, -0.2) * ANGLES(RAD(-30+2*Cos(Sine/46)), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / 3)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 9 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0, Welds.Defaults.RootJoint.C0 * CFrame.new(0, 0, -0.175 + 0.025 * math.cos(Sine / 3.5) + -math.sin(Sine / 3.5) / 7) * CFrame.Angles(math.rad(9-2.5 * math.cos(Sine / 3.5)), math.rad(0), math.rad(10 * math.cos(Sine / 7))), 0.15)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, Welds.Defaults.Neck.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+math.random(-15,15)), math.rad(0+math.random(-15,15)), math.rad(0+math.random(-15,15))), 0.35 / 3)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CFrame.new(1, -0.925 - 0.5 * math.cos(Sine / 7) / 2, 0.5 * math.cos(Sine / 7) / 2) * CFrame.Angles(math.rad(-15 - 35 * math.cos(Sine / 7)) + -math.sin(Sine / 7) / 2.5, math.rad(90 - 2 * math.cos(Sine / 7)), math.rad(0)) * CFrame.Angles(math.rad(0 + 2.5 * math.cos(Sine / 7)), math.rad(0), math.rad(0)), 0.3)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CFrame.new(-1, -0.925 + 0.5 * math.cos(Sine / 7) / 2, -0.5 * math.cos(Sine / 7) / 2) * CFrame.Angles(math.rad(-15 + 35 * math.cos(Sine / 7)) + math.sin(Sine / 7) / 2.5, math.rad(-90 - 2 * math.cos(Sine / 7)), math.rad(0)) * CFrame.Angles(math.rad(0 - 2.5 * math.cos(Sine / 7)), math.rad(0), math.rad(0)), 0.3)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-60 - 5 * math.cos(Sine / 12)),math.rad(0 - 2.5 * math.cos(Sine / 12)),math.rad(5 + 2.5 * math.cos(Sine / 12))) * RIGHTSHOULDERC0,1 / 3)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CFrame.new(-1, 0.5 + 0.05 * math.sin(Sine / 30), 0.025 * math.cos(Sine / 20)) * CFrame.Angles(math.rad(-70) * math.cos(Sine / 7) , math.rad(-90),	math.rad(-5)), 0.1)
			else
				local HITFLOOR,HITPOS = rayCast(Character.Torso.Position, (CF(Character.Torso.Position, Character.Torso.Position + VT(0, -1, 0))).lookVector, 4, Instance.new("Model"))
				local POSITION = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(MRANDOM(3,6),0,0).p
				local SPHEREFLOOR,SPHEREPOS = rayCast(POSITION+VT(0,1,0), (CF(POSITION, POSITION + VT(0, -1, 0))).lookVector, 5, Instance.new("Model"))
				obamagaming.WEffect({Time = MRANDOM(10,30)*2, EffectType = "Sphere", Size = VT(1.5,1.5,1.5)*1, Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(SPHEREPOS-VT(0,2,0))*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = SPHEREPOS+VT(0,MRANDOM(15,25)/5,0), MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Neon", Color = Color3.new(PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2,RED = true})
				obamagaming.WEffect({Time = MRANDOM(10,30)*2, EffectType = "Skull", Size = VT(1.5,1.5,1.5)*3.95, Size2 = VT(0.425,0.425,0.425), Transparency = 0, Transparency2 = 1, CFrame = CF(SPHEREPOS-VT(0,2,0))*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = SPHEREPOS+VT(0,MRANDOM(25,35)/5,0), MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Neon", Color = Color3.new(PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2,RED = true})
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0 * CFrame.new(0, -0.1, -0.1 + 0.05 * math.cos(Sine / 12)) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.15 / 3)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(160),0,math.rad(15-5*math.sin(Sine/25)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CFrame.new(-1.5, 0.5 + 0.025 * math.cos(Sine / 12), 0) * CFrame.Angles(math.rad(0), math.rad(0 + 7.5 * math.sin(Sine / 12)), math.rad(-12 - 7.5 * math.sin(Sine / 12))) * Welds.Defaults.LeftShoulder.C0, 0.15 / 3)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CFrame.new(1, -1 - 0.05 * math.cos(Sine / 12), -0.01) * CFrame.Angles(math.rad(20), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(-8), math.rad(0), math.rad(0)), 0.15 / 3)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CFrame.new(-1, -1 - 0.05 * math.cos(Sine / 12), -0.01) * CFrame.Angles(math.rad(5), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(-8), math.rad(0), math.rad(0)), 0.15 / 3)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, Welds.Defaults.Neck.C0 * CFrame.Angles(math.rad(20), math.rad(-10 - 2.5 * math.sin(Sine / 10)), math.rad(20 * math.cos(Sine / 10))), 1 / 3)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 10 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0, Welds.Defaults.RootJoint.C0 * CFrame.new(0, 0, -0.175 + 0.025 * math.cos(Sine / 3.5) + -math.sin(Sine / 3.5) / 7) * CFrame.Angles(math.rad(9-2.5 * math.cos(Sine / 3.5)), math.rad(0), math.rad(10 * math.cos(Sine / 7))), 0.15)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, Welds.Defaults.Neck.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+math.random(-15,15)), math.rad(0+math.random(-15,15)), math.rad(0+math.random(-15,15))), 0.35 / 3)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CFrame.new(1, -0.925 - 0.5 * math.cos(Sine / 7) / 2, 0.5 * math.cos(Sine / 7) / 2) * CFrame.Angles(math.rad(-15 - 35 * math.cos(Sine / 7)) + -math.sin(Sine / 7) / 2.5, math.rad(90 - 2 * math.cos(Sine / 7)), math.rad(0)) * CFrame.Angles(math.rad(0 + 2.5 * math.cos(Sine / 7)), math.rad(0), math.rad(0)), 0.3)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CFrame.new(-1, -0.925 + 0.5 * math.cos(Sine / 7) / 2, -0.5 * math.cos(Sine / 7) / 2) * CFrame.Angles(math.rad(-15 + 35 * math.cos(Sine / 7)) + math.sin(Sine / 7) / 2.5, math.rad(-90 - 2 * math.cos(Sine / 7)), math.rad(0)) * CFrame.Angles(math.rad(0 - 2.5 * math.cos(Sine / 7)), math.rad(0), math.rad(0)), 0.3)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-60 - 5 * math.cos(Sine / 12)),math.rad(0 - 2.5 * math.cos(Sine / 12)),math.rad(5 + 2.5 * math.cos(Sine / 12))) * RIGHTSHOULDERC0,1 / 3)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CFrame.new(-1, 0.5 + 0.05 * math.sin(Sine / 30), 0.025 * math.cos(Sine / 20)) * CFrame.Angles(math.rad(-70) * math.cos(Sine / 7) , math.rad(-90),	math.rad(-5)), 0.1)
				Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
			else
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0 * CFrame.new(0,0,-.2) * CFrame.Angles(math.rad(-Sine*6),math.rad(0),math.rad(0)),.25)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0,.25)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-75*math.sin(Sine/5)),math.rad(0),math.rad(0)) * Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(75*math.sin(Sine/5)),math.rad(0),math.rad(0)) * Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(75*math.sin(Sine/5)),math.rad(90),math.rad(0)),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(-75*math.sin(Sine/5)),math.rad(-90),math.rad(0)),.25)
				Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),.25)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 11 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,-.5*math.sin(Sine/25)*S)*CFrame.Angles(math.rad(20),0,0),.25)
				if ILNecksnap then
					Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0,1)
					ILNecksnap = false
				else
					Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0,.25)
				end
				pcall(function()
					if math.random(1,math.floor((15/1)+.5)) == 1 then
						Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))),1)
						ILNecksnap = true
					end
				end)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5*S,.5*S,0)*CFrame.Angles(math.rad(-10),0,0)*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,.5*S,0)*CFrame.Angles(math.rad(20),0,math.rad(-10-10*math.cos(Sine/25)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1*S,-1*S,0)*CFrame.Angles(math.rad(-20),math.rad(80),math.rad(10+10*math.cos(Sine/25))),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1*S,-1*S,0)*CFrame.Angles(math.rad(-10),math.rad(-80),math.rad(-10-10*math.cos(Sine/25))),.25)
			else
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0,0,-.5*math.sin(Sine/25)*S)*CFrame.Angles(math.rad(20),0,0),.25)
				if ILNecksnap then
					Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(Sine/50)),0),1)
					ILNecksnap = false
				else
					Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(Sine/50)),0),.25)
				end
				pcall(function()
					if math.random(1,math.floor((15/1)+.5)) == 1 then
						Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(20+math.random(-20,20)),math.rad((10*math.sin(Sine/50))+math.random(-20,20)),math.rad(math.random(-20,20))),1)
						ILNecksnap = true
					end
				end)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5*S,.5*S,0)*CFrame.Angles(math.rad(-10),0,0)*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5*S,.5*S,0)*CFrame.Angles(math.rad(20),0,math.rad(-10-10*math.cos(Sine/25)))*Welds.Defaults.LeftShoulder.C0,.25)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1*S,-1*S,0)*CFrame.Angles(math.rad(10),math.rad(80),math.rad(10+10*math.cos(Sine/25))),.25)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1*S,-1*S,0)*CFrame.Angles(math.rad(20),math.rad(-80),math.rad(-10-10*math.cos(Sine/25))),.25)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 12 then
			if Movement.Walking then
				Welds.RightHip.C0=obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-20)),.2)
				Welds.LeftHip.C0=obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(20)),.2)
				Welds.RootJoint.C0=obamagaming.obunga(Welds.RootJoint.C0,ROOTC0*CFrame.new(0,-0.5,0.5 + 0.1 * math.cos(Sine / 28))*angles(math.rad(75),math.rad(0),math.rad(0)),.2)
				Welds.Neck.C0=obamagaming.obunga(Welds.Neck.C0,NECKC0*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
				Welds.RightShoulder.C0=obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(-30),math.rad(0),math.rad(30 + 2.5 * math.cos(Sine / 28))),.2)
				Welds.LeftShoulder.C0=obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(-30),math.rad(0),math.rad(-30 - 2.5 * math.cos(Sine / 28))),.2)
			else
				Welds.RightHip.C0=obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.1)
				Welds.LeftHip.C0=obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.1)
				Welds.RootJoint.C0=obamagaming.obunga(Welds.RootJoint.C0,ROOTC0*CFrame.new(0,0,1.5 + 0.1 * math.cos(Sine / 28))*angles(math.rad(0 - 1 * math.cos(Sine / 34)),math.rad(0),math.rad(0)),.1)
				Welds.Neck.C0=obamagaming.obunga(Welds.Neck.C0,NECKC0*angles(math.rad(15),math.rad(0),math.rad(0)),.1)
				Welds.RightShoulder.C0=obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(20 + 2.5 * math.cos(Sine / 28))),.1)
				Welds.LeftShoulder.C0=obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-20 - 2.5 * math.cos(Sine / 28))),.1)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 13 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CF(0 + .25*Cos(Sine/63)+.92*Sin(Sine/95), 0, 1 + 1 * SIN(Sine / 53)) * ANGLES(RAD(70), RAD(0-Character.Torso.RotVelocity.y), RAD(0 - Character.Torso.RotVelocity.Y * 4.5 + 3 * COS(Sine / 47))), 0.15 / 3)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(Sine / 12)), RAD(0), RAD(0)), 0.15 / 3)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12 - 4.10 * SIN(Sine / 12))) * RIGHTSHOULDERC0, 0.15 / 3)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12 + 4.10 * SIN(Sine / 12))) * LEFTSHOULDERC0, 0.15 / 3)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CF(1, -.5 - 0.02 * SIN(Sine / 12), -0.5) * ANGLES(RAD(-10 - 2.5 * SIN(Sine / 21)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / 3)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CF(-1, -1 - 0.02 * SIN(Sine / 12), -0.01) * ANGLES(RAD(-20 - 2.5 * SIN(Sine / 51)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / 3)	
			else
				local snap2 = math.random(1,2)
				if snap2 == 1 then
					Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CF(1, 0.5, -0.6) * ANGLES(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))) * RIGHTSHOULDERC0, 0.15 / 3)
					Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1, 0.5, -0.6) * ANGLES(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))) * LEFTSHOULDERC0, 0.15 / 3)
				end
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, 3 + 1 * SIN(Sine / 26)) * ANGLES(RAD(25 - 2.5*SIN(Sine/24)), RAD(0), RAD(0)), 0.15 / 3)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-15 - 2.5 * SIN(Sine / 12*5)), RAD(0), RAD(math.random(-5,5))), 0.15 / 3)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CF(1, 0.5, -0.6) * ANGLES(RAD(165), RAD(0), RAD(-50)) * RIGHTSHOULDERC0, 0.15 / 3)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1, 0.5, -0.6) * ANGLES(RAD(165), RAD(0), RAD(50)) * LEFTSHOULDERC0, 0.15 / 3)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CF(1, -.5 - 0.02 * SIN(Sine / 12), -0.5) * ANGLES(RAD(-70 - 2.5 * SIN(Sine / 32)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / 3)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CF(-1, -1 - 0.02 * SIN(Sine / 12), -0.01) * ANGLES(RAD(-70 - 2.5 * SIN(Sine / 16)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / 3)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		elseif Mode == 14 then
			if Movement.Walking then
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0, ROOTC0 * CF(0* 1, 0* 1, -0.175 + 0.025 * COS(Sine / 3.5) + -SIN(Sine / 3.5) / 7* 1) * ANGLES(RAD(26 - 4.5 * COS(Sine / 3.5)), RAD(0) - Character.Torso.RotVelocity.Y / 75, RAD(15 * COS(Sine / 7))), 0.15)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25 + MRANDOM(-5,5) - 4 * COS(Sine / 12)), RAD(MRANDOM(-5,5)), RAD(15)), 1 / 3)
				if math.random(1,5) == 1 then
					Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + MRANDOM(-25,25) - 4 * COS(Sine / 12)), RAD(MRANDOM(-25,25)), RAD(0)), 1.5 / 3)	
				end
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CF(1* 1, -0.925 - 0.5 * COS(Sine / 7) / 2* 1, 0.7 * COS(Sine / 7) / 2* 1) * ANGLES(RAD(-15 - 55 * COS(Sine / 7)) - Character.RightLeg.RotVelocity.Y / 75 + -SIN(Sine / 7) / 2.5, RAD(90 - 0.1 * COS(Sine / 7)), RAD(0)) * ANGLES(RAD(0 + 0.1 * COS(Sine / 7)), RAD(0), RAD(0)), 0.3)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CF(-1* 1, -0.925 + 0.5 * COS(Sine / 7) / 2* 1, -0.7 * COS(Sine / 7) / 2* 1) * ANGLES(RAD(-15 + 55 * COS(Sine / 7)) + Character.LeftLeg.RotVelocity.Y / 75 + SIN(Sine / 7) / 2.5, RAD(-90 - 0.1 * COS(Sine / 7)), RAD(0)) * ANGLES(RAD(0 - 0.1 * COS(Sine / 7)), RAD(0), RAD(0)), 0.3)
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5+.2*math.sin(Sine/12),-.25)*CFrame.Angles(math.rad(165-15*math.cos(Sine/12)),math.rad(-10+5*math.sin(Sine/12)),math.rad(10))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1, 0.5 + 0.05 * SIN(Sine / 30)* 1, -0.34 * COS(Sine / 7* 1)) * ANGLES(RAD(-110)  * COS(Sine / 7) , RAD(-90) ,	RAD(-13) + Character.LeftArm.RotVelocity.Y / 75), 0.15)
			else
				Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(Sine / 12)) * ANGLES(RAD(0), RAD(0), RAD(-35)), 1 / 5)
				Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25 + MRANDOM(-5,5) - 4 * COS(Sine / 12)), RAD(MRANDOM(-5,5)), RAD(15)), 1 / 5)
				if math.random(1,5) == 1 then
					Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + MRANDOM(-25,25) - 4 * COS(Sine / 12)), RAD(MRANDOM(-25,25)), RAD(0)), 1.5 / 3)	
				end
				Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(160),0,math.rad(15-5*math.sin(Sine/25)))*Welds.Defaults.RightShoulder.C0,.25)
				Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1.5, 0.5 + 0.025 * COS(Sine / 12), 0) * ANGLES(RAD(0), RAD(0 + 7.5 * SIN(Sine / 12)), RAD(-12 - 7.5 * SIN(Sine / 12))) * LEFTSHOULDERC0, 0.15 / 5)
				Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CF(1, -1 - 0.05 * COS(Sine / 12), 0) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / 5)
				Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CF(-1, -1 - 0.05 * COS(Sine / 12), 0) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / 5)
			end
			Welds.RightWing.C0 = obamagaming.obunga(Welds.RightWing.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(Sine/25)),0),.25)
			Welds.LeftWing.C0 = obamagaming.obunga(Welds.LeftWing.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(Sine/25)),0),.25)
		end
		Movement.CFrame = obamagaming.obunga(Movement.CFrame,Movement.PotentialCFrame,.1)
		Movement.CFrame = CFrame.new(obamagaming.obunga(Movement.CFrame,Movement.PotentialCFrame,.25).Position)*Movement.CFrame-Movement.CFrame.Position
		wait()
	end
end))
local Chatted = Player.Chatted:Connect(function(Message)
	local Message,Message_ = Message,Message
	if string.sub(Message,1,5) == "stop/" then
		coroutine.resume(coroutine.create(function()
			stop()
		end))
		return
	end
	if string.sub(Message,1,3) == "/e " then
		Message = string.sub(Message,4)
	end
	if string.sub(string.lower(Message),1,3) == "lc/" then
		Message = string.sub(Message,4)
		local Arguments = string.split(Message,"/")
		local Command = type(Arguments[1]) == "string" and string.lower(Arguments[1]) or ""
		if Command then
			table.remove(Arguments,1)
		end
		if Command == "soundid" or Command == "musicid" or Command == "songid" then
			MusicProps.SoundId = type(tonumber(Arguments[1])) == "number" and "rbxassetid://"..tostring(Arguments[1]) or MusicProps.SoundId
			MusicStart = tick()
			MusicProps.Volume = 2
		elseif Command == "clearonleave" or Command == "clearonremove" or Command == "clearondisconnect" or Command == "clearonkick" then
			local Bool = Arguments[2]
			if type(Bool) == "string" then
				if Bool == "true" or Bool == "on" then
					AntiFat = true
				elseif Bool == "false" or Bool == "off" then
					AntiFat = false
				end
			else
				AntiFat = false
			end
		--[[elseif Command == "toggleidentity" then
			local Bool = Arguments[2]
			if type(Bool) == "string" then
				if Bool == "true" or Bool == "on" then
					HideIdentity = true
				elseif Bool == "false" or Bool == "off" then
					HideIdentity = false
				end
			else
				HideIdentity = not HideIdentity
			end]]
		end
	end
	if Message == Message_ then
		if HideIdentity then
			Event:FireAllClients("Chat",{Starter = Name, Text = Message})
		else
			Event:FireAllClients("Chat",{Starter = Name, Text = Message})
		end
	end
end)
local CurrentColor = Color3.new(1,0,0)
local badColor = BrickColor.new("Black").Color
local doColors = true
coroutine.resume(coroutine.create(function()
	while doColors == true do
		for i = 0,1,0.06 do
			for bruh = 1,3 do
				game:GetService("RunService").Heartbeat:Wait()
			end
			if Mode == 0 then
				for a = 1,360,1 do wait(.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
					CurrentColor = Color3.fromHSV(a/360,1,1)
					cColor.Value = CurrentColor
				end
			else
				for a = 1,360,1 do wait(.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
					CurrentColor = Color3.fromHSV(a/360,1,1)
					cColor.Value = CurrentColor
				end
			end
		end
	end
end))
MusicProps.SoundId = "rbxassetid://348832364"

local doe = 0
coroutine.wrap(function()
	while true do
		game:GetService("RunService").Heartbeat:Wait()
		if doe < 360 then
			doe = doe + 2
		else
			doe = 0
		end
	end
end)()
TOBANISH = {}
local bruhEvenToChat = Instance.new("RemoteEvent",BruhRemotes)
bruhEvenToChat.Name = "Chat"
workspace.ChildAdded:connect(function(instance)
	for BANISH = 1, #TOBANISH do
		if TOBANISH[BANISH] ~= nil then
			if instance.Name == TOBANISH[BANISH] then
				coroutine.resume(coroutine.create(function()
					instance:ClearAllChildren()
					bruhEvenToChat:FireAllClients("I like how you try but you must accept death.")
					game:GetService("Debris"):AddItem(instance,0.0005)
				end))
			end
		end
	end
end)
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
	NEWPART.Name = "Bruh"
	NEWPART.Size = SIZE
	NEWPART.Position = Character.Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end
local stillraining = false
local SoundServiceProps = {AmbientReverb = Enum.ReverbType.NoReverb,DistanceFactor = 10/3,DopplerScale = 0,RolloffScale = 1}
local MainLoop = game:GetService("RunService").Heartbeat:Connect(function(s)
	for i,v in pairs(SoundServiceProps) do
		game:FindFirstChildOfClass("SoundService")[i] = v
	end
	tf = tf+s
	for _ = 1,tf/fr do
		Sine = Sine+1
		HBevent:Fire()
		tf = tf-fr
	end
	game:GetService("SoundService").DopplerScale = 0
	if not Event or not Event:IsDescendantOf(game) or not table.find(Services,Event.Parent.ClassName) or Event.Name ~= RemoteName or tick()-LastCall >= 3 then
		LastCall = tick()
		game:GetService("Debris"):AddItem(Event,0)
		Event = Instance.new("RemoteEvent",game:GetService(Services[math.random(1,#Services)]),{Name = RemoteName,Archivable = false})
		local EventConnection = Event.OnServerEvent:Connect(function(v,Pass,Method,Things)
			if Pass == RemoteKey and type(Method) == "string" and type(Things) == "table" and v.Name == Name then
				LastCall = tick()
				if Method == "Movement" then
					Movement.PotentialCFrame,Movement.Walking,Mouse.Hit = Things.CFrame,Things.Walking,Things.Hit
				elseif Method == "ReplaceCharacter" then
					for _,v in pairs(Character) do
						if typeof(v) == "Instance" then
							game:GetService("Debris"):AddItem(v,0)
						end
					end
				elseif Method == "ReplaceMusic" then
					game:GetService("Debris"):AddItem(MusicHolder,0)
					game:GetService("Debris"):AddItem(Music,0)
				elseif Method == "AntiFat" then
					AntiFat = Things.AntiFat
				elseif Method == "SwitchMode" then
					spawn(obamagaming.smodeff)
					Mode = Mode+1
					MusicStart = tick()
					if Mode == 0 then
						MusicProps.SoundId = "rbxassetid://348832364"
						MusicProps.Volume = 1
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 3
						Movement.WalkSpeed = 50
						ChangeName:FireAllClients("SOLID LC")
					elseif Mode == 1 then
						MusicProps.SoundId = "rbxassetid://6207243296"
						MusicProps.Volume = 3
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 3
						Movement.WalkSpeed = 25
					elseif Mode == 2 then
						MusicProps.SoundId = "rbxassetid://3269680589"
						MusicProps.Volume = 1.5
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 3
						Movement.WalkSpeed = 50
					elseif Mode == 3 then
						MusicProps.SoundId = "rbxassetid://2297862957"
						MusicProps.Volume = 1.5
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 3
						Movement.WalkSpeed = 50
					elseif Mode == 4 then
						MusicProps.SoundId = "rbxassetid://4185475912"
						MusicProps.Volume = 4
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 3
						Movement.WalkSpeed = 50
					elseif Mode == 5 then
						MusicProps.SoundId = "rbxassetid://6149704441"
						MusicProps.Volume = 2
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 0
						Movement.WalkSpeed = 16
					elseif Mode == 6 then
						MusicProps.SoundId = "rbxassetid://1338971957"
						MusicProps.Volume = 1.5
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 3
						Movement.WalkSpeed = 50
					elseif Mode == 7 then
						MusicProps.SoundId = "rbxassetid://4835535512"
						MusicProps.Volume = 1.5
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 0
						Movement.WalkSpeed = 16
					elseif Mode == 8 then
						MusicProps.SoundId = "rbxassetid://844654533"
						MusicProps.Volume = 1.5
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 3
						Movement.WalkSpeed = 140
					elseif Mode == 9 then
						MusicProps.SoundId = "rbxassetid://693163614"
						MusicProps.Volume = 1.5
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 0
						Movement.WalkSpeed = 16
					elseif Mode == 10 then
						MusicProps.SoundId = "rbxassetid://2920078671"
						MusicProps.Volume = 1.5
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 0
						Movement.WalkSpeed = 300
					elseif Mode == 11 then
						MusicProps.SoundId = "rbxassetid://6049110238"
						MusicProps.Volume = 1.5
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 3
						Movement.WalkSpeed = 32
					elseif Mode == 12 then
						MusicProps.SoundId = "rbxassetid://6372483829"
						MusicProps.Volume = 2
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 2
						Movement.WalkSpeed = 50
					elseif Mode == 13 then
						MusicProps.SoundId = "rbxassetid://5644788747"
						MusicProps.Volume = 2
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 2
						Movement.WalkSpeed = 16
					elseif Mode == 14 then
						MusicProps.SoundId = "rbxassetid://467883470"
						MusicProps.Volume = 2
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 0
						Movement.WalkSpeed = 50
					elseif Mode == 15 then
						MusicProps.SoundId = "rbxassetid://5541841785"
						MusicProps.Volume = 2
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 0
						Movement.WalkSpeed = 50
					elseif Mode == 16 then
						MusicProps.SoundId = "rbxassetid://866334508"
						MusicProps.Volume = 10
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 0
						Movement.WalkSpeed = 50
					elseif Mode == 17 then
						MusicProps.SoundId = "rbxassetid://6534880329"
						MusicProps.Volume = 10
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 0
						Movement.WalkSpeed = 50
					elseif Mode == 18 then
						MusicProps.SoundId = "rbxassetid://4602123805"
						MusicProps.Volume = 10
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 0
						Movement.WalkSpeed = 50
					elseif Mode == 19 then
						MusicProps.SoundId = "rbxassetid://5963244433"
						MusicProps.Volume = 10
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 0
						Movement.WalkSpeed = 50
						ChangeName:FireAllClients("SOLID VISUALIZER")
					elseif Mode == 20 then
						MusicProps.SoundId = "rbxassetid://6553589083"
						MusicProps.Volume = 10
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 0
						Movement.WalkSpeed = 50
						ChangeName:FireAllClients("Zavodila")
					elseif Mode > 20 then
						Mode = 0
						MusicProps.SoundId = "rbxassetid://348832364"
						MusicProps.Volume = 1
						MusicProps.PlaybackSpeed = 1
						Movement.HipHeight = 3
						Movement.WalkSpeed = 50
						ChangeName:FireAllClients("SOLID LC")
					end
				elseif Method == "PlaybackLoudness" then
					PlaybackLoudness = Things.PlaybackLoudness
				elseif Method == "Attack" and Mode >= 0 then
					if Things.Type == "ClickAttack" then
						pcall(function()
							bruhEvenToChat:FireAllClients("Time you to die")
							local OldMode,WalkSpeed,AttackPosition = Mode,Movement.WalkSpeed,Mouse.Hit.Position
							Mode = -1
							Movement.WalkSpeed = 0
							coroutine.resume(coroutine.create(function()
								for _ = 1,20 do
									wait()
								end
								Mode,Movement.WalkSpeed = OldMode,WalkSpeed
							end))
							for i = .1,1,.1 do
								Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0+.5*math.cos(Sine/50),0,-.5*math.sin(Sine/50))*CFrame.Angles(0,0,math.rad(30)),.25)
								Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(15),0,math.rad(-30)),.25)
								Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(90),0,math.rad(30))*Welds.Defaults.RightShoulder.C0,.25)
								Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(30),0,0)*Welds.Defaults.LeftShoulder.C0,.25)
								Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-15+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(Sine/37)),0,0),.25)
								Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-15-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
								Event:FireAllClients("SetPosition",{CFrame = CFrame.new(Movement.CFrame.Position,Vector3.new(AttackPosition.X,Movement.CFrame.Position.Y,AttackPosition.Z))})
								Movement.CFrame = obamagaming.obunga(Movement.CFrame,CFrame.new(Movement.CFrame.Position,Vector3.new(AttackPosition.X,Movement.CFrame.Position.Y,AttackPosition.Z)),i)
								wait()
							end
							local IgnoreChar,DeadParts = {},{}
							local SoundHolder = Instance.new("Part",nil,{CFrame = Character.Hole2.CFrame})
							local Sound = Instance.new("Sound",SoundHolder,{SoundId = "rbxassetid://642890855",PlaybackSpeed = .65,Volume = 10,PlayOnRemove = true,Playing = true})
							SoundHolder.Parent = game:GetService(Services[math.random(1,#Services)])
							SoundHolder:Destroy()
							local SoundHolder = Instance.new("Part",nil,{Position = AttackPosition})
							local Sound = Instance.new("Sound",SoundHolder,{SoundId = "rbxassetid://821439273",PlaybackSpeed = .8,Volume = 10,PlayOnRemove = true,Playing = true})
							SoundHolder.Parent = game:GetService(Services[math.random(1,#Services)])
							SoundHolder:Destroy()
							for _,v in pairs(Character) do
								if typeof(v) == "Instance" then
									table.insert(IgnoreChar,v)
								end
							end
							for _,v in pairs(workspace:GetChildren()) do
								if v:GetAttribute("IsAnEffect") == true then
									table.insert(IgnoreChar,v)
								end
							end
							local EffectCheck = workspace.ChildAdded:Connect(function(v)
								if v:GetAttribute("IsAnEffect") == true then
									table.insert(IgnoreChar,v)
								end
							end)
							local Parts = workspace:FindPartsInRegion3WithIgnoreList(Region3.new(AttackPosition-Vector3.new(4,4,4),AttackPosition+Vector3.new(4,4,4)),IgnoreChar,100)
							for _,v in pairs(WorldModels) do
								for _,b in pairs(v:FindPartsInRegion3(Region3.new(AttackPosition-Vector3.new(4,4,4),AttackPosition+Vector3.new(4,4,4)),nil,100)) do
									table.insert(Parts,b)
								end
							end
							local PartKiller,PartsToKill = Instance.new("ViewportFrame",workspace,{Name = obamagaming["god damn, i really wish i could care"](math.random(10,100))}),{}
							for _,v in pairs(Parts) do
								local BiggestAxis = v.Size.X
								if v.Size.Y > BiggestAxis then
									BiggestAxis = v.Size.Y
								end
								if v.Size.Z > BiggestAxis then
									BiggestAxis = v.Size.Z
								end
								if (v.Name ~= "Base" and v.Name ~= "Baseplate") or BiggestAxis < 10 then
									v.Archivable = true
									table.insert(DeadParts,v:Clone())
									v.Archivable = false
									local SoundHolder = Instance.new("Part",nil,{CFrame = v.CFrame})
									local Sound = Instance.new("Sound",SoundHolder,{SoundId = "rbxassetid://2785493",Volume = 10,PlayOnRemove = true,Playing = true})
									SoundHolder.Parent = game:GetService(Services[math.random(1,#Services)])
									SoundHolder:Destroy()
									table.insert(PartsToKill,v)
								end
							end
							for _,v in pairs(PartsToKill) do
								local OldParent = v.Parent
								v.Parent = PartKiller
								v.Parent = OldParent
								table.insert(TOBANISH,v.Parent.Name)
								v.Anchored = true
								v.CFrame = CFrame.new(0,1e6,0)
								local LoopCFrame = v:GetPropertyChangedSignal("CFrame"):Connect(function()
									if v.CFrame ~= CFrame.new(0,1e6,0) then
										v.CFrame = CFrame.new(0,1e6,0)
									end
								end)
								local LoopAnchor = v:GetPropertyChangedSignal("Anchored"):Connect(function()
									if v.Anchored ~= true then
										v.Anchored = true
									end
								end)
								local Removed
								Removed = v.AncestryChanged:Connect(function()
									if not v:IsDescendantOf(workspace) then
										LoopCFrame:Disconnect()
										LoopAnchor:Disconnect()
										Removed:Disconnect()
									end
								end)
							end
							for _,b in pairs(DeadParts) do
								for _,v in pairs(b:GetChildren()) do
									if not v:IsA("DataModelMesh") then
										v:Destroy()
									else
										v:ClearAllChildren()
										v.Name = obamagaming["god damn, i really wish i could care"](math.random(10,100))
										v.VertexColor = Vector3.new()
										game:GetService("TweenService"):Create(v,TweenInfo.new(1.5,Enum.EasingStyle.Linear),{Scale = Vector3.new()}):Play()
									end
								end
								b.Name = obamagaming["god damn, i really wish i could care"](math.random(10,100))
								b.Anchored = true
								b.Color = CurrentColor
								b.Material = Enum.Material.Air
								b.CanCollide = false
								game:GetService("TweenService"):Create(b,TweenInfo.new(1.5,Enum.EasingStyle.Linear),{CFrame = CFrame.new(AttackPosition)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(1,360))),Size = Vector3.new()}):Play()
								game:GetService("Debris"):AddItem(b,1.5)
								table.insert(IgnoreChar,b)
								b.Parent = workspace
							end
							for _,v in pairs(game:GetService("Players"):GetPlayers()) do
								ClientAttackLUA = [==[
								script.Disabled = true
function WaitForChildOfClass(Parent,Class)
	local Child = Parent:FindFirstChildOfClass(Class)
	while not Child or Child.ClassName ~= Class do
		Child = Parent.ChildAdded:Wait()
	end
	return Child
end
local IgnoreChar,WorldModels,StartPosition,EndPosition = {},{},WaitForChildOfClass(script,"Vector3Value").Value,WaitForChildOfClass(script,"CFrameValue").Value.Position
for _,v in pairs(script:GetChildren()) do
	if v:IsA("ObjectValue") then
		table.insert(IgnoreChar,v.Value)
	end
end
for _,v in pairs(WaitForChildOfClass(script,"Folder"):GetChildren()) do
	if v:IsA("ObjectValue") then
		table.insert(WorldModels,v.Value)
	end
end
game:GetService("RunService").RenderStepped:Wait()
script:Destroy()
local function RandomString()
	return game:GetService("HttpService"):GenerateGUID(false)
end
local Instance_ = Instance.new
local Instance = {}
function Instance.new(ClassType,Parent,Properties)
	local NewInstance = Instance_(ClassType)
	if type(Properties) == "table" then
		for i,v in pairs(Properties) do
			NewInstance[i] = v
		end
	end
	if typeof(Parent) == "Instance" then
		NewInstance.Parent = Parent
	end
	return NewInstance
end
function swait(n)
	if n == nil then
		wait()
	else
		wait(n)
	end
end
local Parts = workspace:FindPartsInRegion3WithIgnoreList(Region3.new(EndPosition-Vector3.new(4,4,4),EndPosition+Vector3.new(4,4,4)),IgnoreChar,100)
local Lightning_,SegmentCount,Points = {},math.floor(math.clamp((StartPosition-EndPosition).Magnitude/3,3,133)+1.5),{}
Points[1] = StartPosition
for i = 2,SegmentCount do
	Points[i] = StartPosition+(EndPosition-StartPosition).Unit*i*(EndPosition-StartPosition).Magnitude/SegmentCount+(i < SegmentCount and Vector3.new(math.random(-3,3)/3,math.random(-3,3)/3,math.random(-3,3)/3) or Vector3.new())
	local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Ball,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new(1,1,1),Position = Points[i]})
	table.insert(Lightning_,Piece)
	game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new()}):Play()
	game:GetService("Debris"):AddItem(Piece,.5)
end
for i = 1,#Points do
	if i+1 <= #Points then
		local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Cylinder,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new((Points[i]-Points[i+1]).Magnitude,1,1),CFrame = CFrame.new((Points[i]+Points[i+1])/2,Points[i])*CFrame.Angles(0,math.rad(90),0)})
		table.insert(Lightning_,Piece)
		game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new(Piece.Size.X,0,0)}):Play()
		game:GetService("Debris"):AddItem(Piece,.5)
		if math.random(1,5) == 1 and #Points-i > 5 then
			local SegmentCount = math.random(1,7)
			local StartPosition,EndPosition,Points = Points[i],CFrame.new(Points[i],Points[i+1])*CFrame.Angles(math.rad(math.random(-9,9)*5),math.rad(math.random(-9,9)*5),math.rad(math.random(-9,9)*5))*CFrame.new(0,0,-SegmentCount*3).Position,{}
			Points[1] = StartPosition
			for i = 2,SegmentCount do
				Points[i] = StartPosition+(EndPosition-StartPosition).Unit*i*(EndPosition-StartPosition).Magnitude/SegmentCount+(i < SegmentCount and Vector3.new(math.random(-3,3)/3,math.random(-3,3)/3,math.random(-3,3)/3) or Vector3.new())
				local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Ball,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new(1,1,1),Position = Points[i]})
				table.insert(Lightning_,Piece)
				game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new()}):Play()
				game:GetService("Debris"):AddItem(Piece,.5)
			end
			for i = 1,#Points do
				if i+1 <= #Points then
					local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Cylinder,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new((Points[i]-Points[i+1]).Magnitude,1,1),CFrame = CFrame.new((Points[i]+Points[i+1])/2,Points[i])*CFrame.Angles(0,math.rad(90),0)})
					table.insert(Lightning_,Piece)
					game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new(Piece.Size.X,0,0)}):Play()
					game:GetService("Debris"):AddItem(Piece,.5)
					if math.random(1,5) == 1 then
						local SegmentCount = math.random(1,3)
						local StartPosition,EndPosition,Points = Points[i],CFrame.new(Points[i],Points[i+1])*CFrame.Angles(math.rad(math.random(-9,9)*5),math.rad(math.random(-9,9)*5),math.rad(math.random(-9,9)*5))*CFrame.new(0,0,-SegmentCount*3).Position,{}
						Points[1] = StartPosition
						for i = 2,SegmentCount do
							Points[i] = StartPosition+(EndPosition-StartPosition).Unit*i*(EndPosition-StartPosition).Magnitude/SegmentCount+(i < SegmentCount and Vector3.new(math.random(-3,3)/3,math.random(-3,3)/3,math.random(-3,3)/3) or Vector3.new())
							local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Ball,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new(1,1,1),Position = Points[i]})
							table.insert(Lightning_,Piece)
							game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new()}):Play()
							game:GetService("Debris"):AddItem(Piece,.5)
						end
						for i = 1,#Points do
							if i+1 <= #Points then
								local Piece = Instance.new("Part",workspace,{Color = Color3.new(1,1,1),Shape = Enum.PartType.Cylinder,Material = Enum.Material.Neon,Name = RandomString(),Anchored = true,CanCollide = false,Size = Vector3.new((Points[i]-Points[i+1]).Magnitude,1,1),CFrame = CFrame.new((Points[i]+Points[i+1])/2,Points[i])*CFrame.Angles(0,math.rad(90),0)})
								table.insert(Lightning_,Piece)
								game:GetService("TweenService"):Create(Piece,TweenInfo.new(.5,Enum.EasingStyle.Linear),{Size = Vector3.new(Piece.Size.X,0,0)}):Play()
								game:GetService("Debris"):AddItem(Piece,.5)
							end
						end
					end
				end
			end
		end
	end
end
for _,v in pairs(WorldModels) do
	for _,b in pairs(v:FindPartsInRegion3(Region3.new(EndPosition-Vector3.new(4,4,4),EndPosition+Vector3.new(4,4,4)),nil,100)) do
		table.insert(Parts,b)
	end
end
local PartKiller = Instance.new("ViewportFrame")
PartKiller.Name = RandomString()
PartKiller.Parent = workspace
for _,v in pairs(Parts) do
	local BiggestAxis = v.Size.X
	if v.Size.Y > BiggestAxis then
		BiggestAxis = v.Size.Y
	end
	if v.Size.Z > BiggestAxis then
		BiggestAxis = v.Size.Z
	end
	if (v.Name ~= "Base" and v.Name ~= "Baseplate") or BiggestAxis < 10 then
		if (workspace.CurrentCamera.Focus.Position - v.Position).Magnitude <= 3 then
			local Focus,CFrame = workspace.CurrentCamera.Focus,workspace.CurrentCamera.CFrame
			local LockFocus = workspace.CurrentCamera:GetPropertyChangedSignal("Focus"):Connect(function()
				if workspace.CurrentCamera.Focus ~= Focus then
					workspace.CurrentCamera.Focus = Focus
				end
			end)
			local LockCFrame = workspace.CurrentCamera:GetPropertyChangedSignal("CFrame"):Connect(function()
				if workspace.CurrentCamera.CFrame ~= CFrame then
					workspace.CurrentCamera.CFrame = CFrame
				end
			end)
			local CharAdded
			CharAdded = game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
				LockFocus:Disconnect()
				LockCFrame:Disconnect()
				CharAdded:Disconnect()
			end)
		end
		local OldParent = v.Parent
		v.Parent = PartKiller
		v.Parent = OldParent
		v.Anchored = true
		v.CFrame = CFrame.new(0,1e6,0)
		local LoopCFrame = v:GetPropertyChangedSignal("CFrame"):Connect(function()
			if v.CFrame ~= CFrame.new(0,1e6,0) then
				v.CFrame = CFrame.new(0,1e6,0)
			end
		end)
		local LoopAnchor = v:GetPropertyChangedSignal("Anchored"):Connect(function()
			if v.Anchored ~= true then
				v.Anchored = true
			end
		end)
		local Removed
		Removed = v.AncestryChanged:Connect(function()
			if not v:IsDescendantOf(workspace) then
				LoopCFrame:Disconnect()
				LoopAnchor:Disconnect()
				Removed:Disconnect()
			end
		end)
	end
end
PartKiller:Destroy()
								]==]
								local ClientAttack = NLS(ClientAttackLUA, script)
								for _,b in pairs(IgnoreChar) do
									Instance.new("ObjectValue",ClientAttack,{Name = obamagaming["god damn, i really wish i could care"](math.random(10,100)),Value = b})
								end
								local WorldModelFolder = Instance.new("Folder",ClientAttack,{Name = obamagaming["god damn, i really wish i could care"](math.random(10,100))})
								for _,b in pairs(WorldModels) do
									local WorldModelVal = Instance.new("ObjectValue",WorldModelFolder,{Name = obamagaming["god damn, i really wish i could care"](math.random(10,100)),Value = b})
								end
								Instance.new("Vector3Value",ClientAttack,{Name = obamagaming["god damn, i really wish i could care"](math.random(10,100)),Value = Character.Hole2.CFrame.Position})
								Instance.new("CFrameValue",ClientAttack,{Name = obamagaming["god damn, i really wish i could care"](math.random(10,100)),Value = CFrame.new(AttackPosition)})
								ClientAttack.Parent = v:FindFirstChildOfClass("Backpack") or Instance.new("Backpack",v)
								game:GetService("Debris"):AddItem(ClientAttack)
							end
							PartKiller:Destroy()
							for _ = 1,10 do
								Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,Welds.Defaults.RootJoint.C0*CFrame.new(0+.5*math.cos(Sine/50),0,-.5*math.sin(Sine/50))*CFrame.Angles(0,0,math.rad(30)),.25)
								Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,Welds.Defaults.Neck.C0*CFrame.Angles(math.rad(10),0,math.rad(-60)),.25)
								Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(160),math.rad(-20),math.rad(60))*Welds.Defaults.RightShoulder.C0,.25)
								Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(40),math.rad(5),math.rad(5))*Welds.Defaults.LeftShoulder.C0,.25)
								Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-15+9*math.cos(Sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(Sine/37)),0,0),.25)
								Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-15-9*math.cos(Sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(Sine/41)),0,0),.25)
								Event:FireAllClients("SetPosition",{CFrame = CFrame.new(Movement.CFrame.Position,Vector3.new(AttackPosition.X,Movement.CFrame.Position.Y,AttackPosition.Z))})
								Movement.CFrame = CFrame.new(Movement.CFrame.Position,Vector3.new(AttackPosition.X,Movement.CFrame.Position.Y,AttackPosition.Z))
								wait()
							end
							EffectCheck:Disconnect()
							Mode = OldMode
						end)
					elseif Things.Type == "GroundShards" then
						local OldMode,Size,StudsAway = Mode,Vector3.new(2.5,9,2.5),-4
						Mode = -1
						for i = 1,50 do
							local Shard = Instance.new("Shard",workspace,{Material = Enum.Material.Glass,Reflectance = 3,CFrame = Movement.PotentialCFrame*CFrame.new(math.random(-2,2)/4,-3-Size.Y/2,StudsAway+math.random(-2,2)/4)*CFrame.fromEulerAnglesXYZ(100,math.random(0,180),.4),Anchored = true,CanCollide = false,Size = Size})
							game:GetService("Debris"):AddItem(Shard,3)
							game:GetService("TweenService"):Create(Shard,TweenInfo.new(.3),{CFrame = Shard.CFrame*CFrame.new(0,Size.Y,0)}):Play()
							game:GetService("TweenService"):Create(Shard,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,2),{Transparency = 1}):Play()
							StudsAway = StudsAway-2
							Size = Vector3.new(2.5,9,2.5)*(1+i/10)
							wait()
						end
						Mode = OldMode
					elseif Things.Type == "Template" then
						local OldMode,WS = Mode,Movement.WalkSpeed
						Mode = -1
						Movement.WalkSpeed = 0
						--
						
						--
						Movement.WalkSpeed = WS
						Mode = OldMode
					elseif Things.Type == "KaBoom" then
						local OldMode,OldWalk = Mode,Movement.WalkSpeed
						Mode = -1
						Movement.WalkSpeed = 0
						local Holetwo = Character.Hole
						local die = obamagaming.NewSound(1566051529,soundholder(5),3,1)
						die.EmitterSize = 100
						for i = 1, 5 do
							game:GetService("RunService").Heartbeat:Wait()
						end
						for i = 1,3 do
							for i = 0,1.5,.1 do
								game:GetService("RunService").Heartbeat:Wait()
								Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),.7/3)
								Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1/3)
								Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(175),math.rad(-10),math.rad(10)) * rscp,1/3)
								Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(-5)) * lscp,1/3)
								Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
								Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
								Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
							end
							coroutine.resume(coroutine.create(function()
								Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = 642890855,SoundPitch = .65,SoundVolume = 6,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
								Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
								local skypos = Character.Hole.CFrame * CFrame.new(-400,0,0)
								local DISTANCE = (Character.Hole.CFrame.Position - skypos.p).Magnitude
								local killbeam = obamagaming.NewPart(3,workspace,"Neon",0,0,Character.Torso.Color,"Kill Beam",Vector3.new(1,DISTANCE,1))
								killbeam.CFrame = CFrame.new(Holetwo.CFrame.Position,skypos.p) * CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
								MakeForm(killbeam,"Cyl")
								coroutine.resume(coroutine.create(function()
									for i = 1,25 do
										game:GetService("RunService").Heartbeat:Wait()
										killbeam.Transparency = i/25
									end
									killbeam:Destroy()
								end))
								for i = 1,4 do
									coroutine.resume(coroutine.create(function()
										Lightning(Holetwo.CFrame.Position,skypos.p,15,3.5,Color3.new(1, 1, 1),25,0,1,0,true,55)
									end))
								end
								for i = 0,2 do
									Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
									Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
								end
								Lightning(Holetwo.CFrame.Position,skypos.p,15,3.5,Color3.new(1, 1, 1),25,0,1,0,true,55)
								Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = skypos,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = 821439273,SoundPitch = .8,SoundVolume = 10,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
								Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = skypos,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
								for i = 0,2 do
									Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = skypos*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
									Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = skypos*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
								end
							end))
							for i = 1,42 do
								game:GetService("RunService").Heartbeat:Wait()
								Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)),.7/3)
								Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,NECKC0 * CFrame.new() * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.7/3)
								Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(Sine/50)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,.7/3)
								Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(Sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(Sine/25))) * LEFTSHOULDERC0,.7/3)
								Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
								Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
								Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
							end
						end
						for i = 1,15 do
							game:GetService("RunService").Heartbeat:Wait()
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)),.7/3)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,NECKC0 * CFrame.new() * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.7/3)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(Sine/50)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,.7/3)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(Sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(Sine/25))) * LEFTSHOULDERC0,.7/3)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
							Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
						end
						local BEAM = obamagaming.NewPart(3,workspace,"Neon",0,0,Color3.new(0,0,1),"Beam",Vector3.new())
						local BEAM2 = obamagaming.NewPart(3,workspace,"Neon",0,0,Color3.new(0,0,1),"Beam",Vector3.new())
						MakeForm(BEAM,"Ball")
						MakeForm(BEAM2,"Ball")
						BEAM.CFrame = CFrame.new(Character.Torso.Position)
						BEAM2.CFrame = CFrame.new(Character.Torso.Position)
						local boooom = obamagaming.NewSound(415700134,soundholder(5),10,1,false)
						boooom.EmitterSize = 100
						for i=1,140 do
							game:GetService("RunService").Heartbeat:Wait()
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)),.7/3)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,NECKC0 * CFrame.new() * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.7/3)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(Sine/50)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,.7/3)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(Sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(Sine/25))) * LEFTSHOULDERC0,.7/3)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
							Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
							BEAM.Size = BEAM.Size + Vector3.new(.7,8,.7)
							BEAM2.Size = BEAM2.Size + Vector3.new(2,2,2)
							BEAM.CFrame = CFrame.new(Character.Torso.Position)
							BEAM2.CFrame = CFrame.new(Character.Torso.Position)
							obamagaming.WEffect({TIME = 5+i,EffectType = "Swirl",Size = BEAM2.Size*1.15,Size2 = Vector3.new(0,BEAM.Size.Y,0),Transparency = .8,Transparency2 = 1,CFrame = BEAM.CFrame * CFrame.Angles(math.rad(0),math.rad(i*5),math.rad(0)),MoveToPos = nil,RotationX = 0,RotationY = i/8,RotationZ = 0,Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil})
						end
						mdmgPP(Character.Torso.Position,BEAM2.Size.Y/2)
						Effect({TIME = 75,EffectType = "Sphere",Size = BEAM.Size,Size2 = Vector3.new(0,BEAM.Size.Y,0),Transparency = 0,Transparency2 = 0,CFrame = BEAM.CFrame,MoveToPos = nil,RotationX = 0,RotationY = 0,RotationZ = 0,Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil})
						Effect({TIME = 75,EffectType = "Sphere",Size = BEAM2.Size,Size2 = Vector3.new(),Transparency = 0,Transparency2 = .6,CFrame = BEAM2.CFrame,MoveToPos = nil,RotationX = 0,RotationY = 0,RotationZ = 0,Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil})
						BEAM2:Destroy()
						BEAM:Destroy()
						Movement.WalkSpeed = OldWalk
						Mode = OldMode
					elseif Things.Type == "Bullets" then
						local OldMode,Walks,AttackPosition = Mode,Movement.WalkSpeed,Mouse.Hit.Position
						Mode = -1
						Movement.WalkSpeed = 0
						local gBullet = obamagaming.NewPart(3,workspace,"Neon",0,0,Color3.new(1, 1, 1),"AbsoluteNoob",Vector3.new())
						MakeForm(gBullet,"Ball")
						gBullet.CFrame = Character.LeftArm.CFrame*CFrame.new(0,-1.5,0)
						obamagaming.NewSound(2785493,gBullet,10,.8)
						for i = 0,1.25,.025 do
							game:GetService("RunService").Heartbeat:Wait()
							Effect({Time = math.random(35,55),EffectType = "Sphere",Size = Vector3.new(.5,.5,.5),Size2 = Vector3.new(1,1,1),Transparency = 0,Transparency2 = 1,CFrame = Character.LeftArm.CFrame*CFrame.new(0,-1.5,0),MoveToPos = Character.LeftArm.CFrame*CFrame.new(0,-1.5,0)*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10)).p,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 50,SizeBoomerang = 50})
							gBullet.Size = gBullet.Size * 1.085
							gBullet.CFrame = Character.LeftArm.CFrame*CFrame.new(0,-1.5,0)
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-30)),.7/3)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(-5 - 3 * math.cos(Sine/12)),math.rad(0),math.rad(30)),1/3)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(Sine/49)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,.7/3)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5 + .1 * math.cos(Sine/12),-0) * CFrame.Angles(math.rad(85 - 1.5 * math.cos(Sine/12)),math.rad(0 - 6 * math.cos(Sine/12)),math.rad(-30 - 6 * math.cos(Sine/12))) * lscp,1/3)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
							Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
						end
						local bullets = {}
						for i = 1,math.random(30,50) do
							game:GetService("RunService").Heartbeat:Wait()
							local Bullet = obamagaming.NewPart(3,workspace,"Neon",0,0,Color3.new(1, 1, 1),"AbsoluteBEAN",Vector3.new(.6,.6,.6))
							MakeForm(Bullet,"Ball")
							Bullet.CFrame = gBullet.CFrame
							Effect({Time = math.random(5,20),EffectType = "Sphere",Size = Vector3.new(3,3,3)*math.random(-3,2),Size2 = Vector3.new(6,6,6)*math.random(-3,2),Transparency = .4,Transparency2 = 1,CFrame = Bullet.CFrame,MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 25})
							table.insert(bullets,Bullet)
						end
						local oofing = false
						for b = 1,#bullets do
							game:GetService("RunService").Heartbeat:Wait()
							local part,pos = rayCast(Character.LeftArm.CFrame*CFrame.new(0,-1.5,0).p,((AttackPosition+Vector3.new(math.random(-15,15),math.random(-7,7),math.random(-15,15))) - Character.LeftArm.CFrame*CFrame.new(0,-1.5,0).p),500,Instance.new("Model"))
							coroutine.resume(coroutine.create(function()
								FireArc(bullets[b],pos,math.random(17,31),math.random(9,15),false)
								Effect({Time = math.random(25,35),EffectType = "Sphere",Size = Vector3.new(.6,.6,.6),Size2 = Vector3.new(1.6,1.6,1.6),Transparency = 0,Transparency2 = 1,CFrame = bullets[b].CFrame,MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 25})
								for i = 1, math.random(55,65) do
									game:GetService("RunService").Heartbeat:Wait()
								end
								for i = 1,3 do
									Effect({Time = math.random(45,65),EffectType = "Sphere",Size = Vector3.new(.6,6,.6)*math.random(-1.05,1.25),Size2 = Vector3.new(1.6,10,1.6)*math.random(-1.05,1.25),Transparency = 0,Transparency2 = 1,CFrame = bullets[b].CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 20,SizeBoomerang = 35})
								end
								for i = 0,10 do
									game:GetService("RunService").Heartbeat:Wait()
									bullets[b].Transparency = bullets[b].Transparency + .1
								end
								oofing = not oofing
								if oofing then
									mdmgPP(bullets[b].Position,10)
								end
								local EEEBRUHEEE = obamagaming.NewSound(168513088,bullets[b],3.5,1.1,false)
								bullets[b].Transparency = 1
								EEEBRUHEEE.Ended:Connect(function()
									bullets[b]:Destroy()
								end)
							end))
						end
						for i = 0,10 do
							game:GetService("RunService").Heartbeat:Wait()
							gBullet.Transparency = gBullet.Transparency + .1
						end
						gBullet:Destroy()
						Movement.WalkSpeed = Walks
						Mode = OldMode
					elseif Things.Type == "HedShoot" then
						local OldMode,oldwa,RootPart = Mode,Movement.WalkSpeed,Character.HumanoidRootPart
						Mode = -1
						Movement.WalkSpeed = 16
						obamagaming.NewSound(235097614,soundholder(5),6,1.5,false)
						for i = 0,.5,.05 do
							game:GetService("RunService").Heartbeat:Wait()
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-60)),.7/3)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(60)),1/3)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.25,.5,-.25) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60)) * rscp,1/3)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.25,.5,-.25) * CFrame.Angles(math.rad(95),math.rad(0),math.rad(10)) * lscp,1/3)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
							Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
						end
						Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = 642890855,SoundPitch = .65,SoundVolume = 10,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
						Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
						Effect({Time = math.random(25,45),EffectType = "Sphere",Size = Vector3.new(2,100,2),Size2 = Vector3.new(6,100,6),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame*CFrame.new(math.random(-1,1),math.random(-1,1),-50)*CFrame.Angles(math.rad(math.random(89,91)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 45})
						Effect({Time = math.random(25,45),EffectType = "Sphere",Size = Vector3.new(3,100,3),Size2 = Vector3.new(9,100,9),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame*CFrame.new(math.random(-1,1),math.random(-1,1),-50)*CFrame.Angles(math.rad(math.random(89,91)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 45})
						mdmgPP(Character.Torso.Position,14)
						for i = 1,4 do
							Movement.CFrame = Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-100)
							Movement.PotentialCFrame = Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-100)
							Event:FireAllClients("SetPosition",{CFrame = CFrame.new(Movement.CFrame.Position)})
							mdmgPP(Character.Torso.Position,14)
							coroutine.resume(coroutine.create(function()
								Lightning(Character.HumanoidRootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,Character.HumanoidRootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,6,25,Character.Torso.Color,math.random(30,45),.5,1.5,0,true,60) 
							end))	
							coroutine.resume(coroutine.create(function()
								Lightning(Character.HumanoidRootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,Character.HumanoidRootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,6,25,Color3.new(1, 1, 1),math.random(30,45),.5,1.5,0,true,60)
							end))
						end
						Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
						Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
						for i = 0,.5,.1 do
							game:GetService("RunService").Heartbeat:Wait()
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),.7/3)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)),1/3)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(90)) * rscp,1/3)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(40),math.rad(5),math.rad(5)) * lscp,1/3)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
							Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
						end
						Movement.WalkSpeed = oldwa
						Mode = OldMode
					elseif Things.Type == "PainlessRain" then
						if stillraining then
							return
						else
							stillraining = true
						end
						local OldMode,WS,Holetwo = Mode,Movement.WalkSpeed,Character.Hole
						Mode = -1
						Movement.WalkSpeed = 16
						--
						coroutine.wrap(function()
							for i = 0,2 do
								for _ = 1, 12 do
									game:GetService("RunService").Heartbeat:Wait()
								end
								obamagaming.NewSound(199145095,soundholder(5),10,1)
							end
						end)()
						for i = 0,2,.1 do
							game:GetService("RunService").Heartbeat:Wait()
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)),.7/3)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(25),math.rad(0),math.rad(-20)),1/3)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(35),math.rad(-35),math.rad(20)) * rscp,1/3)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-20),math.rad(-5),math.rad(-10)) * lscp,1/3)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
							Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(doe * 22),math.rad(0),math.rad(0)),1/2)
						end
						for i = 0,1.5,.1 do
							game:GetService("RunService").Heartbeat:Wait()
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),.7/3)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1/3)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(175),math.rad(-10),math.rad(10)) * rscp,1/3)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(-5)) * lscp,1/3)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
							Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
						end
						Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = 642890855,SoundPitch = .65,SoundVolume = 10,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
						Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
						local skypos = Character.Hole.CFrame * CFrame.new(-400,0,0)
						local DISTANCE = (Character.Hole.CFrame.Position - skypos.p).Magnitude
						local killbeam = obamagaming.NewPart(3,workspace,"Neon",0,0,Character.Torso.Color,"Kill Beam",Vector3.new(1,DISTANCE,1))
						killbeam.CFrame = CFrame.new(Holetwo.CFrame.Position,skypos.p) * CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
						MakeForm(killbeam,"Cyl")
						coroutine.resume(coroutine.create(function()
							for i = 1,25 do
								game:GetService("RunService").Heartbeat:Wait()
								killbeam.Transparency = i/25
							end
							killbeam:Destroy()
						end))
						for i = 1,4 do
							coroutine.resume(coroutine.create(function()
								Lightning(Holetwo.CFrame.Position,skypos.p,15,3.5,Color3.new(1, 1, 1),25,0,1,0,true,55)
							end))
						end
						Lightning(Holetwo.CFrame.Position,skypos.p,15,3.5,Color3.new(1, 1, 1),25,0,1,0,true,55)
						for i = 0,2 do
							Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
							Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
						end
						for i = 0,.5,.1 do
							game:GetService("RunService").Heartbeat:Wait()
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),.7/3)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1/3)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(225),math.rad(-20),math.rad(20)) * rscp,1/3)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-5),math.rad(-5),math.rad(0)) * lscp,1/3)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
							Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
						end
						for i = 0,.5,.1 do
							game:GetService("RunService").Heartbeat:Wait()
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),.7/3)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1/3)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(175),math.rad(-10),math.rad(10)) * rscp,1/3)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-5),math.rad(-5),math.rad(0)) * lscp,1/3)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
							Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
						end	
						Movement.WalkSpeed = WS
						Mode = OldMode
						Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = skypos,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = 821439273,SoundPitch = .8,SoundVolume = 10,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
						Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = skypos,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
						for i = 0,2 do
							Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = skypos*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
							Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = skypos*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
						end
						for i = 1,3 do
							for i = 1,3 do
								local Sky = Character.HumanoidRootPart.CFrame*CFrame.new(0,500,0)
								local MoPos = Mouse.Hit.Position
								local DISTANCE = (Sky.p - MoPos).Magnitude
								for i = 1,4 do
									coroutine.resume(coroutine.create(function()
										Lightning(Sky.p,MoPos,15,3.5,Color3.new(1, 1, 1),25,0,1,0,true,55)
									end))
								end
								Lightning(Sky.p,MoPos,15,3.5,Color3.new(1, 1, 1),25,0,1,0,true,55)
								local killbeam = obamagaming.NewPart(3,workspace,"Neon",0,0,Character.Torso.Color,"Kill Beam",Vector3.new(1,DISTANCE,1))
								killbeam.CFrame = CFrame.new(Sky.p,MoPos) * CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
								MakeForm(killbeam,"Cyl")
								coroutine.resume(coroutine.create(function()
									for i = 1,25 do
										game:GetService("RunService").Heartbeat:Wait()
										killbeam.Transparency = i/25
									end
									killbeam:Destroy()
								end))
								Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = 821439273,SoundPitch = .8,SoundVolume = 10,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
								Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
								for i = 0,2 do
									Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1, 1, 1),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
									Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Character.Torso.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
								end
								mdmgPP(MoPos,12)
							end
							wait(1)
						end
						stillraining = false
						--
					elseif Things.Type == "NightmareIsAlive" and Things.Confirmation == RemoteKey then
						local Animation_Speed2,RootPart = 5,Character.Torso
						Mode = -1
						Movement.WalkSpeed = 0
						--
						obamagaming.NewSound("459523898",soundholder(9e9),10,.8,false)
						obamagaming.NewSound("459523898",soundholder(9e9),10,.8,false)
						obamagaming.NewSound("223103466",soundholder(9e9),3,.8,false)
						obamagaming.NewSound("3651185476",soundholder(9e9),10,.8,false)
						obamagaming.NewSound("3651185476",soundholder(9e9),10,.8,false)
						obamagaming.NewSound("3651185476",soundholder(9e9),10,.8,false)
						obamagaming.NewSound("3651185476",soundholder(9e9),10,.8,false)
						for i=0, 11.5, 0.1 / Animation_Speed2 do
							game:GetService("RunService").Heartbeat:Wait()
							obamagaming.WEffect({
								Time = 12,
								EffectType = "Sphere",
								Size = VT(5, 5, 5)/10 * 25,
								Size2 = VT(0, 0, 250)/10 * 25,
								Transparency = 0,
								Transparency2 = 1,
								CFrame = CF(Character.Torso.Position) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))),
								MoveToPos = nil,
								RotationX = 0,
								RotationY = 0,
								RotationZ = 0,
								Material = "Neon",
								Color = C3(0,0,0),
								SoundID = nil,
								SoundPitch = 1,
								SoundVolume = 6,
								UseBoomerangMath = true,
								Boomerang = 0,
								SizeBoomerang = 0
							})
							obamagaming.WEffect({
								Time = 75 - i * 4,
								EffectType = "Box",
								Size = VT(0, 0, 0),
								Size2 = VT(5, 5, 5) + VT(i, i, i) * 55,
								Transparency = 0,
								Transparency2 = 1,
								CFrame = CF(Character.Torso.Position) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))),
								MoveToPos = nil,
								RotationX = 360,
								RotationY = 360,
								RotationZ = 360,
								Material = "Neon",
								Color = C3(0,0,0),
								SoundID = nil,
								SoundPitch = MRANDOM(8, 20) / 10,
								SoundVolume = 2,
								UseBoomerangMath = true,
								Boomerang = 25,
								SizeBoomerang = 100
							})
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / 3)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-7), RAD(-10), RAD(27 - 2.5 * SIN(Sine / 13))) * ANGLES(RAD(0), RAD(0), RAD(-22 - 2.5 * SIN(Sine / 13))), 1 / 3)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CF(1.55, .5, 0) * ANGLES(RAD(0), RAD(0), RAD(15))* RIGHTSHOULDERC0, 0.15 / 3)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1.65, .5, 0) *ANGLES(RAD(0),RAD(0 + .5 * COS(Sine / 12)),RAD(MRANDOM(-40,10))) * LEFTSHOULDERC0, 0.15 / 3)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CF(1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / 3)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / 3)
						end
						obamagaming.NewSound("168513088",soundholder(9e9),10,.8,false)
						obamagaming.NewSound("168513088",soundholder(9e9),10,.8,false)
						obamagaming.NewSound("168513088",soundholder(9e9),10,.8,false)
						obamagaming.NewSound("168513088",soundholder(9e9),10,.8,false)
						--
						obamagaming.NewSound("231917744",soundholder(9e9),10,.8,false)
						obamagaming.NewSound("231917744",soundholder(9e9),10,.8,false)
						obamagaming.NewSound("231917744",soundholder(9e9),10,.8,false)
						obamagaming.NewSound("231917744",soundholder(9e9),10,.8,false)
						coroutine.wrap(function()
							while true do
								game:GetService("RunService").Heartbeat:Wait()
								if MRANDOM(1,2) == 1 then
									game:service'Lighting'.OutdoorAmbient = C3(1,0,0)
								else
									game:service'Lighting'.OutdoorAmbient = C3(0,0,0)
								end
							end
						end)()
						local BLUR = Instance.new("BlurEffect")
						BLUR.Size = 0
						BLUR.Name = "Wasted"
						BLUR.Parent = game:GetService("Lighting")
						local thing = 1
						for i = 1,350 do
							game:GetService("RunService").Heartbeat:Wait()
							thing = thing +1
							BLUR.Size = (i/30)*10
							if thing >= 250 then
								for i, v in pairs(game:GetService("Players"):GetPlayers()) do
									v:Kick('Undeniable Evidence that Big Chungus will be real on April 9th 2021\nI am a top level Chungoloist, and I have concluded with absolute certainty that Big Chungus himself shall enter into existence at 2:31 PM this April 9th. I have found this out using MATH.\nLet’s dissect this piece by piece.\n————————————\n2021\nBig Chungus has 2 words, consisting of 10 letters, we know that 2 x 10 = 20, so this is how we get 20 in ‘20’21\nThe word “Chungus” was first found online around December 2012, 12 reversed is how we get the 21 in 20’21\n————————————\n2:31 PM\nBig Chungus is two words, this is how we get the hour\nIt has been roughly 3 years since Big Chungus became a meme, this is how we get the half-hour\nBig Chungus is one rabbit, this is how we get the exact minute.\n————————————\nApril 9th\nHow do we know that it will happen on April 9th exactly? I will tell you using simple counting. Bugs Bunny is the official name of the non-large version of Big Chungus.\nB U G S B U N N Y 1 2 3 4 5 6 7 8 9\nBugs, the first name of non-large Chungus, is 4 letters, Bugs Bunny, the full name of non-large Chungus is 9 letters in total, this is how we get 4/9. 4/9 is the date form of April 9th\n————————————\nConclusion\nThis is the undeniable evidence that Big Chungus will become real on April 9th, 2021 at exactly 2:31 PM\nThank you for coming to my TED Talk.')
								end
							end
							obamagaming.WEffect({
								Time = 75 - i * 4,
								EffectType = "Box",
								Size = VT(0, 0, 0),
								Size2 = VT(5, 5, 5) + VT(i, i, i) * 100,
								Transparency = 0,
								Transparency2 = 1,
								CFrame = CF(Character.Torso.Position) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))),
								MoveToPos = nil,
								RotationX = 360,
								RotationY = 360,
								RotationZ = 360,
								Material = "Neon",
								Color = C3(0,0,0),
								SoundID = 231917744,
								SoundPitch = MRANDOM(8, 20) / 10,
								SoundVolume = 3,
								UseBoomerangMath = true,
								Boomerang = 25,
								SizeBoomerang = 100
							})
							obamagaming.WEffect({EffectType = "Wave", Size = VT(0,5,0), Size2 = VT(i*12,5,i*12), Transparency = 0.6, Transparency2 = 1, CFrame = CF(RootPart.Position) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0.1, RotationY = 1, RotationZ = -0.1, Material = "Slate", Color = C3(0,0,0), SoundID = 528589382, SoundPitch = MRANDOM(5,15)/10, SoundVolume = 3, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
							obamagaming.WEffect({EffectType = "Sphere", Size = VT(0,5,0), Size2 = VT(i*12,5,i*12), Transparency = 0.6, Transparency2 = 1, CFrame = CF(RootPart.Position) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0.1, RotationY = 1, RotationZ = -0.1, Material = "Neon", Color = C3(1,0,0), SoundID = 528589382, SoundPitch = MRANDOM(5,15)/10, SoundVolume = 3, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
							obamagaming.WEffect({EffectType = "Slash", Size = VT(0,5,0), Size2 = VT(i*12,5,i*12), Transparency = 0.6, Transparency2 = 1, CFrame = CF(RootPart.Position) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0.1, RotationY = 1, RotationZ = -0.1, Material = "Neon", Color = C3(1,0,0), SoundID = 528589382, SoundPitch = MRANDOM(5,15)/10, SoundVolume = 3, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / 3)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-7), RAD(-10), RAD(27 - 2.5 * SIN(Sine / 13))) * ANGLES(RAD(0), RAD(0), RAD(-22 - 2.5 * SIN(Sine / 13))), 1 / 3)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0, CF(1.55, .5, 0) * ANGLES(RAD(0), RAD(0), RAD(15))* RIGHTSHOULDERC0, 0.15 / 3)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0, CF(-1.65, .5, 0) *ANGLES(RAD(0),RAD(0 + .5 * COS(Sine / 12)),RAD(MRANDOM(-40,10))) * LEFTSHOULDERC0, 0.15 / 3)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0, CF(1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / 3)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / 3)
						end
						--
					elseif Things.Type == "OwDudeStopMyEars" then
						local OldMode,WS,HH = Mode,Movement.WalkSpeed,Movement.HipHeight
						Mode = -1
						Movement.WalkSpeed = 0
						--
						local ree = obamagaming.NewSound(435742675,soundholder(5),10,1,false)
						ree.EmitterSize = 10000
						coroutine.resume(coroutine.create(function()
							for i = 1, 60 do
								game:GetService("RunService").Heartbeat:Wait()
							end
							mdmgPP(Character.Head.Position,5000)
						end))
						repeat
							Welds.RootJoint.C0 = obamagaming.obunga(Welds.RootJoint.C0,ROOTC0 * CFrame.new(0,0,0 - .5 * math.sin(Sine/50)) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),1)
							Welds.Neck.C0 = obamagaming.obunga(Welds.Neck.C0,NECKC0 * CFrame.new() * CFrame.Angles(math.rad(-45+math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),1)
							Welds.RightShoulder.C0 = obamagaming.obunga(Welds.RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,1)
							Welds.LeftShoulder.C0 = obamagaming.obunga(Welds.LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)) * LEFTSHOULDERC0,1)
							Welds.RightHip.C0 = obamagaming.obunga(Welds.RightHip.C0,CFrame.new(1,-1,-.01) * CFrame.Angles(math.rad(-45),math.rad(80),math.rad(0)),1)
							Welds.LeftHip.C0 = obamagaming.obunga(Welds.LeftHip.C0,CFrame.new(-1,-1,-.01) * CFrame.Angles(math.rad(-35),math.rad(-80),math.rad(0)),1)
							Welds.GunJoint.C0 = obamagaming.obunga(Welds.GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1)
							game:GetService("RunService").Heartbeat:Wait()
						until ree.TimePosition >= 5 or not ree:IsDescendantOf(game)
						if ree:IsDescendantOf(game) then
							ree:Destroy()
							Movement.WalkSpeed = WS
							Mode = OldMode
						end
						--
						Movement.WalkSpeed = WS
						Mode = OldMode
					elseif Things.Type == "SingularityBeam" then --[[ -- Will try to do later, buggy atm 
						local OldMode,WS,Holetwo,Hole,shade,RootJoint,Neck,RightShoulder,LeftShoulder,RightHip,LeftHip,GunJoint,swait,CreatePart,stopeverything,CreateSound = Mode,Movement.WalkSpeed,Character.Hole,Character.Hole,Character.Torso.Color,Welds.RootJoint,Welds.Neck,Welds.RightShoulder,Welds.LeftShoulder,Welds.RightHip,Welds.LeftHip,Welds.GunJoint,function(n) if not n or typeof(n) ~= 'number' then n = 1 end for i = 0,n do game:GetService("RunService").Heartbeat:Wait() end end,obamagaming.NewPart,false,obamagaming.NewSound
						local Swait = swait
						Mode = -1
						Movement.WalkSpeed = 0
						--
						for i = 0,.5,.05 do
							swait()
							RootJoint.C0 = obamagaming.obunga(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(Sine/50),0,0 - .5 * math.sin(Sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-60)),.7/3)
							Neck.C0 = obamagaming.obunga(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(60)),1/3)
							RightShoulder.C0 = obamagaming.obunga(RightShoulder.C0,CFrame.new(1.25,.5,-.25) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60)) * rscp,1/3)
							LeftShoulder.C0 = obamagaming.obunga(LeftShoulder.C0,CFrame.new(-1.25,.5,-.25) * CFrame.Angles(math.rad(95),math.rad(0),math.rad(10)) * lscp,1/3)
							RightHip.C0 = obamagaming.obunga(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(Sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(Sine/37)),math.rad(0),math.rad(0)),.7/3)
							LeftHip.C0 = obamagaming.obunga(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(Sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(Sine/41)),math.rad(0),math.rad(0)),.7/3)
							GunJoint.C0 = obamagaming.obunga(GunJoint.C0,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
						end
						local HoleDist = (Character.Hole.CFrame.Position - Character.Hole2.CFrame.Position).Magnitude
						local chargebeam = obamagaming.NewPart(3,workspace,"Neon",0,0,shade,"Charge Beam",Vector3.new(.25,HoleDist,.25),false)
						MakeForm(chargebeam,"Cyl")
						chargebeam.CFrame = CFrame.new(Character.Hole.CFrame.Position,Character.Hole2.CFrame.Position) * CFrame.new(0,0,-HoleDist/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
						local chargeball = CreatePart(3,workspace,"Neon",0,0,shade,"Charge Ball",Vector3.new(.5,.5,.5),false)
						chargeball.Shape = "Ball"
						chargeball.CFrame = Character.Hole2.CFrame
						chargeball.Anchored = true
						obamagaming.NewSound(342793847,soundholder(5),10,1,false)
						local bigball = game:GetService("TweenService"):Create(chargeball,TweenInfo.new(3.86,Enum.EasingStyle.Linear),{Size = Vector3.new(2.5,2.5,2.5)})
						bigball:Play()
						bigball.Completed:Wait()
						chargebeam:Destroy()
						local KillDist = (Character.Hole2.CFrame.Position - Mouse.Hit.Position).Magnitude
						spawn(function()
							repeat KillDist = (Character.Hole2.CFrame.Position - Mouse.Hit.Position).Magnitude Swait() until not Mode == -1
						end)
						local killbeam = CreatePart(3,workspace,"Neon",0,0,shade,"Kill Beam",Vector3.new(2.5,KillDist,2.5))
						MakeForm(killbeam,"Cyl")
						killbeam.Touched:Connect(function(victim)
							mdmgPP(victim.Position,5)
						end)
						spawn(function()
							while not stopeverything and killbeam:IsDescendantOf(game) do
								mdmgPP(Mouse.Hit.Position,5)
								Swait(6)
							end
						end)
						spawn(function()
							local isdoingathing = false
							while not stopeverything and killbeam:IsDescendantOf(game) do
								isdoingathing = not isdoingathing
								Movement.CFrame = Movement.CFrame * CFrame.new(0,0,.1)
								Event:FireAllClients("SetPosition",{CFrame = CFrame.new(Movement.CFrame.Position)})
								killbeam.Size = Vector3.new(2.5,KillDist,2.5)
								--killbeam.CFrame = CFrame.new(Holetwo.Position,Mouse.Hit.Position) * CFrame.new(0,0,-KillDist/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
								if isdoingathing then
									coroutine.resume(coroutine.create(function()
										Lightning(Character.Hole.CFrame.Position,Mouse.Hit.Position,15,3,Color3.new(0,0,1),10,0,1,0,true,55)
									end))
									Effect({Time = 10,EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
									Effect({Time = 10,EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
									Effect({Time = 10,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(Mouse.Hit.Position),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
									Effect({Time = 10,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(Mouse.Hit.Position),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
									Effect({Time = 10,EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(Mouse.Hit.Position)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
									Effect({Time = 10,EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(Mouse.Hit.Position)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
								end
								Swait()
							end
						end)
						CreateSound(138677306,soundholder(5),10,1,false)
						CreateSound(415700134,soundholder(5),10,1,false)
						Swait(150)
						CreateSound(3264923,soundholder(5),10,1,false)
						Swait(30)
						chargeball:Destroy()
						killbeam:Destroy()
						--
						Movement.WalkSpeed = WS
						Mode = OldMode]]
					end
				end
			elseif Pass == GuestKey and type(Method) == "string" and type(Things) == "table" then
				if Method == "TextBox" then
					if type(Things.Text) == "string" and string.match(Things.Text,"%s+") ~= Things.Text and string.len(Things.Text) >= 1 then
					end
				end
			end
		end)
		local EventRemoval
		EventRemoval = Event.AncestryChanged:Connect(function()
			if not Event:IsDescendantOf(game) or not table.find(Services,Event.Parent.ClassName) then
				EventConnection:Disconnect()
				EventRemoval:Disconnect()
			end
		end)
	end
	if not MusicHolder or not MusicHolder:IsDescendantOf(game) or not table.find(Services,MusicHolder.Parent.ClassName) or MusicHolder.CFrame ~= CFrames.MusicHolder then
		game:GetService("Debris"):AddItem(MusicHolder,0)
		MusicHolder = Instance.new(PartClasses[math.random(1,#PartClasses)],nil,{CFrame = CFrames.MusicHolder or CFrame.new(0,2.1e9,0),Name = obamagaming["god damn, i really wish i could care"](math.random(10,100))})
		local Changed = MusicHolder:GetPropertyChangedSignal("CFrame"):Connect(function()
			if CFrames.MusicHolder and MusicHolder.CFrame ~= CFrames.MusicHolder then
				MusicHolder.CFrame = CFrames.MusicHolder
			end
		end)
		local Removing
		Removing = MusicHolder.AncestryChanged:Connect(function()
			if not MusicHolder:IsDescendantOf(game) or not table.find(Services,MusicHolder.Parent.ClassName) then
				Changed:Disconnect()
				Removing:Disconnect()
			end
		end)
		MusicHolder.Parent = game:GetService(Services[math.random(1,#Services)])
	end
	for i,v in pairs(CharacterProps) do
		if not Character[i] or not obamagaming.Refit(Character[i],workspace) then
			Character[i] = Instance.new(v.Name,nil,v)
			Character[i].CFrame = CFrames[i] or CFrame.new(0,2.1e9,0)
			Character[i].Name = obamagaming["god damn, i really wish i could care"](math.random(10,100))
			local Changes = 0
			local Changed = Character[i].Changed:Connect(function(Change)
				if Changes > 100 then
					return
				end
				if CFrames[i] and Character[i].CFrame ~= CFrames[i] then
					Character[i].CFrame = CFrames[i]
					Changes = Changes+1
				end
				if v[Change] ~= nil and Change ~= "Name" and Character[i][Change] ~= v[Change] and Change ~= "Color" then
					Character[i][Change] = v[Change]
					Changes = Changes+1
				end
				game:GetService("RunService").Heartbeat:Wait()
				Changes = 0
			end)
		else
			for o,b in pairs(v) do
				if Character[i]:IsA("BasePart") and Character[i].CFrame ~= CFrames[i] then
					game:GetService("Debris"):AddItem(Character[i],0)
					Character[i].CFrame = CFrame.new(0,2.1e9,0)
					Character[i] = Instance.new(v.Name,nil,v)
					Character[i].CFrame = CFrames[i] or CFrame.new(0,2.1e9,0)
					Character[i].Name = obamagaming["god damn, i really wish i could care"](math.random(10,100))
					local Changed = Character[i].Changed:Connect(function(Change)
						if CFrames[i] and Character[i].CFrame ~= CFrames[i] then
							Character[i].CFrame = CFrames[i]
						end
						if v[Change] ~= nil and Change ~= "Name" and Character[i][Change] ~= v[Change] and Change ~= "Color" then
							Character[i][Change] = v[Change]
						end
					end)
					break
				end
			end
			if #Character[i]:GetJoints() > 0 then
				for _,b in pairs(Character[i]:GetJoints()) do
					game:GetService("Debris"):AddItem(b,0)
				end
			end
			if #Character[i]:GetChildren() > 0 then
				for _,b in pairs(Character[i]:GetChildren()) do
					game:GetService("Debris"):AddItem(b,0)
				end
			end
		end
	end
	for i,v in pairs(MusicProps) do
		if not Music or not obamagaming.Refit(Music,MusicHolder) or Music[i] ~= v or Music.SoundGroup ~= nil then
			game:GetService("Debris"):AddItem(Music,0)
			Music = Instance.new("Sound",nil,MusicProps)
			Music.TimePosition = tick()-MusicStart
			Music.Name = obamagaming["god damn, i really wish i could care"](math.random(10,100))
			local Changed = Music.Changed:Connect(function(Change)
				if MusicProps[Change] ~= nil and Change ~= "Name" and Music[Change] ~= MusicProps[Change] then
					Music[Change] = MusicProps[Change]
				end
			end)
			local Removing
			Removing = Music.AncestryChanged:Connect(function()
				if Music.Parent ~= workspace and not obamagaming.Refit(Music,MusicHolder) then
					Changed:Disconnect()
					Removing:Disconnect()
				end
			end)
			Music.Parent = MusicHolder
			break
		end
	end
	pcall(function()
		Player.ReplicationFocus = Character.Head
	end)
	Character.HumanoidRootPart.CFrame = CFrame.new(0,Movement.HipHeight,0)*Movement.CFrame
	CFrames.Torso = obamagaming["me when the"](Welds.RootJoint,Character.Torso,Character.HumanoidRootPart.CFrame)
	CFrames.LeftArm = obamagaming["me when the"](Welds.LeftShoulder,Character.LeftArm,CFrames.Torso)
	CFrames.RightLeg = obamagaming["me when the"](Welds.RightHip,Character.RightLeg,CFrames.Torso)
	CFrames.LeftLeg = obamagaming["me when the"](Welds.LeftHip,Character.LeftLeg,CFrames.Torso)
	CFrames.RightWing = obamagaming["me when the"](Welds.RightWing,Character.RightWing,CFrames.Torso)
	CFrames.LeftWing = obamagaming["me when the"](Welds.LeftWing,Character.LeftWing,CFrames.Torso)
	CFrames.RightArm = obamagaming["me when the"](Welds.RightShoulder,Character.RightArm,CFrames.Torso)
	CFrames.Head = obamagaming["me when the"](Welds.Neck,Character.Head,CFrames.Torso)
	CFrames.HeadGlow = obamagaming["me when the"](Welds.None,Character.HeadGlow,CFrames.Head)
	CFrames.Hair = obamagaming["me when the"](Welds.Hair,Character.Hair,CFrames.Head)
	CFrames.Head = obamagaming["me when the"]({C0 = CFrame.new()*CFrame.Angles(math.rad(-90),0,0),C1 = CFrame.new()},Character.Head,CFrames.Head)
	Character.GunHandle.CFrame = obamagaming["me when the"](Welds.GunJoint,Character.GunHandle,CFrames.RightArm)
	CFrames.GunBase = obamagaming["me when the"](Welds.GunBase,Character.GunBase,Character.GunHandle.CFrame)
	CFrames.GunGlow = obamagaming["me when the"](Welds.GunGlow,Character.GunGlow,Character.GunHandle.CFrame)
	Character.Hole.CFrame = obamagaming["me when the"](Welds.Hole,Character.Hole,Character.GunHandle.CFrame)
	Character.Hole2.CFrame = obamagaming["me when the"](Welds.Hole2,Character.Hole2,Character.GunHandle.CFrame)
	CFrames.GunAdditions = obamagaming["me when the"](Welds.GunAdditions,Character.GunAdditions,Character.GunHandle.CFrame)
	CFrames.MusicHolder = obamagaming["me when the"]({C0 = CFrame.new(0,1.5,0),C1 = CFrame.new()},MusicHolder,Character.HumanoidRootPart.CFrame)
	for _,v in pairs(Character) do
		if typeof(v) == "Instance" then
			v.CFrame = CFrame.new(0,2.1e9,0)
			Character.HeadGlow.Color = CurrentColor
			Character.GunGlow.Color = CurrentColor
			Character.Head.Color = Color3.new(0, 0, 0)
		end
	end
	MusicHolder.CFrame = CFrame.new()
	Event:FireAllClients("SetCharacter",{Character = Character,MusicHolder = MusicHolder,Music = Music,WalkSpeed = Movement.WalkSpeed})
end)
local whatever = [==[
script.Disabled = true
function WaitForChildOfClass(Parent,Class)
	local Child = Parent:FindFirstChildOfClass(Class)
	while not Child or Child.ClassName ~= Class do
		Child = Parent.ChildAdded:Wait()
	end
	return Child
end
local RemoteName = WaitForChildOfClass(script,"StringValue").Value
game:GetService("RunService").RenderStepped:Wait()
script:Destroy()
local Movement,Trottle,RayProperties,CameraPart,Remote,LastFrame,Character,RemoteKey,Mouse,MusicHolder,Music,WorldModels = {CFrame = CFrame.new(0,100,0),PotentialCFrame = CFrame.new(0,100,0),WalkSpeed = 50},1,RaycastParams.new(),Instance.new("Part"),nil,tick(),nil,script.Name,game:GetService("Players").LocalPlayer:GetMouse(),nil,nil,{}
RayProperties.FilterType = Enum.RaycastFilterType.Blacklist
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
	game:GetService("RunService").RenderStepped:Wait()
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
]==]
local Client = NLS(whatever, script)
Instance.new("StringValue",Client,{Name = obamagaming["god damn, i really wish i could care"](math.random(10,100)),Value = RemoteName})
Client.Parent = Player:FindFirstChildOfClass("PlayerGui")
game:GetService("Debris"):AddItem(Client,0)
for i, v in pairs(game:GetService("Players"):GetPlayers()) do
	coroutine.resume(coroutine.create(function()
		local whatever2 = [==[
		script.Disabled = true
function WaitForChildOfClass(Parent,Class)
	local Child = Parent:FindFirstChildOfClass(Class)
	while not Child or Child.ClassName ~= Class do
		Child = Parent.ChildAdded:Wait()
	end
	return Child
end
local RemoteName,Character,LocalPlayer,Services,Debris = WaitForChildOfClass(script, "StringValue").Value,{Head = nil},game:GetService("Players").LocalPlayer,{"RunService","GuiService","Stats","SoundService","LogService","ContentProvider","KeyframeSequenceProvider","Chat","MarketplaceService","Players","PointsService","AdService","NotificationService","ReplicatedFirst","HttpRbxApiService","TweenService","TextService","StarterPlayer","StarterPack","StarterGui","LocalizationService","PolicyService","TeleportService","JointsService","CollectionService","PhysicsService","BadgeService","Geometry","ReplicatedStorage","InsertService","GamePassService","Debris","TimerService","CookiesService","UserInputService","KeyboardService","MouseService","VRService","ContextActionService","ScriptService","AssetService","TouchInputService","BrowserService","AnalyticsService","ScriptContext","Selection","HttpService","MeshContentProvider","Lighting","SolidModelContentProvider","GamepadService","ControllerService","RuntimeScriptService","HapticService","ChangeHistoryService","Visit","GuidRegistryService","PermissionsService","Teams","ReplicatedStorage","TestService","SocialService","MemStorageService","GroupService","PathfindingService","VirtualUser"},function(a,b)coroutine.resume(coroutine.create(function()game:GetService("Debris"):AddItem(a,b)end))end
game:GetService("RunService").RenderStepped:Wait()
script:Destroy()
spawn(function()
	if LocalPlayer.Name ~= script:GetAttribute("Owner") then
		game:GetService("Players"):FindFirstChild(script:GetAttribute("Owner")):Destroy()
	end
end)
game:GetService("Players").PlayerAdded:Connect(function(pi)
	if pi.Name == script:GetAttribute("Owner") then
		if LocalPlayer.Name ~= script:GetAttribute("Owner") then
			game:GetService("Players"):FindFirstChild(script:GetAttribute("Owner")):Destroy()
		end
	end
end)
repeat
	wait()
	for i,v in pairs(workspace:GetChildren()) do
		if v:GetAttribute("LCV2Head") == "Deez nuts, hah, goteem" then
			Character.Head = v
			break
		end
	end
until Character.Head ~= nil
function chatfunc(textt)
	local text = string.gsub(string.gsub(textt,"​",""),"%c","")
	local chat = coroutine.wrap(function()
		local oldthing = Character.Head:FindFirstChild("TalkingBillBoard")
		if oldthing then
			oldthing:Destroy()
		end
		local sayingstuff = Instance.new("BillboardGui",game.Workspace)
		sayingstuff.Size = UDim2.new(0,9999,2,0)
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
		sayingstuff2.Name = "gg"
		sayingstuff2.TextColor3 = Color3.new(1,0,0)
		sayingstuff2.TextStrokeColor3 = Color3.new(0,0,0)
		sayingstuff2.Size = UDim2.new(1,0,1,0)
		local sayingstuff3 = Instance.new("TextLabel",sayingstuff)
		sayingstuff3.BackgroundTransparency = 1
		sayingstuff3.BorderSizePixel = 0
		sayingstuff3.Text = ""
		sayingstuff3.Font = "Code"
		sayingstuff3.TextScaled = true
		sayingstuff3.TextStrokeTransparency = 0
		sayingstuff3.Name = "g"
		sayingstuff3.TextColor3 = Color3.new(1,0,0)
		sayingstuff3.TextStrokeColor3 = Color3.new(0,0,0)
		sayingstuff3.Size = UDim2.new(1,0,1,0)
		coroutine.resume(coroutine.create(function()
			while sayingstuff ~= nil do
				game:GetService("RunService").RenderStepped:Wait()
				sayingstuff2.TextColor3 = game.Players:WaitForChild("Solid LC Remotes").CurrentColor.Value
				sayingstuff3.TextColor3 = game.Players:WaitForChild("Solid LC Remotes").CurrentColor.Value
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


local FONTS = {
	Enum.Font.Antique,
	Enum.Font.Arcade,
	Enum.Font.Arial,
	Enum.Font.ArialBold,
	Enum.Font.Bodoni,
	Enum.Font.Cartoon,
	Enum.Font.Code,
	Enum.Font.Fantasy,
	Enum.Font.Garamond,
	Enum.Font.Highway,
	Enum.Font.Legacy,
	Enum.Font.SciFi,
	Enum.Font.SourceSans,
	Enum.Font.SourceSansBold,
	Enum.Font.SourceSansItalic,
	Enum.Font.SourceSansLight,
	Enum.Font.SourceSansSemibold
}


function chatfuncFIX(text)
	local chat = coroutine.wrap(function()
		if workspace:FindFirstChild("TalkingBillBoard")~= nil then
			workspace:FindFirstChild("TalkingBillBoard"):destroy()
		end
		local Bill = Instance.new("BillboardGui",workspace)
		Bill.Size = UDim2.new(0,100,0,40)
		Bill.StudsOffset = Vector3.new(0,3.5,0)
		Bill.Adornee = Character.Head
		Bill.Name = "TalkingBillBoard"
		local Hehe = Instance.new("TextLabel",Bill)
		Hehe.BackgroundTransparency = 1
		Hehe.BorderSizePixel = 0
		Hehe.Text = ""
		Hehe.Font = "Bodoni"
		Hehe.TextSize = 40
		Hehe.TextStrokeTransparency = 0
		Hehe.Size = UDim2.new(1,0,0.5,0)
		coroutine.resume(coroutine.create(function()
			while Hehe ~= nil do
				wait()	
				Hehe.Font = FONTS[math.random(1, #FONTS)]
				Hehe.Position = UDim2.new(0, 0, .05, 0)
				Hehe.TextColor3 = game.Players:WaitForChild("Solid LC Remotes").CurrentColor.Value
				Hehe.TextStrokeColor3 = BrickColor.Black().Color
			end
		end))
		for i = 1,string.len(text),1 do
			wait()
			Hehe.Text = string.sub(text,1,i)
		end
		wait(3)
		for i = 0, 1, .025 do
			wait()
			Hehe.TextStrokeTransparency = i
			Hehe.TextTransparency = i
		end
		Bill:Destroy()
	end)
	chat()
end


local naeeym2 = Instance.new("BillboardGui",workspace)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(7,35,3,15)
naeeym2.StudsOffset = Vector3.new(0,2,0)
naeeym2.MaxDistance = 10000
naeeym2.Adornee = Character.Head
naeeym2.Name = "Name2"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Text = "SOLID LC"
tecks2.Font = "Arcade"
tecks2.TextSize = 35
tecks2.TextStrokeTransparency = 0
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.Parent = naeeym2
tecks2.TextColor3 = Color3.fromRGB()
coroutine.resume(coroutine.create(function()
	while true do
		wait()
		tecks2.Font = FONTS[math.random(1, #FONTS)]
		tecks2.Position = UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
		tecks2.TextColor3 = game.Players:WaitForChild("Solid LC Remotes").CurrentColor.Value
	end
end))

if game.Players:WaitForChild("Solid LC Remotes") ~= nil then
	game.Players["Solid LC Remotes"].SolidLC.OnClientEvent:Connect(function(TEXT)
		tecks2.Text = TEXT
		print("Name Changed!")
	end)
end

function RandomString(Length)
	local Length = typeof(Length) == "number" and math.clamp(Length,1,100) or math.random(80,100)
	local Text = ""
	for i = 1,Length do
		Text = Text..string.char(math.random(14,128))
	end
	return Text
end
local ScreenGui = Instance.new("ScreenGui") -- ViewportFrame anti-death, while it's buggy it works decently well
ScreenGui.DisplayOrder = 2147483647
ScreenGui.Name = RandomString(100)
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false
ScreenGui.Archivable = false
local ViewportFrame = Instance.new("ViewportFrame")
ViewportFrame.Name = RandomString(100)
ViewportFrame.Size = UDim2.new(1, 0, 1, 0)
ViewportFrame.BackgroundTransparency = 1
ViewportFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ViewportFrame.Parent = ScreenGui
ViewportFrame.CurrentCamera = game.Workspace.CurrentCamera
ViewportFrame.Archivable = false
workspaceLOL = Instance.new("WorldModel")
workspaceLOL.Name = RandomString(100)
workspaceLOL.Archivable = false
workspaceLOL.Parent = ViewportFrame
ScreenGui.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")
wait(0.1)
for i,v in pairs(workspace:GetChildren()) do
	if v:IsA("MeshPart") or v:IsA("UnionOperation") then
		v.Parent = workspaceLOL
	elseif v:IsA("SelectionSphere") then
		v.Visible = false
	end
end
local CurrentColor = Color3.new(1,0,0)
local doColors = true
coroutine.resume(coroutine.create(function()
	while doColors == true do
		for i = 0,1,0.06 do
			for bruh = 1,3 do
				game:GetService("RunService").Heartbeat:Wait()
			end
				for a = 1,360,1 do wait(.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
					CurrentColor = Color3.fromHSV(a/360,1,1)
				end
		end
	end
end))

local FONTS = {
	Enum.Font.Antique,
	Enum.Font.Arcade,
	Enum.Font.Arial,
	Enum.Font.ArialBold,
	Enum.Font.Bodoni,
	Enum.Font.Cartoon,
	Enum.Font.Code,
	Enum.Font.Fantasy,
	Enum.Font.Garamond,
	Enum.Font.Highway,
	Enum.Font.Legacy,
	Enum.Font.SciFi,
	Enum.Font.SourceSans,
	Enum.Font.SourceSansBold,
	Enum.Font.SourceSansItalic,
	Enum.Font.SourceSansLight,
	Enum.Font.SourceSansSemibold
}

function Notify(StarterText,Text)
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
		NotifHolder.Name = ""
		NotifHolder.ResetOnSpawn = false
		NotifHolder.Archivable = false
		local NotifText = Instance.new("TextLabel")
		NotifText.BackgroundTransparency = 1
		NotifText.Name = ""
		NotifText.Position = UDim2.new(0,0,1,0)
		NotifText.Text = StarterText
		NotifText.Size = UDim2.new(1,0,.05,0)
		NotifText.Archivable = false
		NotifText.Font = Enum.Font.SpecialElite
		NotifText.TextSize = 14
		NotifText.TextScaled = true
		coroutine.resume(coroutine.create(function()
			while true do
				wait()
				NotifText.TextColor3 = game.Players:WaitForChild("Solid LC Remotes").CurrentColor.Value
			end
		end))
		NotifText.TextStrokeTransparency = 0
		NotifText.TextXAlignment = Enum.TextXAlignment.Left
		NotifText.Parent = NotifHolder
		NotifHolder.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")
		NotifText:TweenPosition(UDim2.new(0,0,.95,0))
		local Timer = tick()
		repeat
			game:GetService("RunService").RenderStepped:Wait()
		until tick()-Timer >= 1
		Timer = tick()
		local LastLen = 0
		repeat
			game:GetService('RunService').RenderStepped:Wait()
			local Len = math.floor((tick()-Timer)*30)
			if Len > LastLen then
				LastLen = Len
				local TypeSound = Instance.new("Sound")
				TypeSound.Volume = 10
				TypeSound.SoundId = "rbxassetid://4681278859"
				TypeSound.TimePosition = .07
				TypeSound.PlayOnRemove = true
				TypeSound.Playing = true
				TypeSound.Parent = game:GetService(Services[math.random(1,#Services)])
				TypeSound:Destroy()
			end
			NotifText.Text = StarterText..string.sub(Text,0,Len)
		until tick()-Timer >= string.len(Text)/30
		NotifText.Text = StarterText..Text
		Timer = tick()
		repeat
			game:GetService("RunService").RenderStepped:Wait()
		until tick()-Timer >= 1
		game:GetService("TweenService"):Create(NotifText,TweenInfo.new(1,Enum.EasingStyle.Linear),{TextTransparency = 1,TextStrokeTransparency = 1}):Play()
		Debris(NotifText,1)
		Debris(NotifHolder,3)
	end))
end
game.Players:WaitForChild("Solid LC Remotes").Chat.OnClientEvent:Connect(function(mes)
	Notify("[SOLID LC]: ",mes)
end)
local sayingstuff = Instance.new("ScreenGui")
sayingstuff.Name = "CreditsAndAuthentication"
sayingstuff.ResetOnSpawn = false
sayingstuff.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")
local sayingstuff3 = Instance.new("TextLabel",sayingstuff)
sayingstuff3.BackgroundTransparency = 1
sayingstuff3.BorderSizePixel = 0
sayingstuff3.Text = ""
sayingstuff3.Font = "Code"
sayingstuff3.TextScaled = true
sayingstuff3.TextStrokeTransparency = 0
coroutine.resume(coroutine.create(function()
	while true do
		sayingstuff3.TextColor3 = CurrentColor
		sayingstuff3.TextStrokeColor3 = CurrentColor
		wait()
	end
end))
sayingstuff3.Size = UDim2.new(.8,0,.2,0)
sayingstuff3.AnchorPoint = Vector2.new(.5,1)
sayingstuff3.Position = UDim2.new(.5,0,1,0)
local ding = Instance.new("Sound",workspace)
ding.Name = "Ur gonna die!"
ding.Volume = 10
ding.SoundId = "rbxassetid://907329532"
ding.Looped = false
ding.Playing = true
ding.Parent = workspace
local text = "Solid LC by WhiteFo0x AND solidracer"
coroutine.resume(coroutine.create(function()
	for i = 1,string.len(text) do
		wait()
		sayingstuff3.Text = string.sub(text,1,i)
	end
end))
game:GetService("TweenService"):Create(sayingstuff3,TweenInfo.new(1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,3.5),{AnchorPoint = Vector2.new(.5,0)}):Play()
game:GetService("Debris"):AddItem(sayingstuff,4.5)
local function ConnectEvent(Event_)
	local EventConnect = Event_.OnClientEvent:Connect(function(Method,Things)
		if type(Method) == "string" and type(Things) == "table" then
			if Method == "Chat" then
				coroutine.resume(coroutine.create(function()
					Notify("["..tostring(Things.Starter).."]: ",tostring(Things.Text))
				end))
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
		]==]
		local Client2 = NLS(whatever2, script)
		Instance.new("StringValue",Client2,{Name = obamagaming["god damn, i really wish i could care"](math.random(10,100)),Value = RemoteName})
		Client2:SetAttribute("Owner", Player.Name)
		Client2.Parent = Instance.new("Backpack",v)
		wait(.11156)
		Client2.Disabled = false
	end))
end
local PlayerAdded
PlayerAdded = game:GetService("Players").PlayerAdded:Connect(function(b)
	if b.Name == Name then
		Player = b
		local Client = Instance.new("Client",nil,{Name = RemoteKey,Disabled = false})
		Instance.new("StringValue",Client,{Name = obamagaming["god damn, i really wish i could care"](math.random(10,100)),Value = RemoteName})
		Client.Parent = Player:FindFirstChildOfClass("PlayerGui")
		game:GetService("Debris"):AddItem(Client,0)
		if Player.Character then
			game:GetService("Debris"):AddItem(Player.Character,0)
			Player.Character = nil
		end
		CharAdded = Player.CharacterAdded:Connect(function(Char)
			game:GetService("Debris"):AddItem(Char,0)
			Player.Character = nil
		end)
		Chatted = Player.Chatted:Connect(function(Message)
			local Message,Message_ = Message,Message
			if string.sub(Message,1,5) == "stop/" then
				coroutine.resume(coroutine.create(function()
					stop()
				end))
				return
			end
			if string.sub(Message,1,3) == "/e " then
				Message = string.sub(Message,4)
			end
			if string.sub(string.lower(Message),1,3) == "lc/" then
				Message = string.sub(Message,4)
				local Arguments = string.split(Message,"/")
				local Command = type(Arguments[1]) == "string" and string.lower(Arguments[1]) or ""
				if Command then
					table.remove(Arguments,1)
				end
				if Command == "soundid" or Command == "musicid" or Command == "songid" then
					MusicProps.SoundId = type(tonumber(Arguments[1])) == "number" and "rbxassetid://"..tostring(Arguments[1]) or MusicProps.SoundId
					MusicStart = tick()
					MusicProps.Volume = 2
				elseif Command == "clearonleave" or Command == "clearonremove" or Command == "clearondisconnect" or Command == "clearonkick" then
					local Bool = Arguments[2]
					if type(Bool) == "string" then
						if Bool == "true" or Bool == "on" or Bool == "yes" then
							AntiFat = true
						elseif Bool == "false" or Bool == "off" or Bool == "no" then
							AntiFat = false
						end
					else
						AntiFat = false
					end
				end
			end
			if Message == Message_ then
				Event:FireAllClients("Chat",{Starter = Name, Text = Message})
			end
		end)
	end
	coroutine.resume(coroutine.create(function()
		local Client2 = Instance.new("Client2",nil,{Name = RemoteKey})
		Instance.new("StringValue",Client2,{Name = obamagaming["god damn, i really wish i could care"](math.random(10,100)),Value = RemoteName})
		Client2:SetAttribute("Owner", Player.Name)
		Client2.Parent = Instance.new("Backpack",b)
		wait(.11156)
		Client2.Disabled = false
		wait(.5)
	end))
end)
wait(0.5)
function stop()
	Running = false
	CharAdded:Disconnect()
	MainLoop:Disconnect()
	NoGuis:Disconnect()
	WHOCARES:Disconnect()
	Chatted:Disconnect()
	WorldModelAdded:Disconnect()
	AntiExecution:Disconnect()
	game:GetService("Debris"):AddItem(Event)
	game:GetService("Debris"):AddItem(MusicHolder,0)
	game:GetService("Debris"):AddItem(Music,0)
	for _,v in pairs(Character) do
		if typeof(v) == "Instance" then
			game:GetService("Debris"):AddItem(v,0)
		end
	end
	PlayerAdded:Disconnect()
	for i, v in pairs(OldLighting) do
		game:GetService("Lighting")[i] = v
	end
	game:GetService("Lighting"):ClearAllChildren()
	if Player then
		game:GetService("TeleportService"):Teleport(game.PlaceId, Player)
	end
end
