--//====================================================\\--
--||			   CREATED BY SHACKLUSTER
--\\====================================================//--

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
local sick = Instance.new("Sound",Torso)

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
local SONG = 1080815841
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
--ROBLOXIDLEANIMATION.Parent = Humanoid
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "Weapon GUI"
local Effects = IT("Folder", Character)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
ANIMATOR:Destroy()
local UNANCHOR = true
local HITPLAYERSOUNDS = {--[["199149137", "199149186", "199149221", "199149235", "199149269", "199149297"--]]"263032172", "263032182", "263032200", "263032221", "263032252", "263033191"}

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
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
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
		NEWSOUND.EmitterSize = 5*VOLUME
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
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

--WACKYEFFECT({EffectType = "", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
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
		elseif TYPE == "Block" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = VT(SIZE.X,SIZE.X,SIZE.X)
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X,SIZE.X,0.1), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			for LOOP = 1, TIME+1 do
				Swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = VT(0,0,-MSH.Scale.X/8)
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
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end

function WACKYEFFECT2(Table)
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
	local ISCHAOS = (Table.Chaos or false)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC"a", "Effect", VT(1,1,1), true)
		EFFECT.Color = COLOR
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		
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
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			for LOOP = 1, TIME+1 do
				Swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if ISCHAOS == true then
				EFFECT.Color = BrickColor.Random().Color
				end
				if TYPE == "Wave" then
					MSH.Offset = VT(0,0,-MSH.Scale.X/8)
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
					EFFECT.Orientation = ORI
				end
			end
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
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end

function Gyro(PARENT)
	local GYRO = IT("BodyGyro",PARENT)
	GYRO.D = 750
	GYRO.P = 20000
	GYRO.MaxTorque = VT(0,40000000,0)
	return GYRO
end

function POSITION(PARENT)
	local grav = Instance.new("BodyPosition",PARENT)
	grav.D = 15
	grav.P = 20000
	grav.maxForce = Vector3.new(math.huge,math.huge,math.huge)
	return grav
end

function FacialShadow()
	local SHADOWS = {}
	for i = 1, 16 do
		local FACE = CreatePart(3, Effects, "Fabric", 0, 0+(i-1)/16.2, "Dark stone grey", "FaceGradient", VT(1.01,0.65,1.01),false)
		FACE.Color = C3(0,0,0)
		Head:FindFirstChildOfClass("SpecialMesh"):Clone().Parent = FACE
		CreateWeldOrSnapOrMotor("Weld", Head, Head, FACE, CF(0,0.35-(i-1)/25,0), CF(0, 0, 0))
		table.insert(SHADOWS,FACE)
	end
	local UNDO = function()
		for i = 1, #SHADOWS do
			SHADOWS[i]:remove()
		end
	end
	return UNDO
end

function GetRoot(MODEL,ROOT)
	if ROOT == true then
		return MODEL:FindFirstChild("HumanoidRootPart") or MODEL:FindFirstChild("Torso") or MODEL:FindFirstChild("UpperTorso")
	else
		return MODEL:FindFirstChild("Torso") or MODEL:FindFirstChild("UpperTorso")
	end
end

function CreateFlyingDebree(FLOOR,POSITION,AMOUNT,BLOCKSIZE,SWAIT,STRENGTH)
	if FLOOR ~= nil then
		for i = 1, AMOUNT do
			local DEBREE = CreatePart(3, Effects, "Neon", FLOOR.Reflectance, FLOOR.Transparency, "Peal", "Debree", BLOCKSIZE, false)
			DEBREE.Material = FLOOR.Material
			DEBREE.Color = FLOOR.Color
			DEBREE.CFrame = POSITION * ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)))
			DEBREE.Velocity = VT(MRANDOM(-STRENGTH,STRENGTH),MRANDOM(-STRENGTH,STRENGTH),MRANDOM(-STRENGTH,STRENGTH))
			coroutine.resume(coroutine.create(function()
				Swait(15)
				DEBREE.Parent = workspace
				DEBREE.CanCollide = true
				Debris:AddItem(DEBREE,SWAIT)
			end))
		end
	end
end

function SHAKECAM(POSITION,RANGE,INTENSITY,TIME)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						local CAMSHAKER = script.CamShake:Clone()
						CAMSHAKER.Shake.Value = INTENSITY
						CAMSHAKER.Timer.Value = TIME
						CAMSHAKER.Parent = CHILD
						CAMSHAKER.Disabled = false
					end
				end
			end
		end
	end
end

function Chatter(Text, Timer)
	local chat = coroutine.wrap(function()
		if Character:FindFirstChild("SpeechBoard") ~= nil then
			Character:FindFirstChild("SpeechBoard"):destroy()
		end
		local naeeym2 = IT("BillboardGui", Character)
		naeeym2.Size = UD2(0, 100, 0, 40)
		naeeym2.StudsOffset = VT(0, 1, 0)
		naeeym2.Adornee = Character.Head
		naeeym2.Name = "SpeechBoard"
		naeeym2.AlwaysOnTop = true
		local tecks2 = IT("TextLabel", naeeym2)
		tecks2.BackgroundTransparency = 1
		tecks2.BorderSizePixel = 0
		tecks2.Text = ""
		tecks2.Font = "Bodoni"
		tecks2.TextSize = 26
		tecks2.TextStrokeTransparency = 0
		tecks2.TextColor3 = Color3.fromRGB(255,255,255)
		tecks2.TextStrokeColor3 = Color3.fromRGB(0,0,0)
		tecks2.Size = UDim2.new(1, 0, 0.5, 0)
		local FINISHED = false
		coroutine.resume(coroutine.create(function()
			for i = 1, string.len(Text) do
				if naeeym2.Parent ~= Character then
					FINISHED = true
				end
				tecks2.Text = string.sub(Text, 1, i)
				Swait(Timer)
			end
			FINISHED = true
		end))
		repeat
			wait()
		until FINISHED == true
		wait(1)
		naeeym2.Name = "FadingDialogue"
		for i = 1, 45 do
			Swait()
			naeeym2.StudsOffset = naeeym2.StudsOffset + VT(0, (2 - 0.044444444444444446 * i) / 45, 0)
			tecks2.TextTransparency = tecks2.TextTransparency + 0.022222222222222223
			tecks2.TextStrokeTransparency = tecks2.TextTransparency
		end
		naeeym2:Destroy()
	end)
	chat()
end

--//=================================\\
--||	     WEAPON CREATION
--\\=================================//
local Rocket = script.Rocket
local FakeA = Rocket.Rocket.Main
local Hole = Rocket.Rocket.Hole
Rocket.Parent = Character
for i,v in pairs(Rocket.Rocket:GetChildren()) do
	v.Anchored = false
end

local RocketWeld = CreateWeldOrSnapOrMotor("Weld",RightArm,FakeA,RightArm,CF(0,0,0),CF(0,0,0))

local SKILLTEXTCOLOR = C3(1,1,1)
local SKILLFONT = "SciFi"
local SKILLTEXTSIZE = 7

local themode = 1

--[[coroutine.resume(coroutine.create(function()
	randcol = C3(MRANDOM(1,10)/10,MRANDOM(1,10)/10,MRANDOM(1,10)/10)
	randcol2 = Color3.fromRGB(MRANDOM(0,255),MRANDOM(0,255),MRANDOM(0,255))
end))]]

--local ATTACKS = {}
--local ATTACKSFRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.8, 0, 0.90, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill Frame")
--local TEXT = CreateLabel(ATTACKSFRAME, "[ATTACKS]", SKILLTEXTCOLOR, SKILLTEXTSIZE+1, SKILLFONT, 0, 2, 0.5, "Skill text")

--[[local GUIS = {}
for i = 1, #ATTACKS do
	local SKILLFRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.05, 0, 0.90-(0.04*i), 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill Frame")
	local SKILLTEXT = CreateLabel(SKILLFRAME, "["..ATTACKS[i].."]", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0, "Skill text")
	SKILLTEXT.TextXAlignment = "Left"
	table.insert(GUIS,SKILLTEXT)
end]]

--//=================================\\
--||			DAMAGING
--\\=================================//
--* ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
function GlassyDeath(MODEL,CAUSE)
	pcall(function()
	MODEL:BreakJoints()
	end)
	local HUM = MODEL:FindFirstChildOfClass("Humanoid")
	local PLRS = game:GetService("Players")
	local PLR = PLRS:GetPlayerFromCharacter(MODEL)
	if HUM then
		for index, CHILD in pairs(MODEL:GetChildren()) do
			if CHILD:IsA("BasePart") then
				if CHILD.Name == "Head" then
					WACKYEFFECT2({
						Time = 120,
						EffectType = "Box",
						Size = VT(CHILD.Size.Z, CHILD.Size.Y, CHILD.Size.Z),
						Size2 = VT(CHILD.Size.Z, CHILD.Size.Y, CHILD.Size.Z),
						Transparency = CHILD.Transparency,
						Transparency2 = 1,
						CFrame = CHILD.CFrame,
						MoveToPos = nil,
						RotationX = 0,
						RotationY = 0,
						RotationZ = 0,
						RotationZ = 0,
						Material = "Glass",
						Color = C3(0, 0, 0),
						SoundID = nil,
						SoundPitch = nil,
						SoundVolume = nil,
						UseBoomerangMath = true,
						SizeBoomerang = 0,
						Boomerang = 50
					})
				elseif CHILD.Name ~= "HumanoidRootPart" then
					WACKYEFFECT2({
						Time = 120,
						EffectType = "Box",
						Size = CHILD.Size,
						Size2 = CHILD.Size,
						Transparency = CHILD.Transparency,
						Transparency2 = 1,
						CFrame = CHILD.CFrame,
						MoveToPos = nil,
						RotationX = 0,
						RotationY = 0,
						RotationZ = 0,
						Material = "Glass",
						Color = C3(0, 0, 0),
						SoundID = nil,
						SoundPitch = nil,
						SoundVolume = nil,
						UseBoomerangMath = true,
						SizeBoomerang = 0,
						Boomerang = 35
					})
				end
				if CHILD.Name == "Torso" or CHILD.Name == "UpperTorso" then
					WACKYEFFECT2({Time = 120, EffectType = "Sphere", Size = VT(0.2,0.2,0.2)*CHILD.Size.Magnitude, Size2 = VT(5,5,5)*CHILD.Size.Magnitude, Transparency = 0.6, Transparency2 = 1, CFrame = CF(CHILD.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Glass", Color = Color3.fromRGB(255,255,255), SoundID = nil, SoundPitch = MRANDOM(8,15)/10, SoundVolume = 4, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35,Chaos = true})
				end
				CHILD:Destroy()
			end
		end
	end
	if CAUSE == "None" then
		Debris:AddItem(MODEL,6)	
	elseif CAUSE == "Kick" then
		if PLR then
			PLR:Kick("uuuuuuuuuuuuuu")
		else	
		end
	elseif CAUSE == "Crash" then
		if PLR then
		local lolo = script.Crash:Clone()
		lolo.Parent = PLR.PlayerGui
		lolo.Disabled = false
		else
		end
	end
	--end)
end

function ApplyDamage(Humanoid,Damage)
	Damage = Damage * DAMAGEMULTIPLIER
	if Humanoid.Health < 2000 then
		if Humanoid.Health - Damage > 0 then
			Humanoid.Health = Humanoid.Health - Damage
		else
			Humanoid.Parent:BreakJoints()
		end
	else
		Humanoid.Parent:BreakJoints()
	end
end

function ApplyAoE(POSITION,RANGE,MINDMG,MAXDMG,FLING,INSTAKILL)
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						if INSTAKILL == true then
							CHILD:BreakJoints()
						else
							local DMG = MRANDOM(MINDMG,MAXDMG)
							ApplyDamage(HUM,DMG)
						end
						if FLING > 0 then
							for _, c in pairs(CHILD:GetChildren()) do
								if c:IsA("BasePart") then
									local bv = Instance.new("BodyVelocity") 
									bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
									bv.velocity = CF(POSITION,TORSO.Position).lookVector*FLING
									bv.Parent = c
									Debris:AddItem(bv,0.05)
								end
							end
						end
					end
				end
			end
		end
	end
end

--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//
function laser()
ATTACK = true
	Rooted = false
		local GYRO = IT("BodyGyro",RootPart)
		GYRO.D = 175
		GYRO.P = 20000
		GYRO.MaxTorque = VT(0,40000,0)
		GYRO.cframe = CF(RootPart.Position,Mouse.Hit.p)
			for i=0, 0.6, 0.1 / Animation_Speed do
				Swait()
				local Alpha = .3
				GYRO.cframe = CF(RootPart.Position,Mouse.Hit.p)
				RootJoint.C0 = RootJoint.C0:lerp(CF(0.1,0 + 0.07 * COS(SINE/25),0)*ANGLES(RAD(-90),RAD(0),RAD(-152.3)),Alpha)
  				LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-0.6,0.7,0.5)*ANGLES(RAD(90),RAD(-46.3),RAD(90)),Alpha)
  				RightShoulder.C0 = RightShoulder.C0:lerp(CF(0.8,0.3,-0.4)*ANGLES(RAD(-5.8),RAD(65.6),RAD(96.8)),Alpha)
  				Neck.C0 =Neck.C0:lerp(CF(0,1,0)*ANGLES(RAD(-90),RAD(0),RAD(152.3)),Alpha)
  				LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1- 0.07 * COS(SINE/25),0.1)*ANGLES(RAD(0),RAD(-75.2),RAD(0)),Alpha)
  				RightHip.C0 = RightHip.C0:lerp(CF(1,-1- 0.07 * COS(SINE/25),-0.2)*ANGLES(RAD(0),RAD(90),RAD(0)),Alpha)
			end
			CreateSound(1336753645, Hole, 7, 1, false)
			local HIT,POS = CastProperRay(Hole.Position,  Mouse.Hit.p, 500, Character)
			local DISTANCE = (POS - Hole.Position).Magnitude
			if HIT then
			if HIT.Parent:FindFirstChildOfClass("Humanoid") then
				if themode == 1 then
				GlassyDeath(HIT.Parent,"None")
				elseif themode == 2 then
					GlassyDeath(HIT.Parent,"Kick")
				elseif themode == 3 then
					GlassyDeath(HIT.Parent,"Crash")
				end
			elseif HIT.Parent.Parent:FindFirstChildOfClass("Humanoid") then
				if themode == 1 then
				GlassyDeath(HIT.Parent,"None")
				elseif themode == 2 then
					GlassyDeath(HIT.Parent,"Kick")
				elseif themode == 3 then
					GlassyDeath(HIT.Parent,"Crash")
				end
			end
			end
			WACKYEFFECT2({Time = 30, EffectType = "Sphere", Size = Vector3.new(0,0,0), Size2 = Vector3.new(2,2,2), Transparency = 0, Transparency2 = 1, CFrame = CF(Hole.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = 165946560, SoundPitch = 1, SoundVolume = 1,Chaos = true})
			WACKYEFFECT2({Time = 30, EffectType = "Sphere", Size = Vector3.new(0,0,DISTANCE), Size2 = Vector3.new(1,1,DISTANCE), Transparency = 0, Transparency2 = 1, CFrame = CF(Hole.Position,POS)*CF(0,0,-DISTANCE/2), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, Chaos = true})
			for i=0, 0.2, 0.1 / Animation_Speed do
				Swait()
				local Alpha = .3
				RootJoint.C0 = RootJoint.C0:lerp(CF(0.1,0 + 0.07 * COS(SINE/25),0)*ANGLES(RAD(-90),RAD(0),RAD(-152.3)),Alpha)
  				LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-0.6,0.7,0.5)*ANGLES(RAD(90),RAD(-46.3),RAD(90)),Alpha)
  				RightShoulder.C0 = RightShoulder.C0:lerp(CF(0.8,0.3,-0.4)*ANGLES(RAD(-5.8),RAD(65.6),RAD(136.8)),Alpha)
  				Neck.C0 =Neck.C0:lerp(CF(0,1,0)*ANGLES(RAD(-90),RAD(0),RAD(152.3)),Alpha)
  				LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1- 0.07 * COS(SINE/25),0.1)*ANGLES(RAD(0),RAD(-75.2),RAD(0)),Alpha)
  				RightHip.C0 = RightHip.C0:lerp(CF(1,-1- 0.07 * COS(SINE/25),-0.2)*ANGLES(RAD(0),RAD(90),RAD(0)),Alpha)
			end
		GYRO:remove()
	ATTACK = false
	Rooted = false
end

function changesongo()
	if SONG == 1080815841 then
		SONG = 1059884825
	elseif SONG == 1059884825 then
		SONG = 2923360536
	elseif SONG == 2923360536 then
		SONG = 1286068050
	elseif SONG == 1286068050 then	
		SONG = 1080815841	
	end
end


--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//


function MouseDown(Mouse)
	if ATTACK == false then
		laser()
	end
end

function MouseUp(Mouse)
HOLD = false
end

function KeyDown(Key)
	KEYHOLD = true
	if Key == "q" and ATTACK == false then
	end

	if Key == "z" and ATTACK == false then
	end

	if Key == "c" and ATTACK == false then
	end

	if Key == "n" then
		changesongo()
	end
	
	if Key == "1" then
		themode = 1
		Chatter("Mode : None",1)
	elseif Key == "2" then
		themode = 2
		Chatter("Mode : Kick",1)
	elseif Key == "3" then
		themode = 3
		Chatter("Mode : Crash",1)		
	end

	if Key == "]" and ATTACK == false then
		if sick.Parent ~= Character then
			sick = IT("Sound",Torso)
			sick.SoundId = "rbxassetid://"..SONG
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
	script.Parent = WEAPONGUI
	ANIMATE.Parent = nil
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
	    v:Stop();
	end
	SINE = SINE + CHANGE*2
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local HITFLOOR,HITPOS,NORMAL = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4+Humanoid.HipHeight, Character)
	local WALKSPEEDVALUE = 9 / (Humanoid.WalkSpeed / 16)
	Rocket.Rocket.TheRocket.Mesh.VertexColor = Vector3.new(MRANDOM(1,10)/10,MRANDOM(1,10)/10,MRANDOM(1,10)/10)
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
		if ATTACK == false then
		local Alpha = .1
  		RootJoint.C0 = RootJoint.C0:lerp(CF(0,0 + 0.07 * COS(SINE/12),0)*ANGLES(RAD(-90),RAD(0),RAD(-180)),Alpha)
  		LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-0.6,0.7 + 0.1 * SIN(SINE/12),0.5)*ANGLES(RAD(90),RAD(-46.3),RAD(90)),Alpha)
  		RightShoulder.C0 = RightShoulder.C0:lerp(CF(1,0.7 + 0.05 * SIN(SINE/12),0)*ANGLES(RAD(-179.3),RAD(90),RAD(0)),Alpha)
  		Neck.C0 =Neck.C0:lerp(CF(0,1,0)*ANGLES(RAD(-90 + 5 * SIN(SINE/12)),RAD(0),RAD(-180)),Alpha)
  		LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1- 0.07 * COS(SINE/12),0)*ANGLES(RAD(0),RAD(-90),RAD(0)),Alpha)
  		RightHip.C0 = RightHip.C0:lerp(CF(1,-1- 0.07 * COS(SINE/12),-0.1)*ANGLES(RAD(0),RAD(90),RAD(0)),Alpha)
		end
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
		ANIM = "Walk"
		if ATTACK == false then
		local Alpha = .1
		RootJoint.C0 = RootJoint.C0:lerp(CF(0,0 -0.1 * COS(SINE/WALKSPEEDVALUE),-0.3-0.15*COS(SINE/WALKSPEEDVALUE))*ANGLES(RAD(-100),RAD(0),RAD(-180 - 0.75 *COS(SINE/WALKSPEEDVALUE))),Alpha)
  		LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-0.6,0.7 + 0.1 * SIN(SINE/12),0.5)*ANGLES(RAD(90),RAD(-46.3),RAD(90)),Alpha)
  		RightShoulder.C0 = RightShoulder.C0:lerp(CF(1,0.7 + 0.05 * SIN(SINE/12),0)*ANGLES(RAD(-179.3),RAD(90),RAD(0)),Alpha)
  		Neck.C0 =Neck.C0:lerp(CF(0,1,0)*ANGLES(RAD(-90),RAD(0),RAD(-180)),Alpha)
  		LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-0.8 - 0.25 * COS(SINE/WALKSPEEDVALUE),0.4 * SIN(SINE/WALKSPEEDVALUE))*ANGLES(RAD(-10 - 22.5*SIN(SINE/WALKSPEEDVALUE)),RAD(-90 ),RAD(0)) * ANGLES(RAD(0 + 2 * COS(SINE/WALKSPEEDVALUE)),RAD(0),RAD(0)),Alpha)
  		RightHip.C0 = RightHip.C0:lerp(CF(1,-0.8 + 0.25 * COS(SINE/WALKSPEEDVALUE),-0.4 * SIN(SINE/WALKSPEEDVALUE))*ANGLES(RAD(-10 + 22.5*SIN(SINE/WALKSPEEDVALUE)),RAD(90),RAD(0)) * ANGLES(RAD(0 - 2 * COS(SINE/WALKSPEEDVALUE)),RAD(0),RAD(0)),Alpha)
		end
	end
	unanchor()
	Humanoid.MaxHealth = 1e4
	Humanoid.Health = 1e4
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	sick.SoundId = "rbxassetid://"..SONG
	sick.Looped = true
	sick.Pitch = 1
	sick.Volume = 3
	sick.Playing = true
end
--1059884825

--//=================================\\
--\\=================================//





--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--
