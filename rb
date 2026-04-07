if game.PlaceId == 7239319209 then

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "正在加载中...";
Title = "🖇Rb脚本中心🖇";
Duration = 5;
});

wait(1);

Notify({
Description = "本脚本为免费脚本，请勿圈钱！";
Title = "🖇Rb脚本中心🖇";
Duration = 5;
});

wait(1);

Notify({
Description = "加载成功！请享受---";
Title = "🖇Rb脚本中心🖇";
Duration = 5;
});

 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Consistt/Ui/main/UnLeaked"))()


library.rank = "developer"
local Wm = library:Watermark("Rb脚本中心-俄亥俄州 | v1.0.0 | " .. library:GetUsername() .. " | 您的注入器：" ..identifyexecutor().."" )
local FpsWm = Wm:AddWatermark("fps: " .. library.fps)
coroutine.wrap(function()
    while wait(.75) do
        FpsWm:Text("帧率（FPS）: " .. library.fps)
    end
end)()

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Mapple7777/UI-Librarys/main/UI-1/UI.lua"))()

local Window = Library:Create("Rb脚本中心","俄亥俄州")

local Tab1 = Window:Tab("玩家功能",true)

Tab1:Label("基本功能")

Tab1:Button("隐身（请勿多次点击）",function()
-- Roblox Invisibility Toggle Script
        
            -- Also by the way, if you press "E" on your keyboard, You will become invisible to other players, but on your screen, you will still be able to see yourself to make it easier.
        
        
            --Settings:
            local ScriptStarted = false
            local Keybind = "X" --Set to whatever you want, has to be the name of a KeyCode Enum.
            local Transparency = true --Will make you slightly transparent when you are invisible. No reason to disable.
            local NoClip = false --Will make your fake character no clip.
        
            local Player = game:GetService("Players").LocalPlayer
            local RealCharacter = Player.Character or Player.CharacterAdded:wait(0.1)
        
            local IsInvisible = false
        
            RealCharacter.Archivable = true
            local FakeCharacter = RealCharacter:Clone()
            local Part
            Part = Instance.new("Part", workspace)
            Part.Anchored = true
            Part.Size = Vector3.new(200, 1, 200)
            Part.CFrame = CFrame.new(0, -500, 0) --Set this to whatever you want, just far away from the map.
            Part.CanCollide = true
            FakeCharacter.Parent = workspace
            FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
        
            for i, v in pairs(RealCharacter:GetChildren()) do
                if v:IsA("LocalScript") then
                    local clone = v:Clone()
                    clone.Disabled = true
                    clone.Parent = FakeCharacter
                end
            end
            if Transparency then
                for i, v in pairs(FakeCharacter:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.Transparency = 0.7
                    end
                end
            end
            local CanInvis = true
            function RealCharacterDied()
                CanInvis = false
                RealCharacter:Destroy()
                RealCharacter = Player.Character
                CanInvis = true
                isinvisible = false
                FakeCharacter:Destroy()
                workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid
        
                RealCharacter.Archivable = true
                FakeCharacter = RealCharacter:Clone()
                Part:Destroy()
                Part = Instance.new("Part", workspace)
                Part.Anchored = true
                Part.Size = Vector3.new(200, 1, 200)
                Part.CFrame = CFrame.new(9999, 9999, 9999) --Set this to whatever you want, just far away from the map.
                Part.CanCollide = true
                FakeCharacter.Parent = workspace
                FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
        
                for i, v in pairs(RealCharacter:GetChildren()) do
                    if v:IsA("LocalScript") then
                        local clone = v:Clone()
                        clone.Disabled = true
                        clone.Parent = FakeCharacter
                    end
                end
                if Transparency then
                    for i, v in pairs(FakeCharacter:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.Transparency = 0.7
                        end
                    end
                end
                RealCharacter.Humanoid.Died:Connect(function()
                    RealCharacter:Destroy()
                    FakeCharacter:Destroy()
                end)
                Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
            end
            RealCharacter.Humanoid.Died:Connect(function()
                RealCharacter:Destroy()
                FakeCharacter:Destroy()
            end)
            Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
            local PseudoAnchor
            game:GetService "RunService".RenderStepped:Connect(
                function()
                    if PseudoAnchor ~= nil then
                        PseudoAnchor.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
                    end
                    if NoClip then
                        FakeCharacter.Humanoid:ChangeState(11)
                    end
                end
            )
        
            PseudoAnchor = FakeCharacter.HumanoidRootPart
            local function Invisible()
                if IsInvisible == false then
                    local StoredCF = RealCharacter.HumanoidRootPart.CFrame
                    RealCharacter.HumanoidRootPart.CFrame = FakeCharacter.HumanoidRootPart.CFrame
                    FakeCharacter.HumanoidRootPart.CFrame = StoredCF
                    RealCharacter.Humanoid:UnequipTools()
                    Player.Character = FakeCharacter
                    workspace.CurrentCamera.CameraSubject = FakeCharacter.Humanoid
                    PseudoAnchor = RealCharacter.HumanoidRootPart
                    for i, v in pairs(FakeCharacter:GetChildren()) do
                        if v:IsA("LocalScript") then
                            v.Disabled = false
                        end
                    end
        
                    IsInvisible = true
                else
                    local StoredCF = FakeCharacter.HumanoidRootPart.CFrame
                    FakeCharacter.HumanoidRootPart.CFrame = RealCharacter.HumanoidRootPart.CFrame
        
                    RealCharacter.HumanoidRootPart.CFrame = StoredCF
        
                    FakeCharacter.Humanoid:UnequipTools()
                    Player.Character = RealCharacter
                    workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid
                    PseudoAnchor = FakeCharacter.HumanoidRootPart
                    for i, v in pairs(FakeCharacter:GetChildren()) do
                        if v:IsA("LocalScript") then
                            v.Disabled = true
                        end
                    end
                    IsInvisible = false
                end
            end
        
            game:GetService("UserInputService").InputBegan:Connect(
            function(key, gamep)
                if gamep then
                    return
                end
                if key.KeyCode.Name:lower() == Keybind:lower() and CanInvis and RealCharacter and FakeCharacter then
                    if RealCharacter:FindFirstChild("HumanoidRootPart") and FakeCharacter:FindFirstChild("HumanoidRootPart") then
                        Invisible()
                    end
                end
            end
            )
            
            game:GetService("StarterGui"):SetCore("SendNotification",{["Title"] = "Rb脚本中心-隐身",["Text"] = "按下 "..Keybind.." 即可隐身",["Duration"] = 20,["Button1"] = "确定"})

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "隐身已开启，请勿多次点击此功能，会导致此功能失效，手机玩家可使用键盘脚本来开启隐身";
Title = "❗通知❗";
Duration = 5;
});

 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

end)

Tab1:Button("穿墙",function()
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local Clipon = true

Stepped = game:GetService("RunService").Stepped:Connect(function()
	if not Clipon == false then
		for a, b in pairs(Workspace:GetChildren()) do
        if b.Name == Players.LocalPlayer.Name then
        for i, v in pairs(Workspace[Players.LocalPlayer.Name]:GetChildren()) do
        if v:IsA("BasePart") then
        v.CanCollide = false
        end end end end
	else
		Stepped:Disconnect()
	end
end)



local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已开启穿墙，请勿多次点击，否则会造成游戏卡顿";
Title = "❗通知❗";
Duration = 5;
});

 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

end)

Tab1:Button("踏空",function()
-- Make sure to copy aLL of this!

-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local INFJUMP = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.Active = true
main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.119258665, 0, 0, 0)
main.Size = UDim2.new(0, 146, 0, 28)
main.Active = true
main.Draggable = false

TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 146, 0, 28)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "Rb脚本中心"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 17.000
TextLabel.TextWrapped = true

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 1, 0)
Frame.Size = UDim2.new(0, 146, 0, 61)

INFJUMP.Name = "INFJUMP"
INFJUMP.Parent = main
INFJUMP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
INFJUMP.BorderSizePixel = 0
INFJUMP.Position = UDim2.new(0.794520497, 0, 1.6785717, 0)
INFJUMP.Size = UDim2.new(0, 21, 0, 21)
INFJUMP.Font = Enum.Font.SourceSans
INFJUMP.Text = ""
INFJUMP.TextColor3 = Color3.fromRGB(0, 0, 0)
INFJUMP.TextSize = 14.000
INFJUMP.MouseButton1Down:connect(function()
local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';
 
_G.JumpHeight = 50;
 
function Action(Object, Function) if Object ~= nil then Function(Object); end end
 
UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
end)

TextLabel_2.Parent = main
TextLabel_2.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0547945201, 0, 1.57142854, 0)
TextLabel_2.Size = UDim2.new(0, 94, 0, 28)
TextLabel_2.Font = Enum.Font.SciFi
TextLabel_2.Text = "踏空"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 17.000
TextLabel_2.TextWrapped = true

-- Scripts:

local function TKDWQ_fake_script() -- INFJUMP.LocalScript 
local script = Instance.new('LocalScript', INFJUMP)

function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end

counter = 0

while wait(0.1)do
script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
 
counter = counter + 0.01
end
end
coroutine.wrap(TKDWQ_fake_script)()



local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "踏空开启成功，请点击左上方的彩虹按钮即可开启";
Title = "❗通知❗";
Duration = 5;
});

 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

end)

Tab1:Button("反挂机",function()



		local vu = game:GetService("VirtualUser")

		game:GetService("Players").LocalPlayer.Idled:connect(function()

		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

		   wait(1)

		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

		end)



		local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "反挂机开启成功";
Title = "❗通知❗";
Duration = 5;
});

 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

end)

Tab1:Button("透视地图（一次性）",function()
game.Workspace.Map:Destroy()



local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "透视地图已开启，若要关闭请重启游戏";
Title = "❗通知❗";
Duration = 5;
});

 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

end)

Tab1:Button("小地图ESP",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "小地图开启成功";
Title = "❗通知❗";
Duration = 5;
});

 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

-- Made by Blissful#4992
local Players = game:service("Players")
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()
local Camera = game:service("Workspace").CurrentCamera
local RS = game:service("RunService")
local UIS = game:service("UserInputService")

repeat wait() until Player.Character ~= nil and Player.Character.PrimaryPart ~= nil

local LerpColorModule = loadstring(game:HttpGet("https://pastebin.com/raw/wRnsJeid"))()
local HealthBarLerp = LerpColorModule:Lerp(Color3.fromRGB(255, 0, 0), Color3.fromRGB(0, 255, 0))

local function NewCircle(Transparency, Color, Radius, Filled, Thickness)
    local c = Drawing.new("Circle")
    c.Transparency = Transparency
    c.Color = Color
    c.Visible = false
    c.Thickness = Thickness
    c.Position = Vector2.new(0, 0)
    c.Radius = Radius
    c.NumSides = math.clamp(Radius*55/100, 10, 75)
    c.Filled = Filled
    return c
end

local RadarInfo = {
    Position = Vector2.new(200, 200),
    Radius = 100,
    Scale = 1, -- Determinant factor on the effect of the relative position for the 2D integration
    RadarBack = Color3.fromRGB(10, 10, 10),
    RadarBorder = Color3.fromRGB(75, 75, 75),
    LocalPlayerDot = Color3.fromRGB(255, 255, 255),
    PlayerDot = Color3.fromRGB(60, 170, 255),
    Team = Color3.fromRGB(0, 255, 0),
    Enemy = Color3.fromRGB(255, 0, 0),
    Health_Color = true,
    Team_Check = true
}

local RadarBackground = NewCircle(0.9, RadarInfo.RadarBack, RadarInfo.Radius, true, 1)
RadarBackground.Visible = true
RadarBackground.Position = RadarInfo.Position

local RadarBorder = NewCircle(0.75, RadarInfo.RadarBorder, RadarInfo.Radius, false, 3)
RadarBorder.Visible = true
RadarBorder.Position = RadarInfo.Position

local function GetRelative(pos)
    local char = Player.Character
    if char ~= nil and char.PrimaryPart ~= nil then
        local pmpart = char.PrimaryPart
        local camerapos = Vector3.new(Camera.CFrame.Position.X, pmpart.Position.Y, Camera.CFrame.Position.Z)
        local newcf = CFrame.new(pmpart.Position, camerapos)
        local r = newcf:PointToObjectSpace(pos)
        return r.X, r.Z
    else
        return 0, 0
    end
end

local function PlaceDot(plr)
    local PlayerDot = NewCircle(1, RadarInfo.PlayerDot, 3, true, 1)

    local function Update()
        local c 
        c = game:service("RunService").RenderStepped:Connect(function()
            local char = plr.Character
            if char and char:FindFirstChildOfClass("Humanoid") and char.PrimaryPart ~= nil and char:FindFirstChildOfClass("Humanoid").Health > 0 then
                local hum = char:FindFirstChildOfClass("Humanoid")
                local scale = RadarInfo.Scale
                local relx, rely = GetRelative(char.PrimaryPart.Position)
                local newpos = RadarInfo.Position - Vector2.new(relx * scale, rely * scale) 
                
                if (newpos - RadarInfo.Position).magnitude < RadarInfo.Radius-2 then 
                    PlayerDot.Radius = 3   
                    PlayerDot.Position = newpos
                    PlayerDot.Visible = true
                else 
                    local dist = (RadarInfo.Position - newpos).magnitude
                    local calc = (RadarInfo.Position - newpos).unit * (dist - RadarInfo.Radius)
                    local inside = Vector2.new(newpos.X + calc.X, newpos.Y + calc.Y)
                    PlayerDot.Radius = 2
                    PlayerDot.Position = inside
                    PlayerDot.Visible = true
                end

                PlayerDot.Color = RadarInfo.PlayerDot
                if RadarInfo.Team_Check then
                    if plr.TeamColor == Player.TeamColor then
                        PlayerDot.Color = RadarInfo.Team
                    else
                        PlayerDot.Color = RadarInfo.Enemy
                    end
                end

                if RadarInfo.Health_Color then
                    PlayerDot.Color = HealthBarLerp(hum.Health / hum.MaxHealth)
                end
            else 
                PlayerDot.Visible = false
                if Players:FindFirstChild(plr.Name) == nil then
                    PlayerDot:Remove()
                    c:Disconnect()
                end
            end
        end)
    end
    coroutine.wrap(Update)()
end

for _,v in pairs(Players:GetChildren()) do
    if v.Name ~= Player.Name then
        PlaceDot(v)
    end
end

local function NewLocalDot()
    local d = Drawing.new("Triangle")
    d.Visible = true
    d.Thickness = 1
    d.Filled = true
    d.Color = RadarInfo.LocalPlayerDot
    d.PointA = RadarInfo.Position + Vector2.new(0, -6)
    d.PointB = RadarInfo.Position + Vector2.new(-3, 6)
    d.PointC = RadarInfo.Position + Vector2.new(3, 6)
    return d
end

local LocalPlayerDot = NewLocalDot()

Players.PlayerAdded:Connect(function(v)
    if v.Name ~= Player.Name then
        PlaceDot(v)
    end
    LocalPlayerDot:Remove()
    LocalPlayerDot = NewLocalDot()
end)

-- Loop
coroutine.wrap(function()
    local c 
    c = game:service("RunService").RenderStepped:Connect(function()
        if LocalPlayerDot ~= nil then
            LocalPlayerDot.Color = RadarInfo.LocalPlayerDot
            LocalPlayerDot.PointA = RadarInfo.Position + Vector2.new(0, -6)
            LocalPlayerDot.PointB = RadarInfo.Position + Vector2.new(-3, 6)
            LocalPlayerDot.PointC = RadarInfo.Position + Vector2.new(3, 6)
        end
        RadarBackground.Position = RadarInfo.Position
        RadarBackground.Radius = RadarInfo.Radius
        RadarBackground.Color = RadarInfo.RadarBack

        RadarBorder.Position = RadarInfo.Position
        RadarBorder.Radius = RadarInfo.Radius
        RadarBorder.Color = RadarInfo.RadarBorder
    end)
end)()

-- Draggable
local inset = game:service("GuiService"):GetGuiInset()

local dragging = false
local offset = Vector2.new(0, 0)
UIS.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 and (Vector2.new(Mouse.X, Mouse.Y + inset.Y) - RadarInfo.Position).magnitude < RadarInfo.Radius then
        offset = RadarInfo.Position - Vector2.new(Mouse.X, Mouse.Y)
        dragging = true
    end
end)

UIS.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

coroutine.wrap(function()
    local dot = NewCircle(1, Color3.fromRGB(255, 255, 255), 3, true, 1)
    local c 
    c = game:service("RunService").RenderStepped:Connect(function()
        if (Vector2.new(Mouse.X, Mouse.Y + inset.Y) - RadarInfo.Position).magnitude < RadarInfo.Radius then
            dot.Position = Vector2.new(Mouse.X, Mouse.Y + inset.Y)
            dot.Visible = true
        else 
            dot.Visible = false
        end
        if dragging then
            RadarInfo.Position = Vector2.new(Mouse.X, Mouse.Y) + offset
        end
    end)
end)()

--[[ Example:
wait(3)
RadarInfo.Position = Vector2.new(300, 300)
RadarInfo.Radius = 150
RadarInfo.RadarBack = Color3.fromRGB(50, 0, 0)
]]



end)

Tab1:Label("快捷功能")

Tab1:Button("即时互动银行大门",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已开启即时互动银行大门，开大门时只需按一下按钮即可打开大门";
Title = "❗通知❗";
Duration = 5;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()



while true do
        	    wait(1)
        	    game.Workspace.BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
                game.Workspace.BankRobbery.BankCash.Main.Attachment.ProximityPrompt.MaxActivationDistance= 20
        	end

end)

Tab1:Button("即时互动金色保险箱",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已开启即时互动金色保险箱，开保险箱时只需按一下按钮即可开启（仍需撬锁）";
Title = "❗通知❗";
Duration = 5;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()



while true do
        			wait(1)
        			local safe = game.workspace.Game.Entities.GoldJewelSafe.GoldJewelSafe
        			safe.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.HoldDuration = 0
        			safe.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.MaxActivationDistance= 20
        			safe.Name = "safeopen"
        		end

end)

Tab1:Button("即时互动黑色保险箱",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已开启即时互动黑色保险箱，开保险箱时只需按一下按钮即可开启（仍需撬锁）";
Title = "❗通知❗";
Duration = 5;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()



while true do
        		wait(1)
        		local safe2 = game.workspace.Game.Entities.JewelSafe.JewelSafe
        		safe2.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.HoldDuration = 0
        		safe.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.MaxActivationDistance= 20
        		safe2.Name = "safeopen"
        	end
end)

Tab1:Button("即时互动珠宝",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已开启即时互动珠宝，捡珠宝时只需点一下即可捡起";
Title = "❗通知❗";
Duration = 5;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()



local rocks = game:GetService("Workspace").GemRobbery.JewelryCases.HighYieldSpawns
            for _, obj in pairs(rocks:GetChildren()) do
                if obj.ClassName == "Model" then
                    for _, innerObj in pairs(obj:GetChildren()) do
                        if innerObj.ClassName == "Model" then
                            if innerObj.Name == "Case" then
                            elseif innerObj.Name == "Emerald" then
                                if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                                    innerObj.Handle.ProximityPrompt.HoldDuration = 0
                                end
                            elseif innerObj.Name == "Sapphire" then
                                if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                                    innerObj.Handle.ProximityPrompt.HoldDuration = 0
                                end
                            elseif innerObj.Name == "Amethyst" then
                                if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                                    innerObj.Handle.ProximityPrompt.HoldDuration = 0
                                end
                            elseif innerObj.Name == "Topaz" then
                                if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                                    innerObj.Handle.ProximityPrompt.HoldDuration = 0
                                end                     
                            elseif innerObj.Name == "Diamond" then
                                if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                                    innerObj.Handle.ProximityPrompt.HoldDuration = 0
                                end
                            elseif innerObj.Name == "Gold Bar" then
                                if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                                    innerObj.Handle.ProximityPrompt.HoldDuration = 0
                                end
                            elseif innerObj.Name == "Ruby" then
                                if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                                    innerObj.Handle.ProximityPrompt.HoldDuration = 0
                                end
                            else
                                if innerObj:FindFirstChild("Box") and innerObj.Box:FindFirstChild("ProximityPrompt") then
                                    innerObj.Box.ProximityPrompt.HoldDuration = 0
                                end
                            end
                        end
                    end
                end
            end
            local rocks2 = game:GetService("Workspace").GemRobbery.JewelryCases.LowYieldSpawns
            for _, obj in pairs(rocks2:GetChildren()) do
                if obj.ClassName == "Model" then
                    for _, innerObj in pairs(obj:GetChildren()) do
                        if innerObj.ClassName == "Model" then
                            if innerObj.Name == "Case" then
                            elseif innerObj.Name == "Emerald" then
                                if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                                    innerObj.Handle.ProximityPrompt.HoldDuration = 0
                                end
                            elseif innerObj.Name == "Sapphire" then
                                if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                                    innerObj.Handle.ProximityPrompt.HoldDuration = 0
                                end
                            elseif innerObj.Name == "Amethyst" then
                                if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                                    innerObj.Handle.ProximityPrompt.HoldDuration = 0
                                end
                            elseif innerObj.Name == "Topaz" then
                                if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                                    innerObj.Handle.ProximityPrompt.HoldDuration = 0
                                end
                            elseif innerObj.Name == "Diamond" then
                                if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                                    innerObj.Handle.ProximityPrompt.HoldDuration = 0
                                end
                            elseif innerObj.Name == "Gold Bar" then
                                if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                                    innerObj.Handle.ProximityPrompt.HoldDuration = 0
                                end
                            elseif innerObj.Name == "Ruby" then
                                if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                                    innerObj.Handle.ProximityPrompt.HoldDuration = 0
                                end
                            else
                                if innerObj:FindFirstChild("Box") and innerObj.Box:FindFirstChild("ProximityPrompt") then
                                    innerObj.Box.ProximityPrompt.HoldDuration = 0
                                end
                            end
                        end
                    end
                end
            end

end)

Tab1:Button("即时互动空投",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已开启即时互动空投，捡空投时只需按一下按钮即可捡起";
Title = "❗通知❗";
Duration = 5;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()



while true do
        		wait(1)
        		game:GetService("Workspace").Game.Airdrops.Airdrop.Airdrop.ProximityPrompt.HoldDuration = 0
        		game:GetService("Workspace").Game.Airdrops.Airdrop.Airdrop.ProximityPrompt.MaxActivationDistance= 20
        		game:GetService("Workspace").Game.Airdrops.Airdrop.Airdrop.Name = "airdropopen"
        	end

end)

Tab1:Button("快捷打开储物柜（Z）",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已开启快捷储物柜";
Title = "❗通知❗";
Duration = 5;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()



game:GetService("Players").LocalPlayer.PlayerGui.Backpack.Holder.Locker.Visible = true
end)


Tab1:Button("远距离卖物品（开启）",function()
game:GetService("Workspace").BlackMarket.Dealer.Dealer.ProximityPrompt.MaxActivationDistance = 100000

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已开启远距离贩卖";
Title = "❗通知❗";
Duration = 5;
});

 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

end)

Tab1:Button("远距离卖物品（关闭）",function()

game:GetService("Workspace").BlackMarket.Dealer.Dealer.ProximityPrompt.MaxActivationDistance = 20

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已关闭远距离贩卖";
Title = "❗通知❗";
Duration = 5;
});

 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

end)

Tab1:Label("刷钱功能")

--Tab1:Textbox("Textbox","Enter Text",function(txt)
--print(txt)
--end)

--Tab1:Keybind("Keybind",Enum.KeyCode.F,function()
--print("Pressed key")
--end)

--Tab1:Dropdown("Dropdown",{"Option 1","Option 2","Option 3"},function(current)
--print(current)
--end)

--Tab1:Toggle("远距离卖物品",function(x)
--game:GetService("Workspace").BlackMarket.Dealer.Dealer.ProximityPrompt.MaxActivationDistance = 100000
--end)

--Tab1:Slider("Slider",16,500,function(s)
--print(s)
--end)

--local Tab2 = Window:Tab("Tab 2",false)

--Tab2:Label("UI")

--Tab2:Keybind("Toggle",Enum.KeyCode.RightShift,function()
--Library:Toggle()
--end)

local Tab1 = Window:Tab("战斗功能",true)

Tab1:Label("枪械功能")

Tab1:Button("枪械无后座力",function()

if game.ReplicatedStorage.Models.Items:FindFirstChild("Raygun") then
                        if game.ReplicatedStorage.Models.Items.Raygun.Handle.Muzzle:FindFirstChild("PointLight") then
                            game.ReplicatedStorage.Models.Items.Raygun.Handle.Muzzle.PointLight.Name = "PointLight1"
                        end
                    end
                    if game.ReplicatedStorage.Models.Items:FindFirstChild("M1911") then
                        if game.ReplicatedStorage.Models.Items.M1911.Handle.Muzzle:FindFirstChild("PointLight") then
                           game.ReplicatedStorage.Models.Items.M1911.Handle.Muzzle.PointLight.Name = "PointLight1"
                        end
                    end
                    if game.ReplicatedStorage.Models.Items:FindFirstChild("Scar L") then
                        if game.ReplicatedStorage.Models.Items["Scar L"].Handle.Muzzle:FindFirstChild("PointLight") then
                            game.ReplicatedStorage.Models.Items["Scar L"].Handle.Muzzle.PointLight.Name = "PointLight1"
                        end
                    end
                    if game.ReplicatedStorage.Models.Items:FindFirstChild("Glock") then
                        if game.ReplicatedStorage.Models.Items.Glock.Handle.Muzzle:FindFirstChild("PointLight") then
                        game.ReplicatedStorage.Models.Items.Glock.Handle.Muzzle.PointLight.Name = "PointLight1"
                        end
                    end
                    if game.ReplicatedStorage.Models.Items:FindFirstChild("Mossberg") then
                        if game.ReplicatedStorage.Models.Items.Mossberg.Handle.Muzzle:FindFirstChild("PointLight") then
                            game.ReplicatedStorage.Models.Items.Mossberg.Handle.Muzzle.PointLight.Name = "PointLight1"
                        end
                    end
                    if game.ReplicatedStorage.Models.Items:FindFirstChild("RPG") then
                        if game.ReplicatedStorage.Models.Items.RPG.Handle.Muzzle:FindFirstChild("PointLight") then
                            game.ReplicatedStorage.Models.Items.RPG.Handle.Muzzle.PointLight.Name = "PointLight1"
                        end
                    end
                    if game.ReplicatedStorage.Models.Items:FindFirstChild("USP 45") then
                        if game.ReplicatedStorage.Models.Items["USP 45"].Handle.Muzzle:FindFirstChild("PointLight") then
                            game.ReplicatedStorage.Models.Items["USP 45"].Handle.Muzzle.PointLight.Name = "PointLight1"
                        end
                    end
                    if game.ReplicatedStorage.Models.Items:FindFirstChild("Sawn Off") then
                        if game.ReplicatedStorage.Models.Items["Sawn Off"].Handle.Muzzle:FindFirstChild("PointLight") then
                            game.ReplicatedStorage.Models.Items["Sawn Off"].Handle.Muzzle.PointLight.Name = "PointLight1"
                        end
                    end
                    if game.ReplicatedStorage.Models.Items:FindFirstChild("Minigun") then
                        if game.ReplicatedStorage.Models.Items.Minigun.Handle.Muzzle:FindFirstChild("PointLight") then
                            game.ReplicatedStorage.Models.Items.Minigun.Handle.Muzzle.PointLight.Name = "PointLight1"
                        end
                    end
                    if game.ReplicatedStorage.Models.Items:FindFirstChild("Stagecoach") then
                        if game.ReplicatedStorage.Models.Items.Stagecoach.Handle.Muzzle:FindFirstChild("PointLight") then
                            game.ReplicatedStorage.Models.Items.Stagecoach.Handle.Muzzle.PointLight.Name = "PointLight1"
                        end
                    end
                    if game.ReplicatedStorage.Models.Items:FindFirstChild("Deagle") then
                        if game.ReplicatedStorage.Models.Items.Deagle.Handle.Muzzle:FindFirstChild("PointLight") then
                            game.ReplicatedStorage.Models.Items.Deagle.Handle.Muzzle.PointLight.Name = "PointLight1"
                        end
                    end
                    if game.ReplicatedStorage.Models.Items:FindFirstChild("RPK") then
                        if game.ReplicatedStorage.Models.Items.RPK.Handle.Muzzle:FindFirstChild("PointLight") then
                            game.ReplicatedStorage.Models.Items.RPK.Handle.Muzzle.PointLight.Name = "PointLight1"
                        end
                    end
                    if game.ReplicatedStorage.Models.Items:FindFirstChild("Glock 18") then
                        if game.ReplicatedStorage.Models.Items["Glock 18"].Handle.Muzzle:FindFirstChild("PointLight") then
                            game.ReplicatedStorage.Models.Items["Glock 18"].Handle.Muzzle.PointLight.Name = "PointLight1"
                        end
                    end
                    if game.ReplicatedStorage.Models.Items:FindFirstChild("AK-47") then
                        if game.ReplicatedStorage.Models.Items["AK-47"].Handle.Muzzle:FindFirstChild("PointLight") then
                            game.ReplicatedStorage.Models.Items["AK-47"].Handle.Muzzle.PointLight.Name = "PointLight1"
                        end
                    end
                    if game.ReplicatedStorage.Models.Items:FindFirstChild("Tommy Gun") then
                        if game.ReplicatedStorage.Models.Items["Tommy Gun"].Handle.Muzzle:FindFirstChild("PointLight") then
                            game.ReplicatedStorage.Models.Items["Tommy Gun"].Handle.Muzzle.PointLight.Name = "PointLight1"
                        end
                    end
                    if game.ReplicatedStorage.Models.Items:FindFirstChild("M4A1") then
                        if game.ReplicatedStorage.Models.Items.M4A1.Handle.Muzzle:FindFirstChild("PointLight") then
                            game.ReplicatedStorage.Models.Items.M4A1.Handle.Muzzle.PointLight.Name = "PointLight1"
                        end
                    end
                    if game.ReplicatedStorage.Models.Items:FindFirstChild("Uzi") then
                        if game.ReplicatedStorage.Models.Items.Uzi.Handle.Muzzle:FindFirstChild("PointLight") then
                            game.ReplicatedStorage.Models.Items.Uzi.Handle.Muzzle.PointLight.Name = "PointLight1"
                        end
                    end
                    if game.ReplicatedStorage.Models.Items:FindFirstChild("MP7") then
                        if  game.ReplicatedStorage.Models.Items.MP7.Handle.Muzzle:FindFirstChild("PointLight") then
                        game.ReplicatedStorage.Models.Items.MP7.Handle.Muzzle.PointLight.Name = "PointLight1"
                        end
                    end
                    if game.ReplicatedStorage.Models.Items:FindFirstChild("Python") then
                        if  game.ReplicatedStorage.Models.Items.Python.Handle.Muzzle:FindFirstChild("PointLight") then
                            game.ReplicatedStorage.Models.Items.Python.Handle.Muzzle.PointLight.Name = "PointLight1"
                        end
                    end

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "无后座力开启成功";
Title = "❗通知❗";
Duration = 5;
});

 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

end)

Tab1:Button("即时互动弹药箱",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已开启即时互动弹药箱，补充弹药速度加快";
Title = "❗通知❗";
Duration = 5;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()



for i = 1 , 50 do
        		local Ammo = game.workspace.Game.Local.droppables["Ammo Box"]
        		Ammo.Handle.ProximityPrompt.HoldDuration = 0
        		Ammo.Name = "Ammo"
        	end
end)

Tab1:Label("近战功能")

Tab1:Button("范围增大四十倍",function()
_G.HeadSize = 40
        		_G.Disabled = true
        		game:GetService("RunService").RenderStepped:connect(function()
        			if _G.Disabled then
        				for i,v in next, game:GetService("Players"):GetPlayers() do
        					if v.Name ~= game:GetService("Players").LocalPlayer.Name then
        						pcall(function()
        							v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
        							v.Character.HumanoidRootPart.Transparency = 0.7
        							v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
        							v.Character.HumanoidRootPart.Material = "Neon"
        							v.Character.HumanoidRootPart.CanCollide = false
        						end)
        					end
        				end
        			end
        		end)

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "范围增大四十倍，在篮框范围内挥拳即可命中敌人";
Title = "❗通知❗";
Duration = 5;
});

 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

end)

Tab1:Button("范围增大八十倍",function()
_G.HeadSize = 80
        		_G.Disabled = true
        		game:GetService("RunService").RenderStepped:connect(function()
        			if _G.Disabled then
        				for i,v in next, game:GetService("Players"):GetPlayers() do
        					if v.Name ~= game:GetService("Players").LocalPlayer.Name then
        						pcall(function()
        							v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
        							v.Character.HumanoidRootPart.Transparency = 0.7
        							v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
        							v.Character.HumanoidRootPart.Material = "Neon"
        							v.Character.HumanoidRootPart.CanCollide = false
        						end)
        					end
        				end
        			end
        		end)

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "范围增大八十倍，在篮框范围内挥拳即可命中敌人";
Title = "❗通知❗";
Duration = 5;
});

 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

end)

Tab1:Button("范围增大一百六十倍",function()
_G.HeadSize = 160
        		_G.Disabled = true
        		game:GetService("RunService").RenderStepped:connect(function()
        			if _G.Disabled then
        				for i,v in next, game:GetService("Players"):GetPlayers() do
        					if v.Name ~= game:GetService("Players").LocalPlayer.Name then
        						pcall(function()
        							v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
        							v.Character.HumanoidRootPart.Transparency = 0.7
        							v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
        							v.Character.HumanoidRootPart.Material = "Neon"
        							v.Character.HumanoidRootPart.CanCollide = false
        						end)
        					end
        				end
        			end
        		end)

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "范围增大一百六十倍，在篮框范围内挥拳即可命中敌人";
Title = "❗通知❗";
Duration = 5;
});

 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

end)

Tab1:Button("范围增大三百二十倍",function()
_G.HeadSize = 320
        		_G.Disabled = true
        		game:GetService("RunService").RenderStepped:connect(function()
        			if _G.Disabled then
        				for i,v in next, game:GetService("Players"):GetPlayers() do
        					if v.Name ~= game:GetService("Players").LocalPlayer.Name then
        						pcall(function()
        							v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
        							v.Character.HumanoidRootPart.Transparency = 0.7
        							v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
        							v.Character.HumanoidRootPart.Material = "Neon"
        							v.Character.HumanoidRootPart.CanCollide = false
        						end)
        					end
        				end
        			end
        		end)

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "范围增大三百二十倍，在篮框范围内挥拳即可命中敌人";
Title = "❗通知❗";
Duration = 5;
});

 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

end)

Tab1:Button("范围增大六百四十倍",function()
_G.HeadSize = 640
        		_G.Disabled = true
        		game:GetService("RunService").RenderStepped:connect(function()
        			if _G.Disabled then
        				for i,v in next, game:GetService("Players"):GetPlayers() do
        					if v.Name ~= game:GetService("Players").LocalPlayer.Name then
        						pcall(function()
        							v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
        							v.Character.HumanoidRootPart.Transparency = 0.7
        							v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
        							v.Character.HumanoidRootPart.Material = "Neon"
        							v.Character.HumanoidRootPart.CanCollide = false
        						end)
        					end
        				end
        			end
        		end)

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "范围增大六百四十倍，在篮框范围内挥拳即可命中敌人";
Title = "❗通知❗";
Duration = 5;
});

 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

end)

Tab1:Button("范围复原",function()
_G.HeadSize = 1
        		_G.Disabled = true
        		game:GetService("RunService").RenderStepped:connect(function()
        			if _G.Disabled then
        				for i,v in next, game:GetService("Players"):GetPlayers() do
        					if v.Name ~= game:GetService("Players").LocalPlayer.Name then
        						pcall(function()
        							v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
        							v.Character.HumanoidRootPart.Transparency = 0.7
        							v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
        							v.Character.HumanoidRootPart.Material = "Neon"
        							v.Character.HumanoidRootPart.CanCollide = false
        						end)
        					end
        				end
        			end
        		end)

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已关闭范围增大";
Title = "❗通知❗";
Duration = 5;
});

 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

end)

Tab1:Button("即时互动弹药箱",function()

for i = 1 , 50 do
        		local Ammo = game.workspace.Game.Local.droppables["Ammo Box"]
        		Ammo.Handle.ProximityPrompt.HoldDuration = 0
        		Ammo.Name = "Ammo"
        	end

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已开启即时互动弹药箱，补充弹药速度加快";
Title = "❗通知❗";
Duration = 5;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()


end)

local Tab1 = Window:Tab("传送功能",true)

Tab1:Label("传送区域")

Tab1:Button("点击传送至---银行",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已传送至银行";
Title = "❗通知❗";
Duration = 5;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

            local tp1 = game:GetService("Players")
            local tp2 = tp1.LocalPlayer.Character.HumanoidRootPart
            local tp3 = CFrame.new(1055.94153, 15.11950874, -344.58374)
            tp2.CFrame = tp3

end)

Tab1:Button("点击传送至---珠宝店",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已传送至珠宝店";
Title = "❗通知❗";
Duration = 5;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

            local tp1 = game:GetService("Players")
            local tp2 = tp1.LocalPlayer.Character.HumanoidRootPart
            local tp3 = CFrame.new(1719.02637, 14.2831011, -714.293091)
            tp2.CFrame = tp3
end)

Tab1:Button("点击传送至---黑市",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已传送至黑市";
Title = "❗通知❗";
Duration = 5;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

            local tp1 = game:GetService("Players")
            local tp2 = tp1.LocalPlayer.Character.HumanoidRootPart
            local tp3 = CFrame.new(690.499, -18.949, -115.453)
            tp2.CFrame = tp3

end)

Tab1:Button("点击传送至---沙滩",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已传送至沙滩";
Title = "❗通知❗";
Duration = 5;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

            local tp1 = game:GetService("Players")
            local tp2 = tp1.LocalPlayer.Character.HumanoidRootPart
            local tp3 = CFrame.new(998.4656372070312, 15, 395.9789733886719)
            tp2.CFrame = tp3
end)

Tab1:Label("传送物品")

Tab1:Button("点击传送至---撬锁",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已传送至撬锁（物品）";
Title = "❗通知❗";
Duration = 7;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

local tp1 = game:GetService("Players")
            local tp2 = tp1.LocalPlayer.Character.HumanoidRootPart
            local tp3 = CFrame.new(660.5284423828125, 6.4081127643585205, -716.489990234375)
            tp2.CFrame = tp3




end)

Tab1:Button("点击传送至---M4A1",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已传送至M4A1（物品）";
Title = "❗通知❗";
Duration = 7;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

local tp1 = game:GetService("Players")
            local tp2 = tp1.LocalPlayer.Character.HumanoidRootPart
            local tp3 = CFrame.new(603.4676513671875,25.662811279296875,-922.0442504882812)
            tp2.CFrame = tp3




end)

Tab1:Button("点击传送至---护甲",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已传送至护甲（物品）";
Title = "❗通知❗";
Duration = 7;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

local tp1 = game:GetService("Players")
            local tp2 = tp1.LocalPlayer.Character.HumanoidRootPart
            local tp3 = CFrame.new(563.4422607421875,28.502071380615234,-1472.780517578125)
            tp2.CFrame = tp3

end)

Tab1:Button("点击传送至---武士刀",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已传送至武士刀（物品）";
Title = "❗通知❗";
Duration = 7;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

local tp1 = game:GetService("Players")
            local tp2 = tp1.LocalPlayer.Character.HumanoidRootPart
            local tp3 = CFrame.new(175.191, 13.937, -132.69)
            tp2.CFrame = tp3

end)

Tab1:Button("点击传送至---短管散弹枪",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已传送至短管散弹枪（物品）";
Title = "❗通知❗";
Duration = 7;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

local tp1 = game:GetService("Players")
            local tp2 = tp1.LocalPlayer.Character.HumanoidRootPart
            local tp3 = CFrame.new(1179.98523,40,-436.812683)
            tp2.CFrame = tp3

end)

Tab1:Button("点击传送至---沙漠之鹰",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已传送至沙漠之鹰（物品）";
Title = "❗通知❗";
Duration = 7;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

local tp1 = game:GetService("Players")
            local tp2 = tp1.LocalPlayer.Character.HumanoidRootPart
            local tp3 = CFrame.new(363.341461, 26.0798492, -259.681396)
            tp2.CFrame = tp3

end)

Tab1:Button("点击传送至---射线枪（Ray Gun）",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已传送至射线枪（Ray Gun）（物品）";
Title = "❗通知❗";
Duration = 7;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

local tp1 = game:GetService("Players")
            local tp2 = tp1.LocalPlayer.Character.HumanoidRootPart
            local tp3 = CFrame.new(148.685471, -90, -529.280945)
            tp2.CFrame = tp3

end)

Tab1:Button("点击传送至---AUG",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已传送至AUG（物品）";
Title = "❗通知❗";
Duration = 7;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

local tp1 = game:GetService("Players")
            local tp2 = tp1.LocalPlayer.Character.HumanoidRootPart
            local tp3 = CFrame.new(1170.500244140625,48.37138366699219,-772.55859375)
            tp2.CFrame = tp3

end)

Tab1:Button("点击传送至---加特林",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已传送至加特林（物品）";
Title = "❗通知❗";
Duration = 7;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

local tp1 = game:GetService("Players")
            local tp2 = tp1.LocalPlayer.Character.HumanoidRootPart
            local tp3 = CFrame.new(364.97076416015625, 0.764974117279053, -1447.3302001953125)
            tp2.CFrame = tp3

end)

Tab1:Label("刷钱功能")

local Tab1 = Window:Tab("赚钱功能",true)

Tab1:Label("刷钱功能")

Tab1:Button("自动刷银行（可用）",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已开启银行刷钱，当银行未刷新时此功能不可用，当银行刷新时此功能可用";
Title = "❗通知❗";
Duration = 7;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

local autobankbt = false
if autobankbt == false then
                autobankbt = true
				while autobankbt == true do
				wait(0.3)
            if autobankbt == true then
                local BankDoor = game:GetService("Workspace").BankRobbery.VaultDoor
                local BankCashs = game:GetService("Workspace").BankRobbery.BankCash
                local epoh2 = game:GetService("Players")
                local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
                if BankDoor.Door.Attachment.ProximityPrompt.Enabled == true then
                    BankDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
                    BankDoor.Door.Attachment.ProximityPrompt.MaxActivationDistance = 20
                    local epoh1 = CFrame.new(1071.955810546875, 9, -343.80816650390625)
                    epoh3.CFrame = epoh1
                    wait(0.3)
                    BankDoor.Door.Attachment.ProximityPrompt:InputHoldBegin()
                    wait(0.3)
                    BankDoor.Door.Attachment.ProximityPrompt:InputHoldEnd()
                else
                    if BankCashs.Cash:FindFirstChild("Bundle") then
                        local epoh1 = CFrame.new(1055.94153, 15.11950874, -344.58374)
                        epoh3.CFrame = epoh1
                        BankCashs.Main.Attachment.ProximityPrompt.MaxActivationDistance = 20
                        BankCashs.Main.Attachment.ProximityPrompt:InputHoldBegin()
                    end 
                    if not BankCashs.Cash:FindFirstChild("Bundle") then
                    	BankCashs.Main.Attachment.ProximityPrompt:InputHoldEnd()
                    end
                end
            end
		end
	end




end)

Tab1:Button("自动刷零件（可用）",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已开启自动捡零件，当地图中无零件时，此功能无效（请在捡零件的过程中打开物品栏，打开零件盒，否则物品栏过满无法捡零件";
Title = "❗通知❗";
Duration = 7;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

local autoairdrop1231t = false
 if autoairdrop1231t == false then
                autoairdrop1231t = true
				while autoairdrop1231t == true do
        	wait(0.1)
            local epoh2 = game:GetService("Players")
            local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
            for i,l in pairs(game:GetService("Workspace").Game.Entities.ItemPickup:GetChildren()) do
                for i,v in pairs(l:GetChildren()) do
                    if v.ClassName == "MeshPart" or "Part" then
                        for i,e in pairs(v:GetChildren()) do
                            if e.ClassName == "ProximityPrompt" then
                                if e.ObjectText == "Electronics" or e.ObjectText == "Weapon Parts" then
                                    local epoh1 = v.CFrame
                                    epoh3.CFrame = epoh1 * CFrame.new(0, 2, 0)
                                    wait(0.1)
                                    e:InputHoldBegin()
                                    e:InputHoldEnd()
                                end
                            end
                        end       
                    end
                end
            end
		end
	end




end)

Tab1:Button("自动打开随机位置金保险（需撬锁）",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已开启（若没开启请手握撬锁按一下按钮）";
Title = "❗通知❗";
Duration = 7;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

local BankDoor = game:GetService("Workspace").BankRobbery.VaultDoor
            local epoh2 = game:GetService("Players")
            local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
            if BankDoor.Door.Attachment.ProximityPrompt.Enabled == true then
                BankDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
                BankDoor.Door.Attachment.ProximityPrompt.MaxActivationDistance = 20
                local epoh1 = CFrame.new(1071.955810546875, 9, -343.80816650390625)
                epoh3.CFrame = epoh1
                wait(0.3)
                BankDoor.Door.Attachment.ProximityPrompt:InputHoldBegin()
        		BankDoor.Door.Attachment.ProximityPrompt:InputHoldEnd()
            end
            local GoldJewelSafes = game:GetService("Workspace").Game.Entities.GoldJewelSafe
            for _, model in pairs(GoldJewelSafes:GetChildren()) do
                if model.ClassName == "Model" then
                    epoh3.CFrame = model.WorldPivot * CFrame.new(0, 10, 0)
                    model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.HoldDuration = 0
                    model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.MaxActivationDistance = 20
                    wait(0.3)
                    if model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.Enabled == true then
                        model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt:InputHoldBegin()
                        model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt:InputHoldEnd()
                        break
                    end
                end
            end
        
end)

Tab1:Button("自动打开随机位置黑保险（需撬锁）",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已开启（若没开启请手握撬锁按一下按钮）";
Title = "❗通知❗";
Duration = 7;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

local BankDoor = game:GetService("Workspace").BankRobbery.VaultDoor
            local epoh2 = game:GetService("Players")
            local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
            if BankDoor.Door.Attachment.ProximityPrompt.Enabled == true then
                BankDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
                BankDoor.Door.Attachment.ProximityPrompt.MaxActivationDistance = 20
                local epoh1 = CFrame.new(1071.955810546875, 9, -343.80816650390625)
                epoh3.CFrame = epoh1
                wait(0.3)
                BankDoor.Door.Attachment.ProximityPrompt:InputHoldBegin()
        		BankDoor.Door.Attachment.ProximityPrompt:InputHoldEnd()
            end
            local JewelSafes = game:GetService("Workspace").Game.Entities.JewelSafe
            for _, model in pairs(JewelSafes:GetChildren()) do
                if model.ClassName == "Model" then
                    epoh3.CFrame = model.WorldPivot * CFrame.new(0, 10, 0)
                    model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.HoldDuration = 0
                    model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.MaxActivationDistance = 20
                    wait(0.3)
                    if model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.Enabled == true then
                        model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt:InputHoldBegin()
                        model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt:InputHoldEnd()
                        break
                    end
                end
            end
        
end)

Tab1:Button("自动打开海盗岛大宝箱（需撬锁）",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已开启（若没开启请手握撬锁按一下按钮）";
Title = "❗通知❗";
Duration = 7;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

local LargeChes = game:GetService("Workspace").Game.Entities.LargeChest
            local foundModel = false
            for _, model in pairs(LargeChes:GetChildren()) do
                if model.ClassName == "Model" then
                    foundModel = true
                    local epoh1 = model.WorldPivot
                    local epoh2 = game:GetService("Players")
                    local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
                    epoh3.CFrame = epoh1 * CFrame.new(0, 2, 0)
                    wait(0.1)
                    model.Door["Meshes/LargeSafe1_Cube.002_Cube.003_None (3)"].Attachment.ProximityPrompt:InputHoldBegin()
                    model.Door["Meshes/LargeSafe1_Cube.002_Cube.003_None (3)"].Attachment.ProximityPrompt:InputHoldEnd()
                    break
                end
            end
        
end)

Tab1:Button("自动打开海盗岛小宝箱（需撬锁）",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已开启（若没开启请手握撬锁按一下按钮）";
Title = "❗通知❗";
Duration = 7;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

local SmallChes = game:GetService("Workspace").Game.Entities.SmallChest
            for _, model in pairs(SmallChes:GetChildren()) do
                if model.ClassName == "Model" then
                    local epoh1 = model.WorldPivot
                    local epoh2 = game:GetService("Players")
                    local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
                    epoh3.CFrame = epoh1 * CFrame.new(0, 2, 0)
                    wait(0.1)
                    model.Lock["Meshes/untitled_chest.002_Material.009 (4)"].Attachment.ProximityPrompt:InputHoldBegin()
                    model.Lock["Meshes/untitled_chest.002_Material.009 (4)"].Attachment.ProximityPrompt:InputHoldEnd()
                    break
                end
            end
        
end)

Tab1:Button("自动打开随机位置小保险箱（需撬锁）",function()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "已开启（若没开启请手握撬锁按一下按钮）";
Title = "❗通知❗";
Duration = 7;
});
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()

local SmallSaf = game:GetService("Workspace").Game.Entities.SmallSafe
            for _, model in pairs(SmallSaf:GetChildren()) do
                if model.ClassName == "Model" then
                    local epoh1 = model.WorldPivot
                    local epoh2 = game:GetService("Players")
                    local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
                    epoh3.CFrame = epoh1 * CFrame.new(0, 2, 0)
                    SmallSaf.SmallSafe.Door["Meshes/Safe1_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.HoldDuration = 0
                    wait(0.1)
                    SmallSaf.SmallSafe.Door["Meshes/Safe1_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt:InputHoldBegin()
                    SmallSaf.SmallSafe.Door["Meshes/Safe1_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt:InputHoldEnd()
                    break
                end
            end
        
end)

Tab1:Label("提示功能")

Tab1:Button("珠宝店刷新提示",function()
local aassddt = false
if aassddt == false then
                aassddt = true
				while aassddt == true do
                wait(0.1)
                local Ge = game:GetService("Workspace").GemRobbery:FindFirstChild("Rubble")
                if Ge then
                    game:GetService("StarterGui"):SetCore("SendNotification",{
        	    	Title = "❗通知❗";
        	    	Text = "珠宝店已刷新";
        	    	Duration = math.huge;
                    Button1 = "确认"
                    })
 
 local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

wait(0);

Notify({
Description = "珠宝店刷新提示已开启，当珠宝店刷新时，右下角会出现提示";
Title = "❗通知❗";
Duration = 5;
});
 
 local Sound = Instance.new("Sound",game:GetService("SoundService"))
            Sound.SoundId = "rbxassetid://232127604"
            Sound:Play()


                    wait(30)
                end
			end
		end
	
end)

Tab1:Label("刷钱功能")

local Tab1 = Window:Tab("作者的话",true)

Tab1:Label("本脚本为Yungengxin创作\n特别鸣谢：lyy，为本脚本提供技术支持")
Tab1:Label("Rb脚本交流群群号：1018099361\n若群满请看群介绍转移其他群")
Tab1:Label("Q：这个UI为什么这么拉？\nA：俄亥俄州屏蔽了大部分UI，这是我能找到的最不受影响的UI了")
Tab1:Label("Q：为什么说特别鸣谢LYY？\nA：因为他把阿勺龟的脚本开源了，部分功能参考了他们的脚本")
Tab1:Label("Q：功能用着很卡，或者延迟很高怎么办？\nA：开VPN，换加速器")
Tab1:Label("最后：由于此UI的BUG较多，若在使用过程中出现问题\n请在群里提问，或私信我解答")
Tab1:Label("Rb脚本中心的初衷：\n一切旨在为用户提升游玩体验，永久免费，请勿圈钱！")


else

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "Rb脚本中心"; Text ="服务器并非俄亥俄州，请在俄亥俄州内注入脚本！"; Duration = 4; })

end