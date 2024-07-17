
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
Model0 = Instance.new("Actor")
Part1 = Instance.new("Part")
SpecialMesh2 = Instance.new("SpecialMesh")
Motor6D3 = Instance.new("Motor6D")
Part4 = Instance.new("Part")
SpecialMesh5 = Instance.new("SpecialMesh")
Part6 = Instance.new("Part")
SpecialMesh7 = Instance.new("SpecialMesh")
Part8 = Instance.new("Part")
SpecialMesh9 = Instance.new("SpecialMesh")
Part10 = Instance.new("Part")
SpecialMesh11 = Instance.new("SpecialMesh")
Part12 = Instance.new("Part")
SpecialMesh13 = Instance.new("SpecialMesh")
Motor6D14 = Instance.new("Motor6D")
Motor6D15 = Instance.new("Motor6D")
Motor6D16 = Instance.new("Motor6D")
Motor6D17 = Instance.new("Motor6D")
Motor6D18 = Instance.new("Motor6D")
Part19 = Instance.new("Part")
SpecialMesh20 = Instance.new("SpecialMesh")
Decal21 = Instance.new("Decal")
Model0.Name = "Character"
Model0.Parent = mas
Part1.Name = "HumanoidRootPart"
Part1.Parent = Model0
Part1.CFrame = CFrame.new(6.60170507, 3.22292686, 58.9053192, -0.999997616, -0.00217111828, -4.46999766e-05, -0.00217102002, 0.99999547, -0.00209116819, 4.92399449e-05, -0.00209106598, -0.999997854)
Part1.Orientation = Vector3.new(0.11999999731779099, -179.9969940185547, -0.12399999797344208)
Part1.Position = Vector3.new(6.601705074310303, 3.2229268550872803, 58.90531921386719)
Part1.Rotation = Vector3.new(179.8800048828125, -0.003000000026077032, 179.87600708007812)
Part1.Transparency = 1
Part1.Size = Vector3.new(2, 2, 1)
Part1.Anchored = true
Part1.Locked = true
SpecialMesh2.Parent = Part1
SpecialMesh2.MeshId = "rbxassetid://4906896369"
SpecialMesh2.TextureId = "rbxassetid://4906896430"
SpecialMesh2.MeshType = Enum.MeshType.FileMesh
Motor6D3.Name = "RootJoint-:3"
Motor6D3.Parent = Part1
Motor6D3.C0 = CFrame.new(0, 0, 0, 1.00000012, -5.26156896e-11, 0, -5.26156896e-11, 1, 0, 0, 0, 1.00000012)
Motor6D3.Part0 = Part1
Motor6D3.Part1 = Part12
Motor6D3.part1 = Part12
Part4.Name = "LeftArm"
Part4.Parent = Model0
Part4.CFrame = CFrame.new(8.10169315, 3.22618341, 58.9052467, -1.00000119, -0.00217112387, -4.47876519e-05, -0.00217103097, 0.99999547, -0.00209117658, 4.93275984e-05, -0.00209106598, -1.00000179)
Part4.Orientation = Vector3.new(0.11999999731779099, -179.9969940185547, -0.12399999797344208)
Part4.Position = Vector3.new(8.101693153381348, 3.2261834144592285, 58.90524673461914)
Part4.Rotation = Vector3.new(179.8800048828125, -0.003000000026077032, 179.87600708007812)
Part4.Size = Vector3.new(1.0000001192092896, 2, 1)
Part4.Locked = true
SpecialMesh5.Parent = Part4
SpecialMesh5.MeshId = "rbxassetid://4906912683"
SpecialMesh5.MeshType = Enum.MeshType.FileMesh
Part6.Name = "LeftLeg"
Part6.Parent = Model0
Part6.CFrame = CFrame.new(6.10606146, 1.2218504, 58.9095268, -1.00000262, -0.00217111735, -4.47001948e-05, -0.00217103283, 0.99999547, -0.00209117867, 4.92401559e-05, -0.00209106551, -1.00000286)
Part6.Orientation = Vector3.new(0.11999999731779099, -179.9969940185547, -0.12399999797344208)
Part6.Position = Vector3.new(6.1060614585876465, 1.2218503952026367, 58.90952682495117)
Part6.Rotation = Vector3.new(179.8800048828125, -0.003000000026077032, 179.87600708007812)
Part6.Size = Vector3.new(1, 1.9999970197677612, 1)
Part6.Locked = true
SpecialMesh7.Parent = Part6
SpecialMesh7.MeshId = "rbxassetid://4906907014"
SpecialMesh7.MeshType = Enum.MeshType.FileMesh
Part8.Name = "RightArm"
Part8.Parent = Model0
Part8.CFrame = CFrame.new(5.10171795, 3.21967006, 58.9053917, -1.00000262, -0.00217112014, -4.47876409e-05, -0.00217102887, 0.99999547, -0.0020911789, 4.93275875e-05, -0.00209106598, -1.00000286)
Part8.Orientation = Vector3.new(0.11999999731779099, -179.9969940185547, -0.12399999797344208)
Part8.Position = Vector3.new(5.101717948913574, 3.219670057296753, 58.905391693115234)
Part8.Rotation = Vector3.new(179.8800048828125, -0.003000000026077032, 179.87600708007812)
Part8.Size = Vector3.new(1.0000200271606445, 2, 1)
Part8.Locked = true
SpecialMesh9.Parent = Part8
SpecialMesh9.MeshId = "rbxassetid://4906916609"
SpecialMesh9.MeshType = Enum.MeshType.FileMesh
Part10.Name = "RightLeg"
Part10.Parent = Model0
Part10.CFrame = CFrame.new(7.10603523, 1.22402096, 58.9094772, -1.00000155, -0.00217112573, -4.47003949e-05, -0.00217103586, 0.99999547, -0.00209118938, 4.92403524e-05, -0.00209107506, -1.0000025)
Part10.Orientation = Vector3.new(0.11999999731779099, -179.9969940185547, -0.12399999797344208)
Part10.Position = Vector3.new(7.106035232543945, 1.2240209579467773, 58.90947723388672)
Part10.Rotation = Vector3.new(179.8800048828125, -0.003000000026077032, 179.87600708007812)
Part10.Size = Vector3.new(1, 1.9999970197677612, 1)
Part10.Locked = true
SpecialMesh11.Parent = Part10
SpecialMesh11.MeshId = "rbxassetid://4906910615"
SpecialMesh11.MeshType = Enum.MeshType.FileMesh
Part12.Name = "Torso"
Part12.Parent = Model0
Part12.CFrame = CFrame.new(6.60170507, 3.22292686, 58.9053192, -0.999997735, -0.00217111828, -4.46999802e-05, -0.00217102026, 0.99999547, -0.00209116843, 4.92399522e-05, -0.00209106598, -0.999997973)
Part12.Orientation = Vector3.new(0.11999999731779099, -179.9969940185547, -0.12399999797344208)
Part12.Position = Vector3.new(6.601705074310303, 3.2229268550872803, 58.90531921386719)
Part12.Rotation = Vector3.new(179.8800048828125, -0.003000000026077032, 179.87600708007812)
Part12.Size = Vector3.new(2, 2, 1)
Part12.Locked = true
SpecialMesh13.Parent = Part12
SpecialMesh13.MeshId = "rbxassetid://4906896369"
SpecialMesh13.MeshType = Enum.MeshType.FileMesh
Motor6D14.Name = "Right Shoulder"
Motor6D14.Parent = Part12
Motor6D14.C0 = CFrame.new(0.999988079, 0.499999285, 7.62939453e-06, 1.00000072, -5.26156896e-11, 8.74279067e-08, 6.95841607e-10, 1, 0, -8.74206307e-08, 0, 1.00000072)
Motor6D14.C1 = CFrame.new(-0.499999911, 0.499999523, 7.58571105e-06, 1.00000417, 1.12084819e-09, 2.17710988e-11, 1.81927562e-09, 1, -2.2987025e-17, 1.46088038e-11, -2.29930568e-17, 1.00000417)
Motor6D14.Part0 = Part12
Motor6D14.Part1 = Part8
Motor6D14.part1 = Part8
Motor6D15.Name = "Neck"
Motor6D15.Parent = Part12
Motor6D15.C0 = CFrame.new(9.53674316e-07, 0.999999285, 0, 1.00000024, -5.26156896e-11, -3.63797881e-12, -5.26299004e-11, 1, 0, 0, 0, 1.00000024)
Motor6D15.C1 = CFrame.new(2.62616595e-11, -0.5, 0, 1.00000036, -1.05231386e-10, -3.63797924e-12, -1.05245604e-10, 1, 1.91414764e-22, 0, 0, 1.00000036)
Motor6D15.Part0 = Part12
Motor6D15.Part1 = Part19
Motor6D15.part1 = Part19
Motor6D16.Name = "Left Shoulder"
Motor6D16.Parent = Part12
Motor6D16.C0 = CFrame.new(-0.999987602, 0.499999762, 7.62939453e-06, 1.00000346, 1.11153753e-09, 8.74388206e-08, 1.1612471e-09, 1, 0, -8.74060788e-08, 0, 1.00000381)
Motor6D16.C1 = CFrame.new(0.500002146, 0.499999762, 7.67313941e-06, 1, -4.54554572e-09, -6.18238932e-11, 4.54554572e-09, 1, -1.94312879e-16, 6.18238932e-11, 1.94031849e-16, 1)
Motor6D16.Part0 = Part12
Motor6D16.Part1 = Part4
Motor6D16.part1 = Part4
Motor6D17.Name = "Right Hip"
Motor6D17.Parent = Part12
Motor6D17.C0 = CFrame.new(-0.999992847, -1.0000006, 7.62939453e-06, 1.00000381, 4.37118786e-09, 3.63797881e-11, -4.24397228e-09, 1, -1.86264515e-09, 3.63797881e-12, -4.65661287e-10, 1.00000453)
Motor6D17.C1 = CFrame.new(-0.500001907, 0.999999881, 7.6261731e-06, 1, -2.96444602e-09, -2.00088141e-10, 2.96444602e-09, 1, 9.54606527e-09, 2.00088113e-10, -9.54606527e-09, 1)
Motor6D17.Part0 = Part12
Motor6D17.Part1 = Part10
Motor6D17.part1 = Part10
Motor6D18.Name = "Left Hip"
Motor6D18.Parent = Part12
Motor6D18.C0 = CFrame.new(0.999989986, -1.00000012, 7.62939453e-06, 1.00000107, 1.80229165e-10, -2.18278728e-11, -7.51143148e-10, 1, 0, 3.27418093e-11, -2.32830644e-10, 1.00000107)
Motor6D18.C1 = CFrame.new(0.500000417, 0.999999881, 7.62962281e-06, 1.00000381, -1.14182153e-09, 7.2759845e-12, -1.14182874e-09, 1, -2.32831115e-10, 1.81899391e-11, -4.16338187e-16, 1.00000381)
Motor6D18.Part0 = Part12
Motor6D18.Part1 = Part6
Motor6D18.part1 = Part6
Part19.Name = "Head"
Part19.Parent = Model0
Part19.CFrame = CFrame.new(6.59844732, 4.72291946, 58.9021835, -0.999998331, -0.00217111805, -4.4700002e-05, -0.00217102189, 0.99999547, -0.00209116959, 4.92399849e-05, -0.00209106598, -0.999998569)
Part19.Orientation = Vector3.new(0.11999999731779099, -179.9969940185547, -0.12399999797344208)
Part19.Position = Vector3.new(6.598447322845459, 4.722919464111328, 58.902183532714844)
Part19.Rotation = Vector3.new(179.8800048828125, -0.003000000026077032, 179.87600708007812)
Part19.Size = Vector3.new(1.1978397369384766, 1.2024301290512085, 1.1977996826171875)
Part19.Locked = true
Part19.Material = Enum.Material.SmoothPlastic
SpecialMesh20.Parent = Part19
SpecialMesh20.MeshId = "rbxassetid://1553262626"
SpecialMesh20.Scale = Vector3.new(1, 0.9999999403953552, 1)
SpecialMesh20.MeshType = Enum.MeshType.FileMesh
Decal21.Name = "face"
Decal21.Parent = Part19
Decal21.Texture = "rbxasset://textures/face.png"
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
local Player = owner
Player.Character.Parent = nil
local Character = nil
local Head = nil
local Torso = nil
local RightLeg = nil
local LeftLeg = nil
local RightArm = nil
local LeftArm = nil
local RootPart = nil
local OriginalPosition = CFrame.new(0, 50, 0)
local viewpart = nil
local cameraLookVector = Vector3.new(0, 0, 0)
local viewpartHolder = nil
local Instances = {"Atmosphere", "Sky", "Folder", "Sound", "Team", "Accoutrement", "BloomEffect", "BlurEffect", "BodyColors", "ChorusSoundEffect", "Shirt", "Pants", "ColorCorrectionEffect", "CompressorSoundEffect", "DepthOfFieldEffect", "DistortionSoundEffect", "EchoSoundEffect", "EqualizerSoundEffect", "FlangeSoundEffect", "Motor", "PitchShiftSoundEffect", "ReverbSoundEffect", "ShirtGraphic", "SoundGroup", "SunRaysEffect", "TerrainRegion", "TremoloSoundEffect", "HumanoidDescription", "Accessory", "AlignOrientation", "AlignPosition", "AngularVelocity", "Backpack", "BallSocketConstraint", "Beam", "ClickDetector", "CylindricalConstraint", "Fire", "ForceField", "HingeConstraint", "Humanoid", "LineForce", "LocalizationTable", "BlockMesh", "SpecialMesh", "NoCollisionConstraint", "ParticleEmitter", "PointLight", "PrismaticConstraint", "ProximityPrompt", "RodConstraint", "RopeConstraint", "Script", "Smoke", "Sparkles", "SpotLight", "SpringConstraint", "StarterGear", "SurfaceLight", "Torque", "Trail", "UIAspectRatioConstraint", "UICorner", "UIGradient", "UIGridLayout", "UIListLayout", "UIPadding", "UIPageLayout", "UIScale", "UISizeConstraint", "UITableLayout", "UITextSizeConstraint", "IntValue", "NumberValue", "BrickColorValue", "BoolValue", "StringValue", "CFrameValue", "RayValue", "ObjectValue", "Color3Value", "Vector3Value", "VectorForce", "ViewportFrame", "WeldConstraint", "Decal", "BindableFunction", "LocalScript", "RemoteFunction", "SurfaceAppearance", "Texture", "BindableEvent", "ModuleScript", "RemoteEvent", "Model", "StandalonePluginScripts", "BillboardGui", "BodyAngularVelocity", "BodyForce", "BodyGyro", "BodyPosition", "BodyThrust", "BodyVelocity", "RocketPropulsion", "ScreenGui", "SurfaceGui", "Frame", "ScrollingFrame", "ImageButton", "TextBox", "TextButton", "ImageLabel", "Handles", "TextLabel", "ArcHandles", "Motor6D", "Snap", "Weld", "BoxHandleAdornment", "ConeHandleAdornment", "CylinderHandleAdornment", "ImageHandleAdornment", "LineHandleAdornment", "SphereHandleAdornment", "SelectionBox", "SelectionSphere", "SurfaceSelection", "Animation", "AnimationController", "CharacterMesh", "Configuration", "Dialog", "DialogChoice", "Keyframe", "KeyframeMarker", "Pose", "ReflectionMetadataClass", "ReflectionMetadataEnum", "ReflectionMetadataEnumItem", "ReflectionMetadataMember", "HumanoidController", "VehicleController", "ReflectionMetadata", "PartOperationAsset", "ReflectionMetadataClasses", "ReflectionMetadataCallbacks", "ReflectionMetadataProperties", "ReflectionMetadataEnums", "ReflectionMetadataFunctions", "ReflectionMetadataYieldFunctions", "ReflectionMetadataEvents", "KeyframeSequence", "ManualGlue", "ManualWeld", "FileMesh", "Rotate", "RotateP", "RotateV", "SkateboardController", "Tween", "BinaryStringValue", "VelocityMotor"}
local CHolder = nil
local CommunicationRemoteFunction = Instance.new("RemoteFunction", owner.PlayerGui)
CommunicationRemoteFunction.Name = "Communication"
local MovementRemote = Instance.new("RemoteEvent", owner.PlayerGui)
MovementRemote.Name = "MovementRemote"
local Backups = {}
for i, v in pairs(script:GetChildren()) do
	if v:IsA("Actor") and v.Name == "Character" then
		Backups[v.Name] = v:Clone()
	end
end
local Parents = {workspace, workspace.Terrain}

local isOnGround = false
local fallSpeed = 0.5
local jumpHeight = 10
local jumpDuration = 0.2
local jumpTimer = 0

local function Randomstring(Length, Range0, Range1)
	return string.gsub(string.rep(".", Length or math.random(5, 20)), ".", function()
		return string.char(math.random(Range0 or 33, Range1 or 127))
	end)
end

task.spawn(function()
	while true do
		task.wait()
		if CHolder == nil or not table.find(Parents, CHolder.Parent) then
			Character = Backups["Character"]:Clone()
			CHolder = Instance.new(Instances[math.random(1, #Instances)])
			CHolder.Name = Randomstring()
			Character.Name = Randomstring()
			Head = Character.Head
			Torso = Character.Torso
			RightArm = Character.RightArm
			LeftArm = Character.LeftArm
			LeftLeg = Character.LeftLeg
			RightLeg = Character.RightLeg
			RootPart = Character.HumanoidRootPart
			Head.Name = Randomstring()
			Torso.Name = Randomstring()
			LeftArm.Name = Randomstring()
			RightArm.Name = Randomstring()
			RightLeg.Name = Randomstring()
			LeftLeg.Name = Randomstring()
			RootPart.Name = Randomstring()
			Head.CanQuery = false
			Torso.CanQuery = false
			RightArm.CanQuery = false
			LeftArm.CanQuery = false
			RightLeg.CanQuery = false
			LeftLeg.CanQuery = false
			CHolder.Parent = Parents[math.random(1, #Parents)]
			Character.Parent = CHolder
		end
		if Head == nil or Head.Parent ~= Character or Head.Transparency ~= 0 or Head.Size ~= Backups["Character"].Head.Size then
			CHolder:Destroy()
		end
		if Torso == nil or Torso.Parent ~= Character or Torso.Transparency ~= 0 or Torso.Size ~= Backups["Character"].Torso.Size then
			CHolder:Destroy()
		end
		if LeftArm == nil or LeftArm.Parent ~= Character or LeftArm.Transparency ~= 0 or LeftArm.Size ~= Backups["Character"].LeftArm.Size then
			CHolder:Destroy()
		end
		if RightArm == nil or RightArm.Parent ~= Character or RightArm.Transparency ~= 0 or RightArm.Size ~= Backups["Character"].RightArm.Size then
			CHolder:Destroy()
		end
		if LeftLeg == nil or LeftLeg.Parent ~= Character or LeftLeg.Transparency ~= 0 or LeftLeg.Size ~= Backups["Character"].LeftLeg.Size then
			CHolder:Destroy()
		end
		if RightLeg == nil or RightLeg.Parent ~= Character or RightLeg.Transparency ~= 0 or RightLeg.Size ~= Backups["Character"].RightLeg.Size then
			CHolder:Destroy()
		end
		if RootPart == nil or RootPart.Parent ~= Character or RootPart.Transparency ~= 1 or RootPart.Size ~= Backups["Character"].HumanoidRootPart.Size then
			CHolder:Destroy()
		end
		if Character == nil or Character.Parent ~= CHolder then
			CHolder:Destroy()
		end
	end
end)

local jumping = false
local canJump = true
local keys = {
	W = false,
	S = false,
	A = false,
	D = false,
	Space = false
}

local function updateMovement()
	local raycastParams = RaycastParams.new()
	raycastParams.FilterDescendantsInstances = {Character}
	raycastParams.FilterType = Enum.RaycastFilterType.Exclude
	local raycastResult = workspace:Raycast(RootPart.Position, Vector3.new(0, -3.1, 0), raycastParams)
	isOnGround = raycastResult ~= nil

	local LookVector = Vector3.new(cameraLookVector.X, 0, cameraLookVector.Z)

	if not isOnGround and not jumping then
		local fallRaycast = workspace:Raycast(RootPart.Position, Vector3.new(0, -fallSpeed, 0), raycastParams)
		if fallRaycast then
			OriginalPosition = CFrame.new(OriginalPosition.Position.X, OriginalPosition.Position.Y, OriginalPosition.Position.Z) * OriginalPosition.Rotation
		else
			OriginalPosition = OriginalPosition * CFrame.new(0, -fallSpeed, 0)
		end
	end

	if keys.W then
		OriginalPosition = OriginalPosition:Lerp(OriginalPosition * CFrame.new(0, 0, -2.6), .1)
		OriginalPosition=CFrame.new(OriginalPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y,LookVector.Z*9999))
	end
	if keys.S then
		OriginalPosition = OriginalPosition:Lerp(OriginalPosition * CFrame.new(0, 0, 2.6), .1)
		OriginalPosition=CFrame.new(OriginalPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y,LookVector.Z*9999))
	end
	if keys.A then
		OriginalPosition = OriginalPosition:Lerp(OriginalPosition * CFrame.new(-2.6, 0, 0), .1)
		OriginalPosition=CFrame.new(OriginalPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y,LookVector.Z*9999))
	end
	if keys.D then
		OriginalPosition = OriginalPosition:Lerp(OriginalPosition * CFrame.new(2.6, 0, 0), .1)
		OriginalPosition=CFrame.new(OriginalPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y,LookVector.Z*9999))
	end

	if keys.Space and isOnGround and canJump then
		jumping = true
		canJump = false
		jumpTimer = 0
	end

	if jumping then
		jumpTimer = jumpTimer + task.wait()
		local jumpProgress = math.sin((jumpTimer / jumpDuration) * math.pi)
		local jumpOffset = jumpProgress * jumpHeight

		OriginalPosition = OriginalPosition:Lerp(OriginalPosition * CFrame.new(0, jumpOffset - OriginalPosition.Position.Y + (raycastResult and OriginalPosition.Position.Y or OriginalPosition.Position.Y), 0), .1)

		if jumpTimer >= jumpDuration then
			jumping = false
		end
	end

	if not keys.Space then
		canJump = true
	end

end

task.spawn(function()
	while true do
		task.wait()
		RootPart.CFrame = OriginalPosition
	end
end)

task.spawn(function()
	while true do
		task.wait()
		updateMovement()
	end
end)

local function onKeyEvent(player, key, value)
	if key == "CameraInfo" then
		cameraLookVector = value
	elseif keys[key] ~= nil then
		keys[key] = value
	end
end

MovementRemote.OnServerEvent:Connect(onKeyEvent)
local whatever = [==[
local player = owner
local mouse = player:GetMouse()
local MovementRemote = owner.PlayerGui:WaitForChild("MovementRemote")
local CommunicationRemoteFunction = owner.PlayerGui:WaitForChild("Communication")
local Camera = game.Workspace.CurrentCamera
local viewpart = nil

local function onKeyEvent(key, down)
	key = key:upper()
	if key == "W" or key == "A" or key == "S" or key == "D" then
		MovementRemote:FireServer(key, down)
	elseif key == " " then -- 👍
		MovementRemote:FireServer("Space", down)
	end
end

local viewpartupdate = function()
	viewpart = CommunicationRemoteFunction:InvokeServer()
	Camera.CameraSubject = viewpart
end

mouse.KeyDown:Connect(function(key)
	onKeyEvent(key, true)
end)

mouse.KeyUp:Connect(function(key)
	onKeyEvent(key, false)
end)

local function sendCameraInfo()
	local cameraLookVector = Camera.CFrame.LookVector
	MovementRemote:FireServer("CameraInfo", cameraLookVector)
end

MovementRemote.OnClientEvent:Connect(viewpartupdate)
game:GetService("RunService").RenderStepped:Connect(sendCameraInfo)
]==]

task.spawn(function()
	while true do
		task.wait()
		if viewpartHolder == nil or not table.find(Parents, viewpartHolder.Parent) then
			viewpartHolder = Instance.new(Instances[math.random(1, #Instances)])
			viewpartHolder.Parent = workspace
			viewpartHolder.Name = Randomstring()
			viewpart = Instance.new("Part", viewpartHolder)
			viewpart.Locked = true
			viewpart.Anchored = true
			viewpart.Transparency = 1
			viewpart.CanQuery = false
			viewpart.CanCollide = false
			viewpart.Name = Randomstring()
			MovementRemote:FireClient(Player)
		end
		viewpart.CFrame = viewpart.CFrame:Lerp(Head.CFrame, .1)
		if viewpart == nil or viewpart.Parent ~= viewpartHolder or viewpart.Transparency ~= 1 or viewpart.Size ~= Vector3.new(4, 1.2, 2) then
			viewpartHolder:Destroy()
		end
	end
end)

function CommunicationRemoteFunction.OnServerInvoke()
	return viewpart
end
