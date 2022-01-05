
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
Script0 = Instance.new("Script")
StringValue1 = Instance.new("StringValue")
ModuleScript2 = Instance.new("ModuleScript")
LocalScript3 = Instance.new("LocalScript")
ObjectValue4 = Instance.new("ObjectValue")
ModuleScript5 = Instance.new("ModuleScript")
ModuleScript6 = Instance.new("ModuleScript")
LocalScript7 = Instance.new("LocalScript")
ObjectValue8 = Instance.new("ObjectValue")
NumberValue9 = Instance.new("NumberValue")
NumberValue10 = Instance.new("NumberValue")
NumberValue11 = Instance.new("NumberValue")
NumberValue12 = Instance.new("NumberValue")
NumberValue13 = Instance.new("NumberValue")
LocalScript14 = Instance.new("LocalScript")
ObjectValue15 = Instance.new("ObjectValue")
LocalScript16 = Instance.new("LocalScript")
ObjectValue17 = Instance.new("ObjectValue")
LocalScript18 = Instance.new("LocalScript")
ObjectValue19 = Instance.new("ObjectValue")
LocalScript20 = Instance.new("LocalScript")
ObjectValue21 = Instance.new("ObjectValue")
LocalScript22 = Instance.new("LocalScript")
ObjectValue23 = Instance.new("ObjectValue")
Model24 = Instance.new("Model")
Part25 = Instance.new("Part")
MeshPart26 = Instance.new("MeshPart")
MeshPart27 = Instance.new("MeshPart")
MeshPart28 = Instance.new("MeshPart")
UnionOperation29 = Instance.new("UnionOperation")
UnionOperation30 = Instance.new("UnionOperation")
UnionOperation31 = Instance.new("UnionOperation")
Weld32 = Instance.new("Weld")
Weld33 = Instance.new("Weld")
Weld34 = Instance.new("Weld")
Weld35 = Instance.new("Weld")
Weld36 = Instance.new("Weld")
Weld37 = Instance.new("Weld")
Part38 = Instance.new("Part")
MeshPart39 = Instance.new("MeshPart")
MeshPart40 = Instance.new("MeshPart")
MeshPart41 = Instance.new("MeshPart")
UnionOperation42 = Instance.new("UnionOperation")
Weld43 = Instance.new("Weld")
Weld44 = Instance.new("Weld")
Weld45 = Instance.new("Weld")
Weld46 = Instance.new("Weld")
Part47 = Instance.new("Part")
MeshPart48 = Instance.new("MeshPart")
MeshPart49 = Instance.new("MeshPart")
MeshPart50 = Instance.new("MeshPart")
UnionOperation51 = Instance.new("UnionOperation")
Weld52 = Instance.new("Weld")
Weld53 = Instance.new("Weld")
Weld54 = Instance.new("Weld")
Weld55 = Instance.new("Weld")
Part56 = Instance.new("Part")
SpecialMesh57 = Instance.new("SpecialMesh")
Decal58 = Instance.new("Decal")
MeshPart59 = Instance.new("MeshPart")
Decal60 = Instance.new("Decal")
MeshPart61 = Instance.new("MeshPart")
MeshPart62 = Instance.new("MeshPart")
MeshPart63 = Instance.new("MeshPart")
Decal64 = Instance.new("Decal")
UnionOperation65 = Instance.new("UnionOperation")
Weld66 = Instance.new("Weld")
Weld67 = Instance.new("Weld")
Weld68 = Instance.new("Weld")
Weld69 = Instance.new("Weld")
Weld70 = Instance.new("Weld")
Part71 = Instance.new("Part")
Motor6D72 = Instance.new("Motor6D")
Part73 = Instance.new("Part")
Motor6D74 = Instance.new("Motor6D")
Motor6D75 = Instance.new("Motor6D")
Motor6D76 = Instance.new("Motor6D")
UnionOperation77 = Instance.new("UnionOperation")
UnionOperation78 = Instance.new("UnionOperation")
UnionOperation79 = Instance.new("UnionOperation")
UnionOperation80 = Instance.new("UnionOperation")
UnionOperation81 = Instance.new("UnionOperation")
UnionOperation82 = Instance.new("UnionOperation")
UnionOperation83 = Instance.new("UnionOperation")
Weld84 = Instance.new("Weld")
Weld85 = Instance.new("Weld")
Weld86 = Instance.new("Weld")
Weld87 = Instance.new("Weld")
Weld88 = Instance.new("Weld")
Weld89 = Instance.new("Weld")
Weld90 = Instance.new("Weld")
Motor6D91 = Instance.new("Motor6D")
Motor6D92 = Instance.new("Motor6D")
Part93 = Instance.new("Part")
MeshPart94 = Instance.new("MeshPart")
MeshPart95 = Instance.new("MeshPart")
MeshPart96 = Instance.new("MeshPart")
UnionOperation97 = Instance.new("UnionOperation")
UnionOperation98 = Instance.new("UnionOperation")
UnionOperation99 = Instance.new("UnionOperation")
Weld100 = Instance.new("Weld")
Weld101 = Instance.new("Weld")
Weld102 = Instance.new("Weld")
Weld103 = Instance.new("Weld")
Weld104 = Instance.new("Weld")
Weld105 = Instance.new("Weld")
BoolValue106 = Instance.new("BoolValue")
ScreenGui107 = Instance.new("ScreenGui")
Frame108 = Instance.new("Frame")
ImageLabel109 = Instance.new("ImageLabel")
ImageLabel110 = Instance.new("ImageLabel")
Frame111 = Instance.new("Frame")
Frame112 = Instance.new("Frame")
Frame113 = Instance.new("Frame")
Frame114 = Instance.new("Frame")
ImageLabel115 = Instance.new("ImageLabel")
TextLabel116 = Instance.new("TextLabel")
ScreenGui117 = Instance.new("ScreenGui")
ImageLabel118 = Instance.new("ImageLabel")
LocalScript119 = Instance.new("LocalScript")
BoolValue120 = Instance.new("BoolValue")
ScreenGui121 = Instance.new("ScreenGui")
ImageLabel122 = Instance.new("ImageLabel")
LocalScript123 = Instance.new("LocalScript")
ScreenGui124 = Instance.new("ScreenGui")
Frame125 = Instance.new("Frame")
TextLabel126 = Instance.new("TextLabel")
TextLabel127 = Instance.new("TextLabel")
TextLabel128 = Instance.new("TextLabel")
TextLabel129 = Instance.new("TextLabel")
TextLabel130 = Instance.new("TextLabel")
TextLabel131 = Instance.new("TextLabel")
TextLabel132 = Instance.new("TextLabel")
TextLabel133 = Instance.new("TextLabel")
TextLabel134 = Instance.new("TextLabel")
TextLabel135 = Instance.new("TextLabel")
Script0.Name = "KC"
Script0.Parent = mas
table.insert(cors,sandbox(Script0,function()
-->Made By XDavodioX<--
 
--=(Category = Fun, Fair(Kinda), Action, Slow, Fighting)=--
 
--:King Crimson:--
 
--//Unknown\\--

--[[
	Big credit to Player_57 for the Table Sorting code on the Effect!
	Please give them a follow!
--]]

script:WaitForChild("Stand")
script:WaitForChild("ClientSound")
script:WaitForChild("KCCharacter")
script:WaitForChild("KCCleaner")
script:WaitForChild("KCParts")
script:WaitForChild("MoveList")
script:WaitForChild("ClockGui")
script:WaitForChild("EffectGui")
script:WaitForChild("LeapGui")
script:WaitForChild("KCTransparentChar")
script:WaitForChild("KCPlayerTransparency")
script:WaitForChild("FeModule")
local OriginalStand = script["Stand"]:Clone()
local OriginalKCChar = script["KCCharacter"]:Clone()
local OriginalKCParts = script["KCParts"]:Clone()
local OriginalCleaner = script["KCCleaner"]:Clone()
local OriginalGui = script["EffectGui"]:Clone()
local OriginalLeap = script["LeapGui"]:Clone()
local OriginalTranspanrencyScript = script["KCTransparentChar"]:Clone()
local OriginalTranspanrencyCleaner = script["KCPlayerTransparency"]:Clone()
wait(0.25)
script["Stand"]:Destroy()

require(script.FeModule)()

local StandName = "King Crimson"
local ModelCreator = "UNLOCKED_USERb556"

local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
local Character = Player.Character
local Root = Character.HumanoidRootPart
local LArm = Character:FindFirstChild("Left Arm") or Character:FindFirstChild("LeftUpperArm")
local LLeg = Character:FindFirstChild("Left Leg") or Character:FindFirstChild("LeftUpperLeg")
local RArm = Character:FindFirstChild("Right Arm") or Character:FindFirstChild("RightUpperArm")
local RLeg = Character:FindFirstChild("Right Leg") or Character:FindFirstChild("RightUpperLeg")
local Torso = Character:FindFirstChild("Torso") or Character:FindFirstChild("UpperTorso")
local Head = Character.Head
local Hum = Character:FindFirstChildOfClass("Humanoid")
local RJ = Root:FindFirstChild("RootJoint") or Torso:FindFirstChild("Waist")
local LAJ = Torso:FindFirstChild("Left Shoulder") or LArm:FindFirstChild("LeftShoulder")
local LLJ = Torso:FindFirstChild("Left Hip") or LLeg:FindFirstChild("LeftHip")
local RAJ = Torso:FindFirstChild("Right Shoulder") or RArm:FindFirstChild("RightShoulder")
local RLJ = Torso:FindFirstChild("Right Hip") or RLeg:FindFirstChild("RightHip")
local Neck = Torso:FindFirstChild("Neck") or Head:FindFirstChild("Neck")

local MoveList = script["MoveList"]
MoveList.Parent = Player:FindFirstChildOfClass("PlayerGui")
MoveList.Enabled = true
local Clock = script["ClockGui"]
Clock.Parent = Player:FindFirstChildOfClass("PlayerGui")
Clock.Enabled = false

script.Name = Player.Name.."'s "..StandName

warn("Huge Credit to "..ModelCreator.." for the "..StandName.." Model! \nGo check them out!")
warn("Big Credit to Player_57 for being so kind on giving me their Bubble Table Sorting code!")

local AttackSpeed = 0.85
local Sine = 0

local CurrentStand = nil
local TimeEraseSeconds = 7 -- Time Erase Time - In seconds, just normal numbers no .2 stuff
local Move = false
local BarrageDown = false
local Anim = "Idle"
local TimeErased = false
local UpperCut = false
local NormalPunch = false
local StarFingerMove = false
local PunchAfterBarrage = false
local AllowClockMovment = false
local ClockTime = 0
local HasEpitaph = false
local StandUsers = {
	Player
}

local AnimDefaults = {
	["head"] = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
	["head1"] = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
	["tors"] = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
	["tors0"] = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
	["rarm"] = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
	["rarm1"] = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
	["larm"] = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	["larm1"] = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	["rleg"] = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
	["rleg1"] = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
	["lleg"] = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
	["lleg1"] = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
}

Hum.WalkSpeed = 22
Hum.MaxHealth = 350
Hum.Health = Hum.MaxHealth

function CreateTextGui(Parent, Text, TextSpeed, TextColor, TextStrokeColor, Font)
	local ToWrite = Text
	local DoStroke = false
	local Billboard = Instance.new("BillboardGui")
	Billboard.Adornee = Parent
	Billboard.Name = tostring(tick()^20*5*math.random())
	Billboard.Size = UDim2.new(2, 0, 1.2, 0)
	Billboard.StudsOffset = Vector3.new(-6, 0, 0)
	Billboard.Parent = Parent
	local WriterGui = Instance.new("TextLabel")
	WriterGui.Size = UDim2.new(7, 0, 0.5, 0)
	WriterGui.TextScaled = true
	WriterGui.FontSize = "Size24"
	WriterGui.TextSize = 22
	WriterGui.BackgroundTransparency = 1
	WriterGui.TextTransparency = 1
	WriterGui.TextStrokeTransparency = 1
	if TextStrokeColor ~= "None" then
		DoStroke = true
		WriterGui.TextStrokeColor3 = TextStrokeColor
	end
	WriterGui.Font = Font
	WriterGui.Name = tostring(tick()^20*5*math.random())
	WriterGui.Text = ""
	WriterGui.TextColor3 = TextColor
	WriterGui.Parent = Billboard
	coroutine.resume(coroutine.create(function()
		for i = 1, 20 do
			WriterGui.TextTransparency = WriterGui.TextTransparency - 0.05
			if DoStroke == true then
				WriterGui.TextStrokeTransparency = WriterGui.TextTransparency
			end
			Billboard.StudsOffset = Billboard.StudsOffset + Vector3.new(0, 0.15, 0)
			game:GetService("RunService").RenderStepped:Wait(25)
		end
	end))
	coroutine.resume(coroutine.create(function()
		for i = 1, #ToWrite do
			WriterGui.Text = string.sub(ToWrite, 1, i)
			wait(0.4/(TextSpeed*2.5))
		end
		wait(1.25)
		for i = 1, 20 do
			WriterGui.TextTransparency = WriterGui.TextTransparency + 0.05
			if DoStroke == true then
				WriterGui.TextStrokeTransparency = WriterGui.TextTransparency
			end
			Billboard.StudsOffset = Billboard.StudsOffset + Vector3.new(0, 0.15, 0)
			game:GetService("RunService").RenderStepped:Wait(25)
		end
		Billboard:Destroy()
	end))
end

function CreateSound(ID, Parent, Volume, Pitch, TimePos, Loop, StayForever, CustomName)
	local New = nil
	coroutine.resume(coroutine.create(function()
		New = Instance.new("Sound")
		New.Name = CustomName
		New.Parent = Parent
		if TimeErased == true then
			New.Volume = 0
		else
			New.Volume = Volume or 2
		end
		New.SoundId = "rbxassetid://"..ID
		New.Pitch = Pitch
		New.TimePosition = TimePos
		New.Looped = Loop
		if StayForever == false then
			New.Ended:Connect(function()
				New:Destroy()
			end)
		end
		New:Play()
	end))
	return New
end

function CreateClientSound(ID, Parent, Volume, TimePosition, Pitch, DebrisTime)
	local NEWCLIENTSOUND = nil
	local NEWCLIENTSOUNDDATA = nil
	coroutine.resume(coroutine.create(function()
		NEWCLIENTSOUNDDATA = script["ClientSound"]
		local pt = NEWCLIENTSOUNDDATA:WaitForChild("SoundParent")
		local si = NEWCLIENTSOUNDDATA:WaitForChild("SoundID")
		local vo = NEWCLIENTSOUNDDATA:WaitForChild("SoundVolume")
		local pi = NEWCLIENTSOUNDDATA:WaitForChild("SoundPitch")
		local dt = NEWCLIENTSOUNDDATA:WaitForChild("DestroyTime")
		local tpo = NEWCLIENTSOUNDDATA:WaitForChild("TimePos")
		pt.Value = Parent
		si.Value = tonumber(ID)
		vo.Value = tonumber(Volume)
		pi.Value = tonumber(Pitch)
		dt.Value = tonumber(DebrisTime)
		tpo.Value = tonumber(TimePosition)
		NEWCLIENTSOUND = script["ClientSound"]:Clone()
		NEWCLIENTSOUND.Parent = Player:FindFirstChildOfClass("PlayerGui")
		NEWCLIENTSOUND.Disabled = false
	end))
end

function Glue(a, b)
	local weldd = Instance.new("ManualWeld")
	weldd.Part0 = a
	weldd.Part1 = b
	weldd.C0 = CFrame.new()
	weldd.C1 = b.CFrame:inverse() * a.CFrame
	weldd.Parent = a
	return weldd
end

function CheckTable(Table, Value, ValueIndex, Return)
	for Index,Val in pairs(Table) do
		if Val == Value then
			if Return == "Index" then
				return Index
			else
				if ValueIndex == 0 or ValueIndex == nil then
					return Val
				else
					return Val[ValueIndex]
				end
			end
		end
	end
	return nil
end

function CheckTableWithValueIndex(Table, Value, ValueIndex, Return)
	for Index,Val in pairs(Table) do
		if Val[ValueIndex] == Value then
			if Return == "Index" then
				return Index
			else
				return Val[ValueIndex]
			end
		end
	end
	return nil
end

function IsAHumanoid(Part)
	if Part:FindFirstAncestorWhichIsA("Model") then
		if Part:FindFirstAncestorWhichIsA("Model").Name == "Stand" then
			if Part:FindFirstAncestorWhichIsA("Model"):FindFirstAncestorWhichIsA("Model"):FindFirstChildOfClass("Humanoid") then
				return Part:FindFirstAncestorWhichIsA("Model"):FindFirstAncestorWhichIsA("Model")
			else
				return nil
			end
		end
		if Part:FindFirstAncestorWhichIsA("Model"):FindFirstChildOfClass("Humanoid") then
			return Part:FindFirstAncestorWhichIsA("Model")
		else
			return nil
		end
	else
		return nil
	end
end

function IsAStand(Part)
	if Part:FindFirstAncestorWhichIsA("Model") then
		if Part:FindFirstAncestorWhichIsA("Model"):FindFirstChild("IsAStand") then
			if Part:FindFirstAncestorWhichIsA("Model").IsAStand.Value == true then
				return Part:FindFirstAncestorWhichIsA("Model")
			else
				return nil
			end
		else
			return nil
		end
	else
		return nil
	end
end

function Lock(Character)
	for Index,Child in next, Character:GetChildren() do
		if Child:IsA("BasePart") then
			Child.Anchored = true
		end
	end
end

function Unlock(Character)
	for Index,Child in next, Character:GetChildren() do
		if Child:IsA("BasePart") then
			Child.Anchored = false
		end
	end
end

function CreateEffect(Parent, EffectType, EffectColor)
	if EffectType == "Ball" then
		local Ball = Instance.new("Part")
		Ball.Shape = Enum.PartType.Ball
		Ball.Name = StandName.."'s Effect"
		Ball.Color = EffectColor
		Ball.Material = Enum.Material.Neon
		Ball.Anchored = true
		Ball.CanCollide = false
		Ball.Transparency = 0
		Ball.Parent = Parent
		Ball.Size = Vector3.new(0.1,0.1,0.1)
		Ball.CFrame = Parent.CFrame * CFrame.new(math.random(-7,7)/10,math.random(-7,7)/10,math.random(-7,7)/10)
		coroutine.resume(coroutine.create(function()
			for i = 1, 50 do
				game:GetService("RunService").RenderStepped:Wait()
				Ball.Size = Ball.Size + Vector3.new(0.05,0.05,0.05)
				Ball.Transparency = Ball.Transparency + 0.02
			end
			Ball:Destroy()
		end))
	elseif EffectType == "Slice" then
		coroutine.resume(coroutine.create(function()
			for i = 1, 2 do
				local ZC = Instance.new("Part")
				ZC.Parent = Parent
				ZC.Size = Vector3.new(1,1,1)
				ZC.CanCollide = false
				ZC.Anchored = true
				ZC.Name = StandName.."'s Effect"
				ZC.CFrame = Parent.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.random(-4,4),math.random(-4,4),math.random(-4,4))
				ZC.Shape = Enum.PartType.Ball
				ZC.Material = Enum.Material.Neon
				ZC.Color = EffectColor
				local ZC2 = Instance.new("SpecialMesh",ZC)
				ZC2.MeshType = Enum.MeshType.Sphere
				ZC2.Scale = Vector3.new(2,0.7,0.3)
				coroutine.resume(coroutine.create(function()
					for i = 1,35 do
						game:GetService("RunService").RenderStepped:Wait()
						ZC2.Scale = ZC2.Scale + Vector3.new(0,0,0.4)
						ZC.Transparency = ZC.Transparency + 0.03
					end
					ZC:Destroy()
				end))
			end
		end))
	elseif EffectType == "BarrageArm" then
		local FadeArm = Parent:Clone()
		FadeArm.Anchored = true
		FadeArm.Color = EffectColor
		FadeArm.CFrame = FadeArm.CFrame * CFrame.new(math.random(-1,1), 0, math.random(-1.5,1.5))
		FadeArm.Name = StandName.."'s Barrage Arm"
		FadeArm.Parent = CurrentStand
		coroutine.resume(coroutine.create(function()
			for i = 1,27 do
				game:GetService("RunService").RenderStepped:Wait()
				FadeArm.Transparency = FadeArm.Transparency + 0.06
				for Index, Child in next, FadeArm:GetChildren() do
					if Child:IsA("BasePart") then
						Child.Transparency = FadeArm.Transparency
					end
				end
			end
			FadeArm:Destroy()
		end))
	elseif EffectType == "PunchWave" then
		local WavePart = Instance.new("Part")
		WavePart.Anchored = true
		WavePart.CanCollide = false
		WavePart.Transparency = 0
		WavePart.Size = Vector3.new(0.5,0.5,0.5)
		WavePart.CFrame = Parent.CFrame * CFrame.new(math.random(-1,1), 0, math.random(-1.5,1.5))
		WavePart.Orientation = Vector3.new(90, CurrentStand.StandTorso.Orientation.Y, CurrentStand.StandTorso.Orientation.Z)
		WavePart.Name = StandName.."'s Wave Effect"
		WavePart.Parent = Parent
		WavePart.Color = EffectColor
		local Wave = Instance.new("SpecialMesh")
		Wave.Parent = WavePart
		Wave.MeshId = "rbxassetid://989468093"
		Wave.Scale = Vector3.new(0.35,0.05,0.35)
		coroutine.resume(coroutine.create(function()
			for i = 1,15 do
				game:GetService("RunService").RenderStepped:Wait()
				Wave.Scale = Wave.Scale + Vector3.new(0.25, 0, 0.25)
			end
			for i = 1,20 do
				game:GetService("RunService").RenderStepped:Wait()
				Wave.Scale = Wave.Scale + Vector3.new(0.17, 0, 0.17)
				WavePart.Transparency = WavePart.Transparency + 0.05
			end
			WavePart:Destroy()
		end))
	elseif EffectType == "Epitaph" then
		local Ball = Instance.new("Part")
		Ball.Shape = Enum.PartType.Ball
		Ball.Name = StandName.."'s Epitaph Effect"
		Ball.Color = EffectColor
		Ball.Material = Enum.Material.ForceField
		Ball.Anchored = true
		Ball.CanCollide = false
		Ball.Transparency = 0
		Ball.Parent = Parent
		Ball.Size = Vector3.new(0.3, 0.3, 0.3)
		Ball.CFrame = Parent.CFrame
		coroutine.resume(coroutine.create(function()
			for i = 1, 50 do
				game:GetService("RunService").RenderStepped:Wait()
				Ball.Size = Ball.Size + Vector3.new(0.3,0.3,0.3)
				Ball.Transparency = Ball.Transparency + 0.035
			end
			Ball:Destroy()
		end))
	elseif EffectType == "Unepitaph" then
		local Ball = Instance.new("Part")
		Ball.Shape = Enum.PartType.Ball
		Ball.Name = StandName.."'s Unepitaph Effect"
		Ball.Color = EffectColor
		Ball.Material = Enum.Material.ForceField
		Ball.Anchored = true
		Ball.CanCollide = false
		Ball.Transparency = 0
		Ball.Parent = Parent
		Ball.Size = Vector3.new(8.5, 8.5, 8.5)
		Ball.CFrame = Parent.CFrame
		coroutine.resume(coroutine.create(function()
			for i = 1, 50 do
				game:GetService("RunService").RenderStepped:Wait()
				Ball.Size = Ball.Size + Vector3.new(-0.2,-0.2,-0.2)
				Ball.Transparency = Ball.Transparency + 0.04
			end
			Ball:Destroy()
		end))
	elseif EffectType == "EpitapthBall" then
		local Ball = Instance.new("Part")
		Ball.Shape = Enum.PartType.Ball
		Ball.Name = StandName.."'s Effect"
		Ball.Color = EffectColor
		Ball.Material = Enum.Material.ForceField
		Ball.Anchored = true
		Ball.CanCollide = false
		Ball.Transparency = 0
		Ball.Parent = Parent
		Ball.Size = Vector3.new(0.1,0.1,0.1)
		Ball.CFrame = Parent.CFrame
		coroutine.resume(coroutine.create(function()
			for i = 1, 50 do
				game:GetService("RunService").RenderStepped:Wait()
				Ball.Size = Ball.Size + Vector3.new(0.1,0.1,0.1)
				Ball.Transparency = Ball.Transparency + 0.025
			end
			Ball:Destroy()
		end))
	end
end

function HitEffect(OriginalHit, Character, RootFrame, HitType)
	local Humanoid = Character:FindFirstChildOfClass("Humanoid")
	local HitTorso = Humanoid.Parent:FindFirstChild("Torso") or Humanoid.Parent:FindFirstChild("UpperTorso")
	CreateEffect(OriginalHit, "PunchWave", Color3.fromRGB(255, 255, 255))
	if HitType == "Barrage" then
		Humanoid.WalkSpeed = 3.5
		coroutine.resume(coroutine.create(function()
			wait(1.5)
			Humanoid.WalkSpeed = 16
		end))
		if Humanoid.Health < 12 and Humanoid.Health > 0 then
			Humanoid.Health = Humanoid.Health + 7.5
			PunchAfterBarrage = true
			Lock(Humanoid.Parent)
		end
	elseif HitType == "Strong" then
		Unlock(Humanoid.Parent)
		local Velo = Instance.new("BodyVelocity")
		Velo.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		Velo.P = 3000
		Velo.Velocity = RootFrame * CFrame.new(0,0,-195).p
		Velo.Parent = HitTorso
		coroutine.resume(coroutine.create(function()
			wait(0.1275)
			Velo:Destroy()
		end))
	elseif HitType == "Punch" then
		local Velo = Instance.new("BodyVelocity")
		Velo.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		Velo.P = 2500
		Velo.Velocity = RootFrame * CFrame.new(0,0,-65).p
		Velo.Parent = HitTorso
		coroutine.resume(coroutine.create(function()
			wait(0.11)
			Velo:Destroy()
		end))
	end
end

function CreatePopUpGui(Parent, AnimationType, Text, TextColor)
	if AnimationType == "FadeOut" then
		local txt = Instance.new("BillboardGui")
		txt.Parent = Parent
		txt.Adornee = Parent
		txt.Name = StandName.."'s PopUp"
		txt.Size = UDim2.new(2, 0, 1.2, 0)
		txt.StudsOffset = Vector3.new(math.random(-5,-1) , math.random(0,2), math.random(-2,2))
		local text = Instance.new("TextLabel", txt)
		text.Size = UDim2.new(4, 0, 1.25, 0)
		text.TextScaled = true
		text.FontSize = Enum.FontSize.Size24
		text.TextSize = 26
		text.TextTransparency = 0
		text.BackgroundTransparency = 1
		text.TextStrokeTransparency = 1
		text.Font = Enum.Font.Fantasy
		text.Text = Text
		text.TextColor3 = TextColor
		coroutine.resume(coroutine.create(function()
			for i = 1,22 do
				game:GetService("RunService").RenderStepped:Wait()
				txt.StudsOffset = txt.StudsOffset + Vector3.new(0, 0.05, 0)
			end
			for i = 1,20 do
				game:GetService("RunService").RenderStepped:Wait()
				text.TextTransparency = text.TextTransparency + 0.05
				txt.StudsOffset = txt.StudsOffset - Vector3.new(0, 0.015, 0)
			end
			txt:Destroy()
		end))
	elseif AnimationType == "Jump" then
		local JumpDirection = math.random(1,2)
		local txt = Instance.new("BillboardGui")
		txt.Parent = Parent
		txt.Adornee = Parent
		txt.Name = StandName.."'s PopUp"
		txt.Size = UDim2.new(2, 0, 1.2, 0)
		txt.StudsOffset = Vector3.new(math.random(-5,-1) , math.random(3,5), math.random(-2,2))
		local text = Instance.new("TextLabel", txt)
		text.Size = UDim2.new(4, 0, 1.25, 0)
		text.TextScaled = true
		text.FontSize = Enum.FontSize.Size24
		text.TextSize = 26
		text.TextTransparency = 0
		text.BackgroundTransparency = 1
		text.TextStrokeTransparency = 1
		text.Font = Enum.Font.Fantasy
		text.Text = Text
		text.TextColor3 = TextColor
		if JumpDirection == 1 then
			coroutine.resume(coroutine.create(function()
				for i = 1,15 do
					game:GetService("RunService").RenderStepped:Wait()
					txt.StudsOffset = txt.StudsOffset + Vector3.new(0, 0.12, 0)
				end
				for i = 1,3 do
					game:GetService("RunService").RenderStepped:Wait()
					txt.StudsOffset = txt.StudsOffset - Vector3.new(0.009, -0.015, 0)
					text.Rotation = text.Rotation - 1.15
				end
				for i = 1,7 do
					game:GetService("RunService").RenderStepped:Wait()
					txt.StudsOffset = txt.StudsOffset - Vector3.new(0.045, 0.085, 0)
					text.TextTransparency = text.TextTransparency + 0.01
					text.Rotation = text.Rotation - 1.3
				end
				for i = 1,35 do
					game:GetService("RunService").RenderStepped:Wait()
					text.TextTransparency = text.TextTransparency + 0.05
					txt.StudsOffset = txt.StudsOffset - Vector3.new(0.055, 0.19, 0)
					text.Rotation = text.Rotation - 1.75
				end
				txt:Destroy()
			end))
		else
			coroutine.resume(coroutine.create(function()
				for i = 1,15 do
					game:GetService("RunService").RenderStepped:Wait()
					txt.StudsOffset = txt.StudsOffset + Vector3.new(0, 0.12, 0)
				end
				for i = 1,3 do
					game:GetService("RunService").RenderStepped:Wait()
					txt.StudsOffset = txt.StudsOffset - Vector3.new(-0.009, -0.015, 0)
					text.Rotation = text.Rotation + 1.15
				end
				for i = 1,7 do
					game:GetService("RunService").RenderStepped:Wait()
					txt.StudsOffset = txt.StudsOffset - Vector3.new(-0.045, 0.085, 0)
					text.TextTransparency = text.TextTransparency + 0.01
					text.Rotation = text.Rotation + 1.3
				end
				for i = 1,35 do
					game:GetService("RunService").RenderStepped:Wait()
					text.TextTransparency = text.TextTransparency + 0.04
					txt.StudsOffset = txt.StudsOffset - Vector3.new(-0.055, 0.19, 0)
					text.Rotation = text.Rotation + 1.75
				end
				txt:Destroy()
			end))
		end
	end
end

function CreateHitBox(Cframe, Damage, Size, DebrisTime, Overwrite, Effect, HitSound, HitType, EffectColor)
	if Overwrite == true then
		if CurrentStand:FindFirstChild(StandName.."'s Hit Box") then
			CurrentStand[StandName.."'s Hit Box"]:Destroy()
		end
	end
	local HB = Instance.new("Part")
	HB.Orientation = Vector3.new(0, 90, 0)
	HB.Name = StandName.."'s Hit Box"
	HB.CanCollide = false
	HB.Massless = true
	HB.Size = Size
	HB.CFrame = Cframe
	HB.BrickColor = BrickColor.new("Really red")
	HB.Transparency = 1
	HB.Parent = CurrentStand
	local AnchoredV1 = Instance.new("BodyVelocity")
	AnchoredV1.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	AnchoredV1.Parent = HB
	AnchoredV1.P = 3e9
	AnchoredV1.Velocity = Vector3.new(Cframe)
	local AnchoredV2 = Instance.new("BodyPosition")
	AnchoredV2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	AnchoredV2.Parent = HB
	AnchoredV2.Position = Vector3.new(Cframe)
	AnchoredV2.P = 3e9
	AnchoredV2.D = 3e9
	HB.Touched:Connect(function(Toucher)
		if IsAHumanoid(Toucher) and IsAHumanoid(Toucher) ~= Character and IsAHumanoid(Toucher):FindFirstChildOfClass("Humanoid").Health > 0 and IsAHumanoid(Toucher):FindFirstChild("JustGotHitten") == nil then
			game:GetService("Debris"):AddItem(HB, 0.05)
			local Humanoid = IsAHumanoid(Toucher):FindFirstChildOfClass("Humanoid")
			local HitTorso = Humanoid.Parent:FindFirstChild("Torso") or Humanoid.Parent:FindFirstChild("UpperTorso")
			local Val = Instance.new("BoolValue")
			Val.Name = "JustGotHitten"
			Val.Value = true
			Val.Parent = Humanoid.Parent
			game:GetService("Debris"):AddItem(Val, 0.05)
			if Humanoid.Parent:FindFirstChild("CanDodge") then
				if Humanoid.Parent.CanDodge.Value == true then
					if Humanoid.Parent:FindFirstChild("GotHitButNot") then
						Humanoid.Parent.GotHitButNot:Destroy()
					end
					local Val = Instance.new("StringValue")
					Val.Name = "GotHitButNot"
					Val.Parent = Humanoid.Parent
					Val.Value = "Missed Hit"
					game:GetService("Debris"):AddItem(Val, 0.2)
					CreatePopUpGui(Toucher, "FadeOut", "Miss", Color3.fromRGB(199, 199, 199))
					return
				end
			end
			if Humanoid.Parent:FindFirstChild("ReturnStandDamage") then
				local Val = Instance.new("StringValue")
				Val.Name = "RTZActive"
				Val.Parent = Hum.Parent
				Val.Value = "Missed Hit"
				game:GetService("Debris"):AddItem(Val, 0.2)
				if Humanoid.Parent.ReturnStandDamage.Value == true then
					if Hum.MaxHealth > 10000 then
						Hum.Parent:BreakJoints()
					end
					coroutine.resume(coroutine.create(function()
						CreateEffect(Root, Effect, EffectColor)
					end))
					CreateSound(HitSound, Root, 3, math.random(95,113)/100, 0, false, false, "Hit SFX")
					if HitType == "Strong" then
						Hum.BreakJointsOnDeath = false
					end
					if Damage == "Instant Kill" then
						Hum.Parent:BreakJoints()
						CreatePopUpGui(Root, "Jump", tostring(Humanoid.MaxHealth), Color3.fromRGB(188, 0, 0))
					else
						Hum:TakeDamage(Damage)
						CreatePopUpGui(Root, "Jump", tostring(Damage), Color3.fromRGB(188, 0, 0))
					end
					HitEffect(Root, Hum.Parent, CurrentStand.RootPart.CFrame, HitType)
					return
				end
			end
			CreateSound(HitSound, Toucher, 3, math.random(95,113)/100, 0, false, false, "Hit SFX")
			if Humanoid.MaxHealth > 10000 then
				Humanoid.Parent:BreakJoints()
			end
			coroutine.resume(coroutine.create(function()
				CreateEffect(Toucher, Effect, EffectColor)
			end))
			if HitType == "Strong" then
				Humanoid.BreakJointsOnDeath = false
			end
			if Damage == "Instant Kill" then
				Humanoid.Parent:BreakJoints()
				CreatePopUpGui(Toucher, "Jump", tostring(Humanoid.MaxHealth), Color3.fromRGB(188, 0, 0))
			else
				Humanoid:TakeDamage(Damage)
				CreatePopUpGui(Toucher, "Jump", tostring(Damage), Color3.fromRGB(188, 0, 0))
			end
			HitEffect(Toucher, Humanoid.Parent, CurrentStand.RootPart.CFrame, HitType)
		end
	end)
	game:GetService("Debris"):AddItem(HB, DebrisTime)
	return HB
end

function Stand()
	Move = true
	if CurrentStand == nil then
		CurrentStand = OriginalStand:Clone()
		local Call = CreateSound(4819834565, Head, 7, 1, 0.4, false, false, "Stand Call")
		game:GetService("Debris"):AddItem(Call, 1.5)
		for Index,Child in next, CurrentStand:GetDescendants() do
			if Child:IsA("BasePart") or Child:IsA("Decal") then
				Child.Transparency = 1
			end
		end
		CurrentStand:SetPrimaryPartCFrame(Root.CFrame)
		CurrentStand.Parent = Head
		for Index,Child in next, CurrentStand:GetDescendants() do
			if (Child:IsA("BasePart") or Child:IsA("Decal")) and Child.Name ~= "RootPart" then
				coroutine.resume(coroutine.create(function(Part)
					for i = 1, 25 do
						game:GetService("RunService").RenderStepped:Wait()
						Part.Transparency = Part.Transparency - 0.04
					end
					Part.Transparency = 0
				end), Child)
			end
		end
		CreateSound(463010917, CurrentStand.PrimaryPart, 1, math.random(95,108)/100, 0, false, false, "Stand Appear")
		for i = 0,1,0.02 do
			game:GetService("RunService").RenderStepped:Wait()
			CurrentStand.PrimaryPart.CFrame = CurrentStand.PrimaryPart.CFrame:Lerp(Root.CFrame * CFrame.new(-2.35, 1.3, 3), i)
			CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.new(0, 0, 0.8*math.sin(Sine/75))*CFrame.Angles(0, 0, math.rad(8.021)), 0.23)
			CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.new(0.375, 0, -0.301) * CFrame.Angles(math.rad(-2.005), math.rad(66.005), math.rad(-1.031)), 0.23)
			CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.new(0.356, 0.08, 0.05) * CFrame.Angles(math.rad(-3.724), math.rad(12.949), math.rad(11.001)), 0.23)
			CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.Angles(math.rad(-8.709), math.rad(-11.918), math.rad(-8.136)), 0.23)
			CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.Angles(math.rad(-8.251), math.rad(-13.579), math.rad(9.74)), 0.23)
			CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(math.rad(-1.375), math.rad(-7.907), math.rad(-10.084)), 1)
		end
	else
		for Index,Child in next, CurrentStand:GetDescendants() do
			if Child:IsA("BasePart") or Child:IsA("Decal") then
				coroutine.resume(coroutine.create(function(Part)
					for i = 1, 20 do
						game:GetService("RunService").RenderStepped:Wait()
						Part.Transparency = Part.Transparency + 0.05
					end
					Part.Transparency = 1
				end), Child)
			end
		end
		for i = 0,1,0.02 do
			game:GetService("RunService").RenderStepped:Wait()
			CurrentStand.PrimaryPart.CFrame = CurrentStand.PrimaryPart.CFrame:Lerp(Root.CFrame, i)
		end
		wait(0.01)
		CurrentStand:Destroy()
		CurrentStand = nil
	end
	Move = false
end

function Barrage(Times, NeutralStop, BarrageSFX, Tpos)
	if CurrentStand == nil then
		return
	end
	Move = true
	local WalkSpeed = Hum.WalkSpeed
	Hum.WalkSpeed = 10
	local Done = false
	local Repeat = Times
	local AttachmentLeft1 = Instance.new("Attachment")
	AttachmentLeft1.Parent = CurrentStand["Left Arm"]
	AttachmentLeft1.Position = Vector3.new(0,-2.5,0)
	local AttachmentLeft2 = Instance.new("Attachment")
	AttachmentLeft2.Parent = CurrentStand["Left Arm"]
	AttachmentLeft2.Position = Vector3.new(0,2.5,0)
	local AttachmentRight1 = Instance.new("Attachment")
	AttachmentRight1.Parent = CurrentStand["Right Arm"]
	AttachmentRight1.Position = Vector3.new(0,-2.5,0)
	local AttachmentRight2 = Instance.new("Attachment")
	AttachmentRight2.Parent = CurrentStand["Right Arm"]
	AttachmentRight2.Position = Vector3.new(0,2.5,0)
	local TrailLeft = Instance.new("Trail")
	TrailLeft.Parent = CurrentStand["Left Arm"]
	TrailLeft.Lifetime = 0.05
	TrailLeft.LightEmission = 0.8
	TrailLeft.Transparency = NumberSequence.new(0.7)
	TrailLeft.Attachment0 = AttachmentLeft1
	TrailLeft.Attachment1 = AttachmentLeft2
	local TrailRight = Instance.new("Trail")
	TrailRight.Parent = CurrentStand["Right Arm"]
	TrailRight.Lifetime = 0.05
	TrailRight.LightEmission = 0.8
	TrailRight.Transparency = NumberSequence.new(0.7)
	TrailRight.Attachment0 = AttachmentRight1
	TrailRight.Attachment1 = AttachmentRight2
	repeat
		game:GetService("RunService").RenderStepped:Wait()
		Repeat = Repeat - 1
		CreateHitBox(CurrentStand.PrimaryPart.CFrame * CFrame.new(0, 0, -2.35), math.random(4,9), Vector3.new(4.2,3.4,4), 0.35, true, "Ball", 2974875851, "Barrage", Color3.fromRGB(255, 255, 255))
		CreateSound(BarrageSFX, CurrentStand.Head, 3, math.random(98,108)/100, Tpos, false, false, "Air Woosh")
		for i = 0,1,0.175*AttackSpeed/0.75 do
			game:GetService("RunService").RenderStepped:Wait()
			CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.Angles(math.rad(28.018), math.rad(-4.526), math.rad(-8.48)), i)
			CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.new(0.056, -0.008, 0.011) * CFrame.Angles(math.rad(3.667), math.rad(6.646), math.rad(13.923)), i)
			CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.new(0.952, 0.496, -0.141) * CFrame.Angles(math.rad(-5.73), math.rad(6.933), math.rad(-12.261)), i)
			CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(-1.587, 0.561, -0.296) * CFrame.Angles(math.rad(-19.996), math.rad(-32.143), math.rad(-108.862)), i)
			CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.new(-1.515, -0.375, 0.297) * CFrame.Angles(math.rad(-4.412), math.rad(5.214), math.rad(108.518)), i)
			CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.new(0.049, 0.007, -0.004) * CFrame.Angles(math.rad(-23.377), math.rad(0.745), math.rad(8.308)), i)
		end
		CreateEffect(CurrentStand["Left Arm"], "BarrageArm", CurrentStand["Left Arm"].Color)
		CreateHitBox(CurrentStand.PrimaryPart.CFrame * CFrame.new(0, 0, -2.35), math.random(4,9), Vector3.new(4.2,3.4,4), 0.35, true, "Ball", 2974875851, "Barrage", Color3.fromRGB(255, 255, 255))
		CreateSound(BarrageSFX, CurrentStand.Head, 3, math.random(98,108)/100, Tpos, false, false, "Air Woosh")
		for i = 0,1,0.175*AttackSpeed/0.75 do
			game:GetService("RunService").RenderStepped:Wait()
			CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.Angles(math.rad(27.846), math.rad(5.73), math.rad(10.714)), i)
			CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.new(-0.057, 0.038, -0.01) * CFrame.Angles(math.rad(-2.693), math.rad(-5.157), math.rad(15.069)), i)
			CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.new(0.927, 0.471, 0.061) * CFrame.Angles(math.rad(1.318), math.rad(-4.813), math.rad(-12.892)), i)
			CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(1.596, -0.316, 0.111) * CFrame.Angles(math.rad(-1.776), math.rad(-3.037), math.rad(-103.075)), i)
			CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.new(1.659, 0.498, -0.516) * CFrame.Angles(math.rad(-19.079), math.rad(38.961), math.rad(106.284)), i)
			CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.new(-0.117, 0.022, -0.012) * CFrame.Angles(math.rad(-23.377), math.rad(-0.917), math.rad(-10.084)), i)
		end
		CreateEffect(CurrentStand["Right Arm"], "BarrageArm", CurrentStand["Right Arm"].Color)
	until Repeat < 0 or Repeat == 0 or BarrageDown == false or Done == true
	Hum.WalkSpeed = WalkSpeed
	AttachmentLeft1:Destroy()
	AttachmentLeft2:Destroy()
	AttachmentRight1:Destroy()
	AttachmentRight2:Destroy()
	TrailLeft:Destroy()
	TrailRight:Destroy()
	if PunchAfterBarrage == false then
		for i = 0,1,0.3 do
			game:GetService("RunService").RenderStepped:Wait()
			CurrentStand.PrimaryPart.CFrame = CurrentStand.PrimaryPart.CFrame:Lerp(Root.CFrame * CFrame.new(-2, 1.3, 3), 0.3)
		end
		Move = false
	else
		StrongUpperCut()
		PunchAfterBarrage = false
	end
end

function ClockFade()
	local Clone = Clock.Clock.Count:Clone()
	Clone.Name = "CounterFade"
	Clone.Parent = Clock.Clock
	coroutine.resume(coroutine.create(function()
		for i = 1, 75 do
			game:GetService("RunService").RenderStepped:Wait()
			Clone.Size = Clone.Size + UDim2.new(0, 2, 0, 2)
			Clone.Position = Clone.Position + UDim2.new(-0.005, 0, -0.005, 0)
			Clone.TextTransparency = Clone.TextTransparency + 0.025
			Clone.TextStrokeTransparency = Clone.TextTransparency
		end
		Clone:Destroy()
	end))
end

function TimeErase()
	if CurrentStand == nil then
		return
	end
	if (Hum.FloorMaterial == nil or Hum.FloorMaterial == "" or Hum.FloorMaterial == Enum.Material.Air) and Hum.Sit == false then
		return
	end
	Move = true
	if workspace:FindFirstChild("IsTimeErased") then
		if workspace.IsTimeErased.Value == Player.Name then
			workspace.IsTimeErased:Destroy()
		end
	end
	for Inded, Child in next, Character:GetDescendants() do
		if Child:IsA("BasePart") or Child:IsA("Decal") then
			local TransVal = Instance.new("NumberValue")
			TransVal.Value = Child.Transparency
			TransVal.Name = "REALTRANS"
			TransVal.Parent = Child
		end
	end
	local DVal = Instance.new("BoolValue")
	DVal.Name = "CanDodge"
	DVal.Parent = Character
	DVal.Value = true
	local Val = Instance.new("StringValue")
	Val.Value = Player.Name
	Val.Name = "IsTimeErased"
	Val.Parent = workspace
	ClockTime = TimeEraseSeconds
	Clock.Clock.MainArrow.Rotation = 0.015
	Clock.Clock.Count.Text = tostring(ClockTime)
	Clock.Enabled = true
	Lock(Character)
	local StopAudio = CreateSound(3373956700, Head, 5.5, 1, 0, false, true, "Stop Shout")
	local Ended = false
	StopAudio.Ended:Connect(function()
		Ended = true
		StopAudio:Destroy()
	end)
	for Index, Player in next, game:GetService("Players"):GetPlayers() do
		--[[
		local Clone1 = OriginalKCChar:Clone()
		Clone1.Parent = Player:FindFirstChildOfClass("PlayerGui")
		Clone1.Char.Value = Character
		Clone1.Disabled = true
		local Clone2 = OriginalKCParts:Clone()
		Clone2.Parent = Player:FindFirstChildOfClass("PlayerGui")
		Clone2.Char.Value = Character
		Clone2.Disabled = true
		local Gui = OriginalGui:Clone()
		Gui.Parent = Player:FindFirstChildOfClass("PlayerGui")
		Gui.Enabled = true
		Gui.GlitchScript["Enabled"].Value = true
		Gui.GlitchScript.Disabled = false
		spawn(function()
			wait(1.4)
			Clone1.Disabled = false
			Clone2.Disabled = false
			AllowClockMovment = true
		end)
		game:GetService("Debris"):AddItem(Gui, 1.54)
		]]
		local TransparencyScript = OriginalTranspanrencyScript:Clone()
		TransparencyScript.Parent = Player:FindFirstChildOfClass("PlayerGui")
		TransparencyScript.Char.Value = Character
		TransparencyScript.Disabled = true
		spawn(function()
			wait(1.4)
			TransparencyScript.Disabled = false
		end)
	end
	local Gui = OriginalGui:Clone()
	Gui.Parent = Player:FindFirstChildOfClass("PlayerGui")
	Gui.Enabled = true
	Gui.GlitchScript["Enabled"].Value = true
	Gui.GlitchScript.Disabled = false
	game:GetService("Debris"):AddItem(Gui, 1.54)
	local Clone1 = OriginalKCChar:Clone()
	Clone1.Parent = Player:FindFirstChildOfClass("PlayerGui")
	Clone1.Char.Value = Character
	Clone1.Disabled = true
	local Clone2 = OriginalKCParts:Clone()
	Clone2.Parent = Player:FindFirstChildOfClass("PlayerGui")
	Clone2.Char.Value = Character
	Clone2.Disabled = true
	spawn(function()
		wait(1.4)
		Clone1.Disabled = false
		Clone2.Disabled = false
		AllowClockMovment = true
	end)
	repeat
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.PrimaryPart.CFrame = CurrentStand.PrimaryPart.CFrame:Lerp(Root.CFrame * CFrame.new(0, 0.5, -3.5), 0.3)
		CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.Angles(math.rad(-4.641), 0, 0), 0.5)
		CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.Angles(math.rad(-6.875), 0, 0), 0.5)
		CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.Angles(math.rad(-4.011), 0, math.rad(-84.798)), 0.5)
		CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.Angles(math.rad(-6.417), 0, 0), 0.5)
	until Ended == true
	TimeErased = true
	coroutine.resume(coroutine.create(function()
		repeat
			game:GetService("RunService").RenderStepped:Wait()
		until ClockTime < 0 or ClockTime == 0 or TimeErased == false
		if TimeErased == true then
			if CurrentStand == nil then
				Stand()
			end
			TimeResume()
		end
	end))
	Unlock(Character)
	Move = false
end

function FastTimeErase()
	if CurrentStand == nil then
		return
	end
	Move = true
	local Val = Instance.new("StringValue")
	Val.Value = Player.Name
	Val.Name = "ForceResumeTimeStop"
	if workspace:FindFirstChild("IsTimeStopped") then
		Val.Parent = game:GetService("Players")[workspace.IsTimeStopped.Value].Character
	else
		Val.Parent = workspace
	end
	game:GetService("Debris"):AddItem(Val, 0.5)
	for Index, Player in next, game:GetService("Players"):GetPlayers() do
		--[[
		if Player:FindFirstChildOfClass("PlayerGui"):FindFirstChild("KCParts") then
			Player:FindFirstChildOfClass("PlayerGui")["KCParts"]:Destroy()
		end
		if Player:FindFirstChildOfClass("PlayerGui"):FindFirstChild("KCCharacter") then
			Player:FindFirstChildOfClass("PlayerGui")["KCCharacter"]:Destroy()
		end
		]]
		local Gui = OriginalGui:Clone()
		Gui.Parent = Player:FindFirstChildOfClass("PlayerGui")
		Gui.Enabled = true
		Gui.GlitchScript["Enabled"].Value = false
		Gui.GlitchScript.Disabled = false
		game:GetService("Debris"):AddItem(Gui, 1.34)
	end
	Move = false
end

function TimeResume()
	if CurrentStand == nil then
		return
	end
	AllowClockMovment = false
	ClockTime = 0
	Clock.Enabled = false
	Move = true
	BarrageDown = false
	if workspace:FindFirstChild("IsTimeErased") then
		if workspace.IsTimeErased.Value == Player.Name then
			workspace.IsTimeErased:Destroy()
		end
	end
	if Character:FindFirstChild("CanDodge") then
		Character.CanDodge:Destroy()
	end
	for Index, Player in next, game:GetService("Players"):GetPlayers() do
		--[[
		if Player:FindFirstChildOfClass("PlayerGui"):FindFirstChild("KCParts") then
			Player:FindFirstChildOfClass("PlayerGui")["KCParts"]:Destroy()
		end
		if Player:FindFirstChildOfClass("PlayerGui"):FindFirstChild("KCCharacter") then
			Player:FindFirstChildOfClass("PlayerGui")["KCCharacter"]:Destroy()
		end
		local Gui = OriginalGui:Clone()
		Gui.Parent = Player:FindFirstChildOfClass("PlayerGui")
		Gui.Enabled = true
		Gui.GlitchScript["Enabled"].Value = false
		Gui.GlitchScript.Disabled = false
		local Clean = OriginalCleaner:Clone()
		Clean.Parent = Player:FindFirstChildOfClass("PlayerGui")
		Clean.Char.Value = Character
		Clean.Disabled = false
		game:GetService("Debris"):AddItem(Gui, 1.34)
		game:GetService("Debris"):AddItem(Clean, 1)
		]]
		if Player:FindFirstChildOfClass("PlayerGui"):FindFirstChild("KCTransparentChar") then
			Player:FindFirstChildOfClass("PlayerGui")["KCTransparentChar"]:Destroy()
		end
		local Clean = OriginalTranspanrencyCleaner:Clone()
		Clean.Parent = Player:FindFirstChildOfClass("PlayerGui")
		Clean.Char.Value = Character
		Clean.Disabled = false
		game:GetService("Debris"):AddItem(Clean, 2)
	end
	if Player:FindFirstChildOfClass("PlayerGui"):FindFirstChild("KCParts") then
		Player:FindFirstChildOfClass("PlayerGui")["KCParts"]:Destroy()
	end
	if Player:FindFirstChildOfClass("PlayerGui"):FindFirstChild("KCCharacter") then
		Player:FindFirstChildOfClass("PlayerGui")["KCCharacter"]:Destroy()
	end
	local Gui = OriginalGui:Clone()
	Gui.Parent = Player:FindFirstChildOfClass("PlayerGui")
	Gui.Enabled = true
	Gui.GlitchScript["Enabled"].Value = false
	Gui.GlitchScript.Disabled = false
	local Clean = OriginalCleaner:Clone()
	Clean.Parent = Player:FindFirstChildOfClass("PlayerGui")
	Clean.Char.Value = Character
	Clean.Disabled = false
	game:GetService("Debris"):AddItem(Clean, 2)
	game:GetService("Debris"):AddItem(Gui, 1.34)
	for Index, Child in next, Character:GetDescendants() do
		if Child:IsA("BasePart") or Child:IsA("Decal") then
			if Child:FindFirstChild("REALTRANS") then
				game:GetService("Debris"):AddItem(Child.REALTRANS, 0.8)
			end
		end
	end
	TimeErased = false
	Move = false
end

function Punch()
	if CurrentStand == nil then
		return
	end
	Move = true
	NormalPunch = true
	local WalkSpeed = Hum.WalkSpeed
	Hum.WalkSpeed = 9
	for i = 0,1,0.115*AttackSpeed/0.75 do
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.Angles(math.rad(35.008), math.rad(0.172), math.rad(-1.547)), i)
		CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.new(0.055, -0.008, -0.009) * CFrame.Angles(math.rad(2.75), math.rad(5.386), math.rad(14.037)), i)
		CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.new(0.977, 0.511, -0.028) * CFrame.Angles(math.rad(-3.037), math.rad(3.151), math.rad(-12.662)), i)
		CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(0.435, -0.129, 0.287) * CFrame.Angles(math.rad(156.188), math.rad(60.103), math.rad(129.145)), i)
		CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.new(0.137, 0.072, 0.013) * CFrame.Angles(math.rad(-2.005), math.rad(61.249), math.rad(81.074)), i)
		CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.new(0.049, 0.007, -0.004) * CFrame.Angles(math.rad(-23.377), math.rad(0.573), math.rad(7.678)), i)
	end
	CreateSound(138097048, CurrentStand.PrimaryPart, 6.5, math.random(97,108)/100, 0, false, false, "Woosh")
	coroutine.resume(coroutine.create(function()
		wait(0.06)
		CreateHitBox(CurrentStand.PrimaryPart.CFrame * CFrame.new(0, 0, -2.35), math.random(35,50), Vector3.new(4.2,3.4,4), 0.35, true, "Ball", 2974875851, "Punch", Color3.fromRGB(255, 255, 255))
	end))
	for i = 0,1,0.082*AttackSpeed/0.75 do
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.Angles(math.rad(33.289), math.rad(-11.631), math.rad(-18.908)), i)
		CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.new(0.056, -0.008, 0.011) * CFrame.Angles(math.rad(11.918), math.rad(17.704), math.rad(12.089)), i)
		CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.new(0.971, 0.512, -0.238) * CFrame.Angles(math.rad(-10.6), math.rad(13.522), math.rad(-11.173)), i)
		CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(-0.351, 0.091, -0.295) * CFrame.Angles(math.rad(-15.47), math.rad(-34.779), math.rad(-105.482)), i)
		CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.new(0.145, 0.078, 0.013) * CFrame.Angles(math.rad(-30.309), math.rad(-14.897), math.rad(5.157)), i)
		CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.new(0.049, 0.007, -0.004) * CFrame.Angles(math.rad(-24.465), math.rad(4.183), math.rad(25.783)), i)
	end
	for i = 0,1,0.1*AttackSpeed/0.75 do
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.Angles(math.rad(35.008), math.rad(0.172), math.rad(-1.547)), i)
		CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.new(0.055, -0.008, -0.009) * CFrame.Angles(math.rad(2.75), math.rad(5.386), math.rad(14.037)), i)
		CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.new(0.977, 0.511, -0.028) * CFrame.Angles(math.rad(-3.037), math.rad(3.151), math.rad(-12.662)), i)
		CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(0.435, -0.129, 0.287) * CFrame.Angles(math.rad(156.188), math.rad(60.103), math.rad(129.145)), i)
		CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.new(0.137, 0.072, 0.013) * CFrame.Angles(math.rad(-2.005), math.rad(61.249), math.rad(81.074)), i)
		CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.new(0.049, 0.007, -0.004) * CFrame.Angles(math.rad(-23.377), math.rad(0.573), math.rad(7.678)), i)
	end
	NormalPunch = false
	Hum.WalkSpeed = WalkSpeed
	for i = 0,1,0.3 do
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.PrimaryPart.CFrame = CurrentStand.PrimaryPart.CFrame:Lerp(Root.CFrame * CFrame.new(-2, 1.3, 3), 0.3)
	end
	Move = false
end

function StrongUpperCut()
	if CurrentStand == nil then
		return
	end
	Move = true
	UpperCut = true
	local WalkSpeed = Hum.WalkSpeed
	Hum.WalkSpeed = 7
	CreateSound(3373975760, CurrentStand.Head, 6.5, 1, 0, false, false, "Strong Shout")
	for i = 0,1,0.15*AttackSpeed/0.75 do
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.Angles(math.rad(29.851), 0, 0), i)
		CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.Angles(math.rad(-3.896), math.rad(0.917), math.rad(0.057)), i)
		CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.new(0.78, 0.638, -0.07) * CFrame.Angles(math.rad(-4.584), math.rad(-2.636), math.rad(-0.115)), i)
		CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(-0.164, -0.286, 0.51) * CFrame.Angles(math.rad(-70.015), math.rad(31.398), math.rad(37.987)), i)
		CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.Angles(math.rad(-92.304), math.rad(58.728), math.rad(160.657)), i)
		CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(math.rad(-16.673), 0, 0), i)
	end
	coroutine.resume(coroutine.create(function()
		wait(0.06)
		CreateHitBox(CurrentStand.PrimaryPart.CFrame * CFrame.new(0, 0, -2.35), "Instant Kill", Vector3.new(4.2,3.4,4), 0.35, true, "Slice", 2319521125, "Strong", Color3.fromRGB(255, 255, 255))
	end))
	for i = 0,1,0.029*AttackSpeed/0.75 do
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.new(0, -0.12, 0) * CFrame.Angles(math.rad(33.919), 0, 0), i)
		CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.Angles(math.rad(-3.896), math.rad(0.917), math.rad(0.057)), i)
		CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.new(0.78, 0.638, -0.07) * CFrame.Angles(math.rad(-4.584), math.rad(-2.636), math.rad(-0.115)), i)
		CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(-1.349, -0.02, -0.48) * CFrame.Angles(math.rad(-40.852), math.rad(13.579), math.rad(-153.266)), i)
		CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.new(0.055, -0.096, 0) * CFrame.Angles(math.rad(-28.992), math.rad(-20.225), math.rad(-15.527)), i)
		CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(math.rad(-16.673), 0, 0), i)
	end
	for i = 0,1,0.2*AttackSpeed/0.75 do
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.Angles(math.rad(29.851), 0, 0), i)
		CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.Angles(math.rad(-3.896), math.rad(0.917), math.rad(0.057)), i)
		CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.new(0.78, 0.638, -0.07) * CFrame.Angles(math.rad(-4.584), math.rad(-2.636), math.rad(-0.115)), i)
		CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.new(-0.164, -0.286, 0.51) * CFrame.Angles(math.rad(-70.015), math.rad(31.398), math.rad(37.987)), i)
		CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.Angles(math.rad(-92.304), math.rad(58.728), math.rad(160.657)), i)
		CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(math.rad(-16.673), 0, 0), i)
	end
	UpperCut = false
	Hum.WalkSpeed = WalkSpeed
	for i = 0,1,0.3 do
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.PrimaryPart.CFrame = CurrentStand.PrimaryPart.CFrame:Lerp(Root.CFrame * CFrame.new(-2, 1.3, 3), 0.3)
	end
	Move = false
end

function StandJump()
	if CurrentStand == nil then
		return
	end
	if Hum.FloorMaterial == nil or Hum.FloorMaterial == "" or Hum.FloorMaterial == Enum.Material.Air then
		return
	end
	for i = 1, 3 do
		local EffectPart = Instance.new("Part")
		EffectPart.Anchored = true
		EffectPart.Transparency = 1
		EffectPart.Size = Vector3.new(1,1,1)
		EffectPart.CFrame = RLeg.CFrame
		EffectPart.Parent = Character
		game:GetService("Debris"):AddItem(EffectPart, 1.5)
		CreateEffect(EffectPart, "Slice", Color3.fromRGB(127, 127, 127))
	end
	local Bod = Instance.new("BodyPosition",Root)
	Bod.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	Bod.Position = Root.CFrame * CFrame.new(0,80,-80).p
	wait(0.1)
	Bod:Destroy()
end

function Epitaph()
	if CurrentStand == nil then
		return
	end
	Move = true
	HasEpitaph = true
	--CreatePopUpGui(CurrentStand.Head, "FadeOut", "Epitaph true", Color3.fromRGB(133, 255, 133))
	coroutine.resume(coroutine.create(function()
		CreateEffect(CurrentStand.Head, "Epitaph", Color3.fromRGB(255, 0, 0))
	end))
	if Head:FindFirstChild("face") then
		Head.face.Color3 = Color3.fromRGB(177, 0, 0)
	end
	CreateSound(3735182998, Head, 5, 1, 0, false, false, "SFX")
	local Val = Instance.new("BoolValue")
	Val.Name = "CanDodge"
	Val.Parent = Character
	Val.Value = true
	Move = false
end

function NoEpitaph()
	if CurrentStand == nil then
		return
	end
	Move = true
	HasEpitaph = false
	--CreatePopUpGui(CurrentStand.Head, "FadeOut", "Epitaph false", Color3.fromRGB(255, 133, 133))
	coroutine.resume(coroutine.create(function()
		CreateEffect(CurrentStand.Head, "Unepitaph", Color3.fromRGB(255, 0, 0))
	end))
	if Head:FindFirstChild("face") then
		Head.face.Color3 = Color3.fromRGB(255, 255, 255)
	end
	if Character:FindFirstChild("CanDodge") then
		Character.CanDodge:Destroy()
	end
	Move = false
end

function TimeLeap()
	Move = true
	local Gui = OriginalLeap:Clone()
	Gui.Parent = Player:FindFirstChildOfClass("PlayerGui")
	Gui.Enabled = true
	Gui.GlitchScript.Disabled = false
	game:GetService("Debris"):AddItem(Gui, 0.3)
	Root.CFrame = Root.CFrame * CFrame.new(0, 0, -15)
	CreateSound(3381874860, Torso, 4, 1, 0, false, false, "Time Leap SFX")
	Move = false
end

function DodgeAnimation()
	if Character:FindFirstChild("GotHitButNot") then
		Character.GotHitButNot:Destroy()
	end
	local RandomDirection = math.random(1,2)
	if Hum.RigType ~= Enum.HumanoidRigType.R15 then
		if RandomDirection == 1 then
			for i = 0,1,0.15 do
				game:GetService("RunService").RenderStepped:Wait()
				RJ.C0 = RJ.C0:Lerp(AnimDefaults.tors*CFrame.new(-2.628, 1.074, 0) * CFrame.Angles(0, 0, math.rad(48)), 0.25)
			end
			for i = 0,1,0.25 do
				game:GetService("RunService").RenderStepped:Wait()
				RJ.C0 = RJ.C0:Lerp(AnimDefaults.tors, 0.33)
			end
		else
			for i = 0,1,0.15 do
				game:GetService("RunService").RenderStepped:Wait()
				RJ.C0 = RJ.C0:Lerp(AnimDefaults.tors*CFrame.new(3.574, 1.32, 0) * CFrame.Angles(0, 0, math.rad(-48)), 0.25)
			end
			for i = 0,1,0.25 do
				game:GetService("RunService").RenderStepped:Wait()
				RJ.C0 = RJ.C0:Lerp(AnimDefaults.tors, 0.33)
			end
		end
	end
end

function AttackTemplate()
	if CurrentStand == nil then
		return
	end
	Move = true
	for i = 0,1,0.165*AttackSpeed/0.75 do
		game:GetService("RunService").RenderStepped:Wait()
		CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*0, i)
		CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*0, i)
		CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*0, i)
		CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*0, i)
		CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*0, i)
		CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*0, i)
	end
	Move = false
end

Mouse.Button1Down:Connect(function()
	if workspace:FindFirstChild("IsTimeStopped") then
		if workspace.IsTimeStopped.Value ~= Player.Name then
			return
		end
	end
	if Move == false and TimeErased == false then
		Punch()
	end
end)

Mouse.KeyDown:Connect(function(Key)
	if Key ~= "t" then
		if workspace:FindFirstChild("IsTimeStopped") then
			if workspace.IsTimeStopped.Value ~= Player.Name then
				return
			end
		end
	elseif Key == "t" and workspace:FindFirstChild("IsTimeStopped") then
		FastTimeErase()
		return
	end
	if Key == "q" and Move == false and TimeErased == false then
		Stand()
	end
	if Key == "e" and Move == false and TimeErased == false then
		BarrageDown = true
		Barrage(30, false, 147722227, 0.15)
	end
	if Key == "t" and Move == false then
		if workspace:FindFirstChild("IsTimeAccelerating") then
			if workspace.IsTimeAccelerating.Value ~= Player.Name then
				return
			end
		end
		if TimeErased == true then
			TimeResume()
		else
			TimeErase()
		end
	end
	if Key == "g" and TimeErased == false then
		if Head:FindFirstChild("My Ability...") then
			return
		end
		CreateSound(4251553413, Head, 9.5, 1, 0.8, false, false, "My Ability...")
		CreateTextGui(Head, "This is King Crimsons' Ability.", 2.85, Color3.fromRGB(255, 255, 255), Color3.fromRGB(123, 123, 123), Enum.Font.Bodoni)
	end
	if Key == "f" and Move == false and TimeErased == false then
		if HasEpitaph == true then
			NoEpitaph()
		else
			Epitaph()
		end
	end
	if Key == "x" and Move == false and TimeErased == false then
		TimeLeap()
	end
	if Key == "r" and Move == false and TimeErased == false then
		StrongUpperCut()
	end
	if Key == "z" and Move == false and TimeErased == false then
		StandJump()
	end
end)

Mouse.KeyUp:Connect(function(Key)
	if Key == "e" then
		BarrageDown = false
	end
end)

function DeSpawn()
	coroutine.resume(coroutine.create(function()
		while script.Parent ~= nil do
			game:GetService("RunService").RenderStepped:Wait()
			Move = true
			BarrageDown = false
		end
	end))
	if MoveList ~= nil then
		MoveList:Destroy()
	end
	if Clock ~= nil then
		Clock:Destroy()
	end
	if TimeErased == true then
		TimeResume()
	end
	if CurrentStand ~= nil then
		pcall(Stand)
	end
	wait(0.1)
	script:Destroy()
end

Hum.Died:Connect(function()
	DeSpawn()
end)

Character.Changed:Connect(function(Parent)
	if not Character:IsDescendantOf(workspace) then
		DeSpawn()
	end
end)

Character.ChildAdded:Connect(function(Child)
	if Child:IsA("StringValue") and Child.Name == "MIHInstantResume" and TimeErased == true then
		TimeResume()
	end
end)

Player.CharacterAdded:Connect(function()
	DeSpawn()
end)

game:GetService("RunService").RenderStepped:Connect(function()
	Sine = Sine + 1
	Hum.PlatformStand = false
	if Hum.Health ~= Hum.MaxHealth then
		Hum.Health = Hum.Health + 0.1
	end
	if Clock and AllowClockMovment == true then
		Clock.Clock.MainArrow.Rotation = Clock.Clock.MainArrow.Rotation + 5
		Clock.Clock.SecondaryArrow.Rotation = Clock.Clock.SecondaryArrow.Rotation + 0.85
		if Clock.Clock.MainArrow.Rotation > 359 then
			CreateClientSound(850256806, Character, 3.5, 1.49, 1, 1.7)
			Clock.Clock.MainArrow.Rotation = 0
			ClockTime = ClockTime - 1
			Clock.Clock.Count.Text = tostring(ClockTime)
			ClockFade()
		end
		if Clock.Clock.SecondaryArrow.Rotation > 359 then
			Clock.Clock.SecondaryArrow.Rotation = 0
		end
	end
	if Move == true and CurrentStand ~= nil then
		if (BarrageDown == true or UpperCut == true or NormalPunch == true) and PunchAfterBarrage == false then
			CurrentStand.PrimaryPart.CFrame = CurrentStand.PrimaryPart.CFrame:Lerp(Root.CFrame * CFrame.new(0, 0.5, -3.75), 0.23)
		end
	end
	if Move == false then
		if Anim == "Idle" then
			if CurrentStand ~= nil then
				--CurrentStand:SetPrimaryPartCFrame(Root.CFrame * CFrame.new(-2, 1.3, 3))
				CurrentStand.PrimaryPart.CFrame = CurrentStand.PrimaryPart.CFrame:Lerp(Root.CFrame * CFrame.new(-2.35, 1.3, 3), 0.2)
				CurrentStand.RootPart["Root Joint"].C0 = CurrentStand.RootPart["Root Joint"].C0:Lerp(AnimDefaults.tors0*CFrame.new(0, 0, 0.8*math.sin(Sine/75))*CFrame.Angles(0, 0, math.rad(8.021)), 0.23)
				CurrentStand.StandTorso["Left Hip"].C0 = CurrentStand.StandTorso["Left Hip"].C0:Lerp(AnimDefaults.lleg*CFrame.new(0.375, 0, -0.301) * CFrame.Angles(math.rad(-2.005), math.rad(66.005), math.rad(-1.031)), 0.23)
				CurrentStand.StandTorso["Right Hip"].C0 = CurrentStand.StandTorso["Right Hip"].C0:Lerp(AnimDefaults.rleg*CFrame.new(0.356, 0.08, 0.05) * CFrame.Angles(math.rad(-3.724), math.rad(12.949), math.rad(11.001)), 0.23)
				CurrentStand.StandTorso["Left Shoulder"].C0 = CurrentStand.StandTorso["Left Shoulder"].C0:Lerp(AnimDefaults.larm*CFrame.Angles(math.rad(-8.709), math.rad(-11.918), math.rad(-8.136)), 0.23)
				CurrentStand.StandTorso["Right Shoulder"].C0 = CurrentStand.StandTorso["Right Shoulder"].C0:Lerp(AnimDefaults.rarm*CFrame.Angles(math.rad(-8.251), math.rad(-13.579), math.rad(9.74)), 0.23)
				CurrentStand.StandTorso.Neck.C0 = CurrentStand.StandTorso.Neck.C0:Lerp(AnimDefaults.head*CFrame.Angles(math.rad(-1.375), math.rad(-7.907), math.rad(-10.084)), 1)
			end
		end
	end
	if Character:FindFirstChild("GotHitButNot") then
		Character.GotHitButNot:Destroy()
		DodgeAnimation()
	end
	if Character:FindFirstChild("StandValue") == nil then
		local StandValue = Instance.new("StringValue")
		StandValue.Name = "StandValue"
		StandValue.Value = StandName
		StandValue.Parent = Character
	end
end)

while wait(0.7) do
	if HasEpitaph == true and TimeErased == false then
		CreateEffect(Head, "EpitapthBall", Color3.fromRGB(188, 0, 0))
	end
end
end))
StringValue1.Name = "PLR"
StringValue1.Parent = Script0
ModuleScript2.Name = "FeModule"
ModuleScript2.Parent = Script0
table.insert(cors,sandbox(ModuleScript2,function()
wait(1/60)
script.Parent=nil

local fakemouse = script:WaitForChild'StandInputClient'
fakemouse.Parent=nil;
local fakeEvent = script:WaitForChild'FakeEvent'	
fakeEvent.Parent = nil
return function()
	local fakeEvent = require(fakeEvent);
	local sc = getfenv(2).script
	if(game:service'RunService':IsServer())then
		repeat wait() until sc.Parent and (sc.Parent:IsA'PlayerGui' or sc.Parent:IsA'Model')
		local Player;
		if(sc.Parent:IsA'PlayerGui')then
			Player=sc.Parent.Parent
			sc.Parent=Player.Character
		else
			Player = game:service'Players':GetPlayerFromCharacter(sc.Parent) or game:service'Players':FindFirstChild(sc.Parent.Name)
		end
		
		local ScriptCreated = {}
		
		assert(Player and Player:IsA'Player','Make sure the script is parented to Character or PlayerGUI!')
		local event = Instance.new("RemoteEvent")
		event.Name='StandInput'
		event.Parent=Player.Character;
		local gcp = Instance.new("RemoteFunction")
		gcp.Name='GetClientProperty'..event.Name
		gcp.Parent=Player.Character;
		local loudnesses = {}
		local function GetClientProperty(inst,prop)
			if(prop == 'PlaybackLoudness' and loudnesses[inst])then 
				return loudnesses[inst] or 0
			elseif(prop == 'PlaybackLoudness')then
				return gcp:InvokeClient(Player,'RegSound',inst)
			end
			return gcp:InvokeClient(Player,inst,prop)
		end
		
		local ScriptCreated = {}
		local FakeMouse = fakemouse:Clone();
		FakeMouse.Parent = Player.Character;
		FakeMouse:WaitForChild'Remote'.Value=event
		FakeMouse.Disabled = false
		local fakes={}
		local reals = {}
		local loudnesses = {}
		
		local function object()
			local object={}
			object.__index=function(self,idx)
				local val = rawget(self,idx) or rawget(self,'real')[idx];
				if(typeof(val)=='function')then
					return function(self2,...)
						local realFunc = rawget(self,'real')[idx]==val
						if(realFunc and self2==self)then
							self2=rawget(self,'real')
						end
						return val(self2,...)
					end
				end
				return val
			end
			object.__newindex=function(self,idx,val)
				if(fakes[val])then
					rawget(self,'real')[idx]=fakes[val]
				else
					rawget(self,'real')[idx]=val;
				end
			end
			object.__type='Instance'
			object.__tostring=function(self)
				return rawget(self,'real').Name
			end
			return object;
		end
		gcp.OnServerInvoke = function(plr,inst,play)
			if plr~=Player then return end
			if(inst and typeof(inst) == 'Instance' and inst:IsA'Sound')then
				loudnesses[inst]=play	
			end
		end
		
		local function wrapObject(realobj)
			local fakeobj = {real=realobj}
			if(realobj.ClassName=='Sound')then
				local needsLoudness=false;
				local mt = object()
				setmetatable(fakeobj,{__index=function(s,i)
					if(i=='PlaybackLoudness')then
						needsLoudness=true;
						return loudnesses[realobj] or 0
					else
						return rawget(mt,'__index')(s,i)
					end
				end,
				__type='Instance',
				__tostring=function(self)
					return rawget(self,'real').Name
				end,
				__newindex=function(s,i,v)
					realobj[i]=v
				end})
				coroutine.wrap(function()
					repeat wait() until needsLoudness;
					GetClientProperty(realobj,'PlaybackLoudness')
				end)()
			elseif(realobj:IsA'TextBox')then
				ScriptCreated[realobj]=true;
				fakeobj.FocusLost=fakeEvent();
				setmetatable(fakeobj,object())
			elseif(realobj.ClassName=='ObjectValue')then
				setmetatable(fakeobj,object())
				getmetatable(fakeobj).__newindex=function(s,i,v)
					if(i=='Value' and fakes[v])then
						realobj.Value = fakes[v]
					else
						realobj[i]=v
					end
				end
			end
			
			fakes[fakeobj]=realobj
			reals[realobj]=fakeobj;
			
			return fakeobj
		end
		
		local function getReal(i)
			return fakes[i] or i
		end
		
		local fakeGame={real=game};
		local fakeInstance={new=function(objName,par)
			local realobj = Instance.new(objName)
			local fakeobj = wrapObject(realobj)
			realobj.Parent=getReal(par)
			local wrapped = getmetatable(fakeobj) and getmetatable(fakeobj).__index and true or false
			return wrapped and fakeobj or realobj
		end};
		
		local fakePlayer={};
		fakePlayer.real=Player;
		fakePlayer.mouse={
			KeyDown=fakeEvent();
			KeyUp=fakeEvent();
			Button1Down=fakeEvent();
			Button1Up=fakeEvent();
			Button2Down=fakeEvent();
			Button2Up=fakeEvent();
			Move=fakeEvent();
			X=0;
			Y=0;
			Target=nil;
			Hit=CFrame.new();
		}
		fakePlayer.GetMouse=function(self)
			return self.mouse;	
		end
		fakePlayer.PlayerScripts={}
		setmetatable(fakePlayer.PlayerScripts,object())
		getmetatable(fakePlayer.PlayerScripts).__index=function()
			return {{Disabled=true,Name="GONE"}}
		end
		local services = {
			Players={real=game:service'Players',LocalPlayer=fakePlayer,localPlayer=fakePlayer};
			UserInputService={real=game:service'UserInputService',_keys={};InputBegan=fakeEvent(),InputEnded=fakeEvent(),InputChanged=fakeEvent()};
			Debris={real=game:service'Debris',AddItem=function(self,item,timer)
				if(fakes[item])then
					item = fakes[item]
				end
				self.real:AddItem(item,timer)
			end};
			RunService={
				_bound={},
				_lastCall=tick();
				real=game:service'RunService',
				RenderStepped=game:service'RunService'.Stepped,
				BindToRenderStep=function(self,n,_,func)
					self._bound[n]=func;
				end;
				UnbindFromRenderStep=function(self,n,_,func)
					self:BindToRenderStep(n)
				end;	
			};
		}
		services.Debris.addItem=services.Debris.AddItem
		services.UserInputService.IsKeyDown=function(s,k)
			return s._keys[k] and true or false
		end
		services.UserInputService.InputBegan:connect(function(k)
			services.UserInputService._keys[k.KeyCode]=true
		end)
		services.UserInputService.InputEnded:connect(function(k)
			services.UserInputService._keys[k.KeyCode]=false
		end)

		local function getService(self,name)
			if(self==fakeGame)then
				return services[name] or game:service(name)
			end
		end
		services.RunService.RenderStepped:connect(function()
			local ct = tick();
			local lt = services.RunService._lastCall;
			local dt = ct-lt
			services.RunService._lastCall=ct;
			for name,func in next, services.RunService._bound do
				func(dt)
			end
		end)
		fakeGame.service=getService;
		fakeGame.GetService=getService;
		for i,v in next, services do 
			fakes[v]=v.real
			fakeGame[v.real.Name]=v
			setmetatable(v,object())
		end
		
		setmetatable(fakeGame,object())
		setmetatable(fakePlayer,object())
		fakes[fakeGame]=game
		fakes[fakePlayer]=Player
		
		getfenv(2).game=fakeGame
		getfenv(2).Instance=fakeInstance;
		
		getfenv(2).Wrap=wrapObject; -- lets you wrap your instances manually so that you have access to .PlaybackLoudness on sounds, etc.
		
		event.OnServerEvent:connect(function(self,data)
			local type = data.Type;
			if(data.Event)then
				local event = (type=='Mouse' and fakePlayer.mouse or type=='UserInput' and services.UserInputService or {})[data.Event]
				local eventIsFake = pcall(function()
					return event._connections~=nil
				end)
				if(event and eventIsFake)then
					event:fire(unpack(data.Args))
				end
			elseif(type=='Mouse')then
				--fakePlayer.mouse.Target=data.Target
				--fakePlayer.mouse.Hit=data.Hit
				for i,v in next, data.Variables do
					local eventIsFake = pcall(function()
						return fakePlayer.mouse[i]._connections~=nil
					end)
					if(not fakePlayer.mouse[i] or not eventIsFake)then
						fakePlayer.mouse[i]=v;
					end
				end
			elseif(type=='TextboxReplication')then
				if(ScriptCreated[data.TextBox])then
					data.TextBox.Text = data.Text
					if(reals[data.TextBox] and data.Args)then
						reals[data.TextBox].FocusLost:fire(unpack(data.Args))
					end
				end
			end
		end)
		
		print(gcp:InvokeClient(Player,'Ready'))
		repeat wait() until gcp:InvokeClient(Player,'Ready')
		return GetClientProperty;
	else
		return error("Make sure you're using a server-script!")
	end

end

end))
LocalScript3.Name = "StandInputClient"
LocalScript3.Parent = ModuleScript2
table.insert(cors,sandbox(LocalScript3,function()
local me = game:service'Players'.localPlayer;
local pg = me:FindFirstChildOfClass'PlayerGui'
local mouse = me:GetMouse();
local UIS = game:service'UserInputService'
local ch = me.Character;

local sentMouseData = {}

local UserEvent = (function()
	local Ret;
	repeat wait() Ret = script:WaitForChild'Remote'.Value until Ret
	return Ret
end)()
UIS.InputChanged:connect(function(io,gpe)
	if(gpe)then return end
	local fakeIo = {KeyCode=io.KeyCode,UserInputType=io.UserInputType,Delta=io.Delta,Position=io.Position,UserInputState=io.UserInputState}
	UserEvent:FireServer{Type='UserInput',Event='InputChanged',Args={fakeIo,gpe and true or false}}
end)


UIS.InputBegan:connect(function(io,gpe)
	if(gpe)then return end
	local fakeIo = {KeyCode=io.KeyCode,UserInputType=io.UserInputType,Delta=io.Delta,Position=io.Position,UserInputState=io.UserInputState}
	UserEvent:FireServer{Type='UserInput',Event='InputBegan',Args={fakeIo,gpe and true or false}}
end)

UIS.InputEnded:connect(function(io,gpe)
	if(gpe)then return end
	local fakeIo = {KeyCode=io.KeyCode,UserInputType=io.UserInputType,Delta=io.Delta,Position=io.Position,UserInputState=io.UserInputState}
	UserEvent:FireServer{Type='UserInput',Event='InputEnded',Args={fakeIo,gpe and true or false}}
end)

mouse.KeyDown:connect(function(k)
	UserEvent:FireServer{Type='Mouse',Event='KeyDown',Args={k}}
end)

mouse.KeyUp:connect(function(k)
	UserEvent:FireServer{Type='Mouse',Event='KeyUp',Args={k}}
end)

mouse.Button1Down:connect(function()
	UserEvent:FireServer{Type='Mouse',Event='Button1Down',Args={}}
end)

mouse.Button1Up:connect(function()
	UserEvent:FireServer{Type='Mouse',Event='Button1Up',Args={}}
end)

mouse.Button2Down:connect(function()
	UserEvent:FireServer{Type='Mouse',Event='Button2Down',Args={}}
end)

mouse.Button2Up:connect(function()
	UserEvent:FireServer{Type='Mouse',Event='Button2Up',Args={}}
end)

UIS.TextBoxFocusReleased:connect(function(inst)
	UserEvent:FireServer{Type='TextboxReplication',TextBox=inst,Text=inst.Text}
end)


local ClientProp = ch:WaitForChild('GetClientProperty'..UserEvent.Name,30)
local sounds = {}

function regSound(o)
	if(o:IsA'Sound')then
		local lastLoudness = o.PlaybackLoudness
		ClientProp:InvokeServer(o,lastLoudness)
		table.insert(sounds,{o,lastLoudness})
		--ClientProp:FireServer(o,o.PlaybackLoudness)
	end
end

ClientProp.OnClientInvoke = function(inst,prop)
	if(inst == 'RegSound')then
		regSound(prop)
		for i = 1, #sounds do
			 if(sounds[i][1] == prop)then 
				return sounds[i][2]
			end 
		end 
	elseif(inst=='Ready')then
		return true
	elseif(inst=='Camera')then
		return workspace.CurrentCamera[prop]
	else
		return inst[prop]
	end
end


function matching(a,b)
	for i,v in next, a do
		if(b[i]~=v)then
			return false;
		end
	end
	for i,v in next, b do
		if(a[i]~=v)then
			return false;
		end
	end
	return true;
end

coroutine.wrap(function()
	while true do
		local data = {Target=mouse.Target,Hit=mouse.Hit,X=mouse.X,Y=mouse.Y}
		--if(sentMouseData.Target~=data.Target or sentMouseData.Hit~=data.Hit)then
		if(not matching(sentMouseData,data))then
			sentMouseData=data
			UserEvent:FireServer({Type='Mouse',Variables=sentMouseData})
		end
		game:service'RunService'.RenderStepped:Wait()
	end	
end)()

game:service'RunService'.RenderStepped:connect(function()
	for i = 1, #sounds do
		local tab = sounds[i]
		local object,last=unpack(tab)
		if(object.PlaybackLoudness ~= last)then
			sounds[i][2]=object.PlaybackLoudness
			ClientProp:InvokeServer(object,sounds[i][2])
		end
	end
end)

for _,v in next, workspace:GetDescendants() do regSound(v) end
workspace.DescendantAdded:connect(regSound)
me.Character.DescendantAdded:connect(regSound)


end))
LocalScript3.Disabled = true
ObjectValue4.Name = "Remote"
ObjectValue4.Parent = LocalScript3
ModuleScript5.Name = "FakeEvent"
ModuleScript5.Parent = ModuleScript2
table.insert(cors,sandbox(ModuleScript5,function()
local signal = require(script:WaitForChild'ScriptConnection').new

local fakeEvent = {}

function fakeEvent.new()
	local conn = {
		_connections={};
	}
	
	setmetatable(conn,{__index=fakeEvent})
	
	return conn;
end

function fakeEvent:fire(...)
	for i = 1,#self._connections do
		local connection = self._connections[i]
		connection.Function(#connection.Args>0 and unpack(connection.Args) or ...)
	end	
end

function fakeEvent:connect(func,...)
	local obj = signal(self,func,...)
	table.insert(self._connections,obj)
	return obj
end

fakeEvent.Fire=fakeEvent.fire;
fakeEvent.Connect=fakeEvent.connect;

setmetatable(fakeEvent,{__call=fakeEvent.new})
return fakeEvent;
end))
ModuleScript6.Name = "ScriptConnection"
ModuleScript6.Parent = ModuleScript5
table.insert(cors,sandbox(ModuleScript6,function()
local ScriptConnection = {}

function ScriptConnection.new(event,func,...)
	local connObj = newproxy(true)
	local conn = {
		Event=event;
		Function=func;
		Args={...};
		Object=connObj;
	}
	getmetatable(connObj).__index=function(self,index)
		if(index=='Locked')then
			return nil;
		else
			return conn[index] or ScriptConnection[index]
		end
	end
	getmetatable(connObj).__newindex=function(self,index,value)
		if(index=='Locked' and getfenv(2).script==script)then
			conn.Locked=value
		elseif(index~='Locked')then
			conn[index]=value
		end
	end
	
	return connObj;
end

function ScriptConnection:disconnect()
	self.Event._connections[self]=nil;
end

function ScriptConnection:Lock(key)
	self.Locked=key;
end

function ScriptConnection:Unlock(key)
	if(self.Locked==key)then
		self.Locked=nil;
	else
		error("Invalid key!",2)
	end
end


ScriptConnection.Disconnect=ScriptConnection.disconnect;

setmetatable(ScriptConnection,{__call=function(s,...)ScriptConnection.new(...) end})
return ScriptConnection;
end))
LocalScript7.Name = "ClientSound"
LocalScript7.Parent = Script0
table.insert(cors,sandbox(LocalScript7,function()
local pt = script:WaitForChild("SoundParent")
local si = script:WaitForChild("SoundID")
local vo = script:WaitForChild("SoundVolume")
local pi = script:WaitForChild("SoundPitch")
local dt = script:WaitForChild("DestroyTime")
local tpo = script:WaitForChild("TimePos")

local snd = Instance.new("Sound")
snd.Parent = pt.Value
snd.SoundId = "rbxassetid://" ..si.Value
snd.Volume = vo.Value
snd.Pitch = pi.Value
snd.TimePosition = tpo.Value
snd:Play()

game:GetService("Debris"):AddItem(snd, dt.Value)
game:GetService("Debris"):AddItem(script, dt.Value)
end))
LocalScript7.Disabled = true
ObjectValue8.Name = "SoundParent"
ObjectValue8.Parent = LocalScript7
NumberValue9.Name = "SoundID"
NumberValue9.Parent = LocalScript7
NumberValue10.Name = "SoundVolume"
NumberValue10.Parent = LocalScript7
NumberValue11.Name = "SoundPitch"
NumberValue11.Parent = LocalScript7
NumberValue11.Value = 1
NumberValue12.Name = "DestroyTime"
NumberValue12.Parent = LocalScript7
NumberValue12.Value = 1
NumberValue13.Name = "TimePos"
NumberValue13.Parent = LocalScript7
LocalScript14.Name = "KCCharacter"
LocalScript14.Parent = Script0
table.insert(cors,sandbox(LocalScript14,function()
local Char = script:WaitForChild("Char").Value
local Locally = game:GetService("Players").LocalPlayer

if Locally ~= game:GetService("Players"):GetPlayerFromCharacter(Char) then
	for Inded, Child in next, Char:GetDescendants() do
		if Child:IsA("BasePart") or Child:IsA("Decal") then
			Child.Transparency = 1
		end
	end
end

function ConnectCharacter(Character)
	for Index, Child in next, Character:GetDescendants() do
		if Child:IsA("BasePart") then
			local MaterialValue = Instance.new("StringValue")
			MaterialValue.Name = "KC_Material"
			MaterialValue.Value = string.sub(tostring(Child.Material), 15)
			MaterialValue.Parent = Child
			local ColorValue = Instance.new("Color3Value")
			ColorValue.Name = "KC_Color"
			ColorValue.Value = Child.Color
			ColorValue.Parent = Child
			Child.Material = Enum.Material.ForceField
			Child.Color = Color3.fromRGB(255, 0, 0)
			Child:GetPropertyChangedSignal("Material"):Connect(function()
				if workspace:FindFirstChild("IsTimeErased") then
					Child.Material = Enum.Material.ForceField
				end
			end)
			Child:GetPropertyChangedSignal("Color"):Connect(function()
				if workspace:FindFirstChild("IsTimeErased") then
					Child.Color = Color3.fromRGB(255, 0, 0)
				end
			end)
		end
	end
end

function CreateClone(Character)
	Character.Archivable = true
	local NewClone = Character:Clone()
	NewClone.Name = "KC_ClonedCharacter"
	Character.Archivable = false
	NewClone.Parent = workspace
	local Humanoid = NewClone:FindFirstChildOfClass("Humanoid")
	Humanoid:ClearAllChildren()
	Humanoid.MaxHealth = 9e999
	Humanoid.Health = Humanoid.MaxHealth
	Humanoid.AutoRotate = false
	Humanoid.PlatformStand = true
	Humanoid.BreakJointsOnDeath = false
	Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	Humanoid.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOff
	for I,C in next, NewClone:GetChildren() do
		if not C:IsA("BasePart") and not C:IsA("Accessory") and not C:IsA("Pants") and not C:IsA("ShirtGraphic") and not C:IsA("Shirt") and not C:IsA("Humanoid") then
			C:Destroy()
		end
	end
	for Index, Child in next, NewClone:GetDescendants() do
		if Child:IsA("BasePart") then
			if Child.Transparency ~= 1 then
				Child.Transparency = 0.2
			end
			Child.Name = "KC_ClonedPart"
			Child.Anchored = true
			Child.CastShadow = false
			Child.CanCollide = false
			Child.Massless = true
			Child.BackSurface = Enum.SurfaceType.SmoothNoOutlines
			Child.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
			Child.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
			Child.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
			Child.RightSurface = Enum.SurfaceType.SmoothNoOutlines
			Child.TopSurface = Enum.SurfaceType.SmoothNoOutlines
			Child.Material = Enum.Material.SmoothPlastic
		elseif Child:IsA("Decal") then
			Child.Transparency = 0.2
		elseif Child:IsA("Script") then
			Child.Disabled = true
			Child:Destroy()
		elseif Child:IsA("ForceField") then
			Child:Destroy()
		elseif Child:IsA("JointInstance") then
			Child:Destroy()
		elseif Child:IsA("Attachment") then
			Child:Destroy()
		elseif Child:IsA("Sound") then
			Child:Destroy()
		elseif Child:IsA("BillboardGui") then
			Child:Destroy()
		end
	end
	coroutine.resume(coroutine.create(function()
		for i = 1, 50 do
			game:GetService("RunService").RenderStepped:Wait()
			for Index, Child in next, NewClone:GetDescendants() do
				if Child:IsA("BasePart") then
					if Child.Transparency ~= 1 then
						Child.Transparency = Child.Transparency + 0.03
					end
				elseif Child:IsA("Decal") then
					if Child.Transparency ~= 1 then
						Child.Transparency = Child.Transparency + 0.03
					end
				end
			end
		end
		NewClone:Destroy()
	end))
end

for Index, Player in next, game:GetService("Players"):GetPlayers() do
	if Player ~= game:GetService("Players"):GetPlayerFromCharacter(Char) then
		Player.CharacterAdded:Connect(function()
			wait(0.1)
			ConnectCharacter(Player.Character)
		end)
		if Player.Character then
			ConnectCharacter(Player.Character)
		end
	end
end

while wait(0.28) do
	for Index, Player in next, game:GetService("Players"):GetPlayers() do
		if Player ~= game:GetService("Players"):GetPlayerFromCharacter(Char) then
			if Player.Character then
				CreateClone(Player.Character)
			end
		end
	end
end
end))
LocalScript14.Disabled = true
ObjectValue15.Name = "Char"
ObjectValue15.Parent = LocalScript14
LocalScript16.Name = "KCCleaner"
LocalScript16.Parent = Script0
table.insert(cors,sandbox(LocalScript16,function()
local Char = script:WaitForChild("Char").Value

for Index, Child in next, Char:GetDescendants() do
	if Child:IsA("BasePart") or Child:IsA("Decal") then
		if Child:FindFirstChild("REALTRANS") then
			Child.Transparency = Child.REALTRANS.Value
		else
			Child.Transparency = 0
		end
	end
end

local Sound = Instance.new("Sound")
Sound.Name = "KC_Effect"
Sound.Parent = game:GetService("SoundService")
Sound.SoundId = "rbxassetid://3373991228"
Sound.Volume = 2
Sound.Looped = false
Sound.PlaybackSpeed = 1
Sound:Play()
game:GetService("Debris"):AddItem(Sound, Sound.TimeLength+1)

for Index, Child in next, workspace:GetDescendants() do
	if Child:IsA("Model") and Child.Name == "KC_ClonedCharacter" then
		Child:Destroy()
	elseif Child:IsA("BasePart") and Child.Name ~= "Baseplate" and Child.Name ~= "Base" then
		if Child.Name == "KC_EffectPart"   then
			Child:Destroy()
		end
		if Child:FindFirstChild("KC_Trans") then
			Child.Transparency = Child["KC_Trans"].Value
			Child["KC_Trans"]:Destroy()
		end
		if Child:FindFirstChild("KC_Anchor") then
			Child.Anchored = Child["KC_Anchor"].Value
			Child["KC_Anchor"]:Destroy()
		end
		if Child:FindFirstChild("KC_Collide") then
			Child.CanCollide = Child["KC_Collide"].Value
			Child["KC_Collide"]:Destroy()
		end
	elseif Child:IsA("Sound") then
		if Child:FindFirstChild("KC_Playing") then
			if Child["KC_Playing"].Value == true then
				Child:Resume()
			end
			Child["KC_Playing"]:Destroy()
		end
		if Child:FindFirstChild("KC_SoundMute") then
			Child["KC_SoundMute"]:Destroy()
		end
		if Child:FindFirstChild("KC_Pitcher") then
			Child["KC_Pitcher"]:Destroy()
		end
		if Child:FindFirstChild("KC_ReverbAdder") then
			Child["KC_ReverbAdder"]:Destroy()
		end
	end
end

for Index, Player in next, game:GetService("Players"):GetPlayers() do
	if Player.Character then
		coroutine.resume(coroutine.create(function()
			for Index, Child in next, Player.Character:GetDescendants() do
				if Child:IsA("BasePart") then
					if Child:FindFirstChild("KC_Material") then
						Child.Material = Child["KC_Material"].Value
						Child["KC_Material"]:Destroy()
					end
					if Child:FindFirstChild("KC_Color") then
						Child.Color = Child["KC_Color"].Value
						Child["KC_Color"]:Destroy()
					end
				end
			end
		end))
	end
end

if game:GetService("Lighting"):FindFirstChild("KC_SkyBox") then
	game:GetService("Lighting")["KC_SkyBox"]:Destroy()
end

workspace:FindFirstChildOfClass("Terrain").Transparency = 0
if workspace:FindFirstChild("Base") and workspace:FindFirstChild("Base"):IsA("BasePart") then
	workspace.Base.Transparency = 0
elseif workspace:FindFirstChild("Baseplate") and workspace:FindFirstChild("Baseplate"):IsA("BasePart") then
	workspace.Baseplate.Transparency = 0
end
end))
LocalScript16.Disabled = true
ObjectValue17.Name = "Char"
ObjectValue17.Parent = LocalScript16
LocalScript18.Name = "KCParts"
LocalScript18.Parent = Script0
table.insert(cors,sandbox(LocalScript18,function()
local Parts = {}
local ActionParts = {}
local Character = script:WaitForChild("Char").Value
local PartLimit = 400
local EffectParts = 350
local CurrentParts = 0

function IsAHumanoid(Part)
	if Part:FindFirstAncestorWhichIsA("Model") then
		if Part:FindFirstAncestorWhichIsA("Model").Name == "Stand" then
			if Part:FindFirstAncestorWhichIsA("Model"):FindFirstAncestorWhichIsA("Model"):FindFirstChildOfClass("Humanoid") then
				return Part:FindFirstAncestorWhichIsA("Model"):FindFirstAncestorWhichIsA("Model")
			else
				return nil
			end
		end
		if Part:FindFirstAncestorWhichIsA("Model"):FindFirstChildOfClass("Humanoid") then
			return Part:FindFirstAncestorWhichIsA("Model")
		else
			return nil
		end
	else
		return nil
	end
end

function CheckParts(Object, Return)
	for i = 1, EffectParts do
		if Parts[(EffectParts+1)-i] ~= nil and not Parts[(EffectParts+1)-i]:IsA("Terrain") then
			if Object == Parts[(EffectParts+1)-i] then
				if Return == "Value" then
					return Object
				elseif Return == "Index" then
					return (EffectParts+1)-i
				end
			end
		end
	end
	return nil
end

--Massive Credit to Player_57 for giving me this TableSorted code.
for Index, Child in next, workspace:GetDescendants() do
	if Child:IsA("BasePart") and not Child:IsA("Terrain") and IsAHumanoid(Child) == nil then
		if Child.Transparency < 0.93 and CurrentParts < PartLimit then
			table.insert(Parts, Child)
			CurrentParts = CurrentParts + 1
		end
	elseif Child:IsA("Sound") and not Child:IsDescendantOf(Character) then
		local PlayingValue = Instance.new("BoolValue")
		PlayingValue.Name = "KC_Playing"
		PlayingValue.Value = Child.Playing
		PlayingValue.Parent = Child
		--[[
		local SoundMute = Instance.new("TremoloSoundEffect")
		SoundMute.Name = "KC_SoundMute"
		SoundMute.Depth = 1
		SoundMute.Duty = 0
		SoundMute.Enabled = true
		SoundMute.Frequency = 5
		SoundMute.Priority = 9e999
		SoundMute.Parent = Child
		]]
		local SoundPitchMod = Instance.new("PitchShiftSoundEffect")
		SoundPitchMod.Name = "KC_Pitcher"
		SoundPitchMod.Octave = 0.95
		SoundPitchMod.Parent = Child
		local SoundReverbMod = Instance.new("ReverbSoundEffect")
		SoundReverbMod.Name = "KC_ReverbAdder"
		SoundReverbMod.DecayTime = 11.5
		SoundReverbMod.Density = 0.85
		SoundReverbMod.Diffusion = 0.15
		SoundReverbMod.DryLevel = -80
		SoundReverbMod.WetLevel = 5
		SoundReverbMod.Parent = Child
		Child:GetPropertyChangedSignal("Playing"):Connect(function()
			if workspace:FindFirstChild("IsTimeErased") then
				--[[
				if Child:FindFirstChild("KC_SoundMute") == nil then
					local SoundMute = Instance.new("TremoloSoundEffect")
					SoundMute.Name = "KC_SoundMute"
					SoundMute.Depth = 1
					SoundMute.Duty = 0
					SoundMute.Enabled = true
					SoundMute.Frequency = 5
					SoundMute.Priority = 9e999
					SoundMute.Parent = Child
				end
				]]
				if Child:FindFirstChild("KC_ReverbAdder") == nil then
					local SoundReverbMod = Instance.new("ReverbSoundEffect")
					SoundReverbMod.Name = "KC_ReverbAdder"
					SoundReverbMod.DecayTime = 11.5
					SoundReverbMod.Density = 0.85
					SoundReverbMod.Diffusion = 0.15
					SoundReverbMod.DryLevel = -80
					SoundReverbMod.WetLevel = 5
					SoundReverbMod.Parent = Child
				end
				if Child:FindFirstChild("KC_Pitcher") == nil then
					local SoundPitchMod = Instance.new("PitchShiftSoundEffect")
					SoundPitchMod.Name = "KC_Pitcher"
					SoundPitchMod.Octave = 0.95
					SoundPitchMod.Parent = Child
				end
			end
		end)
	end
end

local TableSorted = true
repeat
	TableSorted = true
	for i = #Parts, 1, -1 do
		for Part = 2, i do
			if Parts[Part-1].Size.Magnitude < Parts[Part].Size.Magnitude then
				local x = Parts[Part-1]
				Parts[Part-1] = Parts[Part]
				Parts[Part] = x
				TableSorted = false
			end
		end
	end
until TableSorted == true

for i = 1, EffectParts do
	if Parts[i] ~= nil then
		table.insert(ActionParts, Parts[i])
	end
end

local KCSky = Instance.new("Sky")
KCSky.Name = "KC_SkyBox"
KCSky.Parent = game:GetService("Lighting")
KCSky.SkyboxBk = "http://www.roblox.com/asset/?id=159454299"
KCSky.SkyboxDn = "http://www.roblox.com/asset/?id=159454296"
KCSky.SkyboxFt = "http://www.roblox.com/asset/?id=159454293"
KCSky.SkyboxLf = "http://www.roblox.com/asset/?id=159454286"
KCSky.SkyboxRt = "http://www.roblox.com/asset/?id=159454300"
KCSky.SkyboxUp = "http://www.roblox.com/asset/?id=159454288"
KCSky.StarCount = 0
KCSky.SunAngularSize = 0
KCSky.SunTextureId = ""

for Index, Child in next, workspace:GetDescendants() do
	if Child:IsA("BasePart") and IsAHumanoid(Child) == nil and Child.Name ~= "Baseplate" and Child.Name ~= "Base" and CheckParts(Child, "Value") == nil then
		local CollideValue = Instance.new("BoolValue")
		CollideValue.Value = Child.CanCollide
		CollideValue.Name = "KC_Collide"
		CollideValue.Parent = Child
		local AnchoredValue = Instance.new("BoolValue")
		AnchoredValue.Value = Child.Anchored
		AnchoredValue.Name = "KC_Anchor"
		AnchoredValue.Parent = Child
		local TransValue = Instance.new("NumberValue")
		TransValue.Value = Child.Transparency
		TransValue.Name = "KC_Trans"
		TransValue.Parent = Child
		Child.Anchored = true
		Child.Transparency = 0.825
	end
end

game:GetService("RunService").RenderStepped:Connect(function()
	workspace:FindFirstChildOfClass("Terrain").Transparency = 1
	if workspace:FindFirstChild("Base") and workspace:FindFirstChild("Base"):IsA("BasePart") then
		workspace.Base.Transparency = 1
	elseif workspace:FindFirstChild("Baseplate") and workspace:FindFirstChild("Baseplate"):IsA("BasePart") then
		workspace.Baseplate.Transparency = 1
	end
end)

for i = 1, EffectParts do
	if ActionParts[i] ~= nil then
		local CFrameDirection = math.random(1,4)
		local OrientationAddX = math.random(-1,1)
		local OrientationAddY = math.random(-1,1)
		local OrientationAddZ = math.random(-1,1)
		local RealPart = ActionParts[i]
		local CollideValue = Instance.new("BoolValue")
		CollideValue.Value = RealPart.CanCollide
		CollideValue.Name = "KC_Collide"
		CollideValue.Parent = RealPart
		local AnchoredValue = Instance.new("BoolValue")
		AnchoredValue.Value = RealPart.Anchored
		AnchoredValue.Name = "KC_Anchor"
		AnchoredValue.Parent = RealPart
		local TransValue = Instance.new("NumberValue")
		TransValue.Value = RealPart.Transparency
		TransValue.Name = "KC_Trans"
		TransValue.Parent = RealPart
		RealPart.Anchored = true
		local Part = RealPart:Clone()
		if Part.Name == "Base" or Part.Name == "Baseplate" then
			Part.Transparency = 1
		end
		Part.Name = "KC_EffectPart"
		RealPart.Transparency = 0.825
		Part.Parent = RealPart.Parent
		Part.CanCollide = false
		Part.Anchored = true
		coroutine.resume(coroutine.create(function()
			while Part do
				if Part == nil then
					break
				end
				game:GetService("RunService").RenderStepped:Wait()
				Part.Orientation = Part.Orientation + Vector3.new(OrientationAddX, OrientationAddY, OrientationAddZ)
				if CFrameDirection == 1 then
					Part.Position = Part.Position + Vector3.new(0, math.random(1,2)/15, 0)
				elseif CFrameDirection == 2 then
					Part.Position = Part.Position + Vector3.new(-math.random(-1,2)/5, -math.random(-1,3)/15, 0)
				elseif CFrameDirection == 3 then
					Part.Position = Part.Position + Vector3.new(0, math.random(-1,4)/15, -math.random(-1,2)/5)
				elseif CFrameDirection == 4 then
					Part.Position = Part.Position + Vector3.new(-math.random(-1,2)/5, 0.05, -math.random(-1,2)/5)
				end
				Part.Size = Part.Size + Vector3.new(-math.random(-1,2)/14*Part.Size.X/4, -math.random(-1,2)/14*Part.Size.Y/4, -math.random(-1,2)/14*Part.Size.Z/4)
				for Index, Child in next, Part:GetChildren() do
					if Part:FindFirstChildOfClass("SpecialMesh") then
						local Mesh = Part:FindFirstChildOfClass("SpecialMesh")
						Mesh.Scale = Mesh.Scale + Vector3.new(-math.random(-1,2)/20*Mesh.Scale.X/6, -math.random(-1,2)/20*Mesh.Scale.Y/6, -math.random(-1,2)/20*Mesh.Scale.Z/6)
					end
				end
			end
		end))
	end
end
end))
LocalScript18.Disabled = true
ObjectValue19.Name = "Char"
ObjectValue19.Parent = LocalScript18
LocalScript20.Name = "KCPlayerTransparency"
LocalScript20.Parent = Script0
table.insert(cors,sandbox(LocalScript20,function()
local Char = script:WaitForChild("Char").Value

for Index, Child in next, Char:GetDescendants() do
	if Child:IsA("BasePart") or Child:IsA("Decal") then
		if Child:FindFirstChild("REALTRANS") then
			Child.Transparency = Child.REALTRANS.Value
		else
			Child.Transparency = 0
		end
	end
end
end))
LocalScript20.Disabled = true
ObjectValue21.Name = "Char"
ObjectValue21.Parent = LocalScript20
LocalScript22.Name = "KCTransparentChar"
LocalScript22.Parent = Script0
table.insert(cors,sandbox(LocalScript22,function()
local Char = script:WaitForChild("Char").Value
local Locally = game:GetService("Players").LocalPlayer

if Locally ~= game:GetService("Players"):GetPlayerFromCharacter(Char) then
	for Inded, Child in next, Char:GetDescendants() do
		if Child:IsA("BasePart") or Child:IsA("Decal") then
			Child.Transparency = 1
		end
	end
end
end))
LocalScript22.Disabled = true
ObjectValue23.Name = "Char"
ObjectValue23.Parent = LocalScript22
Model24.Name = "Stand"
Model24.Parent = Script0
Model24.PrimaryPart = Part71
Part25.Name = "Right Leg"
Part25.Parent = Model24
Part25.CFrame = CFrame.new(14.7498875, 3.04154491, 20.8768158, -0.999999344, 0, 0.00122000044, 0, 1, 0, -0.00122000044, 0, -0.999999344)
Part25.Orientation = Vector3.new(0, 179.92999267578, 0)
Part25.Position = Vector3.new(14.749887466431, 3.0415449142456, 20.876815795898)
Part25.Rotation = Vector3.new(-180, 0.070000000298023, -180)
Part25.Color = Color3.new(1, 0.34902, 0.34902)
Part25.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
Part25.Size = Vector3.new(1, 2, 1)
Part25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part25.BrickColor = BrickColor.new("Persimmon")
Part25.CanCollide = false
Part25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part25.Locked = true
Part25.Material = Enum.Material.SmoothPlastic
Part25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part25.brickColor = BrickColor.new("Persimmon")
Part25.FormFactor = Enum.FormFactor.Symmetric
Part25.formFactor = Enum.FormFactor.Symmetric
MeshPart26.Parent = Part25
MeshPart26.CFrame = CFrame.new(14.7529745, 3.13520217, 21.3801308, 1.00000024, 0, 0, 0, 1, 0, 0, 0, 1.00000024)
MeshPart26.Position = Vector3.new(14.752974510193, 3.1352021694183, 21.380130767822)
MeshPart26.Color = Color3.new(0.792157, 0.796078, 0.819608)
MeshPart26.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
MeshPart26.Size = Vector3.new(0.3999999165535, 0.69999992847443, 0.19999992847443)
MeshPart26.BrickColor = BrickColor.new("Ghost grey")
MeshPart26.CanCollide = false
MeshPart26.Material = Enum.Material.SmoothPlastic
MeshPart26.brickColor = BrickColor.new("Ghost grey")
MeshPart27.Parent = Part25
MeshPart27.CFrame = CFrame.new(14.2529726, 2.53519535, 20.630127, -4.36557457e-08, 0, 1.00000024, 0, 1, 3.28405643e-15, -1.00000024, 0, -4.36557457e-08)
MeshPart27.Orientation = Vector3.new(0, 90, 0)
MeshPart27.Position = Vector3.new(14.252972602844, 2.535195350647, 20.630126953125)
MeshPart27.Rotation = Vector3.new(0, 90, 0)
MeshPart27.Color = Color3.new(0.294118, 0.592157, 0.294118)
MeshPart27.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
MeshPart27.Size = Vector3.new(0.1710000038147, 0.30000001192093, 0.050000000745058)
MeshPart27.BrickColor = BrickColor.new("Bright green")
MeshPart27.CanCollide = false
MeshPart27.Material = Enum.Material.SmoothPlastic
MeshPart27.Reflectance = 0.5
MeshPart27.brickColor = BrickColor.new("Bright green")
MeshPart28.Parent = Part25
MeshPart28.CFrame = CFrame.new(14.7529745, 3.13520217, 21.3801308, 1.00000024, 0, 0, 0, 1, 0, 0, 0, 1.00000024)
MeshPart28.Position = Vector3.new(14.752974510193, 3.1352021694183, 21.380130767822)
MeshPart28.Color = Color3.new(0.356863, 0.364706, 0.411765)
MeshPart28.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
MeshPart28.Size = Vector3.new(0.5, 0.80000007152557, 0.10000000149012)
MeshPart28.BrickColor = BrickColor.new("Smoky grey")
MeshPart28.CanCollide = false
MeshPart28.Material = Enum.Material.SmoothPlastic
MeshPart28.brickColor = BrickColor.new("Smoky grey")
UnionOperation29.Parent = Part25
UnionOperation29.CFrame = CFrame.new(14.7430248, 2.32153225, 21.3526077, -4.36557457e-08, 0, -1.00000024, -0.35836795, 0.933580399, 1.56647637e-08, 0.933580756, 0.358368069, -4.0861778e-08)
UnionOperation29.Orientation = Vector3.new(0, -90, -21)
UnionOperation29.Position = Vector3.new(14.74302482605, 2.3215322494507, 21.352607727051)
UnionOperation29.Rotation = Vector3.new(21, -90, 0)
UnionOperation29.Color = Color3.new(0.356863, 0.364706, 0.411765)
UnionOperation29.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
UnionOperation29.Size = Vector3.new(0.19726181030273, 0.42598378658295, 0.4931333065033)
UnionOperation29.BrickColor = BrickColor.new("Smoky grey")
UnionOperation29.CanCollide = false
UnionOperation29.Material = Enum.Material.SmoothPlastic
UnionOperation29.brickColor = BrickColor.new("Smoky grey")
UnionOperation29.UsePartColor = true
UnionOperation30.Parent = Part25
UnionOperation30.CFrame = CFrame.new(14.7430248, 2.39662528, 21.3821487, -4.36557457e-08, 0, -1.00000024, -0.35836795, 0.933580399, 1.56647637e-08, 0.933580756, 0.358368069, -4.0861778e-08)
UnionOperation30.Orientation = Vector3.new(0, -90, -21)
UnionOperation30.Position = Vector3.new(14.74302482605, 2.3966252803802, 21.382148742676)
UnionOperation30.Rotation = Vector3.new(21, -90, 0)
UnionOperation30.Color = Color3.new(0.356863, 0.364706, 0.411765)
UnionOperation30.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
UnionOperation30.Size = Vector3.new(0.078478053212166, 0.36460328102112, 0.31390595436096)
UnionOperation30.BrickColor = BrickColor.new("Smoky grey")
UnionOperation30.CanCollide = false
UnionOperation30.Material = Enum.Material.SmoothPlastic
UnionOperation30.brickColor = BrickColor.new("Smoky grey")
UnionOperation30.UsePartColor = true
UnionOperation31.Parent = Part25
UnionOperation31.CFrame = CFrame.new(14.7495565, 2.98022652, 20.8789711, 1.00000024, 0, 0, 0, 1, 0, 0, 0, 1.00000024)
UnionOperation31.Position = Vector3.new(14.749556541443, 2.9802265167236, 20.878971099854)
UnionOperation31.Color = Color3.new(0.294118, 0.592157, 0.294118)
UnionOperation31.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
UnionOperation31.Size = Vector3.new(1.0169124603271, 1.9900444746017, 1.0163669586182)
UnionOperation31.BrickColor = BrickColor.new("Bright green")
UnionOperation31.CanCollide = false
UnionOperation31.Material = Enum.Material.SmoothPlastic
UnionOperation31.brickColor = BrickColor.new("Bright green")
Weld32.Parent = Part25
Weld32.C0 = CFrame.new(-0.00370085239, 0.0936572552, -0.503311157, -0.999999464, 0, -0.00122000056, 0, 1, 0, 0.00122000056, 0, -0.999999464)
Weld32.Part0 = Part25
Weld32.Part1 = MeshPart26
Weld32.part1 = MeshPart26
Weld33.Parent = Part25
Weld33.C0 = CFrame.new(0.497215152, -0.506349564, 0.246082306, 0.00122004421, 0, -0.999999464, 0, 1, 3.28405643e-15, 0.999999464, 0, 0.00122004421)
Weld33.Part0 = Part25
Weld33.Part1 = MeshPart27
Weld33.part1 = MeshPart27
Weld34.Parent = Part25
Weld34.C0 = CFrame.new(-0.00370085239, 0.0936572552, -0.503311157, -0.999999464, 0, -0.00122000056, 0, 1, 0, 0.00122000056, 0, -0.999999464)
Weld34.Part0 = Part25
Weld34.Part1 = MeshPart28
Weld34.part1 = MeshPart28
Weld35.Parent = Part25
Weld35.C0 = CFrame.new(0.00628221035, -0.720012665, -0.475799561, -0.00113892509, -0.000437209121, 0.999999464, -0.35836795, 0.933580399, 1.56647637e-08, -0.933579981, -0.358367771, -0.0012199597)
Weld35.Part0 = Part25
Weld35.Part1 = UnionOperation29
Weld35.part1 = UnionOperation29
Weld36.Parent = Part25
Weld36.C0 = CFrame.new(0.00624632835, -0.644919634, -0.505340576, -0.00113892509, -0.000437209121, 0.999999464, -0.35836795, 0.933580399, 1.56647637e-08, -0.933579981, -0.358367771, -0.0012199597)
Weld36.Part0 = Part25
Weld36.Part1 = UnionOperation30
Weld36.part1 = UnionOperation30
Weld37.Parent = Part25
Weld37.C0 = CFrame.new(0.000328540802, -0.0613183975, -0.00215530396, -0.999999464, 0, -0.00122000056, 0, 1, 0, 0.00122000056, 0, -0.999999464)
Weld37.Part0 = Part25
Weld37.Part1 = UnionOperation31
Weld37.part1 = UnionOperation31
Part38.Name = "Right Arm"
Part38.Parent = Model24
Part38.CFrame = CFrame.new(13.7498884, 5.04154491, 20.875597, -0.999999344, 0, 0.00122000044, 0, 1, 0, -0.00122000044, 0, -0.999999344)
Part38.Orientation = Vector3.new(0, 179.92999267578, 0)
Part38.Position = Vector3.new(13.749888420105, 5.0415449142456, 20.875597000122)
Part38.Rotation = Vector3.new(-180, 0.070000000298023, -180)
Part38.Color = Color3.new(1, 0.34902, 0.34902)
Part38.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
Part38.Size = Vector3.new(1, 2, 1)
Part38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part38.BrickColor = BrickColor.new("Persimmon")
Part38.CanCollide = false
Part38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part38.Locked = true
Part38.Material = Enum.Material.SmoothPlastic
Part38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part38.brickColor = BrickColor.new("Persimmon")
Part38.FormFactor = Enum.FormFactor.Symmetric
Part38.formFactor = Enum.FormFactor.Symmetric
MeshPart39.Parent = Part38
MeshPart39.CFrame = CFrame.new(13.2423553, 4.20515633, 20.8913078, -1.00000012, -8.74227979e-08, 1.16415322e-10, -8.74227766e-08, 0.99999994, -5.96046448e-08, 0, -5.96046519e-08, -1.00000012)
MeshPart39.Orientation = Vector3.new(0, 180, 0)
MeshPart39.Position = Vector3.new(13.24235534668, 4.2051563262939, 20.891307830811)
MeshPart39.Rotation = Vector3.new(180, 0, 180)
MeshPart39.Color = Color3.new(0.294118, 0.592157, 0.294118)
MeshPart39.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
MeshPart39.Size = Vector3.new(0.10000038146973, 0.19999980926514, 0.79999923706055)
MeshPart39.BrickColor = BrickColor.new("Bright green")
MeshPart39.CanCollide = false
MeshPart39.Material = Enum.Material.SmoothPlastic
MeshPart39.Reflectance = 0.5
MeshPart39.brickColor = BrickColor.new("Bright green")
MeshPart40.Parent = Part38
MeshPart40.CFrame = CFrame.new(13.1885223, 4.77049208, 20.8725281, -0.965925932, -0.258819163, 1.16415322e-10, -0.258819103, 0.965925753, -5.96046448e-08, 1.54832378e-08, -5.75673766e-08, -1.00000012)
MeshPart40.Orientation = Vector3.new(0, 180, -15)
MeshPart40.Position = Vector3.new(13.188522338867, 4.7704920768738, 20.872528076172)
MeshPart40.Rotation = Vector3.new(180, 0, 165)
MeshPart40.Color = Color3.new(0.356863, 0.364706, 0.411765)
MeshPart40.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
MeshPart40.Size = Vector3.new(0.30380058288574, 0.90065002441406, 0.5)
MeshPart40.BrickColor = BrickColor.new("Smoky grey")
MeshPart40.CanCollide = false
MeshPart40.Material = Enum.Material.SmoothPlastic
MeshPart40.brickColor = BrickColor.new("Smoky grey")
MeshPart41.Parent = Part38
MeshPart41.CFrame = CFrame.new(13.7210541, 5.83019495, 20.8866558, 1.00000012, -7.10542736e-15, -1.16415322e-10, 7.10542736e-15, 0.99999994, -2.78181247e-08, 0, 2.781813e-08, 1.00000012)
MeshPart41.Position = Vector3.new(13.721054077148, 5.8301949501038, 20.886655807495)
MeshPart41.Color = Color3.new(0.972549, 0.972549, 0.972549)
MeshPart41.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
MeshPart41.Size = Vector3.new(1.2130388021469, 0.8500000834465, 1.1565352678299)
MeshPart41.BrickColor = BrickColor.new("Institutional white")
MeshPart41.CanCollide = false
MeshPart41.Material = Enum.Material.SmoothPlastic
MeshPart41.brickColor = BrickColor.new("Institutional white")
UnionOperation42.Parent = Part38
UnionOperation42.CFrame = CFrame.new(13.7495565, 5.01772451, 20.8725986, -4.37139533e-08, 1.00000012, 0, -0.707106709, -3.09086197e-08, -0.707106709, -0.707106829, -3.09664756e-08, 0.707106829)
UnionOperation42.Orientation = Vector3.new(45, 0, -90)
UnionOperation42.Position = Vector3.new(13.749556541443, 5.0177245140076, 20.872598648071)
UnionOperation42.Rotation = Vector3.new(45, 0, -90)
UnionOperation42.Color = Color3.new(0.972549, 0.972549, 0.972549)
UnionOperation42.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
UnionOperation42.Size = Vector3.new(2.1526856422424, 1.0264455080032, 2.1543567180634)
UnionOperation42.CanCollide = false
UnionOperation42.Material = Enum.Material.SmoothPlastic
Weld43.Parent = Part38
Weld43.C0 = CFrame.new(0.507513762, -0.836388588, -0.016330719, 0.999999344, 8.74954438e-08, 0.00122000033, -8.74227766e-08, 0.99999994, -5.96046448e-08, -0.00122000044, 5.94979497e-08, 0.999999285)
Weld43.Part0 = Part38
Weld43.Part1 = MeshPart39
Weld43.part1 = MeshPart39
Weld44.Parent = Part38
Weld44.C0 = CFrame.new(0.561369658, -0.271052837, 0.00238418579, 0.965925157, 0.258818954, 0.00122000033, -0.258819103, 0.965925753, -5.96046448e-08, -0.00117844541, -0.00031570188, 0.999999285)
Weld44.Part0 = Part38
Weld44.Part1 = MeshPart40
Weld44.part1 = MeshPart40
Weld45.Parent = Part38
Weld45.C0 = CFrame.new(0.0288212299, 0.788650036, -0.0110931396, -0.999999344, -3.39310177e-11, -0.00122000033, 7.10542736e-15, 0.99999994, -2.78181247e-08, 0.00122000044, -2.78181069e-08, -0.999999285)
Weld45.Part0 = Part38
Weld45.Part1 = MeshPart41
Weld45.part1 = MeshPart41
Weld46.Parent = Part38
Weld46.C0 = CFrame.new(0.000335454941, -0.0238204002, 0.00299835205, 0.000862714194, -0.999999344, -0.00086267048, -0.707106709, -3.09086197e-08, -0.707106709, 0.707106233, 0.00122003141, -0.707106233)
Weld46.Part0 = Part38
Weld46.Part1 = UnionOperation42
Weld46.part1 = UnionOperation42
Part47.Name = "Left Arm"
Part47.Parent = Model24
Part47.CFrame = CFrame.new(16.7498856, 5.04154491, 20.8792553, -0.999999344, 0, 0.00122000044, 0, 1, 0, -0.00122000044, 0, -0.999999344)
Part47.Orientation = Vector3.new(0, 179.92999267578, 0)
Part47.Position = Vector3.new(16.749885559082, 5.0415449142456, 20.8792552948)
Part47.Rotation = Vector3.new(-180, 0.070000000298023, -180)
Part47.Color = Color3.new(1, 0.34902, 0.34902)
Part47.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
Part47.Size = Vector3.new(1, 2, 1)
Part47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part47.BrickColor = BrickColor.new("Persimmon")
Part47.CanCollide = false
Part47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part47.Locked = true
Part47.Material = Enum.Material.SmoothPlastic
Part47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part47.brickColor = BrickColor.new("Persimmon")
Part47.FormFactor = Enum.FormFactor.Symmetric
Part47.formFactor = Enum.FormFactor.Symmetric
MeshPart48.Parent = Part47
MeshPart48.CFrame = CFrame.new(17.2885265, 4.78054047, 20.8725166, 0.965926051, 0.258819103, -1.16415322e-10, -0.258819014, 0.965925753, -2.78181247e-08, -7.21774995e-09, 2.68046279e-08, 1.00000024)
MeshPart48.Orientation = Vector3.new(0, 0, -15)
MeshPart48.Position = Vector3.new(17.288526535034, 4.7805404663086, 20.87251663208)
MeshPart48.Rotation = Vector3.new(0, 0, -15)
MeshPart48.Color = Color3.new(0.356863, 0.364706, 0.411765)
MeshPart48.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
MeshPart48.Size = Vector3.new(0.30380058288574, 0.90065002441406, 0.5)
MeshPart48.BrickColor = BrickColor.new("Smoky grey")
MeshPart48.CanCollide = false
MeshPart48.Material = Enum.Material.SmoothPlastic
MeshPart48.brickColor = BrickColor.new("Smoky grey")
MeshPart49.Parent = Part47
MeshPart49.CFrame = CFrame.new(17.2423534, 4.21521044, 20.8913002, -1.00000024, -8.74228121e-08, 1.16415322e-10, -8.74227766e-08, 0.99999994, -5.96046448e-08, 0, -5.9604659e-08, -1.00000024)
MeshPart49.Orientation = Vector3.new(0, 180, 0)
MeshPart49.Position = Vector3.new(17.242353439331, 4.2152104377747, 20.891300201416)
MeshPart49.Rotation = Vector3.new(180, 0, 180)
MeshPart49.Color = Color3.new(0.294118, 0.592157, 0.294118)
MeshPart49.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
MeshPart49.Size = Vector3.new(0.10000038146973, 0.19999980926514, 0.79999923706055)
MeshPart49.BrickColor = BrickColor.new("Bright green")
MeshPart49.CanCollide = false
MeshPart49.Material = Enum.Material.SmoothPlastic
MeshPart49.Reflectance = 0.5
MeshPart49.brickColor = BrickColor.new("Bright green")
MeshPart50.Parent = Part47
MeshPart50.CFrame = CFrame.new(16.7910595, 5.84023142, 20.8866634, -1.00000024, -8.74228121e-08, 1.16415322e-10, -8.74227766e-08, 0.99999994, -5.96046448e-08, 0, -5.9604659e-08, -1.00000024)
MeshPart50.Orientation = Vector3.new(0, 180, 0)
MeshPart50.Position = Vector3.new(16.791059494019, 5.8402314186096, 20.88666343689)
MeshPart50.Rotation = Vector3.new(180, 0, 180)
MeshPart50.Color = Color3.new(0.972549, 0.972549, 0.972549)
MeshPart50.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
MeshPart50.Size = Vector3.new(1.2130388021469, 0.8500000834465, 1.1565352678299)
MeshPart50.BrickColor = BrickColor.new("Institutional white")
MeshPart50.CanCollide = false
MeshPart50.Material = Enum.Material.SmoothPlastic
MeshPart50.brickColor = BrickColor.new("Institutional white")
UnionOperation51.Parent = Part47
UnionOperation51.CFrame = CFrame.new(16.7495556, 5.03483057, 20.879549, -4.37139533e-08, 1.00000024, 0, -0.707106709, -3.09086197e-08, -0.707106709, -0.707106948, -3.09664756e-08, 0.707106948)
UnionOperation51.Orientation = Vector3.new(45, 0, -90)
UnionOperation51.Position = Vector3.new(16.749555587769, 5.0348305702209, 20.879549026489)
UnionOperation51.Rotation = Vector3.new(45, 0, -90)
UnionOperation51.Color = Color3.new(0.972549, 0.972549, 0.972549)
UnionOperation51.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
UnionOperation51.Size = Vector3.new(2.1326856613159, 1.016909122467, 2.1343412399292)
UnionOperation51.CanCollide = false
UnionOperation51.Material = Enum.Material.SmoothPlastic
Weld52.Parent = Part47
Weld52.C0 = CFrame.new(-0.538631499, -0.261004448, 0.007396698, -0.965925276, -0.258818895, -0.00122000044, -0.258819014, 0.965925753, -2.78181247e-08, 0.00117843726, 0.000315732555, -0.999999464)
Weld52.Part0 = Part47
Weld52.Part1 = MeshPart48
Weld52.part1 = MeshPart48
Weld53.Parent = Part47
Weld53.C0 = CFrame.new(-0.49248147, -0.826334476, -0.0114440918, 0.999999464, 8.7495458e-08, 0.00122000044, -8.74227766e-08, 0.99999994, -5.96046448e-08, -0.00122000056, 5.94979568e-08, 0.999999464)
Weld53.Part0 = Part47
Weld53.Part1 = MeshPart49
Weld53.part1 = MeshPart49
Weld54.Parent = Part47
Weld54.C0 = CFrame.new(-0.04118222, 0.798686504, -0.00735855103, 0.999999464, 8.7495458e-08, 0.00122000044, -8.74227766e-08, 0.99999994, -5.96046448e-08, -0.00122000056, 5.94979568e-08, 0.999999464)
Weld54.Part0 = Part47
Weld54.Part1 = MeshPart50
Weld54.part1 = MeshPart50
Weld55.Parent = Part47
Weld55.C0 = CFrame.new(0.000330090523, -0.00671434402, -0.000293731689, 0.000862714369, -0.999999464, -0.000862670655, -0.707106709, -3.09086197e-08, -0.707106709, 0.707106352, 0.00122003153, -0.707106352)
Weld55.Part0 = Part47
Weld55.Part1 = UnionOperation51
Weld55.part1 = UnionOperation51
Part56.Name = "Head"
Part56.Parent = Model24
Part56.CFrame = CFrame.new(15.2498875, 6.54154491, 20.8774261, -0.999999344, 0, 0.00122000044, 0, 1, 0, -0.00122000044, 0, -0.999999344)
Part56.Orientation = Vector3.new(0, 179.92999267578, 0)
Part56.Position = Vector3.new(15.249887466431, 6.5415449142456, 20.877426147461)
Part56.Rotation = Vector3.new(-180, 0.070000000298023, -180)
Part56.Color = Color3.new(1, 0.34902, 0.34902)
Part56.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
Part56.Size = Vector3.new(2, 1, 1)
Part56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part56.BrickColor = BrickColor.new("Persimmon")
Part56.CanCollide = false
Part56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part56.Locked = true
Part56.Material = Enum.Material.SmoothPlastic
Part56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part56.brickColor = BrickColor.new("Persimmon")
Part56.FormFactor = Enum.FormFactor.Symmetric
Part56.formFactor = Enum.FormFactor.Symmetric
SpecialMesh57.Parent = Part56
SpecialMesh57.Scale = Vector3.new(1.25, 1.25, 1.25)
Decal58.Name = "face"
Decal58.Parent = Part56
MeshPart59.Name = "FrontHead"
MeshPart59.Parent = Part56
MeshPart59.CFrame = CFrame.new(15.2549925, 6.53018951, 21.1051502, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012)
MeshPart59.Position = Vector3.new(15.254992485046, 6.5301895141602, 21.105150222778)
MeshPart59.Color = Color3.new(0.792157, 0.796078, 0.819608)
MeshPart59.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
MeshPart59.Size = Vector3.new(0.99605369567871, 1.0000002384186, 0.84999996423721)
MeshPart59.BrickColor = BrickColor.new("Ghost grey")
MeshPart59.CanCollide = false
MeshPart59.Material = Enum.Material.SmoothPlastic
MeshPart59.brickColor = BrickColor.new("Ghost grey")
Decal60.Name = "face"
Decal60.Parent = MeshPart59
Decal60.Texture = "http://www.roblox.com/asset/?id=1301625017"
Decal60.Face = Enum.NormalId.Back
MeshPart61.Parent = Part56
MeshPart61.CFrame = CFrame.new(15.2523069, 6.55845356, 20.8763313, -4.36557457e-08, 0, -1.00000012, 0, 1, 3.28405643e-15, 1.00000012, 0, -4.36557457e-08)
MeshPart61.Orientation = Vector3.new(0, -90, 0)
MeshPart61.Position = Vector3.new(15.252306938171, 6.5584535598755, 20.876331329346)
MeshPart61.Rotation = Vector3.new(0, -90, 0)
MeshPart61.Color = Color3.new(0.972549, 0.972549, 0.972549)
MeshPart61.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
MeshPart61.Size = Vector3.new(1.25, 1.2221398353577, 1.2300000190735)
MeshPart61.BrickColor = BrickColor.new("Institutional white")
MeshPart61.CanCollide = false
MeshPart61.Material = Enum.Material.SmoothPlastic
MeshPart61.brickColor = BrickColor.new("Institutional white")
MeshPart62.Parent = Part56
MeshPart62.CFrame = CFrame.new(15.2549925, 6.82019043, 21.3951588, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012)
MeshPart62.Position = Vector3.new(15.254992485046, 6.8201904296875, 21.3951587677)
MeshPart62.Color = Color3.new(0.356863, 0.364706, 0.411765)
MeshPart62.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
MeshPart62.Size = Vector3.new(0.51842164993286, 0.42000013589859, 0.32000008225441)
MeshPart62.BrickColor = BrickColor.new("Smoky grey")
MeshPart62.CanCollide = false
MeshPart62.Material = Enum.Material.SmoothPlastic
MeshPart62.brickColor = BrickColor.new("Smoky grey")
MeshPart63.Name = "SecondHead"
MeshPart63.Parent = Part56
MeshPart63.CFrame = CFrame.new(15.2549925, 6.83019352, 21.465168, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012)
MeshPart63.Position = Vector3.new(15.254992485046, 6.8301935195923, 21.465167999268)
MeshPart63.Color = Color3.new(0.792157, 0.796078, 0.819608)
MeshPart63.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
MeshPart63.Size = Vector3.new(0.3187372982502, 0.32000011205673, 0.27200010418892)
MeshPart63.BrickColor = BrickColor.new("Ghost grey")
MeshPart63.CanCollide = false
MeshPart63.Material = Enum.Material.SmoothPlastic
MeshPart63.brickColor = BrickColor.new("Ghost grey")
Decal64.Name = "face"
Decal64.Parent = MeshPart63
Decal64.Texture = "http://www.roblox.com/asset/?id=1301621982"
Decal64.Face = Enum.NormalId.Back
UnionOperation65.Parent = Part56
UnionOperation65.CFrame = CFrame.new(15.2529783, 6.18018341, 20.5301666, -4.37113883e-08, -1.00000012, 0, -1, 4.37113812e-08, 8.74227766e-08, -8.74227979e-08, 0, -1.00000012)
UnionOperation65.Orientation = Vector3.new(0, 180, -90)
UnionOperation65.Position = Vector3.new(15.25297832489, 6.1801834106445, 20.530166625977)
UnionOperation65.Rotation = Vector3.new(-180, 0, 90)
UnionOperation65.Color = Color3.new(0.972549, 0.972549, 0.972549)
UnionOperation65.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
UnionOperation65.Size = Vector3.new(0.30000019073486, 1.3999987840652, 0.69999694824219)
UnionOperation65.CanCollide = false
UnionOperation65.Material = Enum.Material.SmoothPlastic
Weld66.Parent = Part56
Weld66.C0 = CFrame.new(-0.00538277626, -0.0113554001, -0.227718353, -0.999999344, 0, -0.00122000044, 0, 1, 0, 0.00122000044, 0, -0.999999344)
Weld66.Part0 = Part56
Weld66.Part1 = MeshPart59
Weld66.part1 = MeshPart59
Weld67.Parent = Part56
Weld67.C0 = CFrame.new(-0.00241851807, 0.0169086456, 0.00109863281, -0.00121995679, 0, 0.999999344, 0, 1, 3.28405643e-15, -0.999999344, 0, -0.00121995679)
Weld67.Part0 = Part56
Weld67.Part1 = MeshPart61
Weld67.part1 = MeshPart61
Weld68.Parent = Part56
Weld68.C0 = CFrame.new(-0.00573658943, 0.278645515, -0.517726898, -0.999999344, 0, -0.00122000044, 0, 1, 0, 0.00122000044, 0, -0.999999344)
Weld68.Part0 = Part56
Weld68.Part1 = MeshPart62
Weld68.part1 = MeshPart62
Weld69.Parent = Part56
Weld69.C0 = CFrame.new(-0.00582194328, 0.288648605, -0.587734222, -0.999999344, 0, -0.00122000044, 0, 1, 0, 0.00122000044, 0, -0.999999344)
Weld69.Part0 = Part56
Weld69.Part1 = MeshPart63
Weld69.part1 = MeshPart63
Weld70.Parent = Part56
Weld70.C0 = CFrame.new(-0.00266706944, -0.361361504, 0.347263336, 4.38180088e-08, 0.999999344, 0.00122000044, -1, 4.37113812e-08, 8.74227766e-08, 8.73693935e-08, -0.00122000044, 0.999999344)
Weld70.Part0 = Part56
Weld70.Part1 = UnionOperation65
Weld70.part1 = UnionOperation65
Part71.Name = "RootPart"
Part71.Parent = Model24
Part71.CFrame = CFrame.new(15.2498875, 5.04154491, 20.8774261, -0.999999344, 0, 0.00122000044, 0, 1, 0, -0.00122000044, 0, -0.999999344)
Part71.Orientation = Vector3.new(0, 179.92999267578, 0)
Part71.Position = Vector3.new(15.249887466431, 5.0415449142456, 20.877426147461)
Part71.Rotation = Vector3.new(-180, 0.070000000298023, -180)
Part71.Color = Color3.new(1, 0.34902, 0.34902)
Part71.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
Part71.Size = Vector3.new(2, 2, 1)
Part71.Anchored = true
Part71.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part71.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part71.BrickColor = BrickColor.new("Persimmon")
Part71.CanCollide = false
Part71.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part71.LeftParamA = 0
Part71.LeftParamB = 0
Part71.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part71.Locked = true
Part71.Material = Enum.Material.SmoothPlastic
Part71.RightParamA = 0
Part71.RightParamB = 0
Part71.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part71.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part71.brickColor = BrickColor.new("Persimmon")
Part71.FormFactor = Enum.FormFactor.Symmetric
Part71.formFactor = Enum.FormFactor.Symmetric
Motor6D72.Name = "Root Joint"
Motor6D72.Parent = Part71
Motor6D72.MaxVelocity = 0.10000000149012
Motor6D72.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Motor6D72.C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Motor6D72.Part0 = Part71
Motor6D72.Part1 = Part73
Motor6D72.part1 = Part73
Part73.Name = "StandTorso"
Part73.Parent = Model24
Part73.CFrame = CFrame.new(15.2498875, 5.04154491, 20.8774261, -0.999999344, 0, 0.00122000044, 0, 1, 0, -0.00122000044, 0, -0.999999344)
Part73.Orientation = Vector3.new(0, 179.92999267578, 0)
Part73.Position = Vector3.new(15.249887466431, 5.0415449142456, 20.877426147461)
Part73.Rotation = Vector3.new(-180, 0.070000000298023, -180)
Part73.Color = Color3.new(1, 0.34902, 0.34902)
Part73.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
Part73.Size = Vector3.new(2, 2, 1)
Part73.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part73.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part73.BrickColor = BrickColor.new("Persimmon")
Part73.CanCollide = false
Part73.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part73.LeftParamA = 0
Part73.LeftParamB = 0
Part73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part73.Locked = true
Part73.Material = Enum.Material.SmoothPlastic
Part73.RightParamA = 0
Part73.RightParamB = 0
Part73.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part73.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part73.brickColor = BrickColor.new("Persimmon")
Part73.FormFactor = Enum.FormFactor.Symmetric
Part73.formFactor = Enum.FormFactor.Symmetric
Motor6D74.Name = "Right Shoulder"
Motor6D74.Parent = Part73
Motor6D74.MaxVelocity = 0.10000000149012
Motor6D74.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Motor6D74.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Motor6D74.Part0 = Part73
Motor6D74.Part1 = Part38
Motor6D74.part1 = Part38
Motor6D75.Name = "Left Hip"
Motor6D75.Parent = Part73
Motor6D75.MaxVelocity = 0.10000000149012
Motor6D75.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Motor6D75.C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Motor6D75.Part0 = Part73
Motor6D75.Part1 = Part93
Motor6D75.part1 = Part93
Motor6D76.Name = "Neck"
Motor6D76.Parent = Part73
Motor6D76.MaxVelocity = 0.10000000149012
Motor6D76.C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Motor6D76.C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Motor6D76.Part0 = Part73
Motor6D76.Part1 = Part56
Motor6D76.part1 = Part56
UnionOperation77.Parent = Part73
UnionOperation77.CFrame = CFrame.new(15.272975, 4.50217724, 20.8599606, -1.00000012, -8.74227908e-08, 0, -8.74227766e-08, 1, -8.74227766e-08, 0, -8.74227979e-08, -1.00000012)
UnionOperation77.Orientation = Vector3.new(0, 180, 0)
UnionOperation77.Position = Vector3.new(15.272974967957, 4.5021772384644, 20.85996055603)
UnionOperation77.Rotation = Vector3.new(180, 0, 180)
UnionOperation77.Color = Color3.new(0.972549, 0.972549, 0.972549)
UnionOperation77.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
UnionOperation77.Size = Vector3.new(2.0900089740753, 1.1902687549591, 1.0450029373169)
UnionOperation77.CanCollide = false
UnionOperation77.Material = Enum.Material.SmoothPlastic
UnionOperation78.Parent = Part73
UnionOperation78.CFrame = CFrame.new(15.2692528, 5.50524426, 20.8789825, -0.707106829, 6.18172464e-08, -0.707106888, -8.74227766e-08, -1, 0, -0.707106888, 6.18172464e-08, 0.707106829)
UnionOperation78.Orientation = Vector3.new(0, -45, -180)
UnionOperation78.Position = Vector3.new(15.2692527771, 5.5052442550659, 20.878982543945)
UnionOperation78.Rotation = Vector3.new(0, -45, -180)
UnionOperation78.Color = Color3.new(0.972549, 0.972549, 0.972549)
UnionOperation78.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
UnionOperation78.Size = Vector3.new(2.1328792572021, 1.0163516998291, 2.1328792572021)
UnionOperation78.CanCollide = false
UnionOperation78.Material = Enum.Material.SmoothPlastic
UnionOperation79.Parent = Part73
UnionOperation79.CFrame = CFrame.new(15.272975, 3.91594553, 20.8806629, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012)
UnionOperation79.Position = Vector3.new(15.272974967957, 3.9159455299377, 20.880662918091)
UnionOperation79.Color = Color3.new(0.356863, 0.364706, 0.411765)
UnionOperation79.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
UnionOperation79.Size = Vector3.new(2.1170101165771, 0.55499994754791, 1.0585069656372)
UnionOperation79.BrickColor = BrickColor.new("Smoky grey")
UnionOperation79.CanCollide = false
UnionOperation79.Material = Enum.Material.SmoothPlastic
UnionOperation79.brickColor = BrickColor.new("Smoky grey")
UnionOperation79.UsePartColor = true
UnionOperation80.Parent = Part73
UnionOperation80.CFrame = CFrame.new(16.0729637, 6.12520027, 20.8801422, -4.36557457e-08, 0, 1.00000012, 0, 1, 3.28405643e-15, -1.00000012, 0, -4.36557457e-08)
UnionOperation80.Orientation = Vector3.new(0, 90, 0)
UnionOperation80.Position = Vector3.new(16.0729637146, 6.1252002716064, 20.880142211914)
UnionOperation80.Rotation = Vector3.new(0, 90, 0)
UnionOperation80.Color = Color3.new(0.972549, 0.972549, 0.972549)
UnionOperation80.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
UnionOperation80.Size = Vector3.new(0.70000457763672, 0.3500018119812, 0.40000247955322)
UnionOperation80.CanCollide = false
UnionOperation80.Material = Enum.Material.SmoothPlastic
UnionOperation81.Parent = Part73
UnionOperation81.CFrame = CFrame.new(14.4729862, 6.12517738, 20.8801594, -4.36557457e-08, 0, -1.00000012, 0, 1, 3.28405643e-15, 1.00000012, 0, -4.36557457e-08)
UnionOperation81.Orientation = Vector3.new(0, -90, 0)
UnionOperation81.Position = Vector3.new(14.472986221313, 6.1251773834229, 20.880159378052)
UnionOperation81.Rotation = Vector3.new(0, -90, 0)
UnionOperation81.Color = Color3.new(0.972549, 0.972549, 0.972549)
UnionOperation81.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
UnionOperation81.Size = Vector3.new(0.7000036239624, 0.3500018119812, 0.40000140666962)
UnionOperation81.CanCollide = false
UnionOperation81.Material = Enum.Material.SmoothPlastic
UnionOperation82.Parent = Part73
UnionOperation82.CFrame = CFrame.new(15.7730064, 5.50019026, 21.3801441, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012)
UnionOperation82.Position = Vector3.new(15.773006439209, 5.5001902580261, 21.380144119263)
UnionOperation82.Color = Color3.new(0.972549, 0.972549, 0.972549)
UnionOperation82.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
UnionOperation82.Size = Vector3.new(1.0000076293945, 0.7465488910675, 0.38398933410645)
UnionOperation82.CanCollide = false
UnionOperation82.Material = Enum.Material.SmoothPlastic
UnionOperation83.Parent = Part73
UnionOperation83.CFrame = CFrame.new(14.772975, 5.50017834, 21.3801746, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012)
UnionOperation83.Position = Vector3.new(14.772974967957, 5.5001783370972, 21.380174636841)
UnionOperation83.Color = Color3.new(0.972549, 0.972549, 0.972549)
UnionOperation83.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
UnionOperation83.Size = Vector3.new(1.0000076293945, 0.7465488910675, 0.38398933410645)
UnionOperation83.CanCollide = false
UnionOperation83.Material = Enum.Material.SmoothPlastic
Weld84.Parent = Part73
Weld84.C0 = CFrame.new(-0.0230662823, -0.539367676, 0.0174942017, 0.999999344, 8.75293722e-08, 0.00122000044, -8.74227766e-08, 1, -8.74227766e-08, -0.00122000044, 8.73160673e-08, 0.999999344)
Weld84.Part0 = Part73
Weld84.Part1 = UnionOperation77
Weld84.part1 = UnionOperation77
Weld85.Parent = Part73
Weld85.C0 = CFrame.new(-0.0193668604, 0.463699341, -0.0015335083, 0.70796895, -6.18926137e-08, 0.706243634, -8.74227766e-08, -1, 0, 0.706243634, -6.17417797e-08, -0.70796895)
Weld85.Part0 = Part73
Weld85.Part1 = UnionOperation78
Weld85.part1 = UnionOperation78
Weld86.Parent = Part73
Weld86.C0 = CFrame.new(-0.0230915546, -1.12559938, -0.0032081604, -0.999999344, 0, -0.00122000044, 0, 1, 0, 0.00122000044, 0, -0.999999344)
Weld86.Part0 = Part73
Weld86.Part1 = UnionOperation79
Weld86.part1 = UnionOperation79
Weld87.Parent = Part73
Weld87.C0 = CFrame.new(-0.823078513, 1.08365536, -0.00171279907, 0.0012200441, 0, -0.999999344, 0, 1, 3.28405643e-15, 0.999999344, 0, 0.0012200441)
Weld87.Part0 = Part73
Weld87.Part1 = UnionOperation80
Weld87.part1 = UnionOperation80
Weld88.Parent = Part73
Weld88.C0 = CFrame.new(0.776897311, 1.08363247, -0.00368118286, -0.00121995679, 0, 0.999999344, 0, 1, 3.28405643e-15, -0.999999344, 0, -0.00121995679)
Weld88.Part0 = Part73
Weld88.Part1 = UnionOperation81
Weld88.part1 = UnionOperation81
Weld89.Parent = Part73
Weld89.C0 = CFrame.new(-0.523731589, 0.458645344, -0.50207901, -0.999999344, 0, -0.00122000044, 0, 1, 0, 0.00122000044, 0, -0.999999344)
Weld89.Part0 = Part73
Weld89.Part1 = UnionOperation82
Weld89.part1 = UnionOperation82
Weld90.Parent = Part73
Weld90.C0 = CFrame.new(0.476298928, 0.458633423, -0.503330231, -0.999999344, 0, -0.00122000044, 0, 1, 0, 0.00122000044, 0, -0.999999344)
Weld90.Part0 = Part73
Weld90.Part1 = UnionOperation83
Weld90.part1 = UnionOperation83
Motor6D91.Name = "Left Shoulder"
Motor6D91.Parent = Part73
Motor6D91.MaxVelocity = 0.10000000149012
Motor6D91.C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Motor6D91.C1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Motor6D91.Part0 = Part73
Motor6D91.Part1 = Part47
Motor6D91.part1 = Part47
Motor6D92.Name = "Right Hip"
Motor6D92.Parent = Part73
Motor6D92.MaxVelocity = 0.10000000149012
Motor6D92.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Motor6D92.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Motor6D92.Part0 = Part73
Motor6D92.Part1 = Part25
Motor6D92.part1 = Part25
Part93.Name = "Left Leg"
Part93.Parent = Model24
Part93.CFrame = CFrame.new(15.7498875, 3.04154491, 20.8780365, -0.999999344, 0, 0.00122000044, 0, 1, 0, -0.00122000044, 0, -0.999999344)
Part93.Orientation = Vector3.new(0, 179.92999267578, 0)
Part93.Position = Vector3.new(15.749887466431, 3.0415449142456, 20.878036499023)
Part93.Rotation = Vector3.new(-180, 0.070000000298023, -180)
Part93.Color = Color3.new(1, 0.34902, 0.34902)
Part93.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
Part93.Size = Vector3.new(1, 2, 1)
Part93.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part93.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part93.BrickColor = BrickColor.new("Persimmon")
Part93.CanCollide = false
Part93.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part93.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part93.Locked = true
Part93.Material = Enum.Material.SmoothPlastic
Part93.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part93.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part93.brickColor = BrickColor.new("Persimmon")
Part93.FormFactor = Enum.FormFactor.Symmetric
Part93.formFactor = Enum.FormFactor.Symmetric
MeshPart94.Parent = Part93
MeshPart94.CFrame = CFrame.new(16.253006, 2.53522158, 20.6301231, -4.36557457e-08, 0, 1.00000012, 0, 1, 3.28405643e-15, -1.00000012, 0, -4.36557457e-08)
MeshPart94.Orientation = Vector3.new(0, 90, 0)
MeshPart94.Position = Vector3.new(16.253005981445, 2.5352215766907, 20.630123138428)
MeshPart94.Rotation = Vector3.new(0, 90, 0)
MeshPart94.Color = Color3.new(0.294118, 0.592157, 0.294118)
MeshPart94.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
MeshPart94.Size = Vector3.new(0.1710000038147, 0.30000001192093, 0.050000000745058)
MeshPart94.BrickColor = BrickColor.new("Bright green")
MeshPart94.CanCollide = false
MeshPart94.Material = Enum.Material.SmoothPlastic
MeshPart94.Reflectance = 0.5
MeshPart94.brickColor = BrickColor.new("Bright green")
MeshPart95.Parent = Part93
MeshPart95.CFrame = CFrame.new(15.7530069, 3.13521719, 21.3801231, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012)
MeshPart95.Position = Vector3.new(15.75300693512, 3.1352171897888, 21.380123138428)
MeshPart95.Color = Color3.new(0.356863, 0.364706, 0.411765)
MeshPart95.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
MeshPart95.Size = Vector3.new(0.5, 0.80000007152557, 0.10000000149012)
MeshPart95.BrickColor = BrickColor.new("Smoky grey")
MeshPart95.CanCollide = false
MeshPart95.Material = Enum.Material.SmoothPlastic
MeshPart95.brickColor = BrickColor.new("Smoky grey")
MeshPart96.Parent = Part93
MeshPart96.CFrame = CFrame.new(15.7530069, 3.13521719, 21.3801231, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012)
MeshPart96.Position = Vector3.new(15.75300693512, 3.1352171897888, 21.380123138428)
MeshPart96.Color = Color3.new(0.792157, 0.796078, 0.819608)
MeshPart96.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
MeshPart96.Size = Vector3.new(0.3999999165535, 0.69999992847443, 0.19999992847443)
MeshPart96.BrickColor = BrickColor.new("Ghost grey")
MeshPart96.CanCollide = false
MeshPart96.Material = Enum.Material.SmoothPlastic
MeshPart96.brickColor = BrickColor.new("Ghost grey")
UnionOperation97.Parent = Part93
UnionOperation97.CFrame = CFrame.new(15.7495575, 2.98023748, 20.8789482, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012)
UnionOperation97.Position = Vector3.new(15.749557495117, 2.9802374839783, 20.87894821167)
UnionOperation97.Color = Color3.new(0.294118, 0.592157, 0.294118)
UnionOperation97.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
UnionOperation97.Size = Vector3.new(1.0169124603271, 1.9900444746017, 1.0163669586182)
UnionOperation97.BrickColor = BrickColor.new("Bright green")
UnionOperation97.CanCollide = false
UnionOperation97.Material = Enum.Material.SmoothPlastic
UnionOperation97.brickColor = BrickColor.new("Bright green")
UnionOperation98.Parent = Part93
UnionOperation98.CFrame = CFrame.new(15.7430258, 2.39663625, 21.3821373, -4.36557457e-08, 0, -1.00000012, -0.35836795, 0.933580399, 1.56647637e-08, 0.933580577, 0.358368009, -4.0861778e-08)
UnionOperation98.Orientation = Vector3.new(0, -90, -21)
UnionOperation98.Position = Vector3.new(15.743025779724, 2.3966362476349, 21.382137298584)
UnionOperation98.Rotation = Vector3.new(21, -90, 0)
UnionOperation98.Color = Color3.new(0.356863, 0.364706, 0.411765)
UnionOperation98.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
UnionOperation98.Size = Vector3.new(0.078478053212166, 0.36460328102112, 0.31390595436096)
UnionOperation98.BrickColor = BrickColor.new("Smoky grey")
UnionOperation98.CanCollide = false
UnionOperation98.Material = Enum.Material.SmoothPlastic
UnionOperation98.brickColor = BrickColor.new("Smoky grey")
UnionOperation98.UsePartColor = true
UnionOperation99.Parent = Part93
UnionOperation99.CFrame = CFrame.new(15.7430258, 2.32154727, 21.3525963, -4.36557457e-08, 0, -1.00000012, -0.35836795, 0.933580399, 1.56647637e-08, 0.933580577, 0.358368009, -4.0861778e-08)
UnionOperation99.Orientation = Vector3.new(0, -90, -21)
UnionOperation99.Position = Vector3.new(15.743025779724, 2.3215472698212, 21.352596282959)
UnionOperation99.Rotation = Vector3.new(21, -90, 0)
UnionOperation99.Color = Color3.new(0.356863, 0.364706, 0.411765)
UnionOperation99.Velocity = Vector3.new(-1.4012984643248e-45, 0, 1.4012984643248e-45)
UnionOperation99.Size = Vector3.new(0.19726181030273, 0.42598378658295, 0.4931333065033)
UnionOperation99.BrickColor = BrickColor.new("Smoky grey")
UnionOperation99.CanCollide = false
UnionOperation99.Material = Enum.Material.SmoothPlastic
UnionOperation99.brickColor = BrickColor.new("Smoky grey")
UnionOperation99.UsePartColor = true
Weld100.Parent = Part93
Weld100.C0 = CFrame.new(-0.502815902, -0.506323338, 0.248527527, 0.0012200441, 0, -0.999999344, 0, 1, 3.28405643e-15, 0.999999344, 0, 0.0012200441)
Weld100.Part0 = Part93
Weld100.Part1 = MeshPart94
Weld100.part1 = MeshPart94
Weld101.Parent = Part93
Weld101.C0 = CFrame.new(-0.00373154879, 0.0936722755, -0.502082825, -0.999999344, 0, -0.00122000044, 0, 1, 0, 0.00122000044, 0, -0.999999344)
Weld101.Part0 = Part93
Weld101.Part1 = MeshPart95
Weld101.part1 = MeshPart95
Weld102.Parent = Part93
Weld102.C0 = CFrame.new(-0.00373154879, 0.0936722755, -0.502082825, -0.999999344, 0, -0.00122000044, 0, 1, 0, 0.00122000044, 0, -0.999999344)
Weld102.Part0 = Part93
Weld102.Part1 = MeshPart96
Weld102.part1 = MeshPart96
Weld103.Parent = Part93
Weld103.C0 = CFrame.new(0.000328838825, -0.0613074303, -0.000911712646, -0.999999344, 0, -0.00122000044, 0, 1, 0, 0.00122000044, 0, -0.999999344)
Weld103.Part0 = Part93
Weld103.Part1 = UnionOperation97
Weld103.part1 = UnionOperation97
Weld104.Parent = Part93
Weld104.C0 = CFrame.new(0.00624620914, -0.644908667, -0.504108429, -0.00113892485, -0.000437209063, 0.999999344, -0.35836795, 0.933580399, 1.56647637e-08, -0.933579803, -0.358367711, -0.00121995958)
Weld104.Part0 = Part93
Weld104.Part1 = UnionOperation98
Weld104.part1 = UnionOperation98
Weld105.Parent = Part93
Weld105.C0 = CFrame.new(0.00628226995, -0.719997644, -0.474567413, -0.00113892485, -0.000437209063, 0.999999344, -0.35836795, 0.933580399, 1.56647637e-08, -0.933579803, -0.358367711, -0.00121995958)
Weld105.Part0 = Part93
Weld105.Part1 = UnionOperation99
Weld105.part1 = UnionOperation99
BoolValue106.Name = "IsAStand"
BoolValue106.Parent = Model24
BoolValue106.Value = true
ScreenGui107.Name = "ClockGui"
ScreenGui107.Parent = Script0
ScreenGui107.Enabled = false
Frame108.Name = "Clock"
Frame108.Parent = ScreenGui107
Frame108.Position = UDim2.new(0.0024721846, 0, 0.483909428, 0)
Frame108.Size = UDim2.new(0, 190, 0, 190)
Frame108.BackgroundColor = BrickColor.new("Institutional white")
Frame108.BackgroundColor3 = Color3.new(1, 1, 1)
Frame108.BackgroundTransparency = 1
ImageLabel109.Name = "ClockOutline"
ImageLabel109.Parent = Frame108
ImageLabel109.Position = UDim2.new(-0.00011061132, 0, -0.00372624397, 0)
ImageLabel109.Size = UDim2.new(0, 190, 0, 190)
ImageLabel109.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel109.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel109.BackgroundTransparency = 1
ImageLabel109.Image = "rbxassetid://282305376"
ImageLabel109.ImageColor3 = Color3.new(0, 0, 0)
ImageLabel110.Name = "ClockInnerline"
ImageLabel110.Parent = Frame108
ImageLabel110.Position = UDim2.new(0.0299999993, 0, 0.0199999996, 0)
ImageLabel110.Size = UDim2.new(0, 180, 0, 180)
ImageLabel110.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel110.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel110.BackgroundTransparency = 1
ImageLabel110.Image = "rbxassetid://282305376"
ImageLabel110.ImageColor3 = Color3.new(0.545098, 0.545098, 0.545098)
Frame111.Name = "SecondaryArrow"
Frame111.Parent = Frame108
Frame111.Position = UDim2.new(0, 0, -0.0105262995, 0)
Frame111.Rotation = 133
Frame111.Size = UDim2.new(0, 190, 0, 191)
Frame111.BackgroundColor = BrickColor.new("Institutional white")
Frame111.BackgroundColor3 = Color3.new(1, 1, 1)
Frame111.BackgroundTransparency = 1
Frame112.Name = "TheArrow"
Frame112.Parent = Frame111
Frame112.Position = UDim2.new(0.483999997, 0, 0.170000002, 0)
Frame112.Size = UDim2.new(0, 6, 0, 65)
Frame112.BackgroundColor = BrickColor.new("Really black")
Frame112.BackgroundColor3 = Color3.new(0, 0, 0)
Frame112.BackgroundTransparency = 0.5
Frame112.BorderSizePixel = 0
Frame113.Name = "MainArrow"
Frame113.Parent = Frame108
Frame113.Position = UDim2.new(0, 0, -0.0105262995, 0)
Frame113.Size = UDim2.new(0, 190, 0, 191)
Frame113.BackgroundColor = BrickColor.new("Institutional white")
Frame113.BackgroundColor3 = Color3.new(1, 1, 1)
Frame113.BackgroundTransparency = 1
Frame114.Name = "TheArrow"
Frame114.Parent = Frame113
Frame114.Position = UDim2.new(0.483999997, 0, 0.0900000036, 0)
Frame114.Size = UDim2.new(0, 6, 0, 80)
Frame114.BackgroundColor = BrickColor.new("Really black")
Frame114.BackgroundColor3 = Color3.new(0, 0, 0)
Frame114.BackgroundTransparency = 0.5
Frame114.BorderSizePixel = 0
ImageLabel115.Name = "ClockIndex"
ImageLabel115.Parent = Frame108
ImageLabel115.Position = UDim2.new(-0.00011061132, 0, -0.00372624397, 0)
ImageLabel115.Size = UDim2.new(0, 190, 0, 190)
ImageLabel115.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel115.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel115.BackgroundTransparency = 1
ImageLabel115.Image = "rbxassetid://187884215"
TextLabel116.Name = "Count"
TextLabel116.Parent = Frame108
TextLabel116.Position = UDim2.new(0.231578946, 0, 0.273684204, 0)
TextLabel116.Size = UDim2.new(0, 103, 0, 83)
TextLabel116.BackgroundColor = BrickColor.new("Institutional white")
TextLabel116.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel116.BackgroundTransparency = 1
TextLabel116.Font = Enum.Font.SourceSans
TextLabel116.FontSize = Enum.FontSize.Size14
TextLabel116.Text = ""
TextLabel116.TextColor = BrickColor.new("Institutional white")
TextLabel116.TextColor3 = Color3.new(1, 1, 1)
TextLabel116.TextScaled = true
TextLabel116.TextSize = 14
TextLabel116.TextStrokeTransparency = 0
TextLabel116.TextWrap = true
TextLabel116.TextWrapped = true
ScreenGui117.Name = "EffectGui"
ScreenGui117.Parent = Script0
ScreenGui117.Enabled = false
ScreenGui117.ResetOnSpawn = false
ImageLabel118.Name = "KC"
ImageLabel118.Parent = ScreenGui117
ImageLabel118.Position = UDim2.new(0, 0, -0.00856530666, 0)
ImageLabel118.Size = UDim2.new(0, 1919, 0, 986)
ImageLabel118.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel118.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel118.BackgroundTransparency = 1
LocalScript119.Name = "GlitchScript"
LocalScript119.Parent = ScreenGui117
table.insert(cors,sandbox(LocalScript119,function()
	local Did = false
	local IsEnabled = script:WaitForChild("Enabled").Value

	local Glitch = script.Parent:WaitForChild("KC")
	local Sound = Instance.new("Sound")
	Sound.Name = "KC_Effect"
	Sound.Parent = game:GetService("SoundService")
	Sound.SoundId = "rbxassetid://3373991228"
	Sound.Volume = 2
	Sound.Looped = false
	Sound.PlaybackSpeed = 1
	Sound:Play()
	Sound.Ended:Connect(function()
		if Did == false and IsEnabled == true then
			Did = true
			Sound.SoundId = "rbxassetid://3431631978"
			Sound:Play()
			game:GetService("Debris"):AddItem(Sound, Sound.TimeLength+1)
			local New = Instance.new("Sound")
			New.SoundId = "rbxassetid://1835344220"
			New.PlaybackSpeed = 0.75
			New.Volume = 10
			New.Looped = false
			New.Name = "KC_Bass"
			New.Parent = game:GetService("SoundService")
			local Loud = Instance.new("DistortionSoundEffect")
			Loud.Enabled = true
			Loud.Level = 0.3
			Loud.Parent = New
			Loud.Priority = 9e999
			spawn(function()
				wait(0.1)
				New:Play()
			end)
			game:GetService("Debris"):AddItem(New, New.TimeLength+3)
		elseif IsEnabled == false then
			Sound:Destroy()
		end
	end)

	local Images = {4573462670, 4573463247, 4573464191, 4573465237, 4573466633, 4573467848, 4573468665, 4573469255, 4573469861, 4573470481, 4573472230, 4573472712, 4573473408, 4573474618, 4573475743, 4573476483, 4573476928, 4573477493}
	--Thanks to Player_57 ^

	for i = 1, #Images do
		Glitch.Image = "rbxassetid://"..Images[i]
		if IsEnabled == true then
			wait(0.065)
		else
			wait(0.034)
		end
		if i == #Images then
			coroutine.resume(coroutine.create(function()
				wait(0.06)
				Glitch.Image = ""
			end))
		end
	end



end))
LocalScript119.Disabled = true
BoolValue120.Name = "Enabled"
BoolValue120.Parent = LocalScript119
ScreenGui121.Name = "LeapGui"
ScreenGui121.Parent = Script0
ScreenGui121.Enabled = false
ScreenGui121.ResetOnSpawn = false
ImageLabel122.Name = "KC"
ImageLabel122.Parent = ScreenGui121
ImageLabel122.Position = UDim2.new(0, 0, -0.00856530666, 0)
ImageLabel122.Size = UDim2.new(0, 1919, 0, 986)
ImageLabel122.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel122.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel122.BackgroundTransparency = 1
LocalScript123.Name = "GlitchScript"
LocalScript123.Parent = ScreenGui121
table.insert(cors,sandbox(LocalScript123,function()
	local Glitch = script.Parent:WaitForChild("KC")

	local Images = {4573462670, 4573463247, 4573464191, 4573465237, 4573466633, 4573467848, 4573468665, 4573469255, 4573469861, 4573470481, 4573472230, 4573472712, 4573473408, 4573474618, 4573475743, 4573476483, 4573476928, 4573477493}
	--Thanks to Player_57 ^

	for i = 1, #Images do
		Glitch.Image = "rbxassetid://"..Images[i]
		wait(0.014)
		if i == #Images then
			coroutine.resume(coroutine.create(function()
				wait(0.06)
				Glitch.Image = ""
			end))
		end
	end



end))
LocalScript123.Disabled = true
ScreenGui124.Name = "MoveList"
ScreenGui124.Parent = Script0
ScreenGui124.Enabled = false
ScreenGui124.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame125.Name = "Moves"
Frame125.Parent = ScreenGui124
Frame125.Position = UDim2.new(0.00300000003, 0, 0.593999982, 0)
Frame125.Size = UDim2.new(0, 280, 0, 317)
Frame125.BackgroundColor = BrickColor.new("Institutional white")
Frame125.BackgroundColor3 = Color3.new(1, 1, 1)
Frame125.BackgroundTransparency = 1
TextLabel126.Name = "Title"
TextLabel126.Parent = Frame125
TextLabel126.Position = UDim2.new(0, 0, 0.234156653, 0)
TextLabel126.Size = UDim2.new(0, 280, 0, 24)
TextLabel126.BackgroundColor = BrickColor.new("Institutional white")
TextLabel126.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel126.BackgroundTransparency = 1
TextLabel126.Font = Enum.Font.SourceSans
TextLabel126.FontSize = Enum.FontSize.Size14
TextLabel126.Text = "Moves:"
TextLabel126.TextColor = BrickColor.new("Really black")
TextLabel126.TextColor3 = Color3.new(0, 0, 0)
TextLabel126.TextScaled = true
TextLabel126.TextSize = 14
TextLabel126.TextStrokeColor3 = Color3.new(1, 1, 1)
TextLabel126.TextStrokeTransparency = 0
TextLabel126.TextWrap = true
TextLabel126.TextWrapped = true
TextLabel126.TextXAlignment = Enum.TextXAlignment.Left
TextLabel127.Name = "Q"
TextLabel127.Parent = Frame125
TextLabel127.Position = UDim2.new(0, 0, 0.309866428, 0)
TextLabel127.Size = UDim2.new(0, 280, 0, 24)
TextLabel127.BackgroundColor = BrickColor.new("Institutional white")
TextLabel127.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel127.BackgroundTransparency = 1
TextLabel127.Font = Enum.Font.SourceSans
TextLabel127.FontSize = Enum.FontSize.Size14
TextLabel127.Text = "Q - De/Summon Stand"
TextLabel127.TextColor = BrickColor.new("Institutional white")
TextLabel127.TextColor3 = Color3.new(1, 1, 1)
TextLabel127.TextScaled = true
TextLabel127.TextSize = 14
TextLabel127.TextStrokeTransparency = 0
TextLabel127.TextWrap = true
TextLabel127.TextWrapped = true
TextLabel127.TextXAlignment = Enum.TextXAlignment.Left
TextLabel128.Name = "E"
TextLabel128.Parent = Frame125
TextLabel128.Position = UDim2.new(0, 0, 0.385576218, 0)
TextLabel128.Size = UDim2.new(0, 280, 0, 24)
TextLabel128.BackgroundColor = BrickColor.new("Institutional white")
TextLabel128.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel128.BackgroundTransparency = 1
TextLabel128.Font = Enum.Font.SourceSans
TextLabel128.FontSize = Enum.FontSize.Size14
TextLabel128.Text = "E (Hold) - Barrage"
TextLabel128.TextColor = BrickColor.new("Institutional white")
TextLabel128.TextColor3 = Color3.new(1, 1, 1)
TextLabel128.TextScaled = true
TextLabel128.TextSize = 14
TextLabel128.TextStrokeTransparency = 0
TextLabel128.TextWrap = true
TextLabel128.TextWrapped = true
TextLabel128.TextXAlignment = Enum.TextXAlignment.Left
TextLabel129.Name = "R"
TextLabel129.Parent = Frame125
TextLabel129.Position = UDim2.new(0, 0, 0.461286008, 0)
TextLabel129.Size = UDim2.new(0, 280, 0, 24)
TextLabel129.BackgroundColor = BrickColor.new("Institutional white")
TextLabel129.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel129.BackgroundTransparency = 1
TextLabel129.Font = Enum.Font.SourceSans
TextLabel129.FontSize = Enum.FontSize.Size14
TextLabel129.Text = "R - Strong Punch"
TextLabel129.TextColor = BrickColor.new("Institutional white")
TextLabel129.TextColor3 = Color3.new(1, 1, 1)
TextLabel129.TextScaled = true
TextLabel129.TextSize = 14
TextLabel129.TextStrokeTransparency = 0
TextLabel129.TextWrap = true
TextLabel129.TextWrapped = true
TextLabel129.TextXAlignment = Enum.TextXAlignment.Left
TextLabel130.Name = "T"
TextLabel130.Parent = Frame125
TextLabel130.Position = UDim2.new(0, 0, 0.536995769, 0)
TextLabel130.Size = UDim2.new(0, 280, 0, 24)
TextLabel130.BackgroundColor = BrickColor.new("Institutional white")
TextLabel130.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel130.BackgroundTransparency = 1
TextLabel130.Font = Enum.Font.SourceSans
TextLabel130.FontSize = Enum.FontSize.Size14
TextLabel130.Text = "T - Time Erase/Resume"
TextLabel130.TextColor = BrickColor.new("Institutional white")
TextLabel130.TextColor3 = Color3.new(1, 1, 1)
TextLabel130.TextScaled = true
TextLabel130.TextSize = 14
TextLabel130.TextStrokeTransparency = 0
TextLabel130.TextWrap = true
TextLabel130.TextWrapped = true
TextLabel130.TextXAlignment = Enum.TextXAlignment.Left
TextLabel131.Name = "F"
TextLabel131.Parent = Frame125
TextLabel131.Position = UDim2.new(0, 0, 0.612705529, 0)
TextLabel131.Size = UDim2.new(0, 280, 0, 24)
TextLabel131.BackgroundColor = BrickColor.new("Institutional white")
TextLabel131.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel131.BackgroundTransparency = 1
TextLabel131.Font = Enum.Font.SourceSans
TextLabel131.FontSize = Enum.FontSize.Size14
TextLabel131.Text = "F - Epitaph"
TextLabel131.TextColor = BrickColor.new("Institutional white")
TextLabel131.TextColor3 = Color3.new(1, 1, 1)
TextLabel131.TextScaled = true
TextLabel131.TextSize = 14
TextLabel131.TextStrokeTransparency = 0
TextLabel131.TextWrap = true
TextLabel131.TextWrapped = true
TextLabel131.TextXAlignment = Enum.TextXAlignment.Left
TextLabel132.Name = "G"
TextLabel132.Parent = Frame125
TextLabel132.Position = UDim2.new(0, 0, 0.688415289, 0)
TextLabel132.Size = UDim2.new(0, 280, 0, 24)
TextLabel132.BackgroundColor = BrickColor.new("Institutional white")
TextLabel132.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel132.BackgroundTransparency = 1
TextLabel132.Font = Enum.Font.SourceSans
TextLabel132.FontSize = Enum.FontSize.Size14
TextLabel132.Text = "G - No Nouriyoku (Taunt)"
TextLabel132.TextColor = BrickColor.new("Institutional white")
TextLabel132.TextColor3 = Color3.new(1, 1, 1)
TextLabel132.TextScaled = true
TextLabel132.TextSize = 14
TextLabel132.TextStrokeTransparency = 0
TextLabel132.TextWrap = true
TextLabel132.TextWrapped = true
TextLabel132.TextXAlignment = Enum.TextXAlignment.Left
TextLabel133.Name = "Click"
TextLabel133.Parent = Frame125
TextLabel133.Position = UDim2.new(0, 0, 0.909235418, 0)
TextLabel133.Size = UDim2.new(0, 280, 0, 24)
TextLabel133.BackgroundColor = BrickColor.new("Institutional white")
TextLabel133.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel133.BackgroundTransparency = 1
TextLabel133.Font = Enum.Font.SourceSans
TextLabel133.FontSize = Enum.FontSize.Size14
TextLabel133.Text = "Left Click - Punch"
TextLabel133.TextColor = BrickColor.new("Institutional white")
TextLabel133.TextColor3 = Color3.new(1, 1, 1)
TextLabel133.TextScaled = true
TextLabel133.TextSize = 14
TextLabel133.TextStrokeTransparency = 0
TextLabel133.TextWrap = true
TextLabel133.TextWrapped = true
TextLabel133.TextXAlignment = Enum.TextXAlignment.Left
TextLabel134.Name = "Z"
TextLabel134.Parent = Frame125
TextLabel134.Position = UDim2.new(0, 0, 0.764125049, 0)
TextLabel134.Size = UDim2.new(0, 280, 0, 24)
TextLabel134.BackgroundColor = BrickColor.new("Institutional white")
TextLabel134.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel134.BackgroundTransparency = 1
TextLabel134.Font = Enum.Font.SourceSans
TextLabel134.FontSize = Enum.FontSize.Size14
TextLabel134.Text = "Z - Stand Jump"
TextLabel134.TextColor = BrickColor.new("Institutional white")
TextLabel134.TextColor3 = Color3.new(1, 1, 1)
TextLabel134.TextScaled = true
TextLabel134.TextSize = 14
TextLabel134.TextStrokeTransparency = 0
TextLabel134.TextWrap = true
TextLabel134.TextWrapped = true
TextLabel134.TextXAlignment = Enum.TextXAlignment.Left
TextLabel135.Name = "Z"
TextLabel135.Parent = Frame125
TextLabel135.Position = UDim2.new(0, 0, 0.833525658, 0)
TextLabel135.Size = UDim2.new(0, 280, 0, 24)
TextLabel135.BackgroundColor = BrickColor.new("Institutional white")
TextLabel135.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel135.BackgroundTransparency = 1
TextLabel135.Font = Enum.Font.SourceSans
TextLabel135.FontSize = Enum.FontSize.Size14
TextLabel135.Text = "X - Time Leap"
TextLabel135.TextColor = BrickColor.new("Institutional white")
TextLabel135.TextColor3 = Color3.new(1, 1, 1)
TextLabel135.TextScaled = true
TextLabel135.TextSize = 14
TextLabel135.TextStrokeTransparency = 0
TextLabel135.TextWrap = true
TextLabel135.TextWrapped = true
TextLabel135.TextXAlignment = Enum.TextXAlignment.Left
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.PlayerGui
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
