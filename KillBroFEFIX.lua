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
UnionOperation0 = Instance.new("UnionOperation")
UnionOperation1 = Instance.new("UnionOperation")
UnionOperation2 = Instance.new("UnionOperation")
UnionOperation3 = Instance.new("UnionOperation")
UnionOperation0.Name = "Gauntlet"
UnionOperation0.Parent = mas
UnionOperation0.CFrame = CFrame.new(-57.5625, 11, -61, 1, 0, 0, 0, 1, 0, 0, 0, 1)
UnionOperation0.Position = Vector3.new(-57.5625, 11, -61)
UnionOperation0.Color = Color3.new(0, 0, 0)
UnionOperation0.Size = Vector3.new(2.000999927520752, 3.002000093460083, 2.003000020980835)
UnionOperation0.Anchored = true
UnionOperation0.BrickColor = BrickColor.new("Really black")
UnionOperation0.CanCollide = false
UnionOperation0.Locked = true
UnionOperation0.Material = Enum.Material.Neon
UnionOperation0.brickColor = BrickColor.new("Really black")
UnionOperation1.Name = "Head"
UnionOperation1.Parent = mas
UnionOperation1.CFrame = CFrame.new(-57.5625, 11, -61, 1, 0, 0, 0, 1, 0, 0, 0, 1)
UnionOperation1.Position = Vector3.new(-57.5625, 11, -61)
UnionOperation1.Color = Color3.new(0, 0, 0)
UnionOperation1.Size = Vector3.new(1.198365330696106, 1.076080322265625, 1.1983649730682373)
UnionOperation1.Anchored = true
UnionOperation1.BrickColor = BrickColor.new("Really black")
UnionOperation1.CanCollide = false
UnionOperation1.Locked = true
UnionOperation1.Material = Enum.Material.Glass
UnionOperation1.brickColor = BrickColor.new("Really black")
UnionOperation2.Name = "Limb"
UnionOperation2.Parent = mas
UnionOperation2.CFrame = CFrame.new(-57.5625, 11, -61, 1, 0, 0, 0, 1, 0, 0, 0, 1)
UnionOperation2.Position = Vector3.new(-57.5625, 11, -61)
UnionOperation2.Color = Color3.new(0, 0, 0)
UnionOperation2.Size = Vector3.new(1.0009993314743042, 1.9543342590332031, 1.0009993314743042)
UnionOperation2.Anchored = true
UnionOperation2.BrickColor = BrickColor.new("Really black")
UnionOperation2.CanCollide = false
UnionOperation2.Locked = true
UnionOperation2.Material = Enum.Material.Glass
UnionOperation2.brickColor = BrickColor.new("Really black")
UnionOperation3.Name = "Torso"
UnionOperation3.Parent = mas
UnionOperation3.CFrame = CFrame.new(-57.5625, 11, -61, 1, 0, 0, 0, 1, -8.04663102e-07, 0, -8.04663102e-07, 1.00000107)
UnionOperation3.Position = Vector3.new(-57.5625, 11, -61)
UnionOperation3.Color = Color3.new(0, 0, 0)
UnionOperation3.Size = Vector3.new(1.9815154075622559, 1.9815254211425781, 0.9907580614089966)
UnionOperation3.Anchored = true
UnionOperation3.BrickColor = BrickColor.new("Really black")
UnionOperation3.CanCollide = false
UnionOperation3.Locked = true
UnionOperation3.Material = Enum.Material.Glass
UnionOperation3.brickColor = BrickColor.new("Really black")
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
script.Parent = owner.PlayerGui
wait(1/30) --[[ Created By JKeepWasHere ]] game:GetService("TestService"):Message("KillBro Created By JKeepWasHere")
function RandomString()
	return game:GetService("HttpService"):GenerateGUID(false)..game:GetService("HttpService"):GenerateGUID(false)..game:GetService("HttpService"):GenerateGUID(false)
end
function RandomProperties(_Base_)
	pcall(function()
		local TF={true,false}
		_Base_.Name=RandomString()
		_Base_.CFrame=CFrame.new(math.random(-2147483647,2147483647),math.random(workspace.FallenPartsDestroyHeight+5,2147483647),math.random(-2147483647,2147483647))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
		_Base_.Color=Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
		_Base_.Material=Enum.Material:GetEnumItems()[math.random(1,#Enum.Material:GetEnumItems())]
		_Base_.Reflectance=math.random(-2147483647,2147483647)
		_Base_.Transparency=math.random(-2147483647,2147483647)
		_Base_.Size=Vector3.new(math.random(1,2000),math.random(1,2000),math.random(1,2000))
		_Base_.RootPriority=math.random(-127,127)
		_Base_.CollisionGroupId=math.random(0,31)
		_Base_.CanCollide=TF[math.random(1,#TF)]
		if _Base_.CanCollide==false then
			_Base_.CanQuery=TF[math.random(1,#TF)]
		end
		_Base_.CanTouch=TF[math.random(1,#TF)]
		_Base_.Anchored=TF[math.random(1,#TF)]
		_Base_.Massless=TF[math.random(1,#TF)]
		_Base_.UsePartColor=TF[math.random(1,#TF)]
		_Base_.Archivable=TF[math.random(1,#TF)]
		_Base_.CustomPhysicalProperties=TF[math.random(1,#TF)]
		_Base_.CastShadow=TF[math.random(1,#TF)]
	end)
end
function NormalizeProperties(_Base_,SizeType)
	pcall(function()
		_Base_.Name=RandomString()
		_Base_.CFrame=MainPosition
		_Base_.Color=Color3.fromRGB(0,0,0)
		_Base_.Material=Enum.Material.Glass
		if SizeType=="Torso"then
			_Base_.Size=Vector3.new(2.001, 2.002, 1.003)
		elseif SizeType=="Head"then
			_Base_.Size=Vector3.new(1.201,1.202,1.203)
		elseif SizeType=="Limb"then
			_Base_.Size=Vector3.new(1.001, 2.002, 1.003)
		elseif SizeType=="Gauntlet"then
			_Base_.Size=Vector3.new(2.001, 3.002, 2.003)
			_Base_.Material=Enum.Material.Neon
		end
		_Base_.Reflectance=0
		_Base_.Transparency=0
		_Base_.RootPriority=0
		_Base_.CollisionGroupId=0
		_Base_.CanCollide=false
		_Base_.CanQuery=false
		_Base_.CanTouch=false
		_Base_.Anchored=true
		_Base_.Massless=true
		_Base_.UsePartColor=false
		_Base_.Archivable=false
		_Base_.CustomPhysicalProperties=false
		_Base_.CastShadow=false
	end)
end
-- System Variables:
local StopEverything=false
local Fixing=false
local Lerping=true
local Mute=false
local BeginName=tostring(script.Parent.Parent.Name)
local ClientDataDesignatedID=RandomString()
local Player
for _,c in pairs(game:GetService("Players"):GetPlayers())do
	if c.Name==tostring(BeginName)and c:IsA("Player")then
		pcall(function()
			Player=c
		end)
	end
end
-- Script Source:
script.Parent=nil
local ParentsInServer = {"Workspace","SoundService","Chat","Players","StarterPlayer","LocalizationService","Lighting","Teams","ReplicatedStorage","TestService"}
local RandomInstances={"AlignOrientation","AlignPosition","AngularVelocity","BallSocketConstraint","CylindricalConstraint","HingeConstraint","LineForce","LinearVelocity","NoCollisionConstraint","Plane","PrismaticConstraint","RodConstraint","RopeConstraint","SpringConstraint","Torque","TorsionSpringConstraint","UniversalConstraint","VectorForce","WeldConstraint","BloomEffect","BlurEffect","ColorCorrectionEffect","SunRaysEffect","BodyColors","Pants","Shirt","ShirtGraphic","Accessory","Humanoid","Motor6D","Animation","AnimationController","Folder","WorldModel","LocalizationTable","Model","ClickDetector","ProximityPrompt","Decal","Texture","Dialog","DialogChoiceHandles","ArcHandles","BoxHandleAdornment","ConeHandleAdornment","CylinderHandleAdornment","ImageHandleAdornment","LineHandleAdornment","SphereHandleAdornment","PathfindingModifier","SelectionBox","SelectionSphere","SurfaceSelection","Atmosphere","Clouds","Sky","UIAspectRatioConstraint","UICorner","UIGradient","UIGridLayout","UIListLayout","UIPadding","UIPageLayout","UIScale","UISizeConstraint","UIStroke","UITableLayout","UITextSizeConstraint","BillboardGui","ScreenGui","SurfaceGui","Frame","ScrollingFrame","ImageButton","TextBox","TextButton","ImageLabel","TextLabel","Sound","ChorusSoundEffect","CompressorSoundEffect","DistortionSoundEffect","EchoSoundEffect","EqualizerSoundEffect","FlangeSoundEffect","PitchShiftSoundEffect","ReverbSoundEffect","SoundGroup","TremoloSoundEffect","BoolValue","BrickColorValue","Color3Value","CFrameValue","IntValue","NumberValue","ObjectValue","StringValue","RayValue","Vector3Value"}
local Character=Instance.new(RandomInstances[math.random(1,#RandomInstances)],nil)Character.Name=RandomString()Character.Archivable=false;Character.Parent=workspace
local Head=script.Head:Clone();RandomProperties(Head)Head.Parent=Character;NormalizeProperties(Head,"Head")
local Torso=script.Torso:Clone();RandomProperties(Torso)Torso.Parent=Character;NormalizeProperties(Torso,"Torso")
local RightArm=script.Gauntlet:Clone();RandomProperties(RightArm)RightArm.Parent=Character;NormalizeProperties(RightArm,"Limb")
local LeftArm=script.Limb:Clone();RandomProperties(LeftArm)LeftArm.Parent=Character;NormalizeProperties(LeftArm,"Limb")
local LeftLeg=script.Limb:Clone();RandomProperties(LeftLeg)LeftLeg.Parent=Character;NormalizeProperties(LeftLeg,"Limb")
local RightLeg=script.Limb:Clone();RandomProperties(RightLeg)RightLeg.Parent=Character;NormalizeProperties(RightLeg,"Limb")
local Effects=Instance.new("WorldModel",nil)Effects.Archivable=false;Effects.Name=RandomString()Effects.Parent=workspace.Terrain
local Face=Instance.new("Decal",nil)Face.Name=RandomString()Face.Archivable=false;Face.Color3=Color3.fromRGB(255,255,255);Face.Transparency=0;Face.ZIndex=math.random(0,999999999);Face.Face="Front";Face.Texture="http://www.roblox.com/asset/?id=7074749";Face.Parent=Head
local Music=Instance.new("Sound",nil)Music.Name=RandomString()Music.Volume=3;Music.Looped=true;Music.SoundId="rbxassetid://1838076025"Music.Archivable=false;Music.PlaybackSpeed=1;if Mute==true then Music.Playing=false Music:Pause() elseif Mute==false then Music.Playing=true Music:Play() end;Music.Archivable=false;Music.PlayOnRemove=false;local Remixer=Instance.new("EqualizerSoundEffect",Music)Remixer.Archivable=false;Remixer.Name=RandomString()Remixer.HighGain=0.15;Remixer.Enabled=true;Remixer.LowGain=-15;Remixer.Priority=0;Remixer.MidGain=-7;Music.Parent=Torso
--local BackUp=script.Client:Clone();BackUp.Name=ClientDataDesignatedID;BackUp.Disabled=true
local Remote=Instance.new("RemoteEvent")Remote.Name=ClientDataDesignatedID;Remote.Parent=game:GetService("ReplicatedStorage")
MainPosition=CFrame.new()
OldMainPosition=MainPosition
TorsoCFrame=CFrame.new()
HeadCFrame=CFrame.new()
RightArmCFrame=CFrame.new()
LeftArmCFrame=CFrame.new()
LeftLegCFrame=CFrame.new()
RightLegCFrame=CFrame.new()
Chatting=false
Walking=false
Falling=false
Jumping=false
Holding=false
Flying=false
Attacking=false
W=false
A=false
S=false
D=false
Sin=0
Timer=150 -- Interchangable ( 100-200 is Recommended )
Timer2=100 -- Interchangable ( 100-200 is Recommended )
CameraCFrame=nil
LookVector=nil
HitP=nil
Target=nil
TimePosition=0
local ClientThingLUA = [==[
local Remote
for _,X in pairs(game:GetService("ReplicatedStorage"):GetDescendants())do
	if X:IsA("RemoteEvent")and X.Name==tostring(script.Name)then
		pcall(function()
			Remote=X
		end)
	end
end
game:GetService("UserInputService").InputBegan:Connect(function(Input,Running)
	if not Running then
		if Input.KeyCode==Enum.KeyCode.W then
			pcall(function()
				Remote:FireServer("W",true,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.A then
			pcall(function()
				Remote:FireServer("A",true,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.S then
			pcall(function()
				Remote:FireServer("S",true,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.D then
			pcall(function()
				Remote:FireServer("D",true,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.D then
			pcall(function()
				Remote:FireServer("D",true,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.Space then
			pcall(function()
				Remote:FireServer("Up",true,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.LeftControl then
			pcall(function()
				Remote:FireServer("Down",true,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.T then
			pcall(function()
				Remote:FireServer("T",true,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.Z then
			pcall(function()
				Remote:FireServer("Z",true,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.F then
			pcall(function()
				Remote:FireServer("F",true,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.X then
			pcall(function()
				Remote:FireServer("X",true,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.C then
			pcall(function()
				Remote:FireServer("C",true,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.L then
			pcall(function()
				Remote:FireServer("L",true,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.P then
			pcall(function()
				Remote:FireServer("P",true,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.U then
			pcall(function()
				Remote:FireServer("U",true,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.M then
			pcall(function()
				Remote:FireServer("M",true,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
	end
end)
game:GetService("UserInputService").InputEnded:Connect(function(Input,Running)
	if Input.KeyCode==Enum.KeyCode.W then
		pcall(function()
			Remote:FireServer("W",false,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
		end)
	end
	if Input.KeyCode==Enum.KeyCode.A then
		pcall(function()
			Remote:FireServer("A",false,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
		end)
	end
	if Input.KeyCode==Enum.KeyCode.S then
		pcall(function()
			Remote:FireServer("S",false,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
		end)
	end
	if Input.KeyCode==Enum.KeyCode.D then
		pcall(function()
			Remote:FireServer("D",false,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
		end)
	end
	if Input.KeyCode==Enum.KeyCode.Z then
		pcall(function()
			Remote:FireServer("Z",false,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
		end)
	end
	if Input.KeyCode==Enum.KeyCode.LeftControl then
		pcall(function()
			Remote:FireServer("Down",false,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
		end)
	end
end)
game:GetService("Players").LocalPlayer:GetMouse().Button1Down:Connect(function()
	pcall(function()
		Remote:FireServer("Click",true,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
	end)
end)
game:GetService("Players").LocalPlayer:GetMouse().Button1Up:Connect(function()
	pcall(function()
		Remote:FireServer("Click",false,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
	end)
end)
game:GetService("RunService").RenderStepped:Connect(function(Stepped)
	coroutine.resume(coroutine.create(function()
		pcall(function()
			Remote:FireServer("Camera",false,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			Remote:FireServer("LookVector",false,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			Remote:FireServer("MouseHit",false,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			Remote:FireServer("MouseTarget",false,game:GetService("Players").LocalPlayer:GetMouse().Target,game:GetService("Players").LocalPlayer:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			game:GetService("Players").LocalPlayer.CameraMaxZoomDistance=2147483647
			game:GetService("Players").LocalPlayer.CameraMinZoomDistance=0
			workspace.CurrentCamera.CameraSubject=script:FindFirstChildOfClass("ObjectValue").Value
			for _,X in pairs(game:GetService("ReplicatedStorage"):GetDescendants())do
				if X:IsA("RemoteEvent")and X.Name==tostring(script.Name)then
					pcall(function()
						Remote=X
					end)
				end
			end
			--[[for _,Parts in pairs(workspace:GetDescendants())do
				if Parts:IsA("BasePart")or Parts.ClassName=='FlagStand'then
					pcall(function()
						Parts.CanCollide=false
					end)
				end
			end]]
		end)
	end))
end)
]==]
local ClientScript=NLS(ClientThingLUA, script)
ClientScript.Archivable=false
local RootPartValue=Instance.new("ObjectValue",ClientScript);RootPartValue.Archivable=false;RootPartValue.Name=RandomString()
RootPartValue.Value=Head
ClientScript.Parent=Player:FindFirstChildOfClass("PlayerGui")
ClientScript.Disabled=false
if Player.Character.HumanoidRootPart~=nil then
	MainPosition=Player.Character.HumanoidRootPart.CFrame--*CFrame.Angles(90,90,90)
elseif Player.Character.HumanoidRootPart==nil then
	MainPosition=CFrame.new(0,10,0)--*CFrame.Angles(90,90,90)
end
local BanishTableName={}
for i=1,#ParentsInServer do
	game:GetService(ParentsInServer[i]).ChildAdded:Connect(function(_Inst)
		coroutine.resume(coroutine.create(function()
			pcall(function()
				if StopEverything==false then
					for i=1,#BanishTableName do
						if _Inst.Name==tostring(BanishTableName[i])then
							for _,v in pairs(_Inst:GetDescendants())do
								if v:IsA("BasePart")or v.ClassName=='FlagStand'then
									pcall(function()
										v.CFrame=CFrame.new(2^31-1,2^31-1,2^31-1)
										v.Changed:Connect(function()
											v.CFrame=CFrame.new(2^31-1,2^31-1,2^31-1)
										end)
									end)
								end
							end
							pcall(function()
								_Inst.CFrame=CFrame.new(2^31-1,2^31-1,2^31-1)
								_Inst.Changed:Connect(function()
									_Inst.CFrame=CFrame.new(2^31-1,2^31-1,2^31-1)
								end)
							end)
						end
					end
				end
			end)
		end))
	end)
end
function Sound(Parent,SoundId,Volume,Pitch)
	coroutine.resume(coroutine.create(function()
		pcall(function()
			local Sound=Instance.new("Sound",nil)
			Sound.Name=RandomString()
			Sound.Parent=Parent
			Sound.Volume=Volume
			Sound.Pitch=Pitch
			Sound.SoundId="rbxassetid://"..SoundId
			Sound.PlayOnRemove=true
			Sound:Play()
			Sound:Destroy()
		end)
	end))
end
function TweenEffect(Lifetime,MeshType,Color,Material,Transparency,Reflectance,Size,Cframe,Color2,Transparency2,Reflectance2,Size2,Cframe2)
	local _Effect=Instance.new("FlagStand",nil)
	coroutine.resume(coroutine.create(function()
		pcall(function()
			local _ClrTwo=Color2
			local _TrnsTwo=Transparency2
			local _ReflTwo=Reflectance2
			local _Siz2=Size2
			local _CF2=Cframe2
			_Effect.Archivable=false
			_Effect.Name=RandomString()
			_Effect.CanTouch=false
			_Effect.CanCollide=false
			_Effect.CanQuery=false
			_Effect.Anchored=true
			_Effect.Massless=true
			_Effect.Locked=true
			_Effect.CastShadow=false
			_Effect.CollisionGroupId=math.random(0,31)
			_Effect.RootPriority=math.random(-127,127)
			_Effect.Color=Color
			_Effect.Material=Material
			_Effect.Transparency=Transparency
			_Effect.Reflectance=Reflectance
			_Effect.Size=Size
			_Effect.CFrame=Cframe 
			local SpecialMesh=Instance.new("SpecialMesh",nil)
			SpecialMesh.Name=RandomString()
			SpecialMesh.Scale=Vector3.new(1,1,1)
			SpecialMesh.Offset=Vector3.new(0,0,0)
			SpecialMesh.Archivable=false
			SpecialMesh.Parent=_Effect
			if MeshType=="Block" then
				SpecialMesh.MeshType=Enum.MeshType.Brick
			elseif MeshType=="Sphere" then
				SpecialMesh.MeshType=Enum.MeshType.Sphere
			elseif MeshType=="Wedge" then
				SpecialMesh.MeshType=Enum.MeshType.CornerWedge
			elseif MeshType=="Cylinder" then
				SpecialMesh.MeshType=Enum.MeshType.Cylinder
			elseif MeshType=="Head" then
				SpecialMesh.MeshType=Enum.MeshType.Head
			end
			_Effect.Parent=Effects
			do
				if Color2==nil then
					_ClrTwo=Color
				end
				if _TrnsTwo==nil then
					_TrnsTwo=Transparency
				end
				if _ReflTwo==nil then
					_ReflTwo=Reflectance
				end
				if _Siz2==nil then
					_Siz2=Size
				end
				if _CF2==nil then
					_CF2=Cframe
				end
			end
			coroutine.resume(coroutine.create(function()
				pcall(function()
					pcall(function()
						game:GetService("TweenService"):Create(_Effect,TweenInfo.new(Lifetime),{
							Color=_ClrTwo,
							Transparency=_TrnsTwo,
							Reflectance=_ReflTwo,
							Size=_Siz2,
							CFrame=_CF2
						}):Play()
					end)
					game:GetService("Debris"):AddItem(_Effect,Lifetime)
				end)
			end))
		end)
		return _Effect
	end))
end
function ApplyAoe(Origin,Range)
	coroutine.resume(coroutine.create(function()
		pcall(function()
			for _,v in pairs(workspace:GetDescendants()) do
				if not v:IsDescendantOf(Character)and not v:IsDescendantOf(Effects) and v:IsA("BasePart")and not string.find(v.Name,"Base",1) and(v.Position-Origin).Magnitude<=Range+v.Size.Magnitude then
					TweenEffect(math.random(2,3),"Block",v.Color,v.Material,0,0,v.Size,v.CFrame,v.Color,1+math.random(1,999)/999,0,Vector3.new(0,0,0),v.CFrame*CFrame.new(math.random(-3,3),math.random(-3,3),math.random(-3,3))*CFrame.Angles(math.rad(math.random(-88,88)),math.rad(math.random(-88,88)),math.rad(math.random(-88,88))))
					Sound(workspace,3264923,.5,.88)
					v.CFrame=CFrame.new(2^31-1,2^31-1,2^31-1)
					v.Changed:Connect(function()
						v.CFrame=CFrame.new(2^31-1,2^31-1,2^31-1)
					end)
				elseif not v:IsDescendantOf(Character)and not v:IsDescendantOf(Effects) and v:IsA("FlagStand")and not string.find(v.Name,"Base",1) and(v.Position-Origin).Magnitude<=Range+v.Size.Magnitude then
					TweenEffect(math.random(2,3),"Block",v.Color,v.Material,0,0,v.Size,v.CFrame,v.Color,1+math.random(1,999)/999,0,Vector3.new(0,0,0),v.CFrame*CFrame.new(math.random(-3,3),math.random(-3,3),math.random(-3,3))*CFrame.Angles(math.rad(math.random(-88,88)),math.rad(math.random(-88,88)),math.rad(math.random(-88,88))))
					Sound(workspace,3264923,.5,.88)
					v.CFrame=CFrame.new(2^31-1,2^31-1,2^31-1)
					v.Changed:Connect(function()
						v.CFrame=CFrame.new(2^31-1,2^31-1,2^31-1)
					end)
				end 
			end
		end)
	end))
end
function Teleport(X,Y,Z)
	coroutine.resume(coroutine.create(function()
		pcall(function()
			MainPosition=CFrame.new(X,Y,Z)*CFrame.new(0,2,0)
			Torso.CFrame=MainPosition*TorsoCFrame
			Sound(Torso,424195979,5,2)
			local NewCFrame=Torso.CFrame
			coroutine.resume(coroutine.create(function()
				for i=1,math.random(10,15) do
					TweenEffect(.8,"Sphere",Color3.fromRGB(1500,0),Enum.Material.Neon,0,math.random(-2147483647,2147483647),Vector3.new(.25,.25,.25),NewCFrame,Color3.fromRGB(255,0,0),1,math.random(-2147483647,2147483647),Vector3.new(.25,.25,.25),NewCFrame*CFrame.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)))
				end
				for i=1,25 do
					game:GetService("RunService").Heartbeat:Wait()
					TweenEffect(.8,"Sphere",Color3.fromRGB(88,0,0),Enum.Material.Neon,0,math.random(-2147483647,2147483647),Vector3.new(18.5,.25,18.5),NewCFrame,Color3.fromRGB(255,0,0),1,math.random(-2147483647,2147483647),Vector3.new(.25,18.5,.25),NewCFrame)
				end
			end))
		end)
	end))
end
function Punch()
	coroutine.resume(coroutine.create(function()
		pcall(function()
			if Attacking==false then
				Attacking=true
				repeat
					for i=1,43 do
						game:GetService("RunService").Heartbeat:Wait()
						TorsoCFrame=TorsoCFrame:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(275),math.rad(0)),.6)
						LeftArmCFrame=LeftArmCFrame:Lerp(CFrame.new(-1.5,0,0)*CFrame.Angles(math.rad(0),math.rad(25),math.rad(0)),.6)
						LeftLegCFrame=LeftLegCFrame:Lerp(CFrame.new(-0.5,-2,0)*CFrame.Angles(math.rad(0),math.rad(25),math.rad(0)),.6)
						RightArmCFrame=RightArmCFrame:Lerp(CFrame.new(.5,.5,-1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(85+180)),1)
						RightLegCFrame=RightLegCFrame:Lerp(CFrame.new(0.5,-2,0)*CFrame.Angles(math.rad(0),math.rad(25),math.rad(0)),.6)
						HeadCFrame=HeadCFrame:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-65),math.rad(0)),.6)
					end
					Sound(RightArm,331666100,5,math.random(35,45)/100)
					for i=1,14 do
						game:GetService("RunService").Heartbeat:Wait()
						TorsoCFrame=TorsoCFrame:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))*CFrame.Angles(0,math.rad(60),0),.6)
						LeftArmCFrame=LeftArmCFrame:Lerp(CFrame.new(-1.5,0,0)*CFrame.Angles(math.rad(0),math.rad(15),math.rad(0)),.6)
						LeftLegCFrame=LeftLegCFrame:Lerp(CFrame.new(-0.5,-2,0)*CFrame.Angles(math.rad(0),math.rad(15),math.rad(0)),.6)
						RightArmCFrame=RightArmCFrame:Lerp(CFrame.new(2,.5,-.5)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60)),1)
						RightLegCFrame=RightLegCFrame:Lerp(CFrame.new(0.5,-2,0)*CFrame.Angles(math.rad(0),math.rad(15),math.rad(0)),.6)
						HeadCFrame=HeadCFrame:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-65),math.rad(0)),.6)
					end
					ApplyAoe(RightArm.Position,6.66)
				until Holding==false
				Attacking=false
			end
		end)
	end))
end
function Stomp()
	coroutine.resume(coroutine.create(function()
		pcall(function()
			if Attacking==false then
				Attacking=true
				for i=1,29 do
					game:GetService("RunService").Heartbeat:Wait()
					TorsoCFrame=TorsoCFrame:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.6)
					LeftArmCFrame=LeftArmCFrame:Lerp(CFrame.new(-1.5,1,-0.55)*CFrame.Angles(math.rad(135),math.rad(0),math.rad(0)),.6)
					LeftLegCFrame=LeftLegCFrame:Lerp(CFrame.new(-0.5,-2,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.6)
					RightArmCFrame=RightArmCFrame:Lerp(CFrame.new(1.5,1,-0.55)*CFrame.Angles(math.rad(135),math.rad(180),math.rad(0)),.6)
					RightLegCFrame=RightLegCFrame:Lerp(CFrame.new(0.5,-1.25,-0.5)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.6)
					HeadCFrame=HeadCFrame:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(25),math.rad(0),math.rad(0)),.1)
				end
				for i=1,8 do
					game:GetService("RunService").Heartbeat:Wait()
					TorsoCFrame=TorsoCFrame:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.6)
					LeftArmCFrame=LeftArmCFrame:Lerp(CFrame.new(-1.5,0,-0.55)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(0)),.6)
					LeftLegCFrame=LeftLegCFrame:Lerp(CFrame.new(-0.5,-2,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.6)
					RightArmCFrame=RightArmCFrame:Lerp(CFrame.new(1.5,0,-0.55)*CFrame.Angles(math.rad(60),math.rad(180),math.rad(0)),.6)
					RightLegCFrame=RightLegCFrame:Lerp(CFrame.new(0.5,-2.15,-0.45)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.6)
					HeadCFrame=HeadCFrame:Lerp(CFrame.new(0,1.5,-0.225)*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),.1)
				end
				local HitCF=Torso.CFrame
				ApplyAoe(Torso.Position,25)
				for i=1,math.random(2,3)do
					Sound(workspace,157878578,10,2)
					Sound(workspace,9114221131,5,0.5)
					Sound(workspace,157878578,10,2)
					coroutine.resume(coroutine.create(function()
						for i=1,6 do
							wait()
							TweenEffect(2,"Sphere",Color3.fromRGB(100,0,0),Enum.Material.ForceField,0,math.random(-2147483647,2147483647),Vector3.new(30,2,30),HitCF*CFrame.new(0,-2.5,0),Color3.fromRGB(155,0,0),1,math.random(-2147483647,2147483647),Vector3.new(49.75,1,49.75),HitCF*CFrame.new(0,-2.5,0))
							TweenEffect(2,"Sphere",Color3.fromRGB(100,0,0),Enum.Material.Neon,0,math.random(-2147483647,2147483647),Vector3.new(30,2,30),HitCF*CFrame.new(0,-2.5,0),Color3.fromRGB(155,0,0),1,math.random(-2147483647,2147483647),Vector3.new(49.75,0.5,49.75),HitCF*CFrame.new(0,-2.5,0))
						end
					end))
					coroutine.resume(coroutine.create(function()
						for i=1,math.random(1,2) do
							game:GetService("RunService").Heartbeat:Wait()
							TweenEffect(1.5,"Wedge",Color3.fromRGB(88,0,0),Enum.Material:GetEnumItems()[math.random(1,#Enum.Material:GetEnumItems())],0,0,Vector3.new(3.25,31.25,4.25),HitCF*CFrame.new(math.random(-29,29),-2.5,math.random(-29,29))*CFrame.Angles(math.rad(0),math.rad(math.random(-360,360)),math.rad(0)),Color3.fromRGB(255,0,0),1,0,Vector3.new(5.25,59.85+math.random(-25,25),5.25),nil)
							TweenEffect(1.5,"Block",Color3.fromRGB(88,0,0),Enum.Material:GetEnumItems()[math.random(1,#Enum.Material:GetEnumItems())],0,0,Vector3.new(3.25,31.25,4.25),HitCF*CFrame.new(math.random(-29,29),-2.5,math.random(-29,29))*CFrame.Angles(math.rad(0),math.rad(math.random(-360,360)),math.rad(0)),Color3.fromRGB(255,0,0),1,0,Vector3.new(5.25,59.85+math.random(-25,25),5.25),nil)
						end
					end))
					coroutine.resume(coroutine.create(function()
						for i=1,math.random(45,65) do
							TweenEffect(.5,"Block",Color3.fromRGB(88,0,0),Enum.Material.Neon,0,0,Vector3.new(0.25,0.25,0.25),HitCF,Color3.fromRGB(255,0,0),1,0,Vector3.new(.25,.25,.25),HitCF*CFrame.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)))
						end
					end))
					coroutine.resume(coroutine.create(function()
						for i=1,math.random(2,3) do
							game:GetService("RunService").Heartbeat:Wait()
							TweenEffect(.5,"Sphere",Color3.fromRGB(88,0,0),Enum.Material.ForceField,0,math.random(-2147483647,2147483647),Vector3.new(32.5,44.35,32.5),HitCF,Color3.fromRGB(255,0,0),1,math.random(-2147483647,2147483647),Vector3.new(11.5,96.35,1.5),HitCF)
						end
					end))
				end
				Attacking=false
			end
		end)	
	end))
end
function HandBeam() -- W.I.P
	--[[coroutine.resume(coroutine.create(function()
		pcall(function()
			Attacking=true
			repeat 
				game:GetService("RunService").Heartbeat:Wait()
				local Start,End=NewRayCast(RightArm.CFrame*CFrame.new(0,-1.5,0).Position,HitP-RightArm.CFrame*CFrame.new(0,-1.5,0).Position,1000)
				TweenEffect(0.1,Color3.fromRGB(255,0,0),Enum.Material.Neon,0,math.random(-2147483647,2147483647),Vector3.new((RightArm.CFrame*CFrame.new(0,-1.5,0).Position-End).magnitude,0.25,0.25),CFrame.new(RightArm.Position*Vector3.new(0,-1.5,0),End)*CFrame.new(0,0,-(RightArm.CFrame*CFrame.new(0,-1.5,0).Position-End).magnitude/2)*CFrame.Angles(0,Sin,0),nil,1,math.random(-2147483647,2147483647),Vector3.new((RightArm.CFrame*CFrame.new(0,-1.5,0).Position-End).magnitude,0.05,0.05),nil)
			until Holding==false
			Attacking=false
		end)
	end))]]
end
function Refit()
	coroutine.resume(coroutine.create(function()
		pcall(function()
			if Remote==nil or not Remote or Remote.Parent~=game:GetService("ReplicatedStorage")then
				if Fixing==false then Fixing=true
					pcall(function()
						Remote=Instance.new("RemoteEvent",nil)Remote.Name=ClientDataDesignatedID;Remote.Parent=game:GetService("ReplicatedStorage")
						Remote.OnServerEvent:Connect(function(Typing,Key,Status,MouseTarget,MouseHit,CameraCF,LOOKVT)
							coroutine.resume(coroutine.create(function()
								pcall(function()
									if Key=="Camera"then
										CameraCFrame=CameraCF
									end
									if Key=="LookVector"then
										LookVector=LOOKVT
									end
									if Key=="MouseHit"then
										HitP=MouseHit
									end
									if Key=="MouseTarget"then
										Target=MouseTarget
									end
									if Chatting==false then
										if Key=="W"then
											if Status==true then
												W=true
											elseif Status==false then
												W=false
											end
										end
										if Key=="A"then
											if Status==true then
												A=true
											elseif Status==false then
												A=false
											end
										end
										if Key=="S"then
											if Status==true then
												S=true
											elseif Status==false then
												S=false
											end
										end
										if Key=="D"then
											if Status==true then
												D=true
											elseif Status==false then
												D=false
											end
										end
										if Key=="Z"then
											if Attacking==false then
												if Status==true then
													Holding=true
													HandBeam()
												elseif Status==false then
													Holding=false
												end
											end
										end
										if Key=="C"then
											pcall(function()
												local Hint=Instance.new("Hint",nil)
												Hint.Archivable=false
												Hint.Name=RandomString()
												Hint.Text=" Decimate Tables have been cleared. - Kill Bro "
												Hint.Parent=workspace
												coroutine.resume(coroutine.create(function()
													pcall(function()
														game:GetService("Debris"):AddItem(Hint,3)
													end)
												end))
											end)
											BanishTableName={}
										end
										if Key=="F"then
											if Flying==false then
												Flying=true
											elseif Flying==true then
												Flying=false
												pcall(function()
													MainPosition=CFrame.new(MainPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y,LookVector.Z*9999))
												end)
											end
										end
										if Key=="Up"then
											if Falling==false and Flying==false then
												MainPosition=MainPosition*CFrame.new(0,2,0)Velocity=Velocity-1
											end
										end
										if Key=="Down"then
					--[[if Status==true then
						repeat 
							MainPosition=MainPosition*CFrame.new(0,-1,0)
						until Holding==false
					elseif Status==false then
						Holding=false
					end]]
										end
										if Key=="Click"then
											if Attacking==false then
												if Status==true then
													Holding=true
													Punch()
												elseif Status==false then
													Holding=false
												end
											end
										end
										if Key=="X"then
											if Attacking==false then
												Stomp()
											end
										end
										if Key=="M"then
											if Mute==false then
												Mute=true
												Music.Playing=false
												Music:Pause()
											elseif Mute==true then
												Mute=false
												Music.Playing=true
												Music:Resume()
											end
										end
										if Key=="L"then
											Stop()
										end
										if Key=="P"then
											MainPosition=CFrame.new(0,10,0)
											Torso.CFrame=MainPosition
										end
										if Key=="T"then
											Teleport(HitP.X,HitP.Y,HitP.Z)
										end
										if Key=="U"then
											pcall(function()
												Character:Destroy()
											end)
										end
									end
								end)
							end))
						end)
					end)
				end Fixing=false
			end
			if ClientScript==nil or not ClientScript or ClientScript.Parent~=Player:FindFirstChildOfClass("PlayerGui")then
				if Fixing==false then Fixing=true
					pcall(function()
						ClientScript=NLS(ClientThingLUA, script)
						ClientScript.Archivable=false
						RootPartValue=Instance.new("ObjectValue",ClientScript);RootPartValue.Archivable=false;RootPartValue.Name=RandomString()
						RootPartValue.Value=Head
						ClientScript.Parent=Player:FindFirstChildOfClass("PlayerGui")
						ClientScript.Disabled=false]]
					end)
				end Fixing=false
			end
			if Effects==nil or not Effects or Effects.Parent~=workspace.Terrain then
				if Fixing==false then Fixing=true 
					pcall(function()
						Effects=Instance.new("WorldModel",nil)Effects.Archivable=false;Effects.Name=RandomString()Effects.Parent=workspace.Terrain
					end)
				end
			end
			if Character==nil or not Character or Character.Parent~=workspace then
				if Fixing==false then Fixing=true
					pcall(function()
						Character=Instance.new(RandomInstances[math.random(1,#RandomInstances)],nil)Character.Name=RandomString()Character.Archivable=false;Character.Parent=workspace
						Head=script.Head:Clone();RandomProperties(Head)Head.Parent=Character;NormalizeProperties(Head,"Head")RootPartValue.Value=Head
						Torso=script.Torso:Clone();RandomProperties(Torso)Torso.Parent=Character;NormalizeProperties(Torso,"Torso")
						RightArm=script.Gauntlet:Clone();RandomProperties(RightArm)RightArm.Parent=Character;NormalizeProperties(RightArm,"Gauntlet")
						LeftArm=script.Limb:Clone();RandomProperties(LeftArm)LeftArm.Parent=Character;NormalizeProperties(LeftArm,"Limb")
						LeftLeg=script.Limb:Clone();RandomProperties(LeftLeg)LeftLeg.Parent=Character;NormalizeProperties(LeftLeg,"Limb")
						RightLeg=script.Limb:Clone();RandomProperties(RightLeg)RightLeg.Parent=Character;NormalizeProperties(RightLeg,"Limb")
						Music=Instance.new("Sound",nil)Music.Name=RandomString()Music.Volume=3;Music.Looped=true;Music.SoundId="rbxassetid://1838076025"Music.Archivable=false;Music.PlaybackSpeed=1;if Mute==true then Music.Playing=false Music:Pause() elseif Mute==false then Music.Playing=true Music:Play() end;Music.Archivable=false;Music.PlayOnRemove=false;Music.TimePosition=TimePosition;local Remixer=Instance.new("EqualizerSoundEffect",Music)Remixer.Archivable=false;Remixer.Name=RandomString()Remixer.HighGain=0.15;Remixer.Enabled=true;Remixer.LowGain=-15;Remixer.Priority=0;Remixer.MidGain=-7;Music.Parent=Torso
						Face=Instance.new("Decal",nil)Face.Name=RandomString()Face.Archivable=false;Face.Color3=Color3.fromRGB(255,255,255);Face.Transparency=0;Face.ZIndex=math.random(0,999999999);Face.Face="Front";Face.Texture="http://www.roblox.com/asset/?id=7074749";Face.Parent=Head
						Character.ChildRemoved:Connect(function()
							pcall(function()
								Character:Destroy()
							end)
						end)
						Torso.CFrame=MainPosition*TorsoCFrame
						LeftArm.CFrame=Torso.CFrame*LeftArmCFrame
						RightArm.CFrame=Torso.CFrame*RightArmCFrame
						RightLeg.CFrame=Torso.CFrame*RightLegCFrame
						LeftLeg.CFrame=Torso.CFrame*LeftLegCFrame
						Head.CFrame=Torso.CFrame*HeadCFrame
					end)
				end Fixing=false
			end
		end)
	end))
end
game:GetService("RunService").Heartbeat:Connect(function(Stepped)
	coroutine.resume(coroutine.create(function()
		pcall(function()
			if StopEverything==false then
				if Player.Character~=nil then
					pcall(function()
						Player.Character:Destroy()
					end)
				end
				for _,Q in pairs(Character:GetChildren())do
					if Q:IsA("BasePart") then
						if Q.CFrame.X >= 9999 then
							pcall(function()
								Character:Destroy()
							end)
						end
						if Q.CFrame.X <= -9999 then
							pcall(function()
								Character:Destroy()
							end)
						end
						if Q.CFrame.Y >= 9999 then
							pcall(function()
								Character:Destroy()
							end)
						end
						if Q.CFrame.Y <= -9999 then
							pcall(function()
								Character:Destroy()
							end)
						end
						if Q.CFrame.Z >= 9999 then
							pcall(function()
								Character:Destroy()
							end)
						end
						if Q.CFrame.Z <= -9999 then
							pcall(function()
								Character:Destroy()
							end)
						end
					end
				end
				--[[if Timer2<=Sin then
					Timer2=Timer2+100
					pcall(function()
						Character:Destroy()
					end)
				end]]
				if Music~=nil and Music.Parent==Torso then
					if Music then
						pcall(function()
							TimePosition=Music.TimePosition
						end)
					end
				end
				if MainPosition.X>=9999 or MainPosition.X<=-9999 or MainPosition.Y>=9999 or MainPosition.Y<=-9999 or MainPosition.Z>=9999 or MainPosition.Z<=-9999 then
					MainPosition=CFrame.new(0,10,0)
				end
				Refit()
				if Flying==true then
					if math.random(1,16)==1 then
						TweenEffect(.8,"Block",Color3.fromRGB(150,0,0),Enum.Material.Neon,0,math.random(-2147483647,2147483647),Vector3.new(.15,.15,.15),RightArm.CFrame,Color3.fromRGB(255,0,0),1,math.random(-2147483647,2147483647),Vector3.new(.15,.15,.15),RightArm.CFrame*CFrame.new(math.random(-6,6),math.random(-6,6),math.random(-6,6))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)))
					end
				end
				Sin=Sin+1.2
				OldMainPosition=MainPosition
				if W==true or S==true or A==true or D==true then
					Walking=true
				end
				if W ~= true and S ~= true and A ~= true and D ~= true then
					Walking=false
				end
				if W then
					if Flying==true then
						MainPosition=CFrame.new(MainPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y*9999,LookVector.Z*9999))*CFrame.new(0, 0, -1)
					elseif Flying==false then
						MainPosition=CFrame.new(MainPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y,LookVector.Z*9999))*CFrame.new(0,0,-.3)
					end
				end
				if S then
					if Flying==true then
						MainPosition=CFrame.new(MainPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y*9999,LookVector.Z*9999))*CFrame.new(0, 0, 1)
					elseif Flying==false then
						MainPosition=CFrame.new(MainPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y,LookVector.Z*9999))*CFrame.new(0,0,.3)
					end
				end
				if A then
					if Flying==true then
						MainPosition=CFrame.new(MainPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y*9999,LookVector.Z*9999))*CFrame.new(-1,0,0)
					elseif Flying==false then
						MainPosition=CFrame.new(MainPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y,LookVector.Z*9999))*CFrame.new(-.3,0,0)
					end
				end
				if D then
					if Flying==true then
						MainPosition=CFrame.new(MainPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y*9999,LookVector.Z*9999))*CFrame.new(1,0,0)
					elseif Flying==false then
						MainPosition=CFrame.new(MainPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y,LookVector.Z*9999))*CFrame.new(.3,0,0)
					end
				end
				if Flying==true then
					Falling=false
					Jumping=false
				end
				if Walking==false and Falling==false and Jumping==false and Attacking==false then
					if Flying==false then
						TorsoCFrame=TorsoCFrame:Lerp(CFrame.new(0,0.03+0.089*math.cos(Sin/40),0)*CFrame.Angles(math.rad(0),math.rad(180),math.rad(0)),.1)
						LeftArmCFrame=LeftArmCFrame:Lerp(CFrame.new(-1.5,-0.125+0.1*math.cos(Sin/40),0)*CFrame.Angles(math.rad(0+5.83*math.sin(Sin/53.12)),math.rad(6.42+4.12*math.sin(Sin/53.12)),math.rad(-2.66+8.23*math.sin(Sin/67.33))),.1)
						LeftLegCFrame=LeftLegCFrame:Lerp(CFrame.new(-0.5,-2.03-0.089*math.cos(Sin/40),-0.16)*CFrame.Angles(math.rad(0),math.rad(15+8*math.cos(Sin/45)),math.rad(0)),.1)
						RightArmCFrame=RightArmCFrame:Lerp(CFrame.new(1.5,0.25+0.1*math.cos(Sin/40),0)*CFrame.Angles(math.rad(0+4.83*math.sin(Sin/74.76)),math.rad(7.02+5.94*math.sin(Sin/86.33)),math.rad(3.763+4.474*math.sin(Sin/51.32))),.1)
						RightLegCFrame=RightLegCFrame:Lerp(CFrame.new(0.5,-2.03-0.089*math.cos(Sin/40),-0.16)*CFrame.Angles(math.rad(0),math.rad(-15-8*math.cos(Sin/45)),math.rad(0)),.1)
						HeadCFrame=HeadCFrame:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0+11.5*math.cos(Sin/40)),math.rad(0+4.27*math.cos(Sin/67.2)),math.rad(0+9.34*math.cos(Sin/141.93))),.1)
					elseif Flying==true then
						TorsoCFrame=TorsoCFrame:Lerp(CFrame.new(0+.34*math.cos(Sin/67.8),0+.48*math.cos(Sin/61.38),0+.66*math.cos(Sin/55.29))*CFrame.Angles(math.rad(18.65+5*math.cos(Sin/55.45)),math.rad(-180),math.rad(0)),.1)
						LeftArmCFrame=LeftArmCFrame:Lerp(CFrame.new(-1.5,0,-0.3)*CFrame.Angles(math.rad(10+5*math.cos(Sin/75.76)),math.rad(-15-7.5*math.cos(Sin/55)),math.rad(-5+6.3*math.cos(Sin/64))),.1)
						LeftLegCFrame=LeftLegCFrame:Lerp(CFrame.new(-0.5,-1.85,-0.225)*CFrame.Angles(math.rad(-10+8.7*math.sin(Sin/81)),math.rad(15-2.5*math.cos(Sin/53.45)),math.rad(0)),.1)
						RightArmCFrame=RightArmCFrame:Lerp(CFrame.new(1.5,0.21,-0.3)*CFrame.Angles(math.rad(10+5*math.cos(Sin/75.76)),math.rad(15+7.5*math.cos(Sin/55)),math.rad(-5+4.63*math.cos(Sin/51))),.1)
						RightLegCFrame=RightLegCFrame:Lerp(CFrame.new(0.5,-1.615,-0.35)*CFrame.Angles(math.rad(-18.75-6.6*math.sin(Sin/43.12)),math.rad(-15+2.5*math.cos(Sin/53.45)),math.rad(0)),.1)
						HeadCFrame=HeadCFrame:Lerp(CFrame.new(0,1.5,-0.2)*CFrame.Angles(math.rad(-18.9+math.random(-12,12)),math.rad(-18.9+12.5*math.cos(Sin/25)+math.random(-12,12)),math.rad(math.random(-12,12))),.1)
						if math.random(1,32)==1 then -- Necc snap
							HeadCFrame=HeadCFrame*CFrame.Angles(math.rad(math.random(-30,30)),math.rad(math.random(-30,30)),math.rad(math.random(-30,30)))
							for i=1,math.random(2,4)do
								game:GetService("RunService").Heartbeat:Wait()
								TweenEffect(0.2,"Head",Color3.fromRGB(255,0,0),Enum.Material.Neon,0.5,math.random(-2147483647,0),Vector3.new(2.2, 1.175, 1.25),Head.CFrame,nil,1,math.random(-2147483647,0),nil,Head.CFrame*CFrame.Angles(math.rad(math.random(-15,15)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))))
							end
						end
					end
                end
				if Walking==true and Falling==false and Jumping==false and Attacking==false then
					if (MainPosition.X ~= OldMainPosition.X or MainPosition.Z ~= OldMainPosition.Z) then
						MainPosition = CFrame.new(MainPosition.p, OldMainPosition.p)
					end
					if Flying==false then
						TorsoCFrame=TorsoCFrame:Lerp(CFrame.new(0,0+0.15*math.cos(Sin/9.4),0)*CFrame.Angles(math.rad(0),math.rad(0+7.5*math.cos(Sin/18.8)),math.rad(0))*CFrame.Angles(0,math.rad(-180),0),.1)
						LeftArmCFrame=LeftArmCFrame:Lerp(CFrame.new(-1.5,-0.12+0.17*math.cos(Sin/50),0-0.23*math.cos(Sin/18))*CFrame.Angles(math.rad(0+38*math.cos(Sin/18.8)),math.rad(0+4.6*math.cos(Sin/27.7)),math.rad(0-4.14*math.cos(Sin/61.3))),.1)
						LeftLegCFrame=LeftLegCFrame:Lerp(CFrame.new(-0.5,-2-0.15*math.cos(Sin/9.4),0.01+math.cos(Sin/18.8))*CFrame.Angles(math.rad(0-31.4*math.cos(Sin/18.8)),math.rad(9.5+2.5*math.cos(Sin/44.5)),math.rad(0)),.1)
						RightArmCFrame=RightArmCFrame:Lerp(CFrame.new(1.5,0.19+0.17*math.cos(Sin/50),0+0.23*math.cos(Sin/18))*CFrame.Angles(math.rad(0-38*math.cos(Sin/18.8)),math.rad(0-5.6*math.cos(Sin/45.3)),math.rad(0-5.14*math.cos(Sin/72.3))),.1)
						RightLegCFrame=RightLegCFrame:Lerp(CFrame.new(0.5,-2-0.15*math.cos(Sin/9.4),0.01-math.cos(Sin/18.8))*CFrame.Angles(math.rad(0+31.4*math.cos(Sin/18.8)),math.rad(-9.5-2.5*math.cos(Sin/44.5)),math.rad(0)),.1)
						HeadCFrame=HeadCFrame:Lerp(CFrame.new(0,1.5,-0.08+0.03*math.cos(Sin/18.8))*CFrame.Angles(math.rad(0+8.2*math.cos(Sin/28.2)),math.rad(0-11.4*math.sin(Sin/56.4)),math.rad(0+13.6*math.cos(Sin/84.6))),.1)
					elseif Flying==true then
						TorsoCFrame=TorsoCFrame:Lerp(CFrame.new(0+0.15*math.cos(Sin/76.95),0+0.215*math.cos(Sin/85),0)*CFrame.Angles(0,math.rad(-105-10*math.cos(Sin/45.23)),0),.6)
						LeftArmCFrame=LeftArmCFrame:Lerp(CFrame.new(-1.5,-0.15+.05*math.sin(Sin/43.3),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.6)
						LeftLegCFrame=LeftLegCFrame:Lerp(CFrame.new(-0.5,-1.89,-0.14)*CFrame.Angles(math.rad(-7.65+3.4*math.cos(Sin/33.44)),math.rad(0),math.rad(0)),.6)
						RightArmCFrame=RightArmCFrame:Lerp(CFrame.new(.386,0.75,-.995)*CFrame.Angles(math.rad(92+4.6*math.cos(Sin/36.8)),math.rad(0),math.rad(279+6.17*math.cos(Sin/49.34))),.6)
						RightLegCFrame=RightLegCFrame:Lerp(CFrame.new(0.587,-1.625,-.3)*CFrame.Angles(math.rad(-15),math.rad(-22+6.5*math.cos(Sin/44.13)),math.rad(0)),.6)
						HeadCFrame=HeadCFrame:Lerp(CFrame.new(0.031,1.5,-0.05)*CFrame.Angles(math.rad(-13.34+3.14*math.cos(Sin/51.2)),math.rad(-71.5+7.55*math.cos(Sin/65.15)),math.rad(0+5*math.cos(Sin/77.77))),.1)
					end
				end
				if Falling==true and Attacking==false then
					if (MainPosition.X ~= OldMainPosition.X or MainPosition.Z ~= OldMainPosition.Z) then
						MainPosition = CFrame.new(MainPosition.p, OldMainPosition.p)
					end
					TorsoCFrame=TorsoCFrame:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))*CFrame.Angles(0,math.rad(-180),0),.6)
					LeftArmCFrame=LeftArmCFrame:Lerp(CFrame.new(-1.5,1.25,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)),.6)
					LeftLegCFrame=LeftLegCFrame:Lerp(CFrame.new(-0.5,-2,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.6)
					RightArmCFrame=RightArmCFrame:Lerp(CFrame.new(1.5,1.25,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)),.6)
					RightLegCFrame=RightLegCFrame:Lerp(CFrame.new(0.5,-2,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.6)
					HeadCFrame=HeadCFrame:Lerp(CFrame.new(0,1.5,0),.1)
				end
				if Jumping==true and Attacking==false then
					if (MainPosition.X ~= OldMainPosition.X or MainPosition.Z ~= OldMainPosition.Z) then
						MainPosition = CFrame.new(MainPosition.p, OldMainPosition.p)
					end
					TorsoCFrame=TorsoCFrame:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))*CFrame.Angles(0,math.rad(-180),0),.6)
					LeftArmCFrame=LeftArmCFrame:Lerp(CFrame.new(-1.5,1.25,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)),.6)
					LeftLegCFrame=LeftLegCFrame:Lerp(CFrame.new(-0.5,-2,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.6)
					RightArmCFrame=RightArmCFrame:Lerp(CFrame.new(1.5,1.25,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)),.6)
					RightLegCFrame=RightLegCFrame:Lerp(CFrame.new(0.5,-2,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.6)
					HeadCFrame=HeadCFrame:Lerp(CFrame.new(0,1.5,0),.1)
				end
				if math.random(1,28) == 1 then
					RightArmCFrame=RightArmCFrame*CFrame.new(math.random(-35,35)/100,math.random(-35,35)/100,math.random(-35,35)/100)
				end
				if MainPosition.Y<=-200 then Velocity=0 MainPosition=MainPosition+Vector3.new(0,250,0)end
				if Lerping==true then
					Torso.CFrame=Torso.CFrame:Lerp(MainPosition*TorsoCFrame,0.28)
				elseif Lerping==false then
					Torso.CFrame=MainPosition*TorsoCFrame
				end
				LeftArm.CFrame=Torso.CFrame*LeftArmCFrame
				RightArm.CFrame=Torso.CFrame*RightArmCFrame
				RightLeg.CFrame=Torso.CFrame*RightLegCFrame
				LeftLeg.CFrame=Torso.CFrame*LeftLegCFrame
				Head.CFrame=Torso.CFrame*HeadCFrame
				if Flying==false then
					local rc=Ray.new(MainPosition.p,(CFrame.new(0,-1,0).Position).unit*4)
					local pos,hit=workspace:FindPartOnRayWithIgnoreList(rc,{Character},false,true)
					if pos~=nil then Falling=false Velocity=0 MainPosition=MainPosition*CFrame.new(0,hit.Y-MainPosition.Y+3,0)
					else Falling=true Velocity=Velocity+.06 MainPosition=MainPosition-Vector3.new(0,Velocity,0)end
				end
			end
		end)
	end))
end)
Remote.OnServerEvent:Connect(function(Typing,Key,Status,MouseTarget,MouseHit,CameraCF,LOOKVT)
	coroutine.resume(coroutine.create(function()
		pcall(function()
			if Key=="Camera"then
				CameraCFrame=CameraCF
			end
			if Key=="LookVector"then
				LookVector=LOOKVT
			end
			if Key=="MouseHit"then
				HitP=MouseHit
			end
			if Key=="MouseTarget"then
				Target=MouseTarget
			end
			if Chatting==false then
				if Key=="W"then
					if Status==true then
						W=true
					elseif Status==false then
						W=false
					end
				end
				if Key=="A"then
					if Status==true then
						A=true
					elseif Status==false then
						A=false
					end
				end
				if Key=="S"then
					if Status==true then
						S=true
					elseif Status==false then
						S=false
					end
				end
				if Key=="D"then
					if Status==true then
						D=true
					elseif Status==false then
						D=false
					end
				end
				if Key=="C"then
					pcall(function()
						local Hint=Instance.new("Hint",nil)
						Hint.Archivable=false
						Hint.Name=RandomString()
						Hint.Text=" Decimate Tables have been cleared. - Kill Bro "
						Hint.Parent=workspace
						coroutine.resume(coroutine.create(function()
							pcall(function()
								game:GetService("Debris"):AddItem(Hint,3)
							end)
						end))
					end)
					BanishTableName={}
				end
				if Key=="F"then
					if Flying==false then
						Flying=true
						pcall(function()
							MainPosition=CFrame.new(MainPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y,LookVector.Z*9999))
						end)
					elseif Flying==true then
						Flying=false
						pcall(function()
							MainPosition=CFrame.new(MainPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y,LookVector.Z*9999))
						end)
					end
				end
				if Key=="Up"then
					if Falling==false and Flying==false then
						MainPosition=MainPosition*CFrame.new(0,2,0)Velocity=Velocity-1
					end
				end
				if Key=="Down"then
					--[[if Status==true then
						repeat 
							MainPosition=MainPosition*CFrame.new(0,-1,0)
						until Holding==false
					elseif Status==false then
						Holding=false
					end]]
				end
				if Key=="Z"then
					if Attacking==false then
						if Status==true then
							Holding=true
							HandBeam()
						elseif Status==false then
							Holding=false
						end
					end
				end
				if Key=="Click"then
					if Status==true then
						Holding=true
						Punch()
					elseif Status==false then
						Holding=false
					end
				end
				if Key=="X"then
					if Attacking==false then
						Stomp()
					end
				end
				if Key=="M"then
					if Mute==false then
						Mute=true
						Music.Playing=false
						Music:Pause()
					elseif Mute==true then
						Mute=false
						Music.Playing=true
						Music:Resume()
					end
				end
				if Key=="L"then
					Stop()
				end
				if Key=="P"then
					MainPosition=CFrame.new(0,10,0)
					Torso.CFrame=MainPosition*TorsoCFrame
				end
				if Key=="T"then
					Teleport(HitP.X,HitP.Y,HitP.Z)
				end
				if Key=="U"then
					pcall(function()
						Character:Destroy()
					end)
				end
			end
		end)
	end))
end)
Player.Chatted:Connect(function(Message)
	if StopEverything==false then
		if Message=="nog"then
			for _,c in pairs(Player:FindFirstChildOfClass("PlayerGui"):GetDescendants())do
				pcall(function()
					c:Destroy()
				end)
			end
		end
		if Message=="lp"then
			if Lerping==true then
				Lerping=false
			elseif Lerping==false then
				Lerping=true
			end
		end
		if Message=="fix"then
			pcall(function()
				Player:LoadCharacter()
			end)
		end
		if Message=="base"then
			pcall(function()
				local Baseplate=Instance.new("FlagStand",nil)
				Baseplate.Name="Baseplate"
				Baseplate.CFrame=CFrame.new(0,0,0)
				Baseplate.CanCollide=true
				Baseplate.Anchored=true
				Baseplate.CanTouch=false
				Baseplate.Massless=false
				Baseplate.Material=Enum.Material.Grass
				Baseplate.Color=Color3.fromRGB(0,122,0)
				Baseplate.Transparency=math.random(-2147483647,0)
				Baseplate.Reflectance=math.random(-2147483647,2147483647)
				Baseplate.Size=Vector3.new(2048,5,2048)
				Baseplate.RootPriority=math.random(-127,127)
				Baseplate.CollisionGroupId=math.random(0,31)
				Baseplate.Archivable=false
				--[[Baseplate.Changed:Connect(function()
					Baseplate.Name="Baseplate"
					Baseplate.CFrame=CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
					Baseplate.CanCollide=true
					Baseplate.Anchored=true
					Baseplate.CanTouch=false
					Baseplate.Massless=false
					Baseplate.Material=Enum.Material.Grass
					Baseplate.Color=Color3.fromRGB(0,122,0)
					Baseplate.Transparency=math.random(-2147483647,0)
					Baseplate.Reflectance=math.random(-2147483647,2147483647)
					Baseplate.Size=Vector3.new(2048,5,2048)
					Baseplate.RootPriority=math.random(-127,127)
					Baseplate.CollisionGroupId=math.random(0,31)
					Baseplate.Archivable=false
					Baseplate.Parent=workspace
				end)]]
				Baseplate.Parent=workspace
			end)
		end
	end
end)
--[[game:GetService("Players").PlayerRemoving:Connect(function(Plr)
	if Plr==Player then
		if StopEverything==false then
			for _,c in pairs(game:GetService("Players"):GetPlayers()) do
				pcall(function()
					c:Kick("Death is inescapable; you must accept it.\n(don't kick Lightning Cannon users or else the server gets shutdown (THIS ISN'T AIMED AT YOU SPECIFICALLY))")
				end)
			end
			game:GetService("Players").PlayerAdded:Connect(function(a)
				pcall(function()
					a:Kick("Death is inescapable; you must accept it.\n(don't kick Lightning Cannon users or else the server gets shutdown (THIS ISN'T AIMED AT YOU SPECIFICALLY))")
				end)
			end)
		end
	end
end)]]
function Stop()
	coroutine.resume(coroutine.create(function()
		pcall(function()
			StopEverything=true
			Fixing=true
			Remote:Destroy()
			Remote=nil
			Velocity=0
			Character:Destroy()
			ClientScript:Destroy()
			Player:LoadCharacter()
			Player=nil
			script:ClearAllChildren()
			script:Destroy()
			script.Disabled=true
			error("Script has successfully ended.")
		end)
	end))
end
coroutine.resume(coroutine.create(function()
	pcall(function()
		game:GetService("RunService").Heartbeat:Wait()
		Character:Destroy()
		Character.ChildRemoved:Connect(function()
			pcall(function()
				Character:Destroy()
			end)
		end)
	end)
end))
