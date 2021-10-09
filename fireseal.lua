spawn (function()
---------------------------------
--Fireseal Sword (For Oblivion)--
---------------------------------
--By	 --
--CKbackup-
-----------cler

player = Player
chara = player.Character
debby = game.Debris
chara.Humanoid.WalkSpeed = 0
atkd = false
berserkmode = false
targetted = nil
colorss = {"Deep orange","New Yeller","Bright yellow","Neon orange"}
rs = RenderStepped
overcharge = 0
attacking = false

--Outfit--
New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

Fireseal = New("Model",chara,"Fireseal",{})
Handle = New("Part",Fireseal,"Handle",{BrickColor = BrickColor.new("Dark orange"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1, 0.200000003),CFrame = CFrame.new(-25.9000072, 1.40001106, 9.89996243, 1, 0, 0, 0, 0, -1, 0, 1, 0),CanCollide = false,Color = Color3.new(0.627451, 0.372549, 0.207843),})
Mesh = New("CylinderMesh",Handle,"Mesh",{})
Weld = New("ManualWeld",Handle,"Weld",{Part0 = Handle,Part1 = chara["Right Arm"],C0 = CFrame.new(0, 0, 0, 1, 0, -0, 0, 0, 1, 0, -1, 0),C1 = CFrame.new(-7.62939453e-006, -1.00000215, -3.71932983e-005, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Fireseal,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(2, 0.200000003, 0.200000003),CFrame = CFrame.new(-25.9000072, 1.40001106, 10.8999958, 0, 0, -1, 1, 0, 0, 0, -1, 0),CanCollide = false,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 1, 2),MeshType = Enum.MeshType.Torso,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(0, 1.00003338, 0, 1, 0, -0, 0, 0, 1, 0, -1, 0),})
Part = New("Part",Fireseal,"Part",{BrickColor = BrickColor.new("Deep orange"),Material = Enum.Material.Neon,Size = Vector3.new(0.800000131, 3.5999999, 0.200000003),CFrame = CFrame.new(-25.9000072, 1.40001106, 12.8000183, 0, 0, -1, 1, 0, 0, 0, -1, 0),CanCollide = false,Color = Color3.new(1, 0.686275, 0),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.29999995, 1.10000002, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(0, 2.90005589, 0, 1, 0, -0, 0, 0, 1, 0, -1, 0),})
Part = New("Part",Fireseal,"Part",{BrickColor = BrickColor.new("Deep orange"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 0.399999768, 0.200000003),CFrame = CFrame.new(-25.9000072, 1.40001106, 11.8000154, 0, 0, -1, 1, 0, 0, 0, -1, 0),CanCollide = false,Color = Color3.new(1, 0.686275, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.600000024, 0.600000024, 1.20000005),MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(0, 1.90005302, 0, 1, 0, -0, 0, 0, 1, 0, -1, 0),})
Hitbox = New("Part",Fireseal,"Hitbox",{Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.800000131, 3.5999999, 0.200000003),CFrame = CFrame.new(-25.9000072, 1.40001106, 12.8000183, 0, 0, -1, 1, 0, 0, 0, -1, 0),CanCollide = false,})
Mesh = New("BlockMesh",Hitbox,"Mesh",{})
Weld = New("ManualWeld",Hitbox,"Weld",{Part0 = Hitbox,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(0, 2.90005589, 0, 1, 0, -0, 0, 0, 1, 0, -1, 0),})
Part = New("Part",Fireseal,"Part",{BrickColor = BrickColor.new("Deep orange"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 0.799999774, 0.200000003),CFrame = CFrame.new(-25.9000072, 1.40001106, 11.4000149, 0, 0, -1, 1, 0, 0, 0, -1, 0),CanCollide = false,Color = Color3.new(1, 0.686275, 0),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(1.20000005, 1, 1.20000005),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(0, 1.50005245, 0, 1, 0, -0, 0, 0, 1, 0, -1, 0),})
Part = New("Part",Fireseal,"Part",{BrickColor = BrickColor.new("Dark orange"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-25.9000072, 1.40001106, 9.89996243, 1, 0, 0, 0, 0, -1, 0, 1, 0),CanCollide = false,Color = Color3.new(0.627451, 0.372549, 0.207843),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(1.5, 0.800000012, 1.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, -0, 0, 0, 1, 0, -1, 0),C1 = CFrame.new(0, 0, 0, 1, 0, -0, 0, 0, 1, 0, -1, 0),})
Part = New("Part",Fireseal,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-25.9000072, 1.40001106, 9.29996109, 1, 0, 0, 0, 0, -1, 0, 1, 0),CanCollide = false,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(2, 1, 2),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, -0, 0, 0, 1, 0, -1, 0),C1 = CFrame.new(0, -0.600001335, 0, 1, 0, -0, 0, 0, 1, 0, -1, 0),})
Part = New("Part",Fireseal,"Part",{BrickColor = BrickColor.new("Dark orange"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-25.9000072, 1.40001106, 10.2999611, 1, 0, 0, 0, 0, -1, 0, 1, 0),CanCollide = false,Color = Color3.new(0.627451, 0.372549, 0.207843),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(1.5, 0.800000012, 1.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, -0, 0, 0, 1, 0, -1, 0),C1 = CFrame.new(0, 0.399998665, 0, 1, 0, -0, 0, 0, 1, 0, -1, 0),})
Part = New("Part",Fireseal,"Part",{BrickColor = BrickColor.new("Dark orange"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-25.9000072, 1.40001106, 10.0999622, 1, 0, 0, 0, 0, -1, 0, 1, 0),CanCollide = false,Color = Color3.new(0.627451, 0.372549, 0.207843),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(1.5, 0.800000012, 1.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, -0, 0, 0, 1, 0, -1, 0),C1 = CFrame.new(0, 0.199999809, 0, 1, 0, -0, 0, 0, 1, 0, -1, 0),})
Part = New("Part",Fireseal,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-25.9000072, 1.40001106, 10.4999733, 1, 0, 0, 0, 0, -1, 0, 1, 0),CanCollide = false,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(2, 1, 2),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, -0, 0, 0, 1, 0, -1, 0),C1 = CFrame.new(0, 0.600010872, 0, 1, 0, -0, 0, 0, 1, 0, -1, 0),})
Part = New("Part",Fireseal,"Part",{BrickColor = BrickColor.new("Dark orange"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-25.9000072, 1.40001106, 9.49996281, 1, 0, 0, 0, 0, -1, 0, 1, 0),CanCollide = false,Color = Color3.new(0.627451, 0.372549, 0.207843),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(1.5, 0.800000012, 1.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, -0, 0, 0, 1, 0, -1, 0),C1 = CFrame.new(0, -0.399999619, 0, 1, 0, -0, 0, 0, 1, 0, -1, 0),})
Part = New("Part",Fireseal,"Part",{BrickColor = BrickColor.new("Dark orange"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-25.9000072, 1.40001106, 9.69996643, 1, 0, 0, 0, 0, -1, 0, 1, 0),CanCollide = false,Color = Color3.new(0.627451, 0.372549, 0.207843),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(1.5, 0.800000012, 1.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, -0, 0, 0, 1, 0, -1, 0),C1 = CFrame.new(0, -0.199995995, 0, 1, 0, -0, 0, 0, 1, 0, -1, 0),})
Part = New("Part",Fireseal,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.20000000298023,Size = Vector3.new(1, 0.200000003, 0.200000003),CFrame = CFrame.new(-25.9000072, 1.40001106, 10.6999722, 0, 0, -1, 1, 0, 0, 0, -1, 0),CanCollide = false,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 1, 2),MeshType = Enum.MeshType.Torso,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(0, 0.800009727, 0, 1, 0, -0, 0, 0, 1, 0, -1, 0),})

RightArm = New("Model",chara,"RightArm",{})
MainPart = New("Part",RightArm,"MainPart",{Transparency = 1,Transparency = 1,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(0.5, 3.00000787, -3.50019717, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara["Right Arm"],C1 = CFrame.new(0, -1.00135803e-005, -0.000197172165, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Emit2Part = New("Part",RightArm,"Emit2Part",{BrickColor = BrickColor.new("Hot pink"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(0.5, 2.10001373, -3.5001967, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0.74902),})
Mesh = New("SpecialMesh",Emit2Part,"Mesh",{Scale = Vector3.new(1.29999995, 1.29999995, 1.29999995),MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",Emit2Part,"Weld",{Part0 = Emit2Part,Part1 = MainPart,C1 = CFrame.new(0, -0.899994135, 4.76837158e-007, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
LeftArm = New("Model",chara,"LeftArm",{})
MainPart = New("Part",LeftArm,"MainPart",{Transparency = 1,Transparency = 1,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(-2.50000024, 3.00000787, -3.50019717, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara["Left Arm"],C1 = CFrame.new(-2.38418579e-007, -1.00135803e-005, -0.000197172165, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
EmitPart = New("Part",LeftArm,"EmitPart",{BrickColor = BrickColor.new("Hot pink"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-2.5, 2.10001373, -3.5001967, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0.74902),})
Mesh = New("SpecialMesh",EmitPart,"Mesh",{Scale = Vector3.new(1.29999995, 1.29999995, 1.29999995),MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",EmitPart,"Weld",{Part0 = EmitPart,Part1 = MainPart,C1 = CFrame.new(2.38418579e-007, -0.899994135, 4.76837158e-007, 1, 0, 0, 0, 1, 0, 0, 0, 1),})

lach = LeftArm:GetChildren()
rach = RightArm:GetChildren()
ch = chara:GetChildren()

function CreateTrailObj(parent,color1,color2,ofsx,ofsz)
local Att1 =  New("Attachment",parent,"Att1",{Position = Vector3.new(ofsx,parent.Size.Y/2,ofsz)})
local Att2 =  New("Attachment",parent,"Att2",{Position = Vector3.new(ofsx,-(parent.Size.Y/2),ofsz)})
local TEff = New("Trail",parent,"TrailEff",{Color = ColorSequence.new({ColorSequenceKeypoint.new(0,BrickColor.new(color1).Color),ColorSequenceKeypoint.new(1,BrickColor.new(color2).Color)}),Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,.5),NumberSequenceKeypoint.new(1,1)}),Attachment0 = Att1,Attachment1 = Att2,Enabled = false,Lifetime = .5,MinLength = .001})
return TEff
end

SlashTrail = CreateTrailObj(Hitbox,"Deep orange","New Yeller",0,0)
PunchTrail = CreateTrailObj(chara["Right Arm"],"White","White",0,0)
KickTrail = CreateTrailObj(chara["Left Leg"],"White","White",0,0)
FreezeKickTrail = CreateTrailObj(chara["Left Leg"],"Deep orange","New Yeller",0,0)
BRTrail = CreateTrailObj(chara["Right Leg"],"White","White",0,0)

crosshair = Instance.new("BillboardGui",chara)
crosshair.Size = UDim2.new(10,0,10,0)
crosshair.Enabled = false
imgl = Instance.new("ImageLabel",crosshair)
imgl.Position = UDim2.new(0,0,0,0)
imgl.Size = UDim2.new(1,0,1,0)
imgl.Image = "rbxassetid://233522684"
imgl.BackgroundTransparency = 1
imgl.ImageColor3 = Color3.new(1,1,0)

--Sounds--
function LoadSnd(id,loop,vol,pit)
local snd = New("Sound",chara,"Sound",{SoundId = "rbxassetid://"..id,Looped = loop,Volume = vol,Pitch = pit})
return snd
end
StartUpSnd = LoadSnd(153092315,false,1,.8)
SwingSnd = LoadSnd(200633108,false,1,1)
Swing2Snd = LoadSnd(200633148,false,1,1)
HitSnd = LoadSnd(153092274,false,1,1)
HitPunchSnd = LoadSnd(153092227,false,1,1)
DodgeSnd = LoadSnd(232210079,false,1,1)
ExpSnd = LoadSnd(142070127,false,1,1)
FlySnd = LoadSnd(169445602,false,1,1)
BExpSnd = LoadSnd(168586621,false,1,.5)
ClawDashSnd = LoadSnd(62339698,false,1,.5)
ChargeSnd = LoadSnd(137463716,false,1,1)
LasSnd = LoadSnd(162246701,false,1,1)
LasLoopSnd = LoadSnd(162246683,true,1,1)
ChatSnd = LoadSnd(565939471,false,1,1)
RStompSnd = LoadSnd(2760979,false,1,1)
SuperSnd = LoadSnd(153092315,false,1,.8)
GunFlameSnd = LoadSnd(48618802,false,1,1.5)
OrbSnd = LoadSnd(233091161,false,1,1)
ElectricSnd = LoadSnd(231917975,false,1,1)
LightsOutSnd = LoadSnd(231917794,false,1,1)
SkyKickSnd = LoadSnd(12222208,false,1,.5)
SkyBeamSnd = LoadSnd(183763487,false,1,1)
TargetSnd = LoadSnd(613361563,false,1,1)
SV1Snd = LoadSnd(28144425,false,1,.265)
SV2Snd = LoadSnd(2697431,false,1,.3)
SVHitSnd = LoadSnd(62339698,false,1,.3)
BurnSnd = LoadSnd(32791565,false,3,1)
BurningSnd = LoadSnd(31760113,true,5,1)
BlockedSnd = LoadSnd(357622136,false,1,1)
SwooshSnd = LoadSnd(158037267,false,1,1)

--Play Sound in Part--
function PlaySnd(snd,part)
local sound = snd:Clone()
sound.PlayOnRemove = true
sound.Parent = part
sound:Destroy()
end

--Target Select--
function TargetSelect(person)
local dd=coroutine.wrap(function()
if targetted ~= person then
targetted = person
for i = 0,30,10 do
wait(.05)
crosshair.Size = UDim2.new(40-i,0,40-i,0)
end
end
end)
dd()
end

--Fire Effect-
function FireEffect(part)
if part:FindFirstChild("FireEffect")==nil then
local fireeff = Instance.new("ParticleEmitter",part)
fireeff.Name = "FireEffect"
fireeff.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0)),ColorSequenceKeypoint.new(1,Color3.new(1,1,0))})
fireeff.LightEmission = 1
fireeff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(1,0)})
fireeff.Texture = "rbxasset://textures/particles/smoke_main.dds"
fireeff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
fireeff.Acceleration = Vector3.new(0,30,0)
fireeff.Lifetime = NumberRange.new(.5)
fireeff.Rate = 1000
fireeff.Rotation = NumberRange.new(0,359)
fireeff.RotSpeed = NumberRange.new(100)
fireeff.Speed = NumberRange.new(0)
fireeff.VelocitySpread = 10
return fireeff
end
end

--Damage Function--
function dealdmg(dude,damage,env,toim,kby,kbx)
hurt = coroutine.wrap(function(dude2,damage2,env2,toim2)
if dude ~= chara and dude:FindFirstChild("IsHit") == nil then
TargetSelect(dude)
finaldmg = damage + math.random(-env,env)
if berserkmode == true then
finaldmg = math.floor(finaldmg * 1.1)
if punchactive == false and kickactive == false then
burndmg(dude,5,2,3)
end
end
dude.Humanoid.Health = dude.Humanoid.Health - finaldmg
local vall = Instance.new("ObjectValue",dude)
vall.Name = "IsHit"
debby:AddItem(vall,toim)
local bfos = Instance.new("BodyVelocity",dude.Head)
bfos.P = 20000
bfos.MaxForce = Vector3.new(bfos.P,bfos.P,bfos.P)
bfos.Velocity = Vector3.new(0,kby,0) + chara.HumanoidRootPart.CFrame.lookVector * kbx
debby:AddItem(bfos,.1)
local naeeym2 = Instance.new("BillboardGui",dude)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = dude.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = "-"..finaldmg
tecks2.Font = "Fantasy"
tecks2.FontSize = "Size24"
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(1,0.6,0)
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
for i = 1, 5 do
wait(.1)
tecks2.Position = tecks2.Position - UDim2.new(0,0,.05,0)
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.2
tecks2.TextTransparency = tecks2.TextTransparency + .2
end
naeeym2:Destroy()
end
end)
hurt(dude,damage,env,toim)
end

--Burn Damage--
function burndmg(dude,damage,env,toim)
burndude = coroutine.wrap(function()
if dude:FindFirstChild("IsBurning")==nil and dude ~= chara then
local fira = nil
local torsy = nil
local val = Instance.new("BoolValue",dude)
val.Name = "IsBurning"
if dude:FindFirstChild("Torso")~=nil then
fira = FireEffect(dude.Torso)
torsy = dude.Torso
elseif dude:FindFirstChild("UpperTorso")~=nil then
fira = FireEffect(dude.UpperTorso)
torsy = dude.UpperTorso
end
PlaySnd(BurnSnd,dude.Torso)
local snd2 = BurningSnd:clone()
snd2.Parent = torsy
snd2:Play()
for i = 1, toim*2 do
dealdmg(dude,damage,env,0,0,0)
wait(.5)
end
snd2:Destroy()
fira:Destroy()
val:Destroy()
end
end)
burndude(dude,damage,env,toim)
end

--Explode Hitbox--
function ExHitbox(rad,pos,damage,env,toim,kby,kbx)
local E = Instance.new("Explosion") 
E.Position = pos
E.Parent = game.Workspace
E.BlastRadius = rad
E.BlastPressure = 0
E.Visible = false
E.Hit:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid")~=nil then
dealdmg(hit.Parent,damage,env,toim,kby,kbx)
end
end)
end

--Chat Function--
function chatfunc(text)
local chat = coroutine.wrap(function()
if chara:FindFirstChild("TalkingBillBoard")~= nil then
chara:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",chara)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = chara.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "Fantasy"
tecks2.FontSize = "Size24"
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(1,1,1)
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
for i = 1,string.len(text),1 do
tecks2.Text = string.sub(text,1,i)
wait(.001)
end
wait(1)
for i = 1, 5 do
wait(.01)
tecks2.Position = tecks2.Position - UDim2.new(0,0,.05,0)
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.2
tecks2.TextTransparency = tecks2.TextTransparency + .2
end
naeeym2:Destroy()
end)
chat()
end

function onChatted(msg)
chatfunc(msg)
end
player.Chatted:connect(onChatted)

--Punch Hit Effect--
function PunchEff(pos)
local p = Instance.new("Part",game.Workspace)
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("White")
p.Material = "Neon"
p.Anchored = true
p.CanCollide = false
p.CFrame = pos
local pm = Instance.new("SpecialMesh",p)
pm.MeshType = "Sphere"
local disp = coroutine.wrap(function()
for i = 1, 4 do
wait(.01)
p.Transparency = p.Transparency + .2
pm.Scale = pm.Scale + Vector3.new(.2,.2,.2)
end
wait(.01)
p:Destroy()
end)
disp()
end

--Super Pause--
function SuperPause()
StartUpSnd:Play()
local p = Instance.new("Part",game.Workspace)
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("White")
p.Material = "Neon"
p.Anchored = true
p.CanCollide = false
p.CFrame = chara.Torso.CFrame
local pm = Instance.new("SpecialMesh",p)
pm.MeshType = "Sphere"
local disp = coroutine.wrap(function()
for i = 1, 4 do
wait(.01)
p.Transparency = p.Transparency + .2
pm.Scale = pm.Scale + Vector3.new(5,5,5)
end
wait(.01)
p:Destroy()
end)
disp()
end

--Punch Touch--
dela = .5
punchactive = false
function punchhit(hit)
if punchactive == true then
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent ~= chara and hit.Parent:FindFirstChild("IsHit")==nil then
dealdmg(hit.Parent,10,2,dela,0,5)
PlaySnd(HitPunchSnd,hit.Parent.Head)
PunchEff(Emit2Part.CFrame)
end
end
end
Emit2Part.Touched:connect(punchhit)
EmitPart.Touched:connect(punchhit)

--Kick Touch--
kickactive = false
dkickactive = false
skickactive = false
didskick = false
lkickactive = false
function kickhit(hit)
if kickactive == true then
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent ~= chara and hit.Parent:FindFirstChild("IsHit")==nil then
PlaySnd(HitPunchSnd,hit.Parent.Head)
PunchEff(hit.CFrame)
if dkickactive == true then
dealdmg(hit.Parent,13,2,dela,0,10)
hit.Parent.Humanoid.PlatformStand = true
hit.Parent.Head.CFrame = CFrame.new(hit.Parent.Head.Position.x,hit.Parent.Head.Position.y,hit.Parent.Head.Position.z) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
wait(3)
hit.Parent.Humanoid.PlatformStand = false
elseif skickactive == true then
local bodpf = Instance.new("BodyPosition",hit.Parent.Head)
bodpf.MaxForce = Vector3.new(10000,10000,10000)
bodpf.Position = chara.HumanoidRootPart.Position + Vector3.new(0,30,0) + (chara.HumanoidRootPart.CFrame.lookVector*3)
debby:AddItem(bodpf,3.5)
dealdmg(hit.Parent,13,2,dela,50,10)
didskick = true
elseif lkickactive == true then
if hit.Parent.Head:FindFirstChild("BodyPosition") ~= nil then
hit.Parent.Head:FindFirstChild("BodyPosition"):Destroy()
end
dealdmg(hit.Parent,13,2,dela,-50,50)
else
dealdmg(hit.Parent,10,2,dela,0,10)
end
end
end
end
chara["Left Leg"].Touched:connect(kickhit)
chara["Right Leg"].Touched:connect(kickhit)

--Material Return--
gprop = {}
function materialhit()
local part = workspace:FindPartOnRay(Ray.new(chara.HumanoidRootPart.Position-Vector3.new(0,2.4,0),Vector3.new(0,-1000,0)))
if part then
gprop = {part.BrickColor,part.Material}
end
end

--Clerp Animations--
TC = chara.HumanoidRootPart.RootJoint
HC = chara.Torso.Neck
RAC = chara.Torso["Right Shoulder"]
LAC = chara.Torso["Left Shoulder"]
RLC = chara.Torso["Right Hip"]
LLC = chara.Torso["Left Hip"]
TCF = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
HCF = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
RACF = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
LACF = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RLCF = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
LLCF = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RWF = CFrame.new(-1.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LWF = CFrame.new(1.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RLWF = CFrame.new(-.5, 2, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LLWF = CFrame.new(.5, 2, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW = Instance.new("Weld",HC.Parent)
RW.Part1 = HC.Parent
RW.Part0 = chara["Right Arm"]
RW.C0 = RWF
LW = Instance.new("Weld",HC.Parent)
LW.Part1 = HC.Parent
LW.Part0 = chara["Left Arm"]
LW.C0 = LWF
RLW = nil
LLW = nil

function AddLegWelds()
RLW = Instance.new("Weld",chara["Right Leg"])
RLW.Part1 = HC.Parent
RLW.Part0 = chara["Right Leg"]
RLW.C0 = RLWF
LLW = Instance.new("Weld",chara["Left Leg"])
LLW.Part1 = HC.Parent
LLW.Part0 = chara["Left Leg"]
LLW.C0 = LLWF
end

function DestroyLegWelds()
RLC = New("Motor6D",chara.Torso,"Right Hip",{Part0 = chara.Torso,Part1 = chara["Right Leg"],C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),})
LLC = New("Motor6D",chara.Torso,"Left Hip",{Part0 = chara.Torso,Part1 = chara["Left Leg"],C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
RLW:Destroy()
LLW:Destroy()
end

function clerp(a,b,c)
return a:lerp(b,c)
end


ias = New("ScreenGui",player.PlayerGui,"InfoScreen",{})
sus = New("TextBox",player.PlayerGui.InfoScreen,"OverdriveTxtBox",{BackgroundColor3 = Color3.new(1,1,1),BorderColor3 = Color3.new(27/255,42/255,53/255),BorderSizePixel = 2,Position = UDim2.new(0,0,0,325),Size = UDim2.new(0,100,0,25),Font = "Fantasy",Text = "0%",TextColor3 = Color3.new(1,1,1),TextScaled = true,TextStrokeColor3 = Color3.new(0,0,0),TextStrokeTransparency = 0})
sus = New("TextBox",player.PlayerGui.InfoScreen,"KeystrokeTxtBox",{BackgroundColor3 = Color3.new(1,1,1),BorderColor3 = Color3.new(27/255,42/255,53/255),BorderSizePixel = 2,Position = UDim2.new(0,0,0,350),Size = UDim2.new(0,100,0,25),Font = "Fantasy",Text = "",TextColor3 = Color3.new(1,1,1),TextScaled = true,TextStrokeColor3 = Color3.new(0,0,0),TextStrokeTransparency = 0})
sus = New("TextBox",player.PlayerGui.InfoScreen,"BlockTxtBox",{BackgroundColor3 = Color3.new(1,1,1),BorderColor3 = Color3.new(27/255,42/255,53/255),BorderSizePixel = 2,Position = UDim2.new(0,0,0,375),Size = UDim2.new(0,100,0,25),Font = "Fantasy",Text = "0%",TextColor3 = Color3.new(1,1,1),TextScaled = true,TextStrokeColor3 = Color3.new(0,0,0),TextStrokeTransparency = 0})

function ultcool()
local CoolDown = New("TextBox",player.PlayerGui.InfoScreen,"UltCoolDown",{BackgroundColor3 = Color3.new(1,1,1),BorderColor3 = Color3.new(27/255,42/255,53/255),BorderSizePixel = 2,Position = UDim2.new(0,0,0,300),Size = UDim2.new(0,100,0,25),Font = "Fantasy",Text = "Ult. Cooldown",TextColor3 = Color3.new(1,1,1),TextScaled = true,TextStrokeColor3 = Color3.new(0,0,0),TextStrokeTransparency = 0})
debby:AddItem(CoolDown,13)
end

--TC.C0 = TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
--HC.C0 = HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50))
--RW.C0 = (RWF + Vector3.new(1,2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90))
--LW.C0 = LWF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(2))

TC.C0 = TCF
HC.C0 = HCF
RW.C0 = RWF
LW.C0 = LWF

--Idle Clerp--
ITCF = TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50))
IHCF = HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(50))
IRWF = RWF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-2))
ILWF = (LWF + Vector3.new(-.2,-.2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-20))

function res()
TC.C0 = ITCF
HC.C0 = IHCF
RW.C0 = IRWF
LW.C0 = ILWF
end
res()

--Intro--
AddLegWelds()
local fir = FireEffect(chara.Torso)
fir.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,5),NumberSequenceKeypoint.new(1,0)})
fir.Acceleration = Vector3.new(0,90,0)
TC.C0 = (TCF + Vector3.new(0,50,0)) * CFrame.fromEulerAnglesXYZ(math.rad(20),0,0)
HC.C0 = HCF * CFrame.fromEulerAnglesXYZ(math.rad(20),0,0)
RW.C0 = (RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50))
LW.C0 = (LWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(50))
LLW.C0 = LLWF
RLW.C0 = RLWF + Vector3.new(0,-1,1)
DodgeSnd:Play()
for i = 0,1,.1 do
TC.C0 = clerp((TCF + Vector3.new(0,50,0)) * CFrame.fromEulerAnglesXYZ(math.rad(20),0,0),TCF * CFrame.fromEulerAnglesXYZ(math.rad(20),0,0),i)
rs:wait()
end
TC.C0 = TCF * CFrame.fromEulerAnglesXYZ(math.rad(20),0,0)
--for i = 1, 10 do
--local gtrace = Instance.new("Part",game.Workspace)
--gtrace.BrickColor = gprop[1]
--gtrace.Material = gprop[2]
--gtrace.Size = Vector3.new(3,3,3)
--gtrace.Anchored = true
--gtrace.CFrame = (chara.HumanoidRootPart.CFrame + Vector3.new(math.random(-10,10),-3,math.random(-10,10))) * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
--local gdisp = coroutine.wrap(function()
--for i = 1, 9 do
--wait(.1)
--gtrace.Transparency = gtrace.Transparency + .1
--end
--gtrace:Destroy()
--end)
--gdisp()
--end
BExpSnd:Play()
local jtrace = Instance.new("Part",game.Workspace)
jtrace.Size = Vector3.new(0,0,0)
jtrace.Position = chara.HumanoidRootPart.Position
jtrace.CFrame = chara.HumanoidRootPart.CFrame - Vector3.new(0,2.5,0)
jtrace.Anchored = true
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh.Scale = Vector3.new(1,1,1)
tmesh.Offset = Vector3.new(0,0,-.125)
for i = 1, 10 do
wait(.01)
TC.C0 = TCF * CFrame.fromEulerAnglesXYZ(math.rad(20),0,0)
HC.C0 = HCF * CFrame.fromEulerAnglesXYZ(math.rad(20),0,0)
RW.C0 = (RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50))
LW.C0 = (LWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(50))
jtrace.Transparency = jtrace.Transparency + .1
tmesh.Scale = tmesh.Scale + Vector3.new(2,.05,2)
end
wait(.01)
jtrace:Destroy()
wait(1)
fir.Enabled = false
for i = 0,1,.1 do
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(math.rad(20),0,0),ITCF,i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(math.rad(20),0,0),IHCF,i)
RW.C0 = clerp((RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50)),IRWF,i)
LW.C0 = clerp((LWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(50)),ILWF,i)
LLW.C0 = LLWF
RLW.C0 = clerp(RLWF + Vector3.new(0,-1,1),RLWF,i)
rs:wait()
end
fir:Destroy()
res()
DestroyLegWelds()

chara.Humanoid.WalkSpeed = 16

--Overdrive--
function Overdrive()
del = false
atkd = false
overcharge = 0
chara.Humanoid.WalkSpeed = 0
chatfunc("Unleashing Armagus!")
berserkmode = true
local jtrace = Instance.new("Part",game.Workspace)
jtrace.Size = Vector3.new(0,0,0)
jtrace.Position = chara.HumanoidRootPart.Position
jtrace.CFrame = chara.HumanoidRootPart.CFrame - Vector3.new(0,2.5,0)
jtrace.Anchored = true
SuperPause()
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh.Scale = Vector3.new(1,1,1)
tmesh.Offset = Vector3.new(0,0,-.125)
local p1mit = FireEffect(Hitbox)
Void = nil
VoidParts = {}
Equipped = false
function RayCast(Position, Direction, MaxDistance, IgnoreList)
	return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(Position, Direction.unit * (MaxDistance or 999.999)), IgnoreList) 
end

	Player = player
	Character = chara

	Humanoid = Character:FindFirstChild("Humanoid")
	Torso = Character:FindFirstChild("Torso")
	if not Player or not Humanoid or Humanoid.Health == 0 or not Torso then
		return
	end
	Equipped = true
	Void = Instance.new("Model")
	Void.Name = "Void"
	Angle = 0
		local VoidPart = Instance.new("Part")
		VoidPart.Name = "VoidPart"
		VoidPart.Transparency = 1
		VoidPart.BrickColor = BrickColor.new("Really black")
		VoidPart.Material = Enum.Material.Plastic
		VoidPart.Shape = Enum.PartType.Block
		VoidPart.FormFactor = Enum.FormFactor.Custom
		VoidPart.TopSurface = Enum.SurfaceType.Smooth
		VoidPart.BottomSurface = Enum.SurfaceType.Smooth
		VoidPart.Anchored = true
		VoidPart.CanCollide = false
		VoidPart.Locked = true
		VoidPart.Size = Vector3.new(10, 0.2, 10)
		local BlockMesh = Instance.new("BlockMesh")
		BlockMesh.Scale = Vector3.new(1, 1 + 0.005, 1)
		BlockMesh.Parent = VoidPart
		VoidPart.Parent = Void
		local Star = Instance.new("Decal", VoidPart)
		Star.Texture = "http://www.roblox.com/asset/?id=363838834"
		Star.Face = "Top"
		local Light = Instance.new("PointLight", VoidPart)
		Light.Color = Color3.new(1,.5,0)
		Light.Brightness = 100
		Light.Range = 10
		table.insert(VoidParts, VoidPart)
	Spawn(function()
		while Equipped and Humanoid.Parent and Humanoid.Health > 0 and Torso.Parent and berserkmode == true do
			if Angle == 360 then
				Angle = 0
			end
			Angle = Angle + 0.05
			local Hit, EndPosition = RayCast(Torso.Position, Vector3.new(0, -1, 0), (Torso.Size.Y * 6.5), {Character})
			if Hit then
				if not Void.Parent then
					Void.Parent = Character
				end
				for i, v in pairs(VoidParts) do
					v.CFrame = CFrame.new(Torso.Position.X, EndPosition.Y, Torso.Position.Z) * CFrame.Angles(0, (Angle + i), 0)
				end
			else
				Void.Parent = nil
			end
			wait()
		end
	end)
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF,.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(-20),0,0),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50)),.4+i)
LW.C0 = clerp(ILWF,(LWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(50)),.4+i)
end
for i = 1, 10 do
wait(.01)
TC.C0 = TCF
HC.C0 = HCF * CFrame.fromEulerAnglesXYZ(math.rad(-20),0,0)
RW.C0 = (RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50))
LW.C0 = (LWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(50))
jtrace.Transparency = jtrace.Transparency + .1
tmesh.Scale = tmesh.Scale + Vector3.new(2,.05,2)
end
wait(.01)
jtrace:Destroy()
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF,.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(-20),0,0),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50)),.6-i)
LW.C0 = clerp(ILWF,(LWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(50)),.6-i)
end
jtrace:Destroy()
local delll = coroutine.wrap(function()
local delval = 10
local naeeym2 = Instance.new("BillboardGui",chara)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,5,0)
naeeym2.Adornee = chara.Head
naeeym2.Name = "Counter"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "Fantasy"
tecks2.FontSize = "Size24"
tecks2.TextStrokeTransparency = 0
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.TextColor3 = Color3.new(1,0,0)
tecks2.TextStrokeColor3 = Color3.new(1,1,0)
for i = 0, 30 do
delval = 30 - i
tecks2.Text = "<"..delval..">"
wait(1)
end
berserkmode = false
p1mit:Destroy()
VoidPart:Destroy()
for i = 1, 5 do
wait(.01)
tecks2.Position = tecks2.Position - UDim2.new(0,0,.05,0)
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.2
tecks2.TextTransparency = tecks2.TextTransparency + .2
end
end)
delll()
chara.Humanoid.WalkSpeed = 16
del = false
res()
end


--Punch--
function Punch()
del = true
atkd = true
chara.Humanoid.WalkSpeed = 0
punchactive = true
PunchTrail.Enabled = true
wait(.01)
SwooshSnd:Play()
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
end
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
end
chara.Humanoid.WalkSpeed = 16
punchactive = false
PunchTrail.Enabled = false
del = false
res()
end

--Kick Atk--
function KickAtk()
del = true
atkd = true
chara.Humanoid.WalkSpeed = 0
kickactive = true
KickTrail.Enabled = true
AddLegWelds()
SwooshSnd:Play()
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(math.rad(-30),0,math.rad(-85)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(85)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,.3,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-30)),.4+i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.2,.2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-10)),.4+i)
LLW.C0 = clerp(LLWF,(LLWF - Vector3.new(1,0,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(45)),.4+i)
RLW.C0 = clerp(RLWF,(RLWF - Vector3.new(-1,0,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-45)),.4+i)
end
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(math.rad(-30),0,math.rad(-85)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(85)),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,.3,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-30)),.6-i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.2,.2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-10)),.6-i)
LLW.C0 = clerp(LLWF,(LLWF - Vector3.new(1,0,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(45)),.6-i)
RLW.C0 = clerp(RLWF,(RLWF - Vector3.new(-1,0,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-45)),.6-i)
end
DestroyLegWelds()
kickactive = false
KickTrail.Enabled = false
chara.Humanoid.WalkSpeed = 16
del = false
res()
end

--Sweep Kick--
function SweepKick()
del = true
atkd = true
chara.Humanoid.WalkSpeed = 0
kickactive = true
dkickactive = true
KickTrail.Enabled = true
AddLegWelds()
SwooshSnd:Play()
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,(TCF - Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-10),0,math.rad(-90)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,math.rad(20),math.rad(90)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,.3,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-30)),.4+i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.2,.2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-10)),.4+i)
LLW.C0 = clerp(LLWF,(LLWF - Vector3.new(1,0,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(60)),.4+i)
RLW.C0 = clerp(RLWF,(RLWF - Vector3.new(0,1,-.5)) * CFrame.fromEulerAnglesXYZ(0,0,0),.4+i)
end
for i = 0,1,.1 do
rs:wait()
TC.C0 = clerp((TCF - Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-10),0,math.rad(-90)),(TCF - Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-10),0,math.rad(-180)),i)
end
for i = 0,1,.1 do
rs:wait()
TC.C0 = clerp((TCF - Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-10),0,math.rad(-180)),ITCF,i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(0,math.rad(20),math.rad(180)),HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-270)),i)
RW.C0 = clerp((RWF + Vector3.new(0,.3,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-30)),IRWF,i)
LW.C0 = clerp((LWF - Vector3.new(.2,.2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-10)),ILWF,i)
LLW.C0 = clerp((LLWF - Vector3.new(1,0,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(60)),LLWF,i)
RLW.C0 = clerp((RLWF - Vector3.new(0,1,-.5)) * CFrame.fromEulerAnglesXYZ(0,0,0),RLWF,i)
end
DestroyLegWelds()
dkickactive = false
kickactive = false
KickTrail.Enabled = false
chara.Humanoid.WalkSpeed = 16
del = false
res()
end

--Bandit Revolver--
function BanditRevolver()
del = true
atkd = true
chara.Humanoid.WalkSpeed = 0
kickactive = true
dkickactive = true
BRTrail.Enabled = true
chatfunc("Bandit Revolver!")
AddLegWelds()
local bfos = Instance.new("BodyVelocity",chara.Torso)
bfos.P = 10000
bfos.MaxForce = Vector3.new(bfos.P,0,bfos.P)
bfos.Velocity = chara.HumanoidRootPart.CFrame.lookVector * 50
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,(TCF + Vector3.new(0,1,0)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,math.rad(20),math.rad(90)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50)),.4+i)
LW.C0 = clerp(ILWF,(LWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(50)),.4+i)
RLW.C0 = clerp(RLWF,(RLWF - Vector3.new(0,1,1.2)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0),.4+i)
end
for i = 0,1,.1 do
rs:wait()
TC.C0 = clerp((TCF + Vector3.new(0,1,0)),(TCF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(180)),i)
end
SwooshSnd:Play()
for i = 0,1,.1 do
rs:wait()
TC.C0 = clerp((TCF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(180)),(TCF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(360)),i)
end
SwooshSnd:Play()
for i = 0,1,.1 do
rs:wait()
TC.C0 = clerp((TCF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(270)),ITCF,i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(0,math.rad(20),math.rad(90)),IHCF,i)
RW.C0 = clerp((RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50)),IRWF,i)
LW.C0 = clerp((LWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(50)),ILWF,i)
RLW.C0 = clerp((RLWF - Vector3.new(0,1,1.2)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0),RLWF,i)
end
DestroyLegWelds()
dkickactive = false
kickactive = false
BRTrail.Enabled = false
chara.Humanoid.WalkSpeed = 16
bfos:Destroy()
del = false
res()
end

--Rapid Stomp--
function RapidStomp()
del = true
atkd = true
chara.Humanoid.WalkSpeed = 8
dela = .01
AddLegWelds()
SuperPause()
chatfunc("I'll crush you like a bug!")
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF,.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(20),0,0),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50)),.4+i)
LW.C0 = clerp(ILWF,(LWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(50)),.4+i)
LLW.C0 = LLWF
RLW.C0 = clerp(RLWF,RLWF + Vector3.new(0,-1,.5),.4+i)
end
wait(.8)
kickactive = true
dkickactive = true
BRTrail.Enabled = true
chara.Humanoid.WalkSpeed = 0
for i = 1,10 do
PlaySnd(RStompSnd,chara)
RLW.C0 =RLWF + Vector3.new(0,-1,.5)
wait(.01)
RLW.C0 = RLWF + Vector3.new(0,0,.5)
wait(.01)
end
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF,.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(20),0,0),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50)),.6-i)
LW.C0 = clerp(ILWF,(LWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(50)),.6-i)
LLW.C0 = LLWF
RLW.C0 = clerp(RLWF,RLWF + Vector3.new(0,-1,.5),.6-i)
end
DestroyLegWelds()
kickactive = false
dkickactive = false
BRTrail.Enabled = false
dela = .5
chara.Humanoid.WalkSpeed = 16
del = false
res()
end

--Skyrocket Kick--
function SkyKick()
del = true
atkd = true
chara.Humanoid.WalkSpeed = 0
chatfunc("Skyrocket Kick!")
kickactive = true
skickactive = true
KickTrail.Enabled = true
SkyKickSnd.Pitch = .5
SkyKickSnd:Play()
AddLegWelds()
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,(TCF - Vector3.new(0,.5,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-80),0,math.rad(-85)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(85)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,.3,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-30)),.4+i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.2,.2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-10)),.4+i)
RLW.C0 = clerp(RLWF,(LLWF - Vector3.new(1.5,.5,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(80)),.4+i)
LLW.C0 = clerp(LLWF,(RLWF - Vector3.new(-1.5,.5,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-80)),.4+i)
end
wait(1)
if didskick == false then
kickactive = false
skickactive = false
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,(TCF - Vector3.new(0,.5,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-80),0,math.rad(-85)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(85)),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,.3,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-30)),.6-i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.2,.2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-10)),.6-i)
RLW.C0 = clerp(RLWF,(LLWF - Vector3.new(1.5,.5,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(80)),.6-i)
LLW.C0 = clerp(LLWF,(RLWF - Vector3.new(-1.5,.5,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-80)),.6-i)
DestroyLegWelds()
chara.Humanoid.WalkSpeed = 16
del = false
end
elseif didskick == true then
kickactive = false
skickactive = false
local bodpf = Instance.new("BodyPosition",chara.Torso)
bodpf.MaxForce = Vector3.new(10000,10000,10000)
bodpf.Position = chara.HumanoidRootPart.Position + Vector3.new(0,30,0)
debby:AddItem(bodpf,3)
DestroyLegWelds()
chara.Humanoid.WalkSpeed = 16
del = false
end
res()
KickTrail.Enabled = false
end

--Flip Down Kick--
--function FlipKickEffect(pos)
--local p = Instance.new("Part",game.Workspace)
--p.Size = Vector3.new(0,0,0)
--p.BrickColor = BrickColor.new(colorss[math.random(1,#colorss)])
--p.Material = "Neon"
--p.Anchored = true
--p.CanCollide = false
--p.CFrame = pos * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
--local pm = Instance.new("BlockMesh",p)
--local disp = coroutine.wrap(function()
--for i = 1, 4 do
--wait(.01)
--p.Transparency = p.Transparency + .2
--pm.Scale = pm.Scale + Vector3.new(2,2,2)
--end
--wait(.01)
--p:Destroy()
--end)
--disp()
--end
function FlipKick()
del = true
atkd = true
chatfunc("Pheonix Downer!")
SkyKickSnd.Pitch = 1.5
AddLegWelds()
kickactive = true
lkickactive = true
FreezeKickTrail.Enabled = true
local bfos = Instance.new("BodyVelocity",chara.Torso)
bfos.P = 10000
bfos.MaxForce = Vector3.new(bfos.P,0,bfos.P)
bfos.Velocity = chara.HumanoidRootPart.CFrame.lookVector * 20
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,(TCF + Vector3.new(0,1,0)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(40)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50)),.4+i)
LW.C0 = clerp(ILWF,(LWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(50)),.4+i)
RLW.C0 = clerp(RLWF,(RLWF - Vector3.new(0,1,1.2)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0),.4+i)
end
SkyKickSnd:Play()
for i = 0,1,.1 do
rs:wait()
TC.C0 = clerp((TCF + Vector3.new(0,1,0)),(TCF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,0),i)
--FlipKickEffect(chara["Left Leg"].CFrame - chara["Left Leg"].CFrame.upVector*1.5)
end
for i = 0,1,.1 do
rs:wait()
TC.C0 = clerp((TCF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-180),0,0),(TCF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-360),0,0),i)
--FlipKickEffect(chara["Left Leg"].CFrame - chara["Left Leg"].CFrame.upVector*1.5)
end
for i = 0,1,.1 do
rs:wait()
TC.C0 = clerp((TCF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-360),0,0),ITCF,i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(0,math.rad(20),math.rad(90)),IHCF,i)
RW.C0 = clerp((RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50)),IRWF,i)
LW.C0 = clerp((LWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(50)),ILWF,i)
RLW.C0 = clerp((RLWF - Vector3.new(0,1,1.2)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0),RLWF,i)
end
bfos:Destroy()
DestroyLegWelds()
kickactive = false
lkickactive = false
FreezeKickTrail.Enabled = false
del = false
res()
end

--Psychic Pillars--
function PsychicPillars()
del = true
atkd = true
--Grunt2Snd:Play()
chara.Humanoid.WalkSpeed = 0
chatfunc("Gun Flame!")
SlashTrail.Enabled = true
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(1,1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,math.rad(90),math.rad(-90)),.4+i)
end
local num = 10
local oopos = chara.HumanoidRootPart.CFrame
for i = 1,5 do
local cpos = oopos+(oopos.lookVector*num)
wait(.1)
local beam = Instance.new("Part",game.Workspace)
beam.Size = Vector3.new(1,1,1)
beam.CFrame = CFrame.new(cpos.x,cpos.y,cpos.z)
beam.CanCollide = false
beam.Anchored = true
beam.BrickColor = BrickColor.new("Deep orange")
beam.Material = "Neon"
local mehs = Instance.new("SpecialMesh",beam)
mehs.MeshType = "Sphere"
mehs.Scale = Vector3.new(1,1,1)
local trace = Instance.new("Part",game.Workspace)
trace.Size = Vector3.new(0,0,0)
trace.CFrame = CFrame.new(cpos.x,cpos.y,cpos.z)
trace.CanCollide = false
trace.Anchored = true
local tmesh2 = Instance.new("SpecialMesh",trace)
tmesh2.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh2.Scale = Vector3.new(1,1,1)
tmesh2.Offset = Vector3.new(0,0,-.125)
PlaySnd(GunFlameSnd,beam)
ExHitbox(10,beam.Position,15,2,.5,10,10)
tracegrow = coroutine.wrap(function()
for i = 1, 9 do
wait(.01)
beam.Transparency = beam.Transparency + .1
mehs.Scale = mehs.Scale + Vector3.new(.1,2,.1)
trace.Transparency = trace.Transparency + .1
tmesh2.Scale = tmesh2.Scale + Vector3.new(1,0.1,1)
end
beam:Destroy()
trace:Destroy()
end)
tracegrow()
num = num + 10
end
wait(.1)
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(1,1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,math.rad(90),math.rad(-90)),.6-i)
end
del = false
SlashTrail.Enabled = false
chara.Humanoid.WalkSpeed = 16
res()
end

--Psychic Pound--
grabactive = false
didgrab = false
function PsychicGround(hit)
if grabactive == true and hit.Parent.Parent ~= chara and hit.Parent ~= chara and hit.Parent:FindFirstChild("Humanoid")~=nil then
grabactive = false
didgrab = true
PunchTrail.Enabled = true
chara.Humanoid.WalkSpeed = 0
--YouIdiotSnd:Play()
chatfunc("Gotcha!")
hit.Parent.Humanoid.PlatformStand = true
local grabweld = Instance.new("Weld",hit.Parent.Head)
grabweld.Part0 = hit.Parent.Head
grabweld.Part1 = chara["Right Arm"]
--grabweld.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.random(90),0,0)
wait(1)
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),TCF,.4+i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),HCF * CFrame.fromEulerAnglesXYZ(math.rad(-20),0,0),.4+i)
RW.C0 = clerp((RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),RWF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-5)),.4+i)
end
local jtrace = Instance.new("Part",game.Workspace)
jtrace.Name = "Trace"
jtrace.Size = Vector3.new(0,0,0)
jtrace.Position = chara.Torso.Position
jtrace.CFrame = chara.Torso.CFrame - Vector3.new(0,2,0)
jtrace.Anchored = true
jtrace.BrickColor = BrickColor.new("Neon orange")
FlySnd:Play()
--Grunt1Snd:Play()
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshId = "http://www.roblox.com/asset/?id=1125478"
tmesh.Scale = Vector3.new(0,0,0)
local origpos = chara.Torso.Position
local bdf = Instance.new("BodyPosition",chara.Torso)
bdf.MaxForce = Vector3.new(10000,10000,10000)
bdf.Position = origpos + Vector3.new(0,200,0)
for i = 1, 10 do
wait(.01)
jtrace.Transparency = jtrace.Transparency + .1
tmesh.Scale = tmesh.Scale + Vector3.new(2,.05,2)
end
jtrace:Destroy()
chatfunc("TYRANT...")
wait(1)
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(TCF,TCF * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),.4+i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(math.rad(-20),0,0),HCF * CFrame.fromEulerAnglesXYZ(math.rad(-45),0,0),.4+i)
RW.C0 = clerp(RWF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-5)),(RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),.4+i)
end
--DieSnd:Play()
bdf.Position = origpos
bdf.D = 100
chatfunc("..GROUNDER!")
wait(1)
bdf:Destroy()
for i = 1, 10 do
local gtrace = Instance.new("Part",game.Workspace)
gtrace.BrickColor = gprop[1]
gtrace.Material = gprop[2]
gtrace.Size = Vector3.new(3,3,3)
gtrace.Anchored = true
gtrace.CFrame = (CFrame.new(origpos.x,origpos.y,origpos.z) + Vector3.new(math.random(-10,10),-3,math.random(-10,10))) * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
local gdisp = coroutine.wrap(function()
for i = 1, 9 do
wait(.1)
gtrace.Transparency = gtrace.Transparency + .1
end
gtrace:Destroy()
end)
gdisp()
end
local trace = Instance.new("Part",game.Workspace)
trace.Size = Vector3.new(0,0,0)
trace.CFrame = hit.Parent.Head.CFrame
trace.CanCollide = false
trace.Anchored = true
trace.Material = "Neon"
trace.BrickColor = BrickColor.new("Deep orange")
local tmesh2 = Instance.new("SpecialMesh",trace)
tmesh2.MeshType = "Sphere"
BExpSnd:Play()
tracegrow = coroutine.wrap(function()
for i = 1, 9 do
wait(.01)
trace.Transparency = trace.Transparency + .1
tmesh2.Scale = tmesh2.Scale + Vector3.new(20,20,20)
end
trace:Destroy()
end)
tracegrow()
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),ITCF,.4+i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(math.rad(-45),0,0),IHCF,.4+i)
RW.C0 = clerp((RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),IRWF,.4+i)
end
grabweld:Destroy()
dealdmg(hit.Parent,70,3,1,50,50)
wait(1)
hit.Parent.Humanoid.PlatformStand = false
chara.Humanoid.WalkSpeed = 16
--Laugh2Snd:Play()
PunchTrail.Enabled = false
del = false
res()
end
end
chara["Right Arm"].Touched:connect(PsychicGround)

function AttemptGrab()
del = true
atkd = true
grabactive = true
SuperPause()
PunchTrail.Enabled = true
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
end
wait(1)
if didgrab == false then
grabactive = false
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
end
del = false
res()
elseif didgrab == true then
end
PunchTrail.Enabled = false
end

--Claw Dash--
function ClawDash()
del = true
atkd = true
chara.Humanoid.WalkSpeed = 0
chatfunc("Without a trace...")
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
RW.C0 = clerp(IRWF,RWF,.4+i)
end
local hittpart = Instance.new("Part",chara)
hittpart.Anchored = true
hittpart.Size = Vector3.new(5,5,1)
hittpart.Transparency = 1
hittpart.CFrame = chara.HumanoidRootPart.CFrame + (chara.HumanoidRootPart.CFrame.lookVector * 3)
local sawlookv = hittpart.CFrame.lookVector
local hitm = Instance.new("BlockMesh",hittpart)
hitm.Scale = Vector3.new(0,0,0)
local trpart = Instance.new("Part",chara)
trpart.Anchored = true
trpart.Size = Vector3.new(0,0,0)
trpart.CFrame = hittpart.CFrame
trpart.BrickColor = BrickColor.new("Deep orange")
local trmesh = Instance.new("FileMesh",trpart)
trmesh.Scale = Vector3.new(0,0,0)
trmesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
local hdec1 = Instance.new("Decal",hittpart)
hdec1.Texture = "http://www.roblox.com/asset/?id=343750160"
hdec1.Face = "Front"
local hdec2 = hdec1:Clone()
hdec2.Parent = hittpart
hdec2.Face = "Back"
OrbSnd:Play()
ElectricSnd:Play()
for i = 1, 5 do
hitm.Scale = hitm.Scale + Vector3.new(.2,.2,0)
trmesh.Scale = trmesh.Scale + Vector3.new(1,1,.1)
wait(.01)
end
hittpart.Touched:connect(function(hit)
if hit.Parent ~= chara and hit.Parent.Parent ~= chara then
ClawDashSnd:Play()
hittpart:Destroy()
trpart:Destroy()
AddLegWelds()
chatfunc("Hellfire Riposte!")
TC.C0 = TCF * CFrame.fromEulerAnglesXYZ(math.rad(20),0,0)
HC.C0 = HCF * CFrame.fromEulerAnglesXYZ(math.rad(20),0,0)
RW.C0 = (RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50))
LW.C0 = (LWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(50))
LLW.C0 = LLWF
RLW.C0 = RLWF + Vector3.new(0,-1,1)
for i = 1, 20 do
local trace = Instance.new("Part",game.Workspace)
trace.BrickColor = BrickColor.new("New Yeller")
trace.CanCollide = false
trace.Size = Vector3.new(1,1,1)
trace.BottomSurface = 0
trace.TopSurface = 0
trace.Anchored = true
trace.CFrame = (chara.HumanoidRootPart.CFrame + chara.HumanoidRootPart.CFrame.lookVector * (5*i)) * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
local tracem = Instance.new("SpecialMesh",trace)
tracem.MeshId = "http://www.roblox.com/asset/?id=10681506"
ExHitbox(10,trace.Position,20,5,.1,0,0)
local disp = coroutine.wrap(function()
for i = 1, 9 do
wait(.01)
trace.Transparency = trace.Transparency + .1
tracem.Scale = tracem.Scale + Vector3.new(1,1,1)
end
wait(.01)
trace:Destroy()
end)
disp()
end
local trace = Instance.new("Part",game.Workspace)
trace.BrickColor = BrickColor.new("Deep orange")
trace.CanCollide = false
trace.Size = Vector3.new(1,1,1)
trace.BottomSurface = 0
trace.TopSurface = 0
trace.Anchored = true
trace.CFrame = chara.HumanoidRootPart.CFrame + chara.HumanoidRootPart.CFrame.lookVector * 50
trace.Material = "Neon"
local tracem = Instance.new("SpecialMesh",trace)
tracem.MeshType = "Sphere"
tracem.Scale = Vector3.new(1,1,100)
local disp = coroutine.wrap(function()
for i = 1, 9 do
wait(.01)
trace.Transparency = trace.Transparency + .1
end
wait(.01)
trace:Destroy()
end)
disp()
chara.HumanoidRootPart.CFrame = chara.HumanoidRootPart.CFrame + chara.HumanoidRootPart.CFrame.lookVector * 110
wait(1)
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(math.rad(20),0,0),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(20),0,0),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50)),.6-i)
LW.C0 = clerp(ILWF,(LWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(50)),.6-i)
LLW.C0 = LLWF
RLW.C0 = clerp(RLWF,RLWF + Vector3.new(0,-1,1),.6-i)
end
del = false
res()
DestroyLegWelds()
chara.Humanoid.WalkSpeed = 16
end
end)
for i = 1, 60 do
wait(.01)
hittpart.CFrame=hittpart.CFrame*CFrame.fromEulerAnglesXYZ(0,0,math.pi/64)
end
if hittpart ~= nil then
for i = 1, 5 do
hitm.Scale = hitm.Scale - Vector3.new(.2,.2,0)
trmesh.Scale = trmesh.Scale - Vector3.new(1,1,.1)
wait(.01)
end
hittpart:Destroy()
trpart:Destroy()
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
RW.C0 = clerp(IRWF,RWF,.6-i)
end
del = false
chara.Humanoid.WalkSpeed = 16
res()
end
end

--Blast--
function PsychoBlast()
del = true
atkd = true
chatfunc("Fire Wave!")
SlashTrail.Enabled = true
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(120)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-120)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
end
SkyBeamSnd:Play()
for i = -50,50,50 do
	local missile = Instance.new("Part",game.Workspace)
	missile.Material = "Neon"
	missile.Size = Vector3.new(0,5,0)
	missile.Transparency = 1
	missile.Name = "Blast"	
	missile.CanCollide = false
	missile.TopSurface = 0
	missile.BottomSurface = 0
	missile.Position = chara.HumanoidRootPart.Position + Vector3.new(0,2.6,0)
	missile.CFrame = chara.HumanoidRootPart.CFrame + Vector3.new(0,2.6,0)
	missile.Velocity = (chara.HumanoidRootPart.CFrame.lookVector*70)+(chara.HumanoidRootPart.CFrame.rightVector*i)
	local ttrt = CreateTrailObj(missile,"Deep orange","New Yeller",0,0)
	ttrt.Enabled = true
	if berserkmode == true then
	local p1mit = Instance.new("ParticleEmitter",missile)
	p1mit.Texture = "rbxasset://textures/particles/fire_main.dds"
	p1mit.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,BrickColor.new("Deep orange").Color),ColorSequenceKeypoint.new(1,BrickColor.new("New Yeller").Color)})
	p1mit.LightEmission = 1
	p1mit.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(1,0)})
	p1mit.Lifetime = NumberRange.new(1)
	p1mit.Rate = 100
	p1mit.Rotation = NumberRange.new(0,359)
	p1mit.RotSpeed = NumberRange.new(100)
	p1mit.Speed = NumberRange.new(0)	
	end
	local force = Instance.new("BodyForce")
	force.force = Vector3.new(0,missile:GetMass()*game.Workspace.Gravity,0)
	force.Parent = missile
--	local bfo = Instance.new("BodyVelocity",missile)
--	bfo.P = 100000
--	bfo.MaxForce = Vector3.new(bfo.P,bfo.P,bfo.P)
--	bfo.Velocity = (chara.HumanoidRootPart.CFrame.lookVector*100)+(chara.HumanoidRootPart.CFrame.rightVector*i)
--	debby:AddItem(bfo,1)
	missile.Touched:connect(function(hit)
	if (hit.Parent.Parent ~= chara and hit.Parent ~= chara and hit.Name ~= "Blast" and missile.Anchored == false) then
	missile.Anchored = true
	dealdmg(hit.Parent,15,1,.1,5,5)
	wait(1)
	missile:Destroy()
	end
	end)
	debby:AddItem(missile,10)
end
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(120)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-120)),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
end
del = false
SlashTrail.Enabled = false
res()
end

--Orebu--
function Orebu()
del = true
atkd = true
chatfunc("Summon.")
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
end
OrbSnd:Play()
local missile = Instance.new("Part",chara)
	missile.Material = "Neon"
	missile.Size = Vector3.new(3,3,3)
	missile.BrickColor = BrickColor.new("New Yeller")
	missile.Shape = 1
	missile.Name = "Orebu"	
	missile.CanCollide = false
	missile.TopSurface = 0
	missile.BottomSurface = 0
	missile.Position = chara["Right Arm"].Position
	missile.CFrame = chara["Right Arm"].CFrame
	local mesh1 = Instance.new("SpecialMesh",missile)
	mesh1.MeshType = "Sphere"
	local bfo = Instance.new("BodyPosition",missile)
	bfo.Position = missile.Position
	bfo.MaxForce = Vector3.new(10000,10000,10000)
	local valuu = Instance.new("BoolValue",missile)
	valuu.Name = "ExVal"
	missile.Touched:connect(function(hit)
	if hit.Parent == chara and punchactive == true and valuu.Value == false then
	valuu.Value = true
	GunFlameSnd:Play()
	bfo.Position = missile.Position + chara.HumanoidRootPart.CFrame.lookVector*30
	wait(3)	
	valuu.Value = false
	elseif hit.Parent ~= chara and hit.Parent.Parent ~= chara and hit.Name ~= "Blast" and hit.Name ~= "Trace" and valuu.Value == true then
	missile.Anchored = true
	PlaySnd(ExpSnd,missile)
	PlaySnd(ElectricSnd,missile)
	ExHitbox(3,missile.Position,23,3,.5,10,10)
	wait(0.1)
	missile.Transparency = .25
	missile.Mesh.Scale = Vector3.new(1.5,1.5,1.5)
	wait(0.1)
	missile.Transparency = .5
	missile.Mesh.Scale = Vector3.new(2,2,2)
	wait(0.1)
	missile.Transparency = .75
	missile.Mesh.Scale = Vector3.new(2.5,2.5,2.5)
	wait(0.1)
	missile:Destroy()
	end
	end)
	tracer = coroutine.wrap(function()
	while missile.Anchored == false do
	wait(.01)
	missile.BrickColor = BrickColor.new("New Yeller")
	local trace = coroutine.wrap(function()
	local tr = Instance.new("Part",game.Workspace)
	tr.Name = "Trace"
	tr.Size = Vector3.new(4,4,4)
	tr.Transparency = .5
	tr.CanCollide = false
	tr.Material = "Neon"
	tr.Anchored = true
	tr.BrickColor = BrickColor.new("Deep orange")
	tr.CFrame = missile.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0,359)),math.rad(math.random(0,359)),math.rad(math.random(0,359)))
	for i = 1, 4 do
	wait(.01)
	tr.Transparency = tr.Transparency + .1
	end
	tr:Destroy()
	end)
	trace()
	end
	end)
	tracer()
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
end
del = false
res()
end

--Orb Lock On--
function OrbLockOn()
del = true
atkd = true
SuperPause()
chatfunc("This is your end!")
chara.Humanoid.WalkSpeed = 0
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
end
wait(2)
ElectricSnd:Play()
local ceh = chara:GetChildren()
for i = 1, #ceh do
if ceh[i].Name == "Orebu" then
ceh[i].BodyPosition.Position = ceh[i].BodyPosition.Position + Vector3.new(0,7,0)
end
end
wait(2)
FlySnd:Play()
for i = 1, #ceh do
if ceh[i].Name == "Orebu" then
local chasee = coroutine.wrap(function()
while true do
if ceh[i] ~= nil then
ceh[i].BodyPosition.Position = targetted.Head.Position
ceh[i].BodyPosition.D = 1000
ceh[i].ExVal.Value = true
end
wait(.01)
end
end)
chasee()
end
end
wait(.5)
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
end
chara.Humanoid.WalkSpeed = 16
del = false
res()
end

--Storm Viper--
stormvipactive = false
function StormViper()
del = true
atkd = true
chatfunc("Storm Viper!")
chara.Humanoid.WalkSpeed = 0
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(math.rad(-25),0,math.rad(90)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.7,1.4,-1.1)) * CFrame.fromEulerAnglesXYZ(0,math.rad(90),math.rad(-180)),.4+i)
LW.C0 = clerp(ILWF,(LWF + Vector3.new(0,.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(30)),.4+i)
end
local bf = Instance.new("BodyVelocity",chara.Torso)
bf.P = 10000
bf.MaxForce = Vector3.new(bf.P,bf.P,bf.P)
bf.Velocity = Vector3.new(0,100,0) + chara.HumanoidRootPart.CFrame.lookVector*5
SV1Snd:Play()
SV2Snd:Play()
stormvipactive = true
SlashTrail.Enabled = true
for i = 1, 10 do
wait(.01)
if berserkmode == true then
local p = Instance.new("Part",game.Workspace)
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new(colorss[math.random(1,#colorss)])
p.Material = "Neon"
p.Anchored = true
p.CanCollide = false
p.CFrame = Hitbox.CFrame * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
local pm = Instance.new("BlockMesh",p)
pm.Scale = Vector3.new(5,5,5)
local disp = coroutine.wrap(function()
for i = 1, 4 do
wait(.01)
p.Transparency = p.Transparency + .2
pm.Scale = pm.Scale - Vector3.new(1,1,1)
end
wait(.01)
p:Destroy()
end)
disp()
end
end
stormvipactive = false
SlashTrail.Enabled = false
bf:Destroy()
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(math.rad(-25),0,math.rad(90)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.7,1.4,-1.1)) * CFrame.fromEulerAnglesXYZ(0,math.rad(90),math.rad(-180)),.6-i)
LW.C0 = clerp(ILWF,(LWF + Vector3.new(0,.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(30)),.6-i)
end
chara.Humanoid.WalkSpeed = 16
del = false
res()
end
function bladehit(hit)
if blockval == true then
PlaySnd(BlockedSnd,chara)
end
if stormvipactive == true then
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent ~= chara and hit.Parent:FindFirstChild("IsHit")==nil then
dealdmg(hit.Parent,20,1,.5,100,5)
SVHitSnd:Play()
end
end
end
Hitbox.Touched:connect(bladehit)

--Final Attack--
finalgrab = false
didfinal = false
function FinalGrab(hit)
if finalgrab == true and hit.Parent.Parent ~= chara and hit.Parent ~= chara and hit.Parent:FindFirstChild("Humanoid")~=nil and hit.Parent.Parent.Name ~= "Boss" then
finalgrab = false
didfinal = true
PlaySnd(HitPunchSnd,hit.Parent.Head)
PunchEff(hit.CFrame)
local stay = coroutine.wrap(function()
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
hit.Parent.Humanoid.WalkSpeed = 0
hit.Parent.Humanoid.PlatformStand = true
end
end)
stay()
local valll = Instance.new("ObjectValue",hit.Parent)
valll.Name = "HitByUlt"
local bpos = Instance.new("BodyPosition",hit.Parent.Head)
bpos.MaxForce = Vector3.new(10000,10000,10000)
bpos.Position = chara.HumanoidRootPart.Position + Vector3.new(0,1.5,0) + chara.HumanoidRootPart.CFrame.lookVector*5
wait(1)
chatfunc("Demon Fury!")
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(40)),TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(40)),.4+i)
HC.C0 = clerp(IHCF,HCF,.4+i)
RW.C0 = clerp((RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
end
for a = 1, 10 do
PlaySnd(ClawDashSnd,chara)
for i = 0,1,.25 do
rs:wait()
TC.C0 = clerp(TCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-180)),i)
end
for i = 0,1,.25 do
rs:wait()
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-180)),TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-360)),i)
end
local p = Instance.new("Part",game.Workspace)
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Neon orange")
p.Material = "Neon"
p.Anchored = true
p.CanCollide = false
p.CFrame = hit.Parent.Torso.CFrame * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
local pm = Instance.new("SpecialMesh",p)
pm.MeshType = "Sphere"
pm.Scale = Vector3.new(.5,.5,.5)
local disp = coroutine.wrap(function()
for i = 1, 4 do
wait(.01)
p.Transparency = p.Transparency + .2
pm.Scale = pm.Scale + Vector3.new(0,5,0)
end
wait(.01)
p:Destroy()
end)
disp()
end
AddLegWelds()
chatfunc("Time to end this..")
KickTrail.Enabled = true
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(40)),TCF * CFrame.fromEulerAnglesXYZ(math.rad(-30),0,math.rad(-85)),.4+i)
HC.C0 = clerp(HCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(85)),.4+i)
RW.C0 = clerp((RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),(RWF + Vector3.new(0,.3,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-30)),.4+i)
LW.C0 = clerp((LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),(LWF - Vector3.new(.2,.2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-10)),.4+i)
LLW.C0 = clerp(LLWF,(LLWF - Vector3.new(1,0,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(45)),.4+i)
RLW.C0 = clerp(RLWF,(RLWF - Vector3.new(-1,0,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-45)),.4+i)
end
PunchEff(hit.CFrame)
HitPunchSnd:Play()
bpos.Position = chara.HumanoidRootPart.Position + Vector3.new(0,1.5,0) + chara.HumanoidRootPart.CFrame.lookVector*30
wait(1)
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(math.rad(-30),0,math.rad(-85)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(85)),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,.3,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-30)),.6-i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.2,.2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-10)),.6-i)
LLW.C0 = clerp(LLWF,(LLWF - Vector3.new(1,0,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(45)),.6-i)
RLW.C0 = clerp(RLWF,(RLWF - Vector3.new(-1,0,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-45)),.6-i)
end
KickTrail.Enabled = false
chatfunc("GO TO HELL!")
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,(TCF - Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(1,1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,math.rad(90),math.rad(-90)),.4+i)
LLW.C0 = clerp(LLWF,LLWF + Vector3.new(0,-1,.5),.4+i)
RLW.C0 = clerp(RLWF,RLWF + Vector3.new(0,-1,.5),.4+i)
end
LightsOutSnd:Play()
local spellcircle = Instance.new("Part",chara)
spellcircle.Anchored = true
spellcircle.Size = Vector3.new(10,1,10)
spellcircle.CFrame = CFrame.new(bpos.Position.X,bpos.Position.Y,bpos.Position.Z) - Vector3.new(0,2.4,0)
spellcircle.Transparency = 1
spellcircle.CanCollide = false
local blkm = Instance.new("BlockMesh",spellcircle)
blkm.Scale = Vector3.new(0,1,0)
local dec = Instance.new("Decal",spellcircle)
dec.Texture = "http://www.roblox.com/asset/?id=363838834"
dec.Transparency = 1
dec.Face = "Top"
local ptl = Instance.new("PointLight",spellcircle)
ptl.Range = 0
ptl.Color = Color3.new(1,.5,0)
spellc = coroutine.wrap(function()
while spellc ~= nil do
wait(.01)
spellcircle.CFrame = spellcircle.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(5),0)
end
end)
spellc()
for i = 1, 10 do
wait(.01)
ptl.Range = ptl.Range + 4
dec.Transparency = dec.Transparency - .1
blkm.Scale = blkm.Scale + Vector3.new(.4,0,.4)
end
wait(.6)
local trace = Instance.new("Part",game.Workspace)
trace.Size = Vector3.new(0,0,0)
trace.CFrame = spellcircle.CFrame
trace.CanCollide = false
trace.Anchored = true
trace.BrickColor = BrickColor.new("Bright orange")
local tmesh2 = Instance.new("SpecialMesh",trace)
tmesh2.MeshId = "http://www.roblox.com/asset/?id=1323306"
tmesh2.Scale = Vector3.new(12,12,12)
local deesap = coroutine.wrap(function()
for i = 0,80,8 do
tmesh2.Scale = Vector3.new(12+(i/4),4+i,12+(i/4))
trace.Transparency = i/80
wait(.001)
end
trace:Destroy()
end)
deesap()
local dude = hit.Parent
local ds = coroutine.wrap(function()
targetted = nil
dude:BreakJoints()
dude.Humanoid:Destroy()
PlaySnd(ClawDashSnd,dude.Head)
local chi = dude:GetChildren()
for i = 1, #chi do
if chi[i].ClassName == "Part" then
local bodpos = Instance.new("BodyPosition",chi[i])
bodpos.Position = chi[i].Position + Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
FireEffect(chi[i])
chi[i].BrickColor = BrickColor.new("Really black")
end
end
for i = 1, 4 do
for i = 1, #chi do
if chi[i].ClassName == "Part" or chi[i].ClassName == "MeshPart" then
chi[i].Transparency = chi[i].Transparency + .25
wait(.01)
end
end
end
dude:Destroy()
end)
ds()
for i = 1, 10 do
wait(.01)
ptl.Range = ptl.Range - 4
dec.Transparency = dec.Transparency + .1
blkm.Scale = blkm.Scale - Vector3.new(.4,0,.4)
end
spellcircle:Destroy()
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,(TCF - Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(1,1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,math.rad(90),math.rad(-90)),.6-i)
LLW.C0 = clerp(LLWF,LLWF + Vector3.new(0,-1,.5),.6-i)
RLW.C0 = clerp(RLWF,RLWF + Vector3.new(0,-1,.5),.6-i)
end
didfinal = false
DestroyLegWelds()
del = false
SlashTrail.Enabled = false
chara.Humanoid.WalkSpeed = 16
res()
end
end
Hitbox.Touched:connect(FinalGrab)

function AttemptFinal()
del = true
atkd = true
chara.Humanoid.WalkSpeed = 0
SuperPause()
chatfunc("I'll show you...")
SlashTrail.Enabled = true
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-40)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(10),0,0),.4+i)
RW.C0 = clerp(IRWF,RWF,.4+i)
LW.C0 = ILWF
end
ChargeSnd:Play()
for i = 1, 7 do
local jtrace = Instance.new("Part",game.Workspace)
jtrace.BrickColor = BrickColor.new("Bright orange")
jtrace.Size = Vector3.new(0,0,0)
jtrace.Position = chara.HumanoidRootPart.Position - Vector3.new(0,2.5,0)
jtrace.CFrame = chara.HumanoidRootPart.CFrame - Vector3.new(0,2.5,0)
jtrace.Anchored = true
jtrace.CanCollide = false
local tmesh = Instance.new("SpecialMesh",jtrace)
tmesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
tmesh.Scale = Vector3.new(1,2,1)
tmesh.Offset = Vector3.new(0,0,-.125)
local coro = coroutine.wrap(function()
for i = 1, 10 do
wait(.01)
jtrace.Transparency = jtrace.Transparency + .1
tmesh.Scale = tmesh.Scale + Vector3.new(1,-.1,1)
end
jtrace:Destroy()
end)
coro()
wait(.2)
end
SkyKickSnd.Pitch = .5
SkyKickSnd:Play()
finalgrab = true
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-40)),TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(40)),.4+i)
RW.C0 = clerp(RWF,(RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),.4+i)
end
wait(2)
if didfinal == false then
finalgrab = false
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(40)),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(10),0,0),.6-i)
end
del = false
chara.Humanoid.WalkSpeed = 16
SlashTrail.Enabled = false
res()
elseif didfinal == true then
end
ultcool()
end

--Lock On--
function LockOn()
if Mouse.Target.Parent ~= chara and Mouse.Target.Parent.Parent ~= chara and Mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil then
TargetSelect(Mouse.Target.Parent)
TargetSnd:Play()
wait(.05)
TargetSnd:Play()
else end
end

--Block--
blockval = false
healthlock = 0
effeff = nil
function ToggleBlock()
if blockval == false then
blockval = true
SwooshSnd:Play()
healthlock = chara.Humanoid.Health
effeff = Instance.new("ForceField",chara)
effeff.Name = "FawsFeeld"
effeff.Visible = false
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(110)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-110)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
end
elseif blockval == true then
SwooshSnd:Play()
effeff:Destroy()
blockval = false
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(110)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-110)),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
end
res()
end
end

function Stunned()
del = true
blockval = false
chara.Humanoid.WalkSpeed = 0
local naeeym2 = Instance.new("BillboardGui",chara)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,5,0)
naeeym2.Adornee = chara.Head
naeeym2.Name = "Counter"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = "Stunned!"
tecks2.Font = "Fantasy"
tecks2.FontSize = "Size24"
tecks2.TextStrokeTransparency = 0
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.TextColor3 = Color3.new(1,0,0)
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
for i = 1, 30 do
wait(.1)
TC.C0 = TCF * CFrame.fromEulerAnglesXYZ(math.rad(-30),0,0)
HC.C0 = HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0)
RW.C0 = (RWF - Vector3.new(-.5,.5,-.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(-70),0)
LW.C0 = (LWF + Vector3.new(0,.2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(20))
end
for i = 1, 5 do
wait(.01)
tecks2.Position = tecks2.Position - UDim2.new(0,0,.05,0)
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.2
tecks2.TextTransparency = tecks2.TextTransparency + .2
end
for i = 0,.6,.1 do
rs:wait()
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(math.rad(-30),0,0),ITCF,.4+i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),IHCF,.4+i)
RW.C0 = clerp((RWF - Vector3.new(-.5,.5,-.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(-70),0),IRWF,.4+i)
LW.C0 = clerp((LWF + Vector3.new(0,.2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(20)),ILWF,.4+i)
end
del = false
chara.Humanoid.WalkSpeed = 16
end

blkpct = 100
local bcount = coroutine.wrap(function()
while wait() do
if blockval == false then
if blkpct < 100 then
blkpct = blkpct + 1
wait(.5)
else
end
end
player.PlayerGui.InfoScreen.BlockTxtBox.Text = blkpct.."%"
end
end)
bcount()

chara.Humanoid.HealthChanged:connect(function(hth)
if blockval == true then
if math.floor(hth) < healthlock then
blkpct = blkpct - math.random(2,4)
if blkpct < 1 then
Stunned()
end
print("Block Value reduced to "..blkpct)
else
end
end
end)

--Mouse Functions--
orbpushactive = false
del = false
input = ""
letterd = 0
ltoim = 0
function onKeyDown(key)
if key == "e" and attacking == false then
ToggleBlock()
elseif del == false and blockval == false then
if key == "q" then
if input == "sd" then
PsychicPillars()
elseif input == "as" then
PsychoBlast()
elseif input == "wws" and berserkmode == true then
RapidStomp()
elseif input == "add" and berserkmode == true then
AttemptGrab()
elseif input == "ss" then
Orebu()
elseif input == "aad" and berserkmode == true then
ClawDash()
elseif input == "adad" and berserkmode == false and overcharge == 100 then
Overdrive()
elseif input == "dsasd" and berserkmode == true and player.PlayerGui.InfoScreen:FindFirstChild("UltCoolDown")==nil then
AttemptFinal()
else LockOn() end
player.PlayerGui.InfoScreen.KeystrokeTxtBox.Text = string.upper(input).."Q"
input = ""
letterd = 0
ltoim = 0
elseif key == "z" then
Punch()
player.PlayerGui.InfoScreen.KeystrokeTxtBox.Text = string.upper(input).."Z"
input = ""
letterd = 0
ltoim = 0
elseif key == "x" then
if input == "sa" then
BanditRevolver()
elseif input == "ss" then
FlipKick()
else KickAtk() end
player.PlayerGui.InfoScreen.KeystrokeTxtBox.Text = string.upper(input).."X"
input = ""
letterd = 0
ltoim = 0
elseif key == "c" then
if input == "dw" then
SkyKick()
elseif input == "asdw" and targetted ~= nil and chara:FindFirstChild("Orebu") ~= nil and berserkmode == true then
OrbLockOn()
elseif input == "dds" then
StormViper()
else SweepKick() end
player.PlayerGui.InfoScreen.KeystrokeTxtBox.Text = string.upper(input).."C"
input = ""
letterd = 0
ltoim = 0
elseif (key == "w" or key == "a" or key == "s" or key == "d") then
input=input..key
print(input)
letterd = letterd + 1
ltoim = 10
if letterd > 5 then
input = ""
letterd = 0
ltoim = 0
end
end
end
end
combo = 0

--Mouse Activation--
if Mouse then
Mouse.KeyDown:connect(onKeyDown)
end

--Overdrive Charge--
local count = coroutine.wrap(function()
while wait() do
if berserkmode == false then
if overcharge < 100 then
overcharge = overcharge + 1
player.PlayerGui.InfoScreen.OverdriveTxtBox.Text = overcharge.."%"
wait(.1)
else
end
elseif berserkmode == true then
player.PlayerGui.InfoScreen.OverdriveTxtBox.Text = "Overdrive!"
end
end
end)
count()

--Loop Function--
walking = false
toim = 0
while true do
wait()
toim = toim + .1
ltoim = ltoim - 1
if ltoim < 1 then
input = ""
end
if del == false then attacking = false elseif del == true then attacking = true end
if blockval == true and chara:FindFirstChild("HitByUlt")==nil then
chara.Humanoid.Health = healthlock
end
if del == false then
player.PlayerGui.InfoScreen.KeystrokeTxtBox.Text = string.upper(input)
end
materialhit()
if atkd == true then
TC.C0 = TCF
HC.C0 = HCF
RW.C0 = RWF
LW.C0 = LWF
atkd = false
end
torvel = (chara.HumanoidRootPart.Velocity*Vector3.new(1,0,1)).magnitude
if torvel < 1 and walking == true and del == false and atkd == false and attacking == false and blockval == false then
for i = 0,1,.5 do
rs:wait()
if del == false and attacking == false and blockval == false then
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),ITCF,i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(math.rad(-30),0,0),IHCF,i)
RW.C0 = clerp((RWF + Vector3.new(0,.2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-20)),IRWF,i)
LW.C0 = clerp((LWF + Vector3.new(0,.2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(20)),ILWF,i)
end
end
walking = false
elseif torvel > 1 and walking == false and del == false and atkd == false and attacking == false and blockval == false then
for i = 0,1,.5 do
rs:wait()
if del == false and attacking == false and blockval == false then
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(-30),0,0),i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,.2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-20)),i)
LW.C0 = clerp(ILWF,(LWF + Vector3.new(0,.2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(20)),i)
end
end
walking = true
else
end
imgl.Rotation = imgl.Rotation + 3
if targetted ~= nil then
crosshair.Adornee = targetted:FindFirstChild("Torso") or targetted:FindFirstChild("UpperTorso")
crosshair.Enabled = true
elseif targetted == nil then
crosshair.Adornee = nil
crosshair.Enabled = false
end
end
end)
