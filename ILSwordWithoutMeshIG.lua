
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
Tool0 = Instance.new("Tool")
Script1 = Instance.new("Script")
LocalScript2 = Instance.new("LocalScript")
Part3 = Instance.new("Part")
MeshPart4 = Instance.new("MeshPart")
WeldConstraint5 = Instance.new("WeldConstraint")
Script6 = Instance.new("Script")
Script7 = Instance.new("Script")
Script8 = Instance.new("Script")
Weld9 = Instance.new("Weld")
Sound10 = Instance.new("Sound")
Sound11 = Instance.new("Sound")
Sound12 = Instance.new("Sound")
Tool0.Name = "Immortality Lord Sword"
Tool0.Parent = mas
Tool0.Grip = CFrame.new(0, 0, -1.70000005, 0, 0, 1, 1, 0, 0, 0, 1, 0)
Tool0.GripForward = Vector3.new(-1, -0, -0)
Tool0.GripPos = Vector3.new(0, 0, -1.7000000476837158)
Tool0.GripRight = Vector3.new(0, 1, 0)
Tool0.GripUp = Vector3.new(0, 0, 1)
Tool0.ToolTip = "No Respawn"
Script1.Name = "SwordScript"
Script1.Parent = Tool0
table.insert(cors,sandbox(Script1,function()


Tool = script.Parent
Handle = Tool:WaitForChild("Handle")

function Create(ty)
	return function(data)
		local obj = Instance.new(ty)
		for k, v in pairs(data) do
			if type(k) == 'number' then
				v.Parent = obj
			else
				obj[k] = v
			end
		end
		return obj
	end
end

local BaseUrl = "rbxassetid://"

Players = game:GetService("Players")
Debris = game:GetService("Debris")
RunService = game:GetService("RunService")

DamageValues = {
	BaseDamage = 0,
	SlashDamage = 0,
	LungeDamage = 0
}

--For R15 avatars
Animations = {
	R15Slash = 522635514,
	R15Lunge = 522638767
}

Damage = DamageValues.BaseDamage

Grips = {
	Up = CFrame.new(0, 0, -1.70000005, 0, 0, 1, 1, 0, 0, 0, 1, 0),
	Out = CFrame.new(0, 0, -1.70000005, 0, 1, 0, 1, -0, 0, 0, 0, -1)
}

Sounds = {
	Slash = Handle:WaitForChild("SwordSlash"),
	Lunge = Handle:WaitForChild("SwordLunge"),
	Unsheath = Handle:WaitForChild("Unsheath")
}

ToolEquipped = false

--For Omega Rainbow Katana thumbnail to display a lot of particles.
for i, v in pairs(Handle:GetChildren()) do
	if v:IsA("ParticleEmitter") then
		v.Rate = 20
	end
end

Tool.Grip = Grips.Up
Tool.Enabled = true

function IsTeamMate(Player1, Player2)
	return (Player1 and Player2 and not Player1.Neutral and not Player2.Neutral and Player1.TeamColor == Player2.TeamColor)
end

function TagHumanoid(humanoid, player)
	local Creator_Tag = Instance.new("ObjectValue")
	Creator_Tag.Name = "creator"
	Creator_Tag.Value = player
	Debris:AddItem(Creator_Tag, 2)
	Creator_Tag.Parent = humanoid
end

function UntagHumanoid(humanoid)
	for i, v in pairs(humanoid:GetChildren()) do
		if v:IsA("ObjectValue") and v.Name == "creator" then
			v:Destroy()
		end
	end
end

function Blow(Hit)
	if not Hit or not Hit.Parent or not CheckIfAlive() or not ToolEquipped then
		return
	end
	local RightArm = Character:FindFirstChild("Right Arm") or Character:FindFirstChild("RightHand")
	if not RightArm then
		return
	end
	local RightGrip = RightArm:FindFirstChild("RightGrip")
	if not RightGrip or (RightGrip.Part0 ~= Handle and RightGrip.Part1 ~= Handle) then
		return
	end
	local character = Hit.Parent
	if character == Character then
		return
	end
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoid or humanoid.Health == 0 then
		return
	end
	local player = Players:GetPlayerFromCharacter(character)
	if player and (player == Player or IsTeamMate(Player, player)) then
		return
	end
	UntagHumanoid(humanoid)
	TagHumanoid(humanoid, Player)
	humanoid:TakeDamage(Damage)	
end


function Attack()
	Damage = DamageValues.SlashDamage
	Sounds.Slash:Play()

	if Humanoid then
		if Humanoid.RigType == Enum.HumanoidRigType.R6 then
			local Anim = Instance.new("StringValue")
			Anim.Name = "toolanim"
			Anim.Value = "Slash"
			Anim.Parent = Tool
		elseif Humanoid.RigType == Enum.HumanoidRigType.R15 then
			local Anim = Tool:FindFirstChild("R15Slash")
			if Anim then
				local Track = Humanoid:LoadAnimation(Anim)
				Track:Play(0)
			end
		end
	end	
end

function Lunge()
	Damage = DamageValues.LungeDamage

	Sounds.Lunge:Play()
	
	if Humanoid then
		if Humanoid.RigType == Enum.HumanoidRigType.R6 then
			local Anim = Instance.new("StringValue")
			Anim.Name = "toolanim"
			Anim.Value = "Lunge"
			Anim.Parent = Tool
		elseif Humanoid.RigType == Enum.HumanoidRigType.R15 then
			local Anim = Tool:FindFirstChild("R15Lunge")
			if Anim then
				local Track = Humanoid:LoadAnimation(Anim)
				Track:Play(0)
			end
		end
	end	
	--[[
	if CheckIfAlive() then
		local Force = Instance.new("BodyVelocity")
		Force.velocity = Vector3.new(0, 10, 0) 
		Force.maxForce = Vector3.new(0, 4000, 0)
		Debris:AddItem(Force, 0.4)
		Force.Parent = Torso
	end
	]]
	
	wait(0.2)
	Tool.Grip = Grips.Out
	wait(0.6)
	Tool.Grip = Grips.Up

	Damage = DamageValues.SlashDamage
end

Tool.Enabled = true
LastAttack = 0

function Activated()
	if not Tool.Enabled or not ToolEquipped or not CheckIfAlive() then
		return
	end
	Tool.Enabled = false
	local Tick = RunService.Stepped:wait()
	if (Tick - LastAttack < 0.2) then
		Lunge()
	else
		Attack()
	end
	LastAttack = Tick
	--wait(0.5)
	Damage = DamageValues.BaseDamage
	local SlashAnim = (Tool:FindFirstChild("R15Slash") or Create("Animation"){
		Name = "R15Slash",
		AnimationId = BaseUrl .. Animations.R15Slash,
		Parent = Tool
	})
	
	local LungeAnim = (Tool:FindFirstChild("R15Lunge") or Create("Animation"){
		Name = "R15Lunge",
		AnimationId = BaseUrl .. Animations.R15Lunge,
		Parent = Tool
	})
	Tool.Enabled = true
end

function CheckIfAlive()
	return (((Player and Player.Parent and Character and Character.Parent and Humanoid and Humanoid.Parent and Humanoid.Health > 0 and Torso and Torso.Parent) and true) or false)
end

function Equipped()
	Character = Tool.Parent
	Player = Players:GetPlayerFromCharacter(Character)
	Humanoid = Character:FindFirstChildOfClass("Humanoid")
	Torso = Character:FindFirstChild("Torso") or Character:FindFirstChild("HumanoidRootPart")
	if not CheckIfAlive() then
		return
	end
	ToolEquipped = true
	Sounds.Unsheath:Play()
end

function Unequipped()
	Tool.Grip = Grips.Up
	ToolEquipped = false
	Sounds.Unsheath:Pause()
end

Tool.Activated:Connect(Activated)
Tool.Equipped:Connect(Equipped)
Tool.Unequipped:Connect(Unequipped)

Connection = Handle.Touched:Connect(Blow)
end))
LocalScript2.Name = "MouseIcon"
LocalScript2.Parent = Tool0
table.insert(cors,sandbox(LocalScript2,function()
--Made by Luckymaxer

Mouse_Icon = "rbxasset://textures/GunCursor.png"
Reloading_Icon = "rbxasset://textures/GunWaitCursor.png"

Tool = script.Parent

Mouse = nil

function UpdateIcon()
	if Mouse then
		Mouse.Icon = Tool.Enabled and Mouse_Icon or Reloading_Icon
	end
end

function OnEquipped(ToolMouse)
	Mouse = ToolMouse
	UpdateIcon()
end

function OnChanged(Property)
	if Property == "Enabled" then
		UpdateIcon()
	end
end

Tool.Equipped:Connect(OnEquipped)
Tool.Changed:Connect(OnChanged)

end))
Part3.Name = "Handle"
Part3.Parent = Tool0
Part3.CFrame = CFrame.new(32.0848885, 2.89516115, 24.7127075, -1.3038516e-08, 1.00000167, 3.66708264e-08, -5.96046448e-08, 3.64088919e-08, 1, 1.00000167, -1.11758709e-08, -6.14672899e-08)
Part3.Orientation = Vector3.new(-90, -90, 0)
Part3.Position = Vector3.new(32.08488845825195, 2.8951611518859863, 24.71270751953125)
Part3.Rotation = Vector3.new(-90, 0, -90)
Part3.Transparency = 1
Part3.Size = Vector3.new(0.643677830696106, 1.1034479141235352, 0.45976993441581726)
Part3.BottomSurface = Enum.SurfaceType.Smooth
Part3.CanCollide = false
Part3.TopSurface = Enum.SurfaceType.Smooth
MeshPart4.Name = "Sword"
MeshPart4.Parent = Part3
MeshPart4.CFrame = CFrame.new(32.0623932, 4.00655174, 24.5829144, -0.999511838, -0.0225611832, -0.0216855686, -0.0230467953, 0.999483287, 0.022409115, 0.0211688038, 0.0228978563, -0.999515235)
MeshPart4.Orientation = Vector3.new(-1.2799999713897705, -178.75999450683594, -1.3200000524520874)
MeshPart4.Position = Vector3.new(32.06239318847656, 4.006551742553711, 24.582914352416992)
MeshPart4.Rotation = Vector3.new(-178.72000122070312, -1.2400000095367432, 178.7100067138672)
MeshPart4.Color = Color3.new(0, 0, 0)
MeshPart4.Size = Vector3.new(0.7178332209587097, 7.95150089263916, 2.194101095199585)
MeshPart4.BrickColor = BrickColor.new("Really black")
MeshPart4.CanCollide = false
MeshPart4.Locked = true
MeshPart4.Material = Enum.Material.Slate
MeshPart4.brickColor = BrickColor.new("Really black")
WeldConstraint5.Name = "dfnj9sidhfu8w4ef"
WeldConstraint5.Parent = MeshPart4
WeldConstraint5.Part0 = MeshPart4
WeldConstraint5.Part1 = Part3
Script6.Name = "getrandomstringname"
Script6.Parent = MeshPart4
table.insert(cors,sandbox(Script6,function()

function randomstring() -- random letters
	local e = {}
	for i = 1,math.random(5,50) do
		table.insert(e,#e+1,utf8.char(math.random(10,100)))
	end
	return table.concat(e)
end


script.Parent.Touched:Connect(function(part)
	part.Name = randomstring()
end)
while true do
	wait(0.01)
	script.Name = randomstring()
end
end))
Script7.Name = "g585y984yut8efsa"
Script7.Parent = MeshPart4
table.insert(cors,sandbox(Script7,function()
function randomstring()
	local e = {}
	for i = 1,math.random(5,50) do
		table.insert(e,#e+1,utf8.char(math.random(10,100)))
	end
	return table.concat(e)
end

local debris = game:GetService("Debris")

script.Parent.Touched:Connect(function(part)
	local cfr = Instance.new("CFrameValue", part)
	cfr.Name = randomstring()
	cfr.Value = part.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
	game:GetService("TweenService"):Create(part,TweenInfo.new(2,Enum.EasingStyle.Circular,Enum.EasingDirection.Out),{CFrame = cfr.Value}):Play()
	game:GetService("TweenService"):Create(part,TweenInfo.new(2,Enum.EasingStyle.Circular,Enum.EasingDirection.Out),{Transparency = 1}):Play()
	game:GetService("TweenService"):Create(part,TweenInfo.new(2,Enum.EasingStyle.Circular,Enum.EasingDirection.Out),{Color = Color3.fromRGB(0, 0, 0)}):Play()
	local death = Instance.new("Sound")
	death.SoundId = "rbxassetid://7167501218"
	death.Volume = 10
	death.Name = randomstring()
	death.Playing = true
	death.Parent = game:GetService("Workspace")
	part.CanCollide = false
	part.Locked = false
	part.Archivable = false
	part.Anchored = true
	part.CastShadow = false
	part.CanTouch = false
	part.Reflectance = 0
	script.Parent.jjfdsifasjfidafjiadg:Clone().Parent = part
	local wm = Instance.new("WorldModel", game:GetService("Workspace"))
	wm.Name = randomstring()
	part.Parent = wm
	local effect1 = Instance.new("Part", wm)
	effect1.Color = Color3.fromRGB(255, 255, 255)
	effect1.Name = randomstring()
	effect1.Size = Vector3.new(4,4,4)
	effect1.CanCollide = false
	effect1.CastShadow = false
	effect1.Position = part.Position
	effect1.Material = Enum.Material.Neon
	effect1.Anchored = true
	local cfr1 = Instance.new("CFrameValue", effect1)
	cfr1.Name = randomstring()
	cfr1.Value = part.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
	game:GetService("TweenService"):Create(effect1,TweenInfo.new(1,Enum.EasingStyle.Circular,Enum.EasingDirection.Out),{CFrame = cfr1.Value}):Play()
	game:GetService("TweenService"):Create(effect1,TweenInfo.new(1,Enum.EasingStyle.Circular,Enum.EasingDirection.Out),{Size = Vector3.new(0.001,0.001,0.001)}):Play()
	local effect2 = Instance.new("Part", wm)
	effect2.Color = Color3.fromRGB(255, 255, 255)
	effect2.Name = randomstring()
	effect2.Size = Vector3.new(4,4,4)
	effect2.CanCollide = false
	effect2.CastShadow = false
	effect2.Position = part.Position
	effect2.Material = Enum.Material.Neon
	effect2.Anchored = true
	local cfr2 = Instance.new("CFrameValue", effect2)
	cfr2.Name = randomstring()
	cfr2.Value = part.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
	game:GetService("TweenService"):Create(effect2,TweenInfo.new(1,Enum.EasingStyle.Circular,Enum.EasingDirection.Out),{CFrame = cfr2.Value}):Play()
	game:GetService("TweenService"):Create(effect2,TweenInfo.new(1,Enum.EasingStyle.Circular,Enum.EasingDirection.Out),{Size = Vector3.new(0.001,0.001,0.001)}):Play()
	local effect3 = Instance.new("Part", wm)
	effect3.Color = Color3.fromRGB(255, 255, 255)
	effect3.Name = randomstring()
	effect3.Size = Vector3.new(4,4,4)
	effect3.CanCollide = false
	effect3.CastShadow = false
	effect3.Position = part.Position
	effect3.Material = Enum.Material.Neon
	effect3.Anchored = true
	local cfr3 = Instance.new("CFrameValue", effect3)
	cfr3.Name = randomstring()
	cfr3.Value = part.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
	game:GetService("TweenService"):Create(effect3,TweenInfo.new(1,Enum.EasingStyle.Circular,Enum.EasingDirection.Out),{CFrame = cfr3.Value}):Play()
	game:GetService("TweenService"):Create(effect3,TweenInfo.new(1,Enum.EasingStyle.Circular,Enum.EasingDirection.Out),{Size = Vector3.new(0.001,0.001,0.001)}):Play()
	local yes = Instance.new("Part", wm)
	yes.Name = randomstring()
	yes.Size = Vector3.new(11,11,11)
	yes.Material = Enum.Material.ForceField
	yes.Position = part.Position
	yes.Shape = Enum.PartType.Ball
	yes.Anchored = true
	yes.CanCollide = false
	yes.CanTouch = false
	yes.CastShadow = false
	game:GetService("TweenService"):Create(yes,TweenInfo.new(2,Enum.EasingStyle.Circular,Enum.EasingDirection.Out),{Transparency = 1}):Play()
	local yes2 = Instance.new("Part", wm)
	yes2.Name = randomstring()
	yes2.Size = Vector3.new(11,11,11)
	yes2.Material = Enum.Material.ForceField
	yes2.Position = part.Position
	yes2.Shape = Enum.PartType.Ball
	yes2.Anchored = true
	yes2.CanCollide = false
	yes2.CanTouch = false
	yes2.CastShadow = false
	game:GetService("TweenService"):Create(yes2,TweenInfo.new(1,Enum.EasingStyle.Circular,Enum.EasingDirection.Out),{Transparency = 1}):Play()
	game:GetService("TweenService"):Create(yes2,TweenInfo.new(1,Enum.EasingStyle.Circular,Enum.EasingDirection.Out),{Size = Vector3.new(50,50,50)}):Play()
end)
end))
Script8.Name = "jjfdsifasjfidafjiadg"
Script8.Parent = MeshPart4
table.insert(cors,sandbox(Script8,function()
wait(5)
while true do
	wait(0.01)
	if script.Parent.Name == "Sword" then
		script.Parent.Transparency = 0
	elseif not script.Parent.Name == "Sword" then
		script.Parent.Transparency = 1
	end
	
end
end))
Weld9.Parent = MeshPart4
Weld9.C0 = CFrame.new(0, -3.97574973, 0, 1.00000107, -1.86264515e-09, 2.09547579e-09, 5.3551048e-09, -1.86264515e-09, -1, -1.3038516e-08, 1.00000107, -3.16649675e-08)
Weld9.C1 = CFrame.new(32.152092, 10.032856, 24.4918785, -0.999510765, -0.0216855593, 0.0225611776, -0.0230467692, 0.0224090591, -0.999483287, 0.0211687796, -0.999514163, -0.0228978544)
Weld9.Part0 = MeshPart4
Weld9.Part1 = nil
Weld9.part1 = nil
Sound10.Name = "SwordSlash"
Sound10.Parent = Part3
Sound10.SoundId = "rbxassetid://7167501218"
Sound10.Volume = 0
Sound11.Name = "Unsheath"
Sound11.Parent = Part3
Sound11.Looped = true
Sound11.SoundId = "rbxassetid://6049110238"
Sound11.Volume = 10
Sound12.Name = "SwordLunge"
Sound12.Parent = Part3
Sound12.Pitch = 0.07999999821186066
Sound12.PlaybackSpeed = 0.07999999821186066
Sound12.SoundId = "rbxassetid://7167501218"
Sound12.Volume = 0
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game.Players.IAmAVRManYay.Backpack
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
