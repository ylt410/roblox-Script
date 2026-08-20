local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
  Title = "林玉脚本",
  Author = "举重怪物林玉",
  Icon = "",
  Folder = "林玉的脚本",
  Size = UDim2.new(0, 600, 0, 450),
})

-- 自动
local Tab1 = Window:Tab({
  Title = "自动",
  Icon = "",
})

local autoTrain = false
local autoRebirth = false

Tab1:Toggle({
    Title = "挂机防踢",
    Value = false,
    Callback = function(state)
        if state then
            bypassCount = 0
            afkConnection = game.Players.LocalPlayer.Idled:Connect(function()
                game:GetService("VirtualUser"):CaptureController()
                game:GetService("VirtualUser"):ClickButton2(Vector2.new(0, 0))
                bypassCount = bypassCount + 1
            end)
        else
            if afkConnection then afkConnection:Disconnect() afkConnection = nil end
        end
    end
})

Tab1:Toggle({
  Title = "自动锻炼",
  Default = false,
  Callback = function(v)
      autoTrain = v
      if v then
          task.spawn(function()
              local Event = game:GetService("Players").LocalPlayer.muscleEvent
              while autoTrain do
                  pcall(function()
                      Event:FireServer("rep")
                  end)
                  task.wait(0.01)
              end
          end)
      end
  end
})

Tab1:Toggle({
  Title = "自动500重生",
  Default = false,
  Callback = function(v)
      autoRebirth = v
      if v then
          task.spawn(function()
              local Event = game:GetService("ReplicatedStorage").rEvents.rebirthRemote
              while autoRebirth do
                  pcall(function()
                      Event:InvokeServer("massRebirthRequest", 500)
                  end)
                  task.wait(0.01)
              end
          end)
      end
  end
})

-- 解锁
local Tab2 = Window:Tab({
  Title = "功能",
  Icon = "",
})

Tab2:Button({
   Title = "装备所有宠物",
   Callback = function()
       pcall(function()
           local Event = game:GetService("ReplicatedStorage").rEvents.equipPetEvent
           local AniFace = game:GetService("Players").LocalPlayer
           for _, folder in pairs(AniFace.petsFolder:GetChildren()) do
               for _, pet in pairs(folder:GetChildren()) do
                   Event:FireServer("equipPet", pet)
               end
           end
       end)
   end
})


-- 水晶
local Tab3 = Window:Tab({
  Title = "水晶",
  Icon = "",
})

local selectedCrystal = "Unlimited Secrets Crystal"
local autoCrystal = false
local autoEvolve = false

Tab3:Section({Title = "水晶抽取", Opened = true})

Tab3:Dropdown({
    Title = "选择水晶",
    Values = {"Unlimited Secrets Crystal", "懒得做", "林玉牛逼呗"},
    Value = "Unlimited Secrets Crystal",
    Callback = function(v)
        selectedCrystal = v
    end
})

Tab3:Button({
    Title = "抽取一次",
    Callback = function()
        pcall(function()
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", selectedCrystal, 1)
        end)
    end
})

Tab3:Button({
    Title = "抽取三次",
    Callback = function()
        pcall(function()
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", selectedCrystal, 3)
        end)
    end
})

Tab3:Toggle({
    Title = "自动抽取一次",
    Default = false,
    Callback = function(v)
        autoCrystal = v
        if v then
            task.spawn(function()
                while autoCrystal do
                    pcall(function()
                        game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", selectedCrystal, 1)
                    end)
                    task.wait(0.1)
                end
            end)
        end
    end
})

Tab3:Toggle({
    Title = "自动抽取三次",
    Default = false,
    Callback = function(v)
        autoCrystal3 = v
        if v then
            task.spawn(function()
                while autoCrystal3 do
                    pcall(function()
                        game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", selectedCrystal, 3)
                    end)
                    task.wait(0.1)
                end
            end)
        end
    end
})

Tab3:Section({Title = "宠物进化", Opened = true})

Tab3:Toggle({
   Title = "自动进化宠物",
   Default = false,
   Callback = function(v)
       autoEvolve = v
       if v then
           task.spawn(function()
               while autoEvolve do
                   pcall(function()
                       game:GetService("ReplicatedStorage").rEvents.autoEvolveRemote:InvokeServer()
                   end)
                   task.wait(1)
               end
           end)
       end
   end
})

-- 击杀
local Tab4 = Window:Tab({
   Title = "自动击杀",
   Icon = "",
})

if not _G.WindUI_AutoStates then
    _G.WindUI_AutoStates = {
        AutoKillReport3 = false,
        AutoKill = false,
        AeroV1 = false,
        AeroLock = false,
    }
end
local AutoStates = _G.WindUI_AutoStates

local Plr = game:GetService("Players")
local LP = Plr.LocalPlayer
local PlayerList = {}
local SelectedPlayers = {}

local function initializePlayerList()
    PlayerList = {}
    for _, player in ipairs(Plr:GetPlayers()) do
        if player ~= LP then
            table.insert(PlayerList, player.Name)
        end
    end
end

local function refreshPlayerList()
    initializePlayerList()
    if killplayerDropdown then
        killplayerDropdown:Refresh(PlayerList)
    end
    WindUI:Notify({
        Title = "玩家列表",
        Content = "已刷新，共 " .. #PlayerList .. " 个玩家",
        Duration = 3,
    })
end

Plr.PlayerAdded:Connect(function(player)
    if player ~= LP then
        table.insert(PlayerList, player.Name)
        if killplayerDropdown then
            killplayerDropdown:Refresh(PlayerList)
        end
    end
end)

Plr.PlayerRemoving:Connect(function(player)
    local index = table.find(PlayerList, player.Name)
    if index then
        table.remove(PlayerList, index)
    end
    local selIndex = table.find(SelectedPlayers, player.Name)
    if selIndex then
        table.remove(SelectedPlayers, selIndex)
    end
    if killplayerDropdown then
        killplayerDropdown:Refresh(PlayerList)
    end
end)

initializePlayerList()

local function clearLoops(stateKey)
    if AutoStates[stateKey .. "Loops"] then
        for _, conn in pairs(AutoStates[stateKey .. "Loops"]) do
            pcall(function() conn:Disconnect() end)
        end
    end
    AutoStates[stateKey .. "Loops"] = {}
    AutoStates[stateKey] = false
end

local function createPunchLoop(stateKey)
    return game:GetService("RunService").Heartbeat:Connect(function()
        if not AutoStates[stateKey] then return end
        local char = LP.Character
        if char and char:FindFirstChild("Humanoid") and char.Humanoid.Health > 0 then
            local punch = char:FindFirstChild("Punch") or LP.Backpack:FindFirstChild("Punch")
            if punch then
                punch.Parent = char
                punch:Activate()
            end
        end
    end)
end

-- 玩家选择下拉框
local killplayerDropdown = Tab4:Dropdown({
    Title = "选择攻击玩家（可多选）",
    Values = PlayerList,
    Value = {},
    Multi = true,
    AllowNone = true,
    Callback = function(values)
        SelectedPlayers = values or {}
    end
})

Tab4:Button({
    Title = "刷新玩家列表",
    Callback = function()
        refreshPlayerList()
    end
})

Tab4:Button({
    Title = "查看已选玩家",
    Callback = function()
        local count = #SelectedPlayers
        local names = count > 0 and table.concat(SelectedPlayers, ", ") or "未选择任何玩家"
        WindUI:Notify({
            Title = "已选玩家（" .. count .. " 个）",
            Content = names,
            Duration = 5,
        })
    end
})


Tab4:Toggle({
    Title = "自动击杀",
    Desc = "攻击所有玩家",
    Default = false,
    Callback = function(state)
        clearLoops("AeroV1")
        AutoStates.AeroV1 = state

        if not state then
            pcall(function()
                if LP.Character then
                    local hum = LP.Character:FindFirstChild("Humanoid")
                    if hum then hum:UnequipTools() end
                end
            end)
            return
        end

        table.insert(AutoStates.AeroV1Loops, createPunchLoop("AeroV1"))

        local lastTeleport = 0
        local targetIndex = 1
        local tpLoop = game:GetService("RunService").Heartbeat:Connect(function()
            if not AutoStates.AeroV1 then return end
            local now = tick()
            if now - lastTeleport < 0.25 then return end
            lastTeleport = now

            local char = LP.Character
            if not (char and char:FindFirstChild("Humanoid") and char.Humanoid.Health > 0) then return end

            local targets = {}
            for _, plr in ipairs(Plr:GetPlayers()) do
                if plr ~= LP and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character.Humanoid.Health > 0 then
                    table.insert(targets, plr)
                end
            end

            if #targets > 0 then
                if targetIndex > #targets then targetIndex = 1 end
                local t = targets[targetIndex]
                if t and t.Character and t.Character:FindFirstChild("HumanoidRootPart") then
                    char.HumanoidRootPart.CFrame = t.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
                end
                targetIndex = targetIndex + 1
            else
                targetIndex = 1
            end
        end)
        table.insert(AutoStates.AeroV1Loops, tpLoop)
    end
})

-- 锁定玩家攻击（只打选中的）
Tab4:Toggle({
    Title = "锁定玩家攻击",
    Desc = "只攻击锁定玩家，可多选",
    Default = false,
    Callback = function(state)
        clearLoops("AeroLock")
        AutoStates.AeroLock = state

        if not state then
            pcall(function()
                if LP.Character then
                    local hum = LP.Character:FindFirstChild("Humanoid")
                    if hum then hum:UnequipTools() end
                end
            end)
            return
        end

        if #SelectedPlayers == 0 then
            WindUI:Notify({
                Title = "提示",
                Content = "未选择任何玩家，请先勾选目标",
                Duration = 3,
            })
            AutoStates.AeroLock = false
            return
        end

        table.insert(AutoStates.AeroLockLoops, createPunchLoop("AeroLock"))

        local lastTeleport = 0
        local targetIndex = 1
        local tpLoop = game:GetService("RunService").Heartbeat:Connect(function()
            if not AutoStates.AeroLock then return end
            local now = tick()
            if now - lastTeleport < 0.25 then return end
            lastTeleport = now

            local char = LP.Character
            if not (char and char:FindFirstChild("Humanoid") and char.Humanoid.Health > 0) then return end

            local targets = {}
            for _, name in ipairs(SelectedPlayers) do
                local plr = Plr:FindFirstChild(name)
                if plr and plr ~= LP and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character.Humanoid.Health > 0 then
                    table.insert(targets, plr)
                end
            end

            if #targets > 0 then
                if targetIndex > #targets then targetIndex = 1 end
                local t = targets[targetIndex]
                if t and t.Character and t.Character:FindFirstChild("HumanoidRootPart") then
                    char.HumanoidRootPart.CFrame = t.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
                end
                targetIndex = targetIndex + 1
            else
                targetIndex = 1
            end
        end)
        table.insert(AutoStates.AeroLockLoops, tpLoop)
    end
})


WindUI:Notify({Title = "林玉脚本", Content = "加载成功", Duration =5, })