
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
Folder1 = Instance.new("Folder")
Motor6D2 = Instance.new("Motor6D")
Motor6D3 = Instance.new("Motor6D")
Motor6D4 = Instance.new("Motor6D")
Motor6D5 = Instance.new("Motor6D")
Motor6D6 = Instance.new("Motor6D")
Motor6D7 = Instance.new("Motor6D")
Weld8 = Instance.new("Weld")
Weld9 = Instance.new("Weld")
Part10 = Instance.new("Part")
ParticleEmitter11 = Instance.new("ParticleEmitter")
ParticleEmitter12 = Instance.new("ParticleEmitter")
PointLight13 = Instance.new("PointLight")
SpecialMesh14 = Instance.new("SpecialMesh")
Part15 = Instance.new("Part")
Folder16 = Instance.new("Folder")
Beam17 = Instance.new("Beam")
Beam18 = Instance.new("Beam")
Beam19 = Instance.new("Beam")
Beam20 = Instance.new("Beam")
Beam21 = Instance.new("Beam")
Beam22 = Instance.new("Beam")
Beam23 = Instance.new("Beam")
Beam24 = Instance.new("Beam")
Beam25 = Instance.new("Beam")
Beam26 = Instance.new("Beam")
ParticleEmitter27 = Instance.new("ParticleEmitter")
ParticleEmitter28 = Instance.new("ParticleEmitter")
ParticleEmitter29 = Instance.new("ParticleEmitter")
ParticleEmitter30 = Instance.new("ParticleEmitter")
PointLight31 = Instance.new("PointLight")
ParticleEmitter32 = Instance.new("ParticleEmitter")
Part33 = Instance.new("Part")
SpecialMesh34 = Instance.new("SpecialMesh")
Decal35 = Instance.new("Decal")
Part36 = Instance.new("Part")
SpecialMesh37 = Instance.new("SpecialMesh")
Part38 = Instance.new("Part")
SpecialMesh39 = Instance.new("SpecialMesh")
Part40 = Instance.new("Part")
SpecialMesh41 = Instance.new("SpecialMesh")
Part42 = Instance.new("Part")
SpecialMesh43 = Instance.new("SpecialMesh")
Part44 = Instance.new("Part")
SpecialMesh45 = Instance.new("SpecialMesh")
Part46 = Instance.new("Part")
SpecialMesh47 = Instance.new("SpecialMesh")
Model0.Name = "Character"
Model0.Parent = mas
Folder1.Name = "Welds"
Folder1.Parent = Model0
Motor6D2.Name = "LeftHip"
Motor6D2.Parent = Folder1
Motor6D2.C0 = CFrame.new(0.999989986, -1.00000012, 7.62939453e-06, 1.00000107, 1.80229165e-10, -2.18278728e-11, -7.51143148e-10, 1, 0, 3.27418093e-11, -2.32830644e-10, 1.00000107)
Motor6D2.C1 = CFrame.new(0.500000417, 0.999999881, 7.62962281e-06, 1.00000381, -1.14182153e-09, 7.2759845e-12, -1.14182874e-09, 1, -2.32831115e-10, 1.81899391e-11, -4.16338187e-16, 1.00000381)
Motor6D2.Part0 = Part46
Motor6D2.Part1 = Part40
Motor6D2.part1 = Part40
Motor6D3.Name = "LeftShoulder"
Motor6D3.Parent = Folder1
Motor6D3.C0 = CFrame.new(-0.999987602, 0.499999762, 7.62939453e-06, 1.00000346, 1.11153753e-09, 8.74388206e-08, 1.1612471e-09, 1, 0, -8.74060788e-08, 0, 1.00000381)
Motor6D3.C1 = CFrame.new(0.500002146, 0.499999762, 7.67313941e-06, 1, -4.54554572e-09, -6.18238932e-11, 4.54554572e-09, 1, -1.94312879e-16, 6.18238932e-11, 1.94031849e-16, 1)
Motor6D3.Part0 = Part46
Motor6D3.Part1 = Part38
Motor6D3.part1 = Part38
Motor6D4.Name = "Neck"
Motor6D4.Parent = Folder1
Motor6D4.C0 = CFrame.new(9.53674316e-07, 0.999999285, 0, 1.00000024, -5.26156896e-11, -3.63797881e-12, -5.26299004e-11, 1, 0, 0, 0, 1.00000024)
Motor6D4.C1 = CFrame.new(2.62616595e-11, -0.5, 0, 1.00000036, -1.05231386e-10, -3.63797924e-12, -1.05245604e-10, 1, 1.91414764e-22, 0, 0, 1.00000036)
Motor6D4.Part0 = Part46
Motor6D4.Part1 = Part33
Motor6D4.part1 = Part33
Motor6D5.Name = "RightHip"
Motor6D5.Parent = Folder1
Motor6D5.C0 = CFrame.new(-0.999992847, -1.0000006, 7.62939453e-06, 1.00000381, 4.37118786e-09, 3.63797881e-11, -4.24397228e-09, 1, -1.86264515e-09, 3.63797881e-12, -4.65661287e-10, 1.00000453)
Motor6D5.C1 = CFrame.new(-0.500001907, 0.999999881, 7.6261731e-06, 1, -2.96444602e-09, -2.00088141e-10, 2.96444602e-09, 1, 9.54606527e-09, 2.00088113e-10, -9.54606527e-09, 1)
Motor6D5.Part0 = Part46
Motor6D5.Part1 = Part44
Motor6D5.part1 = Part44
Motor6D6.Name = "RightShoulder"
Motor6D6.Parent = Folder1
Motor6D6.C0 = CFrame.new(0.999988079, 0.499999285, 7.62939453e-06, 1.00000072, -5.26156896e-11, 8.74279067e-08, 6.95841607e-10, 1, 0, -8.74206307e-08, 0, 1.00000072)
Motor6D6.C1 = CFrame.new(-0.499999911, 0.499999523, 7.58571105e-06, 1.00000417, 1.12084819e-09, 2.17710988e-11, 1.81927562e-09, 1, -2.2987025e-17, 1.46088038e-11, -2.29930568e-17, 1.00000417)
Motor6D6.Part0 = Part46
Motor6D6.Part1 = Part42
Motor6D6.part1 = Part42
Motor6D7.Name = "RootJoint"
Motor6D7.Parent = Folder1
Motor6D7.C0 = CFrame.new(0, 0, 0, 1.00000012, -5.26156896e-11, 0, -5.26156896e-11, 1, 0, 0, 0, 1.00000012)
Motor6D7.Part0 = Part36
Motor6D7.Part1 = Part46
Motor6D7.part1 = Part46
Weld8.Name = "GunWeld"
Weld8.Parent = Folder1
Weld8.C0 = CFrame.new(0, 0, 0, 4.37113883e-08, 3.82137093e-15, 1, 8.74227766e-08, -1, 0, 1, 8.74227766e-08, -4.37113883e-08)
Weld8.C1 = CFrame.new(-0.800000012, -0.600000024, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld8.Part0 = Part42
Weld8.Part1 = Part10
Weld8.part1 = Part10
Weld9.Name = "VFXOutputWeld"
Weld9.Parent = Folder1
Weld9.C0 = CFrame.new(-3.29999995, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld9.Part0 = Part15
Weld9.Part1 = Part10
Weld9.part1 = Part10
Part10.Name = "Gun"
Part10.Parent = Model0
Part10.CFrame = CFrame.new(5.10298491, 2.61800003, 58.1066437, -4.48315404e-05, 0.00217112014, -1.00000262, -0.00209109159, -0.99999547, -0.00217102887, -1.00000286, 0.00209097867, 4.93712978e-05)
Part10.Orientation = Vector3.new(0.12399999797344208, -89.99700164794922, -179.8800048828125)
Part10.Position = Vector3.new(5.10298490524292, 2.618000030517578, 58.10664367675781)
Part10.Rotation = Vector3.new(179.8800048828125, -90, 0)
Part10.Color = Color3.new(1, 0.666667, 1)
Part10.Size = Vector3.new(6.792364120483398, 1.2411832809448242, 0.2538750171661377)
Part10.BrickColor = BrickColor.new("Carnation pink")
Part10.Locked = true
Part10.Material = Enum.Material.Leather
Part10.brickColor = BrickColor.new("Carnation pink")
ParticleEmitter11.Name = "smoke"
ParticleEmitter11.Parent = Part10
ParticleEmitter11.Speed = NumberRange.new(0.05000000074505806, 0.05000000074505806)
ParticleEmitter11.Rotation = NumberRange.new(0, 360)
ParticleEmitter11.LightEmission = 1
ParticleEmitter11.LightInfluence = 1
ParticleEmitter11.Texture = "rbxassetid://8187308218"
ParticleEmitter11.Transparency = NumberSequence.new(0.9900000095367432,0.9900000095367432)
ParticleEmitter11.Size = NumberSequence.new(5,5)
ParticleEmitter11.Acceleration = Vector3.new(0, 3, 0)
ParticleEmitter11.Lifetime = NumberRange.new(2, 2)
ParticleEmitter11.Rate = 50
ParticleEmitter11.RotSpeed = NumberRange.new(90, 90)
ParticleEmitter11.SpreadAngle = Vector2.new(360, 360)
ParticleEmitter11.VelocitySpread = 360
ParticleEmitter12.Name = "sparkles"
ParticleEmitter12.Parent = Part10
ParticleEmitter12.Speed = NumberRange.new(1, 1)
ParticleEmitter12.Rotation = NumberRange.new(0, 360)
ParticleEmitter12.LightEmission = 1
ParticleEmitter12.LightInfluence = 1
ParticleEmitter12.Texture = "rbxassetid://8187306179"
ParticleEmitter12.Transparency = NumberSequence.new(0,1)
ParticleEmitter12.Size = NumberSequence.new(0.10000000149011612,0)
ParticleEmitter12.Lifetime = NumberRange.new(1, 2)
ParticleEmitter12.Rate = 80
ParticleEmitter12.RotSpeed = NumberRange.new(-180, 180)
ParticleEmitter12.SpreadAngle = Vector2.new(360, 360)
ParticleEmitter12.VelocitySpread = 360
PointLight13.Parent = Part10
PointLight13.Brightness = 3
PointLight13.Shadows = true
SpecialMesh14.Parent = Part10
SpecialMesh14.MeshId = "rbxassetid://1736736188"
SpecialMesh14.VertexColor = Vector3.new(1000, 1000, 1000)
SpecialMesh14.TextureId = "rbxassetid://0"
SpecialMesh14.MeshType = Enum.MeshType.FileMesh
Part15.Name = "VFXOutput"
Part15.Parent = Part10
Part15.CFrame = CFrame.new(5.10392237, 2.11110163, 54.8076782, -4.48315404e-05, 0.00217112014, -1.00000262, -0.00209109159, -0.99999547, -0.00217102887, -1.00000286, 0.00209097867, 4.93712978e-05)
Part15.Orientation = Vector3.new(0.12399999797344208, -89.99700164794922, -179.8800048828125)
Part15.Position = Vector3.new(5.103922367095947, 2.1111016273498535, 54.80767822265625)
Part15.Rotation = Vector3.new(179.8800048828125, -90, 0)
Part15.Transparency = 1
Part15.Size = Vector3.new(0.20000000298023224, 0.2444932907819748, 0.28849491477012634)
Part15.BottomSurface = Enum.SurfaceType.Smooth
Part15.Locked = true
Part15.TopSurface = Enum.SurfaceType.Smooth
Folder16.Name = "Beams"
Folder16.Parent = Part15
Beam17.Parent = Folder16
Beam17.Attachment0 = nil
Beam17.Attachment1 = nil
Beam17.Color = ColorSequence.new(Color3.new(1, 0, 0.815686),Color3.new(1, 0, 0.815686))
Beam17.Enabled = false
Beam17.FaceCamera = true
Beam17.LightEmission = 1
Beam17.LightInfluence = 1
Beam17.Texture = "rbxassetid://12781806168"
Beam17.TextureLength = 0.5
Beam17.TextureSpeed = -2
Beam17.Transparency = NumberSequence.new(0,0)
Beam17.Width0 = 2
Beam17.Width1 = 0.20000000298023224
Beam18.Parent = Folder16
Beam18.Attachment0 = nil
Beam18.Attachment1 = nil
Beam18.Color = ColorSequence.new(Color3.new(1, 0, 0.815686),Color3.new(1, 0, 0.815686))
Beam18.Enabled = false
Beam18.FaceCamera = true
Beam18.LightEmission = 1
Beam18.LightInfluence = 1
Beam18.Texture = "rbxassetid://12781780964"
Beam18.TextureSpeed = -2
Beam18.Transparency = NumberSequence.new(0,0)
Beam18.Width0 = 2
Beam18.Width1 = 0.20000000298023224
Beam19.Parent = Folder16
Beam19.Attachment0 = nil
Beam19.Attachment1 = nil
Beam19.Color = ColorSequence.new(Color3.new(1, 0, 0.815686),Color3.new(1, 0, 0.815686))
Beam19.Enabled = false
Beam19.FaceCamera = true
Beam19.LightEmission = 1
Beam19.LightInfluence = 1
Beam19.Texture = "rbxassetid://12781800019"
Beam19.TextureLength = 0.5
Beam19.TextureSpeed = -2
Beam19.Transparency = NumberSequence.new(0,0)
Beam19.Width0 = 2
Beam19.Width1 = 0.20000000298023224
Beam20.Parent = Folder16
Beam20.Attachment0 = nil
Beam20.Attachment1 = nil
Beam20.Color = ColorSequence.new(Color3.new(1, 0, 0.815686),Color3.new(1, 0, 0.815686))
Beam20.Enabled = false
Beam20.FaceCamera = true
Beam20.LightEmission = 1
Beam20.LightInfluence = 1
Beam20.Texture = "rbxassetid://12781879045"
Beam20.TextureLength = 0.25
Beam20.TextureSpeed = -2
Beam20.Transparency = NumberSequence.new(0,0)
Beam20.Width0 = 2
Beam20.Width1 = 0.20000000298023224
Beam21.Parent = Folder16
Beam21.Attachment0 = nil
Beam21.Attachment1 = nil
Beam21.Color = ColorSequence.new(Color3.new(1, 0, 0.815686),Color3.new(1, 0, 0.815686))
Beam21.Enabled = false
Beam21.FaceCamera = true
Beam21.LightEmission = 1
Beam21.LightInfluence = 1
Beam21.Texture = "rbxassetid://12781806168"
Beam21.TextureLength = 0.5
Beam21.TextureSpeed = -2
Beam21.Transparency = NumberSequence.new(0,0)
Beam21.Width0 = 2
Beam21.Width1 = 0.20000000298023224
Beam22.Parent = Folder16
Beam22.Attachment0 = nil
Beam22.Attachment1 = nil
Beam22.Color = ColorSequence.new(Color3.new(1, 0, 0.815686),Color3.new(1, 0, 0.815686))
Beam22.Enabled = false
Beam22.FaceCamera = true
Beam22.LightEmission = 1
Beam22.LightInfluence = 1
Beam22.Texture = "rbxassetid://12781803991"
Beam22.TextureSpeed = -2
Beam22.Transparency = NumberSequence.new(0,0)
Beam22.Width0 = 2
Beam22.Width1 = 0.20000000298023224
Beam23.Parent = Folder16
Beam23.Attachment0 = nil
Beam23.Attachment1 = nil
Beam23.Color = ColorSequence.new(Color3.new(1, 0, 0.815686),Color3.new(1, 0, 0.815686))
Beam23.Enabled = false
Beam23.FaceCamera = true
Beam23.LightEmission = 1
Beam23.LightInfluence = 1
Beam23.Texture = "rbxassetid://12781800668"
Beam23.TextureLength = 0.25
Beam23.TextureSpeed = -2
Beam23.Transparency = NumberSequence.new(0,0)
Beam23.Width0 = 2
Beam23.Width1 = 0.20000000298023224
Beam24.Parent = Folder16
Beam24.Attachment0 = nil
Beam24.Attachment1 = nil
Beam24.Color = ColorSequence.new(Color3.new(1, 0, 0.815686),Color3.new(1, 0, 0.815686))
Beam24.Enabled = false
Beam24.FaceCamera = true
Beam24.LightEmission = 1
Beam24.LightInfluence = 1
Beam24.Texture = "rbxassetid://12781848822"
Beam24.TextureLength = 0.25
Beam24.TextureSpeed = -2
Beam24.Transparency = NumberSequence.new(0,0)
Beam24.Width0 = 2
Beam24.Width1 = 0.20000000298023224
Beam25.Parent = Folder16
Beam25.Attachment0 = nil
Beam25.Attachment1 = nil
Beam25.Enabled = false
Beam25.FaceCamera = true
Beam25.LightEmission = 1
Beam25.LightInfluence = 1
Beam25.Texture = "rbxassetid://12781848822"
Beam25.TextureLength = 0.5
Beam25.TextureSpeed = -2
Beam25.Transparency = NumberSequence.new(0,0)
Beam25.Width0 = 2
Beam25.Width1 = 0.20000000298023224
Beam26.Parent = Folder16
Beam26.Attachment0 = nil
Beam26.Attachment1 = nil
Beam26.Enabled = false
Beam26.FaceCamera = true
Beam26.LightEmission = 1
Beam26.LightInfluence = 1
Beam26.Texture = "rbxassetid://12781849590"
Beam26.TextureLength = 0.5
Beam26.TextureSpeed = -2
Beam26.Transparency = NumberSequence.new(0,0)
Beam26.Width0 = 2
Beam26.Width1 = 0.20000000298023224
ParticleEmitter27.Parent = mas
ParticleEmitter27.Speed = NumberRange.new(250, 250)
ParticleEmitter27.Orientation = Enum.ParticleOrientation.VelocityParallel
ParticleEmitter27.Color = ColorSequence.new(Color3.new(1, 0.14902, 0),Color3.new(1, 0.14902, 0))
ParticleEmitter27.Enabled = false
ParticleEmitter27.LightEmission = 1
ParticleEmitter27.LightInfluence = 1
ParticleEmitter27.Texture = "rbxassetid://8187306179"
ParticleEmitter27.Transparency = NumberSequence.new(0,1)
ParticleEmitter27.Size = NumberSequence.new(0,5)
ParticleEmitter27.Brightness = 10
ParticleEmitter27.Acceleration = Vector3.new(0, -100, 0)
ParticleEmitter27.Lifetime = NumberRange.new(0.5, 0.5)
ParticleEmitter27.Rate = 1000
ParticleEmitter27.SpreadAngle = Vector2.new(360, 360)
ParticleEmitter27.VelocitySpread = 360
ParticleEmitter28.Parent = mas
ParticleEmitter28.Speed = NumberRange.new(2.4000000953674316, 2.4000000953674316)
ParticleEmitter28.Color = ColorSequence.new(Color3.new(1, 0, 0.815686),Color3.new(1, 0, 0.815686))
ParticleEmitter28.Enabled = false
ParticleEmitter28.LightEmission = 1
ParticleEmitter28.LightInfluence = 1
ParticleEmitter28.Texture = "rbxassetid://5406968633"
ParticleEmitter28.Transparency = NumberSequence.new(0,1)
ParticleEmitter28.ZOffset = -1
ParticleEmitter28.Size = NumberSequence.new(5,0.10000000149011612)
ParticleEmitter28.EmissionDirection = Enum.NormalId.Front
ParticleEmitter28.Lifetime = NumberRange.new(0.47999998927116394, 0.47999998927116394)
ParticleEmitter28.LockedToPart = true
ParticleEmitter28.Rate = 360
ParticleEmitter28.RotSpeed = NumberRange.new(-360, 360)
ParticleEmitter28.SpreadAngle = Vector2.new(-360, 360)
ParticleEmitter28.VelocitySpread = -360
ParticleEmitter29.Parent = mas
ParticleEmitter29.Speed = NumberRange.new(2.4000000953674316, 2.4000000953674316)
ParticleEmitter29.Color = ColorSequence.new(Color3.new(1, 0, 0.815686),Color3.new(1, 0, 0.815686))
ParticleEmitter29.Enabled = false
ParticleEmitter29.LightEmission = 1
ParticleEmitter29.LightInfluence = 1
ParticleEmitter29.Texture = "rbxassetid://5407029762"
ParticleEmitter29.Transparency = NumberSequence.new(0,1)
ParticleEmitter29.ZOffset = -1
ParticleEmitter29.Size = NumberSequence.new(5,0.10000000149011612)
ParticleEmitter29.EmissionDirection = Enum.NormalId.Front
ParticleEmitter29.Lifetime = NumberRange.new(0.47999998927116394, 0.47999998927116394)
ParticleEmitter29.LockedToPart = true
ParticleEmitter29.Rate = 360
ParticleEmitter29.RotSpeed = NumberRange.new(-360, 360)
ParticleEmitter29.SpreadAngle = Vector2.new(-360, 360)
ParticleEmitter29.VelocitySpread = -360
ParticleEmitter30.Parent = mas
ParticleEmitter30.Speed = NumberRange.new(2.4000000953674316, 2.4000000953674316)
ParticleEmitter30.Color = ColorSequence.new(Color3.new(1, 0, 0.815686),Color3.new(1, 0, 0.815686))
ParticleEmitter30.Enabled = false
ParticleEmitter30.LightEmission = 1
ParticleEmitter30.LightInfluence = 1
ParticleEmitter30.Texture = "rbxassetid://5407035714"
ParticleEmitter30.Transparency = NumberSequence.new(0,1)
ParticleEmitter30.ZOffset = -1
ParticleEmitter30.Size = NumberSequence.new(5,0.10000000149011612)
ParticleEmitter30.EmissionDirection = Enum.NormalId.Front
ParticleEmitter30.Lifetime = NumberRange.new(0.47999998927116394, 0.47999998927116394)
ParticleEmitter30.LockedToPart = true
ParticleEmitter30.Rate = 360
ParticleEmitter30.RotSpeed = NumberRange.new(-360, 360)
ParticleEmitter30.SpreadAngle = Vector2.new(-360, 360)
ParticleEmitter30.VelocitySpread = -360
PointLight31.Parent = mas
PointLight31.Color = Color3.new(1, 0, 0.815686)
PointLight31.Enabled = false
PointLight31.Range = 25
PointLight31.Brightness = 20
PointLight31.Shadows = true
ParticleEmitter32.Parent = mas
ParticleEmitter32.Speed = NumberRange.new(2.4000000953674316, 2.4000000953674316)
ParticleEmitter32.Color = ColorSequence.new(Color3.new(1, 0, 0.815686),Color3.new(1, 0, 0.815686))
ParticleEmitter32.Enabled = false
ParticleEmitter32.LightEmission = 1
ParticleEmitter32.LightInfluence = 1
ParticleEmitter32.Texture = "rbxassetid://5407029762"
ParticleEmitter32.Transparency = NumberSequence.new(0,1)
ParticleEmitter32.ZOffset = -1
ParticleEmitter32.Size = NumberSequence.new(5,0.10000000149011612)
ParticleEmitter32.EmissionDirection = Enum.NormalId.Front
ParticleEmitter32.Lifetime = NumberRange.new(0.47999998927116394, 0.47999998927116394)
ParticleEmitter32.LockedToPart = true
ParticleEmitter32.Rate = 360
ParticleEmitter32.RotSpeed = NumberRange.new(-360, 360)
ParticleEmitter32.SpreadAngle = Vector2.new(-360, 360)
ParticleEmitter32.VelocitySpread = -360
Part33.Name = "Head"
Part33.Parent = Model0
Part33.CFrame = CFrame.new(6.59844732, 4.72291946, 58.9021835, -0.999998331, -0.00217111805, -4.4700002e-05, -0.00217102189, 0.99999547, -0.00209116959, 4.92399849e-05, -0.00209106598, -0.999998569)
Part33.Orientation = Vector3.new(0.11999999731779099, -179.9969940185547, -0.12399999797344208)
Part33.Position = Vector3.new(6.598447322845459, 4.722919464111328, 58.902183532714844)
Part33.Rotation = Vector3.new(179.8800048828125, -0.003000000026077032, 179.87600708007812)
Part33.Size = Vector3.new(1.1978397369384766, 1.2024301290512085, 1.1977996826171875)
Part33.Locked = true
Part33.Material = Enum.Material.SmoothPlastic
SpecialMesh34.Parent = Part33
SpecialMesh34.MeshId = "rbxassetid://1553262626"
SpecialMesh34.Scale = Vector3.new(1, 0.9999999403953552, 1)
SpecialMesh34.MeshType = Enum.MeshType.FileMesh
Decal35.Name = "face"
Decal35.Parent = Part33
Decal35.Texture = "rbxasset://textures/face.png"
Part36.Name = "HumanoidRootPart"
Part36.Parent = Model0
Part36.CFrame = CFrame.new(6.60170507, 3.22292686, 58.9053192, -0.999997616, -0.00217111828, -4.46999766e-05, -0.00217102002, 0.99999547, -0.00209116819, 4.92399449e-05, -0.00209106598, -0.999997854)
Part36.Orientation = Vector3.new(0.11999999731779099, -179.9969940185547, -0.12399999797344208)
Part36.Position = Vector3.new(6.601705074310303, 3.2229268550872803, 58.90531921386719)
Part36.Rotation = Vector3.new(179.8800048828125, -0.003000000026077032, 179.87600708007812)
Part36.Transparency = 1
Part36.Size = Vector3.new(2, 2, 1)
Part36.Anchored = true
Part36.Locked = true
SpecialMesh37.Parent = Part36
SpecialMesh37.MeshId = "rbxassetid://4906896369"
SpecialMesh37.TextureId = "rbxassetid://4906896430"
SpecialMesh37.MeshType = Enum.MeshType.FileMesh
Part38.Name = "LeftArm"
Part38.Parent = Model0
Part38.CFrame = CFrame.new(8.10169315, 3.22618341, 58.9052467, -1.00000119, -0.00217112387, -4.47876519e-05, -0.00217103097, 0.99999547, -0.00209117658, 4.93275984e-05, -0.00209106598, -1.00000179)
Part38.Orientation = Vector3.new(0.11999999731779099, -179.9969940185547, -0.12399999797344208)
Part38.Position = Vector3.new(8.101693153381348, 3.2261834144592285, 58.90524673461914)
Part38.Rotation = Vector3.new(179.8800048828125, -0.003000000026077032, 179.87600708007812)
Part38.Size = Vector3.new(1.0000001192092896, 2, 1)
Part38.Locked = true
SpecialMesh39.Parent = Part38
SpecialMesh39.MeshId = "rbxassetid://4906912683"
SpecialMesh39.MeshType = Enum.MeshType.FileMesh
Part40.Name = "LeftLeg"
Part40.Parent = Model0
Part40.CFrame = CFrame.new(6.10606146, 1.2218504, 58.9095268, -1.00000262, -0.00217111735, -4.47001948e-05, -0.00217103283, 0.99999547, -0.00209117867, 4.92401559e-05, -0.00209106551, -1.00000286)
Part40.Orientation = Vector3.new(0.11999999731779099, -179.9969940185547, -0.12399999797344208)
Part40.Position = Vector3.new(6.1060614585876465, 1.2218503952026367, 58.90952682495117)
Part40.Rotation = Vector3.new(179.8800048828125, -0.003000000026077032, 179.87600708007812)
Part40.Size = Vector3.new(1, 1.9999970197677612, 1)
Part40.Locked = true
SpecialMesh41.Parent = Part40
SpecialMesh41.MeshId = "rbxassetid://4906907014"
SpecialMesh41.MeshType = Enum.MeshType.FileMesh
Part42.Name = "RightArm"
Part42.Parent = Model0
Part42.CFrame = CFrame.new(5.10171795, 3.21967006, 58.9053917, -1.00000262, -0.00217112014, -4.47876409e-05, -0.00217102887, 0.99999547, -0.0020911789, 4.93275875e-05, -0.00209106598, -1.00000286)
Part42.Orientation = Vector3.new(0.11999999731779099, -179.9969940185547, -0.12399999797344208)
Part42.Position = Vector3.new(5.101717948913574, 3.219670057296753, 58.905391693115234)
Part42.Rotation = Vector3.new(179.8800048828125, -0.003000000026077032, 179.87600708007812)
Part42.Size = Vector3.new(1.0000200271606445, 2, 1)
Part42.Locked = true
SpecialMesh43.Parent = Part42
SpecialMesh43.MeshId = "rbxassetid://4906916609"
SpecialMesh43.MeshType = Enum.MeshType.FileMesh
Part44.Name = "RightLeg"
Part44.Parent = Model0
Part44.CFrame = CFrame.new(7.10603523, 1.22402096, 58.9094772, -1.00000155, -0.00217112573, -4.47003949e-05, -0.00217103586, 0.99999547, -0.00209118938, 4.92403524e-05, -0.00209107506, -1.0000025)
Part44.Orientation = Vector3.new(0.11999999731779099, -179.9969940185547, -0.12399999797344208)
Part44.Position = Vector3.new(7.106035232543945, 1.2240209579467773, 58.90947723388672)
Part44.Rotation = Vector3.new(179.8800048828125, -0.003000000026077032, 179.87600708007812)
Part44.Size = Vector3.new(1, 1.9999970197677612, 1)
Part44.Locked = true
SpecialMesh45.Parent = Part44
SpecialMesh45.MeshId = "rbxassetid://4906910615"
SpecialMesh45.MeshType = Enum.MeshType.FileMesh
Part46.Name = "Torso"
Part46.Parent = Model0
Part46.CFrame = CFrame.new(6.60170507, 3.22292686, 58.9053192, -0.999997735, -0.00217111828, -4.46999802e-05, -0.00217102026, 0.99999547, -0.00209116843, 4.92399522e-05, -0.00209106598, -0.999997973)
Part46.Orientation = Vector3.new(0.11999999731779099, -179.9969940185547, -0.12399999797344208)
Part46.Position = Vector3.new(6.601705074310303, 3.2229268550872803, 58.90531921386719)
Part46.Rotation = Vector3.new(179.8800048828125, -0.003000000026077032, 179.87600708007812)
Part46.Size = Vector3.new(2, 2, 1)
Part46.Locked = true
SpecialMesh47.Parent = Part46
SpecialMesh47.MeshId = "rbxassetid://4906896369"
SpecialMesh47.MeshType = Enum.MeshType.FileMesh
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
script.Parent = game.ReplicatedFirst
local Character = nil
local Head = nil
local Torso = nil
local RightLeg = nil
local LeftLeg = nil
local RightArm = nil
local LeftArm = nil
local RootPart = nil
local Gun = nil
local VFXOutput = nil
local MousePosition = nil
local welds = nil
local LeftHip = nil
local LeftShoulder = nil
local Neck = nil
local RightShoulder = nil
local RightHip = nil
local RootJoint = nil
local GunWeld = nil
local VFXOutputWeld = nil
local Banish = {}
local OriginalPosition = CFrame.new(0, 50, 0)
local viewpart = nil
local VFXMode = "VFX"
local cameraLookVector = Vector3.new(0, 0, 0)
local viewpartHolder = nil
local Instances = {"Atmosphere", "Sky", "Folder", "Sound", "Team", "Accoutrement", "BloomEffect", "BlurEffect", "BodyColors", "ChorusSoundEffect", "Shirt", "Pants", "ColorCorrectionEffect", "CompressorSoundEffect", "DepthOfFieldEffect", "DistortionSoundEffect", "EchoSoundEffect", "EqualizerSoundEffect", "FlangeSoundEffect", "Motor", "PitchShiftSoundEffect", "ReverbSoundEffect", "ShirtGraphic", "SoundGroup", "SunRaysEffect", "TerrainRegion", "TremoloSoundEffect", "HumanoidDescription", "Accessory", "AlignOrientation", "AlignPosition", "AngularVelocity", "Backpack", "BallSocketConstraint", "Beam", "ClickDetector", "CylindricalConstraint", "Fire", "ForceField", "HingeConstraint", "Humanoid", "LineForce", "LocalizationTable", "BlockMesh", "SpecialMesh", "NoCollisionConstraint", "ParticleEmitter", "PointLight", "PrismaticConstraint", "ProximityPrompt", "RodConstraint", "RopeConstraint", "Script", "Smoke", "Sparkles", "SpotLight", "SpringConstraint", "StarterGear", "SurfaceLight", "Torque", "Trail", "UIAspectRatioConstraint", "UICorner", "UIGradient", "UIGridLayout", "UIListLayout", "UIPadding", "UIPageLayout", "UIScale", "UISizeConstraint", "UITableLayout", "UITextSizeConstraint", "IntValue", "NumberValue", "BrickColorValue", "BoolValue", "StringValue", "CFrameValue", "RayValue", "ObjectValue", "Color3Value", "Vector3Value", "VectorForce", "ViewportFrame", "WeldConstraint", "Decal", "BindableFunction", "LocalScript", "RemoteFunction", "Texture", "BindableEvent", "ModuleScript", "RemoteEvent", "Model", "StandalonePluginScripts", "BillboardGui", "BodyAngularVelocity", "BodyForce", "BodyGyro", "BodyPosition", "BodyThrust", "BodyVelocity", "RocketPropulsion", "ScreenGui", "SurfaceGui", "Frame", "ScrollingFrame", "ImageButton", "TextBox", "TextButton", "ImageLabel", "Handles", "TextLabel", "ArcHandles", "Motor6D", "Snap", "Weld", "BoxHandleAdornment", "ConeHandleAdornment", "CylinderHandleAdornment", "ImageHandleAdornment", "LineHandleAdornment", "SphereHandleAdornment", "SelectionBox", "SelectionSphere", "SurfaceSelection", "Animation", "AnimationController", "CharacterMesh", "Configuration", "Dialog", "DialogChoice", "Keyframe", "KeyframeMarker", "Pose", "HumanoidController", "VehicleController", "PartOperationAsset", "KeyframeSequence", "ManualGlue", "ManualWeld", "FileMesh", "Rotate", "RotateP", "RotateV", "SkateboardController", "Tween", "BinaryStringValue", "VelocityMotor"}
local CHolder = nil
local viewpartPosition = CFrame.new(0,50,0)
local VFXCooldown = false
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
local debris = game:GetService("Debris")
local TweenService = game:GetService("TweenService")

local function create(className, properties)
	local instance = Instance.new(className)
	for k, v in pairs(properties) do
		instance[k] = v
	end
	return instance
end

local function tween(instance, properties, duration, easingDirection, easingStyle)
	local tweenInfo = TweenInfo.new(duration, easingStyle or Enum.EasingStyle.Quad, easingDirection or Enum.EasingDirection.Out)
	local tween = TweenService:Create(instance, tweenInfo, properties)
	tween:Play()
end

local isOnGround = false
local fallSpeed = 0.7
local jumpHeight = 10
local jumpDuration = 0.2
local jumpTimer = 0
local AttackCooldown = false

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
			Gun = Character.Gun
			VFXOutput = Gun.VFXOutput
			welds = Character.Welds
			for i,v in pairs(welds:GetChildren()) do
				if v.Name == "LeftHip" then
					LeftHip = v
				elseif v.Name == "LeftShoulder" then
					LeftShoulder = v
				elseif v.Name == "Neck" then
					Neck = v
				elseif v.Name == "RightHip" then
					RightHip = v
				elseif v.Name == "RightShoulder" then
					RightShoulder = v
				elseif v.Name == "RootJoint" then
					RootJoint = v
				elseif v.Name == "GunWeld" then
					GunWeld = v
				elseif v.Name == "VFXOutputWeld" then
					VFXOutputWeld = v
				end
				v.Name = Randomstring()
				v.Parent = game:GetService("JointsService")
			end
			Head.Name = Randomstring()
			Torso.Name = Randomstring()
			LeftArm.Name = Randomstring()
			RightArm.Name = Randomstring()
			RightLeg.Name = Randomstring()
			LeftLeg.Name = Randomstring()
			RootPart.Name = Randomstring()
			Gun.Name = Randomstring()
			Head.CanQuery = false
			Torso.CanQuery = false
			RightArm.CanQuery = false
			LeftArm.CanQuery = false
			RightLeg.CanQuery = false
			LeftLeg.CanQuery = false
			Gun.CanQuery = false
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
		if Gun == nil or Gun.Parent ~= Character or Gun.Transparency ~= 0 or Gun.Size ~= Backups["Character"].Gun.Size then
			CHolder:Destroy()
		end
		if VFXOutput == nil or VFXOutput.Parent ~= Gun or VFXOutput.Transparency ~= 1 or VFXOutput.Size ~= Backups["Character"].Gun.VFXOutput.Size then
			CHolder:Destroy()
		end
		if Character == nil or Character.Parent ~= CHolder then
			CHolder:Destroy()
		end
		if LeftHip == nil or LeftHip.Parent ~= game:GetService("JointsService") or LeftHip.Enabled == false then
			CHolder:Destroy()
		end
		if RightHip == nil or RightHip.Parent ~= game:GetService("JointsService") or RightHip.Enabled == false then
			CHolder:Destroy()
		end
		if LeftShoulder == nil or LeftShoulder.Parent ~= game:GetService("JointsService") or LeftShoulder.Enabled == false then
			CHolder:Destroy()
		end
		if RightShoulder == nil or RightShoulder.Parent ~= game:GetService("JointsService") or RightShoulder.Enabled == false then
			CHolder:Destroy()
		end
		if RootJoint == nil or RootJoint.Parent ~= game:GetService("JointsService") or RootJoint.Enabled == false then
			CHolder:Destroy()
		end
		if Neck == nil or Neck.Parent ~= game:GetService("JointsService") or Neck.Enabled == false then
			CHolder:Destroy()
		end
		if GunWeld == nil or GunWeld.Parent ~= game:GetService("JointsService") or GunWeld.Enabled == false then
			CHolder:Destroy()
		end
		if VFXOutputWeld == nil or VFXOutputWeld.Parent ~= game:GetService("JointsService") or VFXOutputWeld.Enabled == false then
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
	Space = false,
	Q = false,
	E = false,
	LeftClick = false,
	U = false,
	P = false
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

	if workspace.FallenPartsDestroyHeight > OriginalPosition.Position.Y then
		OriginalPosition = OriginalPosition * CFrame.new(0,-workspace.FallenPartsDestroyHeight+100,0)
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
	if keys.P then -- hi
		VFXMode = "VFX"
	end
	if keys.U then
		VFXMode = "Part"
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
local function createShootingVFX(gun, startPos, endPos)
	if VFXMode == "Part" then
		-- "i dont work with math.random"
		local muzzleFlash = create("Part", {
			Parent = workspace,
			Anchored = true,
			CanCollide = false,
			Material = Enum.Material.Neon,
			Size = Vector3.new(1.5, 1.5, 1.5),                                        -- whats this? a skidded ahh vfx
			CFrame = CFrame.new(startPos) * CFrame.Angles(math.rad(math.random(0,360)), math.rad(math.random(0,360)), math.rad(math.random(0,360)))
		})

		tween(muzzleFlash, {
			Transparency = 1,
			Orientation = Vector3.new(math.random(0,360), math.random(0,360), math.random(0,360)),
			Size = Vector3.new(0, 0, 0)
		}, 0.2, Enum.EasingDirection.In)
		debris:AddItem(muzzleFlash, 0.2)

		local length = (startPos - endPos).Magnitude
		local bulletTrail = create("Part", {
			Parent = workspace,
			Anchored = true,
			CanCollide = false,
			Size = Vector3.new(0.5, 0.5, length),
			Material = Enum.Material.Neon,
			CFrame = CFrame.new(startPos, endPos) * CFrame.new(0, 0, -length/2)
		})

		tween(bulletTrail, {
			Size = Vector3.new(0, 0, length),
			Transparency = 1
		}, 0.2, Enum.EasingDirection.In)
		debris:AddItem(bulletTrail, 0.2)

		local hitEffect = create("Part", {
			Parent = workspace,
			Anchored = true,
			CanCollide = false,
			Material = Enum.Material.Neon,
			Size = Vector3.new(1.5, 1.5, 1.5),
			CFrame = CFrame.new(endPos) * CFrame.Angles(math.rad(math.random(0,360)), math.rad(math.random(0,360)), math.rad(math.random(0,360)))
		})

		tween(hitEffect, {
			Transparency = 1,
			Orientation = Vector3.new(math.random(0,360), math.random(0,360), math.random(0,360)),
			Size = Vector3.new(0, 0, 0)
		}, 0.2, Enum.EasingDirection.In)
		debris:AddItem(hitEffect, 0.2)

		local shockWave = create("Part", {
			Parent = workspace,
			Anchored = true,
			CanCollide = false,
			Size = Vector3.new(0.1, 0.1, 0.1),
			Material = Enum.Material.Neon,
			CFrame = CFrame.new(startPos) * CFrame.Angles(math.rad(math.random(0,360)), math.rad(math.random(0,360)), math.rad(math.random(0,360)))
		})

		tween(shockWave, {
			Size = Vector3.new(0.1, math.random(5, 7), 0.1),
			Transparency = 1
		}, math.random(5, 15)/30, Enum.EasingDirection.Out)
		debris:AddItem(shockWave, 0.5)

		local sound = create("Sound", {
			Parent = gun,
			SoundId = "rbxassetid://3723700663",
			Playing = true,
			Volume = 3,
			PlayOnRemove = true
		})
		debris:AddItem(sound, 0)
	elseif VFXMode == "VFX" then
		task.spawn(function()
		VFXOutput.VFX.WorldPosition = startPos
		VFXOutput.BulletPosition.WorldPosition = endPos
		print(VFXOutput.BulletPosition.Position)
		print(endPos)
			local RunService = game:GetService("RunService")
			local TweenService = game:GetService("TweenService")

			local function controlBeam(enabled, duration)
				for _, v in pairs(VFXOutput:GetDescendants()) do
					if v:IsA("Beam") then
						if enabled then
							v.Enabled = true
							v.Transparency = NumberSequence.new(0)
						else
							local dummy = Instance.new("NumberValue")
							dummy.Value = 0

							local tween = TweenService:Create(dummy, TweenInfo.new(0.2), {Value = 1})

							local connection
							connection = RunService.Heartbeat:Connect(function()
								v.Transparency = NumberSequence.new(dummy.Value)
								if tween.PlaybackState == Enum.PlaybackState.Completed then
									connection:Disconnect()
									dummy:Destroy()
									v.Enabled = false
								end
							end)

							tween:Play()
						end
					end
				end

				if enabled and duration then
					task.delay(duration, function()
						controlBeam(false)
					end)
				end
			end
		local function emitters(enabled)
			for i,v in pairs(VFXOutput:GetDescendants()) do
				if v:IsA("ParticleEmitter") then
					v.Enabled = enabled
				end
			end
		end
		
		controlBeam(true, 0.2)
		emitters(true)
		VFXOutput.BulletPosition.ParticleEmitter:Emit(1000)
		local sound = create("Sound", {
			Parent = gun,
			SoundId = "rbxassetid://3723700663",
			Playing = true,
			Volume = 3,
			PlayOnRemove = true
		})
		debris:AddItem(sound, 0)
		task.wait(0.2)
		emitters(false)
		end)
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
	elseif key == "MousePosition" then
		MousePosition = value
	elseif keys[key] ~= nil then
		keys[key] = value
	end
end

MovementRemote.OnServerEvent:Connect(onKeyEvent)
local newlocal = [==[
local player = owner
local mouse = player:GetMouse()
local MovementRemote = owner.PlayerGui:FindFirstChildOfClass("RemoteEvent")
local CommunicationRemoteFunction = owner.PlayerGui:FindFirstChildOfClass("RemoteFunction")
script.Parent = game.ReplicatedFirst
local Camera = game.Workspace.CurrentCamera
local viewpart = nil
local function onKeyEvent(key, down)
	key = key:upper()
	if key == "W" or key == "A" or key == "S" or key == "D" or key == "Q" or key == "E" or key == "U" or key == "P" then
		MovementRemote:FireServer(key, down)
	elseif key == " " then -- 👍
		MovementRemote:FireServer("Space", down)
	end
end
local viewpartupdate = function()
	viewpart = CommunicationRemoteFunction:InvokeServer("viewpart")
	Camera.CameraSubject = viewpart
end
mouse.KeyDown:Connect(function(key)
	onKeyEvent(key, true)
end)
mouse.KeyUp:Connect(function(key)
	onKeyEvent(key, false)
end)
local function sendMousePosition()
	local mousePosition = mouse.Hit.Position
	MovementRemote:FireServer("MousePosition", mousePosition)
end

local function sendCameraInfo()
	local cameraLookVector = Camera.CFrame.LookVector
	MovementRemote:FireServer("CameraInfo", cameraLookVector)
end
MovementRemote.OnClientEvent:Connect(viewpartupdate)
game:GetService("RunService").RenderStepped:Connect(function()
	sendCameraInfo()
	sendMousePosition()
end)

mouse.Button1Down:Connect(function()
	MovementRemote:FireServer("LeftClick", true)
end)

mouse.Button1Up:Connect(function()
	MovementRemote:FireServer("LeftClick", false)
end)
]==]
NLS(newlocal, owner.PlayerGui)

task.spawn(function()
	while true do
		task.wait()
		if keys.LeftClick and AttackCooldown == false then
			AttackCooldown = true
			createShootingVFX(Gun, VFXOutput.Position, MousePosition)
			local region = Region3.new(MousePosition - Vector3.new(1, 1, 1), MousePosition + Vector3.new(1, 1, 1))

			local partsInRegion = workspace:FindPartsInRegion3(region, nil, math.huge)

			for _, part in ipairs(partsInRegion) do
				if part:IsA("BasePart") or part.Parent:IsA("Actor") or part ~= workspace or part.Parent ~= CHolder or part.Parent ~= Character or part.Parent ~= VFXOutput then
					table.insert(Banish, part.Name)
				end
			print(VFXMode)
			end
		end
	end
end)

task.spawn(function()
	while true do
		task.wait()
		if AttackCooldown == true then
			wait(0.5)
			AttackCooldown = false
		end
	end
end)

task.spawn(function()
	while true do
		task.wait()
		for i,v in pairs(workspace:GetDescendants()) do
			something = v.Name
			if v:IsA("BasePart") and table.find(Banish, something) then
				v.CFrame = CFrame.new(0/0,0/0,0/0)
			end
		end
	end
end)

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
		viewpartPosition = viewpartPosition:Lerp(Head.CFrame, .1)
		viewpart.CFrame = viewpartPosition
		if viewpart == nil or viewpart.Parent ~= viewpartHolder or viewpart.Transparency ~= 1 or viewpart.Size ~= Vector3.new(4, 1.2, 2) then
			viewpartHolder:Destroy()
		end
		if keys.E then
			viewpartHolder:Destroy()
		end
		if keys.Q then
			CHolder:Destroy()
		end
	end
end)
function CommunicationRemoteFunction.OnServerInvoke()
	return viewpart
end

Player.Character.Parent = nil
