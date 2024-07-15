local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Create RemoteEvents
local MouseEvent = Instance.new("RemoteEvent")
MouseEvent.Name = "MouseEvent"
MouseEvent.Parent = ReplicatedStorage

local InputEvent = Instance.new("RemoteEvent")
InputEvent.Name = "InputEvent"
InputEvent.Parent = ReplicatedStorage

-- Create a server-side mouse object
local ServerMouse = {
    Hit = Vector3.new(0, 0, 0),
    Origin = Vector3.new(0, 0, 0),
    Target = nil,
    UnitRay = Ray.new(Vector3.new(0, 0, 0), Vector3.new(1, 0, 0)),
    Position = Vector2.new(0, 0),
    Button1Down = false,
    KeyDown = function(key) end,  -- Placeholder function
    KeyUp = function(key) end     -- Placeholder function
}

-- Create a server-side input object
local ServerInput = {
    KeysDown = {},
    MouseButton1Down = false,
    MouseButton2Down = false
}

-- Function to handle mouse events
local function updateServerMouse(player, mouseData)
    ServerMouse.Hit = mouseData.Hit
    ServerMouse.Target = mouseData.Target
    ServerMouse.Position = mouseData.Position
    ServerMouse.Origin = mouseData.Origin
    ServerMouse.UnitRay = Ray.new(mouseData.Origin, mouseData.Hit - mouseData.Origin)
    ServerMouse.Button1Down = mouseData.Button1Down
end

-- Function to handle input events
local function updateServerInput(player, inputData)
    if inputData.UserInputType == Enum.UserInputType.Keyboard then
        if inputData.UserInputState == Enum.UserInputState.Begin then
            ServerInput.KeysDown[inputData.KeyCode] = true
            ServerMouse.KeyDown(inputData.KeyCode)
        elseif inputData.UserInputState == Enum.UserInputState.End then
            ServerInput.KeysDown[inputData.KeyCode] = nil
            ServerMouse.KeyUp(inputData.KeyCode)
        end
    elseif inputData.UserInputType == Enum.UserInputType.MouseButton1 then
        ServerInput.MouseButton1Down = (inputData.UserInputState == Enum.UserInputState.Begin)
    elseif inputData.UserInputType == Enum.UserInputType.MouseButton2 then
        ServerInput.MouseButton2Down = (inputData.UserInputState == Enum.UserInputState.Begin)
    end
end

-- Connect RemoteEvents to handler functions
MouseEvent.OnServerEvent:Connect(updateServerMouse)
InputEvent.OnServerEvent:Connect(updateServerInput)

-- Create and set up the LocalScript using NLS for the owner
local clientCode = [==[
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local mouse = owner:GetMouse()
local MouseEvent = ReplicatedStorage:WaitForChild("MouseEvent")
local InputEvent = ReplicatedStorage:WaitForChild("InputEvent")

-- Function to send mouse updates
local function updateMouse()
    MouseEvent:FireServer({
        Hit = mouse.Hit.Position,
        Target = mouse.Target,
        Position = Vector2.new(mouse.X, mouse.Y),
        Origin = mouse.Origin.Position,
        Button1Down = UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
    })
end

-- Function to send input updates
local function updateInput(input, gameProcessed)
    if not gameProcessed then
        InputEvent:FireServer({
            UserInputType = input.UserInputType,
            UserInputState = input.UserInputState,
            KeyCode = input.KeyCode
        })
    end
end

-- Connect input events
UserInputService.InputBegan:Connect(updateInput)
UserInputService.InputEnded:Connect(updateInput)

-- Update mouse position every frame
RunService.RenderStepped:Connect(updateMouse)

-- Set up KeyDown and KeyUp for mouse
mouse.KeyDown:Connect(function(key)
    InputEvent:FireServer({
        UserInputType = Enum.UserInputType.Keyboard,
        UserInputState = Enum.UserInputState.Begin,
        KeyCode = Enum.KeyCode[key:upper()]
    })
end)

mouse.KeyUp:Connect(function(key)
    InputEvent:FireServer({
        UserInputType = Enum.UserInputType.Keyboard,
        UserInputState = Enum.UserInputState.End,
        KeyCode = Enum.KeyCode[key:upper()]
    })
end)
]==]

-- Create the LocalScript for the owner
local localScript = NLS(clientCode, owner.PlayerGui)

-- TERRIBLE CONVERT 🤮🤮🤮🤮

local ID = owner.UserId

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

local Player,Backups = owner,{}
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

local Instances = {"Atmosphere", "Sky", "Folder", "Sound", "Team", "Accoutrement", "BloomEffect", "BlurEffect", "BodyColors", "ChorusSoundEffect", "Shirt", "Pants", "ColorCorrectionEffect", "CompressorSoundEffect", "DepthOfFieldEffect", "DistortionSoundEffect", "EchoSoundEffect", "EqualizerSoundEffect", "FlangeSoundEffect", "Motor", "PitchShiftSoundEffect", "ReverbSoundEffect", "ShirtGraphic", "SoundGroup", "SunRaysEffect", "TerrainRegion", "TremoloSoundEffect", "HumanoidDescription", "Accessory", "AlignOrientation", "AlignPosition", "AngularVelocity", "Backpack", "BallSocketConstraint", "Beam", "ClickDetector", "CylindricalConstraint", "Fire", "ForceField", "HingeConstraint", "Humanoid", "LineForce", "LocalizationTable", "BlockMesh", "SpecialMesh", "NoCollisionConstraint", "ParticleEmitter", "PointLight", "PrismaticConstraint", "ProximityPrompt", "RodConstraint", "RopeConstraint", "Script", "Smoke", "Sparkles", "SpotLight", "SpringConstraint", "StarterGear", "SurfaceLight", "Torque", "Trail", "UIAspectRatioConstraint", "UICorner", "UIGradient", "UIGridLayout", "UIListLayout", "UIPadding", "UIPageLayout", "UIScale", "UISizeConstraint", "UITableLayout", "UITextSizeConstraint", "IntValue", "NumberValue", "BrickColorValue", "BoolValue", "StringValue", "CFrameValue", "RayValue", "ObjectValue", "Color3Value", "Vector3Value", "VectorForce", "ViewportFrame", "WeldConstraint", "Decal", "BindableFunction", "LocalScript", "RemoteFunction", "SurfaceAppearance", "Texture", "BindableEvent", "ModuleScript", "RemoteEvent", "Model", "StandalonePluginScripts", "BillboardGui", "BodyAngularVelocity", "BodyForce", "BodyGyro", "BodyPosition", "BodyThrust", "BodyVelocity", "RocketPropulsion", "ScreenGui", "SurfaceGui", "Frame", "ScrollingFrame", "ImageButton", "TextBox", "TextButton", "ImageLabel", "Handles", "TextLabel", "ArcHandles", "Motor6D", "Snap", "Weld", "BoxHandleAdornment", "ConeHandleAdornment", "CylinderHandleAdornment", "ImageHandleAdornment", "LineHandleAdornment", "SphereHandleAdornment", "SelectionBox", "SelectionSphere", "SurfaceSelection", "Animation", "AnimationController", "CharacterMesh", "Configuration", "Dialog", "DialogChoice", "Keyframe", "KeyframeMarker", "Pose", "HumanoidController", "VehicleController", "PartOperationAsset", "KeyframeSequence", "ManualGlue", "ManualWeld", "FileMesh", "Rotate", "RotateP", "RotateV", "SkateboardController", "Tween", "BinaryStringValue", "VelocityMotor"}
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

			if not CHolder or CHolder.Parent ~= workspace then
				local Parents = {workspace}

				CHolder = Instance.new(Instances[math.random(1,#Instances)])
				CHolder.Name = Randomstring()
				CHolder.Parent = Parents[math.random(1,#Parents)]
				pcall(function() CHolder.Enabled = false end)
				pcall(function() CHolder.Visible = false end)
			end

			if not Char or Char.Parent ~= CHolder  then
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

			if not MPartHolder or MPartHolder.Parent ~= workspace then
				local Parents = {workspace}

				MPartHolder = Instance.new(Instances[math.random(1,#Instances)])
				MPartHolder.Name = Randomstring()
				MPartHolder.Parent = Parents[math.random(1,#Parents)]
				pcall(function() MPartHolder.Enabled = false end)
				pcall(function() MPartHolder.Visible = false end)
			end

			if not MPart or MPart.Parent ~= MPartHolder then
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

			if not Sound or Sound.Parent ~= MPart then
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
--Destroy(Player:FindFirstChildOfClass("PlayerGui"):FindFirstChild("__LoadingLC"),0.1)

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
local ID = owner.UserId
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


local plr = owner
local mouse = ServerMouse

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
local Player = owner
