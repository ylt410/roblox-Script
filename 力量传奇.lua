--本脚本可缝合，由猫天帝制作，不要倒卖
local WindUI = loadstring(game:HttpGet("https://cdn.jsdelivr.net/gh/kitten-maomao/cdnUI/WindQW.lua"))()
local VirtualUser = game:GetService("VirtualUser")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

Players.LocalPlayer.Idled:Connect(function()
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

local Window = WindUI:CreateWindow({
    Title = "<font color='#ffffff'><b>洛脚本</b></font>",
    Author = "<font color='#ffffff'><b>洛杉矶制作</b></font>",
    Folder = "洛脚本",
    Size = UDim2.fromOffset(390, 460),
    Transparent = false,
    Theme = "Dark",
    SideBarWidth = 150,
    ScrollBarEnabled = true,
    Background = "",
    BackgroundImageTransparency = 0,
    Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 165, 0)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 192, 203))
    }),
})

Window:EditOpenButton({
    Title = "<font color='#ffffff'><b>洛脚本</b></font>",
    CornerRadius = UDim.new(0, 10),
    StrokeThickness = 2.5,
    Color = ColorSequence.new(Color3.fromRGB(255, 100, 100)),
    Draggable = true,
})

local Tabs = {}
function Tabs:Create(name, icon)
    return Window:Tab({ Title = name, Icon = icon })
end

Tabs.Announce = Tabs:Create("<font color='#ffffff'>公告</font>", "megaphone")
Tabs.Player   = Tabs:Create("<font color='#ffffff'>锻炼</font>", "dumbbell")
Tabs.Kill     = Tabs:Create("<font color='#ffffff'>击杀</font>", "skull")
Tabs.Rock     = Tabs:Create("<font color='#ffffff'>石头</font>", "mountain")
Tabs.Pet      = Tabs:Create("<font color='#ffffff'>宠物</font>", "cat")
Tabs.TP       = Tabs:Create("<font color='#ffffff'>传送</font>", "map-pin")
Tabs.Other    = Tabs:Create("<font color='#ffffff'>其他</font>", "settings")
Tabs.Beautify = Tabs:Create("<font color='#ffffff'>美化包</font>", "palette")
Tabs.Egg      = Tabs:Create("<font color='#ffffff'>食物</font>", "utensils")

Tabs.Announce:Paragraph({
    Title = "<font color='#ffffff'><b>欢迎使用</b></font>",
    Desc = "<font color='#ffffff'><b>洛脚本感谢支持1群:1050237120</b></font>",
    Image = "heart",
    ImageSize = 26,
})
Tabs.Announce:Paragraph({
    Title = "<font color='#ffffff'><b>欢迎使用</b></font>",
    Desc = "<font color='#ffffff'><b>洛脚本感谢支持2群:1077022323</b></font>",
    Image = "heart",
    ImageSize = 26,
})
Tabs.Announce:Paragraph({
    Title = "<font color='#ffffff'><b>欢迎使用</b></font>",
    Desc = "<font color='#ffffff'><b>洛脚本感谢支持3群:1084914478</b></font>",
    Image = "heart",
    ImageSize = 26,
})
Tabs.Announce:Paragraph({
    Title = "<font color='#ffffff'><b>欢迎使用</b></font>",
    Desc = "<font color='#ffffff'><b>洛脚本感谢支持4群:773897729</b></font>",
    Image = "heart",
    ImageSize = 26,
})

do
    local Tab = Tabs.Player
    local workType = ""
    local autowork = false
    local autorebirth = false
    local rebirthTarget = 0
    local rebirthMainThread = nil

    Tab:Dropdown({
        Title = "<font color='#ffffff'><b>选择锻炼类型</b></font>",
        Values = { "哑铃", "倒立", "仰卧起坐", "俯卧撑" },
        Default = "",
        Callback = function(val) workType = val end
    })

    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动锻炼</b></font>",
        Default = false,
        Callback = function(state)
            autowork = state
            if state then
                task.spawn(function()
                    while autowork do
                        pcall(function()
                            local player = Players.LocalPlayer
                            local char = player.Character
                            local backpack = player.Backpack
                            if not char then return end
                            player.muscleEvent:FireServer("rep")
                            local toolName = ""
                            if workType == "哑铃" then toolName = "Weight"
                            elseif workType == "倒立" then toolName = "Handstands"
                            elseif workType == "仰卧起坐" then toolName = "Situps"
                            elseif workType == "俯卧撑" then toolName = "Pushups"
                            end
                            if toolName ~= "" and backpack:FindFirstChild(toolName) then
                                char.Humanoid:EquipTool(backpack[toolName])
                            end
                        end)
                        task.wait()
                    end
                end)
            end
        end
    })

    Tab:Input({
        Title = "<font color='#ffffff'><b>自定义重生次数</b></font>",
        Desc = "<font color='#ffffff'><i>输入大于当前重生次数的数值，开启自动重生后生效</i></font>",
        Placeholder = "输入数值",
        Default = "",
        Callback = function(val) rebirthTarget = tonumber(val) or 0 end
    })

    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动重生</b></font>",
        Default = false,
        Callback = function(state)
            if rebirthMainThread then
                task.cancel(rebirthMainThread)
                rebirthMainThread = nil
            end

            autorebirth = state

            if state then
                rebirthMainThread = task.spawn(function()
                    local player = Players.LocalPlayer
                    while autorebirth do
                        pcall(function()
                            local rebirthRemote = ReplicatedStorage.rEvents.rebirthRemote
                            if rebirthRemote then
                                rebirthRemote:InvokeServer("rebirthRequest")
                                repeat task.wait() until player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                            end
                        end)
                        if rebirthTarget > 0 and player.leaderstats.Rebirths.Value >= rebirthTarget then
                            autorebirth = false
                        end
                        task.wait(0.1) 
                    end
                end)
            end
        end
    })

    Tab:Section({ Title = "<font color='#ffffff'><b>其他器材</b></font>" })

    local treadmillFuncs = {
        { name = "沙滩跑步机10", cf = CFrame.new(238.671112, 5.40315914, 387.713165, -0.0160072874, -2.90710176e-08, -0.99987185, -3.3434191e-09, 1, -2.90212157e-08, 0.99987185, 2.87843993e-09, -0.0160072874) },
        { name = "冰霜健身房跑步机2000", cf = CFrame.new(-3005.37866, 14.3221855, -464.697876, -0.015773816, -1.38508964e-08, 0.999875605, -5.13225586e-08, 1, 1.30429667e-08, -0.999875605, -5.11104332e-08, -0.015773816), minAgility = 2000 },
        { name = "神话健身房跑步机2000", cf = CFrame.new(2571.23706, 15.6896839, 898.650391, 0.999968231, 2.23868635e-09, -0.00797206629, -1.73198844e-09, 1, 6.35660768e-08, 0.00797206629, -6.3550246e-08, 0.999968231), minAgility = 2000 },
        { name = "永恒健身房跑步机3500", cf = CFrame.new(-7077.79102, 29.6702118, -1457.59961, -0.0322036594, -3.31122768e-10, 0.99948132, -6.44344267e-09, 1, 1.23684493e-10, -0.99948132, -6.43611742e-09, -0.0322036594), minAgility = 3500 },
        { name = "传奇健身房跑步机3000", cf = CFrame.new(4370.82812, 999.358704, -3621.42773, -0.960604727, -8.41949266e-09, -0.27791819, -6.12478646e-09, 1, -9.12496567e-09, 0.27791819, -7.06329528e-09, -0.960604727), minAgility = 3000 },
        { name = "丛林健身房跑步机20000", cf = CFrame.new(-8138.67919921875, 28.270538330078125, 2833.511474609375, -0.960604727, -8.41949266e-09, -0.27791819, -6.12478646e-09, 1, -9.12496567e-09, 0.27791819, -7.06329528e-09, -0.960604727), minAgility = 20000 },
    }
    for idx, tm in ipairs(treadmillFuncs) do
        local running = false
        local bindName = "Treadmill_" .. idx
        Tab:Toggle({
            Title = "<font color='#ffffff'><b>" .. tm.name .. "</b></font>",
            Default = false,
            Callback = function(state)
                running = state
                if state then
                    task.spawn(function()
                        local char = Players.LocalPlayer.Character
                        local originalSpeed = 16
                        if char and char:FindFirstChild("Humanoid") then
                            originalSpeed = char.Humanoid.WalkSpeed
                        end
                        while running do
                            pcall(function()
                                char = Players.LocalPlayer.Character
                                if char and char:FindFirstChild("HumanoidRootPart") then
                                    char.Humanoid.WalkSpeed = 10
                                    char.HumanoidRootPart.CFrame = tm.cf
                                    RunService:BindToRenderStep(bindName, Enum.RenderPriority.Character.Value + 1, function()
                                        if char and char:FindFirstChild("Humanoid") then
                                            char.Humanoid:Move(Vector3.new(10000, 0, -1), true)
                                        end
                                    end)
                                end
                            end)
                            task.wait()
                        end
                        RunService:UnbindFromRenderStep(bindName)
                        pcall(function()
                            char = Players.LocalPlayer.Character
                            if char and char:FindFirstChild("Humanoid") then
                                char.Humanoid.WalkSpeed = originalSpeed
                            end
                        end)
                    end)
                else
                    RunService:UnbindFromRenderStep(bindName)
                    pcall(function()
                        local char = Players.LocalPlayer.Character
                        if char and char:FindFirstChild("Humanoid") then
                            char.Humanoid.WalkSpeed = 16
                        end
                    end)
                end
            end
        })
    end

    local squatFuncs = {
        { name = "沙滩深蹲架", cf = CFrame.new(232.627625, 3.67689133, 96.3039856, -0.963445187, -7.78685845e-08, -0.267905563, -7.92865222e-08, 1, -5.52570167e-09, 0.267905563, 1.5917589e-08, -0.963445187) },
        { name = "霜冻健身房深蹲架", cf = CFrame.new(-2629.13818, 3.36860609, -609.827454, -0.995664716, -2.67296816e-08, -0.0930150598, -1.90042453e-08, 1, -8.39415222e-08, 0.0930150598, -8.18099295e-08, -0.995664716) },
        { name = "传奇健身房深蹲架", cf = CFrame.new(4443.04443, 987.521484, -4061.12988, 0.83309716, 3.33018835e-09, 0.553126693, -2.87759438e-09, 1, -1.68654424e-09, -0.553126693, -1.86619012e-10, 0.83309716) },
        { name = "肌肉之王健身房深蹲架", cf = CFrame.new(-8757.37012, 13.2186356, -6051.24365, -0.902269304, 1.63610299e-08, -0.431172907, 1.71076486e-08, 1, 2.14606288e-09, 0.431172907, -5.44002754e-09, -0.902269304) },
        { name = "丛林健身房深蹲架", cf = CFrame.new(-8383.45, 3.43 + 80, 2854.54, -0.902269304, 1.63610299e-08, -0.431172907, 1.71076486e-08, 1, 2.14606288e-09, 0.431172907, -5.44002754e-09, -0.902269304) },
    }
    for idx, sq in ipairs(squatFuncs) do
        local active = false
        Tab:Toggle({
            Title = "<font color='#ffffff'><b>" .. sq.name .. "</b></font>",
            Default = false,
            Callback = function(state)
                active = state
                if state then
                    task.spawn(function()
                        while active do
                            pcall(function()
                                if Players.LocalPlayer.machineInUse.Value == nil then
                                    Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = sq.cf
                                    task.wait(0.00001)
                                    local vim = game:GetService("VirtualInputManager")
                                    vim:SendKeyEvent(true, "E", false, game)
                                    task.wait(0.00001)
                                    vim:SendKeyEvent(false, "E", false, game)
                                else
                                    local A_1 = "rep"
                                    local A_2 = workspace.machinesFolder["Squat Rack"].interactSeat
                                    local Event = Players.LocalPlayer.muscleEvent
                                    Event:FireServer(A_1, A_2)
                                end
                            end)
                            task.wait()
                        end
                    end)
                else
                    pcall(function()
                        local char = Players.LocalPlayer.Character
                        if char then char:WaitForChild("Humanoid").Jump = true end
                    end)
                end
            end
        })
    end

    local pullupFuncs = {
        { name = "沙滩引体向上", cf = CFrame.new(-185.157745, 5.81071186, 104.747154, 0.227061391, -8.2363325e-09, 0.97388047, 5.58502826e-08, 1, -4.56432803e-09, -0.97388047, 5.54278827e-08, 0.227061391) },
        { name = "神话健身房引体向上", cf = CFrame.new(2315.82104, 5.81071281, 847.153076, 0.993555248, 6.99809632e-08, 0.113349125, -7.05298859e-08, 1, 8.32554692e-10, -0.113349125, -8.82168916e-09, 0.993555248) },
    }
    for idx, pu in ipairs(pullupFuncs) do
        local active = false
        Tab:Toggle({
            Title = "<font color='#ffffff'><b>" .. pu.name .. "</b></font>",
            Default = false,
            Callback = function(state)
                active = state
                if state then
                    task.spawn(function()
                        while active do
                            pcall(function()
                                if Players.LocalPlayer.machineInUse.Value == nil then
                                    Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = pu.cf
                                    task.wait(0.00001)
                                    local vim = game:GetService("VirtualInputManager")
                                    vim:SendKeyEvent(true, "E", false, game)
                                    task.wait(0.00001)
                                    vim:SendKeyEvent(false, "E", false, game)
                                else
                                    local A_1 = "rep"
                                    local A_2 = workspace.machinesFolder["Legends Pullup"].interactSeat
                                    local Event = Players.LocalPlayer.muscleEvent
                                    Event:FireServer(A_1, A_2)
                                end
                            end)
                            task.wait(0.00001)
                        end
                    end)
                else
                    pcall(function()
                        local char = Players.LocalPlayer.Character
                        if char then char:WaitForChild("Humanoid").Jump = true end
                    end)
                end
            end
        })
    end

    local throwFuncs = {
        { name = "沙滩投掷石", cf = CFrame.new(-91.6730804, 3.67689133, -292.42868, -0.221022144, -2.21041621e-08, -0.975268781, 1.21414407e-08, 1, -2.54162646e-08, 0.975268781, -1.7458726e-08, -0.221022144) },
        { name = "神话健身房投掷石", cf = CFrame.new(2486.01733, 3.67689276, 1237.89331, 0.883595645, -2.06135038e-08, -0.468250751, -3.3286871e-09, 1, -5.03036404e-08, 0.468250751, 4.60067362e-08, 0.883595645) },
        { name = "传奇健身房投掷石", cf = CFrame.new(4189.96143, 987.829773, -3903.0166, 0.422592968, 0, 0.906319559, 0, 1, 0, -0.906319559, 0, 0.422592968) },
        { name = "肌肉之王投掷石", cf = CFrame.new(-8935.4384765625, 13.855730056762695, -5693.66748046875) },
        { name = "丛林健身房投掷石", cf = CFrame.new(-8620.99, 89.81, 2673.54, -0.902269304, 1.63610299e-08, -0.431172907, 1.71076486e-08, 1, 2.14606288e-09, 0.431172907, -5.44002754e-09, -0.902269304) },
    }
    for idx, th in ipairs(throwFuncs) do
        local active = false
        Tab:Toggle({
            Title = "<font color='#ffffff'><b>" .. th.name .. "</b></font>",
            Default = false,
            Callback = function(state)
                active = state
                if state then
                    task.spawn(function()
                        while active do
                            pcall(function()
                                if Players.LocalPlayer.machineInUse.Value == nil then
                                    Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = th.cf
                                    task.wait(0.0001)
                                    local vim = game:GetService("VirtualInputManager")
                                    vim:SendKeyEvent(true, "E", false, game)
                                    task.wait(0.0001)
                                    vim:SendKeyEvent(false, "E", false, game)
                                else
                                    local A_1 = "rep"
                                    local A_2 = workspace.machinesFolder.Deadlift.interactSeat
                                    local Event = Players.LocalPlayer.muscleEvent
                                    Event:FireServer(A_1, A_2)
                                end
                            end)
                            task.wait()
                        end
                    end)
                else
                    pcall(function()
                        local char = Players.LocalPlayer.Character
                        if char then char:WaitForChild("Humanoid").Jump = true end
                    end)
                end
            end
        })
    end

    Tab:Section({ Title = "<font color='#ffffff'><b>七包以上专属功能</b></font>" })

    local requiredStrength = 0
    local statusParagraph = Tab:Paragraph({
        Title = "<font color='#ffffff'><b>宠物数据</b></font>",
        Desc = "<font color='#ffffff'>加载中...</font>",
        Image = "info",
    })
    task.spawn(function()
        while true do
            pcall(function()
                local player = Players.LocalPlayer
                local rebirths = player.leaderstats.Rebirths.Value
                requiredStrength = 1000 + 5000 * rebirths / 2
                local currentPet = "无"
                local equipped = player:FindFirstChild("equippedPets")
                if equipped and equipped:FindFirstChild("pet1") then
                    currentPet = equipped.pet1.Value
                end
                statusParagraph:SetDesc(string.format("<font color='#ffffff'><b>重生所需力量: %.1f\n当前装备宠物: %s</b></font>", requiredStrength, tostring(currentPet)))
            end)
            task.wait(1)
        end
    end)

    local autoqie1 = false
    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动切换宠物1（力量足时换部落霸主）</b></font>",
        Default = false,
        Callback = function(s)
            autoqie1 = s
            if s then
                task.spawn(function()
                    while autoqie1 do
                        task.wait(0.3)
                        pcall(function()
                            local player = Players.LocalPlayer
                            local petsFolder = player:FindFirstChild("petsFolder")
                            if not petsFolder then return end
                            local unique = petsFolder:FindFirstChild("Unique")
                            if not unique then return end
                            local tribal, swift = nil, nil
                            for _, pet in ipairs(unique:GetChildren()) do
                                if pet.Name == "Tribal Overlord" then tribal = pet
                                elseif pet.Name == "Swift Samurai" then swift = pet
                                end
                            end
                            if tribal and swift and requiredStrength <= player.leaderstats.Strength.Value then
                                local equipped = player:FindFirstChild("equippedPets")
                                if equipped and equipped.pet1.Value == swift then
                                    ReplicatedStorage.rEvents.equipPetEvent:FireServer("unequipPet", swift)
                                end
                                ReplicatedStorage.rEvents.equipPetEvent:FireServer("equipPet", tribal)
                            end
                        end)
                    end
                end)
            end
        end
    })

    local autoqie2 = false
    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动切换宠物2（力量不足时换迅捷武士）</b></font>",
        Default = false,
        Callback = function(s)
            autoqie2 = s
            if s then
                task.spawn(function()
                    while autoqie2 do
                        task.wait(0.3)
                        pcall(function()
                            local player = Players.LocalPlayer
                            local petsFolder = player:FindFirstChild("petsFolder")
                            if not petsFolder then return end
                            local unique = petsFolder:FindFirstChild("Unique")
                            if not unique then return end
                            local tribal, swift = nil, nil
                            for _, pet in ipairs(unique:GetChildren()) do
                                if pet.Name == "Tribal Overlord" then tribal = pet
                                elseif pet.Name == "Swift Samurai" then swift = pet
                                end
                            end
                            if tribal and swift and player.leaderstats.Strength.Value < requiredStrength then
                                local equipped = player:FindFirstChild("equippedPets")
                                if equipped and equipped.pet1.Value == tribal then
                                    ReplicatedStorage.rEvents.equipPetEvent:FireServer("unequipPet", tribal)
                                end
                                ReplicatedStorage.rEvents.equipPetEvent:FireServer("equipPet", swift)
                            end
                        end)
                    end
                end)
            end
        end
    })

    local smartRebirth = false
    Tab:Toggle({
        Title = "<font color='#ffffff'><b>智能重生（仅装备部落霸主时）</b></font>",
        Default = false,
        Callback = function(s)
            smartRebirth = s
            if s then
                task.spawn(function()
                    while smartRebirth do
                        task.wait()
                        pcall(function()
                            local player = Players.LocalPlayer
                            local equipped = player:FindFirstChild("equippedPets")
                            if equipped and equipped.pet1 and equipped.pet1.Value == "Tribal Overlord" then
                                ReplicatedStorage.rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                            end
                        end)
                    end
                end)
            end
        end
    })

    local fastFarmRebirth = false
    Tab:Toggle({
        Title = "<font color='#ffffff'><b>快速锻炼（练重生专用）</b></font>",
        Default = false,
        Callback = function(s)
            fastFarmRebirth = s
            if s then
                task.spawn(function()
                    while fastFarmRebirth do
                        task.wait()
                        pcall(function()
                            for i = 1, 7 do
                                Players.LocalPlayer.muscleEvent:FireServer("rep")
                            end
                        end)
                    end
                end)
            end
        end
    })

    local fastFarmStrength = false
    Tab:Toggle({
        Title = "<font color='#ffffff'><b>快速锻炼（练力量专用）</b></font>",
        Default = false,
        Callback = function(s)
            fastFarmStrength = s
            if s then
                task.spawn(function()
                    while fastFarmStrength do
                        task.wait()
                        pcall(function()
                            for i = 1, 15 do
                                Players.LocalPlayer.muscleEvent:FireServer("rep")
                            end
                        end)
                    end
                end)
            end
        end
    })

    local autoEatEgg = false
    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动吃蛋白蛋</b></font>",
        Default = false,
        Callback = function(s)
            autoEatEgg = s
            if s then
                task.spawn(function()
                    while autoEatEgg do
                        task.wait()
                        pcall(function()
                            local player = Players.LocalPlayer
                            if player:FindFirstChild("boostTimersFolder") and not player.boostTimersFolder:FindFirstChild("Protein Egg") then
                                local egg = player.Backpack:FindFirstChild("Protein Egg")
                                if egg and player.Character then
                                    player.Character.Humanoid:EquipTool(egg)
                                end
                            end
                        end)
                    end
                end)
            end
        end
    })

    local clearEffects = false
    Tab:Toggle({
        Title = "<font color='#ffffff'><b>清除特效</b></font>",
        Default = false,
        Callback = function(s)
            clearEffects = s
            if s then
                task.spawn(function()
                    while clearEffects do
                        task.wait()
                        pcall(function()
                            local rep = ReplicatedStorage
                            if rep:FindFirstChild("strengthFrame") then rep.strengthFrame:Destroy() end
                            if rep:FindFirstChild("durabilityFrame") then rep.durabilityFrame:Destroy() end
                            if rep:FindFirstChild("agilityFrame") then rep.agilityFrame:Destroy() end
                            local char = Players.LocalPlayer.Character
                            if char then
                                if char:FindFirstChild("sweatPart") then char.sweatPart:Destroy() end
                                if char:FindFirstChild("airPart") then char.airPart:Destroy() end
                            end
                        end)
                    end
                end)
            end
        end
    })
end

do
    local Tab = Tabs.Kill
    local autokill = false
    local lockkill = false
    local autoPunchKill = false
    local whitelist = {}
    local blacklist = {}

    local function getPlayerNames()
        local n = {}
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= Players.LocalPlayer then table.insert(n, p.Name) end
        end
        return n
    end

    local whitelistDropdown = Tab:Dropdown({
        Title = "<font color='#ffffff'><b>白名单</b></font>",
        Values = getPlayerNames(),
        Default = {},
        Multi = true,
        AllowNone = true,
        Callback = function(s)
            whitelist = {}
            for _, v in ipairs(s) do whitelist[v] = true end
        end
    })

    local blacklistDropdown = Tab:Dropdown({
        Title = "<font color='#ffffff'><b>黑名单</b></font>",
        Values = getPlayerNames(),
        Default = {},
        Multi = true,
        AllowNone = true,
        Callback = function(s)
            blacklist = {}
            for _, v in ipairs(s) do blacklist[v] = true end
        end
    })

    Tab:Button({
        Title = "<font color='#ffffff'><b>刷新名单</b></font>",
        Callback = function()
            local names = getPlayerNames()
            if whitelistDropdown.SetValues then whitelistDropdown:SetValues(names) end
            if blacklistDropdown.SetValues then blacklistDropdown:SetValues(names) end
            whitelist = {}
            blacklist = {}
        end
    })

    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动击杀全部</b></font>",
        Default = false,
        Callback = function(s)
            autokill = s
            if s then
                task.spawn(function()
                    while autokill do
                        for _, plr in ipairs(Players:GetPlayers()) do
                            if plr ~= Players.LocalPlayer and not whitelist[plr.Name] then
                                pcall(function()
                                    local char = plr.Character
                                    local myChar = Players.LocalPlayer.Character
                                    if char and myChar then
                                        local punch = Players.LocalPlayer.Backpack:FindFirstChild("Punch")
                                        if punch and myChar:FindFirstChild("Humanoid") then
                                            myChar.Humanoid:EquipTool(punch)
                                            punch:Activate()
                                        end
                                        local head = char:FindFirstChild("Head")
                                        local hand = myChar:FindFirstChild("LeftHand")
                                        if head and hand then
                                            firetouchinterest(head, hand, 0)
                                            task.wait(0.01)
                                            firetouchinterest(head, hand, 1)
                                        end
                                    end
                                end)
                            end
                        end
                        task.wait(0.1)
                    end
                end)
            end
        end
    })

    Tab:Toggle({
        Title = "<font color='#ffffff'><b>锁定击杀玩家</b></font>",
        Default = false,
        Callback = function(s)
            lockkill = s
            if s then
                task.spawn(function()
                    while lockkill do
                        for name in pairs(blacklist) do
                            local target = Players:FindFirstChild(name)
                            if target and target.Character and target.Character:FindFirstChild("Head") then
                                pcall(function()
                                    local myChar = Players.LocalPlayer.Character
                                    if myChar then
                                        target.Character.Head.Anchored = true
                                        target.Character.Head.CanCollide = false
                                        if target.Character.Head:FindFirstChild("Neck") then
                                            target.Character.Head.Neck:Destroy()
                                        end
                                        Players.LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
                                        Players.LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
                                        target.Character.Head.Position = myChar.LeftHand.Position
                                    end
                                end)
                            end
                        end
                        task.wait(1)
                    end
                end)
            end
        end
    })

    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动挥拳</b></font>",
        Default = false,
        Callback = function(s)
            autoPunchKill = s
            if s then
                task.spawn(function()
                    while autoPunchKill do
                        pcall(function()
                            Players.LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
                            local punch = Players.LocalPlayer.Backpack:FindFirstChild("Punch")
                            if punch then
                                Players.LocalPlayer.Character.Humanoid:EquipTool(punch)
                            end
                        end)
                        task.wait()
                    end
                end)
            end
        end
    })
end

do
    local Tab = Tabs.Rock
    local rockAuto = false
    local rockTeleport = false
    local punstone = false
    local lockPosition = false
    local lockPosCF = nil
    local rockValue = "Frozen Rock"
    local rockCoords = {
        ["Tiny Rock"]            = CFrame.new(18.3364983, 8.35296726, 2094.66919, -0.99168855, -4.91053509e-09, 0.128661588, 7.92791877e-09, 1, 9.92725262e-08, -0.128661588, 9.94674494e-08, -0.99168855),
        ["Punching Rock"]        = CFrame.new(-143.737717, 9.90110397, 411.335052, -0.853666067, -5.99174088e-09, 0.520820737, -2.59418065e-09, 1, 7.25235516e-09, -0.520820737, 4.83998663e-09, -0.853666067),
        ["Large Rock"]           = CFrame.new(154.747818, 7.88098717, -142.160736, 0.481531382, -2.43787195e-08, -0.876428843, 5.29307131e-09, 1, -2.49078287e-08, 0.876428843, 7.35490069e-09, 0.481531382),
        ["Golden Rock"]          = CFrame.new(282.408081, 7.87989855, -584.291626, 0.224781081, -2.54717989e-08, -0.974409282, -1.42170977e-08, 1, -2.94204217e-08, 0.974409282, 2.04664268e-08, 0.224781081),
        ["Frozen Rock"]          = CFrame.new(-2577.71313, 7.88099527, -275.236755, -0.886139214, 4.64060044e-08, -0.463419169, 4.32736194e-08, 1, 1.73915016e-08, 0.463419169, -4.64253302e-09, -0.886139214),
        ["Mystic Rock"]          = CFrame.new(2218.36011, 7.88099527, 1221.01685, -0.432565987, 4.75892392e-08, 0.901602268, 3.94557897e-09, 1, -5.08899731e-08, -0.901602268, -1.84559283e-08, -0.432565987),
        ["Inferno Rock"]         = CFrame.new(-7234.49854, 9.87342453, -1231.04211, 0.927281976, -6.72599256e-08, 0.374363571, 8.28478477e-08, 1, -2.55457167e-08, -0.374363571, 5.47032997e-08, 0.927281976),
        ["Rock Of Legends"]      = CFrame.new(4190.45361, 992.089294, -4067.81006, 0.515822232, -2.23924328e-08, 0.856695652, 2.45682301e-08, 1, 1.13454446e-08, -0.856695652, 1.51952637e-08, 0.515822232),
        ["Muscle King Mountain"] = CFrame.new(-9033.59277, 9.75098991, -6032.83203, 0.344087869, -4.16915036e-08, -0.938937426, -1.90252329e-08, 1, -5.13749434e-08, 0.938937426, 3.55409995e-08, 0.344087869),
        ["Ancient Jungle Rock"]  = CFrame.new(-7690.3667, 7.35999966, 2861.073, -0.425252706, 7.86523628e-08, -0.905074656, -7.56427898e-09, 1, 9.04556217e-08, 0.905074656, 4.53127349e-08, -0.425252706),
    }

    Tab:Dropdown({
        Title = "<font color='#ffffff'><b>选择石头</b></font>",
        Values = { "小号岩石", "拳击岩石", "大号岩石", "金色岩石", "冰晶石头", "神话岩石", "炼狱石头", "传奇之岩", "肌肉之王山", "古代丛林岩石" },
        Default = "冰晶石头",
        Callback = function(val)
            local map = {
                ["小号岩石"] = "Tiny Rock", ["拳击岩石"] = "Punching Rock", ["大号岩石"] = "Large Rock",
                ["金色岩石"] = "Golden Rock", ["冰晶石头"] = "Frozen Rock", ["神话岩石"] = "Mystic Rock",
                ["炼狱石头"] = "Inferno Rock", ["传奇之岩"] = "Rock Of Legends",
                ["肌肉之王山"] = "Muscle King Mountain", ["古代丛林岩石"] = "Ancient Jungle Rock"
            }
            rockValue = map[val]
        end
    })

    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动打石头</b></font>",
        Default = false,
        Callback = function(s)
            rockAuto = s
            if s then
                task.spawn(function()
                    while rockAuto do
                        pcall(function()
                            if rockTeleport then
                                local char = Players.LocalPlayer.Character
                                if char and char:FindFirstChild("HumanoidRootPart") then
                                    local targetCF = rockCoords[rockValue]
                                    if targetCF then
                                        char.HumanoidRootPart.CFrame = targetCF
                                        task.wait(0.3)
                                    end
                                end
                            end
                            local rockFolder = workspace:FindFirstChild("machinesFolder")
                            if rockFolder then
                                local rock = rockFolder:FindFirstChild(rockValue)
                                if rock and rock:FindFirstChild("Rock") then
                                    local rockPart = rock.Rock
                                    local hand = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("LeftHand")
                                    if hand then
                                        firetouchinterest(rockPart, hand, 0)
                                        task.wait(0.01)
                                        firetouchinterest(rockPart, hand, 1)
                                    end
                                end
                            end
                        end)
                        task.wait()
                    end
                end)
            else
                pcall(function()
                    local char = Players.LocalPlayer.Character
                    if char and char:FindFirstChild("Humanoid") then
                        char.Humanoid.AutoRotate = true
                    end
                end)
            end
        end
    })

    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动传送打石头</b></font>",
        Desc = "<font color='#ffffff'><i>开启后自动传送到石头预设坐标</i></font>",
        Default = false,
        Callback = function(s) rockTeleport = s end
    })

    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动挥拳</b></font>",
        Default = false,
        Callback = function(s)
            punstone = s
            if s then
                task.spawn(function()
                    while punstone do
                        pcall(function()
                            Players.LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
                            local punch = Players.LocalPlayer.Backpack:FindFirstChild("Punch")
                            if punch then
                                Players.LocalPlayer.Character.Humanoid:EquipTool(punch)
                            end
                        end)
                        task.wait()
                    end
                end)
            end
        end
    })

    Tab:Toggle({
        Title = "<font color='#ffffff'><b>固定位置</b></font>",
        Default = false,
        Callback = function(s)
            lockPosition = s
            local player = Players.LocalPlayer
            local char = player.Character or player.CharacterAdded:Wait()
            local root = char:WaitForChild("HumanoidRootPart")
            if s then
                lockPosCF = root.CFrame
                task.spawn(function()
                    while lockPosition do
                        root.CFrame = lockPosCF
                        task.wait()
                    end
                end)
            end
        end
    })
end

do
    local Tab = Tabs.Pet

    Tab:Section({ Title = "<font color='#ffffff'><b>丛林水晶</b></font>" })
    local petP = "Neon Guardian"
    local buyP = false
    local evoP = false
    Tab:Dropdown({
        Title = "<font color='#ffffff'><b>宠物</b></font>",
        Values = { "霓虹守护者", "爆破", "肌肉老师", "永恒超级打击光环", "超新星光环", "金色维京人" },
        Default = "霓虹守护者",
        Callback = function(v)
            if v == "霓虹守护者" then petP = "Neon Guardian"
            elseif v == "爆破" then petP = "Entropic Blast"
            elseif v == "肌肉老师" then petP = "Muscle Sensei"
            elseif v == "永恒超级打击光环" then petP = "Eternal Megastrike"
            elseif v == "超新星光环" then petP = "Grand Supernova"
            elseif v == "金色维京人" then petP = "Golden Viking"
            end
        end
    })
    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动购买</b></font>",
        Default = false,
        Callback = function(s)
            buyP = s
            if s then
                task.spawn(function()
                    while buyP do
                        pcall(function()
                            local p = ReplicatedStorage.cPetShopFolder:FindFirstChild(petP)
                            if p then ReplicatedStorage.cPetShopRemote:InvokeServer(p) end
                        end)
                        task.wait()
                    end
                end)
            end
        end
    })
    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动进化当前选中宠物</b></font>",
        Default = false,
        Callback = function(s)
            evoP = s
            if s then
                task.spawn(function()
                    while evoP do
                        task.wait()
                        pcall(function()
                            local player = Players.LocalPlayer
                            local powerUp = player:FindFirstChild("powerUpsFolder") and player.powerUpsFolder:FindFirstChild("Unique") and player.powerUpsFolder.Unique:FindFirstChild(petP)
                            if powerUp then
                                if ReplicatedStorage.rEvents:FindFirstChild("evolvePowerUpEvent") then
                                    ReplicatedStorage.rEvents.evolvePowerUpEvent:FireServer("evolvePowerUp", powerUp)
                                end
                            else
                                if ReplicatedStorage.rEvents:FindFirstChild("petEvolveEvent") then
                                    ReplicatedStorage.rEvents.petEvolveEvent:FireServer("evolvePet", petP)
                                end
                            end
                        end)
                    end
                end)
            end
        end
    })

    Tab:Section({ Title = "<font color='#ffffff'><b>银河甲骨文水晶</b></font>" })
    local pet = "Muscle King"
    local buyPet = false
    local evoPet = false
    Tab:Dropdown({
        Title = "<font color='#ffffff'><b>宠物</b></font>",
        Values = { "肌肉之王", "暗星", "闪电幻影", "永恒打击利维坦", "蓝苔原光环", "超能炼狱光环" },
        Default = "肌肉之王",
        Callback = function(v)
            if v == "肌肉之王" then pet = "Muscle King"
            elseif v == "暗星" then pet = "Darkstar Hunter"
            elseif v == "闪电幻影" then pet = "Lightning Strike Phantom"
            elseif v == "永恒打击利维坦" then pet = "Eternal Strike Leviathan"
            elseif v == "蓝苔原光环" then pet = "Azure Tundra"
            elseif v == "超能炼狱光环" then pet = "Ultra Inferno"
            end
        end
    })
    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动购买</b></font>",
        Default = false,
        Callback = function(s)
            buyPet = s
            if s then
                task.spawn(function()
                    while buyPet do
                        pcall(function()
                            local p = ReplicatedStorage.cPetShopFolder:FindFirstChild(pet)
                            if p then ReplicatedStorage.cPetShopRemote:InvokeServer(p) end
                        end)
                        task.wait()
                    end
                end)
            end
        end
    })
    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动进化当前选中宠物</b></font>",
        Default = false,
        Callback = function(s)
            evoPet = s
            if s then
                task.spawn(function()
                    while evoPet do
                        task.wait()
                        pcall(function()
                            local player = Players.LocalPlayer
                            local powerUp = player:FindFirstChild("powerUpsFolder") and player.powerUpsFolder:FindFirstChild("Unique") and player.powerUpsFolder.Unique:FindFirstChild(pet)
                            if powerUp then
                                if ReplicatedStorage.rEvents:FindFirstChild("evolvePowerUpEvent") then
                                    ReplicatedStorage.rEvents.evolvePowerUpEvent:FireServer("evolvePowerUp", powerUp)
                                end
                            else
                                if ReplicatedStorage.rEvents:FindFirstChild("petEvolveEvent") then
                                    ReplicatedStorage.rEvents.petEvolveEvent:FireServer("evolvePet", pet)
                                end
                            end
                        end)
                    end
                end)
            end
        end
    })

    local function addPetEvolutionToggle(tab, petVar, evoVar)
        tab:Toggle({
            Title = "<font color='#ffffff'><b>自动进化当前选中宠物</b></font>",
            Default = false,
            Callback = function(s)
                evoVar = s
                if s then
                    task.spawn(function()
                        while evoVar do
                            task.wait()
                            pcall(function()
                                local player = Players.LocalPlayer
                                local powerUp = player:FindFirstChild("powerUpsFolder") and player.powerUpsFolder:FindFirstChild("Unique") and player.powerUpsFolder.Unique:FindFirstChild(petVar)
                                if powerUp then
                                    if ReplicatedStorage.rEvents:FindFirstChild("evolvePowerUpEvent") then
                                        ReplicatedStorage.rEvents.evolvePowerUpEvent:FireServer("evolvePowerUp", powerUp)
                                    end
                                else
                                    if ReplicatedStorage.rEvents:FindFirstChild("petEvolveEvent") then
                                        ReplicatedStorage.rEvents.petEvolveEvent:FireServer("evolvePet", petVar)
                                    end
                                end
                            end)
                        end
                    end)
                end
            end
        })
    end

    Tab:Section({ Title = "<font color='#ffffff'><b>能量精英水晶</b></font>" })
    local petO = "Cybernetic Showdown Dragon"
    local buyO = false
    local evoO = false
    Tab:Dropdown({
        Title = "<font color='#ffffff'><b>宠物</b></font>",
        Values = { "赛博龙", "以太仙灵小兔", "极新星飞马", "暗蝎尾怪传奇", "影创世龙", "霜波传奇企鹅" },
        Default = "赛博龙",
        Callback = function(v)
            if v == "赛博龙" then petO = "Cybernetic Showdown Dragon"
            elseif v == "以太仙灵小兔" then petO = "Aether Spirit Bunny"
            elseif v == "极新星飞马" then petO = "Ultimate Supernova Pegasus"
            elseif v == "暗蝎尾怪传奇" then petO = "Dark Legends Manticore"
            elseif v == "影创世龙" then petO = "Phantom Genesis Dragon"
            elseif v == "霜波传奇企鹅" then petO = "Frostwave Legends Penguin"
            end
        end
    })
    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动购买</b></font>",
        Default = false,
        Callback = function(s)
            buyO = s
            if s then
                task.spawn(function()
                    while buyO do
                        pcall(function()
                            local p = ReplicatedStorage.cPetShopFolder:FindFirstChild(petO)
                            if p then ReplicatedStorage.cPetShopRemote:InvokeServer(p) end
                        end)
                        task.wait()
                    end
                end)
            end
        end
    })
    addPetEvolutionToggle(Tab, petO, evoO)

    Tab:Section({ Title = "<font color='#ffffff'><b>传奇水晶</b></font>" })
    local petA = "Ultra Birdie"
    local buyA = false
    local evoA = false
    Tab:Dropdown({
        Title = "<font color='#ffffff'><b>宠物</b></font>",
        Values = { "超级小鸟", "魔法蝴蝶", "白色凤凰", "绿色释火者" },
        Default = "超级小鸟",
        Callback = function(v)
            if v == "超级小鸟" then petA = "Ultra Birdie"
            elseif v == "魔法蝴蝶" then petA = "Magic Butterfly"
            elseif v == "白色凤凰" then petA = "White Pheonix"
            elseif v == "绿色释火者" then petA = "Green Firecaster"
            end
        end
    })
    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动购买</b></font>",
        Default = false,
        Callback = function(s)
            buyA = s
            if s then
                task.spawn(function()
                    while buyA do
                        pcall(function()
                            local p = ReplicatedStorage.cPetShopFolder:FindFirstChild(petA)
                            if p then ReplicatedStorage.cPetShopRemote:InvokeServer(p) end
                        end)
                        task.wait()
                    end
                end)
            end
        end
    })
    addPetEvolutionToggle(Tab, petA, evoA)

    Tab:Section({ Title = "<font color='#ffffff'><b>狱火水晶</b></font>" })
    local petD = "Infernal Dragon"
    local buyD = false
    local evoD = false
    Tab:Dropdown({
        Title = "<font color='#ffffff'><b>宠物</b></font>",
        Values = { "狱火龙", "金色凤凰", "白色飞马", "红色释火者" },
        Default = "狱火龙",
        Callback = function(v)
            if v == "狱火龙" then petD = "Infernal Dragon"
            elseif v == "金色凤凰" then petD = "Golden Pheonix"
            elseif v == "白色飞马" then petD = "White Pegasus"
            elseif v == "红色释火者" then petD = "Red Firecaster"
            end
        end
    })
    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动购买</b></font>",
        Default = false,
        Callback = function(s)
            buyD = s
            if s then
                task.spawn(function()
                    while buyD do
                        pcall(function()
                            local p = ReplicatedStorage.cPetShopFolder:FindFirstChild(petD)
                            if p then ReplicatedStorage.cPetShopRemote:InvokeServer(p) end
                        end)
                        task.wait()
                    end
                end)
            end
        end
    })
    addPetEvolutionToggle(Tab, petD, evoD)

    Tab:Section({ Title = "<font color='#ffffff'><b>神话水晶</b></font>" })
    local petE = "Golden Pheonix"
    local buyE = false
    local evoE = false
    Tab:Dropdown({
        Title = "<font color='#ffffff'><b>宠物</b></font>",
        Values = { "金色凤凰", "蓝色释火者", "紫色猎鹰", "红色龙" },
        Default = "金色凤凰",
        Callback = function(v)
            if v == "金色凤凰" then petE = "Golden Pheonix"
            elseif v == "蓝色释火者" then petE = "Blue Firecaster"
            elseif v == "紫色猎鹰" then petE = "Purple Falcon"
            elseif v == "红色龙" then petE = "Red Dragon"
            end
        end
    })
    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动购买</b></font>",
        Default = false,
        Callback = function(s)
            buyE = s
            if s then
                task.spawn(function()
                    while buyE do
                        pcall(function()
                            local p = ReplicatedStorage.cPetShopFolder:FindFirstChild(petE)
                            if p then ReplicatedStorage.cPetShopRemote:InvokeServer(p) end
                        end)
                        task.wait()
                    end
                end)
            end
        end
    })
    addPetEvolutionToggle(Tab, petE, evoE)

    Tab:Section({ Title = "<font color='#ffffff'><b>霜水晶</b></font>" })
    local petPi = "Blue Pheonix"
    local buyPi = false
    local evoPi = false
    Tab:Dropdown({
        Title = "<font color='#ffffff'><b>宠物</b></font>",
        Values = { "蓝色凤凰", "橙色飞马", "紫色龙", "黄色蝴蝶" },
        Default = "蓝色凤凰",
        Callback = function(v)
            if v == "蓝色凤凰" then petPi = "Blue Pheonix"
            elseif v == "橙色飞马" then petPi = "Orange Pegasus"
            elseif v == "紫色龙" then petPi = "Purple Dragon"
            elseif v == "黄色蝴蝶" then petPi = "Yellow Butterfly"
            end
        end
    })
    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动购买</b></font>",
        Default = false,
        Callback = function(s)
            buyPi = s
            if s then
                task.spawn(function()
                    while buyPi do
                        pcall(function()
                            local p = ReplicatedStorage.cPetShopFolder:FindFirstChild(petPi)
                            if p then ReplicatedStorage.cPetShopRemote:InvokeServer(p) end
                        end)
                        task.wait()
                    end
                end)
            end
        end
    })
    addPetEvolutionToggle(Tab, petPi, evoPi)

    Tab:Section({ Title = "<font color='#ffffff'><b>绿色水晶</b></font>" })
    local petU = "Crimson Falcon"
    local buyU = false
    local evoU = false
    Tab:Dropdown({
        Title = "<font color='#ffffff'><b>宠物</b></font>",
        Values = { "红色猎鹰", "绿色蝴蝶", "暗魔像", "银色小狗" },
        Default = "红色猎鹰",
        Callback = function(v)
            if v == "红色猎鹰" then petU = "Crimson Falcon"
            elseif v == "绿色蝴蝶" then petU = "Green Butterfly"
            elseif v == "暗魔像" then petU = "Dark Golem"
            elseif v == "银色小狗" then petU = "Silver Dog"
            end
        end
    })
    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动购买</b></font>",
        Default = false,
        Callback = function(s)
            buyU = s
            if s then
                task.spawn(function()
                    while buyU do
                        pcall(function()
                            local p = ReplicatedStorage.cPetShopFolder:FindFirstChild(petU)
                            if p then ReplicatedStorage.cPetShopRemote:InvokeServer(p) end
                        end)
                        task.wait()
                    end
                end)
            end
        end
    })
    addPetEvolutionToggle(Tab, petU, evoU)

    Tab:Section({ Title = "<font color='#ffffff'><b>蓝色水晶</b></font>" })
    local petQ = "Dark Vampy"
    local buyQ = false
    local evoQ = false
    Tab:Dropdown({
        Title = "<font color='#ffffff'><b>宠物</b></font>",
        Values = { "暗德古拉", "蓝色小兔", "红色小猫", "蓝色小鸟", "橙色刺猬" },
        Default = "暗德古拉",
        Callback = function(v)
            if v == "暗德古拉" then petQ = "Dark Vampy"
            elseif v == "蓝色小兔" then petQ = "Blue Bunny"
            elseif v == "红色小猫" then petQ = "Red Kitty"
            elseif v == "蓝色小鸟" then petQ = "Blue Birdie"
            elseif v == "橙色刺猬" then petQ = "Orange Hedgehog"
            end
        end
    })
    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动购买</b></font>",
        Default = false,
        Callback = function(s)
            buyQ = s
            if s then
                task.spawn(function()
                    while buyQ do
                        pcall(function()
                            local p = ReplicatedStorage.cPetShopFolder:FindFirstChild(petQ)
                            if p then ReplicatedStorage.cPetShopRemote:InvokeServer(p) end
                        end)
                        task.wait()
                    end
                end)
            end
        end
    })
    addPetEvolutionToggle(Tab, petQ, evoQ)

    Tab:Paragraph({
        Title = "<font color='#ffffff'><b>注意</b></font>",
        Desc = "<font color='#ffffff'><b>背包满了或钻石不够则不能购买宠物</b></font>"
    })
end

do
    local Tab = Tabs.TP
    local points = {
        {"<font color='#ffffff'><b>大厅</b></font>", CFrame.new(2.93, 88.93, 243.94)},
        {"<font color='#ffffff'><b>小岛</b></font>", CFrame.new(-38.86, 7.53, 1894.03)},
        {"<font color='#ffffff'><b>冰霜健身房</b></font>", CFrame.new(-2623.02, 7.38, -409.07)},
        {"<font color='#ffffff'><b>神话健身房</b></font>", CFrame.new(2250.77, 7.38, 1073.22)},
        {"<font color='#ffffff'><b>永恒健身房</b></font>", CFrame.new(-6758.96, 7.38, -1284.91)},
        {"<font color='#ffffff'><b>传奇健身房</b></font>", CFrame.new(4603.28, 991.53, -3897.86)},
        {"<font color='#ffffff'><b>肌肉之王</b></font>", CFrame.new(-8749.94, 124.45, -5861.06)},
        {"<font color='#ffffff'><b>丛林健身房</b></font>", CFrame.new(-8685.62, 6.81, 2392.32)},
        {"<font color='#ffffff'><b>转盘岛</b></font>", CFrame.new(1952.09, 1.86, 6180.28)},
        {"<font color='#ffffff'><b>熔岩争斗</b></font>", CFrame.new(4472.61, 119.96, -8849.90)},
        {"<font color='#ffffff'><b>沙漠争斗</b></font>", CFrame.new(987.70, 17.23, -7440.26)},
        {"<font color='#ffffff'><b>海滩争斗</b></font>", CFrame.new(-1863.18, 17.23, -6292.78)},
    }
    for _, p in ipairs(points) do
        Tab:Button({ Title = p[1], Callback = function()
            local char = Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = p[2]
            end
        end })
    end
    Tab:Button({ Title = "<font color='#ffffff'><b>安全平台</b></font>", Callback = function()
        local char = Players.LocalPlayer.Character
        if char then
            char.HumanoidRootPart.CFrame = CFrame.new(-300, 100100, -450)
            local part = Instance.new("Part", workspace)
            part.CFrame = CFrame.new(-300, 100000, -450)
            part.Size = Vector3.new(1000000, 0, 10000000)
            part.Anchored = true
        end
    end })
end

do
    local Tab = Tabs.Other
    local autowheel, autobr, autocollect = false, false, false

    Tab:Toggle({ Title = "<font color='#ffffff'><b>自动转盘抽奖</b></font>", Default = false, Callback = function(s)
        autowheel = s
        if s then task.spawn(function() while autowheel do pcall(function()
            ReplicatedStorage.rEvents.openFortuneWheelRemote:InvokeServer("openFortuneWheel", ReplicatedStorage.fortuneWheelChances:FindFirstChild("Fortune Wheel"))
        end) task.wait() end end) end
    end })

    Tab:Toggle({ Title = "<font color='#ffffff'><b>自动争斗</b></font>", Default = false, Callback = function(s)
        autobr = s
        if s then task.spawn(function() while autobr do pcall(function()
            ReplicatedStorage.rEvents.brawlEvent:FireServer("joinBrawl")
        end) task.wait() end end) end
    end })

    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动收集宝箱</b></font>",
        Default = false,
        Callback = function(s)
            autocollect = s
            if s then
                task.spawn(function()
                    while autocollect do
                        pcall(function()
                            ReplicatedStorage.rEvents.checkChestRemote:InvokeServer("Jungle Chest")
                            ReplicatedStorage.rEvents.checkChestRemote:InvokeServer("Legends Chest")
                            ReplicatedStorage.rEvents.checkChestRemote:InvokeServer("Mythical Chest")
                            ReplicatedStorage.rEvents.checkChestRemote:InvokeServer("Enchanted Chest")
                            ReplicatedStorage.rEvents.checkChestRemote:InvokeServer("Golden Chest")
                            ReplicatedStorage.rEvents.groupRemote:InvokeServer("groupRewards")
                        end)
                        task.wait()
                    end
                end)
            end
        end
    })

    Tab:Button({
    Title = "<font color='#ffffff'><b>属性显示</b></font>",
    Callback = function()
        local player = Players.LocalPlayer
        local playerGui = player:WaitForChild("PlayerGui")
        local UserInputService = game:GetService("UserInputService")

        local oldGui = playerGui:FindFirstChild("CatStatsPanel")
        if oldGui then oldGui:Destroy() end

        local gui = Instance.new("ScreenGui")
        gui.Name = "CatStatsPanel"
        gui.ResetOnSpawn = false
        gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        gui.Parent = playerGui

        local main = Instance.new("Frame")
        main.Size = UDim2.new(0, 240, 0, 175)
        main.Position = UDim2.new(0.12, 0, 0.35, 0)
        main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        main.BackgroundTransparency = 0.4
        main.BorderSizePixel = 2
        main.BorderColor3 = Color3.fromRGB(255, 165, 0)
        main.ClipsDescendants = true
        main.Active = true
        main.Parent = gui
        Instance.new("UICorner", main).CornerRadius = UDim.new(0, 10)

        local titleLabel = Instance.new("TextLabel")
        titleLabel.Size = UDim2.new(1, -10, 0, 30)
        titleLabel.Position = UDim2.new(0, 5, 0, 4)
        titleLabel.BackgroundTransparency = 1
        titleLabel.Text = "属性"
        titleLabel.TextColor3 = Color3.fromRGB(255, 200, 100)
        titleLabel.TextSize = 14
        titleLabel.Font = Enum.Font.GothamBold
        titleLabel.TextXAlignment = Enum.TextXAlignment.Left
        titleLabel.Parent = main

        local closeBtn = Instance.new("TextButton")
        closeBtn.Size = UDim2.new(0, 28, 0, 28)
        closeBtn.Position = UDim2.new(1, -32, 0, 4)
        closeBtn.BackgroundTransparency = 1
        closeBtn.Text = "╳"
        closeBtn.TextColor3 = Color3.fromRGB(255, 70, 70)
        closeBtn.TextSize = 18
        closeBtn.Font = Enum.Font.GothamBold
        closeBtn.Parent = main
        closeBtn.MouseButton1Click:Connect(function()
            gui:Destroy()
        end)

        local stats = {
            {key = "Strength",   label = "力量", color = Color3.fromRGB(255, 50, 50)},
            {key = "Durability", label = "耐力", color = Color3.fromRGB(50, 150, 255)},
            {key = "Agility",    label = "敏捷", color = Color3.fromRGB(50, 225, 50)},
            {key = "Rebirths",   label = "重生", color = Color3.fromRGB(255, 200, 100)},
        }

        local valueLabels = {}
        local startY = 38
        local rowHeight = 32

        for i, stat in ipairs(stats) do
            local row = Instance.new("Frame")
            row.Size = UDim2.new(1, -10, 0, rowHeight)
            row.Position = UDim2.new(0, 5, 0, startY + (i-1)*(rowHeight+2))
            row.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            row.BackgroundTransparency = 0.85
            row.BorderSizePixel = 0
            row.Parent = main
            Instance.new("UICorner", row).CornerRadius = UDim.new(0, 4)

            local bar = Instance.new("Frame")
            bar.Size = UDim2.new(0, 3, 0.5, 0)
            bar.Position = UDim2.new(0, 6, 0.25, 0)
            bar.BackgroundColor3 = stat.color
            bar.BorderSizePixel = 0
            bar.Parent = row
            Instance.new("UICorner", bar).CornerRadius = UDim.new(0, 2)

            local nameLabel = Instance.new("TextLabel")
            nameLabel.Size = UDim2.new(0.4, -10, 1, 0)
            nameLabel.Position = UDim2.new(0, 14, 0, 0)
            nameLabel.BackgroundTransparency = 1
            nameLabel.Text = stat.label
            nameLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
            nameLabel.TextSize = 13
            nameLabel.Font = Enum.Font.GothamSemibold
            nameLabel.TextXAlignment = Enum.TextXAlignment.Left
            nameLabel.Parent = row

            local valLabel = Instance.new("TextLabel")
            valLabel.Size = UDim2.new(0.6, -10, 1, 0)
            valLabel.Position = UDim2.new(0.4, 0, 0, 0)
            valLabel.BackgroundTransparency = 1
            valLabel.Text = "…"
            valLabel.TextColor3 = stat.color
            valLabel.TextSize = 16
            valLabel.Font = Enum.Font.GothamBold
            valLabel.TextXAlignment = Enum.TextXAlignment.Right
            valLabel.TextScaled = true
            valLabel.Parent = row

            valueLabels[stat.key] = valLabel
        end

        local dragging = false
        local dragStart = Vector2.new()
        local startPos = main.Position

        main.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                local absPos = closeBtn.AbsolutePosition
                local absSize = closeBtn.AbsoluteSize
                if input.Position.X >= absPos.X and input.Position.X <= absPos.X + absSize.X and
                   input.Position.Y >= absPos.Y and input.Position.Y <= absPos.Y + absSize.Y then
                    return
                end
                dragging = true
                dragStart = input.Position
                startPos = main.Position
            end
        end)

        UserInputService.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = false
            end
        end)

        UserInputService.InputChanged:Connect(function(input)
            if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                local delta = input.Position - dragStart
                main.Position = UDim2.new(
                    startPos.X.Scale,
                    startPos.X.Offset + delta.X,
                    startPos.Y.Scale,
                    startPos.Y.Offset + delta.Y
                )
            end
        end)

        local function findStatObject(statKey)
            local ls = player:FindFirstChild("leaderstats")
            if ls then
                local obj = ls:FindFirstChild(statKey)
                if obj and obj:IsA("ValueBase") then return obj end
                for _, child in ipairs(ls:GetChildren()) do
                    if child.Name:lower() == statKey:lower() and child:IsA("ValueBase") then
                        return child
                    end
                end
            end
            
            local direct = player:FindFirstChild(statKey)
            if direct and direct:IsA("ValueBase") then return direct end
            for _, child in ipairs(player:GetChildren()) do
                if child.Name:lower() == statKey:lower() and child:IsA("ValueBase") then
                    return child
                end
            end
            
            return nil
        end

        local function setupStat(stat)
            local obj = findStatObject(stat.key)
            if not obj then return end
            
            local label = valueLabels[stat.key]
            label.Text = tostring(obj.Value)
            
            obj:GetPropertyChangedSignal("Value"):Connect(function()
                label.Text = tostring(obj.Value)
            end)
        end

        for _, stat in ipairs(stats) do
            setupStat(stat)
        end

        if not player:FindFirstChild("leaderstats") then
            local conn
            conn = player.ChildAdded:Connect(function(child)
                if child.Name == "leaderstats" or child.Name:lower() == "agility" or child.Name:lower() == "durability" then
                    conn:Disconnect()
                    for _, stat in ipairs(stats) do
                        setupStat(stat)
                    end
                end
            end)
        end
    end
})


    Tab:Paragraph({ Title = "<font color='#ffffff'><b>本地属性修改</b></font>", Desc = "<font color='#ffffff'><b>输入数值后回车生效</b></font>" })
    local function setStat(name, val)
        if val == nil or val == "" then return end
        local num = tonumber(val) if not num then return end
        local player = Players.LocalPlayer
        pcall(function() if player[name] ~= nil then player[name] = num end end)
        pcall(function() local c = player:FindFirstChild(name) if c and (c:IsA("NumberValue") or c:IsA("IntValue") or c:IsA("FloatValue")) then c.Value = num end end)
        pcall(function() local ls = player:FindFirstChild("leaderstats") if ls then local s = ls:FindFirstChild(name) if s and (s:IsA("NumberValue") or s:IsA("IntValue") or s:IsA("FloatValue")) then s.Value = num end end end)
    end
    Tab:Input({ Title = "<font color='#ffffff'><b>善良业报</b></font>", Placeholder = "输入数值", Default = "", Callback = function(v) setStat("goodKarma", v) end })
    Tab:Input({ Title = "<font color='#ffffff'><b>邪恶业报</b></font>", Placeholder = "输入数值", Default = "", Callback = function(v) setStat("evilKarma", v) end })
    Tab:Input({ Title = "<font color='#ffffff'><b>免费转盘次数</b></font>", Placeholder = "输入数值", Default = "", Callback = function(v) setStat("freeWheelSpins", v) end })
    Tab:Input({ Title = "<font color='#ffffff'><b>宝石</b></font>", Placeholder = "输入数值", Default = "", Callback = function(v) setStat("Gems", v) end })
    Tab:Input({ Title = "<font color='#ffffff'><b>耐久</b></font>", Placeholder = "输入数值", Default = "", Callback = function(v) setStat("Durability", v) end })
    Tab:Input({ Title = "<font color='#ffffff'><b>敏捷</b></font>", Placeholder = "输入数值", Default = "", Callback = function(v) setStat("Agility", v) end })
    Tab:Input({ Title = "<font color='#ffffff'><b>力量</b></font>", Placeholder = "输入数值", Default = "", Callback = function(v) setStat("Strength", v) setStat("Power", v) end })
end

do
    local Tab = Tabs.Beautify

    Tab:Section({ Title = "<font color='#ffffff'><b>自动升降</b></font>" })
    local liftActive = false
    Tab:Toggle({
        Title = "<font color='#ffffff'><b>破解自动升降（持续保持）</b></font>",
        Default = false,
        Callback = function(state)
            liftActive = state
            if state then
                task.spawn(function()
                    while liftActive do
                        pcall(function()
                            local autoLift = Players.LocalPlayer:FindFirstChild("autoLiftEnabled")
                            if autoLift and autoLift:IsA("BoolValue") then
                                autoLift.Value = true
                            end
                        end)
                        task.wait(0.2)
                    end
                end)
            else
                pcall(function()
                    local autoLift = Players.LocalPlayer:FindFirstChild("autoLiftEnabled")
                    if autoLift and autoLift:IsA("BoolValue") then
                        autoLift.Value = false
                    end
                end)
            end
        end
    })

    Tab:Section({ Title = "<font color='#ffffff'><b>宠物刷包</b></font>" })
    Tab:Button({ Title = "<font color='#ffffff'><b>一键刷包</b></font>", Callback = function()
    local player = Players.LocalPlayer
    local petsFolder = player:FindFirstChild("petsFolder") or Instance.new("Folder", player)
    petsFolder.Name = "petsFolder"
    local unique = petsFolder:FindFirstChild("Unique") or Instance.new("Folder", petsFolder)
    unique.Name = "Unique"
    local pets = {
        {name="Mighty Monster", asset="rbxassetid://17601660151", chosen="强大的怪物", perks={agility=1000,strength=2250,durability=5000}},
        {name="Swift Samurai", asset="rbxassetid://17601657920", chosen="快速武士", perks={agility=2500,strength=1750,durability=3250}},
        {name="Tribal Overlord", asset="rbxassetid://17601550091", chosen="部落首领", perks={strength=3750,durability=2500,damage=50000}},
        {name="Wild Wizard", asset="rbxassetid://17601661532", chosen="狂野巫师", perks={agility=750,damage=75000,durability=4000}},
    }
    for _, d in ipairs(pets) do
        local pet = Instance.new("StringValue", unique)
        pet.Name = d.name
        pet.Value = d.asset

        -- 各种可能的名字字段（游戏 UI 会读取其中之一）
        Instance.new("StringValue", pet).Name = "chosenName"
        pet.chosenName.Value = d.chosen

        Instance.new("StringValue", pet).Name = "DisplayName"
        pet.DisplayName.Value = d.chosen

        Instance.new("StringValue", pet).Name = "PetName"
        pet.PetName.Value = d.chosen

        -- 各种可能的图标字段
        Instance.new("StringValue", pet).Name = "Icon"
        pet.Icon.Value = d.asset

        Instance.new("StringValue", pet).Name = "IconId"
        pet.IconId.Value = d.asset

        Instance.new("StringValue", pet).Name = "ImageId"
        pet.ImageId.Value = d.asset

        local perksF = Instance.new("Folder", pet)
        perksF.Name = "perksFolder"
        for k,v in pairs(d.perks) do
            local val = Instance.new("IntValue", perksF)
            val.Name = k
            val.Value = v
        end

        Instance.new("BoolValue", pet).Name = "evolved"
        pet.evolved.Value = true

        Instance.new("IntValue", pet).Name = "level"
        pet.level.Value = 1

        Instance.new("IntValue", pet).Name = "exp"
        pet.exp.Value = 0

        Instance.new("IntValue", pet).Name = "requiredRebirths"
        pet.requiredRebirths.Value = 0

        Instance.new("BoolValue", pet).Name = "unsellable"
        pet.unsellable.Value = true

        Instance.new("BoolValue", pet).Name = "untradeable"
        pet.untradeable.Value = true
    end

    -- 尝试通知游戏刷新宠物列表
    pcall(function()
        if ReplicatedStorage:FindFirstChild("refreshPetsEvent") then
            ReplicatedStorage.refreshPetsEvent:FireServer()
        end
    end)
end })

    Tab:Section({ Title = "<font color='#ffffff'><b>通行证</b></font>" })
    Tab:Button({ Title = "<font color='#ffffff'><b>解锁全部通行证</b></font>", Callback = function()
        for _, v in ipairs(ReplicatedStorage.gamepassIds:GetChildren()) do
            v.Parent = Players.LocalPlayer.ownedGamepasses
        end
    end })
end

do
    local Tab = Tabs.Egg

    Tab:Section({ Title = "<font color='#ffffff'><b>自动吃食</b></font>" })

    local foodMap = {
        ["蛋白棒"]     = { itemName = "Protein Bar",    key = "proteinBar" },
        ["能量棒"]     = { itemName = "Energy Bar",     key = "energyBar" },
        ["超级奶昔"]   = { itemName = "ULTRA Shake",    key = "ultraShake" },
        ["热带奶昔"]   = { itemName = "Tropical Shake", key = "tropicalShake" },
        ["蛋白质奶昔"] = { itemName = "Protein Shake",  key = "proteinShake" },
        ["健壮条"]     = { itemName = "TOUGH Bar",      key = "toughBar" },
    }

    local selectedFood = foodMap["蛋白棒"]
    local eatingActive = false

    Tab:Dropdown({
        Title = "<font color='#ffffff'><b>选择食物</b></font>",
        Values = { "蛋白棒", "能量棒", "超级奶昔", "热带奶昔", "蛋白质奶昔", "健壮条" },
        Default = "蛋白棒",
        Callback = function(val)
            selectedFood = foodMap[val]
        end
    })

    local foodCountDisplay = Tab:Paragraph({
        Title = "<font color='#ffffff'><b>剩余数量</b></font>",
        Desc = "<font color='#ffffff'>检测中...</font>",
    })

    task.spawn(function()
        while true do
            local count = 0
            pcall(function()
                local backpack = Players.LocalPlayer:FindFirstChild("Backpack")
                if backpack then
                    for _, tool in ipairs(backpack:GetChildren()) do
                        if tool:IsA("Tool") and tool.Name == selectedFood.itemName then
                            count = count + 1
                        end
                    end
                end
            end)
            foodCountDisplay:SetDesc("<font color='#ffffff'>" .. count .. " 个</font>")
            task.wait(0.5)
        end
    end)

    Tab:Toggle({
        Title = "<font color='#ffffff'><b>自动吃食</b></font>",
        Default = false,
        Callback = function(state)
            eatingActive = state
            if state then
                task.spawn(function()
                    while eatingActive do
                        pcall(function()
                            local char = Players.LocalPlayer.Character
                            if not char or not char:FindFirstChild("Humanoid") then return end

                            local backpack = Players.LocalPlayer:FindFirstChild("Backpack")
                            if not backpack then return end

                            local tool = backpack:FindFirstChild(selectedFood.itemName)
                            if tool and tool:IsA("Tool") then
                                char.Humanoid:EquipTool(tool)
                                for _ = 1, 10 do
                                    Players.LocalPlayer.muscleEvent:FireServer(selectedFood.key, tool)
                                end
                            end
                        end)
                        task.wait(0.1)
                    end
                end)
            end
        end
    })

    Tab:Section({ Title = "<font color='#ffffff'><b>智能送蛋（检测+强制可送）</b></font>" })

    local eggCountDisplay = Tab:Paragraph({
        Title = "<font color='#ffffff'>剩余蛋白蛋数量:</font>",
        Desc = "<font color='#ffffff'>检测中...</font>",
    })
    task.spawn(function()
        while true do
            pcall(function()
                local count = 0
                local backpack = Players.LocalPlayer:FindFirstChild("Backpack")
                if backpack then
                    for _, item in ipairs(backpack:GetChildren()) do
                        if item:IsA("Tool") and item.Name == "Protein Egg" then
                            count = count + 1
                        end
                    end
                end
                eggCountDisplay:SetDesc("<font color='#ffffff'>" .. count .. " 个</font>")
            end)
            task.wait(0.5)
        end
    end)

    local gived = 0
    local whoneed = ""
    local isGifting = false

    Tab:Input({
        Title = "<font color='#ffffff'>送蛋数量</font>",
        Value = "",
        PlaceholderText = "输入数量",
        ClearTextOnFocus = false,
        Callback = function(Text)
            gived = tonumber(Text) or 0
        end
    })

    Tab:Input({
        Title = "<font color='#ffffff'>目标用户名</font>",
        Value = "",
        PlaceholderText = "输入玩家名",
        ClearTextOnFocus = false,
        Callback = function(Text)
            whoneed = Text
        end
    })

    Tab:Button({
        Title = "<font color='#ffffff'> 开始送蛋</font>",
        Callback = function()
            if isGifting then return end
            if gived <= 0 or whoneed == "" then return end

            isGifting = true
            task.spawn(function()
                local sentCount = 0
                while sentCount < gived and isGifting do
                    local target = Players:FindFirstChild(whoneed)
                    if not target then
                        task.wait(1)
                        continue
                    end

                    local backpack = Players.LocalPlayer:FindFirstChild("Backpack")
                    local egg = backpack and backpack:FindFirstChild("Protein Egg")
                    if not egg or not egg:IsA("Tool") then
                        break
                    end

                    pcall(function()
                        local consumables = Players.LocalPlayer:FindFirstChild("consumablesFolder")
                        if not consumables then
                            consumables = Instance.new("Folder")
                            consumables.Name = "consumablesFolder"
                            consumables.Parent = Players.LocalPlayer
                        end
                        local eggEntry = consumables:FindFirstChild("Protein Egg")
                        if not eggEntry then
                            eggEntry = Instance.new("StringValue")
                            eggEntry.Name = "Protein Egg"
                            eggEntry.Parent = consumables
                        end
                        local canGift = eggEntry:FindFirstChild("canGift")
                        if not canGift then
                            canGift = Instance.new("BoolValue")
                            canGift.Name = "canGift"
                            canGift.Parent = eggEntry
                        end
                        canGift.Value = true
                    end)

                    task.wait(0.05)

                    pcall(function()
                        local consumables = Players.LocalPlayer:FindFirstChild("consumablesFolder")
                        local eggEntry = consumables and consumables:FindFirstChild("Protein Egg")
                        if eggEntry then
                            ReplicatedStorage.rEvents.giftRemote:InvokeServer("giftRequest", target, eggEntry)
                            sentCount = sentCount + 1
                        end
                    end)

                    task.wait(0.09)
                end
                isGifting = false
            end)
        end
    })
end

Window:SelectTab(1)