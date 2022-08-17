
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
Model0 = Instance.new("Model")
RemoteEvent1 = Instance.new("RemoteEvent")
ParticleEmitter2 = Instance.new("ParticleEmitter")
MeshPart3 = Instance.new("MeshPart")
MeshPart4 = Instance.new("MeshPart")
ParticleEmitter5 = Instance.new("ParticleEmitter")
ParticleEmitter6 = Instance.new("ParticleEmitter")
Trail7 = Instance.new("Trail")
ScreenGui8 = Instance.new("ScreenGui")
TextButton9 = Instance.new("TextButton")
Frame10 = Instance.new("Frame")
TextLabel11 = Instance.new("TextLabel")
TextLabel12 = Instance.new("TextLabel")
TextLabel13 = Instance.new("TextLabel")
TextLabel14 = Instance.new("TextLabel")
Script15 = Instance.new("Script")
MeshPart16 = Instance.new("MeshPart")
ParticleEmitter17 = Instance.new("ParticleEmitter")
Weld18 = Instance.new("Weld")
Folder19 = Instance.new("Folder")
Folder20 = Instance.new("Folder")
ParticleEmitter21 = Instance.new("ParticleEmitter")
ParticleEmitter22 = Instance.new("ParticleEmitter")
ParticleEmitter23 = Instance.new("ParticleEmitter")
Script24 = Instance.new("Script")
Script25 = Instance.new("Script")
LocalScript26 = Instance.new("LocalScript")
Model0.Name = "Banzai"
Model0.Parent = mas
RemoteEvent1.Name = "Event"
RemoteEvent1.Parent = Model0
ParticleEmitter2.Name = "Blood"
ParticleEmitter2.Parent = Model0
ParticleEmitter2.Speed = NumberRange.new(10, 35)
ParticleEmitter2.Rotation = NumberRange.new(0, 360)
ParticleEmitter2.Color = ColorSequence.new(Color3.new(1, 0, 0),Color3.new(0.490196, 0.0156863, 0.0156863))
ParticleEmitter2.Enabled = false
ParticleEmitter2.LightEmission = 0.5
ParticleEmitter2.Texture = "rbxassetid://296981321"
ParticleEmitter2.Transparency = NumberSequence.new(0.4375,0.7472527027130127,0.8626373410224915,0.9450549483299255,1)
ParticleEmitter2.Size = NumberSequence.new(0,1.187499761581421,1.3124996423721313,1.4375001192092896,2.249999523162842,3.125,4.625)
ParticleEmitter2.Acceleration = Vector3.new(0, -35, 0)
ParticleEmitter2.Drag = 5
ParticleEmitter2.EmissionDirection = Enum.NormalId.Front
ParticleEmitter2.Lifetime = NumberRange.new(1, 2)
ParticleEmitter2.Rate = 999
ParticleEmitter2.RotSpeed = NumberRange.new(-5, 5)
ParticleEmitter2.SpreadAngle = Vector2.new(35, 35)
ParticleEmitter2.VelocitySpread = 35
MeshPart3.Name = "Helmet"
MeshPart3.Parent = Model0
MeshPart3.CFrame = CFrame.new(-35.8891525, 0.531448364, -44.2127075, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart3.Position = Vector3.new(-35.88915252685547, 0.5314483642578125, -44.21270751953125)
MeshPart3.Color = Color3.new(0.313726, 0.427451, 0.329412)
MeshPart3.Size = Vector3.new(1.6173800230026245, 0.6509385108947754, 1.7029199600219727)
MeshPart3.Anchored = true
MeshPart3.BrickColor = BrickColor.new("Slime green")
MeshPart3.CanCollide = false
MeshPart3.Material = Enum.Material.Metal
MeshPart3.brickColor = BrickColor.new("Slime green")
MeshPart4.Name = "Missile"
MeshPart4.Parent = Model0
MeshPart4.CFrame = CFrame.new(30.2103653, 129.23703, -133.01297, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart4.Position = Vector3.new(30.210365295410156, 129.23703002929688, -133.01296997070312)
MeshPart4.Color = Color3.new(0.156863, 0.498039, 0.278431)
MeshPart4.Size = Vector3.new(0.3606469929218292, 0.3600960075855255, 1.376829981803894)
MeshPart4.Anchored = true
MeshPart4.BrickColor = BrickColor.new("Dark green")
MeshPart4.CanCollide = false
MeshPart4.Material = Enum.Material.Metal
MeshPart4.brickColor = BrickColor.new("Dark green")
MeshPart4.TextureID = "rbxassetid://103967643"
ParticleEmitter5.Name = "Jet"
ParticleEmitter5.Parent = mas
ParticleEmitter5.Speed = NumberRange.new(2, 2)
ParticleEmitter5.Rotation = NumberRange.new(0, 359)
ParticleEmitter5.Color = ColorSequence.new(Color3.new(1, 0.333333, 0),Color3.new(1, 0.333333, 0))
ParticleEmitter5.LightEmission = 1
ParticleEmitter5.Transparency = NumberSequence.new(1,0.5,0,0.20000000298023224,1)
ParticleEmitter5.Size = NumberSequence.new(0.800000011920929,0)
ParticleEmitter5.Drag = -2
ParticleEmitter5.EmissionDirection = Enum.NormalId.Back
ParticleEmitter5.Lifetime = NumberRange.new(0.5, 1)
ParticleEmitter5.LockedToPart = true
ParticleEmitter5.Rate = 999
ParticleEmitter6.Name = "JetIn"
ParticleEmitter6.Parent = mas
ParticleEmitter6.Speed = NumberRange.new(2, 2)
ParticleEmitter6.Rotation = NumberRange.new(0, 359)
ParticleEmitter6.Color = ColorSequence.new(Color3.new(1, 1, 0.498039),Color3.new(1, 1, 0.498039))
ParticleEmitter6.LightEmission = 1
ParticleEmitter6.Transparency = NumberSequence.new(1,0.5,0,0.20000000298023224,1)
ParticleEmitter6.Size = NumberSequence.new(0.5,0)
ParticleEmitter6.Drag = -2
ParticleEmitter6.EmissionDirection = Enum.NormalId.Back
ParticleEmitter6.Lifetime = NumberRange.new(0.5, 1)
ParticleEmitter6.LockedToPart = true
ParticleEmitter6.Rate = 999
Trail7.Parent = MeshPart4
Trail7.Attachment0 = nil
Trail7.Attachment1 = nil
Trail7.Color = ColorSequence.new(Color3.new(1, 1, 0.498039),Color3.new(1, 1, 0.498039))
Trail7.FaceCamera = true
Trail7.LightEmission = 1
Trail7.Texture = "rbxassetid://1251856844"
Trail7.Transparency = NumberSequence.new(0.5,1)
Trail7.Lifetime = 0.20000000298023224
ScreenGui8.Name = "ControlsGUI"
ScreenGui8.Parent = Model0
ScreenGui8.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TextButton9.Name = "ToggleButton"
TextButton9.Parent = ScreenGui8
TextButton9.Position = UDim2.new(0.699999988, 0, 0.949999988, 0)
TextButton9.Size = UDim2.new(0.100000001, 0, 0.0500000007, 0)
TextButton9.BackgroundColor = BrickColor.new("Black")
TextButton9.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
TextButton9.BackgroundTransparency = 0.5
TextButton9.BorderColor3 = Color3.new(0.137255, 0.137255, 0.137255)
TextButton9.BorderSizePixel = 5
TextButton9.Font = Enum.Font.Gotham
TextButton9.FontSize = Enum.FontSize.Size14
TextButton9.Text = "Controls"
TextButton9.TextColor = BrickColor.new("Institutional white")
TextButton9.TextColor3 = Color3.new(1, 1, 1)
TextButton9.TextScaled = true
TextButton9.TextSize = 14
TextButton9.TextWrap = true
TextButton9.TextWrapped = true
Frame10.Name = "Controls"
Frame10.Parent = TextButton9
Frame10.Position = UDim2.new(-2.07500005, 0, -2.8499999, 0)
Frame10.Visible = false
Frame10.Size = UDim2.new(4, 0, 2.5, 0)
Frame10.BackgroundColor = BrickColor.new("Black")
Frame10.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Frame10.BackgroundTransparency = 0.5
Frame10.BorderColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Frame10.BorderSizePixel = 5
TextLabel11.Name = "ScriptCredits"
TextLabel11.Parent = Frame10
TextLabel11.Size = UDim2.new(1, 0, 0.300000012, 0)
TextLabel11.BackgroundColor = BrickColor.new("Really black")
TextLabel11.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel11.BackgroundTransparency = 0.75
TextLabel11.BorderColor = BrickColor.new("Really black")
TextLabel11.BorderColor3 = Color3.new(0, 0, 0)
TextLabel11.BorderSizePixel = 5
TextLabel11.Font = Enum.Font.Gotham
TextLabel11.FontSize = Enum.FontSize.Size14
TextLabel11.Text = "BANZAI BAZOOKA by PityPolygon"
TextLabel11.TextColor = BrickColor.new("Institutional white")
TextLabel11.TextColor3 = Color3.new(1, 1, 1)
TextLabel11.TextScaled = true
TextLabel11.TextSize = 14
TextLabel11.TextWrap = true
TextLabel11.TextWrapped = true
TextLabel12.Name = "Text"
TextLabel12.Parent = Frame10
TextLabel12.Position = UDim2.new(0, 0, 0.349999994, 0)
TextLabel12.Size = UDim2.new(1, 0, 0.25, 0)
TextLabel12.BackgroundColor = BrickColor.new("Institutional white")
TextLabel12.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel12.BackgroundTransparency = 1
TextLabel12.Font = Enum.Font.Gotham
TextLabel12.FontSize = Enum.FontSize.Size14
TextLabel12.Text = "Mouse - Hold to unleash stored missiles, explosions can fling you"
TextLabel12.TextColor = BrickColor.new("Institutional white")
TextLabel12.TextColor3 = Color3.new(1, 1, 1)
TextLabel12.TextScaled = true
TextLabel12.TextSize = 14
TextLabel12.TextWrap = true
TextLabel12.TextWrapped = true
TextLabel13.Name = "Text"
TextLabel13.Parent = Frame10
TextLabel13.Position = UDim2.new(0, 0, 0.699999988, 0)
TextLabel13.Size = UDim2.new(1, 0, 0.25, 0)
TextLabel13.BackgroundColor = BrickColor.new("Institutional white")
TextLabel13.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel13.BackgroundTransparency = 1
TextLabel13.Font = Enum.Font.Gotham
TextLabel13.FontSize = Enum.FontSize.Size14
TextLabel13.Text = "Z - Hold to store missiles"
TextLabel13.TextColor = BrickColor.new("Institutional white")
TextLabel13.TextColor3 = Color3.new(1, 1, 1)
TextLabel13.TextScaled = true
TextLabel13.TextSize = 14
TextLabel13.TextWrap = true
TextLabel13.TextWrapped = true
TextLabel14.Name = "Stored"
TextLabel14.Parent = TextButton9
TextLabel14.Position = UDim2.new(-1.14999998, 0, 0, 0)
TextLabel14.Size = UDim2.new(1, 0, 1, 0)
TextLabel14.BackgroundColor = BrickColor.new("Black")
TextLabel14.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
TextLabel14.BackgroundTransparency = 0.75
TextLabel14.BorderColor3 = Color3.new(0.137255, 0.137255, 0.137255)
TextLabel14.BorderSizePixel = 5
TextLabel14.Font = Enum.Font.Gotham
TextLabel14.FontSize = Enum.FontSize.Size14
TextLabel14.Text = "STORED: 20"
TextLabel14.TextColor = BrickColor.new("Institutional white")
TextLabel14.TextColor3 = Color3.new(1, 1, 1)
TextLabel14.TextScaled = true
TextLabel14.TextSize = 14
TextLabel14.TextStrokeColor3 = Color3.new(1, 1, 1)
TextLabel14.TextTransparency = 0.5
TextLabel14.TextWrap = true
TextLabel14.TextWrapped = true
table.insert(cors,sandbox(Script15,function()
local PLAYER = script.Parent.Parent.Parent
if PLAYER then
	if PLAYER:IsA("Player") then
		PLAYER.CharacterAdded:Connect(function()
			script.Parent:Remove()
		end)
	end
end
end))
MeshPart16.Name = "Bazooka"
MeshPart16.Parent = Model0
MeshPart16.CFrame = CFrame.new(-34.1892014, 0.931541443, -43.9626999, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart16.Position = Vector3.new(-34.18920135498047, 0.9315414428710938, -43.96269989013672)
MeshPart16.Color = Color3.new(0.313726, 0.427451, 0.329412)
MeshPart16.Size = Vector3.new(1.229813814163208, 1.8630937337875366, 5.642528533935547)
MeshPart16.Anchored = true
MeshPart16.BrickColor = BrickColor.new("Slime green")
MeshPart16.CanCollide = false
MeshPart16.Material = Enum.Material.Metal
MeshPart16.brickColor = BrickColor.new("Slime green")
ParticleEmitter17.Name = "Pop"
ParticleEmitter17.Parent = mas
ParticleEmitter17.Speed = NumberRange.new(5, 8)
ParticleEmitter17.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
ParticleEmitter17.Enabled = false
ParticleEmitter17.Texture = "rbxasset://textures/particles/smoke_main.dds"
ParticleEmitter17.Transparency = NumberSequence.new(0,1)
ParticleEmitter17.ZOffset = 1
ParticleEmitter17.Size = NumberSequence.new(0.5,1)
ParticleEmitter17.Drag = 5
ParticleEmitter17.EmissionDirection = Enum.NormalId.Front
ParticleEmitter17.Lifetime = NumberRange.new(0.10000000149011612, 0.5)
ParticleEmitter17.Rate = 999
ParticleEmitter17.SpreadAngle = Vector2.new(35, 35)
ParticleEmitter17.VelocitySpread = 35
Weld18.Parent = MeshPart16
Weld18.C0 = CFrame.new(0, -0.93154496, 0, 1, 0, 0, 0, 0, -1, 0, 1, 0)
Weld18.C1 = CFrame.new(-34.1892014, 9.99999619, -43.9626999, 1, 0, 0, 0, 0, -1, 0, 1, 0)
Weld18.Part0 = MeshPart16
Weld18.Part1 = nil
Weld18.part1 = nil
Folder19.Name = "ServerScript"
Folder19.Parent = Model0
Folder20.Name = "Grenade"
Folder20.Parent = Folder19
ParticleEmitter21.Name = "Core"
ParticleEmitter21.Parent = Folder20
ParticleEmitter21.Speed = NumberRange.new(10, 25)
ParticleEmitter21.Rotation = NumberRange.new(-400, 400)
ParticleEmitter21.Color = ColorSequence.new(Color3.new(1, 1, 0.803922),Color3.new(0.870588, 0.619608, 0.160784),Color3.new(0.635294, 0.333333, 0.129412),Color3.new(0, 0, 0))
ParticleEmitter21.Enabled = false
ParticleEmitter21.LightEmission = 1
ParticleEmitter21.LightInfluence = 1
ParticleEmitter21.Texture = "rbxasset://textures/particles/explosion01_core_main.dds"
ParticleEmitter21.Transparency = NumberSequence.new(0,0.25,1)
ParticleEmitter21.Size = NumberSequence.new(5,7)
ParticleEmitter21.Drag = 2
ParticleEmitter21.Lifetime = NumberRange.new(0.5, 2)
ParticleEmitter21.Rate = 999
ParticleEmitter21.RotSpeed = NumberRange.new(-90, 90)
ParticleEmitter21.SpreadAngle = Vector2.new(180, 180)
ParticleEmitter21.VelocitySpread = 180
ParticleEmitter22.Name = "Black"
ParticleEmitter22.Parent = Folder20
ParticleEmitter22.Speed = NumberRange.new(20, 50)
ParticleEmitter22.Rotation = NumberRange.new(-400, 400)
ParticleEmitter22.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
ParticleEmitter22.Enabled = false
ParticleEmitter22.LightInfluence = 1
ParticleEmitter22.Texture = "rbxasset://textures/particles/explosion01_core_main.dds"
ParticleEmitter22.Transparency = NumberSequence.new(0.615384578704834,0.7142857313156128,1)
ParticleEmitter22.ZOffset = 0.20000000298023224
ParticleEmitter22.Size = NumberSequence.new(1.3124996423721313,3.062499761581421)
ParticleEmitter22.Drag = 10
ParticleEmitter22.Lifetime = NumberRange.new(0, 0.6000000238418579)
ParticleEmitter22.Rate = 999
ParticleEmitter22.RotSpeed = NumberRange.new(-90, 90)
ParticleEmitter22.SpreadAngle = Vector2.new(180, 180)
ParticleEmitter22.VelocitySpread = 180
ParticleEmitter23.Name = "Dust"
ParticleEmitter23.Parent = Folder20
ParticleEmitter23.Speed = NumberRange.new(45, 45)
ParticleEmitter23.Rotation = NumberRange.new(0, 359)
ParticleEmitter23.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
ParticleEmitter23.Enabled = false
ParticleEmitter23.LightInfluence = 1
ParticleEmitter23.Texture = "rbxasset://textures/particles/smoke_main.dds"
ParticleEmitter23.Transparency = NumberSequence.new(0.75,1)
ParticleEmitter23.ZOffset = 2
ParticleEmitter23.Size = NumberSequence.new(0,0,1,4.124999523162842,7.5,10)
ParticleEmitter23.Drag = 3
ParticleEmitter23.EmissionDirection = Enum.NormalId.Front
ParticleEmitter23.Lifetime = NumberRange.new(0.20000000298023224, 2)
ParticleEmitter23.Rate = 9999
ParticleEmitter23.SpreadAngle = Vector2.new(0, 180)
Script24.Name = "R15Ragdoll"
table.insert(cors,sandbox(Script24,function()
local character = script.Parent

function recurse(root,callback,i)
	i= i or 0
	for _,v in pairs(root:GetChildren()) do
		i = i + 1
		callback(i,v)
		
		if #v:GetChildren() > 0 then
			i = recurse(v,callback,i)
		end
	end
	
	return i
end

function ragdollJoint(part0, part1, attachmentName, className, properties)
	attachmentName = attachmentName.."RigAttachment"
	local constraint = Instance.new(className.."Constraint")
	constraint.Attachment0 = part0:FindFirstChild(attachmentName)
	constraint.Attachment1 = part1:FindFirstChild(attachmentName)
	constraint.Name = "RagdollConstraint"..part1.Name
	
	for _,propertyData in next,properties or {} do
		constraint[propertyData[1]] = propertyData[2]
	end
	
	constraint.Parent = character
end

function getAttachment0(attachmentName)
	for _,child in next,character:GetChildren() do
		local attachment = child:FindFirstChild(attachmentName)
		if attachment then
			return attachment
		end
	end
end

--character:WaitForChild("Humanoid").Died:connect(function()
	--Make it so ragdoll can't collide with invisible HRP, but don't let HRP fall through map and be destroyed in process	

	--Helps to fix constraint spasms
	recurse(character, function(_,v)
		if v:IsA("Attachment") then
			v.Axis = Vector3.new(0, 1, 0)
			v.SecondaryAxis = Vector3.new(0, 0, 1)
			v.Rotation = Vector3.new(0, 0, 0)
		end
	end)
	
	--Re-attach hats
	for _,child in next,character:GetChildren() do
		if child:IsA("Accoutrement") then
			--Loop through all parts instead of only checking for one to be forwards-compatible in the event
			--ROBLOX implements multi-part accessories
			for _,part in next,child:GetChildren() do
				if part:IsA("BasePart") then
					local attachment1 = part:FindFirstChildOfClass("Attachment")
					local attachment0 = getAttachment0(attachment1.Name)
					if attachment0 and attachment1 then
						--Shouldn't use constraints for this, but have to because of a ROBLOX idiosyncrasy where
						--joints connecting a character are perpetually deleted while the character is dead
						local constraint = Instance.new("HingeConstraint")
						constraint.Attachment0 = attachment0
						constraint.Attachment1 = attachment1
						constraint.LimitsEnabled = true
						constraint.UpperAngle = 0 --Simulate weld by making it difficult for constraint to move
						constraint.LowerAngle = 0
						constraint.Parent = character
					end
				end
			end
		end
	end
	
	ragdollJoint(character.LowerTorso, character.UpperTorso, "Waist", "BallSocket", {
		{"LimitsEnabled",true};
		{"UpperAngle",5};
	})
	ragdollJoint(character.UpperTorso, character.Head, "Neck", "BallSocket", {
		{"LimitsEnabled",true};
		{"UpperAngle",15};
	})
	
	local handProperties = {
		{"LimitsEnabled", true};
		{"UpperAngle",0};
		{"LowerAngle",0};
	}
	ragdollJoint(character.LeftLowerArm, character.LeftHand, "LeftWrist", "Hinge", handProperties)
	ragdollJoint(character.RightLowerArm, character.RightHand, "RightWrist", "Hinge", handProperties)
	
	local shinProperties = {
		{"LimitsEnabled", true};
		{"UpperAngle", 0};
		{"LowerAngle", -75};
	}
	ragdollJoint(character.LeftUpperLeg, character.LeftLowerLeg, "LeftKnee", "Hinge", shinProperties)
	ragdollJoint(character.RightUpperLeg, character.RightLowerLeg, "RightKnee", "Hinge", shinProperties)
	
	local footProperties = {
		{"LimitsEnabled", true};
		{"UpperAngle", 15};
		{"LowerAngle", -45};
	}
	ragdollJoint(character.LeftLowerLeg, character.LeftFoot, "LeftAnkle", "Hinge", footProperties)
	ragdollJoint(character.RightLowerLeg, character.RightFoot, "RightAnkle", "Hinge", footProperties)
	
	--TODO fix ability for socket to turn backwards whenn ConeConstraints are shipped
	ragdollJoint(character.UpperTorso, character.LeftUpperArm, "LeftShoulder", "BallSocket")
	ragdollJoint(character.LeftUpperArm, character.LeftLowerArm, "LeftElbow", "BallSocket")
	ragdollJoint(character.UpperTorso, character.RightUpperArm, "RightShoulder", "BallSocket")
	ragdollJoint(character.RightUpperArm, character.RightLowerArm, "RightElbow", "BallSocket")
	ragdollJoint(character.LowerTorso, character.LeftUpperLeg, "LeftHip", "BallSocket")
	ragdollJoint(character.LowerTorso, character.RightUpperLeg, "RightHip", "BallSocket")
--end)
end))
Script24.Disabled = true
Script25.Name = "R6Ragdoll"
table.insert(cors,sandbox(Script25,function()
local head = script.Parent["Head"]
local leftarm = script.Parent["Left Arm"]
local leftleg = script.Parent["Left Leg"]
local rightleg = script.Parent["Right Leg"]
local rightarm = script.Parent["Right Arm"]
local torso = script.Parent.Torso
local root = script.Parent:FindFirstChild("HumanoidRootPart")

local HeadA = Instance.new("Attachment")
HeadA.Name = "HeadA"
HeadA.Parent = head
HeadA.Position = Vector3.new(0, -0.5, 0)
HeadA.Rotation = Vector3.new(0, 0, -0)
HeadA.Axis = Vector3.new(1, -0, -0)
HeadA.SecondaryAxis = Vector3.new(0, 1, 0)

local LeftArmA = Instance.new("Attachment")
LeftArmA.Name = "LeftArmA"
LeftArmA.Parent = leftarm
LeftArmA.Position = Vector3.new(0.4, 0.8, 0)
LeftArmA.Rotation = Vector3.new(-180, 0, 90)
LeftArmA.Axis = Vector3.new(0, -1, -0)
LeftArmA.SecondaryAxis = Vector3.new(-1, 0, 0)

local LeftLegA = Instance.new("Attachment")
LeftLegA.Name = "LeftLegA"
LeftLegA.Parent = leftleg
LeftLegA.Position = Vector3.new(0, 1, 0)
LeftLegA.Rotation = Vector3.new(90, -90, 0)
LeftLegA.Axis = Vector3.new(0, -1, -0)
LeftLegA.SecondaryAxis = Vector3.new(0, -0, 1)

local RightArmA = Instance.new("Attachment")
RightArmA.Name = "RightArmA"
RightArmA.Parent = rightarm
RightArmA.Position = Vector3.new(0, 1, 0)
RightArmA.Rotation = Vector3.new(90, -90, 0)
RightArmA.Axis = Vector3.new(0, -1, -0)
RightArmA.SecondaryAxis = Vector3.new(0, -0, 1)

local RightLegA = Instance.new("Attachment")
RightLegA.Name = "RightLegA"
RightLegA.Parent = rightleg
RightLegA.Position = Vector3.new(-0.4, 0.8, 0)
RightLegA.Rotation = Vector3.new(-180, 0, 90)
RightLegA.Axis = Vector3.new(0, -1, -0)
RightLegA.SecondaryAxis = Vector3.new(0, 1, 0)

local TorsoA = Instance.new("Attachment")
TorsoA.Name = "TorsoA"
TorsoA.Parent = torso
TorsoA.Position = Vector3.new(0.5, -1.1, 0)
TorsoA.Rotation = Vector3.new(90, -90, 0)
TorsoA.Axis = Vector3.new(0, -1, -0)
TorsoA.SecondaryAxis = Vector3.new(0, -0, 1)

local TorsoA1 = Instance.new("Attachment")
TorsoA1.Name = "TorsoA1"
TorsoA1.Parent = torso
TorsoA1.Position = Vector3.new(-0.5, -1.1, 0)
TorsoA1.Rotation = Vector3.new(90, -90, 0)
TorsoA1.Axis = Vector3.new(0, -1, -0)
TorsoA1.SecondaryAxis = Vector3.new(0, -0, 1)

local TorsoA2 = Instance.new("Attachment")
TorsoA2.Name = "TorsoA2"
TorsoA2.Parent = torso
TorsoA2.Position = Vector3.new(-1, 0.8, 0)
TorsoA2.Rotation = Vector3.new(0, 0, -180)
TorsoA2.Axis = Vector3.new(-1, -0, 0)
TorsoA2.SecondaryAxis = Vector3.new(0, -1, 0)

local TorsoA3 = Instance.new("Attachment")
TorsoA3.Name = "TorsoA3"
TorsoA3.Parent = torso
TorsoA3.Position = Vector3.new(1, 0.8, 0)
TorsoA3.Rotation = Vector3.new(-180, 0, 0)
TorsoA3.Axis = Vector3.new(1, -0, 0)
TorsoA3.SecondaryAxis = Vector3.new(-0, -1, -0)

local TorsoA4 = Instance.new("Attachment")
TorsoA4.Name = "TorsoA4"
TorsoA4.Parent = torso
TorsoA4.Position = Vector3.new(0, 1, 0)
TorsoA4.Rotation = Vector3.new(0, 0, -0)
TorsoA4.Axis = Vector3.new(1, -0, 0)
TorsoA4.SecondaryAxis = Vector3.new(0, 1, 0)

local TorsoA5 = Instance.new("Attachment")
TorsoA5.Name = "TorsoA5"
TorsoA5.Parent = torso
TorsoA5.Position = Vector3.new(0, 0, 0)
TorsoA5.Rotation = Vector3.new(0, 90, 0)
TorsoA5.Axis = Vector3.new(0, 0, -1)
TorsoA5.SecondaryAxis = Vector3.new(0, 1, 0)

local rootA = Instance.new("Attachment")
rootA.Name= "rootA"
rootA.Parent = root
rootA.Position = Vector3.new(0, 0, 0)
rootA.Rotation = Vector3.new(0, 90, 0)
rootA.Axis = Vector3.new(0, 0, -1)
rootA.SecondaryAxis = Vector3.new(0, 1, 0)



	local HA = Instance.new("BallSocketConstraint")
	HA.Parent = head
	HA.Attachment0 = HeadA
	HA.Attachment1 = TorsoA4
	HA.Enabled = true
	
	local LAT = Instance.new("BallSocketConstraint")
	LAT.Parent = leftarm
	LAT.Attachment0 = LeftArmA
	LAT.Attachment1 = TorsoA2
	LAT.Enabled = true
	
	local RAT = Instance.new("BallSocketConstraint")
	RAT.Parent = rightarm
	RAT.Attachment0 = RightArmA
	RAT.Attachment1 = TorsoA3
	RAT.Enabled = true
	
	local HA = Instance.new("BallSocketConstraint")
	HA.Parent = head
	HA.Attachment0 = HeadA
	HA.Attachment1 = TorsoA4
	HA.Enabled = true
	
	local TLL = Instance.new("BallSocketConstraint")
	TLL.Parent = torso
	TLL.Attachment0 = TorsoA1
	TLL.Attachment1 = LeftLegA
	TLL.Enabled = true
	
	local TRL = Instance.new("BallSocketConstraint")
	TRL.Parent = torso
	TRL.Attachment0 = TorsoA
	TRL.Attachment1 = RightLegA
	TRL.Enabled = true
	
	local RTA = Instance.new("BallSocketConstraint")
	RTA.Parent = root
	RTA.Attachment0 = rootA
	RTA.Attachment1 = TorsoA5
	RTA.Enabled = true
end))
Script25.Disabled = true
LocalScript26.Name = "CamShake"
table.insert(cors,sandbox(LocalScript26,function()
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")

frame = 1/60
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()

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

function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end
wait()
VT = Vector3.new
MRANDOM = math.random
local A = script:FindFirstChild("Timer").Value
local B = script:FindFirstChild("Shake").Value
local HUMANOID = script.Parent:FindFirstChildOfClass("Humanoid")
local TIMER = math.ceil(A) or 35
local SHAKE = math.ceil(B) or 5
if HUMANOID then
	local FADER = SHAKE/TIMER
	for i = 1, TIMER do
		Swait()
		HUMANOID.CameraOffset = VT(MRANDOM(-(SHAKE-(FADER*i)),(SHAKE-(FADER*i)))/10,MRANDOM(-(SHAKE-(FADER*i)),(SHAKE-(FADER*i)))/10,MRANDOM(-(SHAKE-(FADER*i)),(SHAKE-(FADER*i)))/10)
	end
	HUMANOID.CameraOffset = VT(0,0,0)
end
end))
LocalScript26.Disabled = true
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
mas = game:GetService("Workspace")
Model27 = Instance.new("Model")
RemoteEvent28 = Instance.new("RemoteEvent")
ParticleEmitter29 = Instance.new("ParticleEmitter")
MeshPart30 = Instance.new("MeshPart")
MeshPart31 = Instance.new("MeshPart")
ParticleEmitter32 = Instance.new("ParticleEmitter")
ParticleEmitter33 = Instance.new("ParticleEmitter")
Trail34 = Instance.new("Trail")
ScreenGui35 = Instance.new("ScreenGui")
TextButton36 = Instance.new("TextButton")
Frame37 = Instance.new("Frame")
TextLabel38 = Instance.new("TextLabel")
TextLabel39 = Instance.new("TextLabel")
TextLabel40 = Instance.new("TextLabel")
TextLabel41 = Instance.new("TextLabel")
Script42 = Instance.new("Script")
MeshPart43 = Instance.new("MeshPart")
ParticleEmitter44 = Instance.new("ParticleEmitter")
Weld45 = Instance.new("Weld")
Folder46 = Instance.new("Folder")
Folder47 = Instance.new("Folder")
ParticleEmitter48 = Instance.new("ParticleEmitter")
ParticleEmitter49 = Instance.new("ParticleEmitter")
ParticleEmitter50 = Instance.new("ParticleEmitter")
Script51 = Instance.new("Script")
Script52 = Instance.new("Script")
LocalScript53 = Instance.new("LocalScript")
Model27.Name = "Banzai"
Model27.Parent = mas
RemoteEvent28.Name = "Event"
RemoteEvent28.Parent = Model27
ParticleEmitter29.Name = "Blood"
ParticleEmitter29.Parent = Model27
ParticleEmitter29.Speed = NumberRange.new(10, 35)
ParticleEmitter29.Rotation = NumberRange.new(0, 360)
ParticleEmitter29.Color = ColorSequence.new(Color3.new(1, 0, 0),Color3.new(0.490196, 0.0156863, 0.0156863))
ParticleEmitter29.Enabled = false
ParticleEmitter29.LightEmission = 0.5
ParticleEmitter29.Texture = "rbxassetid://296981321"
ParticleEmitter29.Transparency = NumberSequence.new(0.4375,0.7472527027130127,0.8626373410224915,0.9450549483299255,1)
ParticleEmitter29.Size = NumberSequence.new(0,1.187499761581421,1.3124996423721313,1.4375001192092896,2.249999523162842,3.125,4.625)
ParticleEmitter29.Acceleration = Vector3.new(0, -35, 0)
ParticleEmitter29.Drag = 5
ParticleEmitter29.EmissionDirection = Enum.NormalId.Front
ParticleEmitter29.Lifetime = NumberRange.new(1, 2)
ParticleEmitter29.Rate = 999
ParticleEmitter29.RotSpeed = NumberRange.new(-5, 5)
ParticleEmitter29.SpreadAngle = Vector2.new(35, 35)
ParticleEmitter29.VelocitySpread = 35
MeshPart30.Name = "Helmet"
MeshPart30.Parent = Model27
MeshPart30.CFrame = CFrame.new(-35.8891525, 0.531448364, -44.2127075, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart30.Position = Vector3.new(-35.88915252685547, 0.5314483642578125, -44.21270751953125)
MeshPart30.Color = Color3.new(0.313726, 0.427451, 0.329412)
MeshPart30.Size = Vector3.new(1.6173800230026245, 0.6509385108947754, 1.7029199600219727)
MeshPart30.Anchored = true
MeshPart30.BrickColor = BrickColor.new("Slime green")
MeshPart30.CanCollide = false
MeshPart30.Material = Enum.Material.Metal
MeshPart30.brickColor = BrickColor.new("Slime green")
MeshPart31.Name = "Missile"
MeshPart31.Parent = Model27
MeshPart31.CFrame = CFrame.new(30.2103653, 129.23703, -133.01297, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart31.Position = Vector3.new(30.210365295410156, 129.23703002929688, -133.01296997070312)
MeshPart31.Color = Color3.new(0.156863, 0.498039, 0.278431)
MeshPart31.Size = Vector3.new(0.3606469929218292, 0.3600960075855255, 1.376829981803894)
MeshPart31.Anchored = true
MeshPart31.BrickColor = BrickColor.new("Dark green")
MeshPart31.CanCollide = false
MeshPart31.Material = Enum.Material.Metal
MeshPart31.brickColor = BrickColor.new("Dark green")
MeshPart31.TextureID = "rbxassetid://103967643"
ParticleEmitter32.Name = "Jet"
ParticleEmitter32.Parent = mas
ParticleEmitter32.Speed = NumberRange.new(2, 2)
ParticleEmitter32.Rotation = NumberRange.new(0, 359)
ParticleEmitter32.Color = ColorSequence.new(Color3.new(1, 0.333333, 0),Color3.new(1, 0.333333, 0))
ParticleEmitter32.LightEmission = 1
ParticleEmitter32.Transparency = NumberSequence.new(1,0.5,0,0.20000000298023224,1)
ParticleEmitter32.Size = NumberSequence.new(0.800000011920929,0)
ParticleEmitter32.Drag = -2
ParticleEmitter32.EmissionDirection = Enum.NormalId.Back
ParticleEmitter32.Lifetime = NumberRange.new(0.5, 1)
ParticleEmitter32.LockedToPart = true
ParticleEmitter32.Rate = 999
ParticleEmitter33.Name = "JetIn"
ParticleEmitter33.Parent = mas
ParticleEmitter33.Speed = NumberRange.new(2, 2)
ParticleEmitter33.Rotation = NumberRange.new(0, 359)
ParticleEmitter33.Color = ColorSequence.new(Color3.new(1, 1, 0.498039),Color3.new(1, 1, 0.498039))
ParticleEmitter33.LightEmission = 1
ParticleEmitter33.Transparency = NumberSequence.new(1,0.5,0,0.20000000298023224,1)
ParticleEmitter33.Size = NumberSequence.new(0.5,0)
ParticleEmitter33.Drag = -2
ParticleEmitter33.EmissionDirection = Enum.NormalId.Back
ParticleEmitter33.Lifetime = NumberRange.new(0.5, 1)
ParticleEmitter33.LockedToPart = true
ParticleEmitter33.Rate = 999
Trail34.Parent = MeshPart31
Trail34.Attachment0 = nil
Trail34.Attachment1 = nil
Trail34.Color = ColorSequence.new(Color3.new(1, 1, 0.498039),Color3.new(1, 1, 0.498039))
Trail34.FaceCamera = true
Trail34.LightEmission = 1
Trail34.Texture = "rbxassetid://1251856844"
Trail34.Transparency = NumberSequence.new(0.5,1)
Trail34.Lifetime = 0.20000000298023224
ScreenGui35.Name = "ControlsGUI"
ScreenGui35.Parent = Model27
ScreenGui35.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TextButton36.Name = "ToggleButton"
TextButton36.Parent = ScreenGui35
TextButton36.Position = UDim2.new(0.699999988, 0, 0.949999988, 0)
TextButton36.Size = UDim2.new(0.100000001, 0, 0.0500000007, 0)
TextButton36.BackgroundColor = BrickColor.new("Black")
TextButton36.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
TextButton36.BackgroundTransparency = 0.5
TextButton36.BorderColor3 = Color3.new(0.137255, 0.137255, 0.137255)
TextButton36.BorderSizePixel = 5
TextButton36.Font = Enum.Font.Gotham
TextButton36.FontSize = Enum.FontSize.Size14
TextButton36.Text = "Controls"
TextButton36.TextColor = BrickColor.new("Institutional white")
TextButton36.TextColor3 = Color3.new(1, 1, 1)
TextButton36.TextScaled = true
TextButton36.TextSize = 14
TextButton36.TextWrap = true
TextButton36.TextWrapped = true
Frame37.Name = "Controls"
Frame37.Parent = TextButton36
Frame37.Position = UDim2.new(-2.07500005, 0, -2.8499999, 0)
Frame37.Visible = false
Frame37.Size = UDim2.new(4, 0, 2.5, 0)
Frame37.BackgroundColor = BrickColor.new("Black")
Frame37.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Frame37.BackgroundTransparency = 0.5
Frame37.BorderColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Frame37.BorderSizePixel = 5
TextLabel38.Name = "ScriptCredits"
TextLabel38.Parent = Frame37
TextLabel38.Size = UDim2.new(1, 0, 0.300000012, 0)
TextLabel38.BackgroundColor = BrickColor.new("Really black")
TextLabel38.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel38.BackgroundTransparency = 0.75
TextLabel38.BorderColor = BrickColor.new("Really black")
TextLabel38.BorderColor3 = Color3.new(0, 0, 0)
TextLabel38.BorderSizePixel = 5
TextLabel38.Font = Enum.Font.Gotham
TextLabel38.FontSize = Enum.FontSize.Size14
TextLabel38.Text = "BANZAI BAZOOKA by PityPolygon"
TextLabel38.TextColor = BrickColor.new("Institutional white")
TextLabel38.TextColor3 = Color3.new(1, 1, 1)
TextLabel38.TextScaled = true
TextLabel38.TextSize = 14
TextLabel38.TextWrap = true
TextLabel38.TextWrapped = true
TextLabel39.Name = "Text"
TextLabel39.Parent = Frame37
TextLabel39.Position = UDim2.new(0, 0, 0.349999994, 0)
TextLabel39.Size = UDim2.new(1, 0, 0.25, 0)
TextLabel39.BackgroundColor = BrickColor.new("Institutional white")
TextLabel39.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel39.BackgroundTransparency = 1
TextLabel39.Font = Enum.Font.Gotham
TextLabel39.FontSize = Enum.FontSize.Size14
TextLabel39.Text = "Mouse - Hold to unleash stored missiles, explosions can fling you"
TextLabel39.TextColor = BrickColor.new("Institutional white")
TextLabel39.TextColor3 = Color3.new(1, 1, 1)
TextLabel39.TextScaled = true
TextLabel39.TextSize = 14
TextLabel39.TextWrap = true
TextLabel39.TextWrapped = true
TextLabel40.Name = "Text"
TextLabel40.Parent = Frame37
TextLabel40.Position = UDim2.new(0, 0, 0.699999988, 0)
TextLabel40.Size = UDim2.new(1, 0, 0.25, 0)
TextLabel40.BackgroundColor = BrickColor.new("Institutional white")
TextLabel40.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel40.BackgroundTransparency = 1
TextLabel40.Font = Enum.Font.Gotham
TextLabel40.FontSize = Enum.FontSize.Size14
TextLabel40.Text = "Z - Hold to store missiles"
TextLabel40.TextColor = BrickColor.new("Institutional white")
TextLabel40.TextColor3 = Color3.new(1, 1, 1)
TextLabel40.TextScaled = true
TextLabel40.TextSize = 14
TextLabel40.TextWrap = true
TextLabel40.TextWrapped = true
TextLabel41.Name = "Stored"
TextLabel41.Parent = TextButton36
TextLabel41.Position = UDim2.new(-1.14999998, 0, 0, 0)
TextLabel41.Size = UDim2.new(1, 0, 1, 0)
TextLabel41.BackgroundColor = BrickColor.new("Black")
TextLabel41.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
TextLabel41.BackgroundTransparency = 0.75
TextLabel41.BorderColor3 = Color3.new(0.137255, 0.137255, 0.137255)
TextLabel41.BorderSizePixel = 5
TextLabel41.Font = Enum.Font.Gotham
TextLabel41.FontSize = Enum.FontSize.Size14
TextLabel41.Text = "STORED: 20"
TextLabel41.TextColor = BrickColor.new("Institutional white")
TextLabel41.TextColor3 = Color3.new(1, 1, 1)
TextLabel41.TextScaled = true
TextLabel41.TextSize = 14
TextLabel41.TextStrokeColor3 = Color3.new(1, 1, 1)
TextLabel41.TextTransparency = 0.5
TextLabel41.TextWrap = true
TextLabel41.TextWrapped = true
Script42.Parent = ScreenGui35
table.insert(cors,sandbox(Script42,function()
local PLAYER = script.Parent.Parent.Parent
if PLAYER then
	if PLAYER:IsA("Player") then
		PLAYER.CharacterAdded:Connect(function()
			script.Parent:Remove()
		end)
	end
end
end))
MeshPart43.Name = "Bazooka"
MeshPart43.Parent = Model27
MeshPart43.CFrame = CFrame.new(-34.1892014, 0.931541443, -43.9626999, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart43.Position = Vector3.new(-34.18920135498047, 0.9315414428710938, -43.96269989013672)
MeshPart43.Color = Color3.new(0.313726, 0.427451, 0.329412)
MeshPart43.Size = Vector3.new(1.229813814163208, 1.8630937337875366, 5.642528533935547)
MeshPart43.Anchored = true
MeshPart43.BrickColor = BrickColor.new("Slime green")
MeshPart43.CanCollide = false
MeshPart43.Material = Enum.Material.Metal
MeshPart43.brickColor = BrickColor.new("Slime green")
ParticleEmitter44.Name = "Pop"
ParticleEmitter44.Parent = mas
ParticleEmitter44.Speed = NumberRange.new(5, 8)
ParticleEmitter44.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
ParticleEmitter44.Enabled = false
ParticleEmitter44.Texture = "rbxasset://textures/particles/smoke_main.dds"
ParticleEmitter44.Transparency = NumberSequence.new(0,1)
ParticleEmitter44.ZOffset = 1
ParticleEmitter44.Size = NumberSequence.new(0.5,1)
ParticleEmitter44.Drag = 5
ParticleEmitter44.EmissionDirection = Enum.NormalId.Front
ParticleEmitter44.Lifetime = NumberRange.new(0.10000000149011612, 0.5)
ParticleEmitter44.Rate = 999
ParticleEmitter44.SpreadAngle = Vector2.new(35, 35)
ParticleEmitter44.VelocitySpread = 35
Weld45.Parent = MeshPart43
Weld45.C0 = CFrame.new(0, -0.93154496, 0, 1, 0, 0, 0, 0, -1, 0, 1, 0)
Weld45.C1 = CFrame.new(-34.1892014, 9.99999619, -43.9626999, 1, 0, 0, 0, 0, -1, 0, 1, 0)
Weld45.Part0 = MeshPart43
Weld45.Part1 = nil
Weld45.part1 = nil
Folder46.Name = "ServerScript"
Folder46.Parent = Model27
Folder47.Name = "Grenade"
Folder47.Parent = Folder46
ParticleEmitter48.Name = "Core"
ParticleEmitter48.Parent = Folder47
ParticleEmitter48.Speed = NumberRange.new(10, 25)
ParticleEmitter48.Rotation = NumberRange.new(-400, 400)
ParticleEmitter48.Color = ColorSequence.new(Color3.new(1, 1, 0.803922),Color3.new(0.870588, 0.619608, 0.160784),Color3.new(0.635294, 0.333333, 0.129412),Color3.new(0, 0, 0))
ParticleEmitter48.Enabled = false
ParticleEmitter48.LightEmission = 1
ParticleEmitter48.LightInfluence = 1
ParticleEmitter48.Texture = "rbxasset://textures/particles/explosion01_core_main.dds"
ParticleEmitter48.Transparency = NumberSequence.new(0,0.25,1)
ParticleEmitter48.Size = NumberSequence.new(5,7)
ParticleEmitter48.Drag = 2
ParticleEmitter48.Lifetime = NumberRange.new(0.5, 2)
ParticleEmitter48.Rate = 999
ParticleEmitter48.RotSpeed = NumberRange.new(-90, 90)
ParticleEmitter48.SpreadAngle = Vector2.new(180, 180)
ParticleEmitter48.VelocitySpread = 180
ParticleEmitter49.Name = "Black"
ParticleEmitter49.Parent = Folder47
ParticleEmitter49.Speed = NumberRange.new(20, 50)
ParticleEmitter49.Rotation = NumberRange.new(-400, 400)
ParticleEmitter49.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
ParticleEmitter49.Enabled = false
ParticleEmitter49.LightInfluence = 1
ParticleEmitter49.Texture = "rbxasset://textures/particles/explosion01_core_main.dds"
ParticleEmitter49.Transparency = NumberSequence.new(0.615384578704834,0.7142857313156128,1)
ParticleEmitter49.ZOffset = 0.20000000298023224
ParticleEmitter49.Size = NumberSequence.new(1.3124996423721313,3.062499761581421)
ParticleEmitter49.Drag = 10
ParticleEmitter49.Lifetime = NumberRange.new(0, 0.6000000238418579)
ParticleEmitter49.Rate = 999
ParticleEmitter49.RotSpeed = NumberRange.new(-90, 90)
ParticleEmitter49.SpreadAngle = Vector2.new(180, 180)
ParticleEmitter49.VelocitySpread = 180
ParticleEmitter50.Name = "Dust"
ParticleEmitter50.Parent = Folder47
ParticleEmitter50.Speed = NumberRange.new(45, 45)
ParticleEmitter50.Rotation = NumberRange.new(0, 359)
ParticleEmitter50.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
ParticleEmitter50.Enabled = false
ParticleEmitter50.LightInfluence = 1
ParticleEmitter50.Texture = "rbxasset://textures/particles/smoke_main.dds"
ParticleEmitter50.Transparency = NumberSequence.new(0.75,1)
ParticleEmitter50.ZOffset = 2
ParticleEmitter50.Size = NumberSequence.new(0,0,1,4.124999523162842,7.5,10)
ParticleEmitter50.Drag = 3
ParticleEmitter50.EmissionDirection = Enum.NormalId.Front
ParticleEmitter50.Lifetime = NumberRange.new(0.20000000298023224, 2)
ParticleEmitter50.Rate = 9999
ParticleEmitter50.SpreadAngle = Vector2.new(0, 180)
Script51.Name = "R15Ragdoll"
Script51.Parent = Folder46
table.insert(cors,sandbox(Script51,function()
local character = script.Parent

function recurse(root,callback,i)
	i= i or 0
	for _,v in pairs(root:GetChildren()) do
		i = i + 1
		callback(i,v)
		
		if #v:GetChildren() > 0 then
			i = recurse(v,callback,i)
		end
	end
	
	return i
end

function ragdollJoint(part0, part1, attachmentName, className, properties)
	attachmentName = attachmentName.."RigAttachment"
	local constraint = Instance.new(className.."Constraint")
	constraint.Attachment0 = part0:FindFirstChild(attachmentName)
	constraint.Attachment1 = part1:FindFirstChild(attachmentName)
	constraint.Name = "RagdollConstraint"..part1.Name
	
	for _,propertyData in next,properties or {} do
		constraint[propertyData[1]] = propertyData[2]
	end
	
	constraint.Parent = character
end

function getAttachment0(attachmentName)
	for _,child in next,character:GetChildren() do
		local attachment = child:FindFirstChild(attachmentName)
		if attachment then
			return attachment
		end
	end
end

--character:WaitForChild("Humanoid").Died:connect(function()
	--Make it so ragdoll can't collide with invisible HRP, but don't let HRP fall through map and be destroyed in process	

	--Helps to fix constraint spasms
	recurse(character, function(_,v)
		if v:IsA("Attachment") then
			v.Axis = Vector3.new(0, 1, 0)
			v.SecondaryAxis = Vector3.new(0, 0, 1)
			v.Rotation = Vector3.new(0, 0, 0)
		end
	end)
	
	--Re-attach hats
	for _,child in next,character:GetChildren() do
		if child:IsA("Accoutrement") then
			--Loop through all parts instead of only checking for one to be forwards-compatible in the event
			--ROBLOX implements multi-part accessories
			for _,part in next,child:GetChildren() do
				if part:IsA("BasePart") then
					local attachment1 = part:FindFirstChildOfClass("Attachment")
					local attachment0 = getAttachment0(attachment1.Name)
					if attachment0 and attachment1 then
						--Shouldn't use constraints for this, but have to because of a ROBLOX idiosyncrasy where
						--joints connecting a character are perpetually deleted while the character is dead
						local constraint = Instance.new("HingeConstraint")
						constraint.Attachment0 = attachment0
						constraint.Attachment1 = attachment1
						constraint.LimitsEnabled = true
						constraint.UpperAngle = 0 --Simulate weld by making it difficult for constraint to move
						constraint.LowerAngle = 0
						constraint.Parent = character
					end
				end
			end
		end
	end
	
	ragdollJoint(character.LowerTorso, character.UpperTorso, "Waist", "BallSocket", {
		{"LimitsEnabled",true};
		{"UpperAngle",5};
	})
	ragdollJoint(character.UpperTorso, character.Head, "Neck", "BallSocket", {
		{"LimitsEnabled",true};
		{"UpperAngle",15};
	})
	
	local handProperties = {
		{"LimitsEnabled", true};
		{"UpperAngle",0};
		{"LowerAngle",0};
	}
	ragdollJoint(character.LeftLowerArm, character.LeftHand, "LeftWrist", "Hinge", handProperties)
	ragdollJoint(character.RightLowerArm, character.RightHand, "RightWrist", "Hinge", handProperties)
	
	local shinProperties = {
		{"LimitsEnabled", true};
		{"UpperAngle", 0};
		{"LowerAngle", -75};
	}
	ragdollJoint(character.LeftUpperLeg, character.LeftLowerLeg, "LeftKnee", "Hinge", shinProperties)
	ragdollJoint(character.RightUpperLeg, character.RightLowerLeg, "RightKnee", "Hinge", shinProperties)
	
	local footProperties = {
		{"LimitsEnabled", true};
		{"UpperAngle", 15};
		{"LowerAngle", -45};
	}
	ragdollJoint(character.LeftLowerLeg, character.LeftFoot, "LeftAnkle", "Hinge", footProperties)
	ragdollJoint(character.RightLowerLeg, character.RightFoot, "RightAnkle", "Hinge", footProperties)
	
	--TODO fix ability for socket to turn backwards whenn ConeConstraints are shipped
	ragdollJoint(character.UpperTorso, character.LeftUpperArm, "LeftShoulder", "BallSocket")
	ragdollJoint(character.LeftUpperArm, character.LeftLowerArm, "LeftElbow", "BallSocket")
	ragdollJoint(character.UpperTorso, character.RightUpperArm, "RightShoulder", "BallSocket")
	ragdollJoint(character.RightUpperArm, character.RightLowerArm, "RightElbow", "BallSocket")
	ragdollJoint(character.LowerTorso, character.LeftUpperLeg, "LeftHip", "BallSocket")
	ragdollJoint(character.LowerTorso, character.RightUpperLeg, "RightHip", "BallSocket")
--end)
end))
Script51.Disabled = true
Script52.Name = "R6Ragdoll"
Script52.Parent = Folder46
table.insert(cors,sandbox(Script52,function()
local head = script.Parent["Head"]
local leftarm = script.Parent["Left Arm"]
local leftleg = script.Parent["Left Leg"]
local rightleg = script.Parent["Right Leg"]
local rightarm = script.Parent["Right Arm"]
local torso = script.Parent.Torso
local root = script.Parent:FindFirstChild("HumanoidRootPart")

local HeadA = Instance.new("Attachment")
HeadA.Name = "HeadA"
HeadA.Parent = head
HeadA.Position = Vector3.new(0, -0.5, 0)
HeadA.Rotation = Vector3.new(0, 0, -0)
HeadA.Axis = Vector3.new(1, -0, -0)
HeadA.SecondaryAxis = Vector3.new(0, 1, 0)

local LeftArmA = Instance.new("Attachment")
LeftArmA.Name = "LeftArmA"
LeftArmA.Parent = leftarm
LeftArmA.Position = Vector3.new(0.4, 0.8, 0)
LeftArmA.Rotation = Vector3.new(-180, 0, 90)
LeftArmA.Axis = Vector3.new(0, -1, -0)
LeftArmA.SecondaryAxis = Vector3.new(-1, 0, 0)

local LeftLegA = Instance.new("Attachment")
LeftLegA.Name = "LeftLegA"
LeftLegA.Parent = leftleg
LeftLegA.Position = Vector3.new(0, 1, 0)
LeftLegA.Rotation = Vector3.new(90, -90, 0)
LeftLegA.Axis = Vector3.new(0, -1, -0)
LeftLegA.SecondaryAxis = Vector3.new(0, -0, 1)

local RightArmA = Instance.new("Attachment")
RightArmA.Name = "RightArmA"
RightArmA.Parent = rightarm
RightArmA.Position = Vector3.new(0, 1, 0)
RightArmA.Rotation = Vector3.new(90, -90, 0)
RightArmA.Axis = Vector3.new(0, -1, -0)
RightArmA.SecondaryAxis = Vector3.new(0, -0, 1)

local RightLegA = Instance.new("Attachment")
RightLegA.Name = "RightLegA"
RightLegA.Parent = rightleg
RightLegA.Position = Vector3.new(-0.4, 0.8, 0)
RightLegA.Rotation = Vector3.new(-180, 0, 90)
RightLegA.Axis = Vector3.new(0, -1, -0)
RightLegA.SecondaryAxis = Vector3.new(0, 1, 0)

local TorsoA = Instance.new("Attachment")
TorsoA.Name = "TorsoA"
TorsoA.Parent = torso
TorsoA.Position = Vector3.new(0.5, -1.1, 0)
TorsoA.Rotation = Vector3.new(90, -90, 0)
TorsoA.Axis = Vector3.new(0, -1, -0)
TorsoA.SecondaryAxis = Vector3.new(0, -0, 1)

local TorsoA1 = Instance.new("Attachment")
TorsoA1.Name = "TorsoA1"
TorsoA1.Parent = torso
TorsoA1.Position = Vector3.new(-0.5, -1.1, 0)
TorsoA1.Rotation = Vector3.new(90, -90, 0)
TorsoA1.Axis = Vector3.new(0, -1, -0)
TorsoA1.SecondaryAxis = Vector3.new(0, -0, 1)

local TorsoA2 = Instance.new("Attachment")
TorsoA2.Name = "TorsoA2"
TorsoA2.Parent = torso
TorsoA2.Position = Vector3.new(-1, 0.8, 0)
TorsoA2.Rotation = Vector3.new(0, 0, -180)
TorsoA2.Axis = Vector3.new(-1, -0, 0)
TorsoA2.SecondaryAxis = Vector3.new(0, -1, 0)

local TorsoA3 = Instance.new("Attachment")
TorsoA3.Name = "TorsoA3"
TorsoA3.Parent = torso
TorsoA3.Position = Vector3.new(1, 0.8, 0)
TorsoA3.Rotation = Vector3.new(-180, 0, 0)
TorsoA3.Axis = Vector3.new(1, -0, 0)
TorsoA3.SecondaryAxis = Vector3.new(-0, -1, -0)

local TorsoA4 = Instance.new("Attachment")
TorsoA4.Name = "TorsoA4"
TorsoA4.Parent = torso
TorsoA4.Position = Vector3.new(0, 1, 0)
TorsoA4.Rotation = Vector3.new(0, 0, -0)
TorsoA4.Axis = Vector3.new(1, -0, 0)
TorsoA4.SecondaryAxis = Vector3.new(0, 1, 0)

local TorsoA5 = Instance.new("Attachment")
TorsoA5.Name = "TorsoA5"
TorsoA5.Parent = torso
TorsoA5.Position = Vector3.new(0, 0, 0)
TorsoA5.Rotation = Vector3.new(0, 90, 0)
TorsoA5.Axis = Vector3.new(0, 0, -1)
TorsoA5.SecondaryAxis = Vector3.new(0, 1, 0)

local rootA = Instance.new("Attachment")
rootA.Name= "rootA"
rootA.Parent = root
rootA.Position = Vector3.new(0, 0, 0)
rootA.Rotation = Vector3.new(0, 90, 0)
rootA.Axis = Vector3.new(0, 0, -1)
rootA.SecondaryAxis = Vector3.new(0, 1, 0)



	local HA = Instance.new("BallSocketConstraint")
	HA.Parent = head
	HA.Attachment0 = HeadA
	HA.Attachment1 = TorsoA4
	HA.Enabled = true
	
	local LAT = Instance.new("BallSocketConstraint")
	LAT.Parent = leftarm
	LAT.Attachment0 = LeftArmA
	LAT.Attachment1 = TorsoA2
	LAT.Enabled = true
	
	local RAT = Instance.new("BallSocketConstraint")
	RAT.Parent = rightarm
	RAT.Attachment0 = RightArmA
	RAT.Attachment1 = TorsoA3
	RAT.Enabled = true
	
	local HA = Instance.new("BallSocketConstraint")
	HA.Parent = head
	HA.Attachment0 = HeadA
	HA.Attachment1 = TorsoA4
	HA.Enabled = true
	
	local TLL = Instance.new("BallSocketConstraint")
	TLL.Parent = torso
	TLL.Attachment0 = TorsoA1
	TLL.Attachment1 = LeftLegA
	TLL.Enabled = true
	
	local TRL = Instance.new("BallSocketConstraint")
	TRL.Parent = torso
	TRL.Attachment0 = TorsoA
	TRL.Attachment1 = RightLegA
	TRL.Enabled = true
	
	local RTA = Instance.new("BallSocketConstraint")
	RTA.Parent = root
	RTA.Attachment0 = rootA
	RTA.Attachment1 = TorsoA5
	RTA.Enabled = true
end))
Script52.Disabled = true
LocalScript53.Name = "CamShake"
LocalScript53.Parent = Folder46
table.insert(cors,sandbox(LocalScript53,function()
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")

frame = 1/60
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()

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

function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end
wait()
VT = Vector3.new
MRANDOM = math.random
local A = script:FindFirstChild("Timer").Value
local B = script:FindFirstChild("Shake").Value
local HUMANOID = script.Parent:FindFirstChildOfClass("Humanoid")
local TIMER = math.ceil(A) or 35
local SHAKE = math.ceil(B) or 5
if HUMANOID then
	local FADER = SHAKE/TIMER
	for i = 1, TIMER do
		Swait()
		HUMANOID.CameraOffset = VT(MRANDOM(-(SHAKE-(FADER*i)),(SHAKE-(FADER*i)))/10,MRANDOM(-(SHAKE-(FADER*i)),(SHAKE-(FADER*i)))/10,MRANDOM(-(SHAKE-(FADER*i)),(SHAKE-(FADER*i)))/10)
	end
	HUMANOID.CameraOffset = VT(0,0,0)
end
end))
LocalScript53.Disabled = true
for i,v in pairs(mas:GetChildren()) do
	v.Parent = workspace
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
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
wait(0.2)
local clientevent = false
local remote = {}
--//====================================================\\--
--||                       BASIS
--\\====================================================//--

local MODULE = game:GetService("Workspace").Banzai
local CHARACTER = game:GetService("Players").LocalPlayer.Character
local PLAYER = game:GetService("Players").LocalPlayer
local HUM = CHARACTER.Humanoid
local REMOTE = MODULE.Event

local MOUSE = game:GetService("Players").LocalPlayer:GetMouse()
local ROOT = HUM.Torso
local HEAD = CHARACTER.Head
local TORSO = CHARACTER.Torso
local RIGHTARM = CHARACTER["Right Arm"]
local LEFTARM = CHARACTER["Left Arm"]
local RIGHTLEG = CHARACTER["Right Leg"]
local LEFTLEG = CHARACTER["Left Leg"]
local ROOTJOINT = ROOT["RootJoint"]
local NECK = TORSO["Neck"]
local RIGHTSHOULDER = TORSO["Right Shoulder"]
local LEFTSHOULDER = TORSO["Left Shoulder"]
local RIGHTHIP = TORSO["Right Hip"]
local LEFTHIP = TORSO["Left Hip"]
local MOUSEPOS = MOUSE.Hit.p

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

--//====================================================\\--
--||                  BACKGROUND VALUES
--\\====================================================//--

local ANIM_SPEED = 3
local MOUSE = game:GetService("Players").LocalPlayer:GetMouse()
local FRAME_SPEED = 1 / 60 -- (1 / 30) OR (1 / 60)
local CHANGE = 2 / ANIM_SPEED
local DAMAGEMULTIPLIER = 1
local ANIM = "Idle"
local KEYHOLD = false
local MOUSEHOLD = false
local SINE = 0
local ATTACKING = false
local Debris = game:GetService("Debris")
local Effects = IT("Folder",CHARACTER)
Effects.Name = "FXFolder"
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local BGM = 213546066
local BOMB = 2671146857
local STORED = 20

--//====================================================\\--
--||                     HEARTBEAT
--\\====================================================//--

ArtificialHB = Instance.new("BindableEvent", MODULE.ServerScript)
ArtificialHB.Name = "ArtificialHB"

MODULE.ServerScript:WaitForChild("ArtificialHB")

frame = FRAME_SPEED
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
MODULE.ServerScript.ArtificialHB:Fire()

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

function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end

--//====================================================\\--
--||                       CLERP
--\\====================================================//--

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
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
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

--//====================================================\\--
--||                     FUNCTIONS
--\\====================================================//--

function WeldParts(A,B)
	local WLD = IT("ManualWeld")
	WLD.Part0 = A
	WLD.Part1 = B
	WLD.C1 = B.CFrame:inverse() * A.CFrame
	WLD.Parent = A
	return WLD
end

--NewSound({ID = 0,PARENT = ROOT,VOLUME = 0.5,PITCH = 1,LOOP = false,MAXDISTANCE = 1000,EMITTERSIZE = 10,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
function NewSound(TABLE)
	local ID = "rbxassetid://"..(TABLE.ID or 0)
	local PARENT = (TABLE.PARENT or ROOT)
	local VOLUME = (TABLE.VOLUME or 0.5)
	local PITCH = (TABLE.PITCH or 1)
	local LOOP = (TABLE.LOOP or false)
	local MAXDISTANCE = (TABLE.MAXDISTANCE or 100)
	local EMITTERSIZE = (TABLE.EMITTERSIZE or 10)
	local PLAYING = (TABLE.PLAYING or true)
	local PLAYONREMOVE = (TABLE.PLAYONREMOVE or false)
	local DOESDEBRIS = (TABLE.DOESDEBRIS or true)
	if ID ~= "rbxassetid://0" then
		local SOUND = IT("Sound",PARENT)
		SOUND.SoundId = ID
		SOUND.Volume = VOLUME
		SOUND.Pitch = PITCH
		SOUND.Looped = LOOP
		SOUND.MaxDistance = MAXDISTANCE
		SOUND.EmitterSize = EMITTERSIZE
		SOUND.PlayOnRemove = PLAYONREMOVE
		if DOESDEBRIS == true and PLAYING == true and LOOP == false then
			Debris:AddItem(SOUND,SOUND.TimeLength+5)
		end
		if PLAYING == true then
			SOUND:Play()
		end
		return SOUND
	end
end

function ManSlaughter(MAN)
	local MOUSEPOS = MOUSE.Hit.p
	if MAN then
		local ROOT = MAN:FindFirstChild("HumanoidRootPart")
		if ROOT then
			ROOT:Remove()
		end
		local MANHUM = MAN:FindFirstChildOfClass("Humanoid")
		if MANHUM then
			MANHUM.BreakJointsOnDeath = false
			MANHUM.Health = 0
		end
		if MAN:FindFirstChild("R6Ragdoll") == nil and MAN:FindFirstChild("R15Ragdoll") == nil then
			if MAN:FindFirstChild("UpperTorso") then
				local SCRIPT = MODULE.R15Ragdoll:Clone()
				SCRIPT.Parent = MAN
				SCRIPT.Disabled = false
			else
				local SCRIPT = MODULE.R6Ragdoll:Clone()
				SCRIPT.Parent = MAN
				SCRIPT.Disabled = false
			end
			local TORSO = MAN:FindFirstChild("Torso") or MAN:FindFirstChild("UpperTorso")
			if TORSO then
				NewSound({ID = 146594648,PARENT = TORSO,VOLUME = 1,PITCH = MRANDOM(8,12)/10,LOOP = false,MAXDISTANCE = 75,EMITTERSIZE = 15,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
			end
		end
		MAN:BreakJoints()
		if MAN:FindFirstChild("Slaughtered") == nil then
			local MARK = IT("Folder",MAN)
			MARK.Name = "Slaughtered"
		else
			if MAN:FindFirstChild("Slaughtered") then
				local TORSO = MAN:FindFirstChild("Torso") or MAN:FindFirstChild("UpperTorso")
				if TORSO then
					TORSO.RotVelocity = VT(0,MRANDOM(-25,25),0)
				end
			end
		end
	end
end

function AreaOfEffect(AREA,RANGE,FLING,RETURN)
	local MOUSEPOS = MOUSE.Hit.p
	local HIT = {}
	for index, CHILD in pairs(workspace:GetChildren()) do
		if CHILD:FindFirstChildOfClass("Humanoid") then
			local HUMAN = CHILD:FindFirstChildOfClass("Humanoid")
			local ROOT = HUMAN.Torso
			if ROOT then
				if (ROOT.Position - AREA).Magnitude <= RANGE then
					if RETURN == true then
						if CHILD ~= CHARACTER then
							table.insert(HIT,{CHILD,HUMAN,ROOT})
						end
					else
						if CHILD ~= CHARACTER then
							ManSlaughter(CHILD)
						end
						local BV = IT("BodyVelocity")
						BV.MaxForce = BV.MaxForce * 500
						BV.Velocity = CF(AREA,ROOT.Position+VT(0,0.5,0)).lookVector*FLING
						BV.Parent = ROOT
						Debris:AddItem(BV,0.05)
					end
				end
			end
		end
	end
	if RETURN == true then
		return HIT
	end
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = ROOT.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function CameraShake(AREA,RANGE,SHAKE,TIMER)
	for index, CHILD in pairs(workspace:GetChildren()) do
		if CHILD:FindFirstChildOfClass("Humanoid") then
			local HUMAN = CHILD:FindFirstChildOfClass("Humanoid")
			local ROOT = HUMAN.Torso
			if ROOT and game.Players:GetPlayerFromCharacter(CHILD) then
				if (ROOT.Position - AREA).Magnitude <= RANGE then
					if CHILD:FindFirstChild("CamShake") then
						Debris:AddItem(CHILD:FindFirstChild("CamShake"),0.05)
					end
					local CAMSHAKE = MODULE.ServerScript.CamShake:Clone()
					CAMSHAKE.Parent = CHILD
					local TIMER_V = IT("NumberValue",CAMSHAKE)
					TIMER_V.Name = "Timer"
					TIMER_V.Value = TIMER
					local SHAKE_V = IT("NumberValue",CAMSHAKE)
					SHAKE_V.Name = "Shake"
					SHAKE_V.Value = SHAKE
					CAMSHAKE.Disabled = false
					Debris:AddItem(CAMSHAKE,15)
				end
			end
		end
	end
end

--//====================================================\\--
--||                     CHARACTER
--\\====================================================//--

local HELMET = MODULE.Helmet
HELMET.Parent = CHARACTER
for index, CHILD in pairs(CHARACTER:GetChildren()) do
	if CHILD ~= ROOT then
		if CHILD:IsA("Accessory") then
			CHILD:Remove()
		end
	end
end
local FACE = HEAD.face
FACE.Texture = "rbxassetid://559113097"
HELMET.CFrame = HEAD.CFrame*CF(0,0.5,0)
HELMET.Anchored = false
WeldParts(HEAD,HELMET)
local BAZOOKA = MODULE.Bazooka
BAZOOKA.Parent = CHARACTER
BAZOOKA.Anchored = false
local GRIP = IT("Motor6D")
GRIP.Part0 = RIGHTARM
GRIP.Part1 = BAZOOKA
GRIP.C0 = CF(0,-1,-0.5)*ANGLES(RAD(-90),0,0)*CF(0,0,1.85)
local G_C0 = GRIP.C0
GRIP.Parent = RIGHTARM
for i = 1, 15 do
	local FACE = CreatePart(3, CHARACTER, "Fabric", 0, 0+(i-1)/15.2, "Dark stone grey", "FaceGradient", VT(1.01,0.58,1.01),false)
	FACE.Color = C3(0,0,0)
	HEAD:FindFirstChildOfClass("SpecialMesh"):Clone().Parent = FACE
	FACE.CFrame = HEAD.CFrame*CF(0,0.3-(i-1)/35,0)
	WeldParts(HEAD,FACE)
end
local MISSILE = MODULE.Missile
MISSILE.Parent = nil
local GUI = MODULE.ControlsGUI
GUI.Parent = PLAYER.PlayerGui
GUI.ToggleButton.MouseButton1Click:Connect(function()
	if GUI.ToggleButton.Controls.Visible == false then
		GUI.ToggleButton.Controls.Visible = true
	elseif GUI.ToggleButton.Controls.Visible == true then
		GUI.ToggleButton.Controls.Visible = false
	end
end)
local STOREDGUI = GUI.ToggleButton.Stored
STOREDGUI.Text = "STORED: "..STORED
function AddTo(ADD)
	STORED = STORED + ADD
	STOREDGUI.Text = "STORED: "..STORED
end

--//====================================================\\--
--||                     ABILITIES
--\\====================================================//--

function Fire_in_the_hole()
	local MOUSEPOS = MOUSE.Hit.p
	if STORED > 0 then
		ATTACKING = true
		local GYRO = IT("BodyGyro")
		GYRO.D = 50
		GYRO.P = 5000
		GYRO.MaxTorque = VT(0,4000000,0)
		local MOUSEPOS = MOUSE.Hit.p
		GYRO.CFrame = CF(ROOT.Position,MOUSE.Hit.p)
		GYRO.Parent = ROOT
		ATTACKING = true
		coroutine.resume(coroutine.create(function()
			repeat
				Swait()
				local MOUSEPOS = MOUSE.Hit.p
				GYRO.CFrame = CF(ROOT.Position,MOUSE.Hit.p)
			until ATTACKING == false
			GYRO:Remove()
		end))
		repeat
			for i=0, 0.06, 0.1 / ANIM_SPEED do
				Swait()
				ROOTJOINT.C0 = Clerp(ROOTJOINT.C0,ROOTC0 * CF(0, 0, -0.02) * ANGLES(RAD(0), RAD(0), RAD(45)), 2.5 / ANIM_SPEED)
				NECK.C0 = Clerp(NECK.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-45)) * ANGLES(RAD(5), RAD(0), RAD(0)), 2.5 / ANIM_SPEED)
				RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 2.5 / ANIM_SPEED)
				LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-45), RAD(0), RAD(-45)) * LEFTSHOULDERC0, 1.5 / ANIM_SPEED)
				RIGHTHIP.C0 = Clerp(RIGHTHIP.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(45), RAD(0)) * CF(0.4,0,0) * ANGLES(RAD(-10), RAD(0), RAD(0)), 2.5 / ANIM_SPEED)
				LEFTHIP.C0 = Clerp(LEFTHIP.C0, CF(-1.1, -1, 0) * ANGLES(RAD(0), RAD(-135), RAD(0)) * CF(-0.4,0,0) * ANGLES(RAD(-10), RAD(0), RAD(0)), 2.5 / ANIM_SPEED)
			end
			AddTo(-1)
			coroutine.resume(coroutine.create(function()
				local MOUSEPOS = MOUSE.Hit.p
				local GOTO = MOUSE.Hit.p
				local ROCKET = MISSILE:Clone()
				ROCKET.Parent = Effects
				ROCKET.CFrame = CF(BAZOOKA.CFrame*CF(0,0,-2).p,GOTO)
				NewSound({ID = 440145223,PARENT = BAZOOKA,VOLUME = 2,PITCH = MRANDOM(9,11)/10,LOOP = false,MAXDISTANCE = 80,EMITTERSIZE = 15,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
				NewSound({ID = 440145223,PARENT = ROCKET,VOLUME = 2,PITCH = MRANDOM(9,11)/10,LOOP = false,MAXDISTANCE = 80,EMITTERSIZE = 15,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
				for i = 1, 200 do
					Swait()
					local HIT,POS = Raycast(ROCKET.Position,ROCKET.CFrame.lookVector,5,CHARACTER)
					if HIT then
						ROCKET.CFrame = CF(POS)
						break
					end
					ROCKET.CFrame = ROCKET.CFrame*CF(0,0,-4)
				end
				ROCKET.Transparency = 1
				ROCKET.Hind:Remove()
				ROCKET.CFrame = CF(ROCKET.Position)
				ROCKET.Size = VT(0,0,0)
				NewSound({ID = 142070127,PARENT = ROCKET,VOLUME = 7,PITCH = MRANDOM(8,12)/10,LOOP = false,MAXDISTANCE = 300,EMITTERSIZE = 15,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
				for index, CHILD in pairs(MODULE.ServerScript.Grenade:GetChildren()) do
					local C = CHILD:Clone()
					C.Parent = ROCKET
					C:Emit(125)
				end
				CameraShake(ROCKET.Position,50,125,70)
				AreaOfEffect(ROCKET.Position,35,200,false)
				Debris:AddItem(ROCKET,2)
			end))
			for i=0, 0.025, 0.1 / ANIM_SPEED do
				Swait()
				ROOTJOINT.C0 = Clerp(ROOTJOINT.C0,ROOTC0 * CF(0, 0, -0.02) * ANGLES(RAD(0), RAD(0), RAD(45)), 2.5 / ANIM_SPEED)
				NECK.C0 = Clerp(NECK.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-45)) * ANGLES(RAD(5), RAD(0), RAD(0)), 2.5 / ANIM_SPEED)
				RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(200), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 2.5 / ANIM_SPEED)
				LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-45), RAD(0), RAD(-45)) * LEFTSHOULDERC0, 1.5 / ANIM_SPEED)
				RIGHTHIP.C0 = Clerp(RIGHTHIP.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(45), RAD(0)) * CF(0.4,0,0) * ANGLES(RAD(-10), RAD(0), RAD(0)), 2.5 / ANIM_SPEED)
				LEFTHIP.C0 = Clerp(LEFTHIP.C0, CF(-1.1, -1, 0) * ANGLES(RAD(0), RAD(-135), RAD(0)) * CF(-0.4,0,0) * ANGLES(RAD(-10), RAD(0), RAD(0)), 2.5 / ANIM_SPEED)
			end
		until MOUSEHOLD == false or STORED <= 0
		if STORED <= 0 then
			STORED = 0
			STOREDGUI.Text = "STORED: 0"
		end
		ATTACKING = false
	end
end
function Store()
	HUM.WalkSpeed = 0
	HUM.JumpPower = 0
	ATTACKING = true
	repeat
		for i=0, 0.01, 0.1 / ANIM_SPEED do
			Swait()
			GRIP.C0 = Clerp(GRIP.C0, CF(0,-1,-0.5)*ANGLES(RAD(-80),RAD(15),0)*CF(0,0,1.85), 2.5 / ANIM_SPEED)
			ROOTJOINT.C0 = Clerp(ROOTJOINT.C0,ROOTC0 * CF(0, 0, -0.02 + 0.05 * COS(SINE / 6)) * ANGLES(RAD(0), RAD(0), RAD(-5)), 0.5 / ANIM_SPEED)
			NECK.C0 = Clerp(NECK.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(15)), 2.5 / ANIM_SPEED)
			RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0, CF(1.7, 0.45, 0) * ANGLES(RAD(35), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 2.5 / ANIM_SPEED)
			LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(45), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 2.5 / ANIM_SPEED)
			RIGHTHIP.C0 = Clerp(RIGHTHIP.C0, CF(1, -1 - 0.05 * COS(SINE / 6), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-2.5)), 0.5 / ANIM_SPEED)
			LEFTHIP.C0 = Clerp(LEFTHIP.C0, CF(-1, -1 - 0.05 * COS(SINE / 6), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-2.5)), 0.5 / ANIM_SPEED)
		end
		local ROCKET = MISSILE:Clone()
		ROCKET.Anchored = false
		ROCKET:ClearAllChildren()
		ROCKET.CFrame = LEFTARM.CFrame*CF(0,-1,0) * ANGLES(RAD(0), RAD(90), RAD(0))
		ROCKET.Parent = CHARACTER
		WeldParts(ROCKET,LEFTARM)
		for i=0, 0.02, 0.1 / ANIM_SPEED do
			Swait()
			GRIP.C0 = Clerp(GRIP.C0, CF(0,-1,-0.5)*ANGLES(RAD(-80),RAD(15),0)*CF(0,0,1.85), 2.5 / ANIM_SPEED)
			ROOTJOINT.C0 = Clerp(ROOTJOINT.C0,ROOTC0 * CF(0, 0, -0.02 + 0.05 * COS(SINE / 6)) * ANGLES(RAD(0), RAD(0), RAD(-5)), 0.5 / ANIM_SPEED)
			NECK.C0 = Clerp(NECK.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(15)), 2.5 / ANIM_SPEED)
			RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0, CF(1.675, 0.45, 0.3) * ANGLES(RAD(35), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 2.5 / ANIM_SPEED)
			LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-45), RAD(0), RAD(25)) * LEFTSHOULDERC0, 2.5 / ANIM_SPEED)
			RIGHTHIP.C0 = Clerp(RIGHTHIP.C0, CF(1, -1 - 0.05 * COS(SINE / 6), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-2.5)), 0.5 / ANIM_SPEED)
			LEFTHIP.C0 = Clerp(LEFTHIP.C0, CF(-1, -1 - 0.05 * COS(SINE / 6), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-2.5)), 0.5 / ANIM_SPEED)
		end
		for i=0, 0.02, 0.1 / ANIM_SPEED do
			Swait()
			GRIP.C0 = Clerp(GRIP.C0, CF(0,-1,-0.5)*ANGLES(RAD(-80),RAD(15),0)*CF(0,0,1.85), 2.5 / ANIM_SPEED)
			ROOTJOINT.C0 = Clerp(ROOTJOINT.C0,ROOTC0 * CF(0, 0, -0.02 + 0.05 * COS(SINE / 6)) * ANGLES(RAD(0), RAD(0), RAD(-5)), 0.5 / ANIM_SPEED)
			NECK.C0 = Clerp(NECK.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(15)), 2.5 / ANIM_SPEED)
			RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0, CF(1.7, 0.45, 0) * ANGLES(RAD(35), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 2.5 / ANIM_SPEED)
			LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(45), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 2.5 / ANIM_SPEED)
			RIGHTHIP.C0 = Clerp(RIGHTHIP.C0, CF(1, -1 - 0.05 * COS(SINE / 6), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-2.5)), 0.5 / ANIM_SPEED)
			LEFTHIP.C0 = Clerp(LEFTHIP.C0, CF(-1, -1 - 0.05 * COS(SINE / 6), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-2.5)), 0.5 / ANIM_SPEED)
		end
		NewSound({ID = 440145223,PARENT = BAZOOKA,VOLUME = 1,PITCH = MRANDOM(9,11)/6,LOOP = false,MAXDISTANCE = 80,EMITTERSIZE = 15,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
		for i=0, 0.05, 0.1 / ANIM_SPEED do
			Swait()
			GRIP.C0 = Clerp(GRIP.C0, CF(0,-1,-0.5)*ANGLES(RAD(-80),RAD(15),0)*CF(0,0,1.85), 2.5 / ANIM_SPEED)
			ROOTJOINT.C0 = Clerp(ROOTJOINT.C0,ROOTC0 * CF(0, 0, -0.02 + 0.05 * COS(SINE / 6)) * ANGLES(RAD(0), RAD(0), RAD(5)), 0.5 / ANIM_SPEED)
			NECK.C0 = Clerp(NECK.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-15)), 2.5 / ANIM_SPEED)
			RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0, CF(1.75, 0.45, -0.1) * ANGLES(RAD(45), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 2.5 / ANIM_SPEED)
			LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0, CF(-0.9, 0.5, -0.75) * ANGLES(RAD(60), RAD(0), RAD(37.5)) * LEFTSHOULDERC0, 2.5 / ANIM_SPEED)
			RIGHTHIP.C0 = Clerp(RIGHTHIP.C0, CF(1, -1 - 0.05 * COS(SINE / 6), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(2.5)), 0.5 / ANIM_SPEED)
			LEFTHIP.C0 = Clerp(LEFTHIP.C0, CF(-1, -1 - 0.05 * COS(SINE / 6), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(2.5)), 0.5 / ANIM_SPEED)
		end
		ROCKET:Remove()
		BAZOOKA.Face.Pop:Emit(5)
		AddTo(1)
	until KEYHOLD == false
	ATTACKING = false
	HUM.WalkSpeed = 100
	HUM.JumpPower = 50
end

function Dance()
	HUM.WalkSpeed = 0
	HUM.JumpPower = 0
	ATTACKING = true
	local REMOVETRACK = false
	local TRACK = nil
	if ROOT:FindFirstChild("BGM_MUSIC") then
		TRACK = ROOT:FindFirstChild("BGM_MUSIC")
		TRACK.Volume = 5
	else
		TRACK = NewSound({ID = BOMB,PARENT = ROOT,VOLUME = 5,PITCH = 1,LOOP = true,MAXDISTANCE = 300,EMITTERSIZE = 300,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
		REMOVETRACK = true
	end
	TRACK.SoundId = "rbxassetid://"..BOMB
	TRACK:Play()
	local DONEWITHDANCING = false
	clientevent = function(PLR,V1,V2)
		if V1 == "KeyDown" and V2 == "m" then
			DONEWITHDANCING = true
		end
	end
	local I = 0
	local RAVE = IT("PointLight",ROOT)
	RAVE.Brightness = 25
	RAVE.Color = BrickColor.random().Color
	repeat
		I = I + 2
		Swait()
		RAVE.Color = BrickColor.random().Color
		ROOTJOINT.C0 = Clerp(ROOTJOINT.C0,ROOTC0 * CF(0 - 0.32 * SIN(I / 10), 0, -0.55 - 0.05 * COS(I / 5)) * ANGLES(RAD(0), RAD(0 - 20 * SIN(I / 10)), RAD(0)), 1.5 / ANIM_SPEED)
		NECK.C0 = Clerp(NECK.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0 - 20 * SIN(I / 10)), RAD(0)), 1.5 / ANIM_SPEED)
		RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(170), RAD(10), RAD(-35 * COS(I/10)))  *CF(0,-1,0) * RIGHTSHOULDERC0, 1.5 / ANIM_SPEED)
		LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(170), RAD(-10), RAD(-35 * COS(I/10))) * CF(0,-1,0) * LEFTSHOULDERC0, 1.5 / ANIM_SPEED)
		RIGHTHIP.C0 = Clerp(RIGHTHIP.C0, CF(1.35, -0.475 + 0.36 * SIN(I / 10) + 0.05 * COS(I / 5), -0.35) * ANGLES(RAD(0), RAD(45), RAD(0)) * ANGLES(RAD(-12 - 19 * SIN(I / 10)), RAD(0), RAD(0)), 1.5 / ANIM_SPEED)
		LEFTHIP.C0 = Clerp(LEFTHIP.C0, CF(-1.35, -0.475 - 0.36 * SIN(I / 10) + 0.05 * COS(I / 5), -0.35) * ANGLES(RAD(0), RAD(-45), RAD(0)) * ANGLES(RAD(-12 + 19 * SIN(I / 10)), RAD(0), RAD(0)), 1.5 / ANIM_SPEED)
	until DONEWITHDANCING == true
	RAVE:Remove()
	NC:Disconnect()
	if REMOVETRACK == true then
		TRACK:Remove()
	else
		TRACK:Play()
		TRACK.Volume = 1.25
		TRACK.SoundId = "rbxassetid://"..BGM
	end
	ATTACKING = false
	HUM.WalkSpeed = 100
	HUM.JumpPower = 50
end

--//====================================================\\--
--||                       WRAP
--\\====================================================//--

clientevent = function(PLR,V1,V2)
	if PLR == PLAYER and ANIM ~= "Sit" then
		if V1 == "MousePositionUpdate" then
			MOUSEPOS = MOUSE.Hit.p
		elseif V1 == "KeyUp" then
			KEYHOLD = false
		elseif V1 == "MouseUp" then
			MOUSEHOLD = false
		end
		if ATTACKING == false then
			if V1 == "MouseDown" then
				MOUSEHOLD = true
				Fire_in_the_hole()
			elseif V1 == "KeyDown" then
				KEYHOLD = true
				if V2 == "z" then
					Store()
				elseif V2 == "m" then
					Dance()
				elseif V2 == "t" then
					NewSound({ID = 145757437,PARENT = ROOT,VOLUME = 10,PITCH = 1,LOOP = false,MAXDISTANCE = 100,EMITTERSIZE = 25,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
				elseif V2 == "e" then
					if ROOT:FindFirstChild("BGM_MUSIC") then
						ROOT:FindFirstChild("BGM_MUSIC"):Remove()
					else
						local M = NewSound({ID = BGM,PARENT = ROOT,VOLUME = 1.25,PITCH = 1,LOOP = true,MAXDISTANCE = 300,EMITTERSIZE = 300,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
						M.Name = "BGM_MUSIC"
					end
				end
			end
		end
	end
end

local M = NewSound({ID = BGM,PARENT = ROOT,VOLUME = 1.25,PITCH = 1,LOOP = true,MAXDISTANCE = 300,EMITTERSIZE = 300,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
M.Name = "BGM_MUSIC"
HUM.WalkSpeed = 100
while true do
	Swait()
	SINE = SINE + CHANGE
	if CHARACTER:FindFirstChild("Animate") then
		CHARACTER:FindFirstChild("Animate"):Destroy()
	end
	if CHARACTER:FindFirstChild("Sound") then
		CHARACTER:FindFirstChild("Sound"):Destroy()
	end
	for _,v in next, HUM:GetPlayingAnimationTracks() do
		v:Stop();
	end
	local TORSOVELOCITY = (ROOT.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = ROOT.Velocity.y
	local HITFLOOR = Raycast(ROOT.Position, (CF(ROOT.Position, ROOT.Position + VT(0, -1, 0))).lookVector, 4+HUM.HipHeight, CHARACTER)
	local WALKSPEEDVALUE = 0.5
	local SITTING = HUM.Sit
	if ANIM == "Walk" and TORSOVELOCITY > 1 and SITTING == false then
		RIGHTHIP.C1 = Clerp(RIGHTHIP.C1, CF(0.5, 0.875 - 0.3 * SIN(SINE / WALKSPEEDVALUE), -0.5 * COS(SINE / WALKSPEEDVALUE) +0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RIGHTLEG.RotVelocity.Y / 35, RAD(0), RAD(55 * COS(SINE / WALKSPEEDVALUE))), 2 / ANIM_SPEED)
		LEFTHIP.C1 = Clerp(LEFTHIP.C1, CF(-0.5, 0.875 + 0.3 * SIN(SINE / WALKSPEEDVALUE), 0.5 * COS(SINE / WALKSPEEDVALUE) +0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LEFTLEG.RotVelocity.Y / 35, RAD(0), RAD(55 * COS(SINE / WALKSPEEDVALUE))), 2 / ANIM_SPEED)
	elseif (ANIM ~= "Walk") or (TORSOVELOCITY < 1) or SITTING == true then
		RIGHTHIP.C1 = Clerp(RIGHTHIP.C1, CF(0.5, 1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / ANIM_SPEED)
		LEFTHIP.C1 = Clerp(LEFTHIP.C1, CF(-0.5, 1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / ANIM_SPEED)
	end
	if ATTACKING == false then
		GRIP.C0 = Clerp(GRIP.C0, G_C0, 1.5 / ANIM_SPEED)
	end
	if SITTING == false then
		if HITFLOOR then
			if TORSOVELOCITY < 1 and HITFLOOR ~= nil then
				ANIM = "Idle"
				if ATTACKING == false then
					ROOTJOINT.C0 = Clerp(ROOTJOINT.C0,ROOTC0 * CF(0, 0, -0.02 + 0.05 * COS(SINE / 6)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.5 / ANIM_SPEED)
					NECK.C0 = Clerp(NECK.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 6)), RAD(0), RAD(0)), 1.5 / ANIM_SPEED)
					RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(100), RAD(0), RAD(5 + 2.5 * COS(SINE / 6))) * RIGHTSHOULDERC0, 1.5 / ANIM_SPEED)
					LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-25 - 2.5 * COS(SINE / 6))) * LEFTSHOULDERC0, 1.5 / ANIM_SPEED)
					RIGHTHIP.C0 = Clerp(RIGHTHIP.C0, CF(1, -1 - 0.05 * COS(SINE / 6), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(0)), 1.5 / ANIM_SPEED)
					LEFTHIP.C0 = Clerp(LEFTHIP.C0, CF(-1, -1 - 0.05 * COS(SINE / 6), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(0)), 1.5 / ANIM_SPEED)
				end
			elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
				ANIM = "Walk"
				if ATTACKING == false then
					ROOTJOINT.C0 = Clerp(ROOTJOINT.C0,ROOTC0 * CF(0, 0, -0.05 + 0.05 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(-10), RAD(0), RAD(0)), 2 / ANIM_SPEED)
					NECK.C0 = Clerp(NECK.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(10), RAD(0), RAD(0)), 2 / ANIM_SPEED)
					RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(135), RAD(0), RAD(5 + 2.5 * COS(SINE / WALKSPEEDVALUE))) * RIGHTSHOULDERC0, 2 / ANIM_SPEED)
					LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-15), RAD(0), RAD(-25 - 2.5 * COS(SINE / WALKSPEEDVALUE))) * LEFTSHOULDERC0, 2 / ANIM_SPEED)
					RIGHTHIP.C0 = Clerp(RIGHTHIP.C0, CF(1 , -1 - 0.05 * COS(SINE / WALKSPEEDVALUE), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-15)), 2 / ANIM_SPEED)
					LEFTHIP.C0 = Clerp(LEFTHIP.C0, CF(-1, -1 - 0.05 * COS(SINE / WALKSPEEDVALUE), 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(15)), 2 / ANIM_SPEED)
				end
			end
		else
			if TORSOVERTICALVELOCITY > 0 then
				ANIM = "Jump"
				if ATTACKING == false then
					ROOTJOINT.C0 = Clerp(ROOTJOINT.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / ANIM_SPEED)
					NECK.C0 = Clerp(NECK.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 1 / ANIM_SPEED)
					RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(25), RAD(0), RAD(5 + 2.5 * COS(SINE / 6))) * RIGHTSHOULDERC0, 1.5 / ANIM_SPEED)
					LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-2), RAD(0), RAD(10)) * LEFTSHOULDERC0, 1 / ANIM_SPEED)
					RIGHTHIP.C0 = Clerp(RIGHTHIP.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 1 / ANIM_SPEED)
					LEFTHIP.C0 = Clerp(LEFTHIP.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 1 / ANIM_SPEED)
				end
			else
				ANIM = "Fall"
				if ATTACKING == false then
					ROOTJOINT.C0 = Clerp(ROOTJOINT.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / ANIM_SPEED)
					NECK.C0 = Clerp(NECK.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 1 / ANIM_SPEED)
					RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(150), RAD(0), RAD(5 + 2.5 * COS(SINE / 6))) * RIGHTSHOULDERC0, 1.5 / ANIM_SPEED)
					LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-2), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 1 / ANIM_SPEED)
					RIGHTHIP.C0 = Clerp(RIGHTHIP.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 1 / ANIM_SPEED)
					LEFTHIP.C0 = Clerp(LEFTHIP.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 1 / ANIM_SPEED)
				end
			end
		end
	else
		ANIM = "Sit"
		if ATTACKING == false then
			ROOTJOINT.C0 = Clerp(ROOTJOINT.C0,ROOTC0 * CF(0, 0, -0.5) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.25 / ANIM_SPEED)
			NECK.C0 = Clerp(NECK.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1.25 / ANIM_SPEED)
			RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1.5 / ANIM_SPEED)
			LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0, CF(-1.5, 0.65, 0) * ANGLES(RAD(50), RAD(-10), RAD(45))*CF(0,-0.25,0) * LEFTSHOULDERC0, 1.25 / ANIM_SPEED)
			RIGHTHIP.C0 = Clerp(RIGHTHIP.C0, CF(1, -0.25, -1) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 1.25 / ANIM_SPEED)
			LEFTHIP.C0 = Clerp(LEFTHIP.C0, CF(-1, -0.25, -1) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-10)), 1.25 / ANIM_SPEED)
		end
	end
end
