local Assets = LoadAssets(90966292963359)
table.foreach(Assets:Get("Assets"):GetChildren(), function(i,v)
	local lol = v:Clone()
	lol.Parent = script
end)
local removecamshakelol = NS([[
script.Parent.OnServerEvent:Connect(function(PLR)
	script.Parent.Parent:Destroy()
end)
]], script.Data.Scripts.CamShakeAssets.REmove)
removecamshakelol.Name = "Rem"
local require = function(f)
	return function(...)
		return f(...)
	end
end

local function ModesM()
	local math=setmetatable({random=function(Arg1,Arg2,DIV) DIV=DIV or 1 return math.random(Arg1*DIV,Arg2*DIV)/DIV end;CosSin=function(Arg) return (math.sin(Arg/2)*math.cos(Arg/2)) end;},{__index=math;})
	local CFrame=setmetatable({Angles=function(Arg1,Arg2,Arg3,Angles) if not Angles then return CFrame.Angles(Arg1,Arg2,Arg3) else return CFrame.Angles(math.rad(Arg1),math.rad(Arg2),math.rad(Arg3)) end end;Angles=function(Arg1,Arg2,Arg3,Angles) if not Angles then return CFrame.Angles(Arg1,Arg2,Arg3) else return CFrame.Angles(math.rad(Arg1),math.rad(Arg2),math.rad(Arg3)) end end;},{__index=CFrame;})
	local Instance=setmetatable({new = function(type,args) local instance = Instance.new(type) if args then if string.lower(typeof(args)) == "instance" then instance.Parent = args elseif string.lower(typeof(args)) == "table" then for i,v in pairs(args) do pcall(function() instance[i] = v end) end end end return instance end;Remove=function(Instance_,Time) if string.lower(typeof(Instance_))=="instance" then game:GetService("Debris"):AddItem(Instance_,Time or 0) elseif string.lower(typeof(Instance_))=="table" then table.foreach(Instance_,function(_,v) game:GetService("Debris"):AddItem(v,Time or 0) end) end end},{__index=Instance;})
	--}{		Default Functions	   }{--
	local ins=Instance.new
	local v3=Vector3.new
	local v2=Vector2.new
	local cf=CFrame.new
	local angles=CFrame.Angles
	local ud=UDim.new
	local ud2=UDim2.new
	local c3=Color3.new
	local rgb=Color3.fromRGB
	local hsv=Color3.fromHSV
	local bc=BrickColor.new
	local bcRandom=BrickColor.Random
	local palette=BrickColor.palette
	local cs=ColorSequence.new
	local ns=NumberSequence.new
	local nsk=NumberSequenceKeypoint.new
	local nr=NumberRange.new
	local random=math.random
	local rad=math.rad
	local sin=math.sin
	local cos=math.cos
	local tan=math.tan
	local cotan=math.CosSin
	local floor=math.floor
	local pi=math.pi
	local abs=math.abs
	local sqrt=math.sqrt
	local clamp=math.clamp
	local ray=Ray.new
	local huge=math.huge
	--
	local DefWingCFs={
		cf(-1,.5,0)*angles(-140,-90,0,true)*angles(-30,0,0,true),
		cf(-.75,0,0)*angles(-100,-90,0,true)*angles(-20,10,0,true),
		cf(-1.4,-.5,0)*angles(-80,-90,0,true)*angles(-50,0,0,true),
		cf(1,.5,0)*angles(-140,-90,0,true)*angles(30,0,0,true),
		cf(.75,0,0)*angles(-100,-90,0,true)*angles(20,-10,0,true),
		cf(1.4,-.5,0)*angles(-80,-90,0,true)*angles(50,0,0,true),
	}
	--
	return {
		Q={
			Colours={
				Glow=BrickColor.new("Neon orange").Color,
				GlowSec=BrickColor.new("Royal purple").Color,
				Body=BrickColor.new("Really black").Color,
				BodySec=BrickColor.new("Institutional white").Color,
				Spikes=BrickColor.new("Royal purple").Color,
				SpikesSec=BrickColor.new("Neon orange").Color
			},
			Music={
				{Id=6829033172,Pitch=1,Volume=1.75}
			},
			Pose={
				CFrame.Angles(math.rad(-3),math.rad(-15),math.rad(0)),
				CFrame.new(0,0,0)*CFrame.Angles(math.rad(2),math.rad(15),math.rad(0)),
				CFrame.new(-0.1,-0.1,0.05)*CFrame.Angles(math.rad(-3),math.rad(-10),math.rad(6)),
				CFrame.new(0.3,-0.1,0.75)*CFrame.Angles(math.rad(-15),math.rad(-70),math.rad(10))*CFrame.Angles(math.rad(25),math.rad(0),math.rad(0)),
				CFrame.new(0,0,-0.2)*CFrame.Angles(math.rad(-7.5),math.rad(-20),math.rad(3)),
				CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(5),math.rad(-2.5)),
			},
			WingCFs=DefWingCFs,
			ParticleType="SpikesUp"
		},
		E={
			Colours={
				Glow=BrickColor.new("Toothpaste").Color,
				GlowSec=BrickColor.new("Baby blue").Color,
				Body=BrickColor.new("Institutional white").Color,
				BodySec=BrickColor.new("Light blue").Color,
				Spikes=BrickColor.new("Baby blue").Color,
				SpikesSec=BrickColor.new("Toothpaste").Color
			},
			Music={
				{Id=998142984,Pitch=1,Volume=.5},
				{Id=1670373906,Pitch=1,Volume=.4},
			},
			Pose={
				CFrame.Angles(math.rad(-7),math.rad(5),math.rad(0)),
				CFrame.new(0,0,0.1)*CFrame.Angles(math.rad(5),math.rad(-5),math.rad(0)),
				CFrame.new(-0.45,-0.4,-0.1)*CFrame.Angles(math.rad(100),math.rad(0),math.rad(-70)),
				CFrame.new(0.4,-0.5,-0.1)*CFrame.Angles(math.rad(110),math.rad(20),math.rad(80)),
				CFrame.new(0,0,-0.05)*CFrame.Angles(math.rad(-10),math.rad(-5),math.rad(2)),
				CFrame.new(0,0,0)*CFrame.Angles(math.rad(-3),math.rad(8),math.rad(-3)),
			},
			WingCFs={
				cf(-1,.5,0)*angles(-140,-90,0,true)*angles(-30,0,0,true),
				cf(-2,.3,.25)*angles(-105,-90,0,true)*angles(45,90,0,true),
				cf(-1.4,-.5,0)*angles(-80,-90,0,true)*angles(-50,0,0,true),
				cf(1,.5,0)*angles(-140,-90,0,true)*angles(30,0,0,true),
				cf(2,.15,.25)*angles(-95,-90,0,true)*angles(-45,-90,0,true),
				cf(1.4,-.5,0)*angles(-80,-90,0,true)*angles(50,0,0,true),
			},
			ParticleType="BackRing"
		},
		R={
			Colours={
				Glow=BrickColor.new("Maroon").Color,
				GlowSec=BrickColor.new("Really black").Color,
				Body=BrickColor.new("Really black").Color,
				BodySec=BrickColor.new("Maroon").Color,
				Spikes=BrickColor.new("Really black").Color,
				SpikesSec=BrickColor.new("Maroon").Color
			},
			Music={
				{Id=4755976868,Pitch=1,Volume=.5},
				{Id=6872513446,Pitch=.846,Volume=.5},
			},
			Pose={
				CFrame.Angles(math.rad(-15),math.rad(-20),math.rad(-10)),
				CFrame.new(0.35,1,0.125)*CFrame.Angles(math.rad(10),math.rad(20),math.rad(-10)),
				CFrame.new(-0.1,-0.35,-0.1)*CFrame.Angles(math.rad(20),math.rad(20),math.rad(25)),
				CFrame.new(0.1,0.3,-0.3)*CFrame.Angles(math.rad(170),math.rad(-30),math.rad(-10)),
				CFrame.new(0.1,0.8,-0.65)*CFrame.Angles(math.rad(-15),math.rad(-30),math.rad(5)),
				CFrame.new(0,0,0)*CFrame.Angles(math.rad(5),math.rad(10),math.rad(-5))
			},
			WingCFs={
				cf(-1,.5,0)*angles(-140,-90,0,true)*angles(-30,0,0,true),
				cf(-2,8,-1.5),
				cf(-1.4,-.5,0)*angles(-80,-90,0,true)*angles(-50,0,0,true),
				cf(1,.5,0)*angles(-140,-90,0,true)*angles(30,0,0,true),
				cf(1,6,-1.4)*angles(0,0,-80,true),
				cf(1.4,-.5,0)*angles(-80,-90,0,true)*angles(50,0,0,true),
			},
			Shaky=true,
			ParticleType="Hang"
		},
		T={
			Colours={
				Glow=rgb(154,229,154),
				GlowSec=rgb(201,153,255),
				Body=BrickColor.new("Institutional white").Color,
				BodySec=rgb(154,229,154),
				Spikes=rgb(201,153,255),
				SpikesSec=BrickColor.new("Institutional white").Color
			},
			Music={
				{Id=1409668861,Pitch=1,Volume=.5},
				{Id=6977533012,Pitch=1,Volume=.5},
			},
			Pose={
				CFrame.Angles(math.rad(-8),math.rad(15),math.rad(0)),
				CFrame.new(0.125,-0.05,0)*CFrame.Angles(math.rad(-5),math.rad(-15),math.rad(-5)),
				CFrame.new(-0.75,0,-0.2)*CFrame.Angles(math.rad(20),math.rad(15),math.rad(-20)),
				CFrame.new(0.75,0,-0.15)*CFrame.Angles(math.rad(30),math.rad(-10),math.rad(35)),
				CFrame.new(0.2,0.125,-0.35)*CFrame.Angles(math.rad(-10),math.rad(-35),math.rad(-10)),
				CFrame.new(0,0,0)*CFrame.Angles(math.rad(5),math.rad(5),math.rad(2)),
			},
			WingCFs={
				cf(-1,.5,0)*angles(-140,-90,0,true)*angles(-30,0,0,true),
				cf(-.75,0,-.5)*angles(-100,-90,0,true)*angles(-80,50,-10,true),
				cf(-1.4,-.5,0)*angles(-80,-90,0,true)*angles(-50,0,0,true),
				cf(1,.5,0)*angles(-140,-90,0,true)*angles(30,0,0,true),
				cf(.75,0,-.5)*angles(-100,-90,0,true)*angles(80,-50,10,true),
				cf(1.4,-.5,0)*angles(-80,-90,0,true)*angles(50,0,0,true),
			},
			ParticleType="PhaseIn"
		},
	}
--[[
Left Shoulder: 
	C0: CFrame.new(-1,.5,0)*CFrame.new(0.75,0,-0.15)*CFrame.Angles(math.rad(30),math.rad(-10),math.rad(35))
	C1: CFrame.new(.5,.5,0)
Right Shoulder: 
	C0: CFrame.new(1,.5,0)*CFrame.new(-0.75,0,-0.2)*CFrame.Angles(math.rad(20),math.rad(15),math.rad(-20))
	C1: CFrame.new(-.5,.5,0)
Neck: 
	C0: CFrame.new(0,1,0)*CFrame.Angles(math.rad(-8),math.rad(15),math.rad(0))
	C1: CFrame.new(0,-.5,0)
Right Hip: 
	C0: CFrame.new(0.5,-1,0)*CFrame.new(0.2,0.125,-0.35)*CFrame.Angles(math.rad(-10),math.rad(-35),math.rad(-10))
	C1: CFrame.new(0,1,0)
Left Hip: 
	C0: CFrame.new(-0.5,-1,0)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(5),math.rad(5),math.rad(2))
	C1: CFrame.new(0,1,0)
RootJoint: 
	C0: CFrame.new(0.125,-0.05,0)*CFrame.Angles(math.rad(-5),math.rad(-15),math.rad(-5))
	C1: 
]]--
end

local function JointsM(...)
	local v3=Vector3.new
	return{
		["R6"]={
			["Neck"]={
				["Att0Rotation"]=v3(0,-90,90),
				["Att1Rotation"]=v3(0,-90,90),
				["Position0"]=v3(0,.5,0),
				["Position1"]=v3(0,-.5,0),
				["BallSocketProps"]={
					LimitsEnabled=true,
					TwistLimitsEnabled=true,
					UpperAngle=90,
					TwistLowerAngle=-90,
					TwistUpperAngle=90
				}
			},
			["Right Shoulder"]={
				["Att0Rotation"]=v3(0,0,0),
				["Att1Rotation"]=v3(0,0,-90),
				["Position0"]=v3(.75,.333,0),
				["Position1"]=v3(0,.333,0),
				["BallSocketProps"]={
					LimitsEnabled=true,
					TwistLimitsEnabled=true,
					UpperAngle=165,
					TwistLowerAngle=-135,
					TwistUpperAngle=135
				}
			},
			["Left Shoulder"]={
				["Att0Rotation"]=v3(0,0,0),
				["Att1Rotation"]=v3(0,0,90),
				["Position0"]=v3(-.75,.333,0),
				["Position1"]=v3(0,.333,0),
				["BallSocketProps"]={
					LimitsEnabled=true,
					TwistLimitsEnabled=true,
					UpperAngle=165,
					TwistLowerAngle=-135,
					TwistUpperAngle=135
				}
			},
			["Right Hip"]={
				["Att0Rotation"]=v3(0,-90,-90),
				["Att1Rotation"]=v3(0,-90,-90),
				["Position0"]=v3(.25,-.5,0),
				["Position1"]=v3(0,.5,0),
				["BallSocketProps"]={
					LimitsEnabled=true,
					TwistLimitsEnabled=true,
					UpperAngle=100,
					TwistLowerAngle=-45,
					TwistUpperAngle=45
				}
			},
			["Left Hip"]={
				["Att0Rotation"]=v3(0,-90,-90),
				["Att1Rotation"]=v3(0,-90,-90),
				["Position0"]=v3(-.25,-.5,0),
				["Position1"]=v3(0,.5,0),
				["BallSocketProps"]={
					LimitsEnabled=true,
					TwistLimitsEnabled=true,
					UpperAngle=100,
					TwistLowerAngle=-45,
					TwistUpperAngle=45
				}
			}
		},
		["R15"]={
			["Neck"]={
				["Att0Rotation"]=v3(0,-90,90),
				["Att1Rotation"]=v3(0,-90,90),
				["BallSocketProps"]={
					LimitsEnabled=true,
					TwistLimitsEnabled=true,
					UpperAngle=80,
					TwistLowerAngle=-75,
					TwistUpperAngle=75
				}
			},
			["Waist"]={
				["Att0Rotation"]=v3(0,-90,90),
				["Att1Rotation"]=v3(0,-90,90),
				["BallSocketProps"]={
					LimitsEnabled=true,
					TwistLimitsEnabled=true,
					UpperAngle=25,
					TwistLowerAngle=-30,
					TwistUpperAngle=30
				}
			},
			["RightShoulder"]={
				["Att0Rotation"]=v3(0,0,0),
				["Att1Rotation"]=v3(0,0,-90),
				["BallSocketProps"]={
					LimitsEnabled=true,
					TwistLimitsEnabled=true,
					UpperAngle=105,
					TwistLowerAngle=-115,
					TwistUpperAngle=115
				}
			},
			["LeftShoulder"]={
				["Att0Rotation"]=v3(0,0,0),
				["Att1Rotation"]=v3(0,0,90),
				["BallSocketProps"]={
					LimitsEnabled=true,
					TwistLimitsEnabled=true,
					UpperAngle=105,
					TwistLowerAngle=-115,
					TwistUpperAngle=115
				}
			},
			["RightHip"]={
				["Att0Rotation"]=v3(0,-90,-90),
				["Att1Rotation"]=v3(0,-90,-90),
				["BallSocketProps"]={
					LimitsEnabled=true,
					TwistLimitsEnabled=true,
					UpperAngle=80,
					TwistLowerAngle=-35,
					TwistUpperAngle=35
				}
			},
			["LeftHip"]={
				["Att0Rotation"]=v3(0,-90,-90),
				["Att1Rotation"]=v3(0,-90,-90),
				["BallSocketProps"]={
					LimitsEnabled=true,
					TwistLimitsEnabled=true,
					UpperAngle=80,
					TwistLowerAngle=-35,
					TwistUpperAngle=35
				}
			},
			["RightElbow"]={
				["Att0Rotation"]=v3(0,0,0),
				["Att1Rotation"]=v3(0,0,0),
				["BallSocketProps"]={
					LimitsEnabled=true,
					TwistLimitsEnabled=true,
					UpperAngle=0,
					TwistLowerAngle=105,
					TwistUpperAngle=0
				}
			},
			["LeftElbow"]={
				["Att0Rotation"]=v3(0,0,0),
				["Att1Rotation"]=v3(0,0,0),
				["BallSocketProps"]={
					LimitsEnabled=true,
					TwistLimitsEnabled=true,
					UpperAngle=0,
					TwistLowerAngle=105,
					TwistUpperAngle=0
				}
			},
			["RightKnee"]={
				["Att0Rotation"]=v3(0,0,0),
				["Att1Rotation"]=v3(0,0,0),
				["BallSocketProps"]={
					LimitsEnabled=true,
					TwistLimitsEnabled=true,
					UpperAngle=0,
					TwistLowerAngle=0,
					TwistUpperAngle=-105
				}
			},
			["LeftKnee"]={
				["Att0Rotation"]=v3(0,0,0),
				["Att1Rotation"]=v3(0,0,0),
				["BallSocketProps"]={
					LimitsEnabled=true,
					TwistLimitsEnabled=true,
					UpperAngle=0,
					TwistLowerAngle=0,
					TwistUpperAngle=-105
				}
			},
			["RightWrist"]={
				["Att0Rotation"]=v3(0,-90,-90),
				["Att1Rotation"]=v3(0,-90,-90),
				["BallSocketProps"]={
					LimitsEnabled=true,
					TwistLimitsEnabled=true,
					UpperAngle=10,
					TwistLowerAngle=-35,
					TwistUpperAngle=35
				}
			},
			["LeftWrist"]={
				["Att0Rotation"]=v3(0,-90,-90),
				["Att1Rotation"]=v3(0,-90,-90),
				["BallSocketProps"]={
					LimitsEnabled=true,
					TwistLimitsEnabled=true,
					UpperAngle=10,
					TwistLowerAngle=-35,
					TwistUpperAngle=35
				}
			},
			["RightAnkle"]={
				["Att0Rotation"]=v3(0,-90,-90),
				["Att1Rotation"]=v3(0,-90,-90),
				["BallSocketProps"]={
					LimitsEnabled=true,
					TwistLimitsEnabled=true,
					UpperAngle=10,
					TwistLowerAngle=-35,
					TwistUpperAngle=35
				}
			},
			["LeftAnkle"]={
				["Att0Rotation"]=v3(0,-90,-90),
				["Att1Rotation"]=v3(0,-90,-90),
				["BallSocketProps"]={
					LimitsEnabled=true,
					TwistLimitsEnabled=true,
					UpperAngle=10,
					TwistLowerAngle=-35,
					TwistUpperAngle=35
				}
			}
		}
	}
end

local function RagdollM(...)
	local ORIGCF=CFrame.new
	local math=setmetatable({random=function(Arg1,Arg2,DIV) DIV=DIV or 1 return math.random(Arg1*DIV,Arg2*DIV)/DIV end;CosSin=function(Arg) return (math.sin(Arg/2)*math.cos(Arg/2)) end;},{__index=math;})
	local CFrame=setmetatable({new=function(Arg1,Arg2,Arg3,Angles) if not Angles then return CFrame.new(Arg1,Arg2,Arg3) else return CFrame.Angles(math.rad(Arg1),math.rad(Arg2),math.rad(Arg3)) end end;},{__index=CFrame;})
	local Instance=setmetatable({new=function(type,args) local instance=Instance.new(type) pcall(function() if args then if string.lower(typeof(args))=="instance" then instance.Parent=args elseif string.lower(typeof(args))=="table" then for i,v in pairs(args) do pcall(function() instance[i]=v end) end end end end) return instance end;Remove=function(Instance_,Time) if string.lower(typeof(Instance_))=="instance" then game:GetService("Debris"):AddItem(Instance_,Time or 0) elseif string.lower(typeof(Instance_))=="table" then table.foreach(Instance_,function(_,v) game:GetService("Debris"):AddItem(v,Time or 0) end) end end},{__index=Instance;})
	local ins=Instance.new
	local cf=ORIGCF
	local cfn=CFrame.new
	local v3=Vector3.new
	local Ragdoll={}
	local Joints=require(JointsM)
	function Ragdoll:Ragdollify(who,kill_)
		if who and not who:FindFirstChild("urdedxdxdxddxdxdxxddxd") then
			local Data={Joints={};HRP=nil;RDParts={};STATUS=kill_ and "Dead" or "Stunned";}
			if kill_ then
				ins("StringValue",{Name="urdedxdxdxddxdxdxxddxd",Parent=who})
			else
				ins("StringValue",{Name="urstunnddxdxdxddxdxdxxddxd",Parent=who})
			end
			local head
			local human=who:FindFirstChildOfClass("Humanoid")
			if human then
				human.PlatformStand=true
			end
			if kill_ then
				for i,v in pairs(who:GetDescendants()) do
					if v.Name=="RagdollHB" then
						Instance.Remove(v)
					end
				end
			end
			for i,v in pairs(who:GetDescendants()) do
				if v:IsA("Motor6D") or v:IsA("Weld") then
					for _,r in pairs(Joints) do
						for w,j in pairs(r) do
							if v.Name==w then
								local att0=ins("Attachment",{Position=v.C0.Position,Orientation=j["Att0Rotation"],Parent=v.Part0})
								local att1=ins("Attachment",{Position=v.C1.Position,Orientation=j["Att1Rotation"],Parent=v.Part1})
								if j["Position0"] then
									att0.Position=v.Part0.Size*j["Position0"]
								end
								if j["Position1"] then
									att1.Position=v.Part1.Size*j["Position1"]
									if not kill_ then
										local p=ins("Part",{Name="RagdollHB",Locked=true,Massless=true,Anchored=false,CanCollide=true,Transparency=1,Size=v.Part1.Size*v3(.75,.75,.75),Parent=v.Part1})
										local w=ins("Weld",{Parent=v.Part1;Part0=v.Part1;Part1=p;})
										table.insert(Data.RDParts,p)
										table.insert(Data.RDParts,w)
										if string.find(v.Part1.Name,"Arm") or string.find(v.Part1.Name,"Leg") then
											w.C0=cf(0,(-v.Part1.Size.Y/2)+p.Size.Y/2,0)
										end
									end
								else
									if not kill_ then
										local p=ins("Part",{Name="RagdollHB",Locked=true,Massless=true,Anchored=false,CanCollide=true,Transparency=1,Size=v.Part1.Size*v3(.5,.3,.5),Parent=v.Part1})
										local w=ins("Weld",{Parent=v.Part1;Part0=v.Part1;Part1=p;})
										table.insert(Data.RDParts,p)
										table.insert(Data.RDParts,w)
									elseif v.Part1.Name=="Head" then
										local p=ins("Part",{Name="RagdollHB",Locked=true,Massless=true,Anchored=false,CanCollide=true,Transparency=1,Size=v.Part1.Size*v3(.5,.3,.5),Parent=v.Part1})
										local w=ins("Weld",{Parent=v.Part1;Part0=v.Part1;Part1=p;})
										table.insert(Data.RDParts,p)
										table.insert(Data.RDParts,w)
									end
								end
								local NC=ins("NoCollisionConstraint",{Part0=v.Part0,Part1=v.Part1,Parent=v.Part0})
								local socket=ins("BallSocketConstraint",{Attachment0=att0,Attachment1=att1,Name=w,Parent=att0})
								table.insert(Data.RDParts,socket)
								table.insert(Data.RDParts,NC)
								for i,v in pairs(j["BallSocketProps"]) do
									socket[i]=v
								end
								table.insert(Data.Joints,{v;v.Parent;v.Part0;v.Part1})
								v.Parent=nil
							end
						end
					end
				end
				if v:IsA("BasePart") and v.Name~="RagdollHB" then
					v.Anchored=false
					v.TopSurface,v.BottomSurface=10,10
					v.CanCollide=false
					if kill_ then
						Instance.Remove(v,10)
					end
					if v.Name=="Head" then
						head=v
					end
				elseif v:IsA("Decal") then
					if kill_ then
						Instance.Remove(v,10)
					end
				end
			end
			if who:FindFirstChild("HumanoidRootPart") then
				Data.HRP={who:FindFirstChild("HumanoidRootPart");who:FindFirstChild("HumanoidRootPart").Parent}
				who:FindFirstChild("HumanoidRootPart").Parent=nil
			end
			if kill_ then
				Instance.Remove(who,10)
			end
			if human then
				if kill_ then
					human.BreakJointsOnDeath=false
					human.Health=0
				end
				human.PlatformStand=true
			end
			local Funcs={}
			function Funcs:Undo(Time)
				if Data.STATUS~="Stunned" then return end;
				if Time then
					coroutine.wrap(function()
						wait(Time)
						Data.HRP[1].Parent=Data.HRP[2]
						for i,v in pairs(Data.Joints) do
							v[1].Parent=v[2]
							v[1].Part0=v[3]
							v[1].Part1=v[4]
						end
						for i,v in pairs(Data.RDParts) do
							if v.Name~="Neck" then
								Instance.Remove(v)
							end
						end
						if human then
							human.PlatformStand=false
						end
						Data.STATUS="None"
					end)()
				else
					Data.HRP[1].Parent=Data.HRP[2]
					for i,v in pairs(Data.Joints) do
						v[1].Parent=v[2]
					end
					for i,v in pairs(Data.RDParts) do
						Instance.Remove(v)
					end
					if human then
						human.PlatformStand=false
					end
					Data.STATUS="None"
				end
			end
			function Funcs:Finish(Time)
				if Data.STATUS~="Stunned" then return end;
				if Time then
					coroutine.wrap(function()
						wait(Time)
						Ragdoll:Ragdollify(who,true)
						Data.STATUS="Dead"
					end)()
				else
					Ragdoll:Ragdollify(who,true)
					Data.STATUS="Dead"
				end
			end
			return Funcs,head
		end
	end
	return Ragdoll
end

local function DamageM(...)
	--[[
	> Made by v_Sado(formerly vlad20020), 2020 < badyear
	
	              position			size		   damage damage spread   knockback   knockback spread   ignore list
	Damage.new(Vector3.new(0,0,0),Vector3.new(5,5,5),10,       5,             15,           5,            {char})
	
	D.new():Check(1,nil or 0,function) > checks only once with a little delay after, sets local OnHit function(args: part instance), returns hit characters
	D.new():Check(5,0,function) > checks 5 times with delay regarding the server performance, sets local OnHit function(args: part instance), returns hit characters
	D.new():Check(5,.1,function) > checks 5 times with delay of 0.1 seconds, sets local OnHit function(args: part instance), returns hit characters
	
	Damage:SetDeathEffectFunction(function) > args: char, instakill effect
	Damage:SetDamageDisplayFunction(function) > args: cframe, text, text lifetime
	Damage:SetOnFunction(function) > args: part instance
	Damage:SetMaxHealth(num) > sets max life before instakill
--]]
	local Damage={}
	local SData={}
	Damage.__index=Damage
	local function CheckForElement(Table,Value)
		for i,v in next,Table do
			if v==Value then return false end
		end
		return true
	end
	Damage.new=function(pos,size,damage,damr,knockback,kbr,ignore)
		assert(pos,"arg 1 'position' lacking")
		assert(typeof(pos)=="Vector3" or typeof(pos)=="CFrame","position must be a Vector3 value either or CFrame value")
		assert(typeof(size)=="number" or typeof(size)=="Vector3" or typeof(size)=="CFrame","arg 2 'size' isn't number, CFrame or Vector3")
		size=size or 1
		damage=damage or 10
		knockback=knockback or 5
		damr=damr or 5
		kbr=kbr or 5
		ignore=ignore or {}
		if typeof(pos)=="CFrame" then pos=pos.Position end
		if typeof(size)=="number" then size=Vector3.new(1,1,1)*size elseif typeof(size)=="CFrame" then size=size.Position end
		local CurrentData={
			Position=pos,
			Size=size,
			Damage=damage,
			DamageSpread=damr,
			Knockback=knockback,
			KnockbackSpread=kbr,
			IgnoreList=ignore
		}
		CurrentData.Region=Region3.new(CurrentData.Position-CurrentData.Size/2,CurrentData.Position+CurrentData.Size/2)
		return setmetatable(CurrentData,Damage)
	end
	Damage.Damage=function(hum,t,pos,dam,dr,kb,kbr,oh,CurrentData)
		if hum and not hum:FindFirstChild("dеb") then
			local Deb=Instance.new("Glue",hum) Deb.Name="dеb" coroutine.wrap(function() game:GetService("RunService").Heartbeat:Wait() Deb:Destroy() end)()
			local df,sdf,ohf=(CurrentData and CurrentData.DeathEffect) or SData.DeathEffect,(CurrentData and CurrentData.DamageDisplay) or SData.DamageDisplay,oh or (CurrentData and CurrentData.OnHit) or SData.OnHit
			local Dir=CFrame.new(pos,t.Position).LookVector
			local Damage=math.clamp(dam+math.random(-dr,dr),1 and not dr or 0,math.huge)
			local Knockback=math.clamp(kb+math.random(-kbr,kbr),0,math.huge)
			local DeathEffect,DamageDisplay=df,sdf
			ohf(t)
			if Damage<1 then return end
			local Health=hum.Health
			local Mul=Damage+(Damage*(hum.MaxHealth/95)/10)
			if hum.MaxHealth>SData.MaxHealth then df(hum.Parent,true) sdf(t.CFrame,"-NULL",2.5) end
			hum.Health=hum.Health-math.floor(Mul)
			sdf(t.CFrame,-(Health-hum.Health),2)
			if Knockback >0 then local KB=Instance.new("BodyVelocity",t) KB.MaxForce=Vector3.new(25000,25000,25000) KB.Velocity=Dir*Knockback game:GetService("Debris"):AddItem(KB,.125) end
			if hum.Health<.1 and not hum:FindFirstChild("Dead") then Instance.new("BoolValue",hum).Name="Dead" df(hum.Parent,false) end
		end
	end
	Damage.Check=function(self,times,delay,oh)
		local CurrentData=self
		local Characters={}
		if not times then
			for i,v in next,workspace:FindPartsInRegion3WithIgnoreList(CurrentData.Region,CurrentData.IgnoreList,600) do
				if v.Parent then
					local Hum=v.Parent:FindFirstChildOfClass("Humanoid")
					if Hum then
						local Char=Hum.Parent
						local T=Char:FindFirstChild("Torso") or Char:FindFirstChild("UpperTorso") or Char:FindFirstChild("LowerTorso")
						if T and Char and CheckForElement(Characters,Char) then
							table.insert(Characters,Char)
							Damage.Damage(Hum,T,CurrentData.Position,CurrentData.Damage,CurrentData.DamageSpread,CurrentData.Knockback,CurrentData.KnockbackSpread,oh,CurrentData)
						end
					end
				end
			end
		else
			coroutine.wrap(function()
				for i=1,times do
					for i,v in next,workspace:FindPartsInRegion3WithIgnoreList(CurrentData.Region,CurrentData.IgnoreList,600) do
						if v.Parent then
							local Hum=v.Parent:FindFirstChildOfClass("Humanoid") or (v.Parent and v.Parent.Parent) and v.Parent.Parent:FindFirstChildOfClass("Humanoid")
							if Hum then
								local Char=Hum.Parent
								local T=Char:FindFirstChild("Torso") or Char:FindFirstChild("UpperTorso") or Char:FindFirstChild("LowerTorso")
								if T and Char and CheckForElement(Characters,Char) then
									table.insert(Characters,Char)
									Damage.Damage(Hum,T,CurrentData.Position,CurrentData.Damage,CurrentData.DamageSpread,CurrentData.Knockback,CurrentData.KnockbackSpread,oh,CurrentData)
								end
							end
						end
					end
					if not delay or delay==0 then
						game:GetService("RunService").Heartbeat:Wait()
					else
						wait(delay)
					end
				end
			end)()
		end
		return Characters
	end
	Damage.SetDeathEffectFunction=function(self,func)
		assert(func,"arg 1 'func' lacking")
		assert(typeof(func)=="function","arg 1 'func' must be a function")
		Damage.DeathEffect=func
		return Damage.DeathEffect
	end
	Damage.SetDamageDisplayFunction=function(self,func)
		assert(func,"arg 1 'func' lacking")
		assert(typeof(func)=="function","arg 1 'func' must be a function")
		Damage.DamageDisplay=func
		return Damage.DamageDisplay
	end
	Damage.SetOnHitFunction=function(self,func)
		assert(func,"arg 1 'func' lacking")
		assert(typeof(func)=="function","arg 1 'func' must be a function")
		Damage.OnHit=func
		return Damage.OnHit
	end
	Damage.SetMaxHealth=function(self,num)
		assert(num,"arg 1 'num' lacking")
		assert(typeof(num)=="number","arg 1 'num' must be a number")
		Damage.MaxHealth=num
		return Damage.MaxHealth
	end
	Damage.SetGlobalDeathEffectFunction=function(self,func)
		assert(func,"arg 1 'func' lacking")
		assert(typeof(func)=="function","arg 1 'func' must be a function")
		SData.DeathEffect=func
		return SData.DeathEffect
	end
	Damage.SetGlobalDamageDisplayFunction=function(self,func)
		assert(func,"arg 1 'func' lacking")
		assert(typeof(func)=="function","arg 1 'func' must be a function")
		SData.DamageDisplay=func
		return SData.DamageDisplay
	end
	Damage.SetGlobalOnHitFunction=function(self,func)
		assert(func,"arg 1 'func' lacking")
		assert(typeof(func)=="function","arg 1 'func' must be a function")
		SData.OnHit=func
		return SData.OnHit
	end
	Damage.SetGlobalMaxHealth=function(self,num)
		assert(num,"arg 1 'num' lacking")
		assert(typeof(num)=="number","arg 1 'num' must be a number")
		SData.MaxHealth=num
		return SData.MaxHealth
	end
	Damage:SetGlobalDeathEffectFunction(function()end)
	Damage:SetGlobalDamageDisplayFunction(function()end)
	Damage:SetGlobalOnHitFunction(function()end)
	Damage:SetGlobalMaxHealth(5000000)
	return Damage
end

local function DeathsM()
	local math=setmetatable({random=function(Arg1,Arg2,DIV) DIV=DIV or 1 return math.random(Arg1*DIV,Arg2*DIV)/DIV end;CosSin=function(Arg) return (math.sin(Arg/2)*math.cos(Arg/2)) end;},{__index=math;})
	local CFrame=setmetatable({Angles=function(Arg1,Arg2,Arg3,Angles) if not Angles then return CFrame.Angles(Arg1,Arg2,Arg3) else return CFrame.Angles(math.rad(Arg1),math.rad(Arg2),math.rad(Arg3)) end end;Angles=function(Arg1,Arg2,Arg3,Angles) if not Angles then return CFrame.Angles(Arg1,Arg2,Arg3) else return CFrame.Angles(math.rad(Arg1),math.rad(Arg2),math.rad(Arg3)) end end;},{__index=CFrame;})
	local Instance=setmetatable({new = function(type,args) local instance = Instance.new(type) if args then if string.lower(typeof(args)) == "instance" then instance.Parent = args elseif string.lower(typeof(args)) == "table" then for i,v in pairs(args) do pcall(function() instance[i] = v end) end end end return instance end;Remove=function(Instance_,Time) if string.lower(typeof(Instance_))=="instance" then game:GetService("Debris"):AddItem(Instance_,Time or 0) elseif string.lower(typeof(Instance_))=="table" then table.foreach(Instance_,function(_,v) game:GetService("Debris"):AddItem(v,Time or 0) end) end end},{__index=Instance;})
	--
	local ins=Instance.new
	local v3=Vector3.new
	local v2=Vector2.new
	local cf=CFrame.new
	local angles=CFrame.Angles
	local ud=UDim.new
	local ud2=UDim2.new
	local c3=Color3.new
	local rgb=Color3.fromRGB
	local hsv=Color3.fromHSV
	local bc=BrickColor.new
	local bcRandom=BrickColor.Random
	local palette=BrickColor.palette
	local cs=ColorSequence.new
	local ns=NumberSequence.new
	local nsk=NumberSequenceKeypoint.new
	local nr=NumberRange.new
	local random=math.random
	local rad=math.rad
	local sin=math.sin
	local cos=math.cos
	local tan=math.tan
	local cotan=math.CosSin
	local floor=math.floor
	local pi=math.pi
	local abs=math.abs
	local sqrt=math.sqrt
	local clamp=math.clamp
	local ray=Ray.new
	local huge=math.huge
	--
	function Tween(Object,Args,Info)
		if Object and Args then
			Info = Info or TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0)
			if typeof(Info) == "table" then Info = TweenInfo.new(unpack(Info)) end
			game:GetService("TweenService"):Create(Object,Info,Args):Play()
		end
	end
	function Sound(Id,Volume,Pitch,Parent,MaxDistance,EmitterSize,Looped)
		local S=ins("Sound",{Volume=Volume or 1;Pitch=Pitch or 1;MaxDistance=MaxDistance or 500;EmitterSize=EmitterSize or 5;Looped=Looped or false;SoundId="rbxassetid://"..Id,Parent=Parent})
		S:Play()
		coroutine.wrap(function()
			if S.Looped then return end
			if S.IsLoaded then
				Instance.Remove(S,S.TimeLength/S.Pitch)
			else
				S.Loaded:Connect(function()
					Instance.Remove(S,S.TimeLength/S.Pitch)
				end)
			end
		end)()
		return S
	end
	function Raycast(Origin,Direction,Blacklist,MaxDistance,IgnoreWater)
		return workspace:FindPartOnRayWithIgnoreList(ray(Origin,Direction.Unit*MaxDistance),Blacklist or {},false,IgnoreWater)
	end
	function Lerp(a,b,t)
		return a+(b-a)*t
	end
	--
	local Models,Scripts=script.Data.Scripts.Deaths.Models,script.Data.Scripts.Deaths.Scripts
	local Ragdoll=require(RagdollM)
	local AttHolder=Models.AttHolder
	Models.Parent=nil
	--
	return {
		BasicDisent=function(Char,Colour)
			local Hum=Char:FindFirstChildOfClass("Humanoid")
			coroutine.wrap(function()
				wait(random(.5,1,100))
				local Dir=v3(random(-25,25,10),random(0,15,100),random(-25,25,10))
				for i,v in pairs(Char:GetChildren()) do
					if v:IsA("BasePart") then
						local Col=Colour
						v:ClearAllChildren()
						v.Transparency=1
						v.Size=v3()
						local Vap=Models.CrackVap:Clone()
						local L=ins("PointLight",{Range=15,Brightness=.75,Shadows=false,Color=Col,Parent=v})
						Tween(L,{Brightness=0},{2,Enum.EasingStyle.Circular,Enum.EasingDirection.Out,0,false,0})
						Vap.Acceleration=Dir
						Vap.VelocityInheritance=random(.1,.25,100)
						Vap.Color=cs(Col)
						Vap.Parent=v
						Vap:Emit(random(5,7))
						Instance.Remove(v,2)
						Sound(3264923,.7,random(.8,1.1,100),v,150,5)
						wait(random(.03,.1,1000))
					else
						Instance.Remove(v)
					end
				end
			end)()
			Ragdoll:Ragdollify(Char,true)
		end,
		DissipateImpale=function(Char,Colour)
			Ragdoll:Ragdollify(Char,true)
			local Float=false
			for i,v in pairs(Char:GetChildren()) do
				if v:IsA("BasePart") then
					if not Float then
						Sound(({1842491592,1842491943})[random(1,2)],2.5,random(.9,1.1,100),v,100,5)
						Float=true
						ins("BodyPosition",{MaxForce=v3(huge,huge,huge),D=2500,Position=v.Position+v3(random(-5,5,10),random(5,15,10),random(-5,5,10)),Parent=v})
					end
					coroutine.wrap(function()
						local Colour=typeof(Colour)=="table" and Colour[random(1,#Colour)] or Colour
						wait(random(1,1.5,100))
						v.Name,v.Anchored,v.CanCollide,v.Massless="):",false,false,true
						v:BreakJoints()
						local Time=random(.5,1.5,100)
						local BDist=random(15,45)
						local Holder=ins("Part",{Size=v3(0,0,0),CanCollide=false,Anchored=false,Transparency=1,CFrame=v.CFrame,Parent=workspace.Terrain})
						local Base=AttHolder.Base:Clone()
						local B1,B2,B,S,H,HS=Base.B1,Base.B1.B2,Base.B1.Beam,Base.Sound,Base.Hit,Base.HitSparks
						B.Color,H.Color,HS.Color=cs(Colour),cs(Colour),cs(Colour)
						Base.Parent,Base.CFrame=Holder,angles(random(-180,180,10),random(-180,180,10),random(-180,180,10),true)
						B1.CFrame,B2.CFrame=cf(0,0,0),cf()--cf(random(-25,25,10),random(-25,25,10),random(-25,25,10))
						Tween(B,{CurveSize0=random(-35,35,10),CurveSize1=random(-35,35,10)},{Time/4,Enum.EasingStyle.Circular,Enum.EasingDirection.In,0,true,0})
						Tween(B1,{CFrame=cf(0,BDist,0)},{Time/2,Enum.EasingStyle.Circular,Enum.EasingDirection.In,0,false,0})
						Tween(B2,{CFrame=cf(0,-BDist-5,0)},{Time/2,Enum.EasingStyle.Circular,Enum.EasingDirection.In,0,false,0})
						Tween(Base,{CFrame=angles(random(-180,180,10),random(-180,180,10),random(-180,180,10),true)},{Time/2,Enum.EasingStyle.Circular,Enum.EasingDirection.In,0,false,0})
						wait(Time/2)
						Sound(({1835333619,1843115997})[random(1,1)],1,random(.9,1.1,100),Base,100,5)
						H:Emit(random(5,20)) HS:Emit(random(5,20))
						v:ClearAllChildren()
						Holder.CFrame=v.CFrame
						Tween(B,{CurveSize0=random(-35,35,10),CurveSize1=random(-35,35,10)},{Time/4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,true,0})
						Tween(B2,{CFrame=cf(0,0,0)},{Time/2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0})
						Tween(B1,{CFrame=B1.CFrame*angles(0,-360,360,0)},{Time/2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0})
						Tween(v,{Transparency=1,CFrame=cf(B1.WorldPosition)*angles(random(-180,180,10),random(-180,180,10),random(-180,180,10),true)},{Time/2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0})
						Instance.Remove({v,Holder},Time/2+1)
					end)()
				elseif not v:IsA("BasePart") and not v:IsA("Shirt") and not v:IsA("Pants") then
					Instance.Remove(v)
				end
			end
		end,
	}
end

local math=setmetatable({random=function(Arg1,Arg2,DIV) DIV=DIV or 1 return math.random(Arg1*DIV,Arg2*DIV)/DIV end;CosSin=function(Arg) return (math.sin(Arg/2)*math.cos(Arg/2)) end;},{__index=math;})
local CFrame=setmetatable({Angles=function(Arg1,Arg2,Arg3,Angles) if not Angles then return CFrame.Angles(Arg1,Arg2,Arg3) else return CFrame.Angles(math.rad(Arg1),math.rad(Arg2),math.rad(Arg3)) end end;Angles=function(Arg1,Arg2,Arg3,Angles) if not Angles then return CFrame.Angles(Arg1,Arg2,Arg3) else return CFrame.Angles(math.rad(Arg1),math.rad(Arg2),math.rad(Arg3)) end end;},{__index=CFrame;})
local Instance=setmetatable({new = function(type,args) local instance = Instance.new(type) if args then if string.lower(typeof(args)) == "instance" then instance.Parent = args elseif string.lower(typeof(args)) == "table" then for i,v in pairs(args) do pcall(function() instance[i] = v end) end end end return instance end;Remove=function(Instance_,Time) if string.lower(typeof(Instance_))=="instance" then game:GetService("Debris"):AddItem(Instance_,Time or 0) elseif string.lower(typeof(Instance_))=="table" then table.foreach(Instance_,function(_,v) game:GetService("Debris"):AddItem(v,Time or 0) end) end end},{__index=Instance;})
local Player,UIS,Mouse,CrossClient=script.Parent.ClassName=="PlayerGui" and game:GetService("Players")[script.Parent.Parent.Name] or script.Parent.ClassName=="Model" and game:GetService("Players")[script.Parent.Name],nil,nil,nil
local Client=NLS([==[
local require = function(f)
	return function(...)
		return f(...)
	end
end

local function ModesM(...)
	local math=setmetatable({random=function(Arg1,Arg2,DIV) DIV=DIV or 1 return math.random(Arg1*DIV,Arg2*DIV)/DIV end;CosSin=function(Arg) return (math.sin(Arg/2)*math.cos(Arg/2)) end;},{__index=math;})
	local CFrame=setmetatable({Angles=function(Arg1,Arg2,Arg3,Angles) if not Angles then return CFrame.Angles(Arg1,Arg2,Arg3) else return CFrame.Angles(math.rad(Arg1),math.rad(Arg2),math.rad(Arg3)) end end;Angles=function(Arg1,Arg2,Arg3,Angles) if not Angles then return CFrame.Angles(Arg1,Arg2,Arg3) else return CFrame.Angles(math.rad(Arg1),math.rad(Arg2),math.rad(Arg3)) end end;},{__index=CFrame;})
	local Instance=setmetatable({new = function(type,args) local instance = Instance.new(type) if args then if string.lower(typeof(args)) == "instance" then instance.Parent = args elseif string.lower(typeof(args)) == "table" then for i,v in pairs(args) do pcall(function() instance[i] = v end) end end end return instance end;Remove=function(Instance_,Time) if string.lower(typeof(Instance_))=="instance" then game:GetService("Debris"):AddItem(Instance_,Time or 0) elseif string.lower(typeof(Instance_))=="table" then table.foreach(Instance_,function(_,v) game:GetService("Debris"):AddItem(v,Time or 0) end) end end},{__index=Instance;})
	--}{		Default Functions	   }{--
	local ins=Instance.new
	local v3=Vector3.new
	local v2=Vector2.new
	local cf=CFrame.new
	local angles=CFrame.Angles
	local ud=UDim.new
	local ud2=UDim2.new
	local c3=Color3.new
	local rgb=Color3.fromRGB
	local hsv=Color3.fromHSV
	local bc=BrickColor.new
	local bcRandom=BrickColor.Random
	local palette=BrickColor.palette
	local cs=ColorSequence.new
	local ns=NumberSequence.new
	local nsk=NumberSequenceKeypoint.new
	local nr=NumberRange.new
	local random=math.random
	local rad=math.rad
	local sin=math.sin
	local cos=math.cos
	local tan=math.tan
	local cotan=math.CosSin
	local floor=math.floor
	local pi=math.pi
	local abs=math.abs
	local sqrt=math.sqrt
	local clamp=math.clamp
	local ray=Ray.new
	local huge=math.huge
	--
	local DefWingCFs={
		cf(-1,.5,0)*angles(-140,-90,0,true)*angles(-30,0,0,true),
		cf(-.75,0,0)*angles(-100,-90,0,true)*angles(-20,10,0,true),
		cf(-1.4,-.5,0)*angles(-80,-90,0,true)*angles(-50,0,0,true),
		cf(1,.5,0)*angles(-140,-90,0,true)*angles(30,0,0,true),
		cf(.75,0,0)*angles(-100,-90,0,true)*angles(20,-10,0,true),
		cf(1.4,-.5,0)*angles(-80,-90,0,true)*angles(50,0,0,true),
	}
	--
	return {
		Q={
			Colours={
				Glow=BrickColor.new("Neon orange").Color,
				GlowSec=BrickColor.new("Royal purple").Color,
				Body=BrickColor.new("Really black").Color,
				BodySec=BrickColor.new("Institutional white").Color,
				Spikes=BrickColor.new("Royal purple").Color,
				SpikesSec=BrickColor.new("Neon orange").Color
			},
			Music={
				{Id=6829033172,Pitch=1,Volume=1.75}
			},
			Pose={
				CFrame.Angles(math.rad(-3),math.rad(-15),math.rad(0)),
				CFrame.new(0,0,0)*CFrame.Angles(math.rad(2),math.rad(15),math.rad(0)),
				CFrame.new(-0.1,-0.1,0.05)*CFrame.Angles(math.rad(-3),math.rad(-10),math.rad(6)),
				CFrame.new(0.3,-0.1,0.75)*CFrame.Angles(math.rad(-15),math.rad(-70),math.rad(10))*CFrame.Angles(math.rad(25),math.rad(0),math.rad(0)),
				CFrame.new(0,0,-0.2)*CFrame.Angles(math.rad(-7.5),math.rad(-20),math.rad(3)),
				CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(5),math.rad(-2.5)),
			},
			WingCFs=DefWingCFs,
			ParticleType="SpikesUp"
		},
		E={
			Colours={
				Glow=BrickColor.new("Toothpaste").Color,
				GlowSec=BrickColor.new("Baby blue").Color,
				Body=BrickColor.new("Institutional white").Color,
				BodySec=BrickColor.new("Light blue").Color,
				Spikes=BrickColor.new("Baby blue").Color,
				SpikesSec=BrickColor.new("Toothpaste").Color
			},
			Music={
				{Id=998142984,Pitch=1,Volume=.5},
				{Id=1670373906,Pitch=1,Volume=.4},
			},
			Pose={
				CFrame.Angles(math.rad(-7),math.rad(5),math.rad(0)),
				CFrame.new(0,0,0.1)*CFrame.Angles(math.rad(5),math.rad(-5),math.rad(0)),
				CFrame.new(-0.45,-0.4,-0.1)*CFrame.Angles(math.rad(100),math.rad(0),math.rad(-70)),
				CFrame.new(0.4,-0.5,-0.1)*CFrame.Angles(math.rad(110),math.rad(20),math.rad(80)),
				CFrame.new(0,0,-0.05)*CFrame.Angles(math.rad(-10),math.rad(-5),math.rad(2)),
				CFrame.new(0,0,0)*CFrame.Angles(math.rad(-3),math.rad(8),math.rad(-3)),
			},
			WingCFs={
				cf(-1,.5,0)*angles(-140,-90,0,true)*angles(-30,0,0,true),
				cf(-2,.3,.25)*angles(-105,-90,0,true)*angles(45,90,0,true),
				cf(-1.4,-.5,0)*angles(-80,-90,0,true)*angles(-50,0,0,true),
				cf(1,.5,0)*angles(-140,-90,0,true)*angles(30,0,0,true),
				cf(2,.15,.25)*angles(-95,-90,0,true)*angles(-45,-90,0,true),
				cf(1.4,-.5,0)*angles(-80,-90,0,true)*angles(50,0,0,true),
			},
			ParticleType="BackRing"
		},
		R={
			Colours={
				Glow=BrickColor.new("Maroon").Color,
				GlowSec=BrickColor.new("Really black").Color,
				Body=BrickColor.new("Really black").Color,
				BodySec=BrickColor.new("Maroon").Color,
				Spikes=BrickColor.new("Really black").Color,
				SpikesSec=BrickColor.new("Maroon").Color
			},
			Music={
				{Id=4755976868,Pitch=1,Volume=.5},
				{Id=6872513446,Pitch=.846,Volume=.5},
			},
			Pose={
				CFrame.Angles(math.rad(-15),math.rad(-20),math.rad(-10)),
				CFrame.new(0.35,1,0.125)*CFrame.Angles(math.rad(10),math.rad(20),math.rad(-10)),
				CFrame.new(-0.1,-0.35,-0.1)*CFrame.Angles(math.rad(20),math.rad(20),math.rad(25)),
				CFrame.new(0.1,0.3,-0.3)*CFrame.Angles(math.rad(170),math.rad(-30),math.rad(-10)),
				CFrame.new(0.1,0.8,-0.65)*CFrame.Angles(math.rad(-15),math.rad(-30),math.rad(5)),
				CFrame.new(0,0,0)*CFrame.Angles(math.rad(5),math.rad(10),math.rad(-5))
			},
			WingCFs={
				cf(-1,.5,0)*angles(-140,-90,0,true)*angles(-30,0,0,true),
				cf(-2,8,-1.5),
				cf(-1.4,-.5,0)*angles(-80,-90,0,true)*angles(-50,0,0,true),
				cf(1,.5,0)*angles(-140,-90,0,true)*angles(30,0,0,true),
				cf(1,6,-1.4)*angles(0,0,-80,true),
				cf(1.4,-.5,0)*angles(-80,-90,0,true)*angles(50,0,0,true),
			},
			Shaky=true,
			ParticleType="Hang"
		},
		T={
			Colours={
				Glow=rgb(154,229,154),
				GlowSec=rgb(201,153,255),
				Body=BrickColor.new("Institutional white").Color,
				BodySec=rgb(154,229,154),
				Spikes=rgb(201,153,255),
				SpikesSec=BrickColor.new("Institutional white").Color
			},
			Music={
				{Id=1409668861,Pitch=1,Volume=.5},
				{Id=6977533012,Pitch=1,Volume=.5},
			},
			Pose={
				CFrame.Angles(math.rad(-8),math.rad(15),math.rad(0)),
				CFrame.new(0.125,-0.05,0)*CFrame.Angles(math.rad(-5),math.rad(-15),math.rad(-5)),
				CFrame.new(-0.75,0,-0.2)*CFrame.Angles(math.rad(20),math.rad(15),math.rad(-20)),
				CFrame.new(0.75,0,-0.15)*CFrame.Angles(math.rad(30),math.rad(-10),math.rad(35)),
				CFrame.new(0.2,0.125,-0.35)*CFrame.Angles(math.rad(-10),math.rad(-35),math.rad(-10)),
				CFrame.new(0,0,0)*CFrame.Angles(math.rad(5),math.rad(5),math.rad(2)),
			},
			WingCFs={
				cf(-1,.5,0)*angles(-140,-90,0,true)*angles(-30,0,0,true),
				cf(-.75,0,-.5)*angles(-100,-90,0,true)*angles(-80,50,-10,true),
				cf(-1.4,-.5,0)*angles(-80,-90,0,true)*angles(-50,0,0,true),
				cf(1,.5,0)*angles(-140,-90,0,true)*angles(30,0,0,true),
				cf(.75,0,-.5)*angles(-100,-90,0,true)*angles(80,-50,10,true),
				cf(1.4,-.5,0)*angles(-80,-90,0,true)*angles(50,0,0,true),
			},
			ParticleType="PhaseIn"
		},
	}
--[[
Left Shoulder: 
	C0: CFrame.new(-1,.5,0)*CFrame.new(0.75,0,-0.15)*CFrame.Angles(math.rad(30),math.rad(-10),math.rad(35))
	C1: CFrame.new(.5,.5,0)
Right Shoulder: 
	C0: CFrame.new(1,.5,0)*CFrame.new(-0.75,0,-0.2)*CFrame.Angles(math.rad(20),math.rad(15),math.rad(-20))
	C1: CFrame.new(-.5,.5,0)
Neck: 
	C0: CFrame.new(0,1,0)*CFrame.Angles(math.rad(-8),math.rad(15),math.rad(0))
	C1: CFrame.new(0,-.5,0)
Right Hip: 
	C0: CFrame.new(0.5,-1,0)*CFrame.new(0.2,0.125,-0.35)*CFrame.Angles(math.rad(-10),math.rad(-35),math.rad(-10))
	C1: CFrame.new(0,1,0)
Left Hip: 
	C0: CFrame.new(-0.5,-1,0)*CFrame.new(0,0,0)*CFrame.Angles(math.rad(5),math.rad(5),math.rad(2))
	C1: CFrame.new(0,1,0)
RootJoint: 
	C0: CFrame.new(0.125,-0.05,0)*CFrame.Angles(math.rad(-5),math.rad(-15),math.rad(-5))
	C1: 
]]--
end

local function AnimationsM()
	local math=setmetatable({random=function(Arg1,Arg2,DIV) DIV=DIV or 1 return math.random(Arg1*DIV,Arg2*DIV)/DIV end,CosSin=function(Arg) return (math.sin(Arg/2)*math.cos(Arg/2)) end,},{__index=math,})
	local CFrame=setmetatable({Angles=function(Arg1,Arg2,Arg3,Angles) if not Angles then return CFrame.Angles(Arg1,Arg2,Arg3) else return CFrame.Angles(math.rad(Arg1),math.rad(Arg2),math.rad(Arg3)) end end,},{__index=CFrame,})
	local Instance=setmetatable({new=function(type,args) local instance=Instance.new(type) if args then if string.lower(typeof(args)) == "instance" then instance.Parent=args elseif string.lower(typeof(args))=="table" then for i,v in pairs(args) do pcall(function() instance[i]=v end) end end end return instance end,Remove=function(Instance_,Time) if string.lower(typeof(Instance_))=="instance" then game:GetService("Debris"):AddItem(Instance_,Time or 0) elseif string.lower(typeof(Instance_))=="table" then table.foreach(Instance_,function(_,v) game:GetService("Debris"):AddItem(v,Time or 0) end) end end},{__index=Instance,})
	local ins=Instance.new
	local v3=Vector3.new
	local v2=Vector2.new
	local cf=CFrame.new
	local angles=CFrame.Angles
	local ud=UDim.new
	local ud2=UDim2.new
	local c3=Color3.new
	local rgb=Color3.fromRGB
	local hsv=Color3.fromHSV
	local bc=BrickColor.new
	local bcRandom=BrickColor.Random
	local palette=BrickColor.pelatte
	local cs=ColorSequence.new
	local ns=NumberSequence.new
	local nsk=NumberSequenceKeypoint.new
	local nr=NumberRange.new
	local random=math.random
	local rad=math.rad
	local sin=math.sin
	local cos=math.cos
	local tan=math.tan
	local CosSin=math.CosSin
	local floor=math.floor
	local pi=math.floor
	local abs=math.abs
	local sqrt=math.sqrt
	local clamp=math.clamp
	local ray=Ray.new
	local huge=math.huge
	return {
		Punch1={
			Waits={
				[1]=.1,
				[2]=.035,
				[3]=.035,
				[4]=.1
			},
			[1]={
				{"nec",{C1=CFrame.Angles(math.rad(-5),math.rad(15),math.rad(0))},{.2,Enum.EasingStyle.Circular,Enum.EasingDirection.In,0,false,0}},
				{"rutj",{C1=cf(.2,0,-.2)*CFrame.Angles(math.rad(5),math.rad(-50),math.rad(-5))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0}},
				{"rs",{C0=CFrame.new(-0.1,-0.7,0.3)*CFrame.Angles(math.rad(100),math.rad(-10),math.rad(30))*CFrame.Angles(math.rad(0),math.rad(70),math.rad(0))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.InOut,0,false,0}},
				{"ls",{C0=CFrame.new(-0.2,-0.6,-0.3)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-20))*CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0}},
				{"rh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(-3),math.rad(0),math.rad(8))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0}},
				{"lh",{C1=CFrame.new(0,0.3,-0.3)*CFrame.Angles(math.rad(-15),math.rad(10),math.rad(0))},{.175,Enum.EasingStyle.Exponential,Enum.EasingDirection.In,0,false,0}}
			},
			[2]={
				{"rutj",{C1=CFrame.new(0,0,-0.05)*CFrame.Angles(math.rad(5),math.rad(-20),math.rad(-5))},{.035,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0}},
				{"ls",{C0=CFrame.new(-0.2,-0.6,-0.3)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-20))*CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,-1,false,0}},
				{"rh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(-3),math.rad(0),math.rad(8))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,-1,false,0}},
			},
			[3]={
				{"rs",{C0=CFrame.new(-0.2,-0.7,0.4)*CFrame.Angles(math.rad(100),math.rad(-10),math.rad(25))*CFrame.Angles(math.rad(0),math.rad(70),math.rad(0))},{.035,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0}},
			},
			[4]={
				{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(-50),math.rad(0))},{.2,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
				{"rutj",{C1=CFrame.new(0,0,-0.85)*CFrame.Angles(math.rad(-15),math.rad(70),math.rad(0))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
				{"rs",{C0=CFrame.new(-0.3,-0.3,-0.8)*CFrame.Angles(math.rad(105),math.rad(-10),math.rad(45))*CFrame.Angles(math.rad(0),math.rad(70),math.rad(0))},{.125,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
				{"ls",{C0=CFrame.new(-0.2,-0.8,.3)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(30))*CFrame.Angles(math.rad(0),math.rad(-70),math.rad(0))},{.3,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
				{"rh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(-6.5),math.rad(-15),math.rad(2))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
				{"lh",{C1=CFrame.new(0,.5,-0.2)*CFrame.Angles(math.rad(-10),math.rad(-5),math.rad(5))},{.175,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0}}
			}
		},
		Punch2={
			Waits={
				[1]=.1,
				[2]=.035,
				[3]=.035,
				[4]=.1
			},
			[1]={
				{"nec",{C1=CFrame.Angles(math.rad(-5),math.rad(-15),math.rad(0))},{.2,Enum.EasingStyle.Circular,Enum.EasingDirection.In,0,false,0}},
				{"rutj",{C1=cf(-.2,0,-.2)*CFrame.Angles(math.rad(5),math.rad(50),math.rad(5))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0}},
				{"ls",{C0=CFrame.new(0.1,-0.7,0.3)*CFrame.Angles(math.rad(100),math.rad(-10),math.rad(-30))*CFrame.Angles(math.rad(0),math.rad(-70),math.rad(0))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.InOut,0,false,0}},
				{"rs",{C0=CFrame.new(0.2,-0.6,-0.3)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(20))*CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0}},
				{"lh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(-3),math.rad(0),math.rad(-8))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0}},
				{"rh",{C1=CFrame.new(0,0.3,-0.3)*CFrame.Angles(math.rad(-15),math.rad(10),math.rad(0))},{.175,Enum.EasingStyle.Exponential,Enum.EasingDirection.In,0,false,0}}
			},
			[2]={
				{"rutj",{C1=CFrame.new(0,0,-0.05)*CFrame.Angles(math.rad(5),math.rad(20),math.rad(5))},{.035,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0}},
				{"rs",{C0=CFrame.new(0.2,-0.6,-0.3)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(20))*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,-1,false,0}},
				{"lh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(-3),math.rad(0),math.rad(-8))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,-1,false,0}},
			},
			[3]={
				{"ls",{C0=CFrame.new(0.2,-0.7,0.4)*CFrame.Angles(math.rad(100),math.rad(10),math.rad(-25))*CFrame.Angles(math.rad(0),math.rad(-70),math.rad(0))},{.035,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0}},
			},
			[4]={
				{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(50),math.rad(0))},{.2,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
				{"rutj",{C1=CFrame.new(0,0,-0.85)*CFrame.Angles(math.rad(-15),math.rad(-70),math.rad(0))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
				{"ls",{C0=CFrame.new(0.3,-0.3,-0.8)*CFrame.Angles(math.rad(105),math.rad(10),math.rad(-45))*CFrame.Angles(math.rad(0),math.rad(-70),math.rad(0))},{.125,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
				{"rs",{C0=CFrame.new(0.2,-0.8,.3)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-30))*CFrame.Angles(math.rad(0),math.rad(70),math.rad(0))},{.3,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
				{"lh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(-6.5),math.rad(15),math.rad(-2))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
				{"rh",{C1=CFrame.new(0,.5,-0.2)*CFrame.Angles(math.rad(-10),math.rad(5),math.rad(-5))},{.175,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0}}
			}
		},
		BeamCast={
			Waits={
				[1]=.15,
				[2]=.05,
				[3]=.05,
				[4]=.2,
				[5]=.1,
				[6]=.1
			},
			[1]={
				{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(-30),math.rad(-10))},{.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0}},
				{"rutj",{C1=CFrame.new(0.075,0,0.25)*CFrame.Angles(math.rad(0),math.rad(35),math.rad(0))},{.2,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
				{"rs",{C0=CFrame.new(-0.25,0.45,-0.3)*CFrame.Angles(math.rad(180),math.rad(-35),math.rad(0))*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(10))},{.15,Enum.EasingStyle.Circular,Enum.EasingDirection.In,0,false,0}},
				{"ls",{C0=CFrame.new(0.1,-0.1,0.05)*CFrame.Angles(math.rad(-10),math.rad(10),math.rad(-10))},{.2,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
				{"rh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0))},{.2,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
				{"lh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(7.5),math.rad(-5))},{.2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0}}
			},
			[2]={
				{"rs",{C0=CFrame.new(-0.25,0.45,-0.3)*CFrame.Angles(math.rad(180),math.rad(-35),math.rad(0))*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(10))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false,0}},
			},
			[3]={
				{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(-30),math.rad(-10))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,-1,false,0}},
				{"rutj",{C1=CFrame.new(0.075,0,0.25)*CFrame.Angles(math.rad(0),math.rad(35),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false,0}},
				{"ls",{C0=CFrame.new(0.1,-0.1,0.05)*CFrame.Angles(math.rad(-10),math.rad(10),math.rad(-10))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false,0}},
				{"rh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false,0}},
				{"lh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(7.5),math.rad(-5))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,-1,false,0}}
			},
			[4]={
				{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(-30),math.rad(-10))},{.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0}},
				{"rutj",{C1=CFrame.new(0.075,0,0.25)*CFrame.Angles(math.rad(0),math.rad(35),math.rad(0))},{.2,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
				{"rs",{C0=CFrame.new(-0.5,-0.3,-0.65)*CFrame.Angles(math.rad(170),math.rad(10),math.rad(-85))},{.2,Enum.EasingStyle.Circular,Enum.EasingDirection.In,0,false,0}},
				{"ls",{C0=CFrame.new(0.1,-0.1,0.05)*CFrame.Angles(math.rad(-10),math.rad(10),math.rad(-10))},{.2,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
				{"rh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0))},{.2,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
				{"lh",{C1=CFrame.new(0,0.3,-0.5)*CFrame.Angles(math.rad(-20),math.rad(7.5),math.rad(-5))},{.2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0}}
			},
			[5]={
				{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(20),math.rad(0))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.In,0,false,0}},
				{"rutj",{C1=CFrame.new(0.05,0,-0.35)*CFrame.Angles(math.rad(-5),math.rad(-15),math.rad(0))},{.1,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0}},
				{"rs",{C0=CFrame.new(-0.1,-0.3,-0.65)*CFrame.Angles(math.rad(175),math.rad(70),math.rad(-85))},{.1,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
				{"ls",{C0=CFrame.new(0.1,-0.1,0.05)*CFrame.Angles(math.rad(10),math.rad(10),math.rad(-15))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.In,0,false,0}},
				{"rh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0))},{.1,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0}},
				{"lh",{C1=CFrame.new(0,0.3,-0.5)*CFrame.Angles(math.rad(5),math.rad(7.5),math.rad(-5))},{.1,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0}}
			},
			[6]={
				{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(60),math.rad(0))},{.1,Enum.EasingStyle.Circular,Enum.EasingDirection.Out,0,false,0}},
				{"rutj",{C1=CFrame.new(0.25,-0.15,-0.95)*CFrame.Angles(math.rad(-15),math.rad(-55),math.rad(0))},{.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
				{"rs",{C0=CFrame.new(0.3,-0.3,-0.1)*CFrame.Angles(math.rad(175),math.rad(150),math.rad(-85))},{.125,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out,0,false,0}},
				{"ls",{C0=CFrame.new(0,-0.1,-0.05)*CFrame.Angles(math.rad(30),math.rad(10),math.rad(-45))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0}},
				{"rh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(-10),math.rad(-5))},{.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
				{"lh",{C1=CFrame.new(-0.2,0.3,-0.2)*CFrame.Angles(math.rad(15),math.rad(50),math.rad(-15))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0}}
			}
		},
		BladeStab={
			Waits={
				[1]=.15,
				[2]=.05,
				[3]=.075,
				[4]=.1,
				[5]=.05,
				[6]=.05,
				[7]=0,
			},
			[1]={
				{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(50),math.rad(0))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
				{"rutj",{C1=CFrame.new(-0.15,0,0.35)*CFrame.Angles(math.rad(0),math.rad(-50),math.rad(0))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
				{"rs",{C0=CFrame.new(0.2,-0.5,-0.1)*CFrame.Angles(math.rad(90),math.rad(80),math.rad(10))*CFrame.Angles(math.rad(20),math.rad(0),math.rad(0))},{.25,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0}},
				{"ls",{C0=CFrame.new(0,0,-0.2)*CFrame.Angles(math.rad(100),math.rad(0),math.rad(-35))},{.2,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0}},
				{"rh",{C1=CFrame.new(0,0.5,-0.35)*CFrame.Angles(math.rad(-15),math.rad(-15),math.rad(10))},{.2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0}},
				{"lh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(55),math.rad(0))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}}
			},
			[2]={
				{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(50),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false,0}},
				{"rutj",{C1=CFrame.new(-0.15,0,0.35)*CFrame.Angles(math.rad(0),math.rad(-50),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false,0}},
				{"lh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(55),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false,0}}
			},
			[3]={
				{"ls",{C0=CFrame.new(0,0,-0.2)*CFrame.Angles(math.rad(100),math.rad(0),math.rad(-35))},{.2,Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false,0}},
				{"rh",{C1=CFrame.new(0,0.5,-0.35)*CFrame.Angles(math.rad(-15),math.rad(-15),math.rad(10))},{.2,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,-1,false,0}},
			},
			[4]={
				{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(-35),math.rad(0))},{.15,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0}},
				{"rutj",{C1=CFrame.new(0,0,-0.5)*CFrame.Angles(math.rad(-7.5),math.rad(30),math.rad(0))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
				{"rs",{C0=CFrame.new(0.35,-0.45,-0.5)*CFrame.Angles(math.rad(90),math.rad(100),math.rad(0))*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0))},{.1,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out,0,false,0}},
				{"ls",{C0=CFrame.new(0,0,-0.2)*CFrame.Angles(math.rad(100),math.rad(30),math.rad(-65))},{.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0}},
				{"rh",{C1=CFrame.new(0,0,-0.1)*CFrame.Angles(math.rad(15),math.rad(-15),math.rad(10))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
				{"lh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(5),math.rad(5),math.rad(0))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}}
			},
			[5]={
				{"rs",{C0=CFrame.new(0.35,-0.45,-0.5)*CFrame.Angles(math.rad(90),math.rad(100),math.rad(0))*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,-1,false,0}},

			},
			[6]={
				{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(-35),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,-1,false,0}},
				{"rutj",{C1=CFrame.new(0,0,-0.5)*CFrame.Angles(math.rad(-7.5),math.rad(30),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,-1,false,0}},
				{"rh",{C1=CFrame.new(0,0,-0.1)*CFrame.Angles(math.rad(15),math.rad(-15),math.rad(10))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,-1,false,0}},
				{"lh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(5),math.rad(5),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,-1,false,0}}
			},
			[7]={
				{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(-35),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0}},
				{"rutj",{C1=CFrame.new(0,0,-0.5)*CFrame.Angles(math.rad(-7.5),math.rad(30),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0}},
				{"rs",{C0=CFrame.new(0.35,-0.45,-0.5)*CFrame.Angles(math.rad(90),math.rad(100),math.rad(0))*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0}},
				{"ls",{C0=CFrame.new(0,0,-0.2)*CFrame.Angles(math.rad(100),math.rad(30),math.rad(-65))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0}},
				{"rh",{C1=CFrame.new(0,0,-0.1)*CFrame.Angles(math.rad(15),math.rad(-15),math.rad(10))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0}},
				{"lh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(5),math.rad(5),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0}}
			}
		},
		BladeSwing={
			Waits={
				[1]=.2,
				[2]=.1,
				[3]=.1
			},
			[1]={
				{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(-30),math.rad(-10))},{.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0}},
				{"rutj",{C1=CFrame.new(0.075,0,0.25)*CFrame.Angles(math.rad(0),math.rad(35),math.rad(0))},{.2,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
				{"rs",{C0=CFrame.new(-0.5,-0.4,-0.65)*CFrame.Angles(math.rad(170),math.rad(-20),math.rad(-80))},{.2,Enum.EasingStyle.Circular,Enum.EasingDirection.In,0,false,0}},
				{"ls",{C0=CFrame.new(0.1,-0.1,0.05)*CFrame.Angles(math.rad(-10),math.rad(10),math.rad(-10))},{.2,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
				{"rh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0))},{.2,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
				{"lh",{C1=CFrame.new(0,0.3,-0.5)*CFrame.Angles(math.rad(-20),math.rad(7.5),math.rad(-5))},{.2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0}}
			},
			[2]={
				{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(20),math.rad(0))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.In,0,false,0}},
				{"rutj",{C1=CFrame.new(0.05,0,-0.35)*CFrame.Angles(math.rad(-5),math.rad(-15),math.rad(0))},{.1,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0}},
				{"rs",{C0=CFrame.new(-0.1,-0.3,-0.65)*CFrame.Angles(math.rad(175),math.rad(70),math.rad(-85))},{.1,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
				{"ls",{C0=CFrame.new(0.1,-0.1,0.05)*CFrame.Angles(math.rad(10),math.rad(10),math.rad(-15))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.In,0,false,0}},
				{"rh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0))},{.1,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0}},
				{"lh",{C1=CFrame.new(0,0.3,-0.5)*CFrame.Angles(math.rad(5),math.rad(7.5),math.rad(-5))},{.1,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0}}
			},
			[3]={
				{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(60),math.rad(0))},{.1,Enum.EasingStyle.Circular,Enum.EasingDirection.Out,0,false,0}},
				{"rutj",{C1=CFrame.new(0.25,-0.15,-0.95)*CFrame.Angles(math.rad(-15),math.rad(-55),math.rad(0))},{.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
				{"rs",{C0=CFrame.new(0.3,-0.3,-0.1)*CFrame.Angles(math.rad(175),math.rad(160),math.rad(-85))},{.1,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out,0,false,0}},
				{"ls",{C0=CFrame.new(0,-0.1,-0.05)*CFrame.Angles(math.rad(30),math.rad(10),math.rad(-45))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0}},
				{"rh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(-10),math.rad(-5))},{.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
				{"lh",{C1=CFrame.new(-0.2,0.3,-0.2)*CFrame.Angles(math.rad(15),math.rad(50),math.rad(-15))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0}}
			}
		},
		Backflip={
			Waits={
				[1]=.125,
				[2]=.075,
				[3]=.075,
				[4]=.075,
				[5]=.075,
				[6]=.075,
				[7]=.075,
				[8]=.1,
			},
			[1]={
				{"nec",{C0=CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0))},{.125,Enum.EasingStyle.Circular,Enum.EasingDirection.InOut,0,false,0}},
				{"rutj",{C0=CFrame.new(0,-0.1,-0.25)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),C1=CFrame.Angles(0,math.rad(-10),0)},{.125,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0}},
				{"rs",{C0=CFrame.new(-0.25,-0.2,0.15)*CFrame.Angles(math.rad(-25),math.rad(10),math.rad(10))},{.125,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0}},
				{"ls",{C0=CFrame.new(0.15,-0.2,0.15)*CFrame.Angles(math.rad(-15),math.rad(-5),math.rad(-5))},{.125,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0}},
				{"rh",{C0=CFrame.new(0,0,-0.3)*CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(5))},{.125,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0}},
				{"lh",{C0=CFrame.new(0,0.1,-0.25)*CFrame.Angles(math.rad(15),math.rad(10),math.rad(-3))},{.125,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0}}
			},
			[2]={
				{"nec",{C0=CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))},{.075,Enum.EasingStyle.Circular,Enum.EasingDirection.In,0,false,0}},
				{"rutj",{C0=CFrame.new(0,0.5,-0.25)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(0)),C1=CFrame.Angles(0,math.rad(35),0)},{.075,Enum.EasingStyle.Exponential,Enum.EasingDirection.In,0,false,0}},
				{"rs",{C0=CFrame.new(-0.25,-0.1,0)*CFrame.Angles(math.rad(15),math.rad(10),math.rad(10))},{.075,Enum.EasingStyle.Quad,Enum.EasingDirection.In,0,false,0}},
				{"ls",{C0=CFrame.new(0.15,-0.1,-0.1)*CFrame.Angles(math.rad(25),math.rad(-5),math.rad(-5))},{.075,Enum.EasingStyle.Quad,Enum.EasingDirection.In,0,false,0}},
				{"rh",{C0=CFrame.new(0,0.35,-0.7)*CFrame.Angles(math.rad(-30),math.rad(-10),math.rad(5))},{.075,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0}},
				{"lh",{C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(-10),math.rad(15),math.rad(-3))},{.075,Enum.EasingStyle.Exponential,Enum.EasingDirection.In,0,false,0}}
			},
			[3]={
				{"nec",{C0=CFrame.Angles(math.rad(15),math.rad(0),math.rad(0))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"rutj",{C0=CFrame.new(0,1.5,0.35)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(0)),C1=CFrame.Angles(0,math.rad(90),0)},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"rs",{C0=CFrame.new(-0.1,-0.1,-0.35)*CFrame.Angles(math.rad(75),math.rad(10),math.rad(40))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"ls",{C0=CFrame.new(0.15,0,-0.6)*CFrame.Angles(math.rad(85),math.rad(-5),math.rad(-15))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"rh",{C0=CFrame.new(0,0.35,-0.7)*CFrame.Angles(math.rad(-25),math.rad(-10),math.rad(5))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"lh",{C0=CFrame.new(0,0.3,-0.5)*CFrame.Angles(math.rad(-30),math.rad(15),math.rad(-3))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}}
			},
			[4]={
				{"nec",{C0=CFrame.Angles(math.rad(35),math.rad(0),math.rad(0))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"rutj",{C0=CFrame.new(0,2.5,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)),C1=CFrame.Angles(0,math.rad(140),0)},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"rs",{C0=CFrame.new(-0.1,0.3,-0.15)*CFrame.Angles(math.rad(145),math.rad(10),math.rad(20))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"ls",{C0=CFrame.new(0.15,0.4,-0.4)*CFrame.Angles(math.rad(125),math.rad(-5),math.rad(-45))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"rh",{C0=CFrame.new(0,0.2,-0.5)*CFrame.Angles(math.rad(-5),math.rad(-10),math.rad(5))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"lh",{C0=CFrame.new(0,0.3,-0.75)*CFrame.Angles(math.rad(-45),math.rad(15),math.rad(-3))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}}
			},
			[5]={
				{"nec",{C0=CFrame.Angles(math.rad(35),math.rad(0),math.rad(0))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"rutj",{C0=CFrame.new(0,2.5,0)*CFrame.Angles(math.rad(-130),math.rad(0),math.rad(0)),C1=CFrame.Angles(0,math.rad(190),0)},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"rs",{C0=CFrame.new(-0.1,0.5,0)*CFrame.Angles(math.rad(185),math.rad(10),math.rad(20))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"ls",{C0=CFrame.new(0.15,0.5,-0.1)*CFrame.Angles(math.rad(155),math.rad(-5),math.rad(-25))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"rh",{C0=CFrame.new(0,0.2,-0.5)*CFrame.Angles(math.rad(-5),math.rad(-10),math.rad(5))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"lh",{C0=CFrame.new(0,0.3,-0.75)*CFrame.Angles(math.rad(-45),math.rad(10),math.rad(10))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}}
			},
			[6]={
				{"nec",{C0=CFrame.Angles(math.rad(15),math.rad(0),math.rad(0))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"rutj",{C0=CFrame.new(0,2,-0.25)*CFrame.Angles(math.rad(-70),math.rad(0),math.rad(0)),C1=CFrame.Angles(0,math.rad(230),0)},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"rs",{C0=CFrame.new(-0.1,0.5,-0.25)*CFrame.Angles(math.rad(135),math.rad(10),math.rad(20))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"ls",{C0=CFrame.new(0.15,0,-0.35)*CFrame.Angles(math.rad(105),math.rad(-5),math.rad(-25))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"rh",{C0=CFrame.new(0,0.2,-0.5)*CFrame.Angles(math.rad(-5),math.rad(-10),math.rad(5))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"lh",{C0=CFrame.new(0,0.3,-0.65)*CFrame.Angles(math.rad(-30),math.rad(15),math.rad(3))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}}
			},
			[7]={
				{"nec",{C0=CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"rutj",{C0=CFrame.new(0,1.25,-0.25)*CFrame.Angles(math.rad(-30),math.rad(0),math.rad(0)),C1=CFrame.Angles(0,math.rad(300),0)},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"rs",{C0=CFrame.new(-0.1,0,-0.25)*CFrame.Angles(math.rad(75),math.rad(10),math.rad(10))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"ls",{C0=CFrame.new(0.15,-0.05,-0.35)*CFrame.Angles(math.rad(55),math.rad(-5),math.rad(-15))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"rh",{C0=CFrame.new(0,0.1,-0.4)*CFrame.Angles(math.rad(-15),math.rad(-10),math.rad(5))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
				{"lh",{C0=CFrame.new(-0.15,0,-0.35)*CFrame.Angles(math.rad(10),math.rad(25),math.rad(-6))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}}
			},
			[8]={
				{"nec",{C0=CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0}},
				{"rutj",{C0=CFrame.new(0,-0.2,-0.25)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),C1=CFrame.Angles(0,math.rad(10),0)},{.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
				{"rs",{C0=CFrame.new(-0.1,-0.15,-0.25)*CFrame.Angles(math.rad(15),math.rad(10),math.rad(10))},{.1,Enum.EasingStyle.Circular,Enum.EasingDirection.Out,0,false,0}},
				{"ls",{C0=CFrame.new(0.15,-0.2,0.05)*CFrame.Angles(math.rad(-5),math.rad(-5),math.rad(-15))},{.1,Enum.EasingStyle.Circular,Enum.EasingDirection.Out,0,false,0}},
				{"rh",{C0=CFrame.new(0,0.2,-0.4)*CFrame.Angles(math.rad(5),math.rad(-10),math.rad(5))},{.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
				{"lh",{C0=CFrame.new(-0.15,0.1,-0.65)*CFrame.Angles(math.rad(-10),math.rad(25),math.rad(-6))},{.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}}
			}
		}
	}
--[[
Left Shoulder: 
	C0: CFrame.new(-1,.5,0)*CFrame.new(0.15,-0.2,0.05)*CFrame.Angles(math.rad(-5),math.rad(-5),math.rad(-15))
	C1: CFrame.new(.5,.5,0)
Right Shoulder: 
	C0: CFrame.new(1,.5,0)*CFrame.new(-0.1,-0.15,-0.25)*CFrame.Angles(math.rad(15),math.rad(10),math.rad(10))
	C1: CFrame.new(-.5,.5,0)
Neck: 
	C0: CFrame.new(0,1,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0))
	C1: CFrame.new(0,-.5,0)
Right Hip: 
	C0: CFrame.new(0.5,-1,0)*CFrame.new(0,0.2,-0.4)*CFrame.Angles(math.rad(5),math.rad(-10),math.rad(5))
	C1: CFrame.new(0,1,0)
Left Hip: 
	C0: CFrame.new(-0.5,-1,0)*CFrame.new(-0.15,0.1,-0.65)*CFrame.Angles(math.rad(-10),math.rad(25),math.rad(-6))
	C1: CFrame.new(0,1,0)
RootJoint: 
	C0: CFrame.new(0,-0.2,-0.25)*CFrame.Angles(math.rad(-20),math.rad(10),math.rad(0))
	C1: 
]]--
--[[
	,
	temp={
		Waits={
			[1]=.225
		},
		[1]={
			{"nec",{C1=000},{.25,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
			{"rutj",{C1=000},{.25,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
			{"rs",{C0=000},{.25,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
			{"ls",{C0=000},{.25,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
			{"rh",{C1=000},{.25,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
			{"lh",{C1=000},{.25,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}}
		}
	}
--]]
end

local math=setmetatable({random=function(Arg1,Arg2,DIV) DIV=DIV or 1 return math.random(Arg1*DIV,Arg2*DIV)/DIV end;CosSin=function(Arg) return (math.sin(Arg/2)*math.cos(Arg/2)) end;},{__index=math;})
local CFrame=setmetatable({Angles=function(Arg1,Arg2,Arg3,Angles) if not Angles then return CFrame.Angles(Arg1,Arg2,Arg3) else return CFrame.Angles(math.rad(Arg1),math.rad(Arg2),math.rad(Arg3)) end end;},{__index=CFrame;})
local Instance=setmetatable({new = function(type,args) local instance = Instance.new(type) if args then if string.lower(typeof(args)) == "instance" then instance.Parent = args elseif string.lower(typeof(args)) == "table" then for i,v in pairs(args) do pcall(function() instance[i] = v end) end end end return instance end;Remove=function(Instance_,Time) if string.lower(typeof(Instance_))=="instance" then game:GetService("Debris"):AddItem(Instance_,Time or 0) elseif string.lower(typeof(Instance_))=="table" then table.foreach(Instance_,function(_,v) game:GetService("Debris"):AddItem(v,Time or 0) end) end end},{__index=Instance;})
local Player,UIS=game:GetService("Players").LocalPlayer,game:GetService("UserInputService") local Mouse=Player:GetMouse()
--}{		Default Functions	   }{--
local ins=Instance.new
local v3=Vector3.new
local v2=Vector2.new
local cf=CFrame.new
local angles=CFrame.Angles
local ud=UDim.new
local ud2=UDim2.new
local c3=Color3.new
local rgb=Color3.fromRGB
local hsv=Color3.fromHSV
local bc=BrickColor.new
local bcRandom=BrickColor.Random
local palette=BrickColor.palette
local cs=ColorSequence.new
local ns=NumberSequence.new
local nsk=NumberSequenceKeypoint.new
local nr=NumberRange.new
local random=math.random
local rad=math.rad
local sin=math.sin
local cos=math.cos
local tan=math.tan
local cotan=math.CosSin
local floor=math.floor
local pi=math.pi
local abs=math.abs
local sqrt=math.sqrt
local clamp=math.clamp
local ray=Ray.new
local huge=math.huge
--
function Raycast(Origin,Direction,Blacklist,MaxDistance,IgnoreWater)
	return workspace:FindPartOnRayWithIgnoreList(ray(Origin,Direction.Unit*MaxDistance),Blacklist or {},false,IgnoreWater)
end
function Tween(Object,Args,Info)
	if Object and Args then
		Info = Info or TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0)
		if typeof(Info) == "table" then Info = TweenInfo.new(unpack(Info)) end
		game:GetService("TweenService"):Create(Object,Info,Args):Play()
	end
end
--
local Rem=script.Parent.SClientAssets.Input
local InfoRef=Rem.InfoRef
local CSFuncs={Events={},Functions={}}
function CreateCSFunc(Type,Name,Func)
	if CSFuncs[Type.."s"] then
		CSFuncs[Type.."s"][Name]=Func
		return Func
	end
end
function CSFire(self,AT,Name,...)
	if not self then return end
	if AT=="S" then
		return Rem:FireServer(nil,false,AT,Name,...)
	elseif AT=="R" then
		return InfoRef:InvokeServer(AT,Name,...)
	end
end
function CSTrig(self,Type,Name,...)
	if not self then return end
	if CSFuncs[Type.."s"] and CSFuncs[Type.."s"][Name] then
		return CSFuncs[Type.."s"][Name](...)
	end
end
CSFuncs.new=CreateCSFunc
CSFuncs.Fire=CSFire
CSFuncs.Trigger=CSTrig
--
local Cam=workspace.CurrentCamera
local char=Player.Character
local hum=char:FindFirstChildOfClass("Humanoid")
local h=char.Head
local t=char.Torso
local hrp=char.HumanoidRootPart 
local ra=char["Right Arm"]
local la=char["Left Arm"]
local rl=char["Right Leg"]
local ll=char["Left Leg"]
local nec=t.Neck
local rutj=hrp.RootJoint
local rs=t["Right Shoulder"]
local ls=t["Left Shoulder"]
local rh=t["Right Hip"]
local lh=t["Left Hip"]
local fh=ins("Part",{Massless=true,Size=v3(2,1,1),Transparency=.9,Material="Neon",Color=c3(1,0,0),Parent=h})
local ft=ins("Part",{Massless=true,Size=v3(2,2,1),Transparency=.9,Material="Neon",Color=c3(1,0,0),Parent=t})
local fra=ins("Part",{Massless=true,Size=v3(1,2,1),CanCollide=false,Transparency=.9,Material="Neon",Color=c3(1,0,0),Parent=ra})
local fla=ins("Part",{Massless=true,Size=v3(1,2,1),CanCollide=false,Transparency=.9,Material="Neon",Color=c3(1,0,0),Parent=la})
local frl=ins("Part",{Massless=true,Size=v3(1,2,1),CanCollide=false,Transparency=.9,Material="Neon",Color=c3(1,0,0),Parent=rl})
local fll=ins("Part",{Massless=true,Size=v3(1,2,1),CanCollide=false,Transparency=.9,Material="Neon",Color=c3(1,0,0),Parent=ll})
task.spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
		h.CFrame = fh.CFrame
		t.CFrame = ft.CFrame
		ra.CFrame = fra.CFrame
		la.CFrame = fla.CFrame
		rl.CFrame = frl.CFrame
		ll.CFrame = fll.CFrame
	end)
end)
local WNums={-1,-2,-3,1,2,3}
for i,v in pairs({fh,ft,fra,fla,frl,fll}) do
	pcall(function()
		game:GetService("PhysicsService"):SetPartCollisionGroup(v,"FakeRep")
	end)
end
hrp.Anchored=true
--
local Anims={
	Punch1={
		Waits={
			[1]=.1,
			[2]=.035,
			[3]=.035,
			[4]=.1
		},
		[1]={
			{"nec",{C1=CFrame.Angles(math.rad(-5),math.rad(15),math.rad(0))},{.2,Enum.EasingStyle.Circular,Enum.EasingDirection.In,0,false,0}},
			{"rutj",{C1=cf(.2,0,-.2)*CFrame.Angles(math.rad(5),math.rad(-50),math.rad(-5))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0}},
			{"rs",{C0=CFrame.new(-0.1,-0.7,0.3)*CFrame.Angles(math.rad(100),math.rad(-10),math.rad(30))*CFrame.Angles(math.rad(0),math.rad(70),math.rad(0))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.InOut,0,false,0}},
			{"ls",{C0=CFrame.new(-0.2,-0.6,-0.3)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-20))*CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0}},
			{"rh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(-3),math.rad(0),math.rad(8))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0}},
			{"lh",{C1=CFrame.new(0,0.3,-0.3)*CFrame.Angles(math.rad(-15),math.rad(10),math.rad(0))},{.175,Enum.EasingStyle.Exponential,Enum.EasingDirection.In,0,false,0}}
		},
		[2]={
			{"rutj",{C1=CFrame.new(0,0,-0.05)*CFrame.Angles(math.rad(5),math.rad(-20),math.rad(-5))},{.035,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0}},
			{"ls",{C0=CFrame.new(-0.2,-0.6,-0.3)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-20))*CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,-1,false,0}},
			{"rh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(-3),math.rad(0),math.rad(8))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,-1,false,0}},
		},
		[3]={
			{"rs",{C0=CFrame.new(-0.2,-0.7,0.4)*CFrame.Angles(math.rad(100),math.rad(-10),math.rad(25))*CFrame.Angles(math.rad(0),math.rad(70),math.rad(0))},{.035,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0}},
		},
		[4]={
			{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(-50),math.rad(0))},{.2,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
			{"rutj",{C1=CFrame.new(0,0,-0.85)*CFrame.Angles(math.rad(-15),math.rad(70),math.rad(0))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
			{"rs",{C0=CFrame.new(-0.3,-0.3,-0.8)*CFrame.Angles(math.rad(105),math.rad(-10),math.rad(45))*CFrame.Angles(math.rad(0),math.rad(70),math.rad(0))},{.125,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
			{"ls",{C0=CFrame.new(-0.2,-0.8,.3)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(30))*CFrame.Angles(math.rad(0),math.rad(-70),math.rad(0))},{.3,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
			{"rh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(-6.5),math.rad(-15),math.rad(2))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
			{"lh",{C1=CFrame.new(0,.5,-0.2)*CFrame.Angles(math.rad(-10),math.rad(-5),math.rad(5))},{.175,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0}}
		}
	},
	Punch2={
		Waits={
			[1]=.1,
			[2]=.035,
			[3]=.035,
			[4]=.1
		},
		[1]={
			{"nec",{C1=CFrame.Angles(math.rad(-5),math.rad(-15),math.rad(0))},{.2,Enum.EasingStyle.Circular,Enum.EasingDirection.In,0,false,0}},
			{"rutj",{C1=cf(-.2,0,-.2)*CFrame.Angles(math.rad(5),math.rad(50),math.rad(5))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0}},
			{"ls",{C0=CFrame.new(0.1,-0.7,0.3)*CFrame.Angles(math.rad(100),math.rad(-10),math.rad(-30))*CFrame.Angles(math.rad(0),math.rad(-70),math.rad(0))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.InOut,0,false,0}},
			{"rs",{C0=CFrame.new(0.2,-0.6,-0.3)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(20))*CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0}},
			{"lh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(-3),math.rad(0),math.rad(-8))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0}},
			{"rh",{C1=CFrame.new(0,0.3,-0.3)*CFrame.Angles(math.rad(-15),math.rad(10),math.rad(0))},{.175,Enum.EasingStyle.Exponential,Enum.EasingDirection.In,0,false,0}}
		},
		[2]={
			{"rutj",{C1=CFrame.new(0,0,-0.05)*CFrame.Angles(math.rad(5),math.rad(20),math.rad(5))},{.035,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0}},
			{"rs",{C0=CFrame.new(0.2,-0.6,-0.3)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(20))*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,-1,false,0}},
			{"lh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(-3),math.rad(0),math.rad(-8))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,-1,false,0}},
		},
		[3]={
			{"ls",{C0=CFrame.new(0.2,-0.7,0.4)*CFrame.Angles(math.rad(100),math.rad(10),math.rad(-25))*CFrame.Angles(math.rad(0),math.rad(-70),math.rad(0))},{.035,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0}},
		},
		[4]={
			{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(50),math.rad(0))},{.2,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
			{"rutj",{C1=CFrame.new(0,0,-0.85)*CFrame.Angles(math.rad(-15),math.rad(-70),math.rad(0))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
			{"ls",{C0=CFrame.new(0.3,-0.3,-0.8)*CFrame.Angles(math.rad(105),math.rad(10),math.rad(-45))*CFrame.Angles(math.rad(0),math.rad(-70),math.rad(0))},{.125,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
			{"rs",{C0=CFrame.new(0.2,-0.8,.3)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-30))*CFrame.Angles(math.rad(0),math.rad(70),math.rad(0))},{.3,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
			{"lh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(-6.5),math.rad(15),math.rad(-2))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
			{"rh",{C1=CFrame.new(0,.5,-0.2)*CFrame.Angles(math.rad(-10),math.rad(5),math.rad(-5))},{.175,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0}}
		}
	},
	BeamCast={
		Waits={
			[1]=.15,
			[2]=.05,
			[3]=.05,
			[4]=.2,
			[5]=.1,
			[6]=.1
		},
		[1]={
			{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(-30),math.rad(-10))},{.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0}},
			{"rutj",{C1=CFrame.new(0.075,0,0.25)*CFrame.Angles(math.rad(0),math.rad(35),math.rad(0))},{.2,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
			{"rs",{C0=CFrame.new(-0.25,0.45,-0.3)*CFrame.Angles(math.rad(180),math.rad(-35),math.rad(0))*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(10))},{.15,Enum.EasingStyle.Circular,Enum.EasingDirection.In,0,false,0}},
			{"ls",{C0=CFrame.new(0.1,-0.1,0.05)*CFrame.Angles(math.rad(-10),math.rad(10),math.rad(-10))},{.2,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
			{"rh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0))},{.2,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
			{"lh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(7.5),math.rad(-5))},{.2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0}}
		},
		[2]={
			{"rs",{C0=CFrame.new(-0.25,0.45,-0.3)*CFrame.Angles(math.rad(180),math.rad(-35),math.rad(0))*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(10))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false,0}},
		},
		[3]={
			{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(-30),math.rad(-10))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,-1,false,0}},
			{"rutj",{C1=CFrame.new(0.075,0,0.25)*CFrame.Angles(math.rad(0),math.rad(35),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false,0}},
			{"ls",{C0=CFrame.new(0.1,-0.1,0.05)*CFrame.Angles(math.rad(-10),math.rad(10),math.rad(-10))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false,0}},
			{"rh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false,0}},
			{"lh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(7.5),math.rad(-5))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,-1,false,0}}
		},
		[4]={
			{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(-30),math.rad(-10))},{.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0}},
			{"rutj",{C1=CFrame.new(0.075,0,0.25)*CFrame.Angles(math.rad(0),math.rad(35),math.rad(0))},{.2,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
			{"rs",{C0=CFrame.new(-0.5,-0.3,-0.65)*CFrame.Angles(math.rad(170),math.rad(10),math.rad(-85))},{.2,Enum.EasingStyle.Circular,Enum.EasingDirection.In,0,false,0}},
			{"ls",{C0=CFrame.new(0.1,-0.1,0.05)*CFrame.Angles(math.rad(-10),math.rad(10),math.rad(-10))},{.2,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
			{"rh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0))},{.2,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
			{"lh",{C1=CFrame.new(0,0.3,-0.5)*CFrame.Angles(math.rad(-20),math.rad(7.5),math.rad(-5))},{.2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0}}
		},
		[5]={
			{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(20),math.rad(0))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.In,0,false,0}},
			{"rutj",{C1=CFrame.new(0.05,0,-0.35)*CFrame.Angles(math.rad(-5),math.rad(-15),math.rad(0))},{.1,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0}},
			{"rs",{C0=CFrame.new(-0.1,-0.3,-0.65)*CFrame.Angles(math.rad(175),math.rad(70),math.rad(-85))},{.1,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
			{"ls",{C0=CFrame.new(0.1,-0.1,0.05)*CFrame.Angles(math.rad(10),math.rad(10),math.rad(-15))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.In,0,false,0}},
			{"rh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0))},{.1,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0}},
			{"lh",{C1=CFrame.new(0,0.3,-0.5)*CFrame.Angles(math.rad(5),math.rad(7.5),math.rad(-5))},{.1,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0}}
		},
		[6]={
			{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(60),math.rad(0))},{.1,Enum.EasingStyle.Circular,Enum.EasingDirection.Out,0,false,0}},
			{"rutj",{C1=CFrame.new(0.25,-0.15,-0.95)*CFrame.Angles(math.rad(-15),math.rad(-55),math.rad(0))},{.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
			{"rs",{C0=CFrame.new(0.3,-0.3,-0.1)*CFrame.Angles(math.rad(175),math.rad(150),math.rad(-85))},{.125,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out,0,false,0}},
			{"ls",{C0=CFrame.new(0,-0.1,-0.05)*CFrame.Angles(math.rad(30),math.rad(10),math.rad(-45))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0}},
			{"rh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(-10),math.rad(-5))},{.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
			{"lh",{C1=CFrame.new(-0.2,0.3,-0.2)*CFrame.Angles(math.rad(15),math.rad(50),math.rad(-15))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0}}
		}
	},
	BladeStab={
		Waits={
			[1]=.15,
			[2]=.05,
			[3]=.075,
			[4]=.1,
			[5]=.05,
			[6]=.05,
			[7]=0,
		},
		[1]={
			{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(50),math.rad(0))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
			{"rutj",{C1=CFrame.new(-0.15,0,0.35)*CFrame.Angles(math.rad(0),math.rad(-50),math.rad(0))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
			{"rs",{C0=CFrame.new(0.2,-0.5,-0.1)*CFrame.Angles(math.rad(90),math.rad(80),math.rad(10))*CFrame.Angles(math.rad(20),math.rad(0),math.rad(0))},{.25,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0}},
			{"ls",{C0=CFrame.new(0,0,-0.2)*CFrame.Angles(math.rad(100),math.rad(0),math.rad(-35))},{.2,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0}},
			{"rh",{C1=CFrame.new(0,0.5,-0.35)*CFrame.Angles(math.rad(-15),math.rad(-15),math.rad(10))},{.2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0}},
			{"lh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(55),math.rad(0))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}}
		},
		[2]={
			{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(50),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false,0}},
			{"rutj",{C1=CFrame.new(-0.15,0,0.35)*CFrame.Angles(math.rad(0),math.rad(-50),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false,0}},
			{"lh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(55),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false,0}}
		},
		[3]={
			{"ls",{C0=CFrame.new(0,0,-0.2)*CFrame.Angles(math.rad(100),math.rad(0),math.rad(-35))},{.2,Enum.EasingStyle.Linear,Enum.EasingDirection.In,-1,false,0}},
			{"rh",{C1=CFrame.new(0,0.5,-0.35)*CFrame.Angles(math.rad(-15),math.rad(-15),math.rad(10))},{.2,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,-1,false,0}},
		},
		[4]={
			{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(-35),math.rad(0))},{.15,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0}},
			{"rutj",{C1=CFrame.new(0,0,-0.5)*CFrame.Angles(math.rad(-7.5),math.rad(30),math.rad(0))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
			{"rs",{C0=CFrame.new(0.35,-0.45,-0.5)*CFrame.Angles(math.rad(90),math.rad(100),math.rad(0))*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0))},{.1,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out,0,false,0}},
			{"ls",{C0=CFrame.new(0,0,-0.2)*CFrame.Angles(math.rad(100),math.rad(30),math.rad(-65))},{.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0}},
			{"rh",{C1=CFrame.new(0,0,-0.1)*CFrame.Angles(math.rad(15),math.rad(-15),math.rad(10))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
			{"lh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(5),math.rad(5),math.rad(0))},{.15,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}}
		},
		[5]={
			{"rs",{C0=CFrame.new(0.35,-0.45,-0.5)*CFrame.Angles(math.rad(90),math.rad(100),math.rad(0))*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,-1,false,0}},

		},
		[6]={
			{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(-35),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,-1,false,0}},
			{"rutj",{C1=CFrame.new(0,0,-0.5)*CFrame.Angles(math.rad(-7.5),math.rad(30),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,-1,false,0}},
			{"rh",{C1=CFrame.new(0,0,-0.1)*CFrame.Angles(math.rad(15),math.rad(-15),math.rad(10))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,-1,false,0}},
			{"lh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(5),math.rad(5),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,-1,false,0}}
		},
		[7]={
			{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(-35),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0}},
			{"rutj",{C1=CFrame.new(0,0,-0.5)*CFrame.Angles(math.rad(-7.5),math.rad(30),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0}},
			{"rs",{C0=CFrame.new(0.35,-0.45,-0.5)*CFrame.Angles(math.rad(90),math.rad(100),math.rad(0))*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0}},
			{"ls",{C0=CFrame.new(0,0,-0.2)*CFrame.Angles(math.rad(100),math.rad(30),math.rad(-65))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0}},
			{"rh",{C1=CFrame.new(0,0,-0.1)*CFrame.Angles(math.rad(15),math.rad(-15),math.rad(10))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0}},
			{"lh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(5),math.rad(5),math.rad(0))},{0,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0}}
		}
	},
	BladeSwing={
		Waits={
			[1]=.2,
			[2]=.1,
			[3]=.1
		},
		[1]={
			{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(-30),math.rad(-10))},{.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0}},
			{"rutj",{C1=CFrame.new(0.075,0,0.25)*CFrame.Angles(math.rad(0),math.rad(35),math.rad(0))},{.2,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
			{"rs",{C0=CFrame.new(-0.5,-0.4,-0.65)*CFrame.Angles(math.rad(170),math.rad(-20),math.rad(-80))},{.2,Enum.EasingStyle.Circular,Enum.EasingDirection.In,0,false,0}},
			{"ls",{C0=CFrame.new(0.1,-0.1,0.05)*CFrame.Angles(math.rad(-10),math.rad(10),math.rad(-10))},{.2,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
			{"rh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0))},{.2,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
			{"lh",{C1=CFrame.new(0,0.3,-0.5)*CFrame.Angles(math.rad(-20),math.rad(7.5),math.rad(-5))},{.2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0}}
		},
		[2]={
			{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(20),math.rad(0))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.In,0,false,0}},
			{"rutj",{C1=CFrame.new(0.05,0,-0.35)*CFrame.Angles(math.rad(-5),math.rad(-15),math.rad(0))},{.1,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0}},
			{"rs",{C0=CFrame.new(-0.1,-0.3,-0.65)*CFrame.Angles(math.rad(175),math.rad(70),math.rad(-85))},{.1,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0}},
			{"ls",{C0=CFrame.new(0.1,-0.1,0.05)*CFrame.Angles(math.rad(10),math.rad(10),math.rad(-15))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.In,0,false,0}},
			{"rh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(-20),math.rad(0))},{.1,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0}},
			{"lh",{C1=CFrame.new(0,0.3,-0.5)*CFrame.Angles(math.rad(5),math.rad(7.5),math.rad(-5))},{.1,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0}}
		},
		[3]={
			{"nec",{C1=CFrame.Angles(math.rad(0),math.rad(60),math.rad(0))},{.1,Enum.EasingStyle.Circular,Enum.EasingDirection.Out,0,false,0}},
			{"rutj",{C1=CFrame.new(0.25,-0.15,-0.95)*CFrame.Angles(math.rad(-15),math.rad(-55),math.rad(0))},{.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
			{"rs",{C0=CFrame.new(0.3,-0.3,-0.1)*CFrame.Angles(math.rad(175),math.rad(160),math.rad(-85))},{.1,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out,0,false,0}},
			{"ls",{C0=CFrame.new(0,-0.1,-0.05)*CFrame.Angles(math.rad(30),math.rad(10),math.rad(-45))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0}},
			{"rh",{C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(-10),math.rad(-5))},{.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
			{"lh",{C1=CFrame.new(-0.2,0.3,-0.2)*CFrame.Angles(math.rad(15),math.rad(50),math.rad(-15))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0}}
		}
	},
	Backflip={
		Waits={
			[1]=.125,
			[2]=.075,
			[3]=.075,
			[4]=.075,
			[5]=.075,
			[6]=.075,
			[7]=.075,
			[8]=.1,
		},
		[1]={
			{"nec",{C0=CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0))},{.125,Enum.EasingStyle.Circular,Enum.EasingDirection.InOut,0,false,0}},
			{"rutj",{C0=CFrame.new(0,-0.1,-0.25)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),C1=CFrame.Angles(0,math.rad(-10),0)},{.125,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0}},
			{"rs",{C0=CFrame.new(-0.25,-0.2,0.15)*CFrame.Angles(math.rad(-25),math.rad(10),math.rad(10))},{.125,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0}},
			{"ls",{C0=CFrame.new(0.15,-0.2,0.15)*CFrame.Angles(math.rad(-15),math.rad(-5),math.rad(-5))},{.125,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0}},
			{"rh",{C0=CFrame.new(0,0,-0.3)*CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(5))},{.125,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0}},
			{"lh",{C0=CFrame.new(0,0.1,-0.25)*CFrame.Angles(math.rad(15),math.rad(10),math.rad(-3))},{.125,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0}}
		},
		[2]={
			{"nec",{C0=CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))},{.075,Enum.EasingStyle.Circular,Enum.EasingDirection.In,0,false,0}},
			{"rutj",{C0=CFrame.new(0,0.5,-0.25)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(0)),C1=CFrame.Angles(0,math.rad(35),0)},{.075,Enum.EasingStyle.Exponential,Enum.EasingDirection.In,0,false,0}},
			{"rs",{C0=CFrame.new(-0.25,-0.1,0)*CFrame.Angles(math.rad(15),math.rad(10),math.rad(10))},{.075,Enum.EasingStyle.Quad,Enum.EasingDirection.In,0,false,0}},
			{"ls",{C0=CFrame.new(0.15,-0.1,-0.1)*CFrame.Angles(math.rad(25),math.rad(-5),math.rad(-5))},{.075,Enum.EasingStyle.Quad,Enum.EasingDirection.In,0,false,0}},
			{"rh",{C0=CFrame.new(0,0.35,-0.7)*CFrame.Angles(math.rad(-30),math.rad(-10),math.rad(5))},{.075,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0}},
			{"lh",{C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(-10),math.rad(15),math.rad(-3))},{.075,Enum.EasingStyle.Exponential,Enum.EasingDirection.In,0,false,0}}
		},
		[3]={
			{"nec",{C0=CFrame.Angles(math.rad(15),math.rad(0),math.rad(0))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"rutj",{C0=CFrame.new(0,1.5,0.35)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(0)),C1=CFrame.Angles(0,math.rad(90),0)},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"rs",{C0=CFrame.new(-0.1,-0.1,-0.35)*CFrame.Angles(math.rad(75),math.rad(10),math.rad(40))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"ls",{C0=CFrame.new(0.15,0,-0.6)*CFrame.Angles(math.rad(85),math.rad(-5),math.rad(-15))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"rh",{C0=CFrame.new(0,0.35,-0.7)*CFrame.Angles(math.rad(-25),math.rad(-10),math.rad(5))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"lh",{C0=CFrame.new(0,0.3,-0.5)*CFrame.Angles(math.rad(-30),math.rad(15),math.rad(-3))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}}
		},
		[4]={
			{"nec",{C0=CFrame.Angles(math.rad(35),math.rad(0),math.rad(0))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"rutj",{C0=CFrame.new(0,2.5,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)),C1=CFrame.Angles(0,math.rad(140),0)},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"rs",{C0=CFrame.new(-0.1,0.3,-0.15)*CFrame.Angles(math.rad(145),math.rad(10),math.rad(20))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"ls",{C0=CFrame.new(0.15,0.4,-0.4)*CFrame.Angles(math.rad(125),math.rad(-5),math.rad(-45))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"rh",{C0=CFrame.new(0,0.2,-0.5)*CFrame.Angles(math.rad(-5),math.rad(-10),math.rad(5))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"lh",{C0=CFrame.new(0,0.3,-0.75)*CFrame.Angles(math.rad(-45),math.rad(15),math.rad(-3))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}}
		},
		[5]={
			{"nec",{C0=CFrame.Angles(math.rad(35),math.rad(0),math.rad(0))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"rutj",{C0=CFrame.new(0,2.5,0)*CFrame.Angles(math.rad(-130),math.rad(0),math.rad(0)),C1=CFrame.Angles(0,math.rad(190),0)},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"rs",{C0=CFrame.new(-0.1,0.5,0)*CFrame.Angles(math.rad(185),math.rad(10),math.rad(20))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"ls",{C0=CFrame.new(0.15,0.5,-0.1)*CFrame.Angles(math.rad(155),math.rad(-5),math.rad(-25))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"rh",{C0=CFrame.new(0,0.2,-0.5)*CFrame.Angles(math.rad(-5),math.rad(-10),math.rad(5))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"lh",{C0=CFrame.new(0,0.3,-0.75)*CFrame.Angles(math.rad(-45),math.rad(10),math.rad(10))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}}
		},
		[6]={
			{"nec",{C0=CFrame.Angles(math.rad(15),math.rad(0),math.rad(0))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"rutj",{C0=CFrame.new(0,2,-0.25)*CFrame.Angles(math.rad(-70),math.rad(0),math.rad(0)),C1=CFrame.Angles(0,math.rad(230),0)},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"rs",{C0=CFrame.new(-0.1,0.5,-0.25)*CFrame.Angles(math.rad(135),math.rad(10),math.rad(20))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"ls",{C0=CFrame.new(0.15,0,-0.35)*CFrame.Angles(math.rad(105),math.rad(-5),math.rad(-25))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"rh",{C0=CFrame.new(0,0.2,-0.5)*CFrame.Angles(math.rad(-5),math.rad(-10),math.rad(5))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"lh",{C0=CFrame.new(0,0.3,-0.65)*CFrame.Angles(math.rad(-30),math.rad(15),math.rad(3))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}}
		},
		[7]={
			{"nec",{C0=CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"rutj",{C0=CFrame.new(0,1.25,-0.25)*CFrame.Angles(math.rad(-30),math.rad(0),math.rad(0)),C1=CFrame.Angles(0,math.rad(300),0)},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"rs",{C0=CFrame.new(-0.1,0,-0.25)*CFrame.Angles(math.rad(75),math.rad(10),math.rad(10))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"ls",{C0=CFrame.new(0.15,-0.05,-0.35)*CFrame.Angles(math.rad(55),math.rad(-5),math.rad(-15))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"rh",{C0=CFrame.new(0,0.1,-0.4)*CFrame.Angles(math.rad(-15),math.rad(-10),math.rad(5))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}},
			{"lh",{C0=CFrame.new(-0.15,0,-0.35)*CFrame.Angles(math.rad(10),math.rad(25),math.rad(-6))},{.075,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0}}
		},
		[8]={
			{"nec",{C0=CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0))},{.1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0}},
			{"rutj",{C0=CFrame.new(0,-0.2,-0.25)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),C1=CFrame.Angles(0,math.rad(10),0)},{.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
			{"rs",{C0=CFrame.new(-0.1,-0.15,-0.25)*CFrame.Angles(math.rad(15),math.rad(10),math.rad(10))},{.1,Enum.EasingStyle.Circular,Enum.EasingDirection.Out,0,false,0}},
			{"ls",{C0=CFrame.new(0.15,-0.2,0.05)*CFrame.Angles(math.rad(-5),math.rad(-5),math.rad(-15))},{.1,Enum.EasingStyle.Circular,Enum.EasingDirection.Out,0,false,0}},
			{"rh",{C0=CFrame.new(0,0.2,-0.4)*CFrame.Angles(math.rad(5),math.rad(-10),math.rad(5))},{.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}},
			{"lh",{C0=CFrame.new(-0.15,0.1,-0.65)*CFrame.Angles(math.rad(-10),math.rad(25),math.rad(-6))},{.1,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0}}
		}
	}
}
local DefWingCFs={
	cf(-1,.5,0)*angles(-140,-90,0,true)*angles(-30,0,0,true),
	cf(-.75,0,0)*angles(-100,-90,0,true)*angles(-20,10,0,true),
	cf(-1.4,-.5,0)*angles(-80,-90,0,true)*angles(-50,0,0,true),
	cf(1,.5,0)*angles(-140,-90,0,true)*angles(30,0,0,true),
	cf(.75,0,0)*angles(-100,-90,0,true)*angles(20,-10,0,true),
	cf(1.4,-.5,0)*angles(-80,-90,0,true)*angles(50,0,0,true),
}
local Modes={
	Q={
		Colours={
			Glow=BrickColor.new("Neon orange").Color,
			GlowSec=BrickColor.new("Royal purple").Color,
			Body=BrickColor.new("Really black").Color,
			BodySec=BrickColor.new("Institutional white").Color,
			Spikes=BrickColor.new("Royal purple").Color,
			SpikesSec=BrickColor.new("Neon orange").Color
		},
		Music={
			{Id=6829033172,Pitch=1,Volume=1.75}
		},
		Pose={
			CFrame.Angles(math.rad(-3),math.rad(-15),math.rad(0)),
			CFrame.new(0,0,0)*CFrame.Angles(math.rad(2),math.rad(15),math.rad(0)),
			CFrame.new(-0.1,-0.1,0.05)*CFrame.Angles(math.rad(-3),math.rad(-10),math.rad(6)),
			CFrame.new(0.3,-0.1,0.75)*CFrame.Angles(math.rad(-15),math.rad(-70),math.rad(10))*CFrame.Angles(math.rad(25),math.rad(0),math.rad(0)),
			CFrame.new(0,0,-0.2)*CFrame.Angles(math.rad(-7.5),math.rad(-20),math.rad(3)),
			CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(5),math.rad(-2.5)),
		},
		WingCFs=DefWingCFs,
		ParticleType="SpikesUp"
	},
	E={
		Colours={
			Glow=BrickColor.new("Toothpaste").Color,
			GlowSec=BrickColor.new("Baby blue").Color,
			Body=BrickColor.new("Institutional white").Color,
			BodySec=BrickColor.new("Light blue").Color,
			Spikes=BrickColor.new("Baby blue").Color,
			SpikesSec=BrickColor.new("Toothpaste").Color
		},
		Music={
			{Id=998142984,Pitch=1,Volume=.5},
			{Id=1670373906,Pitch=1,Volume=.4},
		},
		Pose={
			CFrame.Angles(math.rad(-7),math.rad(5),math.rad(0)),
			CFrame.new(0,0,0.1)*CFrame.Angles(math.rad(5),math.rad(-5),math.rad(0)),
			CFrame.new(-0.45,-0.4,-0.1)*CFrame.Angles(math.rad(100),math.rad(0),math.rad(-70)),
			CFrame.new(0.4,-0.5,-0.1)*CFrame.Angles(math.rad(110),math.rad(20),math.rad(80)),
			CFrame.new(0,0,-0.05)*CFrame.Angles(math.rad(-10),math.rad(-5),math.rad(2)),
			CFrame.new(0,0,0)*CFrame.Angles(math.rad(-3),math.rad(8),math.rad(-3)),
		},
		WingCFs={
			cf(-1,.5,0)*angles(-140,-90,0,true)*angles(-30,0,0,true),
			cf(-2,.3,.25)*angles(-105,-90,0,true)*angles(45,90,0,true),
			cf(-1.4,-.5,0)*angles(-80,-90,0,true)*angles(-50,0,0,true),
			cf(1,.5,0)*angles(-140,-90,0,true)*angles(30,0,0,true),
			cf(2,.15,.25)*angles(-95,-90,0,true)*angles(-45,-90,0,true),
			cf(1.4,-.5,0)*angles(-80,-90,0,true)*angles(50,0,0,true),
		},
		ParticleType="BackRing"
	},
	R={
		Colours={
			Glow=BrickColor.new("Maroon").Color,
			GlowSec=BrickColor.new("Really black").Color,
			Body=BrickColor.new("Really black").Color,
			BodySec=BrickColor.new("Maroon").Color,
			Spikes=BrickColor.new("Really black").Color,
			SpikesSec=BrickColor.new("Maroon").Color
		},
		Music={
			{Id=4755976868,Pitch=1,Volume=.5},
			{Id=6872513446,Pitch=.846,Volume=.5},
		},
		Pose={
			CFrame.Angles(math.rad(-15),math.rad(-20),math.rad(-10)),
			CFrame.new(0.35,1,0.125)*CFrame.Angles(math.rad(10),math.rad(20),math.rad(-10)),
			CFrame.new(-0.1,-0.35,-0.1)*CFrame.Angles(math.rad(20),math.rad(20),math.rad(25)),
			CFrame.new(0.1,0.3,-0.3)*CFrame.Angles(math.rad(170),math.rad(-30),math.rad(-10)),
			CFrame.new(0.1,0.8,-0.65)*CFrame.Angles(math.rad(-15),math.rad(-30),math.rad(5)),
			CFrame.new(0,0,0)*CFrame.Angles(math.rad(5),math.rad(10),math.rad(-5))
		},
		WingCFs={
			cf(-1,.5,0)*angles(-140,-90,0,true)*angles(-30,0,0,true),
			cf(-2,8,-1.5),
			cf(-1.4,-.5,0)*angles(-80,-90,0,true)*angles(-50,0,0,true),
			cf(1,.5,0)*angles(-140,-90,0,true)*angles(30,0,0,true),
			cf(1,6,-1.4)*angles(0,0,-80,true),
			cf(1.4,-.5,0)*angles(-80,-90,0,true)*angles(50,0,0,true),
		},
		Shaky=true,
		ParticleType="Hang"
	},
	T={
		Colours={
			Glow=rgb(154,229,154),
			GlowSec=rgb(201,153,255),
			Body=BrickColor.new("Institutional white").Color,
			BodySec=rgb(154,229,154),
			Spikes=rgb(201,153,255),
			SpikesSec=BrickColor.new("Institutional white").Color
		},
		Music={
			{Id=1409668861,Pitch=1,Volume=.5},
			{Id=6977533012,Pitch=1,Volume=.5},
		},
		Pose={
			CFrame.Angles(math.rad(-8),math.rad(15),math.rad(0)),
			CFrame.new(0.125,-0.05,0)*CFrame.Angles(math.rad(-5),math.rad(-15),math.rad(-5)),
			CFrame.new(-0.75,0,-0.2)*CFrame.Angles(math.rad(20),math.rad(15),math.rad(-20)),
			CFrame.new(0.75,0,-0.15)*CFrame.Angles(math.rad(30),math.rad(-10),math.rad(35)),
			CFrame.new(0.2,0.125,-0.35)*CFrame.Angles(math.rad(-10),math.rad(-35),math.rad(-10)),
			CFrame.new(0,0,0)*CFrame.Angles(math.rad(5),math.rad(5),math.rad(2)),
		},
		WingCFs={
			cf(-1,.5,0)*angles(-140,-90,0,true)*angles(-30,0,0,true),
			cf(-.75,0,-.5)*angles(-100,-90,0,true)*angles(-80,50,-10,true),
			cf(-1.4,-.5,0)*angles(-80,-90,0,true)*angles(-50,0,0,true),
			cf(1,.5,0)*angles(-140,-90,0,true)*angles(30,0,0,true),
			cf(.75,0,-.5)*angles(-100,-90,0,true)*angles(80,-50,10,true),
			cf(1.4,-.5,0)*angles(-80,-90,0,true)*angles(50,0,0,true),
		},
		ParticleType="PhaseIn"
	},
}
--
local ClimbTick=tick()
local Using,Climbing,Hitbox,TTM=false,false,false,false
local Dancing,Sitting,Crying=false,false,false
local Sine,Change=0,1
local Mus=t:FindFirstChild("VMus")
local LVal,TWCount=0,1
local Wings=CSFuncs:Fire("R","GetWings")
local Mode="Q"
local Combo=1
--
local necC0,necC1=cf(0,t.Size.Y/2,0),cf(0,-h.Size.Y/2,0)
local rutjC0,rutjC1=cf(0,0,0),cf(0,0,0)
local rsC0,rsC1=cf(t.Size.X/2,t.Size.Y/4,0),cf(-ra.Size.X/2,ra.Size.Y/4,0)
local lsC0,lsC1=cf(-t.Size.X/2,t.Size.Y/4,0),cf(la.Size.X/2,la.Size.Y/4,0)
local rhC0,rhC1=cf(t.Size.X/4,-t.Size.Y/2,0),cf(0,rl.Size.Y/2,0)
local lhC0,lhC1=cf(-t.Size.X/4,-t.Size.Y/2,0),cf(0,ll.Size.Y/2,0)
--
Instance.Remove({nec;rutj;rs;ls;rh;lh})
nec=ins("Motor6D",{Name="Neck";Part0=ft;Part1=fh;C0=necC0;C1=necC1;Parent=ft})
rutj=ins("Motor6D",{Name="RootJoint";Part0=hrp;Part1=ft;C0=rutjC0;C1=rutjC1;Parent=hrp})
rs=ins("Motor6D",{Name="Right Shoulder";Part0=ft;Part1=fra;C0=rsC0;C1=rsC1;Parent=ft})
ls=ins("Motor6D",{Name="Left Shoulder";Part0=ft;Part1=fla;C0=lsC0;C1=lsC1;Parent=ft})
rh=ins("Motor6D",{Name="Right Hip";Part0=ft;Part1=frl;C0=rhC0;C1=rhC1;Parent=ft})
lh=ins("Motor6D",{Name="Left Hip";Part0=ft;Part1=fll;C0=lhC0;C1=lhC1;Parent=ft})
--
function Lerp(a,b,t)
	return a+(b-a)*t
end
function Reflect(V,N)
	return -2*V:Dot(N)*N+V
end
function TwoVecToAng(v1,v2,rad)
	return math.acos(v1.CFrame.LookVector:Dot((v2-v1.Position).Unit))*(rad and 1 or 180/math.pi)
end
function Bezier(a,b,c,t)
	return a:Lerp(c,t):Lerp(c:Lerp(b,t),t)
end
--
function PlayAnimSingle(...)
	local Joints_={nec=nec,rutj=rutj,rs=rs,ls=ls,rh=rh,lh=lh}
	local CFs_={necC0=necC0,necC1=necC1,rutjC0=rutjC0,rutjC1=rutjC1,rsC0=rsC0,rsC1=rsC1,lsC0=lsC0,lsC1=lsC1,rhC0=rhC0,rhC1=rhC1,lhC0=lhC0,lhC1=lhC1}
	for i,v in pairs({...}) do
		if Joints_[v[1]] then
			local T={}
			table.foreach(v[2],function(i,v) T[i]=v end)
			local C0=((CFs_[v[1].."C0"] or cf(0,0,0))*(T.C0 or cf(0,0,0))) or CFs_[v[1].."C0"]
			local C1=((CFs_[v[1].."C1"] or cf(0,0,0))*((T.C1 or cf(0,0,0))):Inverse())
			for i,v in pairs(T) do if i=="C0" then T.C0=C0 elseif i=="C1" then T.C1=C1 end end
			Tween(Joints_[v[1]],T,v[3])
		end
	end
end
function PlayAnim(Table,AddFuncs)
	AddFuncs=AddFuncs or {}
	local Waits=Table.Waits
	for i=1,#Table do
		local v=Table[i]
		if Waits[i] then
			local WaitTime=Waits[i]
			PlayAnimSingle(unpack(v))
			if WaitTime>0 then wait(WaitTime) end
			if AddFuncs[i] then AddFuncs[i]() end
		end
	end
end
local function SolveRot(CF,Pos,Full,a,b,Inv,Det)
	if Full then
		local L=CF:PointToObjectSpace(Pos)
		local Lu=L.Unit
		local c=L.Magnitude
		local Ax=v3(0,0,-1):Cross(Lu)
		local Ang=math.acos(-Lu.Z)
		local Pl=CFrame.fromAxisAngle(Ax,Ang)
		if c<math.max(a,b)-math.min(a,b) then
			return Pl*cf(0,0,math.max(a,b)-math.min(a,b)-c)*angles(math.pi/2,0,0)
		elseif c>a+b then
			return Pl*cf(0,0,a+b-c)*angles(math.pi/2,0,0)
		else
			local t1=-math.acos((-b^2+a^2+c^2)/(2*a*c))
			local t2=math.acos((b^2-a^2+c^2)/(2*b*c))
			if Inv then t1=-t1 t2=-t2 end
			if Det then
				return Pl,t1+math.pi/2,t2-t1
			else
				return Pl*angles(t1+math.pi/2,0,0)*cf(0,-a,0)*angles(t2-t1,0,0)*cf(0,a,0)
			end
		end
	else
		local L=CF:PointToObjectSpace(Pos)
		local Lu=L.Unit
		local Ax=v3(0,0,-1):Cross(Lu)
		local Ang=math.acos(-Lu.Z)
		local P=CFrame.fromAxisAngle(Ax,Ang)*angles(math.pi/2,0,0)
		return P
	end
end
function GetCC(Pos,Range,Ignore,Turn)
	Pos=Pos or hrp.Position
	Range=Range or 5
	Ignore=Ignore or {char}
	local Chars,CharsDist={},{}
	for i,v in pairs(workspace:FindPartsInRegion3WithIgnoreList(Region3.new(Pos-Vector3.new(1,1,1)*Range,Pos+Vector3.new(1,1,1)*Range),Ignore,100)) do
		if v.Parent:FindFirstChildOfClass("Humanoid") then
			local HUM=v.Parent:FindFirstChildOfClass("Humanoid")
			local T=HUM.Parent:FindFirstChild("Torso") or HUM.Parent:FindFirstChild("UpperTorso")
			local Hit=Raycast(Pos,T.Position-Pos,{char},(Pos-T.Position).Magnitude+.1,true)
			local Ex=false
			for i,q in pairs(Chars) do
				if v:IsDescendantOf(q[1].Parent) then Ex=true break end
			end
			if T and (Hit and Hit:IsDescendantOf(HUM.Parent)) and HUM.Health>0 and not Ex then
				table.insert(Chars,{T,HUM})
				table.insert(CharsDist,(Pos-T.Position).Magnitude)
			end
		end
	end
	if #Chars==0 then return end
	local Closest=math.min(unpack(CharsDist))
	for i=1,#Chars do
		if (Pos-Chars[i][1].Position).Magnitude==Closest then
			if Turn then hrp.CFrame=CFrame.new(Pos,Vector3.new(Chars[i][1].Position.X,Pos.Y,Chars[i][1].Position.Z)) end
			return Chars[i][1].Parent,Chars[i][1],Chars[i][2]
		end
	end
end
function Sound(Id,Volume,Pitch,Parent,MaxDistance,EmitterSize,Looped)
	local S=ins("Sound",{Volume=Volume or 1;Pitch=Pitch or 1;MaxDistance=MaxDistance or 500;EmitterSize=EmitterSize or 5;Looped=Looped or false;SoundId="rbxassetid://"..Id,Parent=Parent})
	S:Play()
	coroutine.wrap(function()
		if S.Looped then return end
		if S.IsLoaded then
			Instance.Remove(S,S.TimeLength/S.Pitch)
		else
			S.Loaded:Connect(function()
				Instance.Remove(S,S.TimeLength/S.Pitch)
			end)
		end
	end)()
	return S
end
--
local Combos={
	function()
		Using=true
		TTM=true
		local OldWS=hum.WalkSpeed
		hum.WalkSpeed = hum.WalkSpeed + 8
		PlayAnim(Anims.Punch1,{
			[4]=function()
				CSFuncs:Fire("S","Damage",ra.CFrame*cf(0,-ra.Size.Y/2,0).Position,v3(1,1,1)*1.5,10,3,20,10,{char},false,0,{2974875234,.5,random(.9,1.1),100,5})
			end,
		})
		hum.WalkSpeed=OldWS
		TTM=false
		Using=false
	end,
	function()
		Using=true
		TTM=true
		local OldWS=hum.WalkSpeed
		hum.WalkSpeed = hum.WalkSpeed + 8
		PlayAnim(Anims.Punch2,{
			[4]=function()
				CSFuncs:Fire("S","Damage",la.CFrame*cf(0,-la.Size.Y/2,0).Position,v3(1,1,1)*2,10,3,20,10,{char},false,0,{2974875234,.5,random(.9,1.1),100,5})
			end,
		})
		hum.WalkSpeed=OldWS
		TTM=false
		Using=false
	end,
	function()
		Using=true
		TTM=true
		local OldWS=hum.WalkSpeed
		hum.WalkSpeed = hum.WalkSpeed - 10
		CSFuncs:Fire("S","C3Swirls")
		PlayAnim(Anims.BeamCast,{
			[5]=function()
				CSFuncs:Fire("S","Combo3",hrp.CFrame)
			end,
		})
		hum.WalkSpeed=OldWS
		TTM=false
		Using=false
	end,
	function()
		Using=true
		TTM=true
		local OldWS=hum.WalkSpeed
		hum.WalkSpeed = hum.WalkSpeed + 15
		CSFuncs:Fire("S","ShowBlade")
		PlayAnim(Anims.BladeStab,{
			[4]=function()
				for i=0,2 do
					CSFuncs:Fire("S","Damage",ra.CFrame*cf(0,-ra.Size.Y/2-i,0).Position,v3(1,1,1),15,5,20,10,{char})
				end
			end,
		})
		CSFuncs:Fire("S","HideBlade")
		hum.WalkSpeed=OldWS
		TTM=false
		Using=false
	end,
	function()
		Using=true
		TTM=true
		local OldWS=hum.WalkSpeed
		hum.WalkSpeed = hum.WalkSpeed + 15
		CSFuncs:Fire("S","ShowBlade")
		PlayAnim(Anims.BladeSwing,{
			[2]=function()
				CSFuncs:Fire("S","Damage",t.CFrame*cf(.5,.75,-2).Position,v3(3,1,3),15,5,20,10,{char})
			end
		})
		CSFuncs:Fire("S","HideBlade")
		hum.WalkSpeed=OldWS
		TTM=false
		Using=false
	end,
	function()
		Using=true
		local OldWS=hum.WalkSpeed
		hum.WalkSpeed = hum.WalkSpeed - 10
		CSFuncs:Fire("S","PrepFlip")
		PlayAnim(Anims.Backflip)
		CSFuncs:Fire("S","FlipImp",hrp.CFrame)
		hum.WalkSpeed=OldWS
		Using=false
	end,
}
local Moves={
	Equals={Func=function()
		Hitbox=not Hitbox
	end,Deb=0,Tick=tick()},
	Underscore={Func=function()
		char:MoveTo(t.Position)
	end,Deb=0,Tick=tick()},
	V={Func=function()
		Dancing=not Dancing
	end,Deb=0,Tick=tick()},
	Z={Func=function()
		Sitting=not Sitting
		Crying=false
		Dancing=false
	end,Deb=0,Tick=tick()},
	X={Func=function()
		Sitting=false
		Crying=not Crying
		Dancing=false
	end,Deb=0,Tick=tick()},
}
function PerformCombo()
	Combos[Combo]()
	Combo = Combo + 1
	if Combo>#Combos then Combo=1 end
end
--
UIS.InputBegan:Connect(function(IO,L)
	if L then return end
	if IO.UserInputType==Enum.UserInputType.Keyboard then
		if Moves[IO.KeyCode.Name] then 
			local T=Moves[IO.KeyCode.Name]
			if tick()-T.Tick>T.Deb or T.Deb==0 then
				local Res=T.Func()
				T.Tick=not Res and T.Tick or tick()
			end
		end
	elseif IO.UserInputType==Enum.UserInputType.MouseButton1 and not Using then
		if (Sitting or Crying) then return end
		PerformCombo()
	end
end)
UIS.InputEnded:Connect(function(IO,L)
	if L then return end
	if IO.UserInputType==Enum.UserInputType.Keyboard then
	elseif IO.UserInputType==Enum.UserInputType.MouseButton1 then
	end
end)
--
CSFuncs.new("Event","UpdMode",function(nMode)
	if not Modes[nMode] then return end
	Mode=nMode
end)
CSFuncs.new("Event","AttachDD",function(DD,Pos,Reversed)
	local Dist=(Pos-hrp.Position).Magnitude
	local BPos=ins("BodyPosition",{D=500,P=25000,MaxForce=v3(huge,huge,huge),Position=cf(hrp.Position,Pos)*cf(0,0,-(Reversed and 1 or 4)-Dist/30).Position,Parent=DD})
	local BGyr=ins("BodyGyro",{D=500,P=25000,MaxTorque=v3(huge,huge,huge),CFrame=cf(hrp.Position,Pos)*angles(0,Reversed and pi or 0,0),Parent=DD})
	repeat
		BPos.Position=cf(hrp.Position,Pos)*cf(0,0,-(Reversed and 1 or 4)-Dist/30).Position
		BGyr.CFrame=cf(hrp.Position,Pos)*angles(0,Reversed and pi or 0,0)
		game:GetService("RunService").Heartbeat:Wait()
	until not DD.Parent
end)
--
UIS.InputBegan:Connect(function(IO,L) Rem:FireServer({UserInputState=IO.UserInputState,KeyCode=IO.KeyCode,UserInputType=IO.UserInputType},L) end)
UIS.InputEnded:Connect(function(IO,L) Rem:FireServer({UserInputState=IO.UserInputState,KeyCode=IO.KeyCode,UserInputType=IO.UserInputType},L) end)
game:GetService("RunService").Heartbeat:Connect(function(Step)
	if Climbing and tick()-ClimbTick>.15 then Climbing=false end
	if hum.FloorMaterial==Enum.Material.Air and not Climbing then
		local Hits,LastHit,LastPos,HitParts=0,nil,0,{}
		local Div=20
		local HIt,POs=Raycast(hrp.CFrame*cf(0,1,0).Position,v3(0,1,0),{char},5,true)
		for i=0,3,1/Div do
			local Dir=hum.MoveDirection.Magnitude>0 and hum.MoveDirection or (hrp.Velocity*v3(1,0,1))/10
			local Hit,Pos,NID=Raycast((Dir.Magnitude>.5 and (cf(hrp.Position,hrp.Position+Dir)) or hrp.CFrame)*cf(0,5,-i-.5).Position,v3(0,-1,0),{char},5,true)
			local HIT,POS=Raycast(POs,Pos-POs,{char},10,true)
			Hits = Hits + ((Hit and POS==Pos) and Hit.CanCollide) and 1 or 0
			if (Hit and POS==Pos) and Hit.CanCollide then LastHit=Pos LastPos=i*10 table.insert(HitParts,Hit) end
		end
		if Hits>=Div then
			Climbing=true ClimbTick=tick()
			Instance.Remove(ins("BodyVelocity",{MaxForce=v3(1/0,1/0,1/0),Velocity=(LastHit*v3(1,0,1)-hrp.Position*v3(1,0,1)).Unit*(LastPos/1.75)+v3(0,30,0),Parent=hrp}),.1)
			coroutine.wrap(function()
				for i,v in pairs(HitParts) do
					v.CanCollide=false
				end
				wait(.15)
				for i,v in pairs(HitParts) do
					v.CanCollide=true
				end
			end)()
		elseif Hits>=4 and LastPos<25 then
			local Hits=0
			for i=0,5,.1 do
				local Hit,Pos,NID=Raycast((hrp.Position*v3(1,0,1))+v3(0,LastHit.Y,0)-v3(0,.5+i,0),(LastHit*v3(1,0,1)-hrp.Position*v3(1,0,1)).Unit,{char},10,true) --TODO:finish_swings
				Hits = Hits + Hit and 1 or 0
			end
			if Hits<5 then
				coroutine.wrap(function()
					for i,v in pairs(HitParts) do
						v.CanCollide=false
					end
					wait(.15)
					for i,v in pairs(HitParts) do
						v.CanCollide=true
					end
				end)()
				coroutine.wrap(function()
					for i=0,360,30 do
						rutj.C1=rutjC1*angles(-i,0,0,true)
						game:GetService("RunService").Heartbeat:Wait()
					end
				end)()
				Instance.Remove(ins("BodyVelocity",{MaxForce=v3(1/0,1/0,1/0),Velocity=(LastHit*v3(1,0,1)-hrp.Position*v3(1,0,1)).Unit*60+v3(0,40,0),Parent=hrp}),.1)
			else
				coroutine.wrap(function()
					for i,v in pairs(HitParts) do
						v.CanCollide=false
					end
					wait(.15)
					for i,v in pairs(HitParts) do
						v.CanCollide=true
					end
				end)()
				Tween(rutj,{C1=cf(0,-.5,0)*angles(30,-20,-50,true)},{.15,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,0})
				Instance.Remove(ins("BodyVelocity",{MaxForce=v3(1/0,1/0,1/0),Velocity=(LastHit*v3(1,0,1)-hrp.Position*v3(1,0,1)).Unit*30+v3(0,40,0),Parent=hrp}),.1)
			end
		end
	end
	if TTM then hrp.CFrame=cf(hrp.Position,v3(Mouse.Hit.X,hrp.Position.Y,Mouse.Hit.Z)) end
	Mus=t:FindFirstChild("VMus")
	hum.CameraOffset=hum.CameraOffset:Lerp((hrp.CFrame*cf(0,1.5,0)):PointToObjectSpace(h.Position),.15*(Step*60))
	Sine=Sine+Change
	local Direction=hum.MoveDirection
	if Direction.Magnitude==0 then Direction=hrp.Velocity/7.5 end
	local MoveZ=clamp((Direction*ft.CFrame.LookVector).X+(Direction*ft.CFrame.LookVector).Z,-1,1)
	local MoveX=clamp((Direction*ft.CFrame.RightVector).X+(Direction*ft.CFrame.RightVector).Z,-1,1)
	local Moving=(hrp.Velocity*v3(1,0,1)).Magnitude>1
	local VerY=hrp.Velocity.Y
	local StandR,RPos,RNID=Raycast(hrp.CFrame*cf(t.Size.X/4,-t.Size.Y/2,0).Position,-hrp.CFrame.UpVector,{char},4,false)
	local StandL,LPos,LNID=Raycast(hrp.CFrame*cf(-t.Size.X/4,-t.Size.Y/2,0).Position,-hrp.CFrame.UpVector,{char},4,false)
	local Stand=StandR or StandL
	if not Moving and Stand then
		local IdleVal=20
		Change=1*(Step*60)
		if not Dancing then
			local _,RotY,_=Modes[Mode].Pose[2]:ToEulerAnglesXYZ()
			if Modes[Mode].Shaky then
				local Offs=v3(((sin(Sine/(IdleVal/20))*cotan(Sine/(IdleVal/25)))+cos(Sine/IdleVal))*.1,sin(Sine/(IdleVal/17))*cotan(Sine/(IdleVal*3))*.5,cos(Sine/IdleVal)*cotan(Sine/(IdleVal/15))*.25)
				nec.C0=nec.C0:Lerp(necC0*angles(Offs.Z*-25+Offs.Y*-25,0,Offs.X*-25,true)*cf(0,0,0)*angles(-cos(Sine/IdleVal)*10,-sin(Sine/(IdleVal*2.5))*15,-sin(Sine/(IdleVal*2.5))*10,true)*Modes[Mode].Pose[1],.1*(Step*60))
				rutj.C0=rutj.C0:Lerp(rutjC0*cf(Offs.X,Offs.Y,Offs.Z)*angles(Offs.Z*-15+Offs.Y*-15,0,Offs.X*-15,true)*cf(cos(Sine/(IdleVal*2.5))*.25,-.2+cos(Sine/IdleVal)*sin(Sine/(IdleVal*1.76))*.2,cotan(Sine/IdleVal)*.25)*angles(sin(Sine/IdleVal)*3,sin(Sine/(IdleVal*2.5))*5,cos(Sine/(IdleVal*2.5))*-4,true)*Modes[Mode].Pose[2],.1*(Step*60))
				rs.C0=rs.C0:Lerp(rsC0*cf(-Offs.X,-Offs.Y,-Offs.Z)*angles(-Offs.Z*-15-Offs.Y*-15,0,-Offs.X*-15,true)*cf(0,-cos(Sine/IdleVal)*sin(Sine/(IdleVal*1.76))*.1,0)*angles(cos(Sine/IdleVal)*10,-cos(Sine/IdleVal)*sin(Sine/(IdleVal*2.5))*5,sin(Sine/(IdleVal*2.5))*5,true)*Modes[Mode].Pose[3],.1*(Step*60))
				ls.C0=ls.C0:Lerp(lsC0*cf(Offs.X,Offs.Y,Offs.Z)*angles(-Offs.Z*-15-Offs.Y*-15,0,-Offs.X*-15,true)*cf(0,-cos(Sine/IdleVal)*sin(Sine/(IdleVal*1.76))*.1,0)*angles(-cos(Sine/IdleVal)*10,-cos(Sine/IdleVal)*sin(Sine/(IdleVal*2.5))*5,-sin(Sine/(IdleVal*2.5))*5,true)*Modes[Mode].Pose[4],.1*(Step*60))
				rh.C0=rh.C0:Lerp(rhC0*angles(-Offs.Z*-15-Offs.Y*-15,0,-Offs.X*-15,true)*cf(-Offs.X,-Offs.Y,-Offs.Z)*angles(-Offs.Z*-15-Offs.Y*-15,0,-Offs.X*-15,true)*cf(0,.2+cos(Sine/IdleVal)*sin(Sine/(IdleVal*1.76))*-.2,0)*angles(sin(Sine/(IdleVal*2.5))*-2,0,cos(Sine/(IdleVal*2.5))*2,true)*Modes[Mode].Pose[5],.1*(Step*60))
				lh.C0=lh.C0:Lerp(lhC0*angles(-Offs.Z*-15-Offs.Y*-15,0,-Offs.X*-15,true)*cf(-Offs.X,-Offs.Y,-Offs.Z)*angles(-Offs.Z*-15-Offs.Y*-15,0,-Offs.X*-15,true)*cf(0,.2+cos(Sine/IdleVal)*sin(Sine/(IdleVal*1.76))*-.2,0)*angles(sin(Sine/(IdleVal*2.5))*2,0,cos(Sine/(IdleVal*2.5))*2,true)*Modes[Mode].Pose[6],.1*(Step*60))
			else
				nec.C0=nec.C0:Lerp(necC0*cf(0,0,0)*angles(cos(Sine/IdleVal)*-3,cotan(Sine/(IdleVal*4))*5,cos(Sine/(IdleVal*3))*-3,true)*(Sitting and angles(-15,15,5,true) or Crying and angles(-50,0,0,true) or Modes[Mode].Pose[1]),.1*(Step*60))
				rutj.C0=rutj.C0:Lerp(rutjC0*cf(0,sin(Sine/IdleVal)*.05,cos(Sine/(IdleVal*1.5))*.05)*angles(sin(Sine/IdleVal)*2+cos(Sine/(IdleVal*1.5)),cos(Sine/(IdleVal*1.5))*3,cotan(Sine/(IdleVal*3))*5,true)*(Sitting and cf(0,-1.65,0)*angles(20,-25,0,true) or Crying and cf(0,-1.9,1)*angles(-15,0,0,true) or Modes[Mode].Pose[2]),.1*(Step*60))
				rs.C0=rs.C0:Lerp(rsC0*cf(0,-.05+cos(Sine/IdleVal)*-.05-.05+cotan(Sine/(IdleVal*3))*.05,0)*cf(0,.25,0)*angles(cos(Sine/IdleVal)*-2+sin(Sine/(IdleVal*1.5))*1+cotan(Sine/(IdleVal*1.5))*-3+sin(Sine/(IdleVal*1.5))*-2,sin(Sine/(IdleVal*1.5))*-3,sin(Sine/(IdleVal*3))*-3+1+cos(Sine/IdleVal)*-1,true)*cf(0,-.25,0)*((Sitting or Crying) and cf(-0.1,-0.1,0.05) or cf())*(Sitting and cf(0,-0.35,0.1)*angles(-30,0,10,true)*angles(0,-50,0,true) or Crying and cf(-0.25,-0.4,-0.5)*angles(100,0,-80,true)*angles(0,70,0,true) or Modes[Mode].Pose[3]),.1*(Step*60))
				ls.C0=ls.C0:Lerp(lsC0*cf(0,-.05+cos(Sine/IdleVal)*-.05-.05+cotan(Sine/(IdleVal*3))*-.05,0)*cf(0,.25,0)*angles(cos(Sine/IdleVal)*-2+sin(Sine/(IdleVal*1.5))*1+cotan(Sine/(IdleVal*1.5))*3+sin(Sine/(IdleVal*1.5))*2,sin(Sine/(IdleVal*1.5))*-3,sin(Sine/(IdleVal*3))*-3-1+cos(Sine/IdleVal)*1,true)*cf(0,-.25,0)*((Sitting or Crying) and cf(0.1,-0.1,0.05) or cf())*(Sitting and cf(0.3,-0.25,-0.1)*angles(70,0,60,true) or Crying and cf(0.25,-0.4,-0.5)*angles(100,0,70,true)*angles(0,-70,0,true) or Modes[Mode].Pose[4]),.1*(Step*60))
				rh.C0=rh.C0:Lerp(rhC0*angles(0,-RotY,0)*cf(0,-sin(Sine/IdleVal)*.05+clamp(cotan(Sine/(IdleVal*3))*-.05,0,.05),-.025+cos(Sine/(IdleVal*1.5))*-.025)*angles(sin(Sine/IdleVal)*-3+cos(Sine/(IdleVal*1.5))*-1.5+cos(Sine/(IdleVal*1.5))*-1-.5+cos(Sine/(IdleVal*1.5))*.5,0,cotan(Sine/(IdleVal*3))*-7.5,true)*cf(0,0,-0.05)*angles(0,RotY,0)*(Sitting and angles(70,15,-10,true) or Crying and cf(0,1.25,-0.45)*angles(50,5,-5,true) or Modes[Mode].Pose[5]),.1*(Step*60))
				lh.C0=lh.C0:Lerp(lhC0*angles(0,-RotY,0)*cf(0,-sin(Sine/IdleVal)*.05+clamp(cotan(Sine/(IdleVal*3))*.05,0,.05),-.025+cos(Sine/(IdleVal*1.5))*-.025)*angles(sin(Sine/IdleVal)*-3+cos(Sine/(IdleVal*1.5))*-1.5+cos(Sine/(IdleVal*1.5))*1-.5+cos(Sine/(IdleVal*1.5))*.5,0,cotan(Sine/(IdleVal*3))*-7.5,true)*angles(0,RotY,0)*(Sitting and cf(0,0.9,-0.65)*angles(20,5,0,true) or Crying and cf(0,1.1,-0.5)*angles(60,-10,7,true) or Modes[Mode].Pose[6]),.1*(Step*60))	
			end
			for i,v in pairs(Wings) do
				local CF=t.CFrame*cf(0,.35,1)*angles(-3.5,-t.RotVelocity.Y*5,t.RotVelocity.Y*5,true)*cf(0,0,0)*angles(cos((Sine/(IdleVal*1.5))+abs(WNums[i]))*15+10,abs(cotan(Sine/(IdleVal*1.5))*(4-abs(WNums[i]))*3)*math.sign(WNums[i]),sin(Sine/(IdleVal*.75))*i*1,true)*Modes[Mode].WingCFs[i]*cf(0,-v.Body.Size.Y/2,0)
				v.Body.BP.Position=CF.Position
				v.Body.BG.CFrame=CF
			end
		else
			IdleVal=15
			nec.C0=nec.C0:Lerp(necC0*angles(-5+sin(Sine/(IdleVal/4))*5,(-cos(Sine/(IdleVal))*sin(Sine/(IdleVal/4)))*30,0,true),.1*(Step*60))
			rutj.C0=rutj.C0:Lerp(rutjC0*cf(0,-1,0)*cf(0,-.25-(cotan(Sine/IdleVal)*cos(Sine/(IdleVal/3)))*.5,0)*angles(5-cos(Sine/(IdleVal/2))*5,(cos(Sine/(IdleVal/2))*sin(Sine/IdleVal))*30,0,true)*cf(0,1,0),.1*(Step*60))
			rs.C0=rs.C0:Lerp(rsC0*cf(-.2-(cos(Sine/(IdleVal/2))*sin(Sine/(IdleVal*2)))*.5,-.25-sin(Sine/(IdleVal/4))*.4,-.4-sin(Sine/(IdleVal/4))*.25+(cos(Sine/(IdleVal/2))*sin(Sine/IdleVal))*.2)*angles((-cos(Sine/(IdleVal/2))*cos(Sine/IdleVal))*60+(cos(Sine/(IdleVal/2))*sin(Sine/(IdleVal*2)))*45,cotan(Sine/(IdleVal))*cos(Sine/(IdleVal/2))*120+(cos(Sine/(IdleVal/2))*sin(Sine/(IdleVal*2)))*30,-cos(Sine/(IdleVal/4))*20,true)*angles(90,0,0,true),.1*(Step*60))
			ls.C0=ls.C0:Lerp(lsC0*cf(.2+(cos(Sine/(IdleVal/2))*sin(Sine/(IdleVal*2)))*.5,-.25-sin(Sine/(IdleVal/4))*.4,-.4-sin(Sine/(IdleVal/4))*.25+(cos(Sine/(IdleVal/2))*sin(Sine/IdleVal))*.2)*angles((-cos(Sine/(IdleVal/2))*cos(Sine/IdleVal))*60+(cos(Sine/(IdleVal/2))*sin(Sine/(IdleVal*2)))*45,cotan(Sine/(IdleVal))*cos(Sine/(IdleVal/2))*120-(cos(Sine/(IdleVal/2))*sin(Sine/(IdleVal*2)))*30,cos(Sine/(IdleVal/4))*20,true)*angles(90,0,0,true),.1*(Step*60))
			rh.C0=rh.C0:Lerp(rhC0*cf(0,.15-(cotan(Sine/IdleVal)*cos(Sine/(IdleVal/3)))*-.5+clamp(sin(Sine/(IdleVal))*cos(Sine/(IdleVal/2)),.1,1)*.5,-.25+(cotan(Sine/IdleVal)*cos(Sine/(IdleVal/3)))*.25-clamp(sin(Sine/(IdleVal))*cos(Sine/(IdleVal/2)),0,1)*.35)*angles(-2.5+(cos(Sine/(IdleVal/2))*sin(Sine/IdleVal))*-5+(-5+(cotan(Sine/IdleVal)*cos(Sine/(IdleVal/3)))*2.5)-clamp(sin(Sine/(IdleVal))*cos(Sine/(IdleVal/2)),0,1)*25,(cos(Sine/(IdleVal/2))*sin(Sine/IdleVal))*-30,0,true)*angles(0,-5,5,true),.1*(Step*60))
			lh.C0=lh.C0:Lerp(lhC0*cf(0,.15-(cotan(Sine/IdleVal)*cos(Sine/(IdleVal/3)))*-.5-clamp(sin(Sine/(IdleVal))*cos(Sine/(IdleVal/2)),-1,.1)*.5,-.25-(cotan(Sine/IdleVal)*cos(Sine/(IdleVal/3)))*.25+clamp(sin(Sine/(IdleVal))*cos(Sine/(IdleVal/2)),-1,0)*.35)*angles(-2.5+(cos(Sine/(IdleVal/2))*sin(Sine/IdleVal))*5+(-5-(cotan(Sine/IdleVal)*cos(Sine/(IdleVal/3)))*2.5)+clamp(sin(Sine/(IdleVal))*cos(Sine/(IdleVal/2)),-1,0)*25,(cos(Sine/(IdleVal/2))*sin(Sine/IdleVal))*-30,0,true)*angles(0,5,-5,true),.1*(Step*60))
			for i,v in pairs(Wings) do
				local CF=t.CFrame*cf(0,.35,1)*angles(-3.5,-t.RotVelocity.Y*5,t.RotVelocity.Y*5,true)*cf(0,0,0)*angles(cos((Sine/(IdleVal*1.5))+abs(WNums[i]))*15+10,abs(cotan(Sine/(IdleVal*1.5))*(4-abs(WNums[i]))*3)*math.sign(WNums[i]),sin(Sine/(IdleVal*.75))*i*1,true)*Modes[Mode].WingCFs[i]*cf(0,-v.Body.Size.Y/2,0)
				v.Body.BP.Position=CF.Position
				v.Body.BG.CFrame=CF
			end
		end
	elseif Moving and Stand then
		local WSVal=6/clamp(hum.WalkSpeed/16,.25,2)*t.Size.Y/2
		if Modes[Mode].Pose[2].Y>.5 then
			WSVal=25/clamp(hum.WalkSpeed/16,.25,2)*t.Size.Y/2
			local WSMul=(1+(WSVal/4))
			local A=(.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)*(60*Step)
			local VelAng=cf(0,-3,0)*angles(VerY*2.5*MoveZ,0,VerY*2.5*MoveX,true)*cf(0,3,0)
			Change=1*(Step*60)
			nec.C0=nec.C0:Lerp(necC0*cf(0,0,0)*angles(sin(Sine/WSVal)*7.5,-(sin(Sine/WSVal)*15*cos(Sine/(WSVal/2))+cos(Sine/WSVal)*5),0,true)*cf(0,0,0)*angles(5*MoveZ,-60*MoveX,0,true),A)
			rutj.C0=rutj.C0:Lerp(rutjC0*cf(0,1,0)*VelAng*cf(0,cos(Sine/(WSVal/2))*.35+sin(Sine/(WSVal/2))*.15+cos(Sine/WSVal)*cotan(Sine/(WSVal*4))*.5,cotan(Sine/(WSVal))*.5)*angles((cotan(Sine/WSVal)*10+cos(Sine/(WSVal/2))*5)*MoveZ,sin(Sine/WSVal)*15*cos(Sine/(WSVal/2))+cos(Sine/WSVal)*5,(cotan(Sine/WSVal)*10+cos(Sine/(WSVal/2))*5)*MoveZ,true)*angles(-(50/WSMul)*MoveZ,0,-(50/WSMul)*MoveX,true),A)
			rs.C0=rs.C0:Lerp(rsC0*cf(0,-.1+sin(Sine/(WSVal/2))*.15+cos(Sine/(WSVal/2))*.05,.1)*angles(-cos(Sine/WSVal)*15+sin(Sine/WSVal)*5,0,sin(Sine/WSVal)*15*-cos(Sine/(WSVal/2))+cos(Sine/WSVal)*5,true)*angles((60/WSMul),-5,7.5,true),A)
			ls.C0=ls.C0:Lerp(lsC0*cf(0,-.1+sin(Sine/(WSVal/2))*.15+cos(Sine/(WSVal/2))*.05,.1)*angles(-cos(Sine/WSVal)*15-sin(Sine/WSVal)*5,0,sin(Sine/WSVal)*-15*-cos(Sine/(WSVal/2))+cos(Sine/WSVal)*-5,true)*angles((60/WSMul),5,-7.5,true),A)
			rh.C0=rh.C0:Lerp(rhC0*cf(0,.15-sin(Sine/(WSVal/2))*.15,0)*angles(cos(Sine/(WSVal/2))*10+cos(Sine/(WSVal*2))*15*sin(Sine/WSVal),0,2.5-sin(Sine/WSVal)*2.5,true)*cf(0,.25+cos(Sine/WSVal)*sin(Sine/(WSVal*3))*.25,-.25-cos(Sine/WSVal)*sin(Sine/(WSVal*3))*.25)*angles(-15-cos(Sine/WSVal)*sin(Sine/(WSVal*3))*15,0,0,true),A)
			lh.C0=lh.C0:Lerp(lhC0*cf(0,.15-sin(Sine/(WSVal/2))*.15,0)*angles(cos(Sine/(WSVal/2))*10-cos(Sine/(WSVal*2))*15*sin(Sine/WSVal),0,-2.5+sin(Sine/WSVal)*2.5,true)*cf(0,.25-cos(Sine/WSVal)*sin(Sine/(WSVal*3))*.25,-.3+cos(Sine/WSVal)*sin(Sine/(WSVal*3))*.3)*angles(-10+cos(Sine/WSVal)*sin(Sine/(WSVal*3))*10,0,0,true),A)
		else
			WSVal=6/clamp(hum.WalkSpeed/16,.25,2)*t.Size.Y/2
			local WSMul=(1+(WSVal/4))
			Change=1*(Step*60)
			nec.C0=nec.C0:Lerp(necC0*cf(0,0,0)*angles(sin(Sine/(WSVal/2))*2.5,0,0,true)*cf(0,0,0)*angles(5*MoveZ,-60*MoveX,0,true),(.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)*(Step*60))
			rutj.C0=rutj.C0:Lerp(rutjC0*cf(0,-3,0)*angles(VerY*2.5*MoveZ,0,VerY*2.5*MoveX,true)*cf(0,3,0)*cf(0,.75*cos(Sine/(WSVal/2)),0)*angles(cotan(Sine/(WSVal/2))*22.5,sin(Sine/WSVal)*10,0,true)*cf(0,0,0)*angles(-10*MoveZ,0,-10*MoveX,true),(.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)*(Step*60))
			rs.C0=rs.C0:Lerp(rsC0*cf(0,0,.5*sin(Sine/WSVal)*MoveZ)*angles(-cotan(Sine/WSVal)*120*MoveZ,0,0,true)*angles(0,-cotan(Sine/WSVal)*70*MoveZ,0,true)*cf(-.15,0,0)*angles(10,0,-10*abs(MoveZ),true),(.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)*(Step*60))
			ls.C0=ls.C0:Lerp(lsC0*cf(0,0,-.5*sin(Sine/WSVal)*MoveZ)*angles(cotan(Sine/WSVal)*120*MoveZ,0,0,true)*angles(0,-cotan(Sine/WSVal)*70*MoveZ,0,true)*cf(.15,0,0)*angles(10,0,10*abs(MoveZ),true),(.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)*(Step*60))
			rh.C0=rh.C0:Lerp(rhC0*cf(0,.1+.75*cos(Sine/WSVal),-.2-.9*cos(Sine/WSVal))*angles(cotan(Sine/WSVal)*190*MoveZ,0,cotan(Sine/WSVal)*160*MoveX,true)*cf(0,0,0)*angles(-7.5*abs(MoveZ),0,0,true),(.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)*(Step*60))
			lh.C0=lh.C0:Lerp(lhC0*cf(0,.1+-.75*cos(Sine/WSVal),-.2+.9*cos(Sine/WSVal))*angles(-cotan(Sine/WSVal)*190*MoveZ,0,-cotan(Sine/WSVal)*160*MoveX,true)*cf(0,0,0)*angles(-7.5*abs(MoveZ),0,0,true),(.2/(t.Size.Y/2)*(hum.WalkSpeed/16)/3)*(Step*60))
		end	
		for i,v in pairs(Wings) do
			local FolCF=cf(v3(),t.CFrame:PointToObjectSpace(t.Position+hrp.Velocity))
			local CF=t.CFrame*cf(0,.35,1)*angles(-3.5,-t.RotVelocity.Y*5,t.RotVelocity.Y*5,true)*(FolCF-FolCF.Position)*cf(0,sin(Sine/(WSVal/2))*.25,0)*angles(cotan((Sine/(WSVal))+abs(WNums[i]))*15,0,0,true)*Modes[Mode].WingCFs[i]*cf(0,-v.Body.Size.Y/2,0)
			v.Body.BP.Position=CF.Position
			v.Body.BG.CFrame=CF
		end
	elseif not Stand then
		Change=1*(Step*60)
		nec.C0=nec.C0:Lerp(necC0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(clamp(hrp.Velocity.Y,-15,15),0,0,true),.2*(Step*60))
		rutj.C0=rutj.C0:Lerp(rutjC0*cf(0,0,0)*angles(0,0,0,true)*cf(0,0,0)*angles(clamp(hrp.Velocity.Y,-30,20),0,0,true),.2*(Step*60))
		rs.C0=rs.C0:Lerp(rsC0*cf(0,0,0)*angles(0,5,-7.5,true)*cf(-(clamp(hrp.Velocity.Y/20,-.45,0)),0,0)*angles((clamp(hrp.Velocity.Y*4,0,150)),0,-(clamp(hrp.Velocity.Y*4,-120,0)),true),.1*(Step*60))
		ls.C0=ls.C0:Lerp(lsC0*cf(0,0,0)*angles(0,-5,7.5,true)*cf((clamp(hrp.Velocity.Y/20,-.45,0)),0,0)*angles((clamp(hrp.Velocity.Y*4,0,150)),0,(clamp(hrp.Velocity.Y*4,-120,0)),true),.1*(Step*60))
		rh.C0=rh.C0:Lerp(rhC0*cf(0,0,0)*angles(0,0,0,true)*cf(0,.4,-.35)*angles(-10,-5,5,true),.2*(Step*60))
		lh.C0=lh.C0:Lerp(lhC0*cf(0,0,0)*angles(clamp(-hrp.Velocity.Y,-25,35),0,0,true)*cf(0,.2,-.15)*angles(-2.5,5,-5,true),.2*(Step*60))
		for i,v in pairs(Wings) do
			local FolCF=cf(v3(),t.CFrame:PointToObjectSpace(t.Position+hrp.Velocity))
			local CF=t.CFrame*cf(0,.35,1)*angles(-3.5,-t.RotVelocity.Y*5,t.RotVelocity.Y*5,true)*(FolCF-FolCF.Position)*Modes[Mode].WingCFs[i]*cf(0,-v.Body.Size.Y/2,0)
			v.Body.BP.Position=CF.Position
			v.Body.BG.CFrame=CF
		end
	end
	nec.C1=nec.C1:Lerp(necC1,.2*(Step*60))
	rutj.C1=rutj.C1:Lerp(rutjC1,.2*(Step*60))
	rs.C1=rs.C1:Lerp(rsC1,.2*(Step*60))
	ls.C1=ls.C1:Lerp(lsC1,.2*(Step*60))
	rh.C1=rh.C1:Lerp(rhC1,.2*(Step*60))
	lh.C1=lh.C1:Lerp(lhC1,.2*(Step*60))
	necC0,necC1=cf(0,t.Size.Y/2,0),cf(0,-h.Size.Y/2,0)
	rutjC0,rutjC1=cf(0,0,0),cf(0,0,0)
	rsC0,rsC1=cf(t.Size.X/2,t.Size.Y/4,0),cf(-ra.Size.X/2,ra.Size.Y/4,0)
	lsC0,lsC1=cf(-t.Size.X/2,t.Size.Y/4,0),cf(la.Size.X/2,la.Size.Y/4,0)
	rhC0,rhC1=cf(t.Size.X/4,-t.Size.Y/2,0),cf(0,rl.Size.Y/2,0)
	lhC0,lhC1=cf(-t.Size.X/4,-t.Size.Y/2,0),cf(0,ll.Size.Y/2,0)
	fh.Size,ft.Size,fra.Size,fla.Size,frl.Size,fll.Size=h.Size,t.Size,ra.Size,la.Size,rl.Size,ll.Size
	for i,v in pairs({fh,ft,fra,fla,frl,fll}) do
		v.Parent.BP.Position=v.CFrame.Position+v.Velocity/40
		v.Parent.BG.CFrame=v.CFrame
		v.Transparency=Hitbox and .9 or 1
	end
end)
Rem.OnClientEvent:Connect(function(Name,...)
	return CSFuncs:Trigger("Event",Name,...)
end)
InfoRef.OnClientInvoke=function(Name,...)
	return CSFuncs:Trigger("Function",Name,...)
end
wait(1/30)
hrp.Anchored=false
while wait(1/30) do
	Rem:FireServer({Mouse=true,Hit=Mouse.Hit,Target=Mouse.Target,Origin=Mouse.Origin,CamCFrame=Cam.CFrame,CameraType=Cam.CameraType,CameraSubject=Cam.CameraSubject})
end
]==], script.Data.Scripts)
do
	local Rem=script.Data.Scripts.SClientAssets.Input
	local InfoRef=Rem:WaitForChild("InfoRef",5)
	local function NewEv(MultipleFuncs)
		local Table={FE=true}
		if MultipleFuncs then
			Table.Funcs={}
		end
		Table.Connect=function(self,Name,Func) -- t:Connect(nil,...) nil - skip indexing and keep it as a rewritable function
			local T={}
			local TableFuncs=Name~=nil
			if not TableFuncs then
				self.Function=Func
			else
				self.Funcs[Name]=Func
			end
			T.Disconnect=function(self)
				if not TableFuncs then
					self.Function=nil
				else
					self.Funcs[Name]=nil
				end
			end
			T.disconnect=T.Disconnect
			return T
		end
		Table.connect=Table.Connect
		return Table
	end
	CrossClient={Events=NewEv(true),Functions=NewEv(true)}
	UIS={InputBegan=NewEv(),InputEnded=NewEv()}
	Mouse={Hit=CFrame.new(),Target=CFrame.new(),Origin=CFrame.new(),TargetSurface=Vector3.new()}
	local function FireEUIS(self,Name,...)
		local F=UIS[Name]
		if F and F.FE then
			if F.Function then
				F.Function(...)
			elseif F.Funcs then
				for i,v in pairs(F.Funcs) do
					v(...)
				end
			end
		end
	end
	CrossClient.AddFunction=function(self,Type,Name,Function)
		if not self then return end
		if type(Name)=="function" then Function=Name Name=nil end
		assert(CrossClient[Type.."s"],"unsupported event type")
		if Name then
			CrossClient[Type.."s"][Name]=Function
		else
			table.insert(CrossClient[Type.."s"],Function)
		end
	end
	CrossClient.RemoveFunction=function(self,Type,Name)
		if not self then return end
		assert(CrossClient[Type.."s"],"unsupported event type")
		assert(Name,"no event name given")
		CrossClient[Type.."s"][Name]=nil
	end
	CrossClient.FireClient=function(self,Type,Name,...)
		if not self then return end
		assert(CrossClient[Type.."s"],"unsupported event type")
		assert(Name,"no event name given")
		if Type=="Event" then
			return Rem:FireClient(Player,Name,...)
		elseif Type=="Function" then
			return InfoRef:InvokeClient(Player,Name,...)
		end
	end
	UIS.FireEv=FireEUIS
	InfoRef.OnServerInvoke=function(PLR,...)
		if PLR~=Player then return end
		local Args={...}
		if Args[1]=="R" then
			return CrossClient.Functions[Args[2]](Args[3])
		end
	end
	Rem.OnServerEvent:Connect(function(PLR,IO,L,...)
		if PLR~=Player then return end
		local Args={...}
		if #Args>0 then
			if Args[1]=="S" then
				local T={} for i,v in pairs({...}) do if i>2 then table.insert(T,v) end end
				return CrossClient.Events[Args[2]](unpack(#T>0 and T or {1}))
			end
		end
		if IO.Mouse then
			Mouse.Hit=IO.Hit
			Mouse.Target=IO.Target
			Mouse.Origin=IO.Origin
			Mouse.TargetSurface=IO.TargetSurface
		else
			if IO.UserInputState==Enum.UserInputState.Begin then
				UIS:FireEv("InputBegan",IO,L)
			else
				UIS:FireEv("InputEnded",IO,L)
			end
		end
	end)
end
--}{		Default Functions	   }{--
local ins=Instance.new
local v3=Vector3.new
local v2=Vector2.new
local cf=CFrame.new
local angles=CFrame.Angles
local ud=UDim.new
local ud2=UDim2.new
local c3=Color3.new
local rgb=Color3.fromRGB
local hsv=Color3.fromHSV
local bc=BrickColor.new
local bcRandom=BrickColor.Random
local palette=BrickColor.palette
local cs=ColorSequence.new
local ns=NumberSequence.new
local nsk=NumberSequenceKeypoint.new
local nr=NumberRange.new
local random=math.random
local rad=math.rad
local sin=math.sin
local cos=math.cos
local tan=math.tan
local cotan=math.CosSin
local floor=math.floor
local pi=math.pi
local abs=math.abs
local sqrt=math.sqrt
local clamp=math.clamp
local ray=Ray.new
local huge=math.huge
--}{		Useful Functions	   }{--
function Tween(Object,Args,Info)
	if Object and Args then
		Info = Info or TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0)
		if typeof(Info) == "table" then Info = TweenInfo.new(unpack(Info)) end
		game:GetService("TweenService"):Create(Object,Info,Args):Play()
	end
end
function Sound(Id,Volume,Pitch,Parent,MaxDistance,EmitterSize,Looped)
	local S=ins("Sound",{Volume=Volume or 1;Pitch=Pitch or 1;MaxDistance=MaxDistance or 500;EmitterSize=EmitterSize or 5;Looped=Looped or false;SoundId="rbxassetid://"..Id,Parent=Parent})
	S:Play()
	coroutine.wrap(function()
		if S.Looped then return end
		if S.IsLoaded then
			Instance.Remove(S,S.TimeLength/S.Pitch)
		else
			S.Loaded:Connect(function()
				Instance.Remove(S,S.TimeLength/S.Pitch)
			end)
		end
	end)()
	return S
end
function Raycast(Origin,Direction,Blacklist,MaxDistance,IgnoreWater)
	return workspace:FindPartOnRayWithIgnoreList(ray(Origin,Direction.Unit*MaxDistance),Blacklist or {},false,IgnoreWater)
end
function Lerp(a,b,t)
	return a+(b-a)*t
end
--// Character indexing
Char,char=Player.Character,Player.Character
local Hum,hum=Char:FindFirstChildOfClass("Humanoid"),Char:FindFirstChildOfClass("Humanoid")
local hrp,HRP=Char.HumanoidRootPart,Char.HumanoidRootPart
local h,t,ra,la,rl,ll=char.Head,char.Torso,char["Right Arm"],char["Left Arm"],char["Right Leg"],char["Left Leg"]
local nec,rutj,rs,ls,rh,lh=t.Neck,hrp.RootJoint,t["Right Shoulder"],t["Left Shoulder"],t["Right Hip"],t["Left Hip"]
hum.RequiresNeck=false
wait(0.5)
for i,v in pairs(t:GetChildren()) do
	if v:IsA("Motor6D") then
		v.Enabled = false
	end
end
hrp.RootJoint.Enabled = false
local Models,Modules=script.Data.Models,script.Data.Scripts.Modules
local Ragdoll,Deaths=require(RagdollM),require(DeathsM)
	--[[
	> Made by v_Sado(formerly vlad20020), 2020 < badyear
	
	              position			size		   damage damage spread   knockback   knockback spread   ignore list
	Damage.new(Vector3.new(0,0,0),Vector3.new(5,5,5),10,       5,             15,           5,            {char})
	
	D.new():Check(1,nil or 0,function) > checks only once with a little delay after, sets local OnHit function(args: part instance), returns hit characters
	D.new():Check(5,0,function) > checks 5 times with delay regarding the server performance, sets local OnHit function(args: part instance), returns hit characters
	D.new():Check(5,.1,function) > checks 5 times with delay of 0.1 seconds, sets local OnHit function(args: part instance), returns hit characters
	
	Damage:SetDeathEffectFunction(function) > args: char, instakill effect
	Damage:SetDamageDisplayFunction(function) > args: cframe, text, text lifetime
	Damage:SetOnFunction(function) > args: part instance
	Damage:SetMaxHealth(num) > sets max life before instakill
--]]
local Damage={}
local SData={}
Damage.__index=Damage
local function CheckForElement(Table,Value)
	for i,v in next,Table do
		if v==Value then return false end
	end
	return true
end
Damage.new=function(pos,size,damage,damr,knockback,kbr,ignore)
	assert(pos,"arg 1 'position' lacking")
	assert(typeof(pos)=="Vector3" or typeof(pos)=="CFrame","position must be a Vector3 value either or CFrame value")
	assert(typeof(size)=="number" or typeof(size)=="Vector3" or typeof(size)=="CFrame","arg 2 'size' isn't number, CFrame or Vector3")
	size=size or 1
	damage=damage or 10
	knockback=knockback or 5
	damr=damr or 5
	kbr=kbr or 5
	ignore=ignore or {}
	if typeof(pos)=="CFrame" then pos=pos.Position end
	if typeof(size)=="number" then size=Vector3.new(1,1,1)*size elseif typeof(size)=="CFrame" then size=size.Position end
	local CurrentData={
		Position=pos,
		Size=size,
		Damage=damage,
		DamageSpread=damr,
		Knockback=knockback,
		KnockbackSpread=kbr,
		IgnoreList=ignore
	}
	CurrentData.Region=Region3.new(CurrentData.Position-CurrentData.Size/2,CurrentData.Position+CurrentData.Size/2)
	return setmetatable(CurrentData,Damage)
end
Damage.Damage=function(hum,t,pos,dam,dr,kb,kbr,oh,CurrentData)
	if hum and not hum:FindFirstChild("dеb") then
		local Deb=Instance.new("Glue",hum) Deb.Name="dеb" coroutine.wrap(function() game:GetService("RunService").Heartbeat:Wait() Deb:Destroy() end)()
		local df,sdf,ohf=(CurrentData and CurrentData.DeathEffect) or SData.DeathEffect,(CurrentData and CurrentData.DamageDisplay) or SData.DamageDisplay,oh or (CurrentData and CurrentData.OnHit) or SData.OnHit
		local Dir=CFrame.new(pos,t.Position).LookVector
		local Damage=math.clamp(dam+math.random(-dr,dr),1 and not dr or 0,math.huge)
		local Knockback=math.clamp(kb+math.random(-kbr,kbr),0,math.huge)
		local DeathEffect,DamageDisplay=df,sdf
		ohf(t)
		if Damage<1 then return end
		local Health=hum.Health
		local Mul=Damage+(Damage*(hum.MaxHealth/95)/10)
		if hum.MaxHealth>SData.MaxHealth then df(hum.Parent,true) sdf(t.CFrame,"-NULL",2.5) end
		hum.Health=hum.Health-math.floor(Mul)
		sdf(t.CFrame,-(Health-hum.Health),2)
		if Knockback >0 then local KB=Instance.new("BodyVelocity",t) KB.MaxForce=Vector3.new(25000,25000,25000) KB.Velocity=Dir*Knockback game:GetService("Debris"):AddItem(KB,.125) end
		if hum.Health<.1 and not hum:FindFirstChild("Dead") then Instance.new("BoolValue",hum).Name="Dead" df(hum.Parent,false) end
	end
end
Damage.Check=function(self,times,delay,oh)
	local CurrentData=self
	local Characters={}
	if not times then
		for i,v in next,workspace:FindPartsInRegion3WithIgnoreList(CurrentData.Region,CurrentData.IgnoreList,600) do
			if v.Parent then
				local Hum=v.Parent:FindFirstChildOfClass("Humanoid")
				if Hum then
					local Char=Hum.Parent
					local T=Char:FindFirstChild("Torso") or Char:FindFirstChild("UpperTorso") or Char:FindFirstChild("LowerTorso")
					if T and Char and CheckForElement(Characters,Char) then
						table.insert(Characters,Char)
						Damage.Damage(Hum,T,CurrentData.Position,CurrentData.Damage,CurrentData.DamageSpread,CurrentData.Knockback,CurrentData.KnockbackSpread,oh,CurrentData)
					end
				end
			end
		end
	else
		coroutine.wrap(function()
			for i=1,times do
				for i,v in next,workspace:FindPartsInRegion3WithIgnoreList(CurrentData.Region,CurrentData.IgnoreList,600) do
					if v.Parent then
						local Hum=v.Parent:FindFirstChildOfClass("Humanoid") or (v.Parent and v.Parent.Parent) and v.Parent.Parent:FindFirstChildOfClass("Humanoid")
						if Hum then
							local Char=Hum.Parent
							local T=Char:FindFirstChild("Torso") or Char:FindFirstChild("UpperTorso") or Char:FindFirstChild("LowerTorso")
							if T and Char and CheckForElement(Characters,Char) then
								table.insert(Characters,Char)
								Damage.Damage(Hum,T,CurrentData.Position,CurrentData.Damage,CurrentData.DamageSpread,CurrentData.Knockback,CurrentData.KnockbackSpread,oh,CurrentData)
							end
						end
					end
				end
				if not delay or delay==0 then
					game:GetService("RunService").Heartbeat:Wait()
				else
					wait(delay)
				end
			end
		end)()
	end
	return Characters
end
Damage.SetDeathEffectFunction=function(self,func)
	assert(func,"arg 1 'func' lacking")
	assert(typeof(func)=="function","arg 1 'func' must be a function")
	Damage.DeathEffect=func
	return Damage.DeathEffect
end
Damage.SetDamageDisplayFunction=function(self,func)
	assert(func,"arg 1 'func' lacking")
	assert(typeof(func)=="function","arg 1 'func' must be a function")
	Damage.DamageDisplay=func
	return Damage.DamageDisplay
end
Damage.SetOnHitFunction=function(self,func)
	assert(func,"arg 1 'func' lacking")
	assert(typeof(func)=="function","arg 1 'func' must be a function")
	Damage.OnHit=func
	return Damage.OnHit
end
Damage.SetMaxHealth=function(self,num)
	assert(num,"arg 1 'num' lacking")
	assert(typeof(num)=="number","arg 1 'num' must be a number")
	Damage.MaxHealth=num
	return Damage.MaxHealth
end
Damage.SetGlobalDeathEffectFunction=function(self,func)
	assert(func,"arg 1 'func' lacking")
	assert(typeof(func)=="function","arg 1 'func' must be a function")
	SData.DeathEffect=func
	return SData.DeathEffect
end
Damage.SetGlobalDamageDisplayFunction=function(self,func)
	assert(func,"arg 1 'func' lacking")
	assert(typeof(func)=="function","arg 1 'func' must be a function")
	SData.DamageDisplay=func
	return SData.DamageDisplay
end
Damage.SetGlobalOnHitFunction=function(self,func)
	assert(func,"arg 1 'func' lacking")
	assert(typeof(func)=="function","arg 1 'func' must be a function")
	SData.OnHit=func
	return SData.OnHit
end
Damage.SetGlobalMaxHealth=function(self,num)
	assert(num,"arg 1 'num' lacking")
	assert(typeof(num)=="number","arg 1 'num' must be a number")
	SData.MaxHealth=num
	return SData.MaxHealth
end
Damage:SetGlobalDeathEffectFunction(function()end)
Damage:SetGlobalDamageDisplayFunction(function()end)
Damage:SetGlobalOnHitFunction(function()end)
Damage:SetGlobalMaxHealth(5000000)
local AH=Models.AttachmentsHolder
--
local Muted=false
local OTick=tick()
local TimePos=0
local Modes={
	Q={
		Colours={
			Glow=BrickColor.new("Neon orange").Color,
			GlowSec=BrickColor.new("Royal purple").Color,
			Body=BrickColor.new("Really black").Color,
			BodySec=BrickColor.new("Institutional white").Color,
			Spikes=BrickColor.new("Royal purple").Color,
			SpikesSec=BrickColor.new("Neon orange").Color
		},
		Music={
			{Id=6829033172,Pitch=1,Volume=1.75}
		},
		Pose={
			CFrame.Angles(math.rad(-3),math.rad(-15),math.rad(0)),
			CFrame.new(0,0,0)*CFrame.Angles(math.rad(2),math.rad(15),math.rad(0)),
			CFrame.new(-0.1,-0.1,0.05)*CFrame.Angles(math.rad(-3),math.rad(-10),math.rad(6)),
			CFrame.new(0.3,-0.1,0.75)*CFrame.Angles(math.rad(-15),math.rad(-70),math.rad(10))*CFrame.Angles(math.rad(25),math.rad(0),math.rad(0)),
			CFrame.new(0,0,-0.2)*CFrame.Angles(math.rad(-7.5),math.rad(-20),math.rad(3)),
			CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(5),math.rad(-2.5)),
		},
		WingCFs=DefWingCFs,
		ParticleType="SpikesUp"
	},
	E={
		Colours={
			Glow=BrickColor.new("Toothpaste").Color,
			GlowSec=BrickColor.new("Baby blue").Color,
			Body=BrickColor.new("Institutional white").Color,
			BodySec=BrickColor.new("Light blue").Color,
			Spikes=BrickColor.new("Baby blue").Color,
			SpikesSec=BrickColor.new("Toothpaste").Color
		},
		Music={
			{Id=998142984,Pitch=1,Volume=.5},
			{Id=1670373906,Pitch=1,Volume=.4},
		},
		Pose={
			CFrame.Angles(math.rad(-7),math.rad(5),math.rad(0)),
			CFrame.new(0,0,0.1)*CFrame.Angles(math.rad(5),math.rad(-5),math.rad(0)),
			CFrame.new(-0.45,-0.4,-0.1)*CFrame.Angles(math.rad(100),math.rad(0),math.rad(-70)),
			CFrame.new(0.4,-0.5,-0.1)*CFrame.Angles(math.rad(110),math.rad(20),math.rad(80)),
			CFrame.new(0,0,-0.05)*CFrame.Angles(math.rad(-10),math.rad(-5),math.rad(2)),
			CFrame.new(0,0,0)*CFrame.Angles(math.rad(-3),math.rad(8),math.rad(-3)),
		},
		WingCFs={
			cf(-1,.5,0)*angles(-140,-90,0,true)*angles(-30,0,0,true),
			cf(-2,.3,.25)*angles(-105,-90,0,true)*angles(45,90,0,true),
			cf(-1.4,-.5,0)*angles(-80,-90,0,true)*angles(-50,0,0,true),
			cf(1,.5,0)*angles(-140,-90,0,true)*angles(30,0,0,true),
			cf(2,.15,.25)*angles(-95,-90,0,true)*angles(-45,-90,0,true),
			cf(1.4,-.5,0)*angles(-80,-90,0,true)*angles(50,0,0,true),
		},
		ParticleType="BackRing"
	},
	R={
		Colours={
			Glow=BrickColor.new("Maroon").Color,
			GlowSec=BrickColor.new("Really black").Color,
			Body=BrickColor.new("Really black").Color,
			BodySec=BrickColor.new("Maroon").Color,
			Spikes=BrickColor.new("Really black").Color,
			SpikesSec=BrickColor.new("Maroon").Color
		},
		Music={
			{Id=4755976868,Pitch=1,Volume=.5},
			{Id=6872513446,Pitch=.846,Volume=.5},
		},
		Pose={
			CFrame.Angles(math.rad(-15),math.rad(-20),math.rad(-10)),
			CFrame.new(0.35,1,0.125)*CFrame.Angles(math.rad(10),math.rad(20),math.rad(-10)),
			CFrame.new(-0.1,-0.35,-0.1)*CFrame.Angles(math.rad(20),math.rad(20),math.rad(25)),
			CFrame.new(0.1,0.3,-0.3)*CFrame.Angles(math.rad(170),math.rad(-30),math.rad(-10)),
			CFrame.new(0.1,0.8,-0.65)*CFrame.Angles(math.rad(-15),math.rad(-30),math.rad(5)),
			CFrame.new(0,0,0)*CFrame.Angles(math.rad(5),math.rad(10),math.rad(-5))
		},
		WingCFs={
			cf(-1,.5,0)*angles(-140,-90,0,true)*angles(-30,0,0,true),
			cf(-2,8,-1.5),
			cf(-1.4,-.5,0)*angles(-80,-90,0,true)*angles(-50,0,0,true),
			cf(1,.5,0)*angles(-140,-90,0,true)*angles(30,0,0,true),
			cf(1,6,-1.4)*angles(0,0,-80,true),
			cf(1.4,-.5,0)*angles(-80,-90,0,true)*angles(50,0,0,true),
		},
		Shaky=true,
		ParticleType="Hang"
	},
	T={
		Colours={
			Glow=rgb(154,229,154),
			GlowSec=rgb(201,153,255),
			Body=BrickColor.new("Institutional white").Color,
			BodySec=rgb(154,229,154),
			Spikes=rgb(201,153,255),
			SpikesSec=BrickColor.new("Institutional white").Color
		},
		Music={
			{Id=1409668861,Pitch=1,Volume=.5},
			{Id=6977533012,Pitch=1,Volume=.5},
		},
		Pose={
			CFrame.Angles(math.rad(-8),math.rad(15),math.rad(0)),
			CFrame.new(0.125,-0.05,0)*CFrame.Angles(math.rad(-5),math.rad(-15),math.rad(-5)),
			CFrame.new(-0.75,0,-0.2)*CFrame.Angles(math.rad(20),math.rad(15),math.rad(-20)),
			CFrame.new(0.75,0,-0.15)*CFrame.Angles(math.rad(30),math.rad(-10),math.rad(35)),
			CFrame.new(0.2,0.125,-0.35)*CFrame.Angles(math.rad(-10),math.rad(-35),math.rad(-10)),
			CFrame.new(0,0,0)*CFrame.Angles(math.rad(5),math.rad(5),math.rad(2)),
		},
		WingCFs={
			cf(-1,.5,0)*angles(-140,-90,0,true)*angles(-30,0,0,true),
			cf(-.75,0,-.5)*angles(-100,-90,0,true)*angles(-80,50,-10,true),
			cf(-1.4,-.5,0)*angles(-80,-90,0,true)*angles(-50,0,0,true),
			cf(1,.5,0)*angles(-140,-90,0,true)*angles(30,0,0,true),
			cf(.75,0,-.5)*angles(-100,-90,0,true)*angles(80,-50,10,true),
			cf(1.4,-.5,0)*angles(-80,-90,0,true)*angles(50,0,0,true),
		},
		ParticleType="PhaseIn"
	},
}
local Mode="Q"
local SongPos=random(1,#Modes[Mode].Music)
--
local Wings={}
local Mus=Sound(Modes[Mode].Music[SongPos].Id,Modes[Mode].Music[SongPos].Volume,Modes[Mode].Music[SongPos].Pitch,t,100,5,true)
local FloatA=ins("Attachment",{Position=v3(0,-3,0),Parent=hrp})
local ModeEffects={
	PhaseIn={
		Att=ins("Attachment",{Parent=hrp}),
		PEs={
			{PE=Models.PhaseIn,ColourLink="Glow"}
		}
	},
	Hang={
		Att=ins("Attachment",{Position=v3(0,-h.Size.Y/2,0),Parent=h}),
		PEs={
			{PE=Models.Ring,ColourLink="Glow"},
			{PE=Models.String,ColourLink="Glow"}
		}
	},
	BackRing={
		Att=ins("Attachment",{Position=v3(0,1,1),Parent=t}),
		PEs={
			{PE=Models.BackRing,ColourLink="Glow"},
			{PE=Models.BackSpikes,ColourLink="GlowSec"}
		}
	},
	SpikesUp={
		Att=ins("Attachment",{Position=v3(0,-3.1,0),Parent=hrp}),
		PEs={
			{PE=Models.SpikesUp,ColourLink="Glow"},
			{PE=Models.SpikesUp1,ColourLink="GlowSec"},
		}
	},
}
local FPE=Models.FloatW
local FSPE=Models.FloatSparks
local Brace=Models:WaitForChild("TrimBracelet")
local BrW=ins("Motor6D",{Part0=ra,Part1=Brace.Body,C0=cf(-Brace.Body.WeldAtt.Position),Name="Weldhehethrfg",Parent=Brace})
FPE.Parent,FSPE.Parent=FloatA,FloatA
AH.Parent=nil
Brace.Parent=ra
for i,v in pairs(ModeEffects) do
	for i,q in pairs(v.PEs) do
		q.PE.Parent=v.Att
	end
end
for i,v in pairs(Brace:GetChildren()) do
	if v:IsA("BasePart") and v:CanSetNetworkOwnership() then
		v:SetNetworkOwner(Player)
	end
end
for i,v in pairs(char:GetDescendants()) do
	if v:IsA("BasePart") and v:CanSetNetworkOwnership() then
		v:SetNetworkOwner(Player)
	end
end
for i=1,6 do
	local C=Models.Wing:Clone()
	C.Body.CFrame=hrp.CFrame
	local BP=ins("BodyPosition",{MaxForce=v3(huge,huge,huge),P=50000,D=1500,Position=C.Body.Position,Name="BP",Parent=C.Body})
	local BG=ins("BodyGyro",{MaxTorque=v3(huge,huge,huge),P=50000,D=1500,CFrame=C.Body.CFrame,Name="BG",Parent=C.Body})
	C.Parent=t
	for i,v in pairs(C:GetChildren()) do
		if v:CanSetNetworkOwnership() then
			v:SetNetworkOwner(Player)
		end
	end
	table.insert(Wings,C)
end
--
ins("NoCollisionConstraint",{Part0=t,Part1=h,Parent=t})
local GAHp=ins("Part",{Transparency=1,Anchored=false,CanCollide=false,CFrame=cf(5000,5000,5000),Parent=hrp})
--
pcall(function()
	game:GetService("PhysicsService"):CreateCollisionGroup("FakeRep")
end)
pcall(function()
	game:GetService("PhysicsService"):CollisionGroupSetCollidable("FakeRep","FakeRep",false)
end)
pcall(function()
	game:GetService("PhysicsService"):SetPartCollisionGroup(hrp,"FakeRep")
end)
for i,v in pairs(char:GetDescendants()) do
	if v:IsA("BasePart") and not v.Anchored then
		pcall(function()
			v:SetNetworkOwner(Player)
		end)
	end
end
for i,v in pairs({h,t,ra,la,rl,ll}) do
	pcall(function()
		game:GetService("PhysicsService"):SetPartCollisionGroup(v,"FakeRep")
	end)
	local BP=ins("BodyPosition",{MaxForce=v3(huge,huge,huge),P=50000,D=500,Position=v.Position,Name="BP",Parent=v})
	local BG=ins("BodyGyro",{MaxTorque=v3(huge,huge,huge),P=50000,D=500,CFrame=v.CFrame,Name="BG",Parent=v})
end
--
local function RGBtoGS(Col,RetCol)
	if RetCol then
		return Color3.new(.2126*Col.R+.7152*Col.G+.0722*Col.B,.2126*Col.R+.7152*Col.G+.0722*Col.B,.2126*Col.R+.7152*Col.G+.0722*Col.B)
	else
		return .2126*Col.R+.7152*Col.G+.0722*Col.B
	end
end
local function NewBeamRing(CF,Size,Width,Ang,Trans,Col,SizeT,WidthT,AngT,TransT,ColT,Time,Style,Dir)
	assert(CF,"no cframe given")
	Size,Width,Ang,Trans,Col,SizeT,WidthT,AngT,TransT,ColT,Time,Style,Dir=Size or 5,Width or 1,Ang or 90,Trans or 0,Col or c3(1,1,1),SizeT or 10,WidthT or 5,AngT or 0,TransT or 1,ColT or c3(1,1,1),Time or 1.5,Style or Enum.EasingStyle.Back,Dir or Enum.EasingDirection.Out
	local P=Models.NewBeamRing:Clone()
	local TV,CV=ins("NumberValue",{Value=Trans}),ins("Color3Value",{Value=Col})
	local A1,A2,A3,A4=P.A1,P.A2,P.A3,P.A4
	local B1,B2,B3,B4=P.B1,P.B2,P.B3,P.B4
	P.CFrame=CF
	A1.Position,A2.Position,A3.Position,A4.Position=v3(0,0,Size/2),v3(0,0,-Size/2),v3(Size/2,0,0),v3(-Size/2,0,0)
	A1.Orientation,A2.Orientation,A3.Orientation,A4.Orientation=v3(Ang,0,0),v3(Ang,-180,0),v3(Ang,90,0),v3(Ang,-90,0)
	B1.Transparency,B2.Transparency,B3.Transparency,B4.Transparency=ns(Trans),ns(Trans),ns(Trans),ns(Trans)
	B1.Color,B2.Color,B3.Color,B4.Color=cs(Col),cs(Col),cs(Col),cs(Col)  --  v lazy lol
	B1.Width0,B1.Width1,B2.Width0,B2.Width1,B3.Width0,B3.Width1,B4.Width0,B4.Width1=Width*2,Width*2,Width*2,Width*2,Width*2,Width*2,Width*2,Width*2
	B1.CurveSize0,B1.CurveSize1,B2.CurveSize0,B2.CurveSize1,B3.CurveSize0,B3.CurveSize1,B4.CurveSize0,B4.CurveSize1=(Size/2)*.60000000,(Size/2)*.60000000,-(Size/2)*.60000000,-(Size/2)*.60000000,(Size/2)*.60000000,(Size/2)*.60000000,-(Size/2)*.60000000,-(Size/2)*.60000000
	P.Parent=h
	Tween(A1,{Position=v3(0,0,SizeT/2),Orientation=v3(AngT,0,0)},{Time,Style,Dir,0,false,0}) Tween(A2,{Position=v3(0,0,-SizeT/2),Orientation=v3(AngT,180,0)},{Time,Style,Dir,0,false,0}) Tween(A3,{Position=v3(SizeT/2,0,0),Orientation=v3(AngT,90,0)},{Time,Style,Dir,0,false,0}) Tween(A4,{Position=v3(-SizeT/2,0,0),Orientation=v3(AngT,-90,0)},{Time,Style,Dir,0,false,0})
	Tween(TV,{Value=TransT},{Time,Style,Dir,0,false,0}) Tween(CV,{Value=ColT},{Time,Style,Dir,0,false,0})
	Tween(B1,{Width0=WidthT*2,Width1=WidthT*2,CurveSize0=(SizeT/2)*.6,CurveSize1=(SizeT/2)*.6},{Time,Style,Dir,0,false,0}) Tween(B2,{Width0=WidthT*2,Width1=WidthT*2,CurveSize0=-(SizeT/2)*.60000000,CurveSize1=-(SizeT/2)*.60000000},{Time,Style,Dir,0,false,0}) Tween(B3,{Width0=WidthT*2,Width1=WidthT*2,CurveSize0=(SizeT/2)*.60000000,CurveSize1=(SizeT/2)*.60000000},{Time,Style,Dir,0,false,0}) Tween(B4,{Width0=WidthT*2,Width1=WidthT*2,CurveSize0=-(SizeT/2)*.60000000,CurveSize1=-(SizeT/2)*.60000000},{Time,Style,Dir,0,false,0})
	TV.Changed:Connect(function()
		B1.Transparency,B2.Transparency,B3.Transparency,B4.Transparency=ns(TV.Value),ns(TV.Value),ns(TV.Value),ns(TV.Value)
		B1.Color,B2.Color,B3.Color,B4.Color=cs(CV.Value),cs(CV.Value),cs(CV.Value),cs(CV.Value)
	end)
	if Time>0 then Instance.Remove(P,Time+.25) end
	return P
end
function DamageDisplay(CF,Text,Duration,Extra)
	assert(CF,"no CFrame given")
	Text=Text or "smh"
	Duration=Duration or 2
	local P=Models.DD:Clone()
	local BBG=P.DD
	local TL=BBG.Num
	P.CFrame=CF
	BBG.Size=ud2(#tostring(Text),0,1.5,0)
	TL.Text=Text
	TL.TextColor3,TL.TextStrokeColor3=Modes[Mode].Colours.Glow,Modes[Mode].Colours.GlowSec
	P.Color=Modes[Mode].Colours.Glow
	P.Parent=workspace.Terrain
	CrossClient:FireClient("Event","AttachDD",P,Extra[1],string.sub(tostring(Text),1,1)=="+")
	P.Anchored=false
	P:SetNetworkOwner(Player)
	coroutine.wrap(function()
		Instance.Remove(P,Duration+.5)
		Tween(TL,{Position=ud2(),TextTransparency=0,TextStrokeTransparency=0,Rotation=359.9},{.25,Enum.EasingStyle.Back,Enum.EasingDirection.Out,0,false,0})
		Tween(P,{Transparency=1},{2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0})
		wait(Duration)
		Tween(TL,{Position=ud2(0,0,2,0),TextTransparency=1,TextStrokeTransparency=1,Rotation=0},{.25,Enum.EasingStyle.Back,Enum.EasingDirection.In,0,false,0})
	end)()
end
local function CamShake(Position,Range,Duration,Intensity)
	assert(Position,"arg 1 nil")
	Range,Duration,Intensity=Range or 20,Duration or 1,Intensity or .2
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		local CS=NLS([==[
local Player=game:GetService("Players").LocalPlayer
local script = script.Parent.CamShakeAssets
local Dur,Target,Pos,Range,Int=script.Duration.Value,script.Target.Value,script.Position.Value,script.Range.Value,script.Intensity.Value
--
local Tick=tick()
local Remove=script.REmove
local Cam=workspace.CurrentCamera
--
game:GetService("RunService").RenderStepped:Connect(function()
	local Pos=Target and Target.Position or Pos
	local TimeScale=(Dur~=-1 and Target) or 1-(tick()-Tick)/Dur or 1
	if Dur~=-1 and Target and not Target.Parent then
		Remove:FireServer()
	elseif TimeScale<=0 then
		Remove:FireServer()
	end
	if (Pos-Cam.CFrame.Position).Magnitude>Range then return end
	local RangeScale=1-(Cam.CFrame.Position-Pos).Magnitude/Range
	local x=math.clamp(math.noise(TimeScale*25,tick()*25,1)*TimeScale,-1,1)*Int*RangeScale
	local y=math.clamp(math.noise(tick()*25,TimeScale*27,1)*TimeScale,-1,1)*Int*RangeScale
	local CF=CFrame.new(x,y,0)*CFrame.Angles(math.rad(math.sin(y)*25),math.rad(math.sin(-x)*30),math.rad(math.sin(x)*25))
	Cam.CFrame=Cam.CFrame*CF
end)
		]==])
		CS.Name = "CamShake"
		if typeof(Position)=="Vector3" then CS.Position.Value=Position elseif typeof(Position)=="CFrame" then CS.Position.Value=Position.Position elseif typeof(Position)=="Instance" and Position:IsA("BasePart") then CS.Target.Value=Position else error("arg 1 wrong type") end
		CS.Range.Value=Range
		CS.Duration.Value=Duration
		CS.Intensity.Value=Intensity
		CS.Parent=v.PlayerGui
		CS.Disabled=false
	end
end
local function Death(char)
	local Hum=char:FindFirstChildOfClass("Humanoid")
	coroutine.wrap(function()
		wait(random(.5,1,100))
		local Dir=v3(random(-25,25,10),random(0,15,100),random(-25,25,10))
		for i,v in pairs(char:GetChildren()) do
			if v:IsA("BasePart") then
				local Col=Modes[Mode].Colours.Glow
				v:ClearAllChildren()
				v.Transparency=1
				v.Size=v3()
				local Vap=Models.CrackVap:Clone()
				local L=ins("PointLight",{Range=15,Brightness=.75,Shadows=false,Color=Col,Parent=v})
				Tween(L,{Brightness=0},{2,Enum.EasingStyle.Circular,Enum.EasingDirection.Out,0,false,0})
				Vap.Acceleration=Dir
				Vap.VelocityInheritance=random(.1,.25,100)
				Vap.Color=cs(Col)
				Vap.Parent=v
				Vap:Emit(random(5,7))
				Instance.Remove(v,2)
				Sound(3264923,.7,random(.8,1.1,100),v,150,5)
				wait(random(.03,.1,1000))
			else
				Instance.Remove(v)
			end
		end
	end)()
	Ragdoll:Ragdollify(char,true)
end
Damage:SetGlobalDeathEffectFunction(function(Char)
	Deaths.DissipateImpale(Char,{Modes[Mode].Colours.Glow,Modes[Mode].Colours.GlowSec})
end)
Damage:SetGlobalOnHitFunction(function(Hit) Sound(851453784,.4,random(.9,1.1),Hit,100,5) end)
Damage:SetGlobalDamageDisplayFunction(function(CF,Text,Duration)
	DamageDisplay(cf(hrp.Position,CF.Position)*cf(0,0,-4-(CF.Position-hrp.Position).Magnitude/30),Text,Duration,{CF.Position})
end)
local function ChangeMode(nMode)
	local OldMode=Mode
	Mode=nMode
	SongPos=random(1,#Modes[Mode].Music)
	CrossClient:FireClient("Event","UpdMode",Mode)
	local Cols=Modes[Mode].Colours
	for i,v in pairs(Brace:GetChildren()) do
		if v:IsA("BasePart") then
			v.Color=Cols[v.Name]
			v.Material=(v.Name=="Body" and (RGBtoGS(Cols.Body)<.4 and "Granite" or "SmoothPlastic")) or (v.Name=="Spikes" and (RGBtoGS(Cols.Spikes)<.5 and "Marble" or "Glass")) or "Neon"
		end
	end
	if Modes[OldMode].ParticleType and ModeEffects[Modes[OldMode].ParticleType] then for i,v in pairs(ModeEffects[Modes[OldMode].ParticleType].PEs) do v.PE.Enabled=false end end
	if Modes[Mode].ParticleType and ModeEffects[Modes[Mode].ParticleType] then for i,v in pairs(ModeEffects[Modes[Mode].ParticleType].PEs) do v.PE.Color=cs(Cols[v.ColourLink]) v.PE.Enabled=true end end
	Brace.Spikes.A1.PE.Color,Brace.Spikes.A2.PE.Color,Brace.Spikes.A3.Swirls.Color=cs(Cols.Spikes),cs(Cols.Spikes),cs(Cols.Glow)
	Brace.Body.BladeStart.Glow.Color=cs(Cols.Glow)
	Brace.Body.B1S.Color,Brace.Body.B2S.Color,Brace.Body.B1.Color,Brace.Body.B2.Color=cs(Cols.Glow),cs(Cols.Glow),cs(Cols.Spikes),cs(Cols.Spikes)
	if char:FindFirstChild("Sadie Cardigan") or char:FindFirstChild("Sadie Cardigan IK") then
		local Cols=random(0,1)==1 and {Glow=Cols.Glow,GlowSec=Cols.GlowSec} or {Glow=Cols.GlowSec,GlowSec=Cols.Glow}
		local B=(char:FindFirstChild("Sadie Cardigan") or char:FindFirstChild("Sadie Cardigan IK")).Boots
		B.RightBoot.Color=Cols.Glow
		B.LeftBoot.Color=Cols.GlowSec
	end
	for i,v in pairs(Wings) do
		local Cols=(i~=2 and i~=5) and {Body=Cols.Body,Glow=Cols.Glow,Spikes=Cols.Spikes} or {Body=Cols.BodySec,Glow=Cols.GlowSec,Spikes=Cols.SpikesSec}
		v.Body.Material=RGBtoGS(Cols.Body)<.4 and "Granite" or "SmoothPlastic"
		v.Spikes.Material=RGBtoGS(Cols.Spikes)<.5 and "Marble" or "Glass"
		v.Body.Color=Cols.Body
		v.Glow.Color=Cols.Glow
		v.Spikes.Color=Cols.Spikes
		v.Glow.APE.Glow.Color,v.Glow.APE.Smoke.Color,v.Glow.APE.Spikes.Color=cs(Cols.Glow),cs(Cols.Glow),cs(Cols.Glow)
		v.Glow.TEnd.Sparks.Color,v.Glow.TEnd.Waves.Color=cs(Cols.Spikes),cs(Cols.Spikes)
		v.Glow.Trail.Color=cs(Cols.Glow)
		v.Glow.Light.Color=Cols.Glow
	end
end
--

--
ChangeMode(Mode)
--
CrossClient:AddFunction("Event","Damage",function(Pos,Size,Damage_,DamageR,KB,KBR,Ignore,Times,Delay,OnHit)
	Damage.new(Pos,Size,Damage_,DamageR,KB,KBR,Ignore):Check(Times,Delay,OnHit and function(Hit) Sound(OnHit[1],OnHit[2],OnHit[3],Hit,OnHit[4],OnHit[5]) end)
end)
CrossClient:AddFunction("Function","GetWings",function()
	return Wings
end)
CrossClient:AddFunction("Event","C3Swirls",function()
	Sound(1840977339,.7,random(1.2,1.3,100),Brace.Body,35,6)
	Brace.Spikes.A3.Swirls:Emit(random(2,5))
end)
CrossClient:AddFunction("Event","PrepFlip",function()
	Sound(1841340976,.5,random(.9,1.1,100),Brace.Body,50,5).TimePosition=.2
	Brace.Spikes.A3.Swirls:Emit(random(2,5))
end)
CrossClient:AddFunction("Event","FlipImp",function(CF)
	local Hit=Raycast(CF.Position,-hrp.CFrame.UpVector,{char},4,true)
	if not Hit then return end
	local C=AH.FlipEff:Clone()
	local Times={}
	for i,v in pairs(C:GetChildren()) do
		if v:IsA("ParticleEmitter") then
			if v.Color.Keypoints[1].Value==c3(1,0,0) then
				v.Color=cs(Modes[Mode].Colours.Glow)
			elseif v.Color.Keypoints[1].Value==c3(0,1,0) then
				v.Color=cs(Modes[Mode].Colours.Spikes)
			end
		elseif v:IsA("Light") then
			v.Color=Modes[Mode].Colours.Glow
		end
	end
	C.Parent=GAHp
	C.WorldPosition=CF.Position
	CamShake(CF,180,.75,.4)
	Damage.new(CF.Position+v3(0,30,0),v3(60,60,60),35,10,100,25,{char}):Check()
	for i,v in pairs(C:GetChildren()) do
		if v:IsA("ParticleEmitter") then
			v:Emit(v.Amount.Value+random(0,2))
			Instance.Remove(v,v.Lifetime.Max)
		elseif v:IsA("Sound") then
			v.PlaybackSpeed+=random(-.1,.1,100)
			v:Play()
			table.insert(Times,v.TimeLength/v.PlaybackSpeed)
		end
	end
	Tween(C.PointLight,{Brightness=0},{.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,1})
	Instance.Remove(C,math.max(unpack(Times)))
	for i=1,random(4,7) do
		local Col=({Modes[Mode].Colours.Glow,Modes[Mode].Colours.GlowSec})[random(1,2)]
		NewBeamRing(CF*angles(random(-180,180),random(-180,180),random(-180,180),true),random(4,7,10),random(5,10,10),180,0,Col,random(25,150,10),random(40,100,10),random(-10,10,10),1,Col,random(.4,.9,100),Enum.EasingStyle.Back,Enum.EasingDirection.Out)
	end
end)
CrossClient:AddFunction("Event","Combo3",function(CF)
	local C=AH.Combo3Eff:Clone()
	for i,v in pairs(C:GetChildren()) do
		if v:IsA("ParticleEmitter") then
			if v.Color.Keypoints[1].Value==c3(1,0,0) then
				v.Color=cs(Modes[Mode].Colours.Glow)
			elseif v.Color.Keypoints[1].Value==c3(0,1,0) then
				v.Color=cs(Modes[Mode].Colours.Spikes)
			end
		elseif v:IsA("Light") then
			v.Color=Modes[Mode].Colours.Glow
		end
	end
	for i=10,110,20 do
		local SugCF=CF*cf(0,20,-i)*angles(0,sin(tick()*5+i)*180,0,true)*cf(0,0,i/5)
		local H,P,N=Raycast(SugCF.Position,v3(0,-1,0),{char},70,true)
		if H then
			CamShake(P,60,.35,.4)
			CF=CF*cf(0,20-(SugCF.Position-P).Magnitude,0)
			local lCF=cf(P,P+N)*angles(-90,0,0,true)
			local C=C:Clone()
			C.Parent=GAHp
			C.WorldPosition,C.WorldOrientation=lCF.Position,v3(lCF:ToOrientation())
			local Times={}
			for i,v in pairs(C:GetChildren()) do
				if v:IsA("ParticleEmitter") then
					v:Emit(v.Amount.Value+random(0,2))
					Instance.Remove(v,v.Lifetime.Max)
				elseif v:IsA("Sound") then
					v.PlaybackSpeed+=random(-.1,.1,100)
					v:Play()
					table.insert(Times,v.TimeLength/v.PlaybackSpeed)
				end
			end
			Damage.new(lCF.Position+v3(0,17.5,0),v3(20,35,20),20,10,45,15,{char}):Check()
			Damage.new(lCF.Position,v3(30,3,30),5,3,65,15,{char}):Check()
			Tween(C.PointLight,{Brightness=0},{.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,1})
			Instance.Remove(C,math.max(unpack(Times)))
			wait(random(.1,.5,100))
		end
	end
end)
CrossClient:AddFunction("Event","ShowBlade",function()
	Brace.Spikes.A3.Swirls:Emit(random(2,5))
	local BS,BM,BE=Brace.Body.BladeStart,Brace.Body.BladeMid,Brace.Body.BladeEnd
	BM.Position,BE.Position=BS.Position,BS.Position
	BS.Glow.Enabled=true
	BS.Glow:Emit(1)
	Tween(BE,{Position=v3(.513,-2.287,0)},{.25,Enum.EasingStyle.Sine,Enum.EasingDirection.Out})
	Tween(BM,{Position=v3(.513,-1.675,0)},{.35,Enum.EasingStyle.Circular,Enum.EasingDirection.Out})
end)
CrossClient:AddFunction("Event","HideBlade",function()
	local BS,BM,BE=Brace.Body.BladeStart,Brace.Body.BladeMid,Brace.Body.BladeEnd
	BM.Position,BE.Position=v3(.513,-1.675,0),v3(.513,-2.287,0)
	BS.Glow.Enabled=false
	BS.Glow:Clear()
	Tween(BE,{Position=BS.Position},{.35,Enum.EasingStyle.Sine,Enum.EasingDirection.Out})
	Tween(BM,{Position=BS.Position},{.25,Enum.EasingStyle.Circular,Enum.EasingDirection.Out})
end)
--
UIS.InputBegan:Connect(nil,function(IO,L)
	if L then return end
	if IO.UserInputType==Enum.UserInputType.Keyboard then
		if Modes[IO.KeyCode.Name] and IO.KeyCode.Name~=Mode then
			ChangeMode(IO.KeyCode.Name)
			return
		end
		if IO.KeyCode==Enum.KeyCode.M then
			Muted=not Muted
		elseif IO.KeyCode==Enum.KeyCode.N then
			SongPos+=1
		elseif IO.KeyCode==Enum.KeyCode.B then
			SongPos-=1
		end
		if SongPos>#Modes[Mode].Music then SongPos=1 elseif SongPos<1 then SongPos=#Modes[Mode].Music end
	end
end)
UIS.InputEnded:Connect(nil,function(IO,L)
	if L then return end
	if IO.UserInputType==Enum.UserInputType.Keyboard then
	elseif IO.UserInputType==Enum.UserInputType.MouseButton1 then
	end
end)
game:GetService("RunService").Heartbeat:Connect(function()
	if Mus and Mus.Parent~=t then Instance.Remove(Mus) Mus=Sound(Modes[Mode].Music[SongPos].Id,Modes[Mode].Music[SongPos].Volume,Modes[Mode].Music[SongPos].Pitch,t,100,5,true) Mus.TimePosition=TimePos end
	Mus.SoundId,Mus.Pitch,Mus.Volume,Mus.Looped,Mus.Name,Mus.Playing="rbxassetid://"..Modes[Mode].Music[SongPos].Id,Modes[Mode].Music[SongPos].Pitch,Modes[Mode].Music[SongPos].Volume,true,"VMus",not Muted
	TimePos=Mus.TimePosition
	local Hit,Pos,NID=Raycast(hrp.Position,-t.CFrame.UpVector,{char},4,false)
	if Hit and Modes[Mode].Pose[2].Y>.1 then
		local CF=hrp.CFrame:ToObjectSpace(cf(Pos,Pos-NID)*angles(90,0,0,true))
		local x,y,z=CF:ToOrientation()
		FPE.Enabled=true
		FSPE.Enabled=true
		FPE.Color=cs(Modes[Mode].Colours.Glow)
		FSPE.Color=cs(Modes[Mode].Colours.Spikes)
		FSPE.Acceleration=v3(sin(tick()*10)*90,25,cos(tick()*10)*90)
		FloatA.Position=CF.Position
		FloatA.Orientation=v3(x*(pi/180),y*(pi/180),z*(pi/180))
	else
		FPE.Enabled=false
		FSPE.Enabled=false
	end
	if Mus.TimeLength-Mus.TimePosition<.5 and Mus.IsLoaded then
		TimePos=0
		Mus.TimePosition=0
		if #Modes[Mode].Music>1 then
			local SP=SongPos
			repeat
				SongPos=random(1,#Modes[Mode].Music)
			until SongPos~=SP
		end
	end
	if tick()-OTick>.5 then
		for i,v in pairs(char:GetDescendants()) do
			if v:IsA("BasePart") and not v.Anchored then
				pcall(function() v:SetNetworkOwner(Player) end)
			end
		end
		OTick=tick()
	end
end)
wait()
Client.Disabled = false
