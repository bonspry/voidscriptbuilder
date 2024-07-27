
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
Model1 = Instance.new("Model")
Part2 = Instance.new("Part")
Motor6D3 = Instance.new("Motor6D")
Part4 = Instance.new("Part")
Motor6D5 = Instance.new("Motor6D")
Motor6D6 = Instance.new("Motor6D")
Motor6D7 = Instance.new("Motor6D")
Motor6D8 = Instance.new("Motor6D")
Motor6D9 = Instance.new("Motor6D")
Part10 = Instance.new("Part")
Part11 = Instance.new("Part")
Part12 = Instance.new("Part")
Part13 = Instance.new("Part")
Humanoid14 = Instance.new("Humanoid")
Folder15 = Instance.new("Folder")
Pants16 = Instance.new("Pants")
Shirt17 = Instance.new("Shirt")
Part18 = Instance.new("Part")
Part19 = Instance.new("Part")
SpecialMesh20 = Instance.new("SpecialMesh")
Weld21 = Instance.new("Weld")
Part22 = Instance.new("Part")
SpecialMesh23 = Instance.new("SpecialMesh")
Weld24 = Instance.new("Weld")
ForceField25 = Instance.new("ForceField")
Folder26 = Instance.new("Folder")
Part27 = Instance.new("Part")
Weld28 = Instance.new("Weld")
Part29 = Instance.new("Part")
Weld30 = Instance.new("Weld")
Part31 = Instance.new("Part")
Weld32 = Instance.new("Weld")
Part33 = Instance.new("Part")
SpecialMesh34 = Instance.new("SpecialMesh")
Weld35 = Instance.new("Weld")
Part36 = Instance.new("Part")
SpecialMesh37 = Instance.new("SpecialMesh")
Weld38 = Instance.new("Weld")
Part39 = Instance.new("Part")
SpecialMesh40 = Instance.new("SpecialMesh")
Weld41 = Instance.new("Weld")
Part42 = Instance.new("Part")
SpecialMesh43 = Instance.new("SpecialMesh")
Weld44 = Instance.new("Weld")
Part45 = Instance.new("Part")
ParticleEmitter46 = Instance.new("ParticleEmitter")
Trail47 = Instance.new("Trail")
Folder0.Name = "SLC"
Folder0.Parent = mas
Model1.Name = "LightCharacter"
Model1.Parent = Folder0
Model1.PrimaryPart = Part2
Part2.Name = "HumanoidRootPart"
Part2.Parent = Model1
Part2.CFrame = CFrame.new(8250.24609, -3575.6626, 64.4193802, -0.984808028, -0.173550457, -0.00584135577, -0.173550248, 0.982560575, 0.0667540953, -0.00584569992, 0.0667537153, -0.997752547)
Part2.Orientation = Vector3.new(-3.828000068664551, -179.6649932861328, -10.017000198364258)
Part2.Position = Vector3.new(8250.24609375, -3575.66259765625, 64.41938018798828)
Part2.Rotation = Vector3.new(-176.1719970703125, -0.33500000834465027, 170.00599670410156)
Part2.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part2.Transparency = 1
Part2.Size = Vector3.new(2, 2, 1)
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.BrickColor = BrickColor.new("Sand green")
Part2.CanCollide = false
Part2.Locked = true
Part2.TopSurface = Enum.SurfaceType.Smooth
Part2.brickColor = BrickColor.new("Sand green")
Motor6D3.Name = "RootJoint"
Motor6D3.Parent = Part2
Motor6D3.MaxVelocity = 0.10000000149011612
Motor6D3.C0 = CFrame.new(0, 0.032165695, -1.40600709e-09, -1, 8.44439185e-08, -2.26266756e-08, 3.53712012e-16, 0.258818984, 0.965925872, 8.74227766e-08, 0.965925872, -0.258819014)
Motor6D3.C1 = CFrame.new(0, 0, 0, -1, 8.74227268e-08, 1.01246907e-21, 3.82136712e-15, 4.37113528e-08, 1, 8.74227268e-08, 1, -4.37113599e-08)
Motor6D3.Part0 = Part2
Motor6D3.Part1 = Part4
Motor6D3.part1 = Part4
Part4.Name = "Torso"
Part4.Parent = Model1
Part4.CFrame = CFrame.new(8250.24023, -3575.6311, 64.421524, -0.984808028, -0.166125, -0.0505604595, -0.173550233, 0.931803465, 0.318784803, -0.00584569573, 0.322716445, -0.94647789)
Part4.Orientation = Vector3.new(-18.589000701904297, -176.94200134277344, -10.550999641418457)
Part4.Position = Vector3.new(8250.240234375, -3575.631103515625, 64.42152404785156)
Part4.Rotation = Vector3.new(-161.38600158691406, -2.8980000019073486, 170.4250030517578)
Part4.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part4.Size = Vector3.new(2, 2, 1)
Part4.BottomSurface = Enum.SurfaceType.Smooth
Part4.BrickColor = BrickColor.new("Sand green")
Part4.Locked = true
Part4.Material = Enum.Material.SmoothPlastic
Part4.TopSurface = Enum.SurfaceType.Smooth
Part4.brickColor = BrickColor.new("Sand green")
Motor6D5.Name = "Left Hip"
Motor6D5.Parent = Part4
Motor6D5.MaxVelocity = 0.10000000149011612
Motor6D5.C0 = CFrame.new(-1, -1.13216567, 0, 0.342020154, 0.0818995982, -0.936116815, -0.163175911, 0.986236572, 0.0266664606, 0.925416589, 0.14363125, 0.350676835)
Motor6D5.C1 = CFrame.new(-0.5, 1, 0, -4.37113918e-08, -0, -1, 0, 1, -0, 1, 0, -4.37113918e-08)
Motor6D5.Part0 = Part4
Motor6D5.Part1 = Part10
Motor6D5.part1 = Part10
Motor6D6.Name = "Left Shoulder"
Motor6D6.Parent = Part4
Motor6D6.MaxVelocity = 0.10000000149011612
Motor6D6.C0 = CFrame.new(-1.00245762, 0.523578882, 0.0244561452, -0.0673661381, 0.0671040267, -0.995469153, -0.242154032, 0.966803789, 0.0815589428, 0.967896283, 0.246551186, -0.0488803275)
Motor6D6.C1 = CFrame.new(0.5, 0.499975681, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Motor6D6.Part0 = Part4
Motor6D6.Part1 = Part12
Motor6D6.part1 = Part12
Motor6D7.Name = "Right Shoulder"
Motor6D7.Parent = Part4
Motor6D7.MaxVelocity = 0.10000000149011612
Motor6D7.C0 = CFrame.new(1.0019027, 0.537878335, 0.0346295051, 2.47025964e-05, -0.0871481597, 0.996195376, -0.794666886, 0.60473454, 0.0529224835, -0.607045829, -0.791644692, -0.0692388117)
Motor6D7.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Motor6D7.Part0 = Part4
Motor6D7.Part1 = Part13
Motor6D7.part1 = Part13
Motor6D8.Name = "Neck"
Motor6D8.Parent = Part4
Motor6D8.MaxVelocity = 0.10000000149011612
Motor6D8.C0 = CFrame.new(0, 1, 0, -0.996194601, -1.92179914e-06, -0.0871578082, -0.083380565, -0.291180104, 0.953027725, -0.0253804531, 0.956668317, 0.290071845)
Motor6D8.C1 = CFrame.new(0, -0.5, 0, -1, 8.74227268e-08, 1.01246907e-21, 3.82136712e-15, 4.37113528e-08, 1, 8.74227268e-08, 1, -4.37113599e-08)
Motor6D8.Part0 = Part4
Motor6D8.Part1 = Part18
Motor6D8.part1 = Part18
Motor6D9.Name = "Right Hip"
Motor6D9.Parent = Part4
Motor6D9.MaxVelocity = 0.10000000149011612
Motor6D9.C0 = CFrame.new(1, -1.13216567, 0, 0.173648208, -0.0686967075, 0.982408822, 0.254886985, 0.966708004, 0.022545591, -0.951251268, 0.246488214, 0.185377002)
Motor6D9.C1 = CFrame.new(0.5, 1, 0, -4.37113918e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113918e-08)
Motor6D9.Part0 = Part4
Motor6D9.Part1 = Part11
Motor6D9.part1 = Part11
Part10.Name = "Left Leg"
Part10.Parent = Model1
Part10.CFrame = CFrame.new(8251.21484, -3577.61255, 64.0390625, -0.899735034, -0.251755983, -0.356506109, -0.299101651, 0.950552404, 0.0836031884, 0.317829937, 0.181852192, -0.930545211)
Part10.Orientation = Vector3.new(-4.796000003814697, -159.03700256347656, -17.466999053955078)
Part10.Position = Vector3.new(8251.21484375, -3577.612548828125, 64.0390625)
Part10.Rotation = Vector3.new(-174.86599731445312, -20.88599967956543, 164.3679962158203)
Part10.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part10.Size = Vector3.new(1, 2, 1)
Part10.BottomSurface = Enum.SurfaceType.Smooth
Part10.BrickColor = BrickColor.new("Sand green")
Part10.CanCollide = false
Part10.Locked = true
Part10.Material = Enum.Material.SmoothPlastic
Part10.TopSurface = Enum.SurfaceType.Smooth
Part10.brickColor = BrickColor.new("Sand green")
Part11.Name = "Right Leg"
Part11.Parent = Model1
Part11.CFrame = CFrame.new(8250.03906, -3577.80566, 64.0581894, -0.980602264, -0.105403863, 0.165257588, -0.0903938562, 0.991280913, 0.0958765596, -0.1739223, 0.0790784955, -0.981579423)
Part11.Orientation = Vector3.new(-5.501999855041504, 170.4429931640625, -5.210000038146973)
Part11.Position = Vector3.new(8250.0390625, -3577.8056640625, 64.05818939208984)
Part11.Rotation = Vector3.new(-174.42100524902344, 9.51200008392334, 173.86500549316406)
Part11.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part11.Size = Vector3.new(1, 2, 1)
Part11.BottomSurface = Enum.SurfaceType.Smooth
Part11.BrickColor = BrickColor.new("Sand green")
Part11.CanCollide = false
Part11.Locked = true
Part11.Material = Enum.Material.SmoothPlastic
Part11.TopSurface = Enum.SurfaceType.Smooth
Part11.brickColor = BrickColor.new("Sand green")
Part12.Name = "Left Arm"
Part12.Parent = Model1
Part12.CFrame = CFrame.new(8251.74316, -3575.32886, 64.5732803, -0.969268441, -0.239160597, 0.0576332696, -0.233178496, 0.967821956, 0.0946020633, -0.0784037709, 0.0782559961, -0.993845761)
Part12.Orientation = Vector3.new(-5.427999973297119, 176.68099975585938, -13.545999526977539)
Part12.Position = Vector3.new(8251.7431640625, -3575.328857421875, 64.57328033447266)
Part12.Rotation = Vector3.new(-174.56300354003906, 3.303999900817871, 166.13999938964844)
Part12.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part12.Size = Vector3.new(1, 2, 1)
Part12.BottomSurface = Enum.SurfaceType.Smooth
Part12.BrickColor = BrickColor.new("Sand green")
Part12.CanCollide = false
Part12.Locked = true
Part12.Material = Enum.Material.SmoothPlastic
Part12.TopSurface = Enum.SurfaceType.Smooth
Part12.brickColor = BrickColor.new("Sand green")
Part13.Name = "Right Arm"
Part13.Parent = Model1
Part13.CFrame = CFrame.new(8248.65625, -3575.52881, 64.1223984, -0.986352205, 0.0253885984, -0.16268222, -0.145648867, 0.32625398, 0.933994591, 0.0767885074, 0.944941401, -0.318103224)
Part13.Orientation = Vector3.new(-69.06600189208984, -152.91400146484375, -24.05699920654297)
Part13.Position = Vector3.new(8248.65625, -3575.52880859375, 64.12239837646484)
Part13.Rotation = Vector3.new(-108.80799865722656, -9.36299991607666, -178.5260009765625)
Part13.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part13.Size = Vector3.new(1, 2, 1)
Part13.BottomSurface = Enum.SurfaceType.Smooth
Part13.BrickColor = BrickColor.new("Sand green")
Part13.CanCollide = false
Part13.Locked = true
Part13.Material = Enum.Material.SmoothPlastic
Part13.TopSurface = Enum.SurfaceType.Smooth
Part13.brickColor = BrickColor.new("Sand green")
Humanoid14.Parent = Model1
Humanoid14.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
Humanoid14.Health = 1
Humanoid14.LeftLeg = Part10
Humanoid14.MaxHealth = 999
Humanoid14.MaxSlopeAngle = 89.9000015258789
Humanoid14.RightLeg = Part11
Humanoid14.Torso = Part2
Humanoid14.WalkSpeed = 50
Humanoid14.maxHealth = 999
Folder15.Name = "Effects"
Folder15.Parent = Model1
Pants16.Name = "SuitPants"
Pants16.Parent = Model1
Pants16.PantsTemplate = "http://www.roblox.com/asset/?id=424584709"
Shirt17.Name = "SuitShirt"
Shirt17.Parent = Model1
Shirt17.ShirtTemplate = "http://www.roblox.com/asset/?id=424584670"
Part18.Name = "Head"
Part18.Parent = Model1
Part18.CFrame = CFrame.new(8250.03027, -3574.20142, 64.7610016, -0.996195257, -0.0871541873, 4.68268991e-06, -0.0871045887, 0.995631337, 0.0336489975, -0.00293729454, 0.0335206091, -0.999433994)
Part18.Orientation = Vector3.new(-1.9279999732971191, 180, -5)
Part18.Position = Vector3.new(8250.0302734375, -3574.201416015625, 64.76100158691406)
Part18.Rotation = Vector3.new(-178.07200622558594, 0, 175)
Part18.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part18.Transparency = 1
Part18.Size = Vector3.new(2, 1, 1)
Part18.BottomSurface = Enum.SurfaceType.Smooth
Part18.BrickColor = BrickColor.new("Sand green")
Part18.CanCollide = false
Part18.Locked = true
Part18.Material = Enum.Material.Neon
Part18.TopSurface = Enum.SurfaceType.Smooth
Part18.brickColor = BrickColor.new("Sand green")
Part19.Name = "NeonParts"
Part19.Parent = Part18
Part19.CFrame = CFrame.new(8250.03027, -3574.20142, 64.7610016, -0.996195257, -0.0871541873, 4.68268991e-06, -0.0871045887, 0.995631337, 0.0336489975, -0.00293729454, 0.0335206091, -0.999433994)
Part19.Orientation = Vector3.new(-1.9279999732971191, 180, -5)
Part19.Position = Vector3.new(8250.0302734375, -3574.201416015625, 64.76100158691406)
Part19.Rotation = Vector3.new(-178.07200622558594, 0, 175)
Part19.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part19.Size = Vector3.new(1.1700010299682617, 1.1700010299682617, 1.16998291015625)
Part19.BrickColor = BrickColor.new("Institutional white")
Part19.CanCollide = false
Part19.Locked = true
Part19.Material = Enum.Material.Neon
Part19.brickColor = BrickColor.new("Institutional white")
SpecialMesh20.Parent = Part19
SpecialMesh20.MeshId = "rbxassetid://18679047918"
SpecialMesh20.MeshType = Enum.MeshType.FileMesh
Weld21.Parent = Part19
Weld21.C1 = CFrame.new(0, 0, 0, 1, 4.44082434e-16, 0, -4.44082434e-16, 1, 0, 0, 0, 1)
Weld21.Part0 = Part18
Part22.Name = "Outer"
Part22.Parent = Part18
Part22.CFrame = CFrame.new(8250.03223, -3574.20166, 64.7705994, -4.64044342e-06, -0.0871541873, -0.996195257, -0.0336489789, 0.995631337, -0.0871045887, 0.999433994, 0.0335205942, -0.00293725077)
Part22.Orientation = Vector3.new(4.997000217437744, -90.16899871826172, -1.9359999895095825)
Part22.Position = Vector3.new(8250.0322265625, -3574.20166015625, 64.77059936523438)
Part22.Rotation = Vector3.new(91.93099975585938, -85, 90.00299835205078)
Part22.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part22.Size = Vector3.new(1.19998300075531, 1.1999729871749878, 1.1999889612197876)
Part22.BrickColor = BrickColor.new("Sand green")
Part22.CanCollide = false
Part22.Locked = true
Part22.Material = Enum.Material.SmoothPlastic
Part22.brickColor = BrickColor.new("Sand green")
SpecialMesh23.Parent = Part22
SpecialMesh23.MeshId = "rbxassetid://18679062079"
SpecialMesh23.MeshType = Enum.MeshType.FileMesh
Weld24.Parent = Part22
Weld24.C0 = CFrame.new(0, 0, 0, -1, 0, -8.74227766e-08, 0, 1, 0, 8.74227766e-08, 0, -1)
Weld24.C1 = CFrame.new(-0.00959974155, 0, 0.0018081665, -4.37124825e-08, 1.48886556e-08, 1, 1.01462689e-15, 1, -1.48886556e-08, -1, 3.63806818e-16, -4.37124825e-08)
Weld24.Part0 = Part18
ForceField25.Parent = Model1
ForceField25.Visible = false
Folder26.Name = "MegaGunnModel"
Folder26.Parent = Model1
Part27.Name = "Joint"
Part27.Parent = Folder26
Part27.CFrame = CFrame.new(8248.60547, -3576.00244, 63.2290115, -0.986352205, 0.148215905, 0.0717070624, -0.145648867, -0.988530695, 0.0398287475, 0.0767885074, 0.0288410187, 0.996626198)
Part27.Orientation = Vector3.new(-2.2829999923706055, 4.114999771118164, -171.6179962158203)
Part27.Position = Vector3.new(8248.60546875, -3576.00244140625, 63.22901153564453)
Part27.Rotation = Vector3.new(-2.2890000343322754, 4.111999988555908, -171.45399475097656)
Part27.Transparency = 1
Part27.Size = Vector3.new(1.0039602518081665, 1.0039602518081665, 1.0039602518081665)
Part27.BottomSurface = Enum.SurfaceType.Smooth
Part27.CanCollide = false
Part27.Locked = true
Part27.TopSurface = Enum.SurfaceType.Smooth
Weld28.Parent = Part27
Weld28.C0 = CFrame.new(0.049999997, -1, -0.150000006, 1, -0, 0, 0, -0.291495591, 0.956567764, -0, -0.956567764, -0.291495591)
Weld28.Part0 = Part13
Weld28.Part1 = Part27
Weld28.part1 = Part27
Part29.Name = "Hole"
Part29.Parent = Folder26
Part29.CFrame = CFrame.new(8248.59473, -3577.65601, 59.9423904, 0.0717071071, 0.148215905, 0.986352205, 0.039828755, -0.988530695, 0.145648867, 0.996626198, 0.0288410187, -0.0767885521)
Part29.Orientation = Vector3.new(-8.375, 94.4520034790039, 177.6929931640625)
Part29.Position = Vector3.new(8248.5947265625, -3577.656005859375, 59.94239044189453)
Part29.Rotation = Vector3.new(-117.79900360107422, 80.52300262451172, -64.18199920654297)
Part29.Transparency = 1
Part29.Size = Vector3.new(0.20079202950000763, 0.20079202950000763, 0.20079202950000763)
Part29.BottomSurface = Enum.SurfaceType.Smooth
Part29.CanCollide = false
Part29.Locked = true
Part29.TopSurface = Enum.SurfaceType.Smooth
Weld30.Parent = Part29
Weld30.C1 = CFrame.new(3.34217167, -1.53814697, -0.00110816956, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
Weld30.Part0 = Part27
Weld30.Part1 = Part29
Weld30.part1 = Part29
Part31.Name = "Hole2"
Part31.Parent = Folder26
Part31.CFrame = CFrame.new(8248.17871, -3577.88696, 54.1619415, 0.0717071071, 0.148215905, 0.986352205, 0.039828755, -0.988530695, 0.145648867, 0.996626198, 0.0288410187, -0.0767885521)
Part31.Orientation = Vector3.new(-8.375, 94.4520034790039, 177.6929931640625)
Part31.Position = Vector3.new(8248.1787109375, -3577.886962890625, 54.16194152832031)
Part31.Rotation = Vector3.new(-117.79900360107422, 80.52300262451172, -64.18199920654297)
Part31.Transparency = 1
Part31.Size = Vector3.new(0.20079202950000763, 0.20079202950000763, 0.20079202950000763)
Part31.BottomSurface = Enum.SurfaceType.Smooth
Part31.CanCollide = false
Part31.Locked = true
Part31.TopSurface = Enum.SurfaceType.Smooth
Weld32.Parent = Part31
Weld32.C1 = CFrame.new(9.14218998, -1.53814697, -0.00110816956, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
Weld32.Part0 = Part27
Weld32.Part1 = Part31
Weld32.part1 = Part31
Part33.Name = "Base"
Part33.Parent = Folder26
Part33.CFrame = CFrame.new(8248.64746, -3577.3772, 61.1654053, -0.0540999323, 0.155509114, 0.986352205, 0.727160096, -0.670833647, 0.145648912, 0.684327424, 0.725114882, -0.0767885521)
Part33.Orientation = Vector3.new(-8.375, 94.4520034790039, 132.6929931640625)
Part33.Position = Vector3.new(8248.6474609375, -3577.377197265625, 61.1654052734375)
Part33.Rotation = Vector3.new(-117.79900360107422, 80.52300262451172, -109.18199920654297)
Part33.Color = Color3.new(1, 1, 1)
Part33.Size = Vector3.new(9.324540138244629, 8.58290958404541, 1.4686700105667114)
Part33.BrickColor = BrickColor.new("Institutional white")
Part33.CanCollide = false
Part33.Locked = true
Part33.Material = Enum.Material.Metal
Part33.brickColor = BrickColor.new("Institutional white")
SpecialMesh34.Parent = Part33
SpecialMesh34.MeshId = "rbxassetid://6080721391"
SpecialMesh34.Scale = Vector3.new(2.000000476837158, 2.0000007152557373, 2.0000009536743164)
SpecialMesh34.MeshType = Enum.MeshType.FileMesh
Weld35.Parent = Part33
Weld35.C1 = CFrame.new(2.41373444, 0.567920685, 0, 1.12379617e-08, -0.707106829, 0.707106829, -7.30561709e-08, 0.707106829, 0.707106829, -1, -5.96049574e-08, -4.3712074e-08)
Weld35.Part0 = Part27
Part36.Name = "GunAdditions"
Part36.Parent = Folder26
Part36.CFrame = CFrame.new(8248.8291, -3577.04199, 64.1426926, 0.0925052464, 0.136208057, -0.986352205, -0.876007199, -0.459772676, -0.145648867, -0.473335981, 0.877524137, 0.0767884701)
Part36.Orientation = Vector3.new(8.375, -85.5479965209961, -117.69300079345703)
Part36.Position = Vector3.new(8248.8291015625, -3577.0419921875, 64.14269256591797)
Part36.Rotation = Vector3.new(62.20100021362305, -80.52300262451172, -55.81800079345703)
Part36.Color = Color3.new(1, 1, 1)
Part36.Size = Vector3.new(4.125400066375732, 5.027339935302734, 1.2047390937805176)
Part36.BrickColor = BrickColor.new("Institutional white")
Part36.CanCollide = false
Part36.Locked = true
Part36.Material = Enum.Material.Metal
Part36.brickColor = BrickColor.new("Institutional white")
SpecialMesh37.Parent = Part36
SpecialMesh37.MeshId = "rbxassetid://18679068904"
SpecialMesh37.MeshType = Enum.MeshType.FileMesh
Weld38.Parent = Part36
Weld38.C0 = CFrame.new(0, 0.899999976, -0.5, -2.18556924e-08, 3.78551732e-08, 1, 0.866025448, 0.49999997, 0, -0.49999997, 0.866025448, -4.37113883e-08)
Weld38.C1 = CFrame.new(0.530899048, -1.29299164, -0.0013961792, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld38.Part0 = Part27
Part39.Name = "NeonParts"
Part39.Parent = Folder26
Part39.CFrame = CFrame.new(8248.74414, -3577.34033, 62.0278625, -0.678513169, -0.731080353, -0.071706906, -0.730432749, 0.681817293, -0.0398287401, 0.0780094266, 0.02535321, -0.996626198)
Part39.Orientation = Vector3.new(2.2829999923706055, -175.88499450683594, -46.97200012207031)
Part39.Position = Vector3.new(8248.744140625, -3577.34033203125, 62.027862548828125)
Part39.Rotation = Vector3.new(177.71099853515625, -4.111999988555908, 132.86399841308594)
Part39.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part39.Size = Vector3.new(2.0008599758148193, 2.2143499851226807, 8.927220344543457)
Part39.BrickColor = BrickColor.new("Institutional white")
Part39.CanCollide = false
Part39.Locked = true
Part39.Material = Enum.Material.Neon
Part39.brickColor = BrickColor.new("Institutional white")
SpecialMesh40.Parent = Part39
SpecialMesh40.MeshId = "rbxassetid://18679108664"
SpecialMesh40.VertexColor = Vector3.new(111111, 11111, 1111)
SpecialMesh40.MeshType = Enum.MeshType.FileMesh
Weld41.Parent = Part39
Weld41.C0 = CFrame.new(1.29999995, 1, -2.5, -0.207911655, -0.978147626, -1.50995803e-07, -0.978147626, 0.207911655, 0, 3.13937889e-08, 1.47696184e-07, -1)
Weld41.C1 = CFrame.new(0.850805283, 1.07305908, 1.2595787, -0.772622705, -0.634865463, -1.78418952e-13, 0.634865463, -0.772622705, 1.46607159e-13, -2.30926389e-13, -1.37642127e-20, 1)
Weld41.Part0 = Part27
Part42.Name = "Ultra-Fabulous Hair"
Part42.Parent = Model1
Part42.CFrame = CFrame.new(8249.84766, -3573.71631, 64.7773132, 0.996195436, -0.0871542096, -4.78047878e-06, 0.0871046036, 0.995631397, -0.0336490497, 0.00293737696, 0.0335206464, 0.999434114)
Part42.Orientation = Vector3.new(1.9279999732971191, 0, 5)
Part42.Position = Vector3.new(8249.84765625, -3573.71630859375, 64.77731323242188)
Part42.Rotation = Vector3.new(1.9279999732971191, 0, 5)
Part42.Color = Color3.new(1, 1, 1)
Part42.Size = Vector3.new(1.74399995803833, 1.5418449640274048, 1.4467949867248535)
Part42.BrickColor = BrickColor.new("Institutional white")
Part42.CanCollide = false
Part42.Locked = true
Part42.Material = Enum.Material.SmoothPlastic
Part42.brickColor = BrickColor.new("Institutional white")
SpecialMesh43.Parent = Part42
SpecialMesh43.MeshId = "rbxassetid://5589314244"
SpecialMesh43.MeshType = Enum.MeshType.FileMesh
Weld44.Parent = Part42
Weld44.C1 = CFrame.new(0.139995575, -0.499999046, 3.81469727e-06, -1.00000012, -1.09503162e-08, -8.33533704e-08, 8.02538125e-09, 1.00000012, -2.23517418e-08, 9.1502443e-08, 2.23517418e-08, -1.00000012)
Weld44.Part0 = Part18
Part45.Name = "SomeEffectIDK"
Part45.Parent = Folder0
Part45.CFrame = CFrame.new(8250.10547, -3576.03442, 70.0475769, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part45.Position = Vector3.new(8250.10546875, -3576.034423828125, 70.04757690429688)
Part45.Color = Color3.new(0, 0, 0)
Part45.Size = Vector3.new(1, 1, 1)
Part45.BottomSurface = Enum.SurfaceType.Smooth
Part45.BrickColor = BrickColor.new("Really black")
Part45.Locked = true
Part45.TopSurface = Enum.SurfaceType.Smooth
Part45.brickColor = BrickColor.new("Really black")
Part45.Shape = Enum.PartType.Ball
ParticleEmitter46.Parent = mas
ParticleEmitter46.Speed = NumberRange.new(0.699999988079071, 0.699999988079071)
ParticleEmitter46.Rotation = NumberRange.new(180, 180)
ParticleEmitter46.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(1, 1, 1))
ParticleEmitter46.Texture = "rbxasset://textures/particles/smoke_main.dds"
ParticleEmitter46.Transparency = NumberSequence.new(0,1)
ParticleEmitter46.Size = NumberSequence.new(0.10178089141845703,0)
ParticleEmitter46.Acceleration = Vector3.new(0, -0.30000001192092896, 0)
ParticleEmitter46.Drag = 5
ParticleEmitter46.LockedToPart = true
ParticleEmitter46.Rate = 16
ParticleEmitter46.RotSpeed = NumberRange.new(360, 360)
ParticleEmitter46.SpreadAngle = Vector2.new(8, 6)
ParticleEmitter46.VelocityInheritance = 1
ParticleEmitter46.VelocitySpread = 8
Trail47.Parent = Part45
Trail47.Attachment0 = nil
Trail47.Attachment1 = nil
Trail47.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(1, 1, 1))
Trail47.FaceCamera = true
Trail47.Transparency = NumberSequence.new(0,0.09999996423721313,0.36250001192092896,0.668749988079071,1)
Trail47.MinLength = 0
Trail47.WidthScale = NumberSequence.new(1,0)
Part2.CustomPhysicalProperties = PhysicalProperties.new(100, 0.300000012, 0.5, 1, 1)
Part4.CustomPhysicalProperties = PhysicalProperties.new(100, 0.300000012, 0.5, 1, 1)
Part10.CustomPhysicalProperties = PhysicalProperties.new(100, 0.300000012, 0.5, 1, 1)
Part11.CustomPhysicalProperties = PhysicalProperties.new(100, 0.300000012, 0.5, 1, 1)
Part12.CustomPhysicalProperties = PhysicalProperties.new(100, 0.300000012, 0.5, 1, 1)
Part13.CustomPhysicalProperties = PhysicalProperties.new(100, 0.300000012, 0.5, 1, 1)
Part18.CustomPhysicalProperties = PhysicalProperties.new(100, 0.300000012, 0.5, 1, 1)
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
warn([[

	Oh my goodness! Lightning Cannon for Lua Sandbox?
	
	My life is fulfilled!

	- Created by typicaalusername. Keep Yourself Safe.

]])

local BaseConnections = {}
local TempConnections = {}

local function addCon(tba,lol)
	table.insert(tba,lol)
end

local function disconnectTable(tab)
	for i,v in tab do
		pcall(function()
			v:Disconnect()
		end)
	end
	table.clear(tab)
end

script.Parent = game:GetService("MaterialService")
script.Name = "LightningCannon_typicaal"..owner.UserId --// Changing this will result in everything exploding.
local Assets = script
local folderofcrap = Instance.new("Folder")
table.foreach(Assets:Get("SLC"):GetChildren(), function(i,v)
	local lol = v:Clone()
	lol.Parent = folderofcrap
end)

folderofcrap["LightCharacter"].Name = "Character"

local function getLerp(lerp,delta)
	local delta = delta*60
	local cuh = 1-lerp
	return 1-cuh ^ delta
end

for i,v in folderofcrap:GetChildren() do
	v.Parent = script
end

local function ArtificialRemoteEvent()
	local FakeEvent1 = Instance.new("BindableEvent")
	return {
		FireServer = function(self, ...) FakeEvent1:Fire("Player",...) end;
		OnServerEvent = FakeEvent1.Event;
	}
end

function swait(num)
	if num == 0 or num == nil then
		game:GetService("RunService").Heartbeat:Wait()
	else
		for i = 1,num do
			game:GetService("RunService").Heartbeat:Wait()
		end
	end
end

Swait = swait

local stopeverything = false
game:GetService("RunService").PostSimulation:Wait()
local function randomstring()
	local length = math.random(10,20)
	local array = {}
	for i = 1,length do
		array[i] = string.char(math.random(32,126))
	end
	return table.concat(array)
end

local lplr = owner
local sine = 0
local USERNAME = owner.Name
local peoplez = {1191576743,1823895019,87867914,1308783007,112192467,732341111,115130006,1710676584,1442214824,1615916525,1442218084,1673231425,1310685079,1087181414,984151503,1442167487,1587587028,1441994738,1129585258,1129586211,275036820,1087264812,1087241085,1318469264,1622394251,663322373,1664828681,930999813,1442217078,1442208195,1340979865,1444403544,1664860157,1442285617,1442213697,1442218738,1442229346,1442213021,1124518548,1129587486,1186716325}
local owners = {0,1823895019,0,1308783007,0,0,0,1710676584,1442214824,1615916525,1442218084,1673231425,1310685079,1087181414,984151503,1442167487,1587587028,1441994738,1129585258,1129586211,275036820,1087264812,1087241085,1318469264,1622394251,663322373,1664828681,930999813,1442217078,1442208195,1340979865,1444403544,1664860157,1442285617,1442213697,1442218738,1442229346,1442213021,1124518548,1129587486,1186716325}
local isowner = false
local rickrolling = false
local USERID = owner.UserId

local Player = game:GetService("Players"):FindFirstChild(USERNAME)

local AnimSync = {Value = 0}
local SongSync = {Value = 0}
local taunt = {Value = "None"}
local songid = {Value = "rbxassetid://13734554970"}
local attack = false

local walkspeed = 50
local TauntRemote = ArtificialRemoteEvent()

local songvolume = {Value = 1}
local songpitch = {Value = 1}
local eeevol = songvolume.Value

local eeepitch  = songpitch.Value

local ISFLYING = false

local antivoid = nil
local Character = script.Character:Clone()
Character.Name = owner.Name.."'s Lightning Cannon"
Character.Parent = workspace
local currentposition = owner.Character.HumanoidRootPart.CFrame
local ogCharacter = owner.Character
owner.Character = Character

local charpos = {Value = CFrame.new()}
local eeeblock = Instance.new("Part")
local Humanoid = Character.Humanoid
Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead,false)
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local RootPart = Character.HumanoidRootPart
RootPart.CFrame = currentposition
local RootJoint = RootPart.RootJoint
local Neck = Torso["Neck"]
local RightShoulder = Torso["Right Shoulder"]
local LeftShoulder = Torso["Left Shoulder"]
local RightHip = Torso["Right Hip"]
local LeftHip = Torso["Left Hip"]
local Effects = Character.Effects
local Eyes = Head.NeonParts
local GUN = Character.MegaGunnModel
local GunJoint = GUN.Joint.Weld
local Hole = GUN.Hole
local Holetwo = GUN.Hole2
local shade = Character["Ultra-Fabulous Hair"].Color
local alreadyfixing = false
local eeeblock = Instance.new("Part")
eeeblock.Name = randomstring()
eeeblock.CanCollide = false
eeeblock.Anchored = true
eeeblock.Transparency = 1
eeeblock.CFrame = Torso.CFrame
eeeblock.Parent = Effects
local eee = Instance.new("Sound",eeeblock)
eee.Volume = eeevol
eee.Pitch = eeepitch
eee.SoundId = songid.Value
eee:Play()
eee.Name = randomstring()
eee.Looped = true
eee.TimePosition = SongSync.Value
local funny__ = Instance.new("ObjectValue", Character)
funny__.Value = eee
funny__.Name = "eeesoundval"
local SoundFixCons = {}
addCon(SoundFixCons,eee.DescendantAdded:Connect(function(v)
	if stopeverything then return end
	if v:IsA("SoundEffect") then
		v.Enabled = false
	end
	game:GetService("Debris"):AddItem(v,.01)
end))

addCon(BaseConnections,TauntRemote.OnServerEvent:Connect(function(plr,taunt2,tauntid)
	local tauntval = taunt
	local taunt = taunt2
	tauntval.Value = taunt
	if songid.Value ~= "rbxassetid://"..tostring(tauntid) then
		songid.Value = "rbxassetid://"..tostring(tauntid)
		eee.TimePosition = 0
	end
	songpitch.Value = 1
	if tauntid == 15986402753 or tauntid == 15990251056 or tauntid == 15986456953 or tauntid == 14005021606 or tauntid == 13672418875 then
		songvolume.Value = 3
		songpitch.Value = 1
	elseif tauntid == 15993696418 then
		songvolume.Value = 5
		songpitch.Value = .5
	else
		songvolume.Value = 1
		songpitch.Value = 1
	end
end))

function chatfunc(textt,glitchy)
	local text = string.gsub(textt,"​","")
	if string.lower(text) == ".stop" then
		stopeverything = true
		Character:Destroy()
		disconnectTable(BaseConnections)
		disconnectTable(SoundFixCons)
		disconnectTable(TempConnections)
		return
	end
	local chat = coroutine.wrap(function()
		local oldthing = eeeblock:FindFirstChild("TalkingBillBoard")
		if oldthing then
			oldthing:Destroy()
		end
		local sayingstuff = Instance.new("BillboardGui",eeeblock)
		sayingstuff.Size = UDim2.new(0,9999,2,0)
		sayingstuff.StudsOffset = Vector3.new(0,5,0)
		sayingstuff.Adornee = eeeblock
		sayingstuff.Name = "TalkingBillBoard"
		local sayingstuff2 = Instance.new("TextLabel",sayingstuff)
		sayingstuff2.BackgroundTransparency = 1
		sayingstuff2.BorderSizePixel = 0
		sayingstuff2.Text = ""
		sayingstuff2.Font = "Code"
		sayingstuff2.TextScaled = true
		sayingstuff2.TextStrokeTransparency = 0
		coroutine.resume(coroutine.create(function()
			while not stopeverything and sayingstuff2:IsDescendantOf(game) do
				local hBRUH,sBRUH,vBRUH = Color3.toHSV(GUN.NeonParts.Color)
				sayingstuff2.TextColor3 = Color3.fromHSV(hBRUH,sBRUH,vBRUH/2)
				swait()
			end
		end))
		sayingstuff2.TextStrokeColor3 = shade
		sayingstuff2.Size = UDim2.new(1,0,1,0)
		local sayingstuff3 = Instance.new("TextLabel",sayingstuff)
		sayingstuff3.BackgroundTransparency = 1
		sayingstuff3.BorderSizePixel = 0
		sayingstuff3.Text = ""
		sayingstuff3.Font = "Code"
		sayingstuff3.TextScaled = true
		sayingstuff3.TextStrokeTransparency = 0
		coroutine.resume(coroutine.create(function()
			while not stopeverything and sayingstuff3:IsDescendantOf(game) do
				sayingstuff3.TextColor3 = GUN.NeonParts.Color
				swait()
			end
		end))
		sayingstuff3.TextStrokeColor3 = shade
		sayingstuff3.Size = UDim2.new(1,0,1,0)
		coroutine.resume(coroutine.create(function()
			while not stopeverything and sayingstuff ~= nil do
				swait()
				if glitchy then
					local fonts = {"Antique","Arcade","Arial","ArialBold","Bodoni","Cartoon","Code","Fantasy","Garamond","Gotham","GothamBlack","GothamBold","GothamSemibold","Highway","SciFi","SourceSans","SourceSansBold","SourceSansItalic","SourceSansLight","SourceSansSemibold"}
					local randomfont = fonts[math.random(1,#fonts)]
					sayingstuff2.Font = randomfont
					sayingstuff3.Font = randomfont
				end
				sayingstuff2.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3)) 
				sayingstuff3.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3)) 
			end
		end))
		for i = 1,string.len(text) do
			swait(2)
			sayingstuff2.Text = string.sub(text,1,i)
			sayingstuff3.Text = string.sub(text,1,i)
		end
		swait(120)
		for i = 1,50 do
			swait()
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
local ROOTC0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local NECKC0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local RIGHTSHOULDERC0 = CFrame.new(-0.5,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
local LEFTSHOULDERC0 = CFrame.new(0.5,0,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))
local BG = nil
local BV = nil
local soundfixing = false
local function soundfixer()
	soundfixing = true
	pcall(function()
		eeeblock:Destroy()
	end)
	pcall(function()
		eee:Destroy()
	end)
	eeeblock = Instance.new("Part")
	eeeblock.Name = randomstring()
	eeeblock.CanCollide = false
	eeeblock.Anchored = true
	eeeblock.Transparency = 1
	if not alreadyfixing then
		eeeblock.CFrame = Torso.CFrame
	end
	eeeblock.Parent = Effects
	eee = Instance.new("Sound",eeeblock)
	eee.Volume = eeevol
	eee.Pitch = eeepitch
	eee.SoundId = songid.Value
	eee:Play()
	eee.Name = randomstring()
	eee.Looped = true
	eee.TimePosition = SongSync.Value
	funny__.Value = eee
	addCon(SoundFixCons,eee.DescendantAdded:Connect(function(v)
		if stopeverything then return end
		if v:IsA("SoundEffect") then
			v.Enabled = false
		end
		game:GetService("Debris"):AddItem(v,.01)
	end))
	soundfixing = false
end
function roar()
	coroutine.resume(coroutine.create(function()
		attack = true
		walkspeed = 0
		local ree = CreateSound(435742675,Head,10,1,false)
		ree.EmitterSize = 10000
		coroutine.resume(coroutine.create(function()
			swait(60)
			mdmg(Head.Position,10000)
		end))
		repeat if stopeverything then return end
			local offset = Vector3.new(math.random(-10,10)/50,math.random(-10,10)/50,math.random(-10,10)/50)
			workspace.CurrentCamera.Focus = workspace.CurrentCamera.Focus + offset
			workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame + offset
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),1)
			Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-45+math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),1)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,1)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)) * LEFTSHOULDERC0,1)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(-45),math.rad(80),math.rad(0)),1)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(-35),math.rad(-80),math.rad(0)),1)
			GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1)
			GUN.Base.Transparency = 1
			GUN.GunAdditions.Transparency = 1
			GUN.NeonParts.Transparency = 1
			game:GetService("RunService").PostSimulation:Wait()
		until ree.TimePosition >= 5 or not ree:IsDescendantOf(workspace)
		if ree:IsDescendantOf(workspace) then
			ree:Destroy()
			GUN.Base.Transparency = 0
			GUN.GunAdditions.Transparency = 0
			GUN.NeonParts.Transparency = 0
			walkspeed = 50
			attack = false
		end
	end))
end

local MouseRemote = Instance.new("RemoteEvent",script)
MouseRemote.Name = "MouseRemote"

local function SetupClient()
	return NLS([==[
		
		script.Enabled = false
		script:Remove()

	    local args = {...}
		local uhhhhicanexplain = args[1]
		
		owner.Character = workspace:WaitForChild(owner.Name.."'s Lightning Cannon")

		local mouse = game.Players.LocalPlayer:GetMouse()
		local remote1 = args[2]

		local input = function(io,a)
			if a then return end
			local io = {KeyCode=io.KeyCode,UserInputType=io.UserInputType,UserInputState=io.UserInputState}
			remote1:FireServer("i",io)
		end
		local fakecharthing = workspace:FindFirstChild(owner.Name.."'s Lightning Cannon")

	    local poop = os.clock()
	    game:GetService("RunService").RenderStepped:Connect(function()
	        fakecharthing = workspace:WaitForChild(owner.Name.."'s Lightning Cannon")
	        if os.clock() - poop >= 1/60 then
	            poop = os.clock()
				remote1:FireServer("m",{Hit = mouse.Hit, Target = mouse.Target})
				remote1:FireServer("c",{CFrame = workspace.CurrentCamera.CFrame})
				remote1:FireServer("playback", {PlaybackLoudness = fakecharthing:WaitForChild("eeesoundval").Value.PlaybackLoudness})
	        end
	    end)
		
		local curcam = workspace.CurrentCamera
		game:GetService("RunService").RenderStepped:Connect(function()
			curcam = workspace.CurrentCamera
			if curcam and fakecharthing then
				curcam.CameraSubject = fakecharthing:FindFirstChildOfClass("Humanoid")
			end
		end)

		game:GetService("UserInputService").InputBegan:Connect(input)
		game:GetService("UserInputService").InputEnded:Connect(input)
	]==],owner:FindFirstChildOfClass("PlayerGui"),script,MouseRemote)
end


local function characterfixer()
	alreadyfixing = true
	RootJoint.C0 = Clerp(RootJoint.C0,CFrame.new(0,9e9,0),1)
	Neck.C0 = Clerp(Neck.C0,CFrame.new(0,9e9,0),1)
	RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(0,9e9,0),1)
	LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(0,9e9,0),1)
	RightHip.C0 = Clerp(RightHip.C0,CFrame.new(0,9e9,0),1)
	LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(0,9e9,0),1)
	GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0,9e9,0),1)
	local camerapos = workspace.CurrentCamera.CFrame
	local oldcolor = GUN.NeonParts.Color
	local headpos = charpos.Value.p
	pcall(function()
		Character:Destroy()
	end)
	for i = 1,50 do
		local a = Instance.new("Part")
		a.Name = randomstring()
		a.Anchored = true
		a.Position = headpos
		a.Shape = "Ball"
		a.Color = shade
		a.Material = "Neon"
		a.CastShadow = false
		a.Size = Vector3.new(i*2,i*2,i*2)
		a.CanCollide = false
		if isowner then
			a.Transparency = .99
		else
			a.Transparency = 1
		end
		a.Parent = workspace
		game:GetService("Debris"):AddItem(a,5-i/50)
	end
	Character = script.Character:Clone()
	Character.Name = owner.Name.."'s Lightning Cannon"
	Character.Parent = workspace
	Humanoid = Character.Humanoid
	Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead,false)
	if lplr.Name == USERNAME and false then
		workspace.CurrentCamera.CameraSubject = Humanoid
		workspace.CurrentCamera.CameraType = "Scriptable"
		workspace.CurrentCamera.CFrame = camerapos
		coroutine.resume(coroutine.create(function()
			swait(5)
			workspace.CurrentCamera.CameraType = "Custom"
		end))
	end
	LeftArm = Character["Left Arm"]
	RightArm = Character["Right Arm"]
	LeftLeg = Character["Left Leg"]
	RightLeg = Character["Right Leg"]
	Head = Character.Head
	Torso = Character.Torso
	RootPart = Character.HumanoidRootPart
	RootPart.CFrame = charpos.Value
	if lplr.Name == USERNAME then
		Player.Character = Character
	end
	RootJoint = RootPart.RootJoint
	Neck = Torso["Neck"]
	RightShoulder = Torso["Right Shoulder"]
	LeftShoulder = Torso["Left Shoulder"]
	RightHip = Torso["Right Hip"]
	LeftHip = Torso["Left Hip"]
	Effects = Character.Effects
	Eyes = Head.NeonParts
	GUN = Character.MegaGunnModel
	GUN.NeonParts.Color = oldcolor
	Eyes.Color = GUN.NeonParts.Color
	GunJoint = GUN.Joint.Weld
	Hole = GUN.Hole
	Holetwo = GUN.Hole2
	funny__ = Instance.new("ObjectValue", Character)
	funny__.Value = eee
	funny__.Name = "eeesoundval"
	
	pcall(function()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)),1)
		Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0 ,0 + ((1) - 1)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),1)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,1)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(sine/25))) * LEFTSHOULDERC0,1)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),1)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),1)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1)
	end)
	if ISFLYING and lplr.Name == USERNAME then
		BG = Instance.new('BodyGyro',RootPart)
		BV = Instance.new('BodyVelocity',RootPart)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.P = 1e4
		BG.CFrame = RootPart.CFrame
		BV.Velocity = Vector3.new(0,0,0)
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	end
	for i,v in pairs(Character:GetChildren()) do
		if v:IsA("BasePart") then
			local shield = Instance.new("Model")
			shield.Name = "Lightning Cannon... I'm such an idiot, I just tried to kill a GOD.."
			shield.Archivable = false
			local shieldpart = Instance.new("Part")
			shieldpart.Name = "HumanoidRootPart"
			shieldpart.Size = v.Size + Vector3.new(.4,.4,.4)
			shieldpart.Transparency = 1
			shieldpart.Color = v.Color
			shieldpart.CanCollide = false
			shieldpart.Massless = true
			shieldpart.Parent = shield
			local shieldweld = Instance.new("Weld")
			shieldweld.Name = randomstring()
			shieldweld.Part0 = v
			shieldweld.Part1 = shieldpart
			shieldweld.Parent = shield
			shield.Parent = v
		end
	end

	if isowner then
		roar()
	end
	
	alreadyfixing = false
end
addCon(BaseConnections,workspace.DescendantRemoving:Connect(function(v)
	if stopeverything then return end
	if not alreadyfixing then
		if v == Character or v:IsDescendantOf(Character) then
			if not v:IsDescendantOf(Effects) and not v:IsA("Sound") and not v:IsA("BodyMover") and not v:isA("DataModelMesh") and not v:IsA("SoundEffect") and not v:IsA("ValueBase") and v.Parent.Name ~= "Lightning Cannon... I'm such an idiot, I just tried to kill a GOD.." then
				if v:IsA("Model") and v.Name == "Lightning Cannon... I'm such an idiot, I just tried to kill a GOD.." and not v:FindFirstChild("DEBOUNCE BOIII") then
					pcall(function()
						Instance.new("StringValue",v).Name = "DEBOUNCE BOIII"
						v:Destroy()
					end)
					local yeaboi = v.Parent
					local shield = Instance.new("Model")
					shield.Name = "Lightning Cannon... I'm such an idiot, I just tried to kill a GOD.."
					local shieldpart = Instance.new("Part")
					shieldpart.Name = "HumanoidRootPart"
					shieldpart.Size = yeaboi.Size + Vector3.new(.4,.4,.4)
					shieldpart.Transparency = 1
					shieldpart.Color = yeaboi.Color
					shieldpart.CanCollide = false
					shieldpart.Massless = true
					shieldpart.Parent = shield
					local shieldweld = Instance.new("Weld")
					shieldweld.Name = randomstring()
					shieldweld.Part0 = yeaboi
					shieldweld.Part1 = shieldpart
					shieldweld.Parent = shield
					shield.Parent = yeaboi
				else
					characterfixer()
				end
			end
		end
	end
	if not soundfixing then
		if v == eeeblock or v == eee then
			soundfixer()
		end
	end
end))
local fixinggui = false
local gui = nil
local exitbutton = nil

local restartingscript = false

local createFakeEvent = function()
	local t = {Functions = {}}
	t.Connect = function(self,f) self.Functions[#self.Functions+1] = f end
	t.connect = t.Connect
	return t
end

function fireFakeEvent(tbl,ev,...)
	local t = tbl[ev]
	if t and t.Functions then
		for i,v in pairs(t.Functions) do
			v(...)
		end
	else
		warn("so i didnt find the functions table or the table itself. oops!")
	end
end

local Mouse = {Hit = CFrame.new(); Target = nil; KeyDown = createFakeEvent(); KeyUp = createFakeEvent(); Button1Down = createFakeEvent(); Button1Up = createFakeEvent();}

local camerapos = CFrame.new()
local eeeLoudness = 0

MouseRemote.OnServerEvent:Connect(function(plr,t,data)
	if t == "i" then
		if data.UserInputType == Enum.UserInputType.MouseButton1 then
			if data.UserInputState == Enum.UserInputState.Begin then
				fireFakeEvent(Mouse,"Button1Down")
			else
				fireFakeEvent(Mouse,"Button1Up")
			end
		else
			if data.UserInputState == Enum.UserInputState.Begin then
				fireFakeEvent(Mouse,"KeyDown",data.KeyCode.Name:lower())
			else
				fireFakeEvent(Mouse,"KeyUp",data.KeyCode.Name:lower())
			end
		end
	elseif t == "m" then
		Mouse.Hit = data.Hit
		Mouse.Target = data.Target
	elseif t == "playback" then
		eeeLoudness = data.PlaybackLoudness
	elseif t == "c" then
		camerapos = data.CFrame
	end
end)

if lplr.Name == USERNAME and false then
	workspace.CurrentCamera.CameraSubject = Humanoid
	workspace.CurrentCamera.CameraType = "Custom"
	workspace.CurrentCamera:GetPropertyChangedSignal("CameraSubject"):Connect(function()
		if stopeverything then return end
		if not alreadyfixing and workspace.CurrentCamera.CameraSubject ~= Humanoid then
			workspace.CurrentCamera.CameraSubject = Humanoid
		end
	end)
	workspace.ChildRemoved:Connect(function(v)
		if stopeverything then return end
		if v:IsA("Camera") then
			local camera = workspace:FindFirstChildOfClass("Camera")
			if camera then
				camera.CameraSubject = Humanoid
				camera.CameraType = "Custom"
				camera:GetPropertyChangedSignal("CameraSubject"):Connect(function()
					if stopeverything then return end
					if not alreadyfixing and camera.CameraSubject ~= Humanoid then
						camera.CameraSubject = Humanoid
					end
				end)
			else
				local newcamerafound = false
				while not stopeverything and not newcamerafound do
					camera = workspace.ChildAdded:Wait()
					if camera:IsA("Camera") then
						newcamerafound = true
						camera.CameraSubject = Humanoid
						camera.CameraType = "Custom"
						camera:GetPropertyChangedSignal("CameraSubject"):Connect(function()
							if stopeverything then return end
							if not alreadyfixing and camera.CameraSubject ~= Humanoid then
								camera.CameraSubject = Humanoid
							end
						end)
					end
				end
			end
		end
	end)
end

spawn(function()


	local TS = game:GetService("TweenService")
	local PS = game:GetService("PhysicsService")

	ArtificialHB = {Event = game:GetService("RunService").PostSimulation}

end)
local Anim = "Idle"
local attacktype = 1
local delays = false
local play = true
local Torsovelocity = (RootPart.Velocity * Vector3.new(1,0,1)).Magnitude 

local doe = 0
Humanoid.WalkSpeed = walkspeed
local rc0 = CFrame.new() * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local nc0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local rscp = CFrame.new(-.5,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
local lscp = CFrame.new(.5,0,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))

function QFCF(cf)
	local mx,my,mz,m00,m01,m02,m10,m11,m12,m20,m21,m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5/s
		return (m21 - m12) * recip,(m02 - m20) * recip,(m10 - m01) * recip,s * 0.5
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
			local recip = 0.5/s
			return 0.5 * s,(m10 + m01) * recip,(m20 + m02) * recip,(m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5/s
			return (m01 + m10) * recip,0.5 * s,(m21 + m12) * recip,(m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5/s return (m02 + m20) * recip,(m12 + m21) * recip,0.5 * s,(m10 - m01) * recip
		end
	end
end

function QTCF(px,py,pz,x,y,z,w)
	local xs,ys,zs = x + x,y + y,z + z
	local wx,wy,wz = w * xs,w * ys,w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px,py,pz,1 - (yy + zz),xy - wz,xz + wy,xy + wz,1 - (xx + zz),yz - wx,xz - wy,yz + wx,1 - (xx + yy))
end

function QS(a,b,t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp,finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = math.acos(cosTheta)
			local invSinTheta = 1/math.sin(theta)
			startInterp = math.sin((1 - t) * theta) * invSinTheta
			finishInterp = math.sin(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = math.acos(-cosTheta)
			local invSinTheta = 1/math.sin(theta)
			startInterp = math.sin((t - 1) * theta) * invSinTheta
			finishInterp = math.sin(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp,a[2] * startInterp + b[2] * finishInterp,a[3] * startInterp + b[3] * finishInterp,a[4] * startInterp + b[4] * finishInterp
end

local hbDelta = 0
function Clerp(a,b,t)
	local t = getLerp(t,hbDelta)
	local qa = {QFCF(a)}
	local qb = {QFCF(b)}
	local ax,ay,az = a.x,a.y,a.z
	local bx,by,bz = b.x,b.y,b.z
	local _t = 1 - t
	return QTCF(_t * ax + t * bx,_t * ay + t * by,_t * az + t * bz,QS(qa,qb,t))
end

ArtificialHB = {Event = game:GetService("RunService").PostSimulation}

function CreateConnection(TYPE,PARENT,PART0,PART1,C0,C1)
	if stopeverything then return end
	local NEWWELD = Instance.new(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end	

function CreateMesh(MESH,PARENT,MESHTYPE,MESHID,TEXTUREID,SCALE,OFFSET)
	local NEWMESH = Instance.new(MESH)
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
	NEWPART.Name = randomstring()
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

local S = Instance.new("Sound")
function CreateSound(ID,PARENT,VOLUME,PITCH,DOESLOOP)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
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
					repeat if stopeverything then return end Swait() until NEWSOUND.Playing == false
					NEWSOUND:Destroy()
				end)
			end))
		end
	end))
	return NEWSOUND
end

local function weldBetween(a,b)
	local weldd = Instance.new("Weld")
	weldd.Part0 = a
	weldd.Part1 = b
	weldd.C1 = b.CFrame:inverse() * a.CFrame
	weldd.Parent = b
	return weldd
end
function rayCast(Position,Direction,Range,Ignore)
	return workspace:FindPartOnRay(Ray.new(Position,Direction.unit * (Range or 999.999)),Ignore) 
end 		

function mdmg(centerofeffect,range)
	task.spawn(function()
		for i,v in pairs(workspace:GetDescendants()) do
			if not v:IsDescendantOf(Character) and v:IsA("Humanoid") and v.RootPart and (v.RootPart.Position - centerofeffect).Magnitude <= range + v.RootPart.Size.Magnitude then
				local deathp = Instance.new("Part")
				deathp.Anchored = true 
				deathp.Transparency = 1
				deathp.CanCollide = false
				deathp.CFrame = v.RootPart.CFrame
				local bruh = CreateSound(206082273,deathp,5,.75)
				bruh.PlayOnRemove = true
				for i = 1,10 do
					local a = Instance.new("Part")
					a.Name = randomstring()
					a.Anchored = true
					a.Position = deathp.Position
					a.Shape = "Ball"
					a.Color = shade
					a.Material = "Neon"
					a.CastShadow = false
					a.Size = Vector3.new(i*2.5,i*2.5,i*2.5)
					a.CanCollide = false
					a.Transparency = .75
					a.Parent = workspace
					game:GetService("Debris"):AddItem(a,1.5-i/10)
					for o = 1,3 do
						local hitm = script.SomeEffectIDK:Clone()
						hitm.Color = shade
						hitm.Trail.Color = ColorSequence.new(shade,Color3.new(1,1,1))
						hitm.attachment.ParticleEmitter.Color = ColorSequence.new(shade,Color3.new(1,1,1))
						hitm.CFrame = a.CFrame * CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))*CFrame.new(0,1,0)
						hitm.Parent = Effects
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
					repeat if stopeverything then return end maxparent = maxparent.Parent until maxparent.Parent == workspace or maxparent.Parent == workspace.Terrain
					coroutine.resume(coroutine.create(function()
						local waitthing = 0
						repeat if stopeverything then return end
							waitthing = waitthing + game:GetService("RunService").PostSimulation:Wait()
						until waitthing >= 3
						game:GetService("Players"):FindFirstChild(maxparent.Name):LoadCharacter()
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

function Effect(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new())
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or shade)
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
		local EFFECT = CreatePart(3,Effects,MATERIAL,0,TRANSPARENCY,shade,"Effect",Vector3.new(1,1,1),true)
		if RAINBOWPART then
			coroutine.resume(coroutine.create(function()
				while not stopeverything and EFFECT:IsDescendantOf(game) do
					EFFECT.Color = GUN.NeonParts.Color
					swait()
				end
			end))
		end
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID,EFFECT,SOUNDVOLUME,SOUNDPITCH,false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"Sphere","","",SIZE,Vector3.new())
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","20329976","",SIZE,Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","559831844","",Vector3.new(SIZE.X,SIZE.X,0.1),Vector3.new())
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662586858","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662585058","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","168892432","",SIZE,Vector3.new())
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","4770583","",SIZE,Vector3.new())
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","9756362","",SIZE,Vector3.new())
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
					swait()
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
					swait()
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
				repeat if stopeverything then return end swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:Destroy()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:Destroy()
			else
				repeat if stopeverything then return end swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
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
		local li = Instance.new("Part",Effects)
		li.Name = randomstring()
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

function FireArc(Part,ToLocation,AmountOfTime,Height,DoesCourontine)
	if DoesCourontine == false then
		local Direction = CFrame.new(Part.Position,ToLocation)
		local Distance = (Part.Position - ToLocation).Magnitude
		for i = 1,AmountOfTime do
			swait()
			Part.CFrame = Direction*CFrame.new(0,(AmountOfTime/200)+((AmountOfTime/Height)-((i*2)/Height)),-Distance/AmountOfTime)
			Direction = Part.CFrame
		end
	elseif DoesCourontine == true then
		coroutine.resume(coroutine.create(function()
			local Direction = CFrame.new(Part.Position,ToLocation)
			local Distance = (Part.Position - ToLocation).Magnitude
			for i = 1,AmountOfTime do
				swait()
				Part.CFrame = Direction*CFrame.new(0,(AmountOfTime/200)+((AmountOfTime/Height)-((i*2)/Height)),-Distance/AmountOfTime)
				Direction = Part.CFrame
			end
		end))
	end
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

function AttackGyro()
	local GYRO = Instance.new("BodyGyro",RootPart)
	GYRO.D = 25
	GYRO.P = 20000
	GYRO.MaxTorque = Vector3.new(0,4000000,0)
	GYRO.CFrame = CFrame.new(RootPart.Position,Mouse.Hit.p)
	coroutine.resume(coroutine.create(function()
		repeat if stopeverything then return end
			swait()
			GYRO.CFrame = CFrame.new(RootPart.Position,Mouse.Hit.p)
		until attack == false
		GYRO:Destroy()
	end))
end
coroutine.resume(coroutine.create(function()
	while not stopeverything do
		for i = 0,1,(1/60) do
			swait()
			if not alreadyfixing then
				GUN.NeonParts.Color = Color3.fromHSV(i,1,1)
				if taunt.Value == "iNSaNiTY" then
					GUN.NeonParts.Color = Color3.fromHSV(math.random(0,19)/20,1,1)
				elseif taunt.Value == "Err0r" then
					GUN.NeonParts.Color = Color3.fromRGB(0,math.clamp(eeeLoudness-255,0,255),0)
				elseif taunt.Value == "FAST BOIII" then
					GUN.NeonParts.Color = Color3.fromRGB(0,0,math.clamp(eeeLoudness-191,0,255))
				elseif taunt.Value == "Glitch" then
					GUN.NeonParts.Color = Color3.fromHSV(i,1,math.clamp((eeeLoudness/255)-.5,0,1))
				end
				Eyes.Color = GUN.NeonParts.Color
			end
		end
	end
end))
local brokentester = 0
coroutine.resume(coroutine.create(function()
	while not stopeverything do
		Swait()
		if not soundfixing then
			if SongSync.Value > eee.TimeLength and eee.TimeLength >= .1 and eee.SoundId == songid.Value and lplr.Name == USERNAME then
				eee.TimePosition = 0
			end
			if eeeLoudness <= 10 then
				brokentester = brokentester + 1
			else
				brokentester = 0
			end
			if eee.IsLoaded ~= true then
				brokentester = 0
			end
			if brokentester >= 60 then
				brokentester = 0
				soundfixer()
			end
		end
	end
end))

addCon(BaseConnections,Player.Chatted:Connect(chatfunc))
if stopeverything then return end

function WACKYEFFECT(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or shade)
	local hOK,sOK,vOK = Color3.toHSV(COLOR)
	local RAINBOWPART = false
	if sOK > .1 then
		RAINBOWPART = true
	end
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3,Effects,MATERIAL,0,TRANSPARENCY,shade,"Effect",Vector3.new(1,1,1),true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID,EFFECT,SOUNDVOLUME,SOUNDPITCH,false)
		end
		EFFECT.Color = COLOR
		if RAINBOWPART then
			coroutine.resume(coroutine.create(function()
				while not stopeverything and EFFECT:IsDescendantOf(game) do
					EFFECT.Color = GUN.NeonParts.Color
					swait()
				end
			end))
		end
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"Sphere","","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Block" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = Vector3.new(SIZE.X,SIZE.Y,SIZE.Z)
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","20329976","",SIZE,Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","559831844","",Vector3.new(SIZE.X,SIZE.X,0.1),Vector3.new(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662586858","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662585058","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","1051557","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","4770583","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","9756362","",SIZE,Vector3.new(0,0,0))
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
				swait()
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
				repeat if stopeverything then return end swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat if stopeverything then return end swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end
function Ka_Boom()
	attack = true
	walkspeed = 0
	local die = CreateSound(1566051529,RootPart,3,1)
	die.EmitterSize = 100
	swait(5)
	for i = 1,3 do
		for i = 0,1.5,0.1 do
			swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),0.7/3)
			Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1/3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(175),math.rad(-10),math.rad(10)) * rscp,1/3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(-5)) * lscp,1/3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
			GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
		end
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 642890855,SoundPitch = 0.45,SoundVolume = 6,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
		local skypos = Holetwo.CFrame * CFrame.new(-400,0,0)
		local DISTANCE = (Holetwo.Position - skypos.p).Magnitude
		local killbeam = CreatePart(3,Effects,"Neon",0,0,shade,"Kill Beam",Vector3.new(1,DISTANCE,1))
		killbeam.CFrame = CFrame.new(Holetwo.Position,skypos.p) * CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
		MakeForm(killbeam,"Cyl")
		coroutine.resume(coroutine.create(function()
			for i = 1,25 do
				swait()
				killbeam.Transparency = i/25
			end
			killbeam:Destroy()
		end))
		Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
		Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
		Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
		Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
		Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
		for i = 0,2 do
			Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
			Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
		end
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = skypos,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 192410089,SoundPitch = .55,SoundVolume = 8,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = skypos,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
		for i = 0,2 do
			Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = skypos*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
			Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = skypos*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
		end
		for i = 1,42 do
			swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)),0.7/3)
			Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,0.7/3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(sine/25))) * LEFTSHOULDERC0,0.7/3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
			GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
		end
	end
	for i = 1,15 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,0.7/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(sine/25))) * LEFTSHOULDERC0,0.7/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	local BEAM = CreatePart(3,Effects,"Neon",0,0,Color3.new(0,0,1),"Beam",Vector3.new())
	local BEAM2 = CreatePart(3,Effects,"Neon",0,0,Color3.new(0,0,1),"Beam",Vector3.new())
	MakeForm(BEAM,"Ball")
	MakeForm(BEAM2,"Ball")
	BEAM.CFrame = CFrame.new(RootPart.Position)
	BEAM2.CFrame = CFrame.new(RootPart.Position)
	local boooom = CreateSound(415700134,RootPart,10,1,false)
	boooom.EmitterSize = 100
	for i=1,140 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,0.7/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(sine/25))) * LEFTSHOULDERC0,0.7/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
		BEAM.Size = BEAM.Size + Vector3.new(0.7,8,0.7)
		BEAM2.Size = BEAM2.Size + Vector3.new(2,2,2)
		BEAM.Color = GUN.NeonParts.Color
		BEAM2.Color = GUN.NeonParts.Color
		BEAM.CFrame = CFrame.new(RootPart.Position)
		BEAM2.CFrame = CFrame.new(RootPart.Position)
		WACKYEFFECT({TIME = 5+i,EffectType = "Swirl",Size = BEAM2.Size*1.15,Size2 = Vector3.new(0,BEAM.Size.Y,0),Transparency = 0.8,Transparency2 = 1,CFrame = BEAM.CFrame * CFrame.Angles(math.rad(0),math.rad(i*5),math.rad(0)),MoveToPos = nil,RotationX = 0,RotationY = i/8,RotationZ = 0,Material = "Neon",Color = GUN.NeonParts.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil})
	end
	mdmg(RootPart.Position,BEAM2.Size.Y/2)
	Effect({TIME = 75,EffectType = "Sphere",Size = BEAM.Size,Size2 = Vector3.new(0,BEAM.Size.Y,0),Transparency = 0,Transparency2 = 0,CFrame = BEAM.CFrame,MoveToPos = nil,RotationX = 0,RotationY = 0,RotationZ = 0,Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil})
	Effect({TIME = 75,EffectType = "Sphere",Size = BEAM2.Size,Size2 = Vector3.new(0,0,0),Transparency = 0,Transparency2 = 0.6,CFrame = BEAM2.CFrame,MoveToPos = nil,RotationX = 0,RotationY = 0,RotationZ = 0,Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil})
	for i,v in pairs(Effects:GetChildren()) do
		v.Color = shade
	end
	BEAM2:Destroy()
	BEAM:Destroy()
	attack = false
	walkspeed = 50
end

function attackone()
	attack = true
	walkspeed = 16
	AttackGyro()
	for i = 0,0.5,0.05 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-30)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(30),math.rad(0),math.rad(0)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 642890855,SoundPitch = 0.45,SoundVolume = 6,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	local DISTANCE = (Holetwo.Position - Mouse.Hit.p).Magnitude
	local killbeam = CreatePart(3,Effects,"Neon",0,0,shade,"Kill Beam",Vector3.new(1,DISTANCE,1))
	killbeam.CFrame = CFrame.new(Holetwo.Position,Mouse.Hit.p) * CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
	MakeForm(killbeam,"Cyl")
	coroutine.resume(coroutine.create(function()
		for i = 1,25 do
			swait()
			killbeam.Transparency = i/25
		end
		killbeam:Destroy()
	end))
	Lightning(Holetwo.Position,Mouse.Hit.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	Lightning(Holetwo.Position,Mouse.Hit.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	Lightning(Holetwo.Position,Mouse.Hit.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	Lightning(Holetwo.Position,Mouse.Hit.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	Lightning(Holetwo.Position,Mouse.Hit.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	for i = 0,2 do
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
	end
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 192410089,SoundPitch = .55,SoundVolume = 8,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	for i = 0,2 do
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
	end
	mdmg(Mouse.Hit.p,10)
	for i = 0,0.5,0.075 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(10),math.rad(0),math.rad(-60)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(160),math.rad(-20),math.rad(60)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(40),math.rad(5),math.rad(5)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	walkspeed = 50
	attack = false
end

function attacktwo()
	local lol3 = {}
	attack = true
	walkspeed = 0
	AttackGyro()
	local gBullet = CreatePart(3,Effects,"Neon",0,0,Color3.new(0,0,1),"BullyFuck",Vector3.new())
	MakeForm(gBullet,"Ball")
	gBullet.CFrame = LeftArm.CFrame*CFrame.new(0,-1.5,0)
	CreateSound(2785493,gBullet,2,0.8)
	for i = 0,1.25,0.025 do
		swait()
		Effect({Time = math.random(35,55),EffectType = "Sphere",Size = Vector3.new(0.5,0.5,0.5),Size2 = Vector3.new(1,1,1),Transparency = 0,Transparency2 = 1,CFrame = LeftArm.CFrame*CFrame.new(0,-1.5,0),MoveToPos = LeftArm.CFrame*CFrame.new(0,-1.5,0)*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10)).p,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 50,SizeBoomerang = 50})
		gBullet.Size = gBullet.Size * 1.085
		gBullet.CFrame = LeftArm.CFrame*CFrame.new(0,-1.5,0)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-30)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(-5 - 3 * math.cos(sine/12)),math.rad(0),math.rad(30)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(sine/49)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,0.7/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5 + 0.1 * math.cos(sine/12),-0) * CFrame.Angles(math.rad(85 - 1.5 * math.cos(sine/12)),math.rad(0 - 6 * math.cos(sine/12)),math.rad(-30 - 6 * math.cos(sine/12))) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	local bullets = {}
	for i = 1,math.random(27,41) do
		swait()
		local Bullet = CreatePart(3,Effects,"Neon",0,0,Color3.new(0,0,1),"BulletFuck",Vector3.new(0.6,0.6,0.6))
		MakeForm(Bullet,"Ball")
		Bullet.CFrame = gBullet.CFrame
		Effect({Time = math.random(5,20),EffectType = "Sphere",Size = Vector3.new(3,3,3)*math.random(-3,2),Size2 = Vector3.new(6,6,6)*math.random(-3,2),Transparency = 0.4,Transparency2 = 1,CFrame = Bullet.CFrame,MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 25})
		table.insert(bullets,Bullet)
	end
	local oofing = false
	for b = 1,#bullets do
		swait()
		local part,pos = rayCast(LeftArm.CFrame*CFrame.new(0,-1.5,0).p,((Mouse.Hit.p+Vector3.new(math.random(-15,15),math.random(-7,7),math.random(-15,15))) - LeftArm.CFrame*CFrame.new(0,-1.5,0).p),500,Character)
		coroutine.resume(coroutine.create(function()
			FireArc(bullets[b],pos,math.random(17,31),math.random(9,15),false)
			Effect({Time = math.random(25,35),EffectType = "Sphere",Size = Vector3.new(0.6,0.6,0.6),Size2 = Vector3.new(1.6,1.6,1.6),Transparency = 0,Transparency2 = 1,CFrame = bullets[b].CFrame,MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 25})
			swait(math.random(55,65))
			for i = 1,3 do
				Effect({Time = math.random(45,65),EffectType = "Sphere",Size = Vector3.new(0.6,6,0.6)*math.random(-1.05,1.25),Size2 = Vector3.new(1.6,10,1.6)*math.random(-1.05,1.25),Transparency = 0,Transparency2 = 1,CFrame = bullets[b].CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 20,SizeBoomerang = 35})
			end
			for i = 0,10 do
				swait()
				bullets[b].Transparency = bullets[b].Transparency + 0.1
			end
			oofing = not oofing
			if oofing then
				mdmg(bullets[b].Position,10)
			end
			local EEEBRUHEEE = CreateSound(168513088,bullets[b],3.5,1.1,false)
			bullets[b].Transparency = 1
			addCon(lol3,EEEBRUHEEE.Ended:Connect(function()
				if stopeverything then return end
				bullets[b]:Destroy()
			end))
		end))
	end
	for i = 0,10 do
		swait()
		gBullet.Transparency = gBullet.Transparency + 0.1
	end
	gBullet:Destroy()
	walkspeed = 50
	attack = false
	disconnectTable(lol3)
end

function hedshoot()
	attack = true
	walkspeed = 16
	CreateSound(235097614,RootPart,6,1.5,false)
	for i = 0,0.5,0.05 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-60)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(60)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.25,0.5,-.25) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.25,0.5,-.25) * CFrame.Angles(math.rad(95),math.rad(0),math.rad(10)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 642890855,SoundPitch = 0.45,SoundVolume = 6,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = math.random(25,45),EffectType = "Sphere",Size = Vector3.new(2,100,2),Size2 = Vector3.new(6,100,6),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame*CFrame.new(math.random(-1,1),math.random(-1,1),-50)*CFrame.Angles(math.rad(math.random(89,91)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 45})
	Effect({Time = math.random(25,45),EffectType = "Sphere",Size = Vector3.new(3,100,3),Size2 = Vector3.new(9,100,9),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame*CFrame.new(math.random(-1,1),math.random(-1,1),-50)*CFrame.Angles(math.rad(math.random(89,91)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 45})
	mdmg(RootPart.Position,14)
	for i = 1,4 do
		RootPart.CFrame = RootPart.CFrame * CFrame.new(0,0,-25)
		mdmg(RootPart.Position,14)
		Lightning(RootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,RootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,6,25,shade,math.random(30,45),0.5,1.5,0,true,60) Lightning(RootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,RootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,6,25,Color3.new(0,0,1),math.random(30,45),0.5,1.5,0,true,60)
	end
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	for i = 0,0.5,0.1 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(90)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(40),math.rad(5),math.rad(5)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	attack = false
	walkspeed = 50
end

function painlessrain()
	attack = true
	walkspeed = 16
	coroutine.wrap(function()
		for i = 0,2 do
			swait(12)
			CreateSound(199145095,GUN.Joint,10,1)
		end
	end)()
	for i = 0,2,0.1 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(25),math.rad(0),math.rad(-20)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(35),math.rad(-35),math.rad(20)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-20),math.rad(-5),math.rad(-10)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(doe * 22),math.rad(0),math.rad(0)),1/2)
	end
	for i = 0,1.5,0.1 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(175),math.rad(-10),math.rad(10)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(-5)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 642890855,SoundPitch = 0.45,SoundVolume = 6,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	local skypos = Holetwo.CFrame * CFrame.new(-400,0,0)
	local DISTANCE = (Holetwo.Position - skypos.p).Magnitude
	local killbeam = CreatePart(3,Effects,"Neon",0,0,shade,"Kill Beam",Vector3.new(1,DISTANCE,1))
	killbeam.CFrame = CFrame.new(Holetwo.Position,skypos.p) * CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
	MakeForm(killbeam,"Cyl")
	coroutine.resume(coroutine.create(function()
		for i = 1,25 do
			swait()
			killbeam.Transparency = i/25
		end
		killbeam:Destroy()
	end))
	Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	for i = 0,2 do
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
	end
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = skypos,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 192410089,SoundPitch = .55,SoundVolume = 8,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = skypos,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	for i = 0,2 do
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = skypos*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = skypos*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
	end
	for i = 0,.5,0.1 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(225),math.rad(-20),math.rad(20)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-5),math.rad(-5),math.rad(0)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	for i = 0,.5,0.1 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(175),math.rad(-10),math.rad(10)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-5),math.rad(-5),math.rad(0)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	attack = false
	walkspeed = 50
	swait(36)
	local onethirdattack = 0
	for i = 1,5 do
		onethirdattack = onethirdattack + 1
		if onethirdattack >= 4 then
			onethirdattack = 1
		end
		local Sky = RootPart.CFrame*CFrame.new(0,500,0)
		local MoPos = Mouse.Hit*CFrame.new(math.random(-18,18),0,math.random(-18,18)).p
		local DISTANCE = (Sky.p - MoPos).Magnitude
		Lightning(Sky.p,MoPos,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
		Lightning(Sky.p,MoPos,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
		Lightning(Sky.p,MoPos,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
		Lightning(Sky.p,MoPos,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
		Lightning(Sky.p,MoPos,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
		local killbeam = CreatePart(3,Effects,"Neon",0,0,shade,"Kill Beam",Vector3.new(1,DISTANCE,1))
		killbeam.CFrame = CFrame.new(Sky.p,MoPos) * CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
		MakeForm(killbeam,"Cyl")
		coroutine.resume(coroutine.create(function()
			for i = 1,25 do
				swait()
				killbeam.Transparency = i/25
			end
			killbeam:Destroy()
		end))
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 192410089,SoundPitch = .55,SoundVolume = 8,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
		for i = 0,2 do
			Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
			Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
		end
		if onethirdattack == 3 then
			mdmg(MoPos,12)
		end
		swait(15)
	end
end
function SingularityBeam()
	local cons = {}
	attack = true
	walkspeed = 0
	AttackGyro()
	for i = 0,0.5,0.05 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-60)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(60)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.25,0.5,-.25) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.25,0.5,-.25) * CFrame.Angles(math.rad(95),math.rad(0),math.rad(10)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	local HoleDist = (Hole.Position - Holetwo.Position).Magnitude
	local chargebeam = CreatePart(3,Effects,"Neon",0,0,shade,"Charge Beam",Vector3.new(.25,HoleDist,.25),false)
	MakeForm(chargebeam,"Cyl")
	chargebeam.CFrame = CFrame.new(Hole.Position,Holetwo.Position) * CFrame.new(0,0,-HoleDist/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
	local chargeweld = weldBetween(GUN.Joint,chargebeam)
	local chargeball = CreatePart(3,Effects,"Neon",0,0,shade,"Charge Ball",Vector3.new(.5,.5,.5),false)
	chargeball.Shape = "Ball"
	chargeball.CFrame = Holetwo.CFrame
	weldBetween(Holetwo,chargeball)
	CreateSound(342793847,Hole,10,1,false)
	local bigball = game:GetService("TweenService"):Create(chargeball,TweenInfo.new(3.86,Enum.EasingStyle.Linear),{Size = Vector3.new(2.5,2.5,2.5)})
	bigball:Play()
	bigball.Completed:Wait()
	chargebeam:Destroy()
	local KillDist = (Holetwo.Position - Mouse.Hit.p).Magnitude
	coroutine.resume(coroutine.create(function()
		repeat if stopeverything then return end KillDist = (Holetwo.Position - Mouse.Hit.p).Magnitude Swait() until attack == false
	end))
	local killbeam = CreatePart(3,Effects,"Neon",0,0,shade,"Kill Beam",Vector3.new(2.5,KillDist,2.5))
	MakeForm(killbeam,"Cyl")
	addCon(cons,	killbeam.Touched:Connect(function(victim)
		if stopeverything then return end
		mdmg(victim.Position,5)
	end))
	coroutine.resume(coroutine.create(function()
		while not stopeverything and killbeam:IsDescendantOf(game) do
			mdmg(Mouse.Hit.p,5)
			Swait(6)
		end
	end))
	coroutine.resume(coroutine.create(function()
		local isdoingathing = false
		while not stopeverything and killbeam:IsDescendantOf(game) do
			isdoingathing = not isdoingathing
			if lplr.Name == USERNAME then
				RootPart.CFrame = RootPart.CFrame * CFrame.new(0,0,.1)
			end
			killbeam.Size = Vector3.new(2.5,KillDist,2.5)
			killbeam.CFrame = CFrame.new(Holetwo.Position,Mouse.Hit.p) * CFrame.new(0,0,-KillDist/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
			if isdoingathing then
				Lightning(Holetwo.Position,Mouse.Hit.p,15,3,Color3.new(0,0,1),10,0,1,0,true,55)
				Effect({Time = 10,EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
				Effect({Time = 10,EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
				Effect({Time = 10,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
				Effect({Time = 10,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
				Effect({Time = 10,EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
				Effect({Time = 10,EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
			end
			Swait()
		end
	end))
	CreateSound(138677306,Holetwo,10,1,false)
	CreateSound(415700134,Holetwo,10,1,false)
	Swait(150)
	CreateSound(3264923,Holetwo,10,1,false)
	Swait(30)
	chargeball:Destroy()
	killbeam:Destroy()
	walkspeed = 50
	disconnectTable(cons)
	attack = false
end
addCon(BaseConnections,Mouse.Button1Down:Connect(function()
	if stopeverything then return end
	if attack == false and (taunt.Value == "None" or taunt.Value == "iNSaNiTY" or taunt.Value == "Err0r" or taunt.Value == "FAST BOIII" or taunt.Value == "Glitch") then
		attackone()
	end
end))
local FLYING = false
iyflyspeed = 1
local flycons = {}
function sFLY()
	disconnectTable(flycons)
	if not ISFLYING then
		FLYING = false
	else
		local CONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
		local lCONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
		local SPEED = 0			
		local function FLY()
			FLYING = true
			BG = Instance.new('BodyGyro',RootPart)
			BV = Instance.new('BodyVelocity',RootPart)
			BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			BG.P = 1e4
			BG.CFrame = RootPart.CFrame
			BV.Velocity = Vector3.new(0,0,0)
			BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			coroutine.resume(coroutine.create(function()
				repeat if stopeverything then return end
					game:GetService("RunService").PostSimulation:Wait()
					if not alreadyfixing then
						if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
							SPEED = 50
						elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
							SPEED = 0
						end
						if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
							BV.Velocity = ((camerapos.lookVector * (CONTROL.F + CONTROL.B)) + ((camerapos * CFrame.new(CONTROL.L + CONTROL.R,(CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2,0).p) - camerapos.p)) * SPEED
							lCONTROL = {F = CONTROL.F,B = CONTROL.B,L = CONTROL.L,R = CONTROL.R}
						elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
							BV.Velocity = ((camerapos.lookVector * (lCONTROL.F + lCONTROL.B)) + ((camerapos * CFrame.new(lCONTROL.L + lCONTROL.R,(lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2,0).p) - camerapos.p)) * SPEED
						else
							BV.Velocity = Vector3.new(0,0,0)
						end
						BG.CFrame = camerapos
					end
				until not FLYING
				CONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
				lCONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
				SPEED = 0
				if not alreadyfixing then
					for i,v in pairs(RootPart:GetChildren()) do
						if v:IsA("BodyMover") then
							v:Destroy()
						end
					end
					RootPart.CFrame = CFrame.new(RootPart.Position)
				end
			end))
		end
		local IYMouse = Mouse
		addCon(flycons,		Mouse.KeyDown:connect(function(KEY)
			if stopeverything then return end
			if KEY:lower() == 'w' then
				CONTROL.F = iyflyspeed
			elseif KEY:lower() == 's' then
				CONTROL.B = - iyflyspeed
			elseif KEY:lower() == 'a' then
				CONTROL.L = - iyflyspeed
			elseif KEY:lower() == 'd' then 
				CONTROL.R = iyflyspeed
			elseif KEY:lower() == 'e' then
				CONTROL.Q = iyflyspeed*2
			elseif KEY:lower() == 'q' then
				CONTROL.E = -iyflyspeed*2
			end
		end))
		addCon(flycons,		Mouse.KeyUp:connect(function(KEY)
			if stopeverything then return end
			if KEY:lower() == 'w' then
				CONTROL.F = 0
			elseif KEY:lower() == 's' then
				CONTROL.B = 0
			elseif KEY:lower() == 'a' then
				CONTROL.L = 0
			elseif KEY:lower() == 'd' then
				CONTROL.R = 0
			elseif KEY:lower() == 'e' then
				CONTROL.Q = 0
			elseif KEY:lower() == 'q' then
				CONTROL.E = 0
			end
		end))
		FLY()
	end
end
function sphere(bonuspeed,type,pos,scale,value,color)
	local type = type
	local rng = Instance.new("Part",Effects)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1,1,1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh",rng)
	rngm.MeshType = "Sphere"
	rngm.Scale = scale
	local scaler2 = 1
	if type == "Add" then
		scaler2 = 1*value
	elseif type == "Divide" then
		scaler2 = 1/value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed
			end
			rng.BrickColor = BrickColor.random()
			rng.Transparency = rng.Transparency + 0.01*bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed,scaler2*bonuspeed,scaler2*bonuspeed)
		end
		rng:Destroy()
	end))
end

function sphere2(bonuspeed,type,pos,scale,value,value2,value3,color)
	local type = type
	local rng = Instance.new("Part",Effects)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1,1,1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh",rng)
	rngm.MeshType = "Sphere"
	rngm.Scale = scale
	local scaler2 = 1
	local scaler2b = 1
	local scaler2c = 1
	if type == "Add" then
		scaler2 = 1*value
		scaler2b = 1*value2
		scaler2c = 1*value3
	elseif type == "Divide" then
		scaler2 = 1/value
		scaler2b = 1/value2
		scaler2c = 1/value3
	end
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed
				scaler2b = scaler2b - 0.01*value/bonuspeed
				scaler2c = scaler2c - 0.01*value/bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed
				scaler2b = scaler2b - 0.01/value*bonuspeed
				scaler2c = scaler2c - 0.01/value*bonuspeed
			end
			rng.Transparency = rng.Transparency + 0.01*bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed,scaler2b*bonuspeed,scaler2c*bonuspeed)
		end
		rng:Destroy()
	end))
end

function PixelBlockX(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
	local type = type
	local rng = Instance.new("Part",Effects)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1,1,1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
	local rngm = Instance.new("SpecialMesh",rng)
	rngm.MeshType = "Brick"
	rngm.Scale = Vector3.new(x1,y1,z1)
	local scaler2 = 1
	local speeder = FastSpeed/10
	if type == "Add" then
		scaler2 = 1*value
	elseif type == "Divide" then
		scaler2 = 1/value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed
			end
			rng.BrickColor = BrickColor.random()
			speeder = speeder - 0.01*FastSpeed*bonuspeed/10
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
			rng.Transparency = rng.Transparency + 0.01*bonuspeed
			rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed,scaler2*bonuspeed,scaler2*bonuspeed)
		end
		rng:Destroy()
	end))
end

function sphereMK(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
	local type = type
	local rng = Instance.new("Part",Effects)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1,1,1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
	local rngm = Instance.new("SpecialMesh",rng)
	rngm.MeshType = "Sphere"
	rngm.Scale = Vector3.new(x1,y1,z1)
	local scaler2 = 1
	local speeder = FastSpeed
	if type == "Add" then
		scaler2 = 1*value
	elseif type == "Divide" then
		scaler2 = 1/value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed
			end
			rng.BrickColor = BrickColor.random()
			speeder = speeder - 0.01*FastSpeed*bonuspeed
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
			rng.Transparency = rng.Transparency + 0.01*bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed,scaler2*bonuspeed,0)
		end
		rng:Destroy()
	end))
end

function slash(bonuspeed,rotspeed,rotatingop,typeofshape,type,typeoftrans,pos,scale,value,color)
	local type = type
	local rotenable = rotatingop
	local rng = Instance.new("Part",Effects)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1,1,1)
	rng.Transparency = 0
	if typeoftrans == "In" then
		rng.Transparency = 1
	end
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh",rng)
	rngm.MeshType = "FileMesh"
	if typeofshape == "Normal" then
		rngm.MeshId = "rbxassetid://662586858"
	elseif typeofshape == "Round" then
		rngm.MeshId = "rbxassetid://662585058"
	end
	rngm.Scale = scale
	local scaler2 = 1/10
	if type == "Add" then
		scaler2 = 1*value/10
	elseif type == "Divide" then
		scaler2 = 1/value/10
	end
	local randomrot = math.random(1,2)
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed/10
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed/10
			end
			if rotenable == true then
				if randomrot == 1 then
					rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(rotspeed*bonuspeed/2),0)
				elseif randomrot == 2 then
					rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(-rotspeed*bonuspeed/2),0)
				end
			end
			if typeoftrans == "Out" then
				rng.Transparency = rng.Transparency + 0.01*bonuspeed
			elseif typeoftrans == "In" then
				rng.Transparency = rng.Transparency - 0.01*bonuspeed
			end
			rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed/10,0,scaler2*bonuspeed/10)
		end
		rng:Destroy()
	end))
end

addCon(BaseConnections,Mouse.KeyDown:Connect(function(k)
	if stopeverything then return end
	k = k:lower()
	if k == "z" and attack == false and (taunt.Value == "None" or taunt.Value == "iNSaNiTY" or taunt.Value == "Err0r" or taunt.Value == "FAST BOIII" or taunt.Value == "Glitch") then	
		hedshoot()
	elseif k == "x" and attack == false and (taunt.Value == "None" or taunt.Value == "iNSaNiTY" or taunt.Value == "Err0r" or taunt.Value == "FAST BOIII" or taunt.Value == "Glitch") then
		SingularityBeam()
	elseif k == "c" and attack == false and (taunt.Value == "None" or taunt.Value == "iNSaNiTY" or taunt.Value == "Err0r" or taunt.Value == "FAST BOIII" or taunt.Value == "Glitch") then
		painlessrain()
	elseif k == "v" and attack == false and (taunt.Value == "None" or taunt.Value == "iNSaNiTY" or taunt.Value == "Err0r" or taunt.Value == "FAST BOIII" or taunt.Value == "Glitch") then
		attacktwo()
	elseif k == "b" and attack == false and (taunt.Value == "None" or taunt.Value == "iNSaNiTY" or taunt.Value == "Err0r" or taunt.Value == "FAST BOIII" or taunt.Value == "Glitch") then
		Ka_Boom()
	elseif k == "m" then
		if songid.Value ~= "rbxassetid://13734554970" and songid.Value ~= "rbxassetid://15993696418" and songid.Value ~= "rbxassetid://15986456953" and songid.Value ~= "rbxassetid://14005021606" and songid.Value ~= "rbxassetid://13672418875" then
			TauntRemote:FireServer("None",13734554970)
		elseif songid.Value == "rbxassetid://13734554970" then
			TauntRemote:FireServer("None",15993696418)
		elseif songid.Value == "rbxassetid://15993696418" then
			TauntRemote:FireServer("sAnIty",15986456953)
			songid.Value = "rbxassetid://15986456953"
			repeat if stopeverything then return end 
				game:GetService("RunService").PostSimulation:Wait()
			until SongSync.Value >= 24 or songid.Value ~= "rbxassetid://15986456953"
			if songid.Value == "rbxassetid://15986456953" then
				chatfunc(" ")
				sphere(1,"Add",Torso.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),Vector3.new(1,100000,1),0.6,BrickColor.new("Really black"))
				sphere2(math.random(1,4),"Add",Torso.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),Vector3.new(5,1,5),-0.005,math.random(25,100)/25,-0.005,BrickColor.new("Institutional white"))
				sphere(1,"Add",Torso.CFrame,Vector3.new(1,1,1),0.8,BrickColor.new("Really black"))
				sphere2(2,"Add",Torso.CFrame,Vector3.new(5,5,5),0.5,0.5,0.5,BrickColor.new("Institutional white"))
				sphere2(2,"Add",Torso.CFrame,Vector3.new(5,5,5),0.75,0.75,0.75,BrickColor.new("Institutional white"))
				sphere2(3,"Add",Torso.CFrame,Vector3.new(5,5,5),1,1,1,BrickColor.new("Institutional white"))
				sphere2(3,"Add",Torso.CFrame,Vector3.new(5,5,5),1.25,1.25,1.25,BrickColor.new("Institutional white"))
				sphere2(1,"Add",Torso.CFrame,Vector3.new(5,10000,5),0.5,0.5,0.5,BrickColor.new("Institutional white"))
				sphere2(2,"Add",Torso.CFrame,Vector3.new(5,10000,5),0.6,0.6,0.6,BrickColor.new("Institutional white"))
				for i = 0,49 do
					PixelBlockX(1,math.random(1,20),"Add",Torso.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),8,8,8,0.16,BrickColor.new("Really black"),0)
					sphereMK(2.5,-1,"Add",Torso.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2.5,2.5,25,-0.025,BrickColor.new("Really black"),0)
					slash(math.random(10,20)/10,5,true,"Round","Add","Out",Torso.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-30,30)),math.rad(math.random(-30,30)),math.rad(math.random(-40,40))),Vector3.new(0.05,0.01,0.05),math.random(50,60)/250,BrickColor.new("Really black"))
				end
				CreateSound(239000203,Torso,10,false)
				CreateSound(1042716828,Torso,10,false)
				TauntRemote:FireServer("iNSaNiTY",15986456953)
			end
		elseif songid.Value == "rbxassetid://15986456953" then
			TauntRemote:FireServer("Err0r",14005021606)
		elseif songid.Value == "rbxassetid://14005021606" then
			TauntRemote:FireServer("FAST BOIII",13672418875)
		elseif songid.Value == "rbxassetid://13672418875" then
			TauntRemote:FireServer("Glitch",15986402753)
		end
	elseif k == "y" then
		if taunt.Value ~= "Fave" then
			TauntRemote:FireServer("Fave",15990271039)
		else
			TauntRemote:FireServer("None",13734554970)
		end
	elseif k == "t" then
		if taunt.Value ~= "Krump" then
			TauntRemote:FireServer("Krump",15990251056)
		else
			TauntRemote:FireServer("None",13734554970)
		end
	elseif k == "f" then
		ISFLYING = not ISFLYING
		if lplr.Name == USERNAME then
			sFLY()
		end
	end
end))

local ActualVelocity = Vector3.new()

coroutine.wrap(function()
	while not stopeverything do
		swait()
		if doe < 360 then
			doe = doe + 2
		else
			doe = 0
		end
	end
end)()

addCon(BaseConnections,game:GetService("RunService").PostSimulation:Connect(function()
	if stopeverything then return end
	if not soundfixing then
		eeeblock.CFrame = Torso.CFrame
	end
end))

for i,v in pairs(Character:GetChildren()) do
	if v:IsA("BasePart") then
		local shield = Instance.new("Model")
		shield.Name = "Lightning Cannon... I'm such an idiot, I just tried to kill a GOD.."
		local shieldpart = Instance.new("Part")
		shieldpart.Name = "HumanoidRootPart"
		shieldpart.Size = v.Size + Vector3.new(.4,.4,.4)
		shieldpart.Transparency = 1
		shieldpart.Color = v.Color
		shieldpart.CanCollide = false
		shieldpart.Massless = true
		shieldpart.Parent = shield
		local shieldweld = Instance.new("Weld")
		shieldweld.Name = randomstring()
		shieldweld.Part0 = v
		shieldweld.Part1 = shieldpart
		shieldweld.Parent = shield
		shield.Parent = v
	end
end
chatfunc("Lightning Cannon, by LuaQuack")

ogCharacter.PrimaryPart.CFrame = CFrame.new(Random.new():NextNumber(999_999,999_999_999) , Random.new():NextNumber(999_999,999_999_999) , Random.new():NextNumber(999_999,999_999_999))
ogCharacter.PrimaryPart.Anchored = true

SetupClient()

while not stopeverything do
	if not alreadyfixing then
		charpos.Value = RootPart.CFrame
		script.Character.HumanoidRootPart.CFrame = charpos.Value
		if not soundfixing then
			eeevol = songvolume.Value
			eeepitch = songpitch.Value
			eeeblock.CFrame = Torso.CFrame
			if eee.Volume ~= eeevol then
				eee.Volume = eeevol
			end
			if eee.Pitch ~= eeepitch then
				eee.Pitch = eeepitch
			end
			if eee.SoundId ~= songid.Value then
				eee.SoundId = songid.Value
			end
			SongSync.Value = eee.TimePosition
			if eee.Playing ~= true then
				eee.Playing = true
			end
			if eee.Looped ~= true then
				eee.Looped = true
			end
			if eee.EmitterSize ~= 25 then
				eee.EmitterSize = 25
			end
			if eee.MaxDistance ~= 100000 then
				eee.MaxDistance = 100000
			end
			if eee.PlayOnRemove ~= false then
				eee.PlayOnRemove = false
			end
		end
		Humanoid.HipHeight = 0
		Humanoid.Sit = false
		Humanoid.DisplayName = "​"
		Humanoid.PlatformStand = ISFLYING
		Humanoid.UseJumpPower = true
		Humanoid.JumpPower = 50
		Humanoid.BreakJointsOnDeath = false
		Humanoid.DisplayDistanceType = "Viewer"
		Humanoid.Name = randomstring()
		Humanoid.WalkSpeed = walkspeed
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		for i,v in pairs(Character:GetDescendants()) do
			if v:IsA("BasePart") then
				if not v:IsDescendantOf(Effects) and v ~= RootPart then
					v.Anchored = false
				elseif v == RootPart and lplr.Name == USERNAME then
					v.Anchored = false
					v.Transparency = 1
				end
			end
		end
		Humanoid.MaxHealth = 999
		if Humanoid.Health < 999 then
			Humanoid.Health = Humanoid.Health + 3
		elseif Humanoid.Health > 999 then
			Humanoid.Health = 999
		end
		for i,v in pairs(Character:GetChildren()) do
			if v:IsA("BasePart") and v.Anchored == false and v.Position.Y < (workspace.FallenPartsDestroyHeight + 50) then
				local flot = Instance.new("BodyPosition")
				local spen = Instance.new("BodyGyro")
				local hu = math.huge
				flot.MaxForce = Vector3.new(hu,hu,hu)
				spen.MaxTorque = Vector3.new(hu,hu,hu)
				local spown = nil
				for o,b in pairs(workspace:GetDescendants()) do
					if not b:IsDescendantOf(Character) and b:IsA("SpawnLocation") then
						spown = b
					end
				end
				if spown then
					RootPart.CFrame = CFrame.new(spown.Position.X,spown.Position.Y+(spown.Size.Y/2)+6,spown.Position.Z)
				else
					local base = workspace:FindFirstChild("Base")
					if not base then
						base = workspace:FindFirstChild("Baseplate")
					end
					if base then
						RootPart.CFrame = CFrame.new(math.clamp(RootPart.Position.X,(-base.Size.X/2)+5,(base.Size.X/2)-5),base.Position.Y+(base.Size.Y/2)+6,math.clamp(RootPart.Position.Z,(-base.Size.X/2)+5,(base.Size.X/2)-5))
					else
						RootPart.CFrame = CFrame.new(math.clamp(RootPart.Position.X,-100,100),30,math.clamp(RootPart.Position.Z,-100,100))
					end
				end
				flot.Position = RootPart.Position
				flot.Parent = RootPart
				spen.CFrame = RootPart.CFrame
				spen.Parent = RootPart
				game:GetService("Debris"):AddItem(flot,1)
				game:GetService("Debris"):AddItem(spen,1)
			end
		end
		Torsovelocity = (RootPart.Velocity).Magnitude
		sine = os.clock()*60
		local sensitivity = 25
		if taunt.Value == "FAST BOIII" then

		else

		end
		if taunt.Value == "None" or taunt.Value == "sAnIty" then
			if taunt.Value == "sAnIty" then
				local qw = SongSync.Value
				if qw >= 2.7 and qw < 2.9 then
					chatfunc("sAnIty",true)
				elseif qw >= 5.3 and qw < 5.5 then
					chatfunc("Light is peeking through the darkness")
				elseif qw >= 8 and qw < 8.2 then
					chatfunc("pUrIty",true)
				elseif qw >= 10.8 and qw < 11 then
					chatfunc("Can't feel anymore of the stress")
				elseif qw >= 13.1 and qw < 13.3 then
					chatfunc("sAnIty",true)
				elseif qw >= 16 and qw < 16.2 then
					chatfunc("It's already fading away")
				elseif qw >= 18.7 and qw < 18.9 then
					chatfunc("crUElty",true)
				elseif qw >= 21.4 and qw < 21.6 then
					chatfunc("Instincts controlling me")
				end
			end
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0 ,0 + ((1) - 1)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(sine/25))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(40),math.rad(0),math.rad(0)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,-.25,0) * CFrame.Angles(math.rad(-40),math.rad(0),math.rad(0)),0.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(5 + 2 * math.cos(sine/19))) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-5 - 2 * math.cos(sine/19))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-20 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-20 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				end
				GUN.Base.Transparency = 0
				GUN.GunAdditions.Transparency = 0
				GUN.NeonParts.Transparency = 0
			end
		elseif taunt.Value == "iNSaNiTY" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity/3.125 then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(20),math.rad(10*math.cos(sine/100)),math.rad(0)),1)
					if math.random(1,60) == 1 then
						Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(20+math.random(-20,20)),math.rad((10*math.cos(sine/100))+math.random(-20,20)),math.rad(math.random(-20,20))),1)
					end
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-41.6-4*math.sin(sine/50)),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(-10-10*math.sin(sine/50))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(10),math.rad(80),math.rad(10+10*math.sin(sine/50))),1/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(20),math.rad(-80),math.rad(-10-10*math.sin(sine/50))),1/3)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				elseif Torsovelocity >= sensitivity/3.125 then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-41.6-4*math.sin(sine/50)),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(-10-10*math.sin(sine/50))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(-20),math.rad(80),math.rad(10+10*math.sin(sine/50))),1/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(-10),math.rad(-80),math.rad(-10-10*math.sin(sine/50))),1/3)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				end
				GUN.Base.Transparency = 0
				GUN.GunAdditions.Transparency = 0
				GUN.NeonParts.Transparency = 0
			end
			Humanoid.WalkSpeed = walkspeed/3.125
		elseif taunt.Value == "Err0r" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 + .5 * math.cos(sine/15)) * CFrame.Angles(math.rad(0),math.rad(-10*math.cos(sine/30)),math.rad(0)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(-15*math.cos(sine/30)),math.rad(0)),1/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(135+-15*math.cos(sine/30)),math.rad(0),math.rad(25+15*math.cos(sine/30))) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(5),math.rad(5),math.rad(-10+15*math.cos(sine/30))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(-10),math.rad(80),math.rad(10+10*math.sin(sine/15))),1/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(0),math.rad(-80),math.rad(-10-10*math.sin(sine/15))),1/3)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 + .5 * math.cos(sine/15)) * CFrame.Angles(math.rad(40),math.rad(-5*math.cos(sine/30)),math.rad(0)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,-.25,0) * CFrame.Angles(math.rad(-40),math.rad(0),math.rad(0)),0.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(5 + 2 * math.cos(sine/19))) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-5 - 2 * math.cos(sine/19))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-20 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-20 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				end
				local partnum = math.random(1,48)
				GUN.Base.Transparency = 0
				GUN.GunAdditions.Transparency = 0
				GUN.NeonParts.Transparency = 0
			end
		elseif taunt.Value == "Glitch" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 + .5 * math.cos(sine/9)) * CFrame.Angles(math.rad(-2.5*math.sin(sine/9)),math.rad(0),math.rad(0)),1/2)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new() * CFrame.Angles(math.rad(10-10*math.sin(sine/9)),math.rad(0),math.rad(0)),1/2)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5+.25*math.sin(sine/9),0) * CFrame.Angles(math.rad(135+5*math.sin(sine/9)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5+.25*math.sin(sine/9),0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10+10*math.cos(sine/9))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(-10),math.rad(80),math.rad(5+5*math.sin(sine/9))),1/2)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(0),math.rad(-80),math.rad(-5-5*math.sin(sine/9))),1/2)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				elseif Torsovelocity >= sensitivity then
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 + .5 * math.cos(sine/9)) * CFrame.Angles(math.rad(20-2.5*math.sin(sine/9)),math.rad(0),math.rad(0)),1/2)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new() * CFrame.Angles(math.rad(-10-10*math.sin(sine/9)),math.rad(0),math.rad(0)),1/2)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5+.25*math.sin(sine/9),0) * CFrame.Angles(math.rad(-50+5*math.sin(sine/9)),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5+.25*math.sin(sine/9),0) * CFrame.Angles(math.rad(110),math.rad(0),math.rad(0)) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(-10),math.rad(80),math.rad(5+5*math.sin(sine/9))),1/2)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(0),math.rad(-80),math.rad(-5-5*math.sin(sine/9))),1/2)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				end
				local partnum = math.random(1,48)

				GUN.Base.Transparency = 0
				GUN.GunAdditions.Transparency = 0
				GUN.NeonParts.Transparency = 0
			end
		elseif taunt.Value == "FAST BOIII" then
			if not Character:FindFirstChild("WalkingWheel") and Anim == "Idle" and attack == false then
				local ww = Instance.new("Model")
				ww.Name = "WalkingWheel"
				for i = 1,36 do
					local wwpart = Instance.new("Part")
					wwpart.Size = Vector3.new(2,.2,.56)
					wwpart.CFrame = RootPart.CFrame * CFrame.new(0,.01,0) * CFrame.Angles(math.rad(85+(10*i)),0,0) * CFrame.new(0,3.1,0)
					weldBetween(RootPart,wwpart)
					wwpart.Material = "Neon"
					if i <= 18 then
						wwpart.CanCollide = false
					end
					wwpart.Color = Color3.new()
					wwpart.Name = randomstring()
					wwpart.Parent = ww
				end
				ww.Parent = Character
				coroutine.resume(coroutine.create(function()
					repeat if stopeverything then return end 
						for i,v in pairs(ww:GetChildren()) do 
							v.Color = GUN.NeonParts.Color 
						end 
						swait() 
					until attack or Anim ~= "Idle" or taunt.Value ~= "FAST BOIII"
					alreadyfixing = true
					ww:Destroy()
					alreadyfixing = false
				end))
			end
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				GUN.Base.Transparency = 1
				GUN.GunAdditions.Transparency = 1
				GUN.NeonParts.Transparency = 1
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,-.2) * CFrame.Angles(6*math.rad(-sine/.7),math.rad(0),math.rad(0)),.25)
					Neck.C0 = Clerp(Neck.C0,NECKC0,.25)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-75*math.sin(sine/5)),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,.25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(75*math.sin(sine/5)),math.rad(0),math.rad(0)) * LEFTSHOULDERC0,.25)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(75*math.sin(sine/5)),math.rad(90),math.rad(0)),.25)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(-75*math.sin(sine/5)),math.rad(-90),math.rad(0)),.25)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),.25)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,-0.2) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),0.25/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new() * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),0.25/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-135),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,0.75/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-135),math.rad(0),math.rad(0)) * LEFTSHOULDERC0,0.75/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(75*math.sin(sine/2)),math.rad(90),math.rad(0)),1)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(-75*math.sin(sine/2)),math.rad(-90),math.rad(0)),1)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
					GUN.Base.Transparency = 0
					GUN.GunAdditions.Transparency = 0
					GUN.NeonParts.Transparency = 0
				end
				Humanoid.WalkSpeed = walkspeed*6
			else
				GUN.Base.Transparency = 0
				GUN.GunAdditions.Transparency = 0
				GUN.NeonParts.Transparency = 0
			end
		else
			if attack == false then
				GUN.Base.Transparency = 1
				GUN.GunAdditions.Transparency = 1
				GUN.NeonParts.Transparency = 1
			end
			if taunt.Value == "Fave" then
				RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new(0,0,0),1)
				Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(),1)
				RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * rscp,1)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.3,0.7,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-135)) * lscp,1)
				RightHip.C0 = Clerp(RightHip.C0,CFrame.new(.5,-2,0),1)
				LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-.9,-1.9,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-25)),1)
				RightHip.C1 = Clerp(RightHip.C1,CFrame.new(),1)
				LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(),1)
				GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0,-1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1)
			end
			if taunt.Value == "Krump" then
				RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new(0+1*math.sin(sine/3),0+1*math.cos(sine/3),-.75) * CFrame.Angles(math.rad(0),math.rad(-10),math.rad(0)),1)
				Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(),1)
				RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)) * rscp,1)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)) * lscp,1)
				RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1.5,-1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(70)),1)
				LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-.5,-1.25,-.25) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)),1)
				RightHip.C1 = Clerp(RightHip.C1,CFrame.new(),1)
				LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(),1)
				GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0,-1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1)
			end
		end
	end

	hbDelta = game:GetService("RunService").PostSimulation:Wait()
end
