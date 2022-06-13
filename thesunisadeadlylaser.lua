
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
LocalScript1 = Instance.new("LocalScript")
ScreenGui2 = Instance.new("ScreenGui")
Frame3 = Instance.new("Frame")
TextLabel4 = Instance.new("TextLabel")
Frame5 = Instance.new("Frame")
Frame6 = Instance.new("Frame")
Frame7 = Instance.new("Frame")
Frame8 = Instance.new("Frame")
Frame9 = Instance.new("Frame")
Frame10 = Instance.new("Frame")
Frame11 = Instance.new("Frame")
Frame12 = Instance.new("Frame")
Frame13 = Instance.new("Frame")
Frame14 = Instance.new("Frame")
Frame15 = Instance.new("Frame")
Frame16 = Instance.new("Frame")
Frame17 = Instance.new("Frame")
Frame18 = Instance.new("Frame")
Frame19 = Instance.new("Frame")
Frame20 = Instance.new("Frame")
Frame21 = Instance.new("Frame")
TextLabel22 = Instance.new("TextLabel")
Frame23 = Instance.new("Frame")
ObjectValue24 = Instance.new("ObjectValue")
NumberValue25 = Instance.new("NumberValue")
StringValue26 = Instance.new("StringValue")
StringValue27 = Instance.new("StringValue")
Color3Value28 = Instance.new("Color3Value")
Color3Value29 = Instance.new("Color3Value")
NumberValue30 = Instance.new("NumberValue")
Folder0.Name = "Effects"
Folder0.Parent = game.Workspace
LocalScript1.Name = "BossChat"
table.insert(cors,sandbox(LocalScript1,function()
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")
Frame_Speed = 1 / 60
frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()

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

------------------
function swait(num)
if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, num do
			ArtificialHB.Event:wait()
		end
	end
end
Create=function(obj)
				local inst = Instance.new(obj)
				return function(props)
					for prop,valu in next, props do
						inst[prop]=valu
					end
					return inst
				end	
			end
Echo = function(id, par, vol, pit, timepos,delays,echodelay,fedb,dryl)
				local Sas = Create("Sound"){
					Volume = vol,
                    Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
                    TimePosition = timepos,
					Parent = par or workspace,
				}
				local E = Create("EchoSoundEffect"){
					Delay = echodelay,
                    Name = "Echo",
					Feedback = fedb,
                    DryLevel = dryl,
					Parent = Sas,
				}
				wait()
				Sas:play()
				game:GetService("Debris"):AddItem(Sas, delays)
end

local cR=255
local cG=0
local cB=0
local flg5=1 local omgidk=1
local add=15
game:GetService("RunService").Heartbeat:Connect(function()
	if omgidk>10000 then omgidk=0 end
	omgidk=omgidk+1
	if cR>=255 then flg5=1 end
	if cG>=255 then flg5=2 end
	if cB>=255 then flg5=3 end
	if flg5==1 then cR=cR-add cG=cG+add end
	if flg5==2 then cG=cG-add cB=cB+add end
	if flg5==3 then cB=cB-add cR=cR+add end
	
end)
v=game:service'Players'.localPlayer
function newbosschatfunc(kan,ModeOfGlitch,modet,text,color,color2,watval)
coroutine.resume(coroutine.create(function()
if v.PlayerGui:FindFirstChild("NewDialog")~= nil then
v.PlayerGui:FindFirstChild("NewDialog"):destroy()
end
local Bruh=script.NewDialog:Clone()
Bruh.Parent=v.PlayerGui
local Bruh2=Bruh.H
local bruh3 = Bruh.H.H1
local bruh4 = Bruh2.H1
game:GetService("Debris"):AddItem(Bruh,120)
--local scrg = Instance.new("ScreenGui",v.PlayerGui)
Echo("rbxassetid://525200869", Bruh, 0.5, 1,0,10,0.1,0.25,1)

--V bad code - salvo
coroutine.resume(coroutine.create(function()
while true do
swait()
Bruh2.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
bruh4.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H12.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H13.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H14.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
bruh4.BorderColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H12.BorderColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H13.BorderColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H14.BorderColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H.TextColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H.TextStrokeColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
bruh4.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H.H2.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H.H3.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.US.TextColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.US.TextStrokeColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.PULSE.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
end
end))


Bruh2.H.Text=text

Bruh2.US.Text=modet

Bruh2:TweenPosition(UDim2.new(0,0,.8,0), "Out", "Quad", .2,true)


local function pul()
Bruh2.PULSE:TweenSize(UDim2.new(1.1,0,1.3,0), "Out", "Quint", 1,true)
Bruh2.PULSE.BackgroundTransparency=0
end

local dah=false
coroutine.resume(coroutine.create(function(aaaa)
	for i = 1,string.len(text),1 do
		swait()
		aaaa.Text = string.sub(text,1,i)
	end
end),Bruh2.H)
coroutine.resume(coroutine.create(function(t1,t2,t3,t4)
local mo1=1
local mo2=10
local mo3=0
repeat
	
local hahahaaa={"Black","Crimson","Maroon","Bright red","Cocoa","Really red"}
t1.Rotation=t1.Rotation+1
t2.Rotation=t2.Rotation+1.6
t3.Rotation=t3.Rotation+2.6
t4.Rotation=t4.Rotation+3.8
t1:TweenPosition(UDim2.new(.02+.01*math.sin((tick()*100) / 47),0,-.2+.01*math.cos((tick()*100) / 50),0), "Out", "Quint", .1,true)
t2:TweenPosition(UDim2.new(.1-.01*math.cos((tick()*100) / 48),0,-.14-.01*math.sin((tick()*100) / 49),0), "Out", "Quint", .1,true)
t3:TweenPosition(UDim2.new(.18-.01*math.sin((tick()*100) / 49),0,-.07-.01*math.cos((tick()*100) / 48),0), "Out", "Quint", .1,true)
t4:TweenPosition(UDim2.new(.23+.01*math.cos((tick()*100) / 50),0,-.04+.01*math.sin((tick()*100) / 47),0), "Out", "Quint", .1,true)
if ModeOfGlitch==5 then
	local MAINRUINCOLOR = hahahaaa[math.random(1,#hahahaaa)]
	local SECONDRUINCOLOR = hahahaaa[math.random(1,#hahahaaa)]
Bruh2.BackgroundColor3=MAINRUINCOLOR.Color
bruh4.BackgroundColor3=MAINRUINCOLOR.Color
Bruh2.H12.BackgroundColor3=MAINRUINCOLOR.Color
Bruh2.H13.BackgroundColor3=MAINRUINCOLOR.Color
Bruh2.H14.BackgroundColor3=MAINRUINCOLOR.Color
Bruh2.H1.BorderColor3=SECONDRUINCOLOR.Color
Bruh2.H12.BorderColor3=SECONDRUINCOLOR.Color
Bruh2.H13.BorderColor3=SECONDRUINCOLOR.Color
Bruh2.H14.BorderColor3=SECONDRUINCOLOR.Color
Bruh2.H.TextColor3=MAINRUINCOLOR.Color
Bruh2.H.TextStrokeColor3=SECONDRUINCOLOR.Color
Bruh2.H.BackgroundColor3=SECONDRUINCOLOR.Color
Bruh2.H.H1.BackgroundColor3=SECONDRUINCOLOR.Color
Bruh2.H.H2.BackgroundColor3=SECONDRUINCOLOR.Color
Bruh2.H.H3.BackgroundColor3=SECONDRUINCOLOR.Color
Bruh2.US.TextColor3=SECONDRUINCOLOR.Color
Bruh2.US.TextStrokeColor3=MAINRUINCOLOR.Color
Bruh2.PULSE.BackgroundColor3=SECONDRUINCOLOR.Color
else
Bruh2.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
bruh4.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H12.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H13.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H14.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
bruh4.BorderColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H12.BorderColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H13.BorderColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H14.BorderColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H.TextColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H.TextStrokeColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
bruh4.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H.H2.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H.H3.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.US.TextColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.US.TextStrokeColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.PULSE.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
end
Bruh2.PULSE.BackgroundTransparency=Bruh2.PULSE.BackgroundTransparency+.04
mo1=mo1+2
mo2=mo2-2
mo3=mo3+1
if mo1>=10 then
mo1=1
end
if mo2<=1 then
mo2=10
end
if mo3>=69 then
mo3=0
Bruh2.PULSE.Size=UDim2.new(1,0,1,0)
pul()
end
for i,ss in pairs(Bruh2.H:GetChildren()) do
if ss:IsA("Frame") then
if ss.Name=="V"..mo1 then
ss:TweenSize(UDim2.new(0+(kan.PlaybackLoudness/650),0,.1,0), "Out", "Quart", .2,true)
elseif ss.Name=="V"..mo2 then
ss:TweenSize(UDim2.new(0+(kan.PlaybackLoudness/650),0,.1,0), "Out", "Quart", .2,true)
end
end
end

if dah then
Bruh2.Rotation=Bruh2.Rotation-.2
end

swait()
until t1.Parent==nil or t2.Parent==nil or t3.Parent==nil or t4.Parent==nil
end),bruh4,Bruh2.H12,Bruh2.H13,Bruh2.H14)

pcall(function()
for i=1,watval do
swait()
Bruh2:TweenPosition(UDim2.new(0,0,.8+.02*math.cos((tick()*100) / 61),0), "Out", "Quad", .2,true)
if Bruh.Parent==nil then
break
end
end

if Bruh.Parent~=nil and Bruh2.Parent~=nil then
Bruh2:TweenPosition(UDim2.new(-.1,0,2,0), "In", "Quart", 1.6,true)
dah=true
swait(180)
game.Debris:AddItem(Bruh,0)

end
end)

script:destroy()
end))
end

--(kan,ModeOfGlitch,modet,text,color,color2,watval)
newbosschatfunc(script.Music.Value,script.Mode.Value,script.ModeName.Value,script.Text.Value,script.Color1.Value,script.Color2.Value,script.Ghghghghgh.Value)

end))
LocalScript1.Disabled = true
ScreenGui2.Name = "NewDialog"
ScreenGui2.Parent = LocalScript1
Frame3.Name = "H"
Frame3.Parent = ScreenGui2
Frame3.Position = UDim2.new(-1, 0, 0.800000012, 0)
Frame3.Size = UDim2.new(0.600000024, 0, 0.300000012, 0)
Frame3.AnchorPoint = Vector2.new(0, 0.5)
Frame3.BackgroundColor = BrickColor.new("Crimson")
Frame3.BackgroundColor3 = Color3.new(0.666667, 0, 0)
Frame3.BackgroundTransparency = 0.4000000059604645
Frame3.BorderSizePixel = 0
Frame3.ZIndex = 66
TextLabel4.Name = "H"
TextLabel4.Parent = Frame3
TextLabel4.Position = UDim2.new(0, 0, 0.0500000007, 0)
TextLabel4.Size = UDim2.new(0.930000007, 0, 0.899999976, 0)
TextLabel4.BackgroundColor = BrickColor.new("Really black")
TextLabel4.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel4.BackgroundTransparency = 0.5
TextLabel4.BorderSizePixel = 0
TextLabel4.ZIndex = 69
TextLabel4.Font = Enum.Font.Arcade
TextLabel4.FontSize = Enum.FontSize.Size14
TextLabel4.Text = "aaaaaaaaaaaaaaaaaa"
TextLabel4.TextColor = BrickColor.new("Really black")
TextLabel4.TextColor3 = Color3.new(0, 0, 0)
TextLabel4.TextScaled = true
TextLabel4.TextSize = 14
TextLabel4.TextStrokeColor3 = Color3.new(0.666667, 0, 0)
TextLabel4.TextStrokeTransparency = 0
TextLabel4.TextWrap = true
TextLabel4.TextWrapped = true
TextLabel4.TextXAlignment = Enum.TextXAlignment.Left
TextLabel4.TextYAlignment = Enum.TextYAlignment.Top
Frame5.Name = "H1"
Frame5.Parent = TextLabel4
Frame5.Position = UDim2.new(1, 0, 0, 0)
Frame5.Size = UDim2.new(0.0299999993, 0, 1, 0)
Frame5.BackgroundColor = BrickColor.new("Really black")
Frame5.BackgroundColor3 = Color3.new(0, 0, 0)
Frame5.BackgroundTransparency = 0.550000011920929
Frame5.BorderSizePixel = 0
Frame5.ZIndex = 67
Frame6.Name = "H2"
Frame6.Parent = TextLabel4
Frame6.Position = UDim2.new(1.02999997, 0, 0, 0)
Frame6.Size = UDim2.new(0.0199999996, 0, 1, 0)
Frame6.BackgroundColor = BrickColor.new("Really black")
Frame6.BackgroundColor3 = Color3.new(0, 0, 0)
Frame6.BackgroundTransparency = 0.699999988079071
Frame6.BorderSizePixel = 0
Frame6.ZIndex = 67
Frame7.Name = "H3"
Frame7.Parent = TextLabel4
Frame7.Position = UDim2.new(1.04999995, 0, 0, 0)
Frame7.Size = UDim2.new(0.00999999978, 0, 1, 0)
Frame7.BackgroundColor = BrickColor.new("Really black")
Frame7.BackgroundColor3 = Color3.new(0, 0, 0)
Frame7.BackgroundTransparency = 0.8500000238418579
Frame7.BorderSizePixel = 0
Frame7.ZIndex = 67
Frame8.Name = "V1"
Frame8.Parent = TextLabel4
Frame8.Size = UDim2.new(0, 0, 0.100000001, 0)
Frame8.BackgroundColor = BrickColor.new("Really black")
Frame8.BackgroundColor3 = Color3.new(0, 0, 0)
Frame8.BackgroundTransparency = 0.550000011920929
Frame8.BorderSizePixel = 0
Frame8.ZIndex = 68
Frame9.Name = "V2"
Frame9.Parent = TextLabel4
Frame9.Position = UDim2.new(0, 0, 0.100000001, 0)
Frame9.Size = UDim2.new(0, 0, 0.100000001, 0)
Frame9.BackgroundColor = BrickColor.new("Really black")
Frame9.BackgroundColor3 = Color3.new(0, 0, 0)
Frame9.BackgroundTransparency = 0.550000011920929
Frame9.BorderSizePixel = 0
Frame9.ZIndex = 68
Frame10.Name = "V3"
Frame10.Parent = TextLabel4
Frame10.Position = UDim2.new(0, 0, 0.200000003, 0)
Frame10.Size = UDim2.new(0, 0, 0.100000001, 0)
Frame10.BackgroundColor = BrickColor.new("Really black")
Frame10.BackgroundColor3 = Color3.new(0, 0, 0)
Frame10.BackgroundTransparency = 0.550000011920929
Frame10.BorderSizePixel = 0
Frame10.ZIndex = 68
Frame11.Name = "V4"
Frame11.Parent = TextLabel4
Frame11.Position = UDim2.new(0, 0, 0.300000012, 0)
Frame11.Size = UDim2.new(0, 0, 0.100000001, 0)
Frame11.BackgroundColor = BrickColor.new("Really black")
Frame11.BackgroundColor3 = Color3.new(0, 0, 0)
Frame11.BackgroundTransparency = 0.550000011920929
Frame11.BorderSizePixel = 0
Frame11.ZIndex = 68
Frame12.Name = "V5"
Frame12.Parent = TextLabel4
Frame12.Position = UDim2.new(0, 0, 0.400000006, 0)
Frame12.Size = UDim2.new(0, 0, 0.100000001, 0)
Frame12.BackgroundColor = BrickColor.new("Really black")
Frame12.BackgroundColor3 = Color3.new(0, 0, 0)
Frame12.BackgroundTransparency = 0.550000011920929
Frame12.BorderSizePixel = 0
Frame12.ZIndex = 68
Frame13.Name = "V6"
Frame13.Parent = TextLabel4
Frame13.Position = UDim2.new(0, 0, 0.5, 0)
Frame13.Size = UDim2.new(0, 0, 0.100000001, 0)
Frame13.BackgroundColor = BrickColor.new("Really black")
Frame13.BackgroundColor3 = Color3.new(0, 0, 0)
Frame13.BackgroundTransparency = 0.550000011920929
Frame13.BorderSizePixel = 0
Frame13.ZIndex = 68
Frame14.Name = "V7"
Frame14.Parent = TextLabel4
Frame14.Position = UDim2.new(0, 0, 0.600000024, 0)
Frame14.Size = UDim2.new(0, 0, 0.100000001, 0)
Frame14.BackgroundColor = BrickColor.new("Really black")
Frame14.BackgroundColor3 = Color3.new(0, 0, 0)
Frame14.BackgroundTransparency = 0.550000011920929
Frame14.BorderSizePixel = 0
Frame14.ZIndex = 68
Frame15.Name = "V9"
Frame15.Parent = TextLabel4
Frame15.Position = UDim2.new(0, 0, 0.800000012, 0)
Frame15.Size = UDim2.new(0, 0, 0.100000001, 0)
Frame15.BackgroundColor = BrickColor.new("Really black")
Frame15.BackgroundColor3 = Color3.new(0, 0, 0)
Frame15.BackgroundTransparency = 0.550000011920929
Frame15.BorderSizePixel = 0
Frame15.ZIndex = 68
Frame16.Name = "V8"
Frame16.Parent = TextLabel4
Frame16.Position = UDim2.new(0, 0, 0.699999988, 0)
Frame16.Size = UDim2.new(0, 0, 0.100000001, 0)
Frame16.BackgroundColor = BrickColor.new("Really black")
Frame16.BackgroundColor3 = Color3.new(0, 0, 0)
Frame16.BackgroundTransparency = 0.550000011920929
Frame16.BorderSizePixel = 0
Frame16.ZIndex = 68
Frame17.Name = "V10"
Frame17.Parent = TextLabel4
Frame17.Position = UDim2.new(0, 0, 0.899999976, 0)
Frame17.Size = UDim2.new(0, 0, 0.100000001, 0)
Frame17.BackgroundColor = BrickColor.new("Really black")
Frame17.BackgroundColor3 = Color3.new(0, 0, 0)
Frame17.BackgroundTransparency = 0.550000011920929
Frame17.BorderSizePixel = 0
Frame17.ZIndex = 68
Frame18.Name = "H1"
Frame18.Parent = Frame3
Frame18.Position = UDim2.new(0.0199999996, 0, -0.200000003, 0)
Frame18.Rotation = 45
Frame18.Size = UDim2.new(0, 70, 0, 70)
Frame18.AnchorPoint = Vector2.new(0.5, 0.5)
Frame18.BackgroundColor = BrickColor.new("Really black")
Frame18.BackgroundColor3 = Color3.new(0, 0, 0)
Frame18.BackgroundTransparency = 0.30000001192092896
Frame18.BorderColor = BrickColor.new("Crimson")
Frame18.BorderColor3 = Color3.new(0.666667, 0, 0)
Frame18.BorderSizePixel = 5
Frame18.ZIndex = 4
Frame19.Name = "H12"
Frame19.Parent = Frame3
Frame19.Position = UDim2.new(0.100000001, 0, -0.140000001, 0)
Frame19.Rotation = 70
Frame19.Size = UDim2.new(0, 60, 0, 60)
Frame19.AnchorPoint = Vector2.new(0.5, 0.5)
Frame19.BackgroundColor = BrickColor.new("Really black")
Frame19.BackgroundColor3 = Color3.new(0, 0, 0)
Frame19.BackgroundTransparency = 0.4000000059604645
Frame19.BorderColor = BrickColor.new("Crimson")
Frame19.BorderColor3 = Color3.new(0.666667, 0, 0)
Frame19.BorderSizePixel = 5
Frame19.ZIndex = 3
Frame20.Name = "H13"
Frame20.Parent = Frame3
Frame20.Position = UDim2.new(0.180000007, 0, -0.0700000003, 0)
Frame20.Rotation = 105
Frame20.Size = UDim2.new(0, 40, 0, 40)
Frame20.AnchorPoint = Vector2.new(0.5, 0.5)
Frame20.BackgroundColor = BrickColor.new("Really black")
Frame20.BackgroundColor3 = Color3.new(0, 0, 0)
Frame20.BackgroundTransparency = 0.4000000059604645
Frame20.BorderColor = BrickColor.new("Crimson")
Frame20.BorderColor3 = Color3.new(0.666667, 0, 0)
Frame20.BorderSizePixel = 5
Frame20.ZIndex = 2
Frame21.Name = "H14"
Frame21.Parent = Frame3
Frame21.Position = UDim2.new(0.230000004, 0, -0.0399999991, 0)
Frame21.Rotation = 120
Frame21.Size = UDim2.new(0, 20, 0, 20)
Frame21.AnchorPoint = Vector2.new(0.5, 0.5)
Frame21.BackgroundColor = BrickColor.new("Really black")
Frame21.BackgroundColor3 = Color3.new(0, 0, 0)
Frame21.BackgroundTransparency = 0.4000000059604645
Frame21.BorderColor = BrickColor.new("Crimson")
Frame21.BorderColor3 = Color3.new(0.666667, 0, 0)
Frame21.BorderSizePixel = 5
TextLabel22.Name = "US"
TextLabel22.Parent = Frame3
TextLabel22.Position = UDim2.new(0, 0, 0.0500000007, 0)
TextLabel22.Size = UDim2.new(0.930000007, 0, 0.300000012, 0)
TextLabel22.AnchorPoint = Vector2.new(0, 1)
TextLabel22.BackgroundColor = BrickColor.new("Really black")
TextLabel22.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel22.BackgroundTransparency = 1
TextLabel22.ZIndex = 67
TextLabel22.Font = Enum.Font.Arcade
TextLabel22.FontSize = Enum.FontSize.Size14
TextLabel22.Text = "METALEMPSYSIS"
TextLabel22.TextColor = BrickColor.new("Crimson")
TextLabel22.TextColor3 = Color3.new(0.666667, 0, 0)
TextLabel22.TextScaled = true
TextLabel22.TextSize = 14
TextLabel22.TextStrokeTransparency = 0
TextLabel22.TextWrap = true
TextLabel22.TextWrapped = true
TextLabel22.TextXAlignment = Enum.TextXAlignment.Left
Frame23.Name = "PULSE"
Frame23.Parent = Frame3
Frame23.Position = UDim2.new(0, 0, 0.5, 0)
Frame23.Size = UDim2.new(1, 0, 1, 0)
Frame23.AnchorPoint = Vector2.new(0, 0.5)
Frame23.BackgroundColor = BrickColor.new("Crimson")
Frame23.BackgroundColor3 = Color3.new(0.666667, 0, 0)
Frame23.BackgroundTransparency = 0.4000000059604645
Frame23.BorderSizePixel = 0
Frame23.ZIndex = 63
ObjectValue24.Name = "Music"
ObjectValue24.Parent = LocalScript1
NumberValue25.Name = "Mode"
NumberValue25.Parent = LocalScript1
StringValue26.Name = "ModeName"
StringValue26.Parent = LocalScript1
StringValue27.Name = "Text"
StringValue27.Parent = LocalScript1
Color3Value28.Name = "Color1"
Color3Value28.Parent = LocalScript1
Color3Value29.Name = "Color2"
Color3Value29.Parent = LocalScript1
NumberValue30.Name = "Ghghghghgh"
NumberValue30.Parent = LocalScript1
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
mas = Instance.new("Model",game:GetService("Lighting"))
Folder31 = Instance.new("Folder")
LocalScript32 = Instance.new("LocalScript")
ScreenGui33 = Instance.new("ScreenGui")
Frame34 = Instance.new("Frame")
TextLabel35 = Instance.new("TextLabel")
Frame36 = Instance.new("Frame")
Frame37 = Instance.new("Frame")
Frame38 = Instance.new("Frame")
Frame39 = Instance.new("Frame")
Frame40 = Instance.new("Frame")
Frame41 = Instance.new("Frame")
Frame42 = Instance.new("Frame")
Frame43 = Instance.new("Frame")
Frame44 = Instance.new("Frame")
Frame45 = Instance.new("Frame")
Frame46 = Instance.new("Frame")
Frame47 = Instance.new("Frame")
Frame48 = Instance.new("Frame")
Frame49 = Instance.new("Frame")
Frame50 = Instance.new("Frame")
Frame51 = Instance.new("Frame")
Frame52 = Instance.new("Frame")
TextLabel53 = Instance.new("TextLabel")
Frame54 = Instance.new("Frame")
ObjectValue55 = Instance.new("ObjectValue")
NumberValue56 = Instance.new("NumberValue")
StringValue57 = Instance.new("StringValue")
StringValue58 = Instance.new("StringValue")
Color3Value59 = Instance.new("Color3Value")
Color3Value60 = Instance.new("Color3Value")
NumberValue61 = Instance.new("NumberValue")
Folder31.Name = "Effects"
Folder31.Parent = game.Workspace
LocalScript32.Name = "BossChat"
LocalScript32.Parent = Folder31
table.insert(cors,sandbox(LocalScript32,function()
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")
Frame_Speed = 1 / 60
frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()

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

------------------
function swait(num)
if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, num do
			ArtificialHB.Event:wait()
		end
	end
end
Create=function(obj)
				local inst = Instance.new(obj)
				return function(props)
					for prop,valu in next, props do
						inst[prop]=valu
					end
					return inst
				end	
			end
Echo = function(id, par, vol, pit, timepos,delays,echodelay,fedb,dryl)
				local Sas = Create("Sound"){
					Volume = vol,
                    Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
                    TimePosition = timepos,
					Parent = par or workspace,
				}
				local E = Create("EchoSoundEffect"){
					Delay = echodelay,
                    Name = "Echo",
					Feedback = fedb,
                    DryLevel = dryl,
					Parent = Sas,
				}
				wait()
				Sas:play()
				game:GetService("Debris"):AddItem(Sas, delays)
end

local cR=255
local cG=0
local cB=0
local flg5=1 local omgidk=1
local add=15
game:GetService("RunService").Heartbeat:Connect(function()
	if omgidk>10000 then omgidk=0 end
	omgidk=omgidk+1
	if cR>=255 then flg5=1 end
	if cG>=255 then flg5=2 end
	if cB>=255 then flg5=3 end
	if flg5==1 then cR=cR-add cG=cG+add end
	if flg5==2 then cG=cG-add cB=cB+add end
	if flg5==3 then cB=cB-add cR=cR+add end
	
end)
v=game:service'Players'.localPlayer
function newbosschatfunc(kan,ModeOfGlitch,modet,text,color,color2,watval)
coroutine.resume(coroutine.create(function()
if v.PlayerGui:FindFirstChild("NewDialog")~= nil then
v.PlayerGui:FindFirstChild("NewDialog"):destroy()
end
local Bruh=script.NewDialog:Clone()
Bruh.Parent=v.PlayerGui
local Bruh2=Bruh.H
local bruh3 = Bruh.H.H1
local bruh4 = Bruh2.H1
game:GetService("Debris"):AddItem(Bruh,120)
--local scrg = Instance.new("ScreenGui",v.PlayerGui)
Echo("rbxassetid://525200869", Bruh, 0.5, 1,0,10,0.1,0.25,1)

--V bad code - salvo
coroutine.resume(coroutine.create(function()
while true do
swait()
Bruh2.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
bruh4.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H12.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H13.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H14.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
bruh4.BorderColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H12.BorderColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H13.BorderColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H14.BorderColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H.TextColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H.TextStrokeColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
bruh4.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H.H2.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H.H3.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.US.TextColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.US.TextStrokeColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.PULSE.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
end
end))


Bruh2.H.Text=text

Bruh2.US.Text=modet

Bruh2:TweenPosition(UDim2.new(0,0,.8,0), "Out", "Quad", .2,true)


local function pul()
Bruh2.PULSE:TweenSize(UDim2.new(1.1,0,1.3,0), "Out", "Quint", 1,true)
Bruh2.PULSE.BackgroundTransparency=0
end

local dah=false
coroutine.resume(coroutine.create(function(aaaa)
	for i = 1,string.len(text),1 do
		swait()
		aaaa.Text = string.sub(text,1,i)
	end
end),Bruh2.H)
coroutine.resume(coroutine.create(function(t1,t2,t3,t4)
local mo1=1
local mo2=10
local mo3=0
repeat
	
local hahahaaa={"Black","Crimson","Maroon","Bright red","Cocoa","Really red"}
t1.Rotation=t1.Rotation+1
t2.Rotation=t2.Rotation+1.6
t3.Rotation=t3.Rotation+2.6
t4.Rotation=t4.Rotation+3.8
t1:TweenPosition(UDim2.new(.02+.01*math.sin((tick()*100) / 47),0,-.2+.01*math.cos((tick()*100) / 50),0), "Out", "Quint", .1,true)
t2:TweenPosition(UDim2.new(.1-.01*math.cos((tick()*100) / 48),0,-.14-.01*math.sin((tick()*100) / 49),0), "Out", "Quint", .1,true)
t3:TweenPosition(UDim2.new(.18-.01*math.sin((tick()*100) / 49),0,-.07-.01*math.cos((tick()*100) / 48),0), "Out", "Quint", .1,true)
t4:TweenPosition(UDim2.new(.23+.01*math.cos((tick()*100) / 50),0,-.04+.01*math.sin((tick()*100) / 47),0), "Out", "Quint", .1,true)
if ModeOfGlitch==5 then
	local MAINRUINCOLOR = hahahaaa[math.random(1,#hahahaaa)]
	local SECONDRUINCOLOR = hahahaaa[math.random(1,#hahahaaa)]
Bruh2.BackgroundColor3=MAINRUINCOLOR.Color
bruh4.BackgroundColor3=MAINRUINCOLOR.Color
Bruh2.H12.BackgroundColor3=MAINRUINCOLOR.Color
Bruh2.H13.BackgroundColor3=MAINRUINCOLOR.Color
Bruh2.H14.BackgroundColor3=MAINRUINCOLOR.Color
Bruh2.H1.BorderColor3=SECONDRUINCOLOR.Color
Bruh2.H12.BorderColor3=SECONDRUINCOLOR.Color
Bruh2.H13.BorderColor3=SECONDRUINCOLOR.Color
Bruh2.H14.BorderColor3=SECONDRUINCOLOR.Color
Bruh2.H.TextColor3=MAINRUINCOLOR.Color
Bruh2.H.TextStrokeColor3=SECONDRUINCOLOR.Color
Bruh2.H.BackgroundColor3=SECONDRUINCOLOR.Color
Bruh2.H.H1.BackgroundColor3=SECONDRUINCOLOR.Color
Bruh2.H.H2.BackgroundColor3=SECONDRUINCOLOR.Color
Bruh2.H.H3.BackgroundColor3=SECONDRUINCOLOR.Color
Bruh2.US.TextColor3=SECONDRUINCOLOR.Color
Bruh2.US.TextStrokeColor3=MAINRUINCOLOR.Color
Bruh2.PULSE.BackgroundColor3=SECONDRUINCOLOR.Color
else
Bruh2.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
bruh4.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H12.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H13.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H14.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
bruh4.BorderColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H12.BorderColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H13.BorderColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H14.BorderColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H.TextColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H.TextStrokeColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
bruh4.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H.H2.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.H.H3.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.US.TextColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.US.TextStrokeColor3=Color3.fromRGB(cR,cG,cB)
Bruh2.PULSE.BackgroundColor3=Color3.fromRGB(cR,cG,cB)
end
Bruh2.PULSE.BackgroundTransparency=Bruh2.PULSE.BackgroundTransparency+.04
mo1=mo1+2
mo2=mo2-2
mo3=mo3+1
if mo1>=10 then
mo1=1
end
if mo2<=1 then
mo2=10
end
if mo3>=69 then
mo3=0
Bruh2.PULSE.Size=UDim2.new(1,0,1,0)
pul()
end
for i,ss in pairs(Bruh2.H:GetChildren()) do
if ss:IsA("Frame") then
if ss.Name=="V"..mo1 then
ss:TweenSize(UDim2.new(0+(kan.PlaybackLoudness/650),0,.1,0), "Out", "Quart", .2,true)
elseif ss.Name=="V"..mo2 then
ss:TweenSize(UDim2.new(0+(kan.PlaybackLoudness/650),0,.1,0), "Out", "Quart", .2,true)
end
end
end

if dah then
Bruh2.Rotation=Bruh2.Rotation-.2
end

swait()
until t1.Parent==nil or t2.Parent==nil or t3.Parent==nil or t4.Parent==nil
end),bruh4,Bruh2.H12,Bruh2.H13,Bruh2.H14)

pcall(function()
for i=1,watval do
swait()
Bruh2:TweenPosition(UDim2.new(0,0,.8+.02*math.cos((tick()*100) / 61),0), "Out", "Quad", .2,true)
if Bruh.Parent==nil then
break
end
end

if Bruh.Parent~=nil and Bruh2.Parent~=nil then
Bruh2:TweenPosition(UDim2.new(-.1,0,2,0), "In", "Quart", 1.6,true)
dah=true
swait(180)
game.Debris:AddItem(Bruh,0)

end
end)

script:destroy()
end))
end

--(kan,ModeOfGlitch,modet,text,color,color2,watval)
newbosschatfunc(script.Music.Value,script.Mode.Value,script.ModeName.Value,script.Text.Value,script.Color1.Value,script.Color2.Value,script.Ghghghghgh.Value)

end))
LocalScript32.Disabled = true
ScreenGui33.Name = "NewDialog"
ScreenGui33.Parent = LocalScript32
Frame34.Name = "H"
Frame34.Parent = ScreenGui33
Frame34.Position = UDim2.new(-1, 0, 0.800000012, 0)
Frame34.Size = UDim2.new(0.600000024, 0, 0.300000012, 0)
Frame34.AnchorPoint = Vector2.new(0, 0.5)
Frame34.BackgroundColor = BrickColor.new("Crimson")
Frame34.BackgroundColor3 = Color3.new(0.666667, 0, 0)
Frame34.BackgroundTransparency = 0.4000000059604645
Frame34.BorderSizePixel = 0
Frame34.ZIndex = 66
TextLabel35.Name = "H"
TextLabel35.Parent = Frame34
TextLabel35.Position = UDim2.new(0, 0, 0.0500000007, 0)
TextLabel35.Size = UDim2.new(0.930000007, 0, 0.899999976, 0)
TextLabel35.BackgroundColor = BrickColor.new("Really black")
TextLabel35.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel35.BackgroundTransparency = 0.5
TextLabel35.BorderSizePixel = 0
TextLabel35.ZIndex = 69
TextLabel35.Font = Enum.Font.Arcade
TextLabel35.FontSize = Enum.FontSize.Size14
TextLabel35.Text = "aaaaaaaaaaaaaaaaaa"
TextLabel35.TextColor = BrickColor.new("Really black")
TextLabel35.TextColor3 = Color3.new(0, 0, 0)
TextLabel35.TextScaled = true
TextLabel35.TextSize = 14
TextLabel35.TextStrokeColor3 = Color3.new(0.666667, 0, 0)
TextLabel35.TextStrokeTransparency = 0
TextLabel35.TextWrap = true
TextLabel35.TextWrapped = true
TextLabel35.TextXAlignment = Enum.TextXAlignment.Left
TextLabel35.TextYAlignment = Enum.TextYAlignment.Top
Frame36.Name = "H1"
Frame36.Parent = TextLabel35
Frame36.Position = UDim2.new(1, 0, 0, 0)
Frame36.Size = UDim2.new(0.0299999993, 0, 1, 0)
Frame36.BackgroundColor = BrickColor.new("Really black")
Frame36.BackgroundColor3 = Color3.new(0, 0, 0)
Frame36.BackgroundTransparency = 0.550000011920929
Frame36.BorderSizePixel = 0
Frame36.ZIndex = 67
Frame37.Name = "H2"
Frame37.Parent = TextLabel35
Frame37.Position = UDim2.new(1.02999997, 0, 0, 0)
Frame37.Size = UDim2.new(0.0199999996, 0, 1, 0)
Frame37.BackgroundColor = BrickColor.new("Really black")
Frame37.BackgroundColor3 = Color3.new(0, 0, 0)
Frame37.BackgroundTransparency = 0.699999988079071
Frame37.BorderSizePixel = 0
Frame37.ZIndex = 67
Frame38.Name = "H3"
Frame38.Parent = TextLabel35
Frame38.Position = UDim2.new(1.04999995, 0, 0, 0)
Frame38.Size = UDim2.new(0.00999999978, 0, 1, 0)
Frame38.BackgroundColor = BrickColor.new("Really black")
Frame38.BackgroundColor3 = Color3.new(0, 0, 0)
Frame38.BackgroundTransparency = 0.8500000238418579
Frame38.BorderSizePixel = 0
Frame38.ZIndex = 67
Frame39.Name = "V1"
Frame39.Parent = TextLabel35
Frame39.Size = UDim2.new(0, 0, 0.100000001, 0)
Frame39.BackgroundColor = BrickColor.new("Really black")
Frame39.BackgroundColor3 = Color3.new(0, 0, 0)
Frame39.BackgroundTransparency = 0.550000011920929
Frame39.BorderSizePixel = 0
Frame39.ZIndex = 68
Frame40.Name = "V2"
Frame40.Parent = TextLabel35
Frame40.Position = UDim2.new(0, 0, 0.100000001, 0)
Frame40.Size = UDim2.new(0, 0, 0.100000001, 0)
Frame40.BackgroundColor = BrickColor.new("Really black")
Frame40.BackgroundColor3 = Color3.new(0, 0, 0)
Frame40.BackgroundTransparency = 0.550000011920929
Frame40.BorderSizePixel = 0
Frame40.ZIndex = 68
Frame41.Name = "V3"
Frame41.Parent = TextLabel35
Frame41.Position = UDim2.new(0, 0, 0.200000003, 0)
Frame41.Size = UDim2.new(0, 0, 0.100000001, 0)
Frame41.BackgroundColor = BrickColor.new("Really black")
Frame41.BackgroundColor3 = Color3.new(0, 0, 0)
Frame41.BackgroundTransparency = 0.550000011920929
Frame41.BorderSizePixel = 0
Frame41.ZIndex = 68
Frame42.Name = "V4"
Frame42.Parent = TextLabel35
Frame42.Position = UDim2.new(0, 0, 0.300000012, 0)
Frame42.Size = UDim2.new(0, 0, 0.100000001, 0)
Frame42.BackgroundColor = BrickColor.new("Really black")
Frame42.BackgroundColor3 = Color3.new(0, 0, 0)
Frame42.BackgroundTransparency = 0.550000011920929
Frame42.BorderSizePixel = 0
Frame42.ZIndex = 68
Frame43.Name = "V5"
Frame43.Parent = TextLabel35
Frame43.Position = UDim2.new(0, 0, 0.400000006, 0)
Frame43.Size = UDim2.new(0, 0, 0.100000001, 0)
Frame43.BackgroundColor = BrickColor.new("Really black")
Frame43.BackgroundColor3 = Color3.new(0, 0, 0)
Frame43.BackgroundTransparency = 0.550000011920929
Frame43.BorderSizePixel = 0
Frame43.ZIndex = 68
Frame44.Name = "V6"
Frame44.Parent = TextLabel35
Frame44.Position = UDim2.new(0, 0, 0.5, 0)
Frame44.Size = UDim2.new(0, 0, 0.100000001, 0)
Frame44.BackgroundColor = BrickColor.new("Really black")
Frame44.BackgroundColor3 = Color3.new(0, 0, 0)
Frame44.BackgroundTransparency = 0.550000011920929
Frame44.BorderSizePixel = 0
Frame44.ZIndex = 68
Frame45.Name = "V7"
Frame45.Parent = TextLabel35
Frame45.Position = UDim2.new(0, 0, 0.600000024, 0)
Frame45.Size = UDim2.new(0, 0, 0.100000001, 0)
Frame45.BackgroundColor = BrickColor.new("Really black")
Frame45.BackgroundColor3 = Color3.new(0, 0, 0)
Frame45.BackgroundTransparency = 0.550000011920929
Frame45.BorderSizePixel = 0
Frame45.ZIndex = 68
Frame46.Name = "V9"
Frame46.Parent = TextLabel35
Frame46.Position = UDim2.new(0, 0, 0.800000012, 0)
Frame46.Size = UDim2.new(0, 0, 0.100000001, 0)
Frame46.BackgroundColor = BrickColor.new("Really black")
Frame46.BackgroundColor3 = Color3.new(0, 0, 0)
Frame46.BackgroundTransparency = 0.550000011920929
Frame46.BorderSizePixel = 0
Frame46.ZIndex = 68
Frame47.Name = "V8"
Frame47.Parent = TextLabel35
Frame47.Position = UDim2.new(0, 0, 0.699999988, 0)
Frame47.Size = UDim2.new(0, 0, 0.100000001, 0)
Frame47.BackgroundColor = BrickColor.new("Really black")
Frame47.BackgroundColor3 = Color3.new(0, 0, 0)
Frame47.BackgroundTransparency = 0.550000011920929
Frame47.BorderSizePixel = 0
Frame47.ZIndex = 68
Frame48.Name = "V10"
Frame48.Parent = TextLabel35
Frame48.Position = UDim2.new(0, 0, 0.899999976, 0)
Frame48.Size = UDim2.new(0, 0, 0.100000001, 0)
Frame48.BackgroundColor = BrickColor.new("Really black")
Frame48.BackgroundColor3 = Color3.new(0, 0, 0)
Frame48.BackgroundTransparency = 0.550000011920929
Frame48.BorderSizePixel = 0
Frame48.ZIndex = 68
Frame49.Name = "H1"
Frame49.Parent = Frame34
Frame49.Position = UDim2.new(0.0199999996, 0, -0.200000003, 0)
Frame49.Rotation = 45
Frame49.Size = UDim2.new(0, 70, 0, 70)
Frame49.AnchorPoint = Vector2.new(0.5, 0.5)
Frame49.BackgroundColor = BrickColor.new("Really black")
Frame49.BackgroundColor3 = Color3.new(0, 0, 0)
Frame49.BackgroundTransparency = 0.30000001192092896
Frame49.BorderColor = BrickColor.new("Crimson")
Frame49.BorderColor3 = Color3.new(0.666667, 0, 0)
Frame49.BorderSizePixel = 5
Frame49.ZIndex = 4
Frame50.Name = "H12"
Frame50.Parent = Frame34
Frame50.Position = UDim2.new(0.100000001, 0, -0.140000001, 0)
Frame50.Rotation = 70
Frame50.Size = UDim2.new(0, 60, 0, 60)
Frame50.AnchorPoint = Vector2.new(0.5, 0.5)
Frame50.BackgroundColor = BrickColor.new("Really black")
Frame50.BackgroundColor3 = Color3.new(0, 0, 0)
Frame50.BackgroundTransparency = 0.4000000059604645
Frame50.BorderColor = BrickColor.new("Crimson")
Frame50.BorderColor3 = Color3.new(0.666667, 0, 0)
Frame50.BorderSizePixel = 5
Frame50.ZIndex = 3
Frame51.Name = "H13"
Frame51.Parent = Frame34
Frame51.Position = UDim2.new(0.180000007, 0, -0.0700000003, 0)
Frame51.Rotation = 105
Frame51.Size = UDim2.new(0, 40, 0, 40)
Frame51.AnchorPoint = Vector2.new(0.5, 0.5)
Frame51.BackgroundColor = BrickColor.new("Really black")
Frame51.BackgroundColor3 = Color3.new(0, 0, 0)
Frame51.BackgroundTransparency = 0.4000000059604645
Frame51.BorderColor = BrickColor.new("Crimson")
Frame51.BorderColor3 = Color3.new(0.666667, 0, 0)
Frame51.BorderSizePixel = 5
Frame51.ZIndex = 2
Frame52.Name = "H14"
Frame52.Parent = Frame34
Frame52.Position = UDim2.new(0.230000004, 0, -0.0399999991, 0)
Frame52.Rotation = 120
Frame52.Size = UDim2.new(0, 20, 0, 20)
Frame52.AnchorPoint = Vector2.new(0.5, 0.5)
Frame52.BackgroundColor = BrickColor.new("Really black")
Frame52.BackgroundColor3 = Color3.new(0, 0, 0)
Frame52.BackgroundTransparency = 0.4000000059604645
Frame52.BorderColor = BrickColor.new("Crimson")
Frame52.BorderColor3 = Color3.new(0.666667, 0, 0)
Frame52.BorderSizePixel = 5
TextLabel53.Name = "US"
TextLabel53.Parent = Frame34
TextLabel53.Position = UDim2.new(0, 0, 0.0500000007, 0)
TextLabel53.Size = UDim2.new(0.930000007, 0, 0.300000012, 0)
TextLabel53.AnchorPoint = Vector2.new(0, 1)
TextLabel53.BackgroundColor = BrickColor.new("Really black")
TextLabel53.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel53.BackgroundTransparency = 1
TextLabel53.ZIndex = 67
TextLabel53.Font = Enum.Font.Arcade
TextLabel53.FontSize = Enum.FontSize.Size14
TextLabel53.Text = "METALEMPSYSIS"
TextLabel53.TextColor = BrickColor.new("Crimson")
TextLabel53.TextColor3 = Color3.new(0.666667, 0, 0)
TextLabel53.TextScaled = true
TextLabel53.TextSize = 14
TextLabel53.TextStrokeTransparency = 0
TextLabel53.TextWrap = true
TextLabel53.TextWrapped = true
TextLabel53.TextXAlignment = Enum.TextXAlignment.Left
Frame54.Name = "PULSE"
Frame54.Parent = Frame34
Frame54.Position = UDim2.new(0, 0, 0.5, 0)
Frame54.Size = UDim2.new(1, 0, 1, 0)
Frame54.AnchorPoint = Vector2.new(0, 0.5)
Frame54.BackgroundColor = BrickColor.new("Crimson")
Frame54.BackgroundColor3 = Color3.new(0.666667, 0, 0)
Frame54.BackgroundTransparency = 0.4000000059604645
Frame54.BorderSizePixel = 0
Frame54.ZIndex = 63
ObjectValue55.Name = "Music"
ObjectValue55.Parent = LocalScript32
NumberValue56.Name = "Mode"
NumberValue56.Parent = LocalScript32
StringValue57.Name = "ModeName"
StringValue57.Parent = LocalScript32
StringValue58.Name = "Text"
StringValue58.Parent = LocalScript32
Color3Value59.Name = "Color1"
Color3Value59.Parent = LocalScript32
Color3Value60.Name = "Color2"
Color3Value60.Parent = LocalScript32
NumberValue61.Name = "Ghghghghgh"
NumberValue61.Parent = LocalScript32
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
wait(2)
local script = game:GetObjects("rbxassetid://9526699214")[1]

local Player = game:GetService("Players").LocalPlayer
local remote = {}
local clientevent = false
script.LoadLibrary.Parent = game:GetService("ReplicatedStorage")
local Mouse,mouse,UserInputService,ContextActionService
do
	script.Parent = Player.Character
	local CAS = {Actions={}}
	local Event = Instance.new("RemoteEvent")
	Event.Name = "UserInput_Event"
	Event.Parent = Player.Character
	local fakeEvent = function()
		local t = {_fakeEvent=true}
		t.Connect = function(self,f)self.Function=f end
		t.connect = t.Connect
		return t
	end
    local m = {Target=nil,Hit=CFrame.new(),KeyUp=fakeEvent(),KeyDown=fakeEvent(),Button1Up=fakeEvent(),Button1Down=fakeEvent()}
	local UIS = {InputBegan=fakeEvent(),InputEnded=fakeEvent()}
	function CAS:BindAction(name,fun,touch,...)
		CAS.Actions[name] = {Name=name,Function=fun,Keys={...}}
	end
	function CAS:UnbindAction(name)
		CAS.Actions[name] = nil
	end
	local function te(self,ev,...)
		local t = m[ev]
		if t and t._fakeEvent and t.Function then
			t.Function(...)
		end
	end
	m.TrigEvent = te
	UIS.TrigEvent = te
	clientevent = (function(plr,io)
	    if plr~=Player then return end
		if io.isMouse then
			m.Target = io.Target
			m.Hit = io.Hit
		elseif io.UserInputType == Enum.UserInputType.MouseButton1 then
	        if io.UserInputState == Enum.UserInputState.Begin then
				m:TrigEvent("Button1Down")
			else
				m:TrigEvent("Button1Up")
			end
		else
			for n,t in pairs(CAS.Actions) do
				for _,k in pairs(t.Keys) do
					if k==io.KeyCode then
						t.Function(t.Name,io.UserInputState,io)
					end
				end
			end
	        if io.UserInputState == Enum.UserInputState.Begin then
	            m:TrigEvent("KeyDown",io.KeyCode.Name:lower())
				UIS:TrigEvent("InputBegan",io,false)
			else
				m:TrigEvent("KeyUp",io.KeyCode.Name:lower())
				UIS:TrigEvent("InputEnded",io,false)
	        end
	    end
	end)
	Mouse,mouse,UserInputService,ContextActionService = Player:GetMouse(),Player:GetMouse(),game:GetService("UserInputService"),game:GetService("ContextActionService")
	end

wait(0.2)


PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]

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

--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

Animation_Speed = 3
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)
local Speed = 16
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local DAMAGEMULTIPLIER = 1
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local Rooted = false
local SINE = 0
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local VALUE1 = false
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
--ROBLOXIDLEANIMATION.Parent = Humanoid
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "Weapon GUI"
local re = IT("Model")
re.Name = "Adds"
local Effects = IT("Folder", Character)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local UNANCHOR = true
local CUSTOMANGLES = true
local CLOCKLOOP = 0
local SONG = 1382488262
local CLOCKTARGET = nil
local CLOCKSPEED = 0
script.Parent = WEAPONGUI

--//=================================\\
--\\=================================//


--//=================================\\
--|| SAZERENOS' ARTIFICIAL HEARTBEAT
--\\=================================//

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")

frame = Frame_Speed
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

--//=================================\\
--\\=================================//

--//=================================\\
--|| 	      SOME FUNCTIONS
--\\=================================//

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

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

function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
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
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end


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

function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end

function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = TEXTCOLOR
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = false
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end

function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
end

function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end

local S = IT("Sound")
function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
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
			repeat wait(1) until NEWSOUND.Playing == false
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end

function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

--WACKYEFFECT({EffectType = "", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
function WACKYEFFECT(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or VT(1,1,1))
	local ENDSIZE = (Table.Size2 or VT(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or C3(1,1,1))
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
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1,1,1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0,0,0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X,SIZE.X,0.1), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "168892432", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
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
				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			if USEBOOMERANGMATH == true then
				for LOOP = 1, TIME+1 do
					Swait()
					MSH.Scale = MSH.Scale - (VT((GROWTH.X)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Y)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Z)*((1 - (LOOP/TIME)*BOOMR2)))*BOOMR2)/TIME
					if TYPE == "Wave" then
						MSH.Offset = VT(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-(MOVESPEED)*((1 - (LOOP/TIME)*BOOMR1)))
						EFFECT.CFrame = CF(EFFECT.Position)*ANGLES(RAD(ORI.X),RAD(ORI.Y),RAD(ORI.Z))
					end
				end
			else
				for LOOP = 1, TIME+1 do
					Swait()
					MSH.Scale = MSH.Scale - GROWTH/TIME
					if TYPE == "Wave" then
						MSH.Offset = VT(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
						EFFECT.CFrame = CF(EFFECT.Position)*ANGLES(RAD(ORI.X),RAD(ORI.Y),RAD(ORI.Z))
					end
				end
			end
			EFFECT.Transparency = 1
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end
	end))
end

function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end

Debris = game:GetService("Debris")

function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos,EndPos).lookVector
	local Ignore = ((type(Ignore) == "table" and Ignore) or {Ignore})
	return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, DIRECTION * Distance), Ignore)
end
--ld
local cR=255
local cG=0
local cB=0
local flg5=1 local omgidk=1
local add=15
game:GetService("RunService").Heartbeat:Connect(function()
	if omgidk>10000 then omgidk=0 end
	omgidk=omgidk+1
	if cR>=255 then flg5=1 end
	if cG>=255 then flg5=2 end
	if cB>=255 then flg5=3 end
	if flg5==1 then cR=cR-add cG=cG+add end
	if flg5==2 then cG=cG-add cB=cB+add end
	if flg5==3 then cB=cB-add cR=cR+add end
	color=Color3.fromRGB(cR,cG,cB)

end)
--rr
local Particle = IT("ParticleEmitter",nil)
Particle.Enabled = false
Particle.LightEmission = 0.8
Particle.Rate = 150
Particle.ZOffset = 1
Particle.Rotation = NumberRange.new(-180, 180)
--ParticleEmitter({Speed = 5, RotSpeed = NumberRange.new(-15, 15), Drag = 0, Size1 = 1, Size2 = 5, Lifetime1 = 1, Lifetime2 = 1.5, Parent = Torso, Emit = 100, Offset = 360, Enabled = false, Color1 = C3(1,1,1), Color2 = C3(1,1,1), Texture = ""})
function ParticleEmitter(Table)
	local PRTCL = Particle:Clone()
	local Color1 = Table.Color1 or C3(1,1,1)
	local Color2 = Table.Color2 or C3(1,1,1)
	local Speed = Table.Speed or 5
	local Drag = Table.Drag or 0
	local Size1 = Table.Size1 or 1
	local Size2 = Table.Size2 or 5
	local Lifetime1 = Table.Lifetime1 or 1
	local Lifetime2 = Table.Lifetime2 or 1.5
	local Parent = Table.Parent or Torso
	local Emit = Table.Emit or 100
	local Offset = Table.Offset or 360
	local Acel = Table.Acel or VT(0,0,0)
	local Enabled = Table.Enabled or false
	local Texture = Table.Texture or "281983280"
	local RotS = Table.RotSpeed or NumberRange.new(-15, 15)
	local Trans1 = Table.Transparency1 or 0
	local Trans2 = Table.Transparency2 or 0
	PRTCL.Parent = Parent
	PRTCL.RotSpeed = RotS
	PRTCL.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,Trans1),NumberSequenceKeypoint.new(1,Trans2)})
	PRTCL.Texture = "http://www.roblox.com/asset/?id="..Texture
	PRTCL.Color = ColorSequence.new(Color1,Color2)
	PRTCL.Size = NumberSequence.new(Size1,Size2)
	PRTCL.Lifetime = NumberRange.new(Lifetime1,Lifetime2)
	PRTCL.Speed = NumberRange.new(Speed)
	PRTCL.VelocitySpread = Offset
	PRTCL.Drag = Drag
	PRTCL.Acceleration = Acel
	if Enabled == false then
		PRTCL:Emit(Emit)
		Debris:AddItem(PRTCL,Lifetime2)
	else
		PRTCL.Enabled = true
	end
	return PRTCL
end

function AttackGyro()
	local GYRO = IT("BodyGyro",RootPart)
	GYRO.D = 15
	GYRO.P = 200000
	GYRO.MaxTorque = VT(0,4000000,0)
	GYRO.CFrame = CF(RootPart.Position,Mouse.Hit.p)
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			GYRO.CFrame = CF(RootPart.Position,Mouse.Hit.p)
		until ATTACK == false
		GYRO:Remove()
	end))
end

function CreateWeld(parent,part0,part1,C1X,C1Y,C1Z,C1Xa,C1Ya,C1Za,C0X,C0Y,C0Z,C0Xa,C0Ya,C0Za)
local weld = Instance.new("Weld")
weld.Parent = parent
weld.Part0 = part0
weld.Part1 = part1
weld.C1 = CFrame.new(C1X,C1Y,C1Z)*CFrame.Angles(C1Xa,C1Ya,C1Za)
weld.C0 = CFrame.new(C0X,C0Y,C0Z)*CFrame.Angles(C0Xa,C0Ya,C0Za)
return weld
end

--//=================================\\
--||	    GUIS AND MISC
--\\=================================//

local CAMTYPE = Cam.CameraType
Cam.CameraType = Enum.CameraType.Scriptable

local ATTACKS = {2035463713,2035463980,2035464212,2035464495}

local BMUSIC = IT("Sound",RootPart)
local VOLUME = 4.5
local PITCH = 1.15
local SONGID = 904882921
local INTROD = false
local SUN = CreatePart(3, re, "Neon", 0, 0, BRICKC("New Yeller"), "Eye", VT(17,17,17), true)
MakeForm(SUN,"Ball")

local naeeym2 = IT("BillboardGui",Character)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(5,35,2,15)
naeeym2.StudsOffset = Vector3.new(0,8.7,0)
naeeym2.MaxDistance = 75
naeeym2.Adornee = SUN
naeeym2.Name = "Name"
local tecks2 = IT("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Text = " "
tecks2.Font = "Fantasy"
tecks2.TextSize = 35
tecks2.TextStrokeTransparency = 0
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.Parent = naeeym2

local SIZE = 1
local PRT = CreatePart(3, re, "Metal", 0, 0, "Mid gray", "Watch", VT(1.05,0.2,1.05)*SIZE,false)
CreateWeldOrSnapOrMotor("Weld", RightArm, RightArm, PRT, CF(0,-0.5*SIZE,0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local A = IT("Attachment",PRT)
A.Position = VT(-0.5,0,0)
local B = IT("Attachment",PRT)
B.Position = VT(0.5,0,0)
local Trail = IT("Trail",PRT)
Trail.Attachment0 = A
Trail.Attachment1 = B
Trail.Lifetime = 1
Trail.Transparency = NumberSequence.new(0, 1)
Trail.Color = ColorSequence.new(BRICKC"Really red".Color)
Trail.Enabled = true
local PRT2 = CreatePart(3, re, "Metal", 0, 0, "Mid gray", "Watch3", VT(1.05,0.2,1.05)*SIZE,false)
CreateWeldOrSnapOrMotor("Weld", LeftArm, LeftArm, PRT2, CF(0,-0.5*SIZE,0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
--gay--
local Gun = IT("Model")
Gun.Name = "Adds"

local Handle = CreatePart(3, Gun, "Metal", 0, 0, "Really black", "Part", VT(0.2,0.6,0.2),false)
local LeftArmGrasp = CreateWeldOrSnapOrMotor("Weld", Handle, Torso, Handle, CF(1.2, -0.6, 0.5) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0.21, 0))
local Part = CreatePart(3, Gun, "Metal", 0, 0, "Really black", "Part", VT(0.2,0.5,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.3, 0.2) * ANGLES(RAD(0), RAD(180), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Gun, "Metal", 0, 0, "Really black", "Part", VT(0.2,0.3,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.4, 0) * ANGLES(RAD(0), RAD(0), RAD(180)), CF(0, 0, 0))
local Part = CreatePart(3, Gun, "Metal", 0, 0, "Really black", "Part", VT(0.3,0.3,0.3),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.5, 0.2) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Gun, "Metal", 0, 0, "Really black", "Part", VT(0.3,0.5,0.5),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.5) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Gun, "Metal", 0, 0, "Really black", "Part", VT(0.4,0.4,0.4),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.5) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
for i = 1, 8 do
	local Piece = CreatePart(3, Gun, "Metal", 0, 0, "Really black", "Eye", VT(0,0.35,0.41),false)
	CreateWeldOrSnapOrMotor("Weld", Handle, Part, Piece, CF(0, 0, 0) * ANGLES(RAD(0), RAD((360/8)*i), RAD(0)), CF(0, 0, 0))
end
local Part = CreatePart(3, Gun, "Metal", 0, 0, "Really black", "Eye", VT(0.38,0.41,0.38),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.5) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Gun, "Metal", 0, 0, "Really black", "Part", VT(0.37,0.5,0.37),false)
MakeForm(Part,"Ball")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.3) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Gun, "Metal", 0, 0, "Really black", "Part", VT(0.2,0.7,0.4),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.7, 0.5) * ANGLES(RAD(90), RAD(180), RAD(180)), CF(0, 0, 0))
local Part = CreatePart(3, Gun, "Metal", 0, 0, "Really black", "Part", VT(0.3,0.4,0.2),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.7) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Gun, "Metal", 0, 0, "Really black", "Part", VT(0.35,0.35,0.35),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.7) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Gun, "Metal", 0, 0, "Really black", "Part", VT(0.5,0.1,0.5),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 1) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Gun, "Metal", 0, 0, "Really black", "Part", VT(0.5,0.1,0.45),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 1.1) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Gun, "Metal", 0, 0, "Really black", "Part", VT(0.2,0.5,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.55, 0.2) * ANGLES(RAD(-135), RAD(0), RAD(0)), CF(0, -0.3, 0))
local LASTPART = Handle
for i = 1, 10 do
	if LASTPART == Handle then
		local Part = CreatePart(3, Gun, "Metal", 0, 0, "White", "Part", VT(0.1,0.2,0),false)
		LASTPART = Part
		CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.1, 0.2) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
	else
		local Part = CreatePart(3,Gun, "Metal", 0, 0, "White", "Part", VT(0.1,0.05,0),false)
		CreateWeldOrSnapOrMotor("Weld", Handle, LASTPART, Part, CF(0, 0.025, 0) * ANGLES(RAD(8), RAD(0), RAD(0)), CF(0, -0.025, 0))
		LASTPART = Part
	end
end

local Barrel = CreatePart(3, Gun, "Metal", 0, 0, "Really black", "Part", VT(0.15,2,0.15),false)
MakeForm(Barrel,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Barrel, CF(0, -0.6, 1.8) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Gun, "Metal", 0, 0, "Really black", "Part", VT(0.25,1,0.25),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Barrel, Part, CF(0, -0.6, 0), CF(0, 0, 0))
local Part = CreatePart(3, Gun, "Metal", 0, 0, "Really black", "Part", VT(0,0.1,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Barrel, Part, CF(0, 0.945, 0.1) * ANGLES(RAD(180), RAD(0), RAD(0)), CF(0, 0, 0))
local Hole2 = CreatePart(3, Gun, "Metal", 0, 0, "White", "Eye", VT(0.125,0,0.125),false)
MakeForm(Hole2,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Barrel, Hole2, CF(0, 0.98, 0), CF(0, 0, 0))
local Part = CreatePart(3, Gun, "Metal", 0, 0, "White", "Part", VT(0,0,0),false)
local GEARWELD = CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.7), CF(0, 0, 0))
CreateMesh("SpecialMesh", Part, "FileMesh", 156292343, "", VT(0.8,0.8,1.5), VT(0,0,0.2))
local Part = CreatePart(3, Gun, "Metal", 0, 0.5, "White", "Eye", VT(0,0,0),false)
local GEARWELD2 = CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.7), CF(0, 0, 0))
CreateMesh("SpecialMesh", Part, "FileMesh", 156292343, "", VT(0.9,0.9,0.3), VT(0,0,0.2))
coroutine.resume(coroutine.create(function()
	while wait() do
		GEARWELD.C0 = GEARWELD.C0 * ANGLES(RAD(0), RAD(0), RAD(5))
		GEARWELD2.C0 = GEARWELD2.C0 * ANGLES(RAD(0), RAD(0), RAD(-5))
	end
end))

--gay2
local Gun2 = IT("Model")
Gun2.Name = "Adds"

local Handle2 = CreatePart(3,Gun2, "Metal", 0, 0, "Really black", "Part", VT(0.2,0.6,0.2),false)
local LeftArmGrasp = nil
LeftArmGrasp = CreateWeldOrSnapOrMotor("Weld", Handle2, RightArm, Handle2, CF(0, -1, 0) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0.21, 0))
local Part = CreatePart(3, Gun2, "Metal", 0, 0, "Really black", "Part", VT(0.2,0.5,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle2, Handle2, Part, CF(0, -0.3, 0.2) * ANGLES(RAD(0), RAD(180), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Gun2, "Metal", 0, 0, "Really black", "Part", VT(0.2,0.3,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle2, Handle2, Part, CF(0, -0.4, 0) * ANGLES(RAD(0), RAD(0), RAD(180)), CF(0, 0, 0))
local Part = CreatePart(3, Gun2, "Metal", 0, 0, "Really black", "Part", VT(0.3,0.3,0.3),false)
CreateWeldOrSnapOrMotor("Weld", Handle2, Handle2, Part, CF(0, -0.5, 0.2) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Gun2, "Metal", 0, 0, "Really black", "Part", VT(0.3,0.5,0.5),false)
CreateWeldOrSnapOrMotor("Weld", Handle2, Handle2, Part, CF(0, -0.6, 0.5) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Gun2, "Metal", 0, 0, "Really black", "Part", VT(0.4,0.4,0.4),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle2, Handle2, Part, CF(0, -0.6, 0.5) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
for i = 1, 8 do
	local Piece = CreatePart(3, Gun2, "Metal", 0, 0, "Really black", "Eye", VT(0,0.35,0.41),false)
	CreateWeldOrSnapOrMotor("Weld", Handle2, Part, Piece, CF(0, 0, 0) * ANGLES(RAD(0), RAD((360/8)*i), RAD(0)), CF(0, 0, 0))
end
local Part = CreatePart(3, Gun2, "Metal", 0, 0, "Really black", "Eye", VT(0.38,0.41,0.38),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle2, Handle2, Part, CF(0, -0.6, 0.5) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Gun2, "Metal", 0, 0, "Really black", "Part", VT(0.37,0.5,0.37),false)
MakeForm(Part,"Ball")
CreateWeldOrSnapOrMotor("Weld", Handle2, Handle2, Part, CF(0, -0.6, 0.3) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Gun2, "Metal", 0, 0, "Really black", "Part", VT(0.2,0.7,0.4),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle2, Handle2, Part, CF(0, -0.7, 0.5) * ANGLES(RAD(90), RAD(180), RAD(180)), CF(0, 0, 0))
local Part = CreatePart(3, Gun2, "Metal", 0, 0, "Really black", "Part", VT(0.3,0.4,0.2),false)
CreateWeldOrSnapOrMotor("Weld", Handle2, Handle2, Part, CF(0, -0.6, 0.7) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Gun2, "Metal", 0, 0, "Really black", "Part", VT(0.35,0.35,0.35),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle2, Handle2, Part, CF(0, -0.6, 0.7) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Gun2, "Metal", 0, 0, "Really black", "Part", VT(0.5,0.1,0.5),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle2, Handle2, Part, CF(0, -0.6, 1) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Gun2, "Metal", 0, 0, "Really black", "Part", VT(0.5,0.1,0.45),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle2, Handle2, Part, CF(0, -0.6, 1.1) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Gun2, "Metal", 0, 0, "Really black", "Part", VT(0.2,0.5,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle2, Handle2, Part, CF(0, -0.55, 0.2) * ANGLES(RAD(-135), RAD(0), RAD(0)), CF(0, -0.3, 0))
local LASTPART = Handle2
for i = 1, 10 do
	if LASTPART == Handle then
		local Part = CreatePart(3, Gun2, "Metal", 0, 0, "White", "Part", VT(0.1,0.2,0),false)
		LASTPART = Part
		CreateWeldOrSnapOrMotor("Weld", Handle2, Handle2, Part, CF(0, -0.1, 0.2) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
	else
		local Part = CreatePart(3, Gun2, "Metal", 0, 0, "White", "Part", VT(0.1,0.05,0),false)
		CreateWeldOrSnapOrMotor("Weld", Handle2, LASTPART, Part, CF(0, 0.025, 0) * ANGLES(RAD(8), RAD(0), RAD(0)), CF(0, -0.025, 0))
		LASTPART = Part
	end
end

local Barrel2 = CreatePart(3, Gun2, "Metal", 0, 0, "Really black", "Part", VT(0.15,2,0.15),false)
MakeForm(Barrel,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle2, Handle2, Barrel2, CF(0, -0.6, 1.8) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Gun2, "Metal", 0, 0, "Really black", "Part", VT(0.25,1,0.25),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle2, Barrel2, Part, CF(0, -0.6, 0), CF(0, 0, 0))
local Part = CreatePart(3, Gun2, "Metal", 0, 0, "Really black", "Part", VT(0,0.1,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle2, Barrel2, Part, CF(0, 0.945, 0.1) * ANGLES(RAD(180), RAD(0), RAD(0)), CF(0, 0, 0))
local Hole = CreatePart(3, Gun2, "Metal", 0, 0, "White", "Eye", VT(0.125,0,0.125),false)
MakeForm(Hole,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle2, Barrel2, Hole, CF(0, 0.98, 0), CF(0, 0, 0))
local Part = CreatePart(3, Gun2, "Metal", 0, 0, "White", "Part", VT(0,0,0),false)
local GEARWELD3 = CreateWeldOrSnapOrMotor("Weld", Handle2, Handle2, Part, CF(0, -0.6, 0.7), CF(0, 0, 0))
CreateMesh("SpecialMesh", Part, "FileMesh", 156292343, "", VT(0.8,0.8,1.5), VT(0,0,0.2))
local Part = CreatePart(3, Gun2, "Metal", 0, 0.5, "White", "Eye", VT(0,0,0),false)
local GEARWELD4 = CreateWeldOrSnapOrMotor("Weld", Handle2, Handle2, Part, CF(0, -0.6, 0.7), CF(0, 0, 0))
CreateMesh("SpecialMesh", Part, "FileMesh", 156292343, "", VT(0.9,0.9,0.3), VT(0,0,0.2))
coroutine.resume(coroutine.create(function()
	while wait() do
		GEARWELD3.C0 = GEARWELD.C0 * ANGLES(RAD(0), RAD(0), RAD(5))
		GEARWELD4.C0 = GEARWELD2.C0 * ANGLES(RAD(0), RAD(0), RAD(-5))
	end
end))

for _, b in pairs(Gun2:GetChildren()) do
	if b.ClassName == "Part" then
		b.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end

local SKILLFONT = "Fantasy"
local SKILLTEXTSIZE = 3


--
local A2 = IT("Attachment",PRT2)
A2.Position = VT(-0.5,0,0)
local B2 = IT("Attachment",PRT2)
B2.Position = VT(0.5,0,0)
local Trail2 = IT("Trail",PRT2)
Trail2.Attachment0 = A2
Trail2.Attachment1 = B2
Trail2.Lifetime = 1
Trail2.Color = ColorSequence.new(BRICKC"Really red".Color)
Trail2.Transparency = NumberSequence.new(0, 1)
Trail2.Enabled = true
local Part = CreatePart(3, re, "Metal", 0, 0, "Really black", "Eye", VT(0,0,0),false)
local GEARWELD = CreateWeldOrSnapOrMotor("Weld", SUN, SUN, Part, CF(0, -0.6, 0.7), CF(0, 0, 0))
CreateMesh("SpecialMesh", Part, "FileMesh", 156292343, "", VT(23,23,23), VT(0,0,0.2))
local Part = CreatePart(3, re, "Metal", 0, 0, "Really black", "Eye", VT(0,0,0),false)
local GEARWELD2 = CreateWeldOrSnapOrMotor("Weld", SUN,SUN, Part, CF(0, -0.6, 0.7), CF(0, 0, 0))
CreateMesh("SpecialMesh", Part, "FileMesh", 156292343, "", VT(23,23,23), VT(0,0,0.2))
local Part = CreatePart(3, re, "Metal", 0, 0, "Really black", "Eye", VT(0,0,0),false)
local GEARWELD3 = CreateWeldOrSnapOrMotor("Weld", SUN,SUN, Part, CF(0, -0.6, 0.7), CF(0, 0, 0))
CreateMesh("SpecialMesh", Part, "FileMesh", 156292343, "", VT(23,23,23), VT(0,0,0.2))
local spinc=0

coroutine.resume(coroutine.create(function()
	while wait() do

		spinc=spinc+1+BMUSIC.PlaybackLoudness/50
		SUN.Color = color
		tecks2.TextColor3 = color
		tecks2.TextStrokeColor3 = C3(1,1,1)
		Trail.Color = ColorSequence.new(Color3.fromRGB(cR,cG,cB))
		Trail2.Color = ColorSequence.new(Color3.fromRGB(cR,cG,cB))
		GEARWELD.C0 = GEARWELD.C0 * ANGLES(RAD(2), RAD(-3.4), RAD(4.4))
		GEARWELD2.C0 = GEARWELD2.C0 * ANGLES(RAD(-4), RAD(1.4), RAD(-4.4))
		GEARWELD3.C0 = GEARWELD3.C0 * ANGLES(RAD(3), RAD(4), RAD(4.4))
		 WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10,0.69,1), Size2 = VT(1,0.5,7), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-2.9,0)*CFrame.Angles(RAD(0),RAD(spinc),RAD(0)), RotationX = 0, RotationY = 0--[[sick.PlaybackLoudness/50]], RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
		WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1,0.5,10), Size2 = VT(7,0.69,1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-2.9,0)*CFrame.Angles(RAD(0),RAD(spinc),RAD(0)), RotationX = 0, RotationY = 0--[[sick.PlaybackLoudness/50]], RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
 WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4,0.69,4), Size2 = VT(4,0.5,4), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-2.9,0)*CFrame.Angles(RAD(0),RAD(spinc),RAD(0)), RotationX = 0, RotationY = 0--[[sick.PlaybackLoudness/50]], RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
	end
end))


local BODY = {}

local cR=255
local cG=0
local cB=0
local flg5=1 local omgidk=1
local add=15
game:GetService("RunService").Heartbeat:Connect(function()
	if omgidk>10000 then omgidk=0 end
	omgidk=omgidk+1
	if cR>=255 then flg5=1 end
	if cG>=255 then flg5=2 end
	if cB>=255 then flg5=3 end
	if flg5==1 then cR=cR-add cG=cG+add end
	if flg5==2 then cG=cG-add cB=cB+add end
	if flg5==3 then cB=cB-add cR=cR+add end
	color=Color3.fromRGB(cR,cG,cB)
for _, c in pairs(re:GetDescendants()) do
	if c.ClassName == "Part" and c.Name ~= "Eye" and c.Parent ~= Effects and c.Parent.Parent ~= Effects then
		c.Color = color
	elseif c.ClassName == "Part" and c.Name == "Eye" then
		c.Color = color
		c.Material = "Neon"
	end
end
end)


for _, b in pairs(Gun:GetChildren()) do
	if b.ClassName == "Part" then
		b.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end

for _, c in pairs(re:GetChildren()) do
	if c.ClassName == "Part" then
		c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end

for e = 1, #BODY do
	if BODY[e] ~= nil then
		do
			local STUFF = BODY[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			PART.AncestryChanged:Connect(function()
				if PART.ClassName == "Part" then
					PART.Material = MATERIAL
					PART.Color = COLOR
				end
				PART.Parent = PARENT
			end)
		end
	end
end
function refit()
	re.Parent = Character
	Character.Parent = workspace
	for e = 1, #BODY do
		if BODY[e] ~= nil then
			local STUFF = BODY[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			if PART.Parent ~= PARENT then
				Humanoid:remove()
				if PART.ClassName == "Part" then
					PART.Material = MATERIAL
					PART.Color = COLOR
				end
				PART.Parent = PARENT
				Humanoid = IT("Humanoid", Character)
			end
		end
	end
end
function ANTI()
	RootJoint.Parent = RootPart
	Neck.Parent = Torso
	RightShoulder.Parent = Torso
	LeftShoulder.Parent = Torso
	RightHip.Parent = Torso
	LeftHip.Parent = Torso
	RootPart.Parent = Character
	LeftArm.Parent = Character
	RightArm.Parent = Character
	RightLeg.Parent = Character
	LeftLeg.Parent = Character
	Torso.Parent = Character
	Head.Parent = Character
	re.Parent = Character
	Character.Parent = workspace
end

Humanoid.HealthChanged:connect(function()
	Humanoid.MaxHealth = "inf"
	Humanoid.Health = "inf"
end)

Humanoid.Died:connect(function()
	Humanoid.MaxHealth = "inf"
	Humanoid.Health = "inf"
	ANTI()
	refit()
end)

local SUNFLOAT = true
local CUSTOMCAM = true
local Create = Instance.new

CFuncs = {	
	["Part"] = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part"){
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material,
			}
			NoOutlines(Part)
			return Part
		end;
	};
	
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end;
	};
	
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end;
	};
	
	["Weld"] = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld"){
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1,
			}
			return Weld
		end;
	};

	["Sound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
                                        Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};

	["TimeSound"] = {
		Create = function(id, par, vol, pit, timepos) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
                                        Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
                                        TimePosition = timepos,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};
		["EchoSound"] = {
		Create = function(id, par, vol, pit, timepos,delays,echodelay,fedb,dryl) 
			coroutine.resume(coroutine.create(function()
				local Sas = Create("Sound"){
					Volume = vol,
                    Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
                    TimePosition = timepos,
					Parent = par or workspace,
				}
				local E = Create("EchoSoundEffect"){
					Delay = echodelay,
                    Name = "Echo",
					Feedback = fedb,
                    DryLevel = dryl,
					Parent = Sas,
				}
				wait() 
				Sas:play() 
				game:GetService("Debris"):AddItem(Sas, delays)
			end))
		end;
	};

["LongSound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 60)
			end))
		end;
	};
	
	["ParticleEmitter"] = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter"){
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread,
			}
			return fp
		end;
	};

	CreateTemplate = {
	
	};
}
local epic_name = {"Dead1ly sun","Epic sun","Ah134","dead!","karma","i hate this world","rjwfokdsolf","fijdsaklsdkaiwiof","0w0"}
local FXFolder = game.Workspace.Effects
function newbosschatfunc(text,color1,color2,delay)
	for _,v in next, game:service'Players':players() do
		coroutine.wrap(function()
			if(FXFolder:FindFirstChild'BossChat' and v.Character)then
				local cha = FXFolder.BossChat:Clone()
				cha.Color1.Value=color1
				cha.Color2.Value=color2
				cha.Text.Value=text
				cha.Ghghghghgh.Value=delay
				cha.Mode.Value=1
				cha.ModeName.Value="Kickisher Deadly Sun V.2 "
				cha.Music.Value=BMUSIC
				cha.Parent=v.Character
				wait()
				cha.Disabled = false
				game:service'Debris':AddItem(cha,(delay/60)*4)
			end
		end)()
	end
end
function bosschatfunc(text,color2,watval)
	newbosschatfunc(text,Color3.fromRGB(cR,cG,cB),color2,watval)
end
--//=================================\\
--||			DAMAGING
--\\=================================//	

function Banish(Foe) 
	if Foe then
		coroutine.resume(coroutine.create(function()
			local plr = game:service'Players':GetPlayerFromCharacter(Foe)
			if plr then
				coroutine.resume(coroutine.create(function()
				wait(0.5)
				plr:Kick("REKT")
				bosschatfunc(" "..plr.Name.." Got kick now!",color,120)	
				end))		
			end
			if(Foe:FindFirstChildOfClass'Humanoid')then	
				
				Foe.Archivable = true
				local CLONE = Foe:Clone()
				Foe:Destroy()
				CLONE.Parent = Effects
				CLONE:BreakJoints()
				local MATERIALS = {"Glass","Neon"}
				for _, c in pairs(CLONE:GetDescendants()) do
					if c:IsA("BasePart") then
						if c.Name == "Torso" or c.Name == "UpperTorso" or c == CLONE.PrimaryPart then
	 						CreateSound(2152227673, c, 10, 1, false)
						end
						c.Anchored = true
						c.Transparency = c.Transparency + 0.2
						c.Material = MATERIALS[MRANDOM(1,2)]
						c.Color = color
						if c.ClassName == "MeshPart" then
							c.TextureID = ""
						end
						if c:FindFirstChildOfClass("SpecialMesh") then
							c:FindFirstChildOfClass("SpecialMesh").TextureId = ""
						end
						if c:FindFirstChildOfClass("Decal") then
							c:FindFirstChildOfClass("Decal"):remove()
						end
						c.Name = "Banished"
						c.CanCollide = false
					else
						c:remove()
					end
				end
				local A = false
				for i = 1, 35 do
					if A == false then
						A = true
					elseif A == true then
						A = false
					end
					for _, c in pairs(CLONE:GetDescendants()) do
						if c:IsA("BasePart") then
							c.Anchored = true
							c.Material = MATERIALS[MRANDOM(1,2)]
							c.Transparency = c.Transparency + 0.8/35
							if A == false then
								c.CFrame = c.CFrame*CF(MRANDOM(-45,45)/45,MRANDOM(-45,45)/45,MRANDOM(-45,45)/45)
							elseif A == true then
								c.CFrame = c.CFrame*CF(MRANDOM(-45,45)/45,MRANDOM(-45,45)/45,MRANDOM(-45,45)/45)						
							end
						end
					end
					Swait()
				end
				CLONE:remove()
			end
		end))
	end
end
function Banish2(Foe) 
	if Foe then
		coroutine.resume(coroutine.create(function()
			local plr = game:service'Players':GetPlayerFromCharacter(Foe)
			if plr then
				coroutine.resume(coroutine.create(function()
				wait(0.5)		
				end))		
			end
			if(Foe:FindFirstChildOfClass'Humanoid')then		
				Foe.Archivable = true
				local CLONE = Foe:Clone()
				Foe:Destroy()
				CLONE.Parent = Effects
				CLONE:BreakJoints()
				local MATERIALS = {"Glass","Neon"}
				for _, c in pairs(CLONE:GetDescendants()) do
					if c:IsA("BasePart") then
						if c.Name == "Torso" or c.Name == "UpperTorso" or c == CLONE.PrimaryPart then
	 						CreateSound(2152227673, c, 10, 1, false)
						end
						c.Anchored = true
						c.Transparency = c.Transparency + 0.2
						c.Material = MATERIALS[MRANDOM(1,2)]
						c.Color = color
						if c.ClassName == "MeshPart" then
							c.TextureID = ""
						end
						if c:FindFirstChildOfClass("SpecialMesh") then
							c:FindFirstChildOfClass("SpecialMesh").TextureId = ""
						end
						if c:FindFirstChildOfClass("Decal") then
							c:FindFirstChildOfClass("Decal"):remove()
						end
						c.Name = "Banished"
						c.CanCollide = false
					else
						c:remove()
					end
				end
				local A = false
				for i = 1, 35 do
					if A == false then
						A = true
					elseif A == true then
						A = false
					end
					for _, c in pairs(CLONE:GetDescendants()) do
						if c:IsA("BasePart") then
							c.Anchored = true
							c.Material = MATERIALS[MRANDOM(1,2)]
							c.Transparency = c.Transparency + 0.8/35
							if A == false then
								c.CFrame = c.CFrame*CF(MRANDOM(-45,45)/45,MRANDOM(-45,45)/45,MRANDOM(-45,45)/45)
							elseif A == true then
								c.CFrame = c.CFrame*CF(MRANDOM(-45,45)/45,MRANDOM(-45,45)/45,MRANDOM(-45,45)/45)						
							end
						end
					end
					Swait()
				end
				CLONE:remove()
			end
		end))
	end
end
local BEANED = {}
local xd = {
	Enum.Material.Plastic,
	Enum.Material.DiamondPlate,
	Enum.Material.Wood,
	Enum.Material.WoodPlanks,
	Enum.Material.Foil,
	Enum.Material.Brick,
	Enum.Material.Glass,
	Enum.Material.Granite,
	Enum.Material.Grass,
	Enum.Material.ForceField,
	Enum.Material.Neon,
	Enum.Material.SmoothPlastic
}
Players = game:GetService("Players")
function FocusCamAll(timer, focuson, up)
	for _,v in next, Players:players() do
		if(script:FindFirstChild'FocusCam')then
			local focus = script.FocusCam:Clone()
			focus:WaitForChild'FocusOn'.Value = focuson
			focus:WaitForChild'Timer'.Value = timer
			focus:WaitForChild'Up'.Value = up
			focus.Parent = v.Character
			wait()
			focus.Disabled = false
		end
	end
end

coroutine.resume(coroutine.create(function()
	while true do
		Swait()
		for _, c in pairs(Gun2:GetDescendants()) do
			if c.ClassName == "Part" and c.Name ~= "Eye" and c.Parent ~= Effects and c.Parent.Parent ~= Effects then
				c.Material = xd[MRANDOM(1, #xd)]
				c.Color = color
			elseif c.ClassName == "Part" and c.Name == "Eye" then
				c.Material = "Neon"
				c.Color = color
			end
		end
		for _, c in pairs(Gun:GetDescendants()) do
			if c.ClassName == "Part" and c.Name ~= "Eye" and c.Parent ~= Effects and c.Parent.Parent ~= Effects then
				c.Material = xd[MRANDOM(1, #xd)]
				c.Color = color
			elseif c.ClassName == "Part" and c.Name == "Eye" then
				c.Material = "Neon"
				c.Color = color
			end
		end
	end
end))
function ban(bitch)	
if bitch then
g = game.Players:GetPlayers()
	local kickfolder = IT("Folder",Effects)
	local naeeym2 = Instance.new("BillboardGui",kickfolder)

-- CreateSound("2570187601", bitch, 600, 1, false)
local Players = game:GetService("Players")
local fag = Players:FindFirstChild(bitch.Name)
bosschatfunc(""..bitch.Name.." Got server banned",color,120)
--faggut:Kick()
	if Players:FindFirstChild(bitch.Name) then
	fag:Kick("REKT")
	end
		if Players:FindFirstChild(bitch.Name) then
	fag:Kick("REKT")
		end
			if Players:FindFirstChild(bitch.Name) then
	fag:Kick("REKT")
			end
				if Players:FindFirstChild(bitch.Name) then
	fag:Kick("REKT")
				end
					if Players:FindFirstChild(bitch.Name) then
	fag:Kick("REKT")
					end
						if Players:FindFirstChild(bitch.Name) then
	fag:Kick("REKT")
						end
						table.insert(BEANED,bitch.name)
	--]]
			--CreateSound("527749592", game.Workspace, 700, 1, false)
	--CHARACTER:Remove()
	--[[
	for i,v in pairs(g) do
	--v:remove()
	end ]]--
	--[[
	if CHARACTER.Name ~= "Default Dummy" or CHARACTER.Name ~= "NPC" then
for i,v in pairs(g) do
	if string.find(string.upper(v.Name),CHARACTER) == 1 then
v:remove()
end
end
	end]]--
	--[[
		for _, p in pairs(game.Players:GetChildren()) do
		if p:FindFirstChild("CHARACTER") then

		end
	end]]--
	coroutine.resume(coroutine.create(function()
		for i = 1, 50 do
			Swait()
			for i,v in ipairs(kickfolder:GetChildren()) do
				if v.ClassName == "Part" or v.ClassName == "MeshPart" then
					v.Transparency = 1
				end
				naeeym2.Enabled = false
			end
			Swait()
			for i,v in ipairs(kickfolder:GetChildren()) do
				if v.ClassName == "Part" or v.ClassName == "MeshPart" then
					v.Transparency = 0
				end
				naeeym2.Enabled = true
			end
		end
		kickfolder:remove()
	end))
	--wait(6)
	--bitch:Remove()
end
end 
local function CheckForBan(player)
	for i = 1, #BEANED do
		if player.Name == BEANED[i] then
			bosschatfunc("Don't come back ,"..player.Name.."!",color,120)
			player:Kick("BANNED...")
		end
	end
end


game.Players.PlayerAdded:connect(function()
	for i,v in pairs(game.Players:GetPlayers())do
		CheckForBan(v)
	end  
end)
function ban2(Foe) 
	if Foe then
		coroutine.resume(coroutine.create(function()
			local plr = game:service'Players':GetPlayerFromCharacter(Foe)
			if plr then
				coroutine.resume(coroutine.create(function()
				wait(0.5)
				ban(plr)		
				end))		
			end
			if(Foe:FindFirstChildOfClass'Humanoid')then		
				Foe.Archivable = true
				local CLONE = Foe:Clone()
				Foe:Destroy()
				CLONE.Parent = Effects
				local kickfolder = IT("Folder",Effects)
				local naeeym2 = Instance.new("BillboardGui",CLONE)
				naeeym2.AlwaysOnTop = false
				naeeym2.Size = UDim2.new(5,35,2,35)
				naeeym2.StudsOffset = Vector3.new(0,1,0)
				naeeym2.Name = "Mark"
				local tecks2 = Instance.new("TextLabel",naeeym2)
				tecks2.BackgroundTransparency = 1
				tecks2.TextScaled = true
				tecks2.BorderSizePixel = 0
				tecks2.Text = "BANNED"
				tecks2.Font = "Arcade"
				tecks2.TextSize = 30
				tecks2.TextStrokeTransparency = 0
				tecks2.TextColor3 = Color3.fromRGB(cR,0,0)
				tecks2.TextStrokeColor3 = Color3.fromRGB(0,0,0)
				tecks2.Size = UDim2.new(1,0,0.5,0)
				tecks2.Parent = naeeym2	
				CLONE:BreakJoints()
				local MATERIALS = {"Glass","Neon"}
				for _, c in pairs(CLONE:GetDescendants()) do
					if c:IsA("BasePart") then
						if c.Name == "Torso" or c.Name == "UpperTorso" or c == CLONE.PrimaryPart then
	 						CreateSound(2152227673, c, 10, 1, false)
						end
						c.Anchored = true
						c.Transparency = c.Transparency + 0.2
						c.Material = MATERIALS[MRANDOM(1,2)]
						c.Color = color
						if c.ClassName == "MeshPart" then
							c.TextureID = ""
						end
						if c:FindFirstChildOfClass("SpecialMesh") then
							c:FindFirstChildOfClass("SpecialMesh").TextureId = ""
						end
						if c:FindFirstChildOfClass("Decal") then
							c:FindFirstChildOfClass("Decal"):remove()
						end
						c.Name = "Banished"
						c.CanCollide = false
					else
						c:remove()
					end
				end
				local A = false
				for i = 1, 35 do
					if A == false then
						A = true
					elseif A == true then
						A = false
					end
					for _, c in pairs(CLONE:GetDescendants()) do
						if c:IsA("BasePart") then
							c.Anchored = true
							c.Material = MATERIALS[MRANDOM(1,2)]
							c.Transparency = c.Transparency + 0.8/35
							if A == false then
								c.CFrame = c.CFrame*CF(MRANDOM(-45,45)/45,MRANDOM(-45,45)/45,MRANDOM(-45,45)/45)
							elseif A == true then
								c.CFrame = c.CFrame*CF(MRANDOM(-45,45)/45,MRANDOM(-45,45)/45,MRANDOM(-45,45)/45)						
							end
						end
					end
					Swait()
				end
				CLONE:remove()
			end
		end))
	end
end     	
local ISBANISH = false
function ApplyAoE2(POSITION, RANGE, MINDMG, MAXDMG, FLING, re)
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO and RANGE >= (TORSO.Position - POSITION).Magnitude then
					if ISBANISH == true then
						Banish(CHILD)
					    elseif ISBANISH == false then
						Banish2(CHILD)
					elseif ISBANISH == "Ban" then
						ban2(CHILD)	
					end
					if FLING ~= 0 then
						for _, c in pairs(CHILD:GetChildren()) do
							if c:IsA("BasePart") then
								local bv = Instance.new("BodyVelocity")
								bv.maxForce = Vector3.new(1000000000, 1000000000, 1000000000)
								bv.velocity = CF(POSITION, TORSO.Position).lookVector * FLING
								bv.Parent = c
								Debris:AddItem(bv, 0.05)
							end
						end
					end
				end
			end
		end
	end
end
function ApplyAoE(POSITION,RANGE,nothing,re)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						if ISBANISH == false then
							Banish2(CHILD)
						end
						if ISBANISH == true then
							Banish(CHILD)
						end
						if ISBANISH == "Ban" then
							ban2(CHILD)
						else
							if ISBANISH == "Gravity" then
								HUM.PlatformStand = true
								if TORSO:FindFirstChild("V3BanishForce"..Player.Name) then
									local grav = Instance.new("BodyPosition",TORSO)
									grav.D = 15
									grav.P = 20000
									grav.maxForce = Vector3.new(math.huge,math.huge,math.huge)
									grav.position = TORSO.Position
									grav.Name = "V3BanishForce"..Player.Name
								else
									TORSO:FindFirstChild("V3BanishForce"..Player.Name).position = TORSO.Position+VT(0,0.3,0)
									TORSO.RotVelocity = VT(MRANDOM(-25,25),MRANDOM(-25,25),MRANDOM(-25,25))
								end
							else
								HUM.PlatformStand = false
							end
						end
					elseif ISBANISH == "Gravity" then
						if TORSO:FindFirstChild("V3BanishForce"..Player.Name) then
							TORSO:FindFirstChild("V3BanishForce"..Player.Name):remove()
							HUM.PlatformStand = false
						end
					end
				end
			end
		end
	end
end

function KickThatNigga(CHARACTER)
	g = game.Players:GetPlayers()
	local kickfolder = IT("Folder",Effects)
	local naeeym2 = Instance.new("BillboardGui",kickfolder)
	naeeym2.AlwaysOnTop = false
	naeeym2.Size = UDim2.new(5,35,2,35)
	naeeym2.StudsOffset = Vector3.new(0,1,0)
	naeeym2.Name = "Mark"
	local tecks2 = Instance.new("TextLabel",naeeym2)
	tecks2.BackgroundTransparency = 1
	tecks2.TextScaled = true
	tecks2.BorderSizePixel = 0
	tecks2.Text = "BEANED"
	tecks2.Font = "SciFi"
	tecks2.TextSize = 30
	tecks2.TextStrokeTransparency = 1
	tecks2.TextColor3 = Color3.new(1,0,0)
	tecks2.TextStrokeColor3 = Color3.new(1,0,0)
	tecks2.Size = UDim2.new(1,0,0.5,0)
	tecks2.Parent = naeeym2
	 CreateSound("527749592", CHARACTER, 600, 1, false)
	for i,v in ipairs(CHARACTER:GetChildren()) do
		if v.ClassName == "Part" or v.ClassName == "MeshPart" then
			if v.Name ~= "HumanoidRootPart" then
				local BOD = v:Clone()
				BOD.CanCollide = false
				BOD.Anchored = true
				BOD.CFrame = v.CFrame
				BOD.Parent = kickfolder
				BOD.Material = "Neon"
				BOD.Color = color
				if BOD:FindFirstChildOfClass("Decal") then
					BOD:FindFirstChildOfClass("Decal"):remove()
				end
				if BOD.Name == "Head" then
					naeeym2.Adornee = BOD
				end
				if BOD.ClassName == "MeshPart" then
					BOD.TextureID = ""
				end
			end
		end
	end
	for i,v in pairs(g) do
	v:remove()
	end 
	if CHARACTER ~= Character then
	CHARACTER:remove()
	end
	coroutine.resume(coroutine.create(function()
		for i = 1, 50 do
			Swait()
			for i,v in ipairs(kickfolder:GetChildren()) do
				if v.ClassName == "Part" or v.ClassName == "MeshPart" then
					v.Transparency = 1
				end
				naeeym2.Enabled = false
			end
			Swait()
			for i,v in ipairs(kickfolder:GetChildren()) do
				if v.ClassName == "Part" or v.ClassName == "MeshPart" then
					v.Transparency = 0
				end
				naeeym2.Enabled = true
			end
		end
		kickfolder:remove()
	end))
end


--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//

function Intro()
	ATTACK = true
	Rooted = true
	Humanoid.WalkSpeed = 0
	Disable_Jump = true
	local INTROSOUND = CreateSound(862484466, Effects, 6, 1, false)
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			if CUSTOMANGLES == true then
				Cam.CFrame = Clerp(Cam.CFrame, Head.CFrame * CF(0,0,-4) * ANGLES(RAD(0), RAD(180), RAD(0)), 0.2)
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(5)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(60), RAD(0)) * ANGLES(RAD(-11), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-60), RAD(0)) * ANGLES(RAD(-11), RAD(0), RAD(0)), 1 / Animation_Speed)
		until INTROSOUND.TimePosition >= 2.15
		SUN.Parent = Effects
		local CORE = IT("Attachment",SUN)
		SUN.Color = Color3.fromRGB(cR,cG,cB)
		SUN.CFrame = RootPart.CFrame*CF(0,-14,11)
		local P = ParticleEmitter({Transparency1 = 0.6, Transparency2 = 1, Speed = 6, Acel = VT(0,0,0), RotSpeed = NumberRange.new(-15, 15), Drag = 0.4, Size1 = 13, Size2 = 18, Lifetime1 = 0.4, Lifetime2 = 0.8, Parent = CORE, Emit = 100, Offset = 360, Enabled = true, Color1 = Color3.fromRGB(cR,cG,cB), Color2 = Color3.fromRGB(cR,cG,cB), Texture = 296874871})
		P.LockedToPart = true
		P.Rate = 12
		local P = ParticleEmitter({Transparency1 = 0.6, Transparency2 = 1, Speed = 6, Acel = VT(0,0,0), RotSpeed = NumberRange.new(-15, 15), Drag = 0.4, Size1 = 16, Size2 = 6, Lifetime1 = 0.4, Lifetime2 = 2.5, Parent = CORE, Emit = 100, Offset = 360, Enabled = true, Color1 = Color3.fromRGB(cR,cG,cB), Color2 = Color3.fromRGB(cR,cG,cB), Texture = 296874871})
		P.Rate = 12
		repeat
			Swait()
			SUN.CFrame = Clerp(SUN.CFrame,RootPart.CFrame*CF(0,14,11),0.04)
			re.Parent = Character
			local HITFLOOR,SUNPOS = Raycast(SUN.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 23, Character)
			if HITFLOOR then
				local DISTANCE = (SUNPOS - SUN.Position).Magnitude
				local SIZE = (23 - DISTANCE)*2
				WACKYEFFECT({Time = 15, EffectType = "Wave", Size = VT(0,2,0), Size2 = VT(SIZE,0,SIZE), Transparency = 0.6, Transparency2 = 1, CFrame = CF(SUNPOS) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0)) * ANGLES(RAD(MRANDOM(-25,25)), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 0.5, RotationY = 0, RotationZ = 0, Material = "Fabric", Color = Color3.fromRGB(cR,cG,cB), SoundID = nil, SoundPitch = MRANDOM(9,11)/10, SoundVolume = MRANDOM(9,11)/2, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 6})
			end
			if CUSTOMANGLES == true then
				Cam.CFrame = Clerp(Cam.CFrame, Head.CFrame * CF(0,5,-15) * ANGLES(RAD(5), RAD(180), RAD(0)), 0.2)
			end
			Cam.CFrame = Clerp(Cam.CFrame, RootPart.CFrame * CF(7,1.5,6) * ANGLES(RAD(-4), RAD(15), RAD(0)), 0.2)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-35 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
		until ATTACK == false
		CUSTOMCAM = false
		for i = 1, #ATTACKS do
			local SKILLFRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.65, 0, 0.95-(0.17*i), 0), UD2(0.26, 0, 0.17, 0), C3(0,0,0), C3(0, 0, 0), "Skill Frame")
			local IMAGE = IT("ImageLabel",SKILLFRAME)
			IMAGE.Size = UD2(1,0,1,0)
			IMAGE.Image = "rbxassetid://"..ATTACKS[i]
			IMAGE.BackgroundTransparency = 1
			IMAGE.ImageTransparency = 1
			for i = 1, 10 do
				Swait()
				IMAGE.ImageTransparency = IMAGE.ImageTransparency - 1/10
			end
		end
	end))
	repeat
		Swait()
		INTROSOUND.Parent = Effects
	until INTROSOUND.Playing == false
	INTROSOUND:Destroy()
	ATTACK = false
	Rooted = false
end

function DeadlyLaser()
	CreateSound(811841430, SUN, 8, MRANDOM(7,13)/10, false)
	local HIT,POS = CastProperRay(SUN.Position,Mouse.Hit.p,1000,Character)
	local BEAM = CreatePart(3, Effects, "Neon", 0, 0, BRICKC("Gold"), "Beam", VT(0,0,0), true)
	BEAM.Color = Color3.fromRGB(cR,cG,cB)
	MakeForm(BEAM,"Cyl")
	local DIST = (SUN.Position - POS).Magnitude
	BEAM.Size = VT(0,DIST,0)
	BEAM.CFrame = CF(SUN.Position,POS)*CF(0,0,-DIST/2) * ANGLES(RAD(90), RAD(0), RAD(0))
	if HIT ~= nil then
		if HIT.Parent.ClassName == "Model" then
			if HIT.Parent:FindFirstChildOfClass("Humanoid") then
				if HIT.Parent:FindFirstChildOfClass("Humanoid").Health > 0 then
					local HED = HIT.Parent:FindFirstChild("Head")
					if HED and MRANDOM(1,15) == 1 then
						CreateSound(527749592, HED, 4, MRANDOM(9,11)/10, false)
					end
					if ISBANISH == true then
					Banish(HIT.Parent) 
					elseif ISBANISH == false then
						Banish2(HIT.Parent)
					elseif ISBANISH == "Ban" then
						ban2(HIT.Parent)
					end
				end
			end
		end
	end
	for i = 1, 15 do
		Swait()
		BEAM.Size = BEAM.Size + VT(0.25,0,0.25)
		BEAM.Transparency = BEAM.Transparency + 1/15
	end
	BEAM:remove()
end
function SolarFlares()
	ATTACK = true
	Rooted = true
	SUNFLOAT = false
	CUSTOMCAM = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		if CUSTOMANGLES == true then
			Cam.CFrame = Clerp(Cam.CFrame, RootPart.CFrame * ANGLES(RAD(-45), RAD(0), RAD(0))*CF(0,0,65), 0.1)
		end
		SUN.CFrame = Clerp(SUN.CFrame,RootPart.CFrame*CF(0,18 + 4 * SIN(SINE / 12),0),0.035)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-35 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	local CFRAME = RootPart.CFrame * ANGLES(RAD(-90), RAD(0), RAD(0))*CF(0,0,125)
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			if CUSTOMANGLES == true then
				Cam.CFrame = Clerp(Cam.CFrame, CFRAME, 0.1)
			end
			SUN.CFrame = Clerp(SUN.CFrame,RootPart.CFrame*CF(0,18 + 4 * SIN(SINE / 12),0),0.035)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.45 + 0.05 * SIN(SINE / 12), -0.45) * ANGLES(RAD(90), RAD(0), RAD(-15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.45 + 0.05 * SIN(SINE / 12), -0.45) * ANGLES(RAD(90), RAD(0), RAD(15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
		until ATTACK == false
	end))
	AttackGyro()
	wait(0.2)
	for i = 1, 15 do
		Swait()
		coroutine.resume(coroutine.create(function()
			local SPEED = MRANDOM(5,32)/10
			local FLARE = CreatePart(3, Effects, "Neon", 0, 0, SUN.BrickColor, "Sun", VT(5,5,5), true)
			FLARE.Color = Color3.fromRGB(cR,cG,cB)
			MakeForm(FLARE,"Ball")
			CreateSound(463598785, FLARE, 1.2, MRANDOM(7,13)/8, false)
			FLARE.CFrame = CF(SUN.Position,Mouse.Hit.p) * ANGLES(RAD(MRANDOM(-5,5)*2), RAD(MRANDOM(-5,5)*2), RAD(0))
			local P = ParticleEmitter({Transparency1 = 1, Transparency2 = 0, Speed = 2, Acel = VT(0,0,0), RotSpeed = NumberRange.new(-15, 15), Drag = 0, Size1 = 5, Size2 = 0, Lifetime1 = 0.4, Lifetime2 = 1.2, Parent = FLARE, Emit = 100, Offset = 360, Enabled = true, Color1 = Color3.fromRGB(cR,cG,cB), Color2 = Color3.fromRGB(cR,cG,cB), Texture = 296874871})
			for i = 1, 500 do
				Swait()
				P.Enabled = true
				local HIT,HITPOS = Raycast(FLARE.Position, FLARE.CFrame.lookVector, FLARE.Size.Z/2, Character)
				if HIT then
					break
				else
					FLARE.CFrame = FLARE.CFrame*CF(0,0,-SPEED)
					if MRANDOM(1,3) == 1 then
						WACKYEFFECT({Time = 25, EffectType = "Round Slash", Size = VT(0,0,0), Size2 = VT(0.025,0,0.025), Transparency = 0.85, Transparency2 = 1, CFrame = FLARE.CFrame*CF(0,0,-FLARE.Size.X/1.5) * ANGLES(RAD(90), RAD(MRANDOM(0,360)), RAD(0)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 0.1, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = nil, SoundPitch = MRANDOM(9,11)/10, SoundVolume = MRANDOM(9,11)/2, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 45})
					end
				end
			end
			CreateSound(165970126, FLARE, 0.8, MRANDOM(7,13)/8, false)
			CreateSound(174580476, FLARE, 1.6, MRANDOM(7,13)/10, false)
			P.Enabled = false
			ApplyAoE(FLARE.Position,14,125,true)
			Debris:AddItem(FLARE,5)
			FLARE.Transparency = 1
			WACKYEFFECT({EffectType = "Sphere", Size = FLARE.Size, Size2 = VT(25,25,25), Transparency = 0, Transparency2 = 1, CFrame = CF(FLARE.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = FLARE.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
			ParticleEmitter({Transparency1 = 0.3, Transparency2 = 1, Speed = 25, Acel = VT(0,0,0), RotSpeed = NumberRange.new(-15, 15), Drag = 0.4, Size1 = 1, Size2 = 8, Lifetime1 = 0.4, Lifetime2 = 0.8, Parent = FLARE, Emit = 300, Offset = 360, Enabled = false, Color1 = Color3.fromRGB(cR,cG,cB), Color2 = Color3.fromRGB(cR,cG,cB), Texture = 296874871})
		end))
	end
	wait(0.1)
	CUSTOMCAM = false
	SUNFLOAT = true
	ATTACK = false
	Rooted = false
end
function SolarSmash()
	local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	if HITFLOOR then
		ATTACK = true
		Rooted = false
		CUSTOMCAM = true
		SUNFLOAT = false
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			if CUSTOMANGLES == true then
				Cam.CFrame = Clerp(Cam.CFrame, RootPart.CFrame * ANGLES(RAD(-45), RAD(0), RAD(0))*CF(0,0,65), 0.1)
			end
			SUN.CFrame = Clerp(SUN.CFrame,RootPart.CFrame*CF(0,18 + 4 * SIN(SINE / 12),6),0.035)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-35 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		coroutine.resume(coroutine.create(function()
			repeat
				Swait()
				if CUSTOMANGLES == true then
					Cam.CFrame = Clerp(Cam.CFrame, RootPart.CFrame * ANGLES(RAD(-75), RAD(0), RAD(0))*CF(0,6,65), 0.1)
				end
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.45 + 0.05 * SIN(SINE / 12), -0.45) * ANGLES(RAD(35), RAD(0), RAD(-15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.45 + 0.05 * SIN(SINE / 12), -0.45) * ANGLES(RAD(35), RAD(0), RAD(15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
			until ATTACK == false
		end))
		local CFRAME = RootPart.CFrame*CF(0,-2,-17)
		for i = 1, 10 do
			Swait()
			SUN.CFrame = Clerp(SUN.CFrame,CFRAME, 0.25)
		end
		ApplyAoE(SUN.Position,65,225,true)
		ParticleEmitter({Transparency1 = 0.3, Transparency2 = 1, Speed = 125, Acel = VT(0,0,0), RotSpeed = NumberRange.new(-15, 15), Drag = 0.4, Size1 = 15, Size2 = 32, Lifetime1 = 0.4, Lifetime2 = 1, Parent = SUN, Emit = 300, Offset = 360, Enabled = false, Color1 = Color3.fromRGB(cR,cG,cB), Color2 = Color3.fromRGB(cR,cG,cB), Texture = 296874871})
		for i = 1, 8 do
			WACKYEFFECT({Time = 30+(i*25), EffectType = "Wave", Size = VT(15,0,15), Size2 = VT(120,0,120), Transparency = 0.6, Transparency2 = 1, CFrame = CF(SUN.Position-VT(0,5,0)) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 0.1, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = nil, SoundPitch = MRANDOM(9,11)/10, SoundVolume = MRANDOM(9,11)/2, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 22})
		end
		for i = 1, 5 do
			WACKYEFFECT({Time = 50+(i*25), EffectType = "Round Slash", Size = VT(0,0,0), Size2 = VT(1.5,0,1.5), Transparency = 0, Transparency2 = 1, CFrame = CF(SUN.Position-VT(0,5,0)) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 0.1, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = nil, SoundPitch = MRANDOM(9,11)/10, SoundVolume = MRANDOM(9,11)/2, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 3})
		end
		WACKYEFFECT({Time = 75, EffectType = "Sphere", Size = SUN.Size, Size2 = SUN.Size*6, Transparency = 0, Transparency2 = 1, CFrame = CF(SUN.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = 168513088, SoundPitch = 1, SoundVolume = 5, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 3})
		WACKYEFFECT({Time = 65, EffectType = "Sphere", Size = SUN.Size, Size2 = SUN.Size*5.5, Transparency = 0, Transparency2 = 1, CFrame = CF(SUN.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = 201858144, SoundPitch = 1, SoundVolume = 3, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
		local bv = Instance.new("BodyVelocity") 
		bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
		bv.velocity = CF(CFRAME.p-VT(0,12,0),RootPart.Position).lookVector*125
		bv.Parent = RootPart
		Debris:AddItem(bv,0.02)
		CUSTOMCAM = false
		for i = 1, 5 do
			Swait()
			SUN.CFrame = Clerp(SUN.CFrame,CFRAME, 0.1)
		end
		SUNFLOAT = true
		ATTACK = false
		Rooted = false
	end
end
function SolarEruption()
	ATTACK = true
	Rooted = true
	CUSTOMCAM = true
	local ANIMA = "HoldUp"
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			if ANIMA == "HoldUp" then
				if CUSTOMANGLES == true then
					Cam.CFrame = Clerp(Cam.CFrame, RootPart.CFrame * ANGLES(RAD(-45), RAD(0), RAD(0))*CF(0,0,65), 0.1)
				end
				SUN.CFrame = Clerp(SUN.CFrame,RootPart.CFrame*CF(0,28 + 4 * SIN(SINE / 12),6),0.035)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.85 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(160 + 3 * SIN(SINE / 12)), RAD(5), RAD(-15 + 3 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-11), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-11), RAD(0), RAD(0)), 1 / Animation_Speed)
			elseif ANIMA == "Fire" then
				if CUSTOMANGLES == true then
					Cam.CFrame = Clerp(Cam.CFrame, RootPart.CFrame * CF(0,135,0) * ANGLES(RAD(-90), RAD(0), RAD(0)), 0.2)
				end
				SUN.CFrame = Clerp(SUN.CFrame,RootPart.CFrame*CF(0,35,0),0.2)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-25 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.65 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(170), RAD(5), RAD(15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.65 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(170), RAD(-5), RAD(-15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(-25), RAD(85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(-25), RAD(-85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
		until ATTACK == false
	end))
	CreateSound(201858045, SUN, 1.8, MRANDOM(7,13)/10, false)
	CreateSound(278641993, SUN, 3, MRANDOM(7,13)/10, false)
	CreateSound(278641993, SUN, 2.5, MRANDOM(7,13)/10, false)
	for i = 1, 150 do
		Swait()
		WACKYEFFECT({Time = 15, EffectType = "Wave", Size = VT(85,0,85), Size2 = VT(0,0,0), Transparency = 1, Transparency2 = 0.8, CFrame = CF(SUN.Position)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
		WACKYEFFECT({Time = 15, EffectType = "Sphere", Size = VT(45,45,45), Size2 = VT(0,0,0), Transparency = 0.95, Transparency2 = 1, CFrame = CF(SUN.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
	end
	wait(0.1)
	UNANCHOR = false
	ANIMA = "Fire"
	wait(0.4)
	ApplyAoE(SUN.Position,25,75,true)
	WACKYEFFECT({Time = 45, EffectType = "Sphere", Size = SUN.Size, Size2 = SUN.Size*4, Transparency = 0, Transparency2 = 1, CFrame = CF(SUN.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = nil, SoundPitch = 1, SoundVolume = 5, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 3})
	WACKYEFFECT({Time = 35, EffectType = "Sphere", Size = SUN.Size, Size2 = SUN.Size*3.5, Transparency = 0, Transparency2 = 1, CFrame = CF(SUN.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = 401056199, SoundPitch = 1, SoundVolume = 7, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
	coroutine.resume(coroutine.create(function()
		for i = 1, 32 do
			Swait()
			coroutine.resume(coroutine.create(function()
				local FLARE = CreatePart(3, Effects, "Neon", 0, 0, SUN.BrickColor, "Sun", VT(5,5,5), false)
				FLARE.CanCollide = true
				FLARE.Color = Color3.fromRGB(cR,cG,cB)
				MakeForm(FLARE,"Ball")
				Debris:AddItem(FLARE,10)
				CreateSound(463598785, FLARE, 1.2, MRANDOM(7,13)/8, false)
				local P = ParticleEmitter({Transparency1 = 1, Transparency2 = 0, Speed = 2, Acel = VT(0,0,0), RotSpeed = NumberRange.new(-15, 15), Drag = 0, Size1 = 5, Size2 = 0, Lifetime1 = 0.4, Lifetime2 = 1.2, Parent = FLARE, Emit = 100, Offset = 360, Enabled = true, Color1 = C3(1,85/255,0), Color2 = C3(1,85/255,0), Texture = 296874871})
				FLARE.CFrame = CF(SUN.Position)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
				FLARE.Velocity = CF(SUN.Position,CF(SUN.Position)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(MRANDOM(-60,60),25,MRANDOM(-60,60)).p).lookVector*MRANDOM(25,250)
				TOUCH = FLARE.Touched:Connect(function(TOC)
					if TOC.Parent ~= Character and TOC.Parent.Parent ~= Character then
						FLARE.Anchored = true
						FLARE:ClearAllChildren()
						CreateSound(165970126, FLARE, 0.8, MRANDOM(7,13)/8, false)
						CreateSound(174580476, FLARE, 1.6, MRANDOM(7,13)/10, false)
						FLARE.CanCollide = false
						ApplyAoE(FLARE.Position,14,125,true)
						FLARE.Transparency = 1
						WACKYEFFECT({EffectType = "Sphere", Size = FLARE.Size, Size2 = VT(25,25,25), Transparency = 0, Transparency2 = 1, CFrame = CF(FLARE.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = FLARE.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
						ParticleEmitter({Transparency1 = 0.3, Transparency2 = 1, Speed = 25, Acel = VT(0,0,0), RotSpeed = NumberRange.new(-15, 15), Drag = 0.4, Size1 = 1, Size2 = 8, Lifetime1 = 0.4, Lifetime2 = 0.8, Parent = FLARE, Emit = 300, Offset = 360, Enabled = false, Color1 = Color3.fromRGB(cR,cG,cB), Color2 = Color3.fromRGB(cR,cG,cB), Texture = 296874871})
						TOUCH:Disconnect()
					end
				end)
			end))
		end
	end))
	wait(1.5)
	UNANCHOR = true
	CUSTOMCAM = false
	ATTACK = false
	Rooted = false
end
function Nebula()
	ATTACK = true
	Rooted = true
	bosschatfunc("This is END!",color,120)
	FocusCamAll(9, Head, true)
	wait(0.4)
	CreateSound(201858045, SUN, 1.8, MRANDOM(7,13)/10, false)
	CreateSound(278641993, SUN, 3, MRANDOM(7,13)/10, false)
	CreateSound(278641993, SUN, 2.5, MRANDOM(7,13)/10, false)
	for i = 1, 250 do
		Swait()
		WACKYEFFECT({Time = 15, EffectType = "Wave", Size = VT(2,0,2), Size2 = VT(32,2.5,32), Transparency = 0.75, Transparency2 = 1, CFrame = CF(RootPart.CFrame*CF(0,-4,0).p) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 1, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = nil, SoundPitch = MRANDOM(9,11)/10, SoundVolume = MRANDOM(9,11)/2, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 22})
		WACKYEFFECT({Time = 15, EffectType = "Wave", Size = VT(85,0,85), Size2 = VT(0,0,0), Transparency = 1, Transparency2 = 0.8, CFrame = CF(SUN.Position)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
		WACKYEFFECT({Time = 15, EffectType = "Sphere", Size = VT(45,45,45), Size2 = VT(0,0,0), Transparency = 0.95, Transparency2 = 1, CFrame = CF(SUN.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
	end
	FocusCamAll(21.6, SUN, true)
	wait(1)
	for i = 1, 3 do
		wait(0.65)
		WACKYEFFECT({Time = 35, EffectType = "Sphere", Size = SUN.Size, Size2 = VT(250,250,250), Transparency = 0.5, Transparency2 = 1, CFrame = CF(SUN.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = 852135845, SoundPitch = 1-(i/10), SoundVolume = 5, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
	end
	wait(0.65)
	ApplyAoE(SUN.Position,9999999999991239999,125,true)
	CreateSound(385545047, Effects, 2.5, 1.4, false)
	CreateSound(385545047, Effects, 2.5, 1, false)
	CreateSound(435742675, Effects, 2.5, 1.5, false)
	CreateSound(231917744, Effects, 2.5, 1.5, false)
	CreateSound(401056199, Effects, 2.5, 1, false)
	ParticleEmitter({Transparency1 = 0.3, Transparency2 = 1, Speed = 125, Acel = VT(0,0,0), RotSpeed = NumberRange.new(-15, 15), Drag = -2, Size1 = 25, Size2 = 60, Lifetime1 = 0.4, Lifetime2 = 4, Parent = SUN, Emit = 200, Offset = 360, Enabled = false, Color1 = Color3.fromRGB(cR,cG,cB), Color2 = Color3.fromRGB(cR,cG,cB), Texture = 296874871})
	for i = 1, 3 do
		WACKYEFFECT({Time = 175, EffectType = "Sphere", Size = SUN.Size, Size2 = VT(250,250,250)+(VT(i,i,i)*180), Transparency = 0.5, Transparency2 = 1, CFrame = CF(SUN.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = nil, SoundPitch = 1-(i/10), SoundVolume = 5, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
	end
	for i = 1, 15 do
		WACKYEFFECT({Time = 100+(i*35), EffectType = "Wave", Size = VT(15,0,15), Size2 = VT(120,5,120)+(VT(i,0,i)*70), Transparency = 0.6, Transparency2 = 1, CFrame = CF(SUN.Position) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 1, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = nil, SoundPitch = MRANDOM(9,11)/10, SoundVolume = MRANDOM(9,11)/2, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 22})
	end
	ATTACK = false
	Rooted = false
end
function Taunt()
	ATTACK = true
	Rooted = true
	CUSTOMCAM = true
	CreateSound(160212768, Head, 10, 1, false)
	for i=0, 3, 0.1 / Animation_Speed do
		Swait()
		if CUSTOMANGLES == true then
			Cam.CFrame = Clerp(Cam.CFrame, RootPart.CFrame * CF(7,1.5,6) * ANGLES(RAD(-4), RAD(15), RAD(0)), 0.2)
		end
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-35)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(35)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.5 + 0.05 * SIN(SINE / 12), -0.7) * ANGLES(RAD(0), RAD(0), RAD(-95)) * ANGLES(RAD(5), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.3, 0.5 + 0.05 * SIN(SINE / 12), -0.3) * ANGLES(RAD(90), RAD(0), RAD(-35)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	CUSTOMCAM = false
	ATTACK = false
	Rooted = false
end
function CreateFlyingDebree(FLOOR, POSITION, AMOUNT, BLOCKSIZE, SWAIT, STRENGTH, DOES360)
	if FLOOR ~= nil then
		for i = 1, AMOUNT do
			do
				local DEBREE = CreatePart(3, Effects, "Neon", 0, 0, "Peal", "Debree", BLOCKSIZE, false)
				DEBREE.Material = FLOOR.Material
				DEBREE.Color = FLOOR.Color
				DEBREE.CFrame = POSITION * ANGLES(RAD(MRANDOM(-360, 360)), RAD(MRANDOM(-360, 360)), RAD(MRANDOM(-360, 360)))
				if DOES360 == true then
					DEBREE.Velocity = VT(MRANDOM(-STRENGTH, STRENGTH), MRANDOM(-STRENGTH, STRENGTH), MRANDOM(-STRENGTH, STRENGTH))
				else
					DEBREE.Velocity = VT(MRANDOM(-STRENGTH, STRENGTH), STRENGTH, MRANDOM(-STRENGTH, STRENGTH))
				end
				coroutine.resume(coroutine.create(function()
					Swait(15)
					DEBREE.Parent = FLOOR.Parent
					DEBREE.CanCollide = true
					Debris:AddItem(DEBREE, SWAIT)
				end))
			end
		end
	end
end

function chatfunc(text)
	local chat = coroutine.wrap(function()
	if Character:FindFirstChild("TalkingBillBoard")~= nil then
		Character:FindFirstChild("TalkingBillBoard"):destroy()
	end
	local Bill = Instance.new("BillboardGui",Character)
	Bill.Size = UDim2.new(0,50,0,20)
	Bill.StudsOffset = Vector3.new(0,6,0)
	Bill.Adornee = Character.Head
	Bill.Name = "TalkingBillBoard"
	local Hehe = Instance.new("TextLabel",Bill)
	Hehe.BackgroundTransparency = 1
	Hehe.BorderSizePixel = 0
	Hehe.Text = ""
	Hehe.Font = "Arcade"
	Hehe.TextSize = 33
	Hehe.TextStrokeTransparency = 0
	Hehe.Size = UDim2.new(1,0,0.5,0)
	coroutine.resume(coroutine.create(function()
		while Hehe ~= nil do
			wait()	
			Hehe.Position = UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))	
			Hehe.Rotation = math.random(-5,5)
			Hehe.TextColor3 = color
			Hehe.TextStrokeColor3 = C3(0,0,0)
		end
	end))
	for i = 1,string.len(text),1 do
		wait()
		Hehe.Text = string.sub(text,1,i)
	end
	wait(3)--Re[math.random(1, 93)]
	for i = 0, 5, .025 do
		wait()
		Bill.ExtentsOffset = Vector3.new(math.random(-i, i), math.random(-i, i), math.random(-i, i))
		Hehe.TextStrokeTransparency = i
		Hehe.TextTransparency = i
	end
	Bill:Destroy()
	end)
chat()
end

function sunfun(text2)
	local chat2 = coroutine.wrap(function()
	local Bill2 = Instance.new("BillboardGui",SUN)
	Bill2.Size = UDim2.new(0,50,0,20)
	Bill2.StudsOffset = Vector3.new(0,11,0)
	Bill2.Adornee = SUN
	Bill2.Name = "TalkingBillBoard"
	local Hehe2 = Instance.new("TextLabel",Bill2)
	Hehe2.BackgroundTransparency = 1
	Hehe2.BorderSizePixel = 0
	Hehe2.Text = ""
	Hehe2.Font = "Fantasy"
	Hehe2.TextSize = 40
	Hehe2.TextStrokeTransparency = 0
	Hehe2.Size = UDim2.new(1,0,0.5,0)
	coroutine.resume(coroutine.create(function()
		while Hehe2 ~= nil do
			wait()	
			Hehe2.Position = UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))	
			Hehe2.Rotation = math.random(-5,5)
			Hehe2.TextColor3 = color
			Hehe2.TextStrokeColor3 = C3(1,1,1)
		end
	end))
	for i = 1,string.len(text2),1 do
		wait()
		Hehe2.Text = string.sub(text2,1,i)
	end
	wait(3)--Re[math.random(1, 93)]
	for i = 0, 5, .025 do
		wait()
		Bill2.ExtentsOffset = Vector3.new(math.random(-i, i), math.random(-i, i), math.random(-i, i))
		Hehe2.TextStrokeTransparency = i
		Hehe2.TextTransparency = i
	end
	Bill2:Destroy()
	end)
chat2()
end

function onChatted(msg)
	chatfunc(msg)
end
Player.Chatted:connect(onChatted)

function FindNearestHead(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return (SinglePlayer.Torso.CFrame.p - Position).magnitude < Distance
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") then
			if v:findFirstChild("Head") then
				if v ~= Character then
					if (v.Head.Position - Position).magnitude <= Distance then
						table.insert(List, v)
					end
				end
			end
		end
	end
	return List
end
function SpawnTrail(FROM,TO,BIG)
local TRAIL = CreatePart(3, Effects, "Neon", 0, 0, "Really red", "Trail", VT(10,10,10))
	MakeForm(TRAIL,"Cyl")
local cR=255
local cG=0
local cB=0
local flg5=1 local omgidk=1
local add=15
game:GetService("RunService").Heartbeat:Connect(function()
	if omgidk>10000 then omgidk=0 end
	omgidk=omgidk+1
	if cR>=255 then flg5=1 end
	if cG>=255 then flg5=2 end
	if cB>=255 then flg5=3 end
	if flg5==1 then cR=cR-add cG=cG+add end
	if flg5==2 then cG=cG-add cB=cB+add end
	if flg5==3 then cB=cB-add cR=cR+add end
	color=Color3.fromRGB(cR,cG,cB)
	TRAIL.Color = color
end)
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL.Size = VT(0.5,DIST,0.5)
	else
		TRAIL.Size = VT(0.25,DIST,0.25)
	end
	TRAIL.CFrame = CF(FROM, TO) * CF(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 55 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.01
		end
		TRAIL:remove()
	end))
end
local GROWL = 1544355717
local ROAR = 528589382
local ECHOBLAST = 376976397
local CAST = 459523898
local ALCHEMY = 424195979
local BUILDUP = 698824317
local BIGBUILDUP = 874376217
local IMPACT = 231917744
local LARGE_EXPLOSION = 168513088
local TURNUP = 299058146
function fa()
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4*SIZE, Character)
	if HITFLOOR then
		ATTACK = true
		Rooted = true
		UNANCHOR = false
		for i=0, 0.6, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE, 0*SIZE, -0.3*SIZE + 0.05*SIZE * COS(SINE / 12)) * ANGLES(RAD(45), RAD(0), RAD(0)), 0.3 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1*SIZE) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.3 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(-35), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(-35), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -1*SIZE - 0.05*SIZE * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(60), RAD(90), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.3 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE - 0.05*SIZE * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(25), RAD(-90), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.3 / Animation_Speed)
		end
		for i=1, 120 do
			Swait()
			RootPart.CFrame = RootPart.CFrame * CF(0,((100-i)/100)*3,0.7)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE, 0*SIZE, 0*SIZE + 0.05*SIZE * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1*SIZE) - 1)) * ANGLES(RAD(45 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(35), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(35), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -1*SIZE, -0.01*SIZE) * ANGLES(RAD(25), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -0.5*SIZE, -0.01*SIZE) * ANGLES(RAD(25), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		local A = false
		coroutine.resume(coroutine.create(function()
			repeat
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE, 0*SIZE, 0*SIZE + 0.05*SIZE * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1*SIZE) - 1)) * ANGLES(RAD(-45), RAD(0), RAD(0)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(150), RAD(0), RAD(-12)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(150), RAD(0), RAD(12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -1*SIZE, -0.01*SIZE) * ANGLES(RAD(25), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -0.5*SIZE, -0.01*SIZE) * ANGLES(RAD(25), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
			until A == true
			for i=0, 0.6, 0.1 / Animation_Speed do
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE, 0*SIZE, 0*SIZE + 0.05*SIZE * COS(SINE / 12)) * ANGLES(RAD(25), RAD(0), RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1*SIZE) - 1)) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(45), RAD(0), RAD(-12)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(45), RAD(0), RAD(12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -1*SIZE, -0.01*SIZE) * ANGLES(RAD(15), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -0.5*SIZE, -0.01*SIZE) * ANGLES(RAD(15), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
			UNANCHOR = true
			ATTACK = false
			Rooted = false
		end))

		local RINGON = true
		CreateSound(BIGBUILDUP,Effects,10,0.8,false)
		coroutine.resume(coroutine.create(function()
			repeat
				Swait()

			until RINGON == false
			for i = 1, 140 do
				Swait()
				
			end

		end))
		for i = 1, 140 do
			Swait()

		end
		wait(0.1)
		A = true
		for i = 1, 16 do
			Swait(4)
			local BULLET = CreatePart(3, Effects, "Neon", 0, 0, "Pearl", "Rocc", VT(7,7,10), true)
			local POS = CF(SUN.Position)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(2,45))
			BULLET.CFrame = CF(POS.p,Mouse.Hit.p)
			BULLET.Color = color
			MakeForm(BULLET,"Ball")
			coroutine.resume(coroutine.create(function()
				for i =1, 200 do
					Swait()
					local HIT,POS,NORMAL = Raycast(BULLET.Position,BULLET.CFrame.lookVector,5,Character)
					if HIT then
						for i = 1, 3 do
							WACKYEFFECT({Time = MRANDOM(10,40), EffectType = "Crown", Size = VT(15,0,15), Size2 = VT(31,1,31)*7, Transparency = 0.4, Transparency2 = 1, CFrame = CF(POS) * ANGLES(RAD(MRANDOM(0,15)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,15))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = 1, SoundVolume = 5})
						end
						WACKYEFFECT({Time = MRANDOM(10,40), EffectType = "Sphere", Size = VT(15,15,15), Size2 = VT(60,150,60)/1.6, Transparency = 0.4, Transparency2 = 1, CFrame = CF(POS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = color, SoundID = ECHOBLAST, SoundPitch = 1, SoundVolume = 10})
						WACKYEFFECT({Time = MRANDOM(10,40), EffectType = "Sphere", Size = VT(15,15,15), Size2 = VT(60,150,60), Transparency = 0.4, Transparency2 = 1, CFrame = CF(POS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = color, SoundID = IMPACT, SoundPitch = 1, SoundVolume = 10})
						ApplyAoE(POS,65,xd,xd)
						break
					else
						BULLET.CFrame = Clerp(BULLET.CFrame,CF(BULLET.Position,Mouse.Hit.p),0.001) * CF(0,0,-4)
					end
				end
				BULLET:remove()
			end))
		end
		RINGON = false
	end
end
function Banisher_Bullet()
	ATTACK = true
	Rooted = false
	Gun.Parent = nil
	Gun2.Parent = Character
	for i=0, 0.4, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5, 0.5) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	local GYRO = IT("BodyGyro", RootPart)
	GYRO.D = 2
	GYRO.P = 20000
	GYRO.MaxTorque = VT(0, 4000000, 0)
	repeat
		GYRO.CFrame = CF(RootPart.Position, Mouse.Hit.p)
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
	    	LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5, 0.5) * ANGLES(RAD(-25), RAD(0), RAD(25)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
 			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(Hole.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(Hole.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				if ISBANISH == true then
					Banish(HIT.Parent) 
					elseif ISBANISH == false then
						Banish2(HIT.Parent)
					elseif ISBANISH == "Ban" then
						ban2(HIT.Parent)
				end
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = Hole.CFrame, MoveToPos = Hole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = Hole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = color, SoundID = 904440937, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,Hole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,Hole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		for i=0, 0.3, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5, 0.5) * ANGLES(RAD(-25), RAD(0), RAD(25)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
	GYRO:Remove()
	Gun.Parent = Character
	Gun2.Parent = nil
	bosschatfunc("Nice Shot",color,120)
end
--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

function MouseDown(Mouse)
	if ATTACK == false then
		DeadlyLaser()
	end
end

function MouseUp(Mouse)
HOLD = false
end
local shutdown = true
function KeyDown(Key)
	KEYHOLD = true
	if Key == "z" and ATTACK == false then
		sunfun("Take this!")
		SolarFlares()
	end
	if Key == "nine" and ATTACK == false then
		bosschatfunc(">:3 >:3 >:3 >:3 >:3 >:3 >:3",color,120)
	end
	if Key == "c" and ATTACK == false then
		sunfun("Soloar")
		SolarSmash()
		sunfun("Smash!")
	end
    if Key == "j" and ATTACK == false and shutdown == true then
	shutdown = false
	bosschatfunc("What about this gun?",color,120)
    elseif Key == "j" and shutdown == false and ATTACK == false then
	shutdown = true
	bosschatfunc("Maybe i don't need gun",color,120)
end
	if Key == "b" and ATTACK == false and shutdown == false then
       Banisher_Bullet()
	end
		if Key == "n" and ATTACK == false and shutdown == false then
       fa()
	end
	if Key == "k" and ATTACK == false and shutdown == false then
	wait(0.2)
	ATTACK = true
		bosschatfunc("Server shutdown in 3 seconds",color,120)
		wait(1.5)
		bosschatfunc("Server shutdown in 2 seconds",color,120)
		wait(1.5)
		bosschatfunc("Server shutdown in 1 seconds",color,120)
		wait(1.5)
		bosschatfunc("Server shutdown Now!",color,120)
		wait(1.191511)
		KickThatNigga(Character)
	end
	if Key == "v" and ATTACK == false then
		sunfun("Eruption!")
		SolarEruption()
	end

	if Key == "x" and ATTACK == false then
		chatfunc("I WILL END THIS NOW!")
		sunfun("This is end!")
		Nebula()
	end
	if Key == "y" and ATTACK == false and ISBANISH == "Ban" then
       ISBANISH = false
		chatfunc("Mode:kill")
	elseif Key == "y" and ATTACK == false and ISBANISH == false then
	   ISBANISH = true
		chatfunc("Mode:kickisher")
	elseif Key == "y" and ATTACK == false and ISBANISH == true then
	   ISBANISH = "Ban"
		chatfunc("Mode:banned")
	end

	if Key == "t" and ATTACK == false then
		chatfunc("You idiot")
		Taunt()
	end

	if Key == "q" and ATTACK == false then
		if CUSTOMANGLES == true then
			CUSTOMANGLES = false
			Cam.CameraSubject = Humanoid
		else
			CUSTOMANGLES = true
		end
	end
end

function KeyUp(Key)
	KEYHOLD = false
end

	Mouse.Button1Down:connect(function(NEWKEY)
		MouseDown(NEWKEY)
	end)
	Mouse.Button1Up:connect(function(NEWKEY)
		MouseUp(NEWKEY)
	end)
	Mouse.KeyDown:connect(function(NEWKEY)
		KeyDown(NEWKEY)
	end)
	Mouse.KeyUp:connect(function(NEWKEY)
		KeyUp(NEWKEY)
	end)

--//=================================\\
--\\=================================//

function unanchor()
	for _, c in pairs(Character:GetChildren()) do
		if c:IsA("BasePart") and c ~= RootPart then
			c.Anchored = false
		end
	end
	if UNANCHOR == true then
		RootPart.Anchored = false
	else
		RootPart.Anchored = true
	end
end
local lightning = Instance.new("ParticleEmitter",Torso)
lightning.Texture = "http://www.roblox.com/asset/?id=348321827"
lightning.LightEmission = 0
lightning.Color = ColorSequence.new(Color3.fromRGB(cR,cG,cB),Color3.fromRGB(cR,cG,cB))
lightning.LockedToPart = true
lightning.Rate = 40
lightning.Lifetime = NumberRange.new(0.1,0.10)
lightning.Rotation = NumberRange.new(0,360)
lightning.Size = NumberSequence.new(3,3,3)
lightning.Transparency = NumberSequence.new(0,0)
lightning.Speed = NumberRange.new(0,0)
lightning.RotSpeed = NumberRange.new(0,0)
lightning.ZOffset = 5.5
lightning.Parent = Character.Torso
lightning.Enabled = false

local eeeffecto = Instance.new("ParticleEmitter",Torso)
eeeffecto.Texture = "http://www.roblox.com/asset/?id=305943367"
eeeffecto.LightEmission = 0
eeeffecto.Color = ColorSequence.new(Color3.fromRGB(cR,cG,cB),Color3.fromRGB(cR,cG,cB))
eeeffecto.LockedToPart = true
eeeffecto.Rate = 10.5
eeeffecto.Lifetime = NumberRange.new(0.1,0.1)
eeeffecto.Rotation = NumberRange.new(0,0)
eeeffecto.Size = NumberSequence.new(8,8,8)
eeeffecto.Transparency = NumberSequence.new(0,0)
eeeffecto.Speed = NumberRange.new(0,0)
eeeffecto.RotSpeed = NumberRange.new(0,0)
eeeffecto.Parent = Character.Torso
eeeffecto.Enabled = false

--//=================================\\
--||	WRAP THE WHOLE SCRIPT UP
--\\=================================//

Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true) then
		Humanoid.Jump = false
	end
end)

while true do
	Swait()
	eeeffecto.Color = ColorSequence.new(Color3.fromRGB(cR,cG,cB),Color3.fromRGB(cR,cG,cB))
	lightning.Color = ColorSequence.new(Color3.fromRGB(cR,cG,cB),Color3.fromRGB(cR,cG,cB))
	script.Parent = WEAPONGUI
	ANIMATE.Parent = nil
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
	    v:Stop();
	end
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	local WALKSPEEDVALUE = 8 / (Humanoid.WalkSpeed / 16)
	if ANIM == "Walk" and TORSOVELOCITY > 1 then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0.1 * COS(SINE / (WALKSPEEDVALUE/2))) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 0.875 - 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), 0.25 * SIN(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10+50 * COS(SINE / WALKSPEEDVALUE))), 0.6 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 0.875 + 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.25 * SIN(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-10+50 * COS(SINE / WALKSPEEDVALUE))), 0.6 / Animation_Speed)
	elseif (ANIM ~= "Walk") or (TORSOVELOCITY < 1) then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.7 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.7 / Animation_Speed)
	end
	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
		ANIM = "Jump"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(25 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(-25 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(1), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
		ANIM = "Fall"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(45 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(-45 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -0.7) * ANGLES(RAD(-25 + 5 * SIN(SINE / 12)), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.3) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
		ANIM = "Idle"
		if ATTACK == false and shutdown == true then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-35)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(35)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.5 + 0.05 * SIN(SINE / 12), -0.7) * ANGLES(RAD(0), RAD(0), RAD(-95)) * ANGLES(RAD(5), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
		elseif ATTACK == false and shutdown == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2.4 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(3), RAD(-35), RAD(32-10*COS(SINE/12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(3), RAD(35), RAD(-32+10*COS(SINE/12))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.124 * COS(SINE/12), 0) * ANGLES(RAD(0), RAD(80 - 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-7.5 + 0.5* SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5 + 0.124 * COS(SINE/12), -0.3) * ANGLES(RAD(-25), RAD(-80 + 1 * SIN(SINE / 6)), RAD(0)) * ANGLES(RAD(-7.5 + 0.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
		ANIM = "Walk"
		if ATTACK == false and shutdown == true then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.05) * ANGLES(RAD(5), RAD(0), RAD(-15-7 * COS(SINE / (WALKSPEEDVALUE)))), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 1 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(15+7 * COS(SINE / (WALKSPEEDVALUE)))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.5 + 0.05 * SIN(SINE / 12), -0.7) * ANGLES(RAD(0), RAD(0), RAD(-95)) * ANGLES(RAD(5), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(105), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
		elseif ATTACK == false and shutdown == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 8 * SIN(SINE / (6 / 2))), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.4) * ANGLES(RAD(150), RAD(0), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-60 * COS(SINE / 6)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
		end
	end
	unanchor()
	if INTROD == true then
		if SUNFLOAT == true then
			SUN.CFrame = Clerp(SUN.CFrame,Torso.CFrame*CF(0,14 + 4 * SIN(SINE / 12),11),0.035)
		end
		local HITFLOOR,SUNPOS = Raycast(SUN.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 23, Character)
		if HITFLOOR then
			local DISTANCE = (SUNPOS - SUN.Position).Magnitude
			local SIZE = (23 - DISTANCE)*2
			WACKYEFFECT({Time = 15, EffectType = "Wave", Size = VT(0,2,0), Size2 = VT(SIZE,0,SIZE), Transparency = 0.6, Transparency2 = 1, CFrame = CF(SUNPOS) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0)) * ANGLES(RAD(MRANDOM(-25,25)), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 0.5, RotationY = 0, RotationZ = 0, Material = "Fabric", Color = Color3.fromRGB(cR,cG,cB), SoundID = nil, SoundPitch = MRANDOM(9,11)/10, SoundVolume = MRANDOM(9,11)/2, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 6})
		end
	end
	Humanoid.MaxHealth = 500
	Humanoid.Health = 500
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	BMUSIC.SoundId = "rbxassetid://"..SONGID
	BMUSIC.Looped = true
	BMUSIC.Pitch = PITCH
	BMUSIC.Volume = VOLUME
	BMUSIC.Playing = INTROD
	if BMUSIC.Parent ~= RootPart then
		BMUSIC = IT("Sound",RootPart)
	end
	Humanoid.Name = "THE_SUN_IS_A_DEADLY_LASER"
	if INTROD == false and ATTACK == false then
		Intro()
		INTROD = true
	end
	if shutdown == true then
		tecks2.Text = "Deadly sun"
		lightning.Enabled =false
		eeeffecto.Enabled = false
		Gun.Parent = Character
		Gun2.Parent = nil
	elseif shutdown == false then
		tecks2.Text = epic_name[MRANDOM(1,#epic_name)]
		lightning.Enabled = true
		eeeffecto.Enabled = true
		Gun2.Parent = Character
		Gun.Parent = nil
	end
	ANTI()
	refit()
	local VELOC = -RootPart.RotVelocity.Y
	if VELOC < -35 then
		VELOC = -35
	elseif VELOC > 35 then
		VELOC = 35
	end
	if CUSTOMANGLES == true then
		Cam.CameraType = Enum.CameraType.Scriptable
		if CUSTOMCAM == false then
			Cam.CFrame = Clerp(Cam.CFrame, RootPart.CFrame * ANGLES(RAD(-5), RAD(0), RAD(VELOC)) * CF(12,7,25), 0.15)
		end
	else
		Cam.CameraType = CAMTYPE
	end
end

--//=================================\\
--\\=================================//





--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--
