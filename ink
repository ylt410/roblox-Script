
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Rb脚本中心付费版：", 
	Text = "正在加载...墨水游戏...", 
	Icon = "rbxassetid://119970903874014" 
})


local Player = game.Players.LocalPlayer

-- Services
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")

-- Global Variables
_G.InfiniteJump = false
_G.AutoSpeed = false
_G.Speed = 50
_G.AutoHelpPlayer = false
_G.AutoTrollPlayer = false
_G.TugOfWar = false
_G.DoorExit = false
_G.AntiLag = false
_G.PartLag = {"FootstepEffect", "BulletHole", "GroundSmokeDIFFERENT", "ARshell", "effect debris", "effect", "DroppedMP5"}
_G.EspHighlight = false
_G.EspGui = false
_G.EspGuiTextSize = 7
_G.EspGuiTextColor = Color3.new(255, 255, 255)
_G.EspName = false
_G.EspDistance = false
_G.CollectBandage = false
_G.CollectFlashbang = false
_G.CollectGrenade = false
_G.AntiFling = false
_G.AntiBanana = false
_G.AutoDalgona = false
_G.HideSeekESP = false
_G.GlassBridgeVision = false
_G.AutoMingle = false
_G.AutoSkip = false
_G.NoCooldownProximity = false
_G.Float = false
_G.NoClip = false

local Loading = false
local Loading1 = false
local CooldownProximity = nil
local FloatConnection = nil
local NoClipConnection = nil

-- Create Sections and Tabs
local Tabs = {
    Main = Window:Section({ Title = "主线关卡", Opened = true }),
    HideSeek = Window:Section({ Title = "躲猫猫", Opened = true }),
    Player = Window:Section({ Title = "杂项", Opened = true }),
    Other = Window:Section({ Title = "小游戏", Opened = true }),
}

local TabHandles = {
    MainGames = Tabs.Main:Tab({ Title = "红绿灯", Icon = "gamepad-2" }),
    Dalgona = Tabs.Main:Tab({ Title = "抠糖饼 & 拔河", Icon = "cookie" }),
    HideSeekESP = Tabs.HideSeek:Tab({ Title = "透视功能", Icon = "eye" }),
    HideSeekTeleport = Tabs.HideSeek:Tab({ Title = "传送收集", Icon = "move" }),
    Movement = Tabs.Player:Tab({ Title = "玩家设置", Icon = "user" }),
    Utilities = Tabs.Player:Tab({ Title = "实用功能", Icon = "settings" }),
    OtherGames = Tabs.Other:Tab({ Title = "其他关卡", Icon = "puzzle" }),
}

-- Utility Functions
function CheckWall(Target)
    local Direction = (Target.Position - Workspace.CurrentCamera.Position).unit * (Target.Position - Workspace.CurrentCamera.Position).Magnitude
    local RaycastParams = RaycastParams.new()
    RaycastParams.FilterDescendantsInstances = {Player.Character, Workspace.CurrentCamera}
    RaycastParams.FilterType = Enum.RaycastFilterType.Blacklist
    local Result = Workspace:Raycast(Workspace.CurrentCamera.Position, Direction, RaycastParams)
    return Result == nil or Result.Instance:IsDescendantOf(Target)
end

function HasTool(tool)
    for _, v in pairs(Player.Character:GetChildren()) do
        if v:IsA("Tool") and v.Name == tool then
            return true
        end
    end
    for _, v in pairs(Player.Backpack:GetChildren()) do
        if v:IsA("Tool") and v.Name == tool then
            return true
        end
    end
    return false
end

function PartLagDe(g)
    for i, v in pairs(_G.PartLag) do
        if g.Name:find(v) then
            g:Destroy()
        end
    end
end

-- Setup Jump and Speed
UserInputService.JumpRequest:connect(function()
    if _G.InfiniteJump == true then
        Player.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end
end)

Player.CharacterAdded:Connect(function(character)
    character:WaitForChild("Humanoid").WalkSpeed = _G.AutoSpeed and _G.Speed or 16
    character:WaitForChild("Humanoid"):GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        if _G.AutoSpeed == true then
            character.Humanoid.WalkSpeed = _G.Speed or 50
        end
    end)
end)

-- Main Games Tab - Red Light Green Light
TabHandles.MainGames:Button({
    Title = "一键到终点",
    Desc = "瞬间传送到终点",
    Icon = "zap",
    Callback = function()
        if Workspace:FindFirstChild("RedLightGreenLight") and Workspace.RedLightGreenLight:FindFirstChild("sand") and Workspace.RedLightGreenLight.sand:FindFirstChild("crossedover") then
            local pos = Workspace.RedLightGreenLight.sand.crossedover.Position + Vector3.new(0, 5, 0)
            Player.Character.HumanoidRootPart.CFrame = CFrame.new(pos, pos + Vector3.new(0, 0, -1))
            WindUI:Notify({
                Title = "传送成功",
                Content = "已抵达终点！",
                Icon = "check",
                Duration = 2
            })
        end
    end
})

TabHandles.MainGames:Button({
    Title = "帮助玩家",
    Desc = "扛起玩家传送至终点",
    Icon = "hand-helping",
    Callback = function()
        if Loading then return end
        Loading = true
        for _, v in pairs(game.Players:GetPlayers()) do
            if v.Character:FindFirstChild("HumanoidRootPart") and v.Character.HumanoidRootPart:FindFirstChild("CarryPrompt") and v.Character.HumanoidRootPart.CarryPrompt.Enabled == true then
                if v.Character:FindFirstChild("SafeRedLightGreenLight") == nil then
                    Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                    wait(0.3)
                    repeat task.wait(0.1)
                        fireproximityprompt(v.Character.HumanoidRootPart:FindFirstChild("CarryPrompt"))
                    until v.Character.HumanoidRootPart.CarryPrompt.Enabled == false
                    wait(0.5)
                    if Workspace:FindFirstChild("RedLightGreenLight") and Workspace.RedLightGreenLight:FindFirstChild("sand") and Workspace.RedLightGreenLight.sand:FindFirstChild("crossedover") then
                        local pos = Workspace.RedLightGreenLight.sand.crossedover.Position + Vector3.new(0, 5, 0)
                        Player.Character.HumanoidRootPart.CFrame = CFrame.new(pos, pos + Vector3.new(0, 0, -1))
                    end
                    wait(0.4)
                    ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("ClickedButton"):FireServer({tryingtoleave = true})
                    break
                end
            end
        end
        Loading = false
    end
})

TabHandles.MainGames:Toggle({
    Title = "自动帮助玩家",
    Desc = "自动扛起未通关玩家传送到终点",
    Value = false,
    Callback = function(value)
        _G.AutoHelpPlayer = value
        while _G.AutoHelpPlayer do
            pcall(function()
                for _, v in pairs(game.Players:GetPlayers()) do
                    if v ~= Player and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                        local carryPrompt = v.Character.HumanoidRootPart:FindFirstChild("CarryPrompt")
                        if carryPrompt and carryPrompt.Enabled and not v.Character:FindFirstChild("SafeRedLightGreenLight") then
                            Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                            wait(0.3)
                            repeat
                                fireproximityprompt(carryPrompt)
                                task.wait(0.1)
                            until not carryPrompt.Enabled or not carryPrompt.Parent
                            wait(0.5)
                            if Workspace:FindFirstChild("RedLightGreenLight") and Workspace.RedLightGreenLight:FindFirstChild("sand") and Workspace.RedLightGreenLight.sand:FindFirstChild("crossedover") then
                                local pos = Workspace.RedLightGreenLight.sand.crossedover.Position + Vector3.new(0, 5, 0)
                                Player.Character.HumanoidRootPart.CFrame = CFrame.new(pos, pos + Vector3.new(0, 0, -1))
                            end
                            wait(0.4)
                            ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("ClickedButton"):FireServer({tryingtoleave = true})
                            break
                        end
                    end
                end
            end)
            task.wait(2)
        end
    end
})

TabHandles.MainGames:Toggle({
    Title = "自动恶搞玩家",
    Desc = "扛起玩家让他滚回起点",
    Value = false,
    Callback = function(value)
        _G.AutoTrollPlayer = value
        while _G.AutoTrollPlayer do
            pcall(function()
                for _, v in pairs(game.Players:GetPlayers()) do
                    if v.Character:FindFirstChild("HumanoidRootPart") and v.Character.HumanoidRootPart:FindFirstChild("CarryPrompt") and v.Character.HumanoidRootPart.CarryPrompt.Enabled == true then
                        if v.Character:FindFirstChild("SafeRedLightGreenLight") == nil then
                            Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                            wait(0.3)
                            repeat task.wait(0.1)
                                fireproximityprompt(v.Character.HumanoidRootPart:FindFirstChild("CarryPrompt"))
                            until v.Character.HumanoidRootPart.CarryPrompt.Enabled == false
                            wait(0.5)
                            if Workspace:FindFirstChild("RedLightGreenLight") then
                                Player.Character.HumanoidRootPart.CFrame = CFrame.new(-84, 1023, -537)
                            end
                            wait(0.4)
                            ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("ClickedButton"):FireServer({tryingtoleave = true})
                            break
                        end
                    end
                end
            end)
            task.wait()
        end
    end
})

-- Dalgona & Tug Tab
TabHandles.Dalgona:Button({
    Title = "一键完成扣糖饼",
    Desc = "瞬间完成扣糖饼",
    Icon = "cookie",
    Callback = function()
        pcall(function()
            if ReplicatedStorage:FindFirstChild("Modules") and ReplicatedStorage.Modules:FindFirstChild("Games") then
                local DalgonaClientModule = ReplicatedStorage.Modules.Games:FindFirstChild("DalgonaClient")
                if DalgonaClientModule then
                    for i, v in pairs(getreg()) do
                        if typeof(v) == "function" and islclosure(v) then
                            if getfenv(v).script == DalgonaClientModule then
                                if getinfo(v).nups == 73 then
                                    setupvalue(v, 31, 9e9)
                                    WindUI:Notify({
                                        Title = "椪糖完成",
                                        Content = "抠图已完成！",
                                        Icon = "check",
                                        Duration = 3
                                    })
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
})

TabHandles.Dalgona:Toggle({
    Title = "自动扣糖饼",
    Desc = "自动完成扣糖饼",
    Value = false,
    Callback = function(value)
        _G.AutoDalgona = value
        while _G.AutoDalgona do
            pcall(function()
                if ReplicatedStorage:FindFirstChild("Modules") and ReplicatedStorage.Modules:FindFirstChild("Games") then
                    local DalgonaClientModule = ReplicatedStorage.Modules.Games:FindFirstChild("DalgonaClient")
                    if DalgonaClientModule then
                        for i, v in pairs(getreg()) do
                            if typeof(v) == "function" and islclosure(v) then
                                if getfenv(v).script == DalgonaClientModule then
                                    if getinfo(v).nups == 73 then
                                        setupvalue(v, 31, 9e9)
                                    end
                                end
                            end
                        end
                    end
                end
            end)
            task.wait(5)
        end
    end
})

TabHandles.Dalgona:Toggle({
    Title = "自动拔河",
    Desc = "自动赢得拔河比赛",
    Value = false,
    Callback = function(value)
        _G.TugOfWar = value
        while _G.TugOfWar do
            pcall(function()
                ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("TemporaryReachedBindable"):FireServer({GameQTE = true})
            end)
            task.wait(0.1)
        end
    end
})

-- Hide & Seek ESP Tab
TabHandles.HideSeekESP:Toggle({
    Title = "出口透视",
    Desc = "显示出口大门",
    Value = false,
    Callback = function(value)
        _G.DoorExit = value
        if value then
            task.spawn(function()
                while _G.DoorExit do
            pcall(function()
                if Workspace:FindFirstChild("HideAndSeekMap") then
                    for i, v in pairs(Workspace:FindFirstChild("HideAndSeekMap"):GetChildren()) do
                        if v.Name == "NEWFIXEDDOORS" then
                            for k, m in pairs(v:GetChildren()) do
                                if m.Name:find("Floor") and m:FindFirstChild("EXITDOORS") then
                                    for _, a in pairs(m:FindFirstChild("EXITDOORS"):GetChildren()) do
                                        if a:IsA("Model") and a:FindFirstChild("DoorRoot") then
                                            -- Clean existing ESP
                                            for _, z in pairs(a.DoorRoot:GetChildren()) do
                                                if z.Name:find("Esp_") then
                                                    z:Destroy()
                                                end
                                            end

                                            -- Add highlight if enabled
                                            if _G.EspHighlight and not a.DoorRoot:FindFirstChild("Esp_Highlight") then
                                                local Highlight = Instance.new("Highlight")
                                                Highlight.Name = "Esp_Highlight"
                                                Highlight.FillColor = Color3.fromRGB(0, 255, 0)
                                                Highlight.OutlineColor = Color3.fromRGB(0, 255, 0)
                                                Highlight.FillTransparency = 0.5
                                                Highlight.OutlineTransparency = 0
                                                Highlight.Adornee = a
                                                Highlight.Parent = a.DoorRoot
                                            end

                                            -- Add GUI ESP if enabled
                                            if _G.EspGui and not a.DoorRoot:FindFirstChild("Esp_Gui") then
                                                local BillboardGui = Instance.new("BillboardGui")
                                                BillboardGui.Name = "Esp_Gui"
                                                BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                                                BillboardGui.StudsOffset = Vector3.new(0, 3, 0)
                                                BillboardGui.AlwaysOnTop = true
                                                BillboardGui.Parent = a.DoorRoot

                                                local TextLabel = Instance.new("TextLabel")
                                                TextLabel.Size = UDim2.new(1, 0, 1, 0)
                                                TextLabel.BackgroundTransparency = 1
                                                TextLabel.Text = "出口大门"
                                                TextLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
                                                TextLabel.TextScaled = true
                                                TextLabel.Font = Enum.Font.SourceSansBold
                                                TextLabel.Parent = BillboardGui

                                                local UIStroke = Instance.new("UIStroke")
                                                UIStroke.Color = Color3.new(0, 0, 0)
                                                UIStroke.Thickness = 1.5
                                                UIStroke.Parent = TextLabel
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
            task.wait(1)
        end
            end)
        else
            -- Clean up all door ESP when disabled
            if Workspace:FindFirstChild("HideAndSeekMap") then
                for i, v in pairs(Workspace:FindFirstChild("HideAndSeekMap"):GetChildren()) do
                    if v.Name == "NEWFIXEDDOORS" then
                        for k, m in pairs(v:GetChildren()) do
                            if m.Name:find("Floor") and m:FindFirstChild("EXITDOORS") then
                                for _, a in pairs(m:FindFirstChild("EXITDOORS"):GetChildren()) do
                                    if a:IsA("Model") and a:FindFirstChild("DoorRoot") then
                                        for _, z in pairs(a.DoorRoot:GetChildren()) do
                                            if z.Name:find("Esp_") then
                                                z:Destroy()
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
})

TabHandles.HideSeekESP:Toggle({
    Title = "钥匙透视",
    Desc = "显示掉落钥匙",
    Value = false,
    Callback = function(value)
        _G.DoorKey = value
        if value then
            task.spawn(function()
                while _G.DoorKey do
                    pcall(function()
                        for _, a in pairs(Workspace.Effects:GetChildren()) do
                            if a.Name:find("DroppedKey") and a:FindFirstChild("Handle") then
                                -- Clean existing ESP
                                for _, z in pairs(a.Handle:GetChildren()) do
                                    if z.Name:find("Esp_") then
                                        z:Destroy()
                                    end
                                end

                                if _G.EspHighlight and not a.Handle:FindFirstChild("Esp_Highlight") then
                                    local Highlight = Instance.new("Highlight")
                                    Highlight.Name = "Esp_Highlight"
                                    Highlight.FillColor = Color3.fromRGB(255, 255, 0)
                                    Highlight.OutlineColor = Color3.fromRGB(255, 255, 0)
                                    Highlight.FillTransparency = 0.3
                                    Highlight.OutlineTransparency = 0
                                    Highlight.Adornee = a
                                    Highlight.Parent = a.Handle
                                end

                                if _G.EspGui and not a.Handle:FindFirstChild("Esp_Gui") then
                                    local BillboardGui = Instance.new("BillboardGui")
                                    BillboardGui.Name = "Esp_Gui"
                                    BillboardGui.Size = UDim2.new(0, 150, 0, 40)
                                    BillboardGui.StudsOffset = Vector3.new(0, 3, 0)
                                    BillboardGui.AlwaysOnTop = true
                                    BillboardGui.Parent = a.Handle

                                    local TextLabel = Instance.new("TextLabel")
                                    TextLabel.Size = UDim2.new(1, 0, 1, 0)
                                    TextLabel.BackgroundTransparency = 1
                                    TextLabel.Text = "钥匙"
                                    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
                                    TextLabel.TextScaled = true
                                    TextLabel.Font = Enum.Font.SourceSansBold
                                    TextLabel.Parent = BillboardGui

                                    local UIStroke = Instance.new("UIStroke")
                                    UIStroke.Color = Color3.new(0, 0, 0)
                                    UIStroke.Thickness = 1.5
                                    UIStroke.Parent = TextLabel
                                end
                            end
                        end
                    end)
                    task.wait(1)
                end
            end)
        else
            -- Clean up all key ESP when disabled
            for _, a in pairs(Workspace.Effects:GetChildren()) do
                if a.Name:find("DroppedKey") and a:FindFirstChild("Handle") then
                    for _, z in pairs(a.Handle:GetChildren()) do
                        if z.Name:find("Esp_") then
                            z:Destroy()
                        end
                    end
                end
            end
        end
    end
})

TabHandles.HideSeekESP:Toggle({
    Title = "躲藏玩家透视",
    Desc = "显示躲藏的玩家",
    Value = false,
    Callback = function(value)
        _G.HidePlayer = value
        if value then
            task.spawn(function()
                while _G.HidePlayer do
                    pcall(function()
                        for i, v in pairs(game.Players:GetChildren()) do
                            if v ~= Player and v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") then
                                if v:GetAttribute("IsHider") then
                                    -- Clean existing ESP first
                                    for _, z in pairs(v.Character.Head:GetChildren()) do
                                        if z.Name:find("Esp_") then
                                            z:Destroy()
                                        end
                                    end

                                    if _G.EspHighlight and not v.Character.Head:FindFirstChild("Esp_Highlight") then
                                        local Highlight = Instance.new("Highlight")
                                        Highlight.Name = "Esp_Highlight"
                                        Highlight.FillColor = Color3.fromRGB(255, 0, 0)
                                        Highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
                                        Highlight.FillTransparency = 0.5
                                        Highlight.OutlineTransparency = 0
                                        Highlight.Adornee = v.Character
                                        Highlight.Parent = v.Character.Head
                                    end

                                    if _G.EspGui and not v.Character.Head:FindFirstChild("Esp_Gui") then
                                        local BillboardGui = Instance.new("BillboardGui")
                                        BillboardGui.Name = "Esp_Gui"
                                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                                        BillboardGui.StudsOffset = Vector3.new(0, 3, 0)
                                        BillboardGui.AlwaysOnTop = true
                                        BillboardGui.Parent = v.Character.Head

                                        local TextLabel = Instance.new("TextLabel")
                                        TextLabel.Size = UDim2.new(1, 0, 1, 0)
                                        TextLabel.BackgroundTransparency = 1
                                        TextLabel.Text = v.Name .. " (躲藏中)"
                                        TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
                                        TextLabel.TextScaled = true
                                        TextLabel.Font = Enum.Font.SourceSansBold
                                        TextLabel.Parent = BillboardGui

                                        local UIStroke = Instance.new("UIStroke")
                                        UIStroke.Color = Color3.new(0, 0, 0)
                                        UIStroke.Thickness = 1.5
                                        UIStroke.Parent = TextLabel
                                    end
                                end
                            end
                        end
                    end)
                    task.wait(1)
                end
            end)
        else
            -- Clean up all player ESP when disabled
            for i, v in pairs(game.Players:GetChildren()) do
                if v ~= Player and v.Character and v.Character:FindFirstChild("Head") then
                    for _, z in pairs(v.Character.Head:GetChildren()) do
                        if z.Name:find("Esp_") then
                            z:Destroy()
                        end
                    end
                end
            end
        end
    end
})

-- Hide & Seek Teleport Tab
TabHandles.HideSeekTeleport:Button({
    Title = "一键收集全部钥匙",
    Desc = "自动收集钥匙",
    Icon = "key",
    Callback = function()
        if Player:GetAttribute("IsHider") and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
            local OldCFrame = Player.Character.HumanoidRootPart.CFrame
            for _, a in pairs(Workspace.Effects:GetChildren()) do
                if a.Name:find("DroppedKey") and a:FindFirstChild("Handle") then
                    Player.Character.HumanoidRootPart.CFrame = a.Handle.CFrame
                    wait(0.5)
                end
            end
            Player.Character.HumanoidRootPart.CFrame = OldCFrame
            WindUI:Notify({
                Title = "收集完成",
                Content = "已收集全部钥匙",
                Icon = "check",
                Duration = 3
            })
        end
    end
})

TabHandles.HideSeekTeleport:Button({
    Title = "传送到躲藏玩家",
    Desc = "传送到躲藏玩家身边",
    Icon = "eye",
    Callback = function()
        for i, v in pairs(game.Players:GetChildren()) do
            if v ~= Player and v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") then
                if v:GetAttribute("IsHider") and v.Character.Humanoid.Health > 0 then
                    Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                    WindUI:Notify({
                        Title = "传送成功",
                        Content = "已传送到 " .. v.Name,
                        Icon = "move",
                        Duration = 2
                    })
                    break
                end
            end
        end
    end
})

-- Player Movement Tab
TabHandles.Movement:Slider({
    Title = "移动速度",
    Desc = "自定义你的移速",
    Value = { Min = 16, Max = 1000, Default = 50 },
    Callback = function(val)
        _G.Speed = val
        if _G.AutoSpeed and Player.Character:FindFirstChild("Humanoid") then
            Player.Character.Humanoid.WalkSpeed = val
        end
    end
})

TabHandles.Movement:Toggle({
    Title = "开启移速",
    Desc = "变成闪电侠",
    Value = false,
    Callback = function(value)
        _G.AutoSpeed = value
        if value and Player.Character:FindFirstChild("Humanoid") then
            Player.Character.Humanoid.WalkSpeed = _G.Speed or 50
        elseif Player.Character:FindFirstChild("Humanoid") then
            Player.Character.Humanoid.WalkSpeed = 16
        end
    end
})

TabHandles.Movement:Toggle({
    Title = "无限跳",
    Desc = "踏空",
    Value = false,
    Callback = function(value)
        _G.InfiniteJump = value
    end
})

-- Float Feature
TabHandles.Movement:Toggle({
    Title = "锁定高度",
    Desc = "锁定你所在位置高度",
    Value = false,
    Callback = function(value)
        _G.Float = value
        if value then
            FloatConnection = RunService.Heartbeat:Connect(function()
                if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
                    local rootPart = Player.Character.HumanoidRootPart
                    local bodyVelocity = rootPart:FindFirstChild("FloatVelocity")

                    if not bodyVelocity then
                        bodyVelocity = Instance.new("BodyVelocity")
                        bodyVelocity.Name = "FloatVelocity"
                        bodyVelocity.MaxForce = Vector3.new(0, math.huge, 0)
                        bodyVelocity.Velocity = Vector3.new(0, 0, 0)
                        bodyVelocity.Parent = rootPart
                    end
                end
            end)
            WindUI:Notify({
                Title = "锁定高度已开启",
                Content = "已开启",
                Icon = "move",
                Duration = 2
            })
        else
            if FloatConnection then
                FloatConnection:Disconnect()
                FloatConnection = nil
            end
            if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
                local bodyVelocity = Player.Character.HumanoidRootPart:FindFirstChild("FloatVelocity")
                if bodyVelocity then
                    bodyVelocity:Destroy()
                end
            end
            WindUI:Notify({
                Title = "锁定高度已关闭",
                Content = "已关闭",
                Icon = "move",
                Duration = 2
            })
        end
    end
})

-- NoClip Feature
TabHandles.Movement:Toggle({
    Title = "穿墙",
    Desc = "穿墙",
    Value = false,
    Callback = function(value)
        _G.NoClip = value
        if value then
            NoClipConnection = RunService.Stepped:Connect(function()
                if Player.Character then
                    for _, part in pairs(Player.Character:GetDescendants()) do
                        if part:IsA("BasePart") and part.CanCollide then
                            part.CanCollide = false
                        end
                    end
                end
            end)
            WindUI:Notify({
                Title = "穿墙已开启",
                Content = "可自由穿透",
                Icon = "move",
                Duration = 2
            })
        else
            if NoClipConnection then
                NoClipConnection:Disconnect()
                NoClipConnection = nil
            end
            if Player.Character then
                for _, part in pairs(Player.Character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = true
                    end
                end
            end
            WindUI:Notify({
                Title = "穿墙已关闭",
                Content = "穿墙已关闭",
                Icon = "move",
                Duration = 2
            })
        end
    end
})

-- Player Utilities Tab
TabHandles.Utilities:Toggle({
    Title = "自动跳过对话",
    Desc = "自动跳过所有剧情对话",
    Value = false,
    Callback = function(value)
        _G.AutoSkip = value
        if value then
            task.spawn(function()
                while _G.AutoSkip do
                    pcall(function()
                        ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("DialogueRemote"):FireServer("Skipped")
                        ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("TemporaryReachedBindable"):FireServer()
                    end)
                    task.wait(0.8)
                end
            end)
        end
    end
})

TabHandles.Utilities:Toggle({
    Title = "零交互延迟",
    Desc = "去除所有交互按钮的按住时间",
    Value = false,
    Callback = function(value)
        _G.NoCooldownProximity = value
        if value then
            for i, v in pairs(Workspace:GetDescendants()) do
                if v.ClassName == "ProximityPrompt" then
                    v.HoldDuration = 0
                end
            end
            if CooldownProximity then
                CooldownProximity:Disconnect()
            end
            CooldownProximity = Workspace.DescendantAdded:Connect(function(Cooldown)
                if _G.NoCooldownProximity and Cooldown:IsA("ProximityPrompt") then
                    Cooldown.HoldDuration = 0
                end
            end)
        else
            if CooldownProximity then
                CooldownProximity:Disconnect()
                CooldownProximity = nil
            end
        end
    end
})

TabHandles.Utilities:Toggle({
    Title = "性能优化",
    Desc = "降低画质提升帧率",
    Value = false,
    Callback = function(value)
        _G.AntiLag = value
        if value then
            local Terrain = Workspace:FindFirstChildOfClass("Terrain")
            if Terrain then
                Terrain.WaterWaveSize = 0
                Terrain.WaterWaveSpeed = 0
                Terrain.WaterReflectance = 0
                Terrain.WaterTransparency = 1
            end
            game.Lighting.GlobalShadows = false
            game.Lighting.FogEnd = 9e9
            game.Lighting.FogStart = 9e9

            task.spawn(function()
                while _G.AntiLag do
                    pcall(function()
                        for i, v in pairs(Workspace:FindFirstChild("Effects"):GetChildren()) do
                            PartLagDe(v)
                        end
                    end)
                    task.wait(1)
                end
            end)
        end
    end
})

TabHandles.Utilities:Toggle({
    Title = "防被甩飞",
    Desc = "防止被出生甩飞",
    Value = false,
    Callback = function(value)
        _G.AntiFling = value
        while _G.AntiFling do
            pcall(function()
                if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
                    Player.Character.HumanoidRootPart.Anchored = true
                    Player.Character.HumanoidRootPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                    Player.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                    Player.Character.HumanoidRootPart.Anchored = false
                end
            end)
            task.wait(0.1)
        end
    end
})

-- Other Games Tab
TabHandles.OtherGames:Button({
    Title = "一键完成跳绳",
    Desc = "直接传送到跳绳终点",
    Icon = "activity",
    Callback = function()
        pcall(function()
            if Workspace:FindFirstChild("JumpRope") and Workspace.JumpRope:FindFirstChild("Important") then
                local model = Workspace.JumpRope.Important:FindFirstChild("Model")
                if model and model:FindFirstChild("LEGS") then
                    local pos = model.LEGS.Position
                    Player.Character.HumanoidRootPart.CFrame = CFrame.new(pos, pos + Vector3.new(0, 0, -1))
                    WindUI:Notify({
                        Title = "完成",
                        Content = "已通关",
                        Icon = "check",
                        Duration = 3
                    })
                end
            end
        end)
    end
})

TabHandles.OtherGames:Button({
    Title = "玻璃桥透视",
    Desc = "显示玻璃桥安全玻璃",
    Icon = "eye",
    Callback = function()
        pcall(function()
            if Workspace:FindFirstChild("GlassBridge") then
                local GlassHolder = Workspace.GlassBridge:FindFirstChild("GlassHolder")
                if GlassHolder then
                    for i, v in pairs(GlassHolder:GetChildren()) do
                        for k, j in pairs(v:GetChildren()) do
                            if j:IsA("Model") and j.PrimaryPart then
                                local isSafe = not j.PrimaryPart:GetAttribute("exploitingisevil")
                                local Color = isSafe and Color3.fromRGB(28, 235, 87) or Color3.fromRGB(248, 87, 87)
                                j.PrimaryPart.Color = Color
                                j.PrimaryPart.Transparency = 0
                                j.PrimaryPart.Material = Enum.Material.Neon
                            end
                        end
                    end
                    WindUI:Notify({
                        Title = "玻璃桥透视",
                        Content = "已开启",
                        Icon = "eye",
                        Duration = 3
                    })
                end
            end
        end)
    end
})

TabHandles.OtherGames:Button({
    Title = "一键通过玻璃桥",
    Desc = "直接传送到玻璃桥终点",
    Icon = "zap",
    Callback = function()
        pcall(function()
            if Workspace:FindFirstChild("GlassBridge") and Workspace.GlassBridge:FindFirstChild("End") and Workspace.GlassBridge.End.PrimaryPart then
                local pos = Workspace.GlassBridge.End.PrimaryPart.Position + Vector3.new(0, 8, 0)
                Player.Character.HumanoidRootPart.CFrame = CFrame.new(pos, pos + Vector3.new(0, 0, -1))
                WindUI:Notify({
                    Title = "已通关",
                    Content = "已传送到终点",
                    Icon = "check",
                    Duration = 3
                })
            end
        end)
    end
})

TabHandles.OtherGames:Toggle({
    Title = "自动抱团",
    Desc = "自动完成抱团小游戏",
    Value = false,
    Callback = function(value)
        _G.AutoMingle = value
        while _G.AutoMingle do
            pcall(function()
                for i, v in ipairs(Player.Character:GetChildren()) do
                    if v.Name == "RemoteForQTE" then
                        v:FireServer()
                    end
                end
            end)
            task.wait(0.1)
        end
    end
})


-- Final notification
WindUI:Notify({
    Title = "Rb脚本中心-付费版",
    Content = "加载完成",
    Icon = "zap",
    Duration = 5
})
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Rb脚本中心付费版：", 
	Text = "成功", 
	Icon = "rbxassetid://119970903874014" 
})()
