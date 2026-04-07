
-----------------------------------------------------------------------------------------------墨水功能
local Tab = Window:Tab({
    Title = "墨水功能",
    Icon = "layout-grid",
    Locked = false,
})

local Toggle = Tab:Toggle({
    Title = "透视躲藏者",
    Value = false,    
    Callback = function(state) 
                hiderESPEnabled = state
        if state then
            ESP.AddFolder("HiderESPFolder")
            for _, player in pairs(Players:GetPlayers()) do
                if player ~= LocalPlayer and player:GetAttribute("IsHider") then
                    ESP.AddESP("HiderESPFolder", "躲藏者 " .. player.Name, player.Character, Color3.new(0, 0, 1))
                end
            end
            
            -- 监听新玩家加入
            Players.PlayerAdded:Connect(function(player)
                if hiderESPEnabled and player:GetAttribute("IsHider") then
                    ESP.AddESP("HiderESPFolder", "躲藏者 " .. player.Name, player.Character, Color3.new(0, 0, 1))
                end
            end)
        else
            ESP.Clear("HiderESPFolder")
        end
    end
})


local Toggle = Tab:Toggle({
    Title = "透视搜查者",
    Value = false,    
    Callback = function(state) 
                hunterESPEnabled = state
        if state then
            ESP.AddFolder("HunterESPFolder")
            for _, player in pairs(Players:GetPlayers()) do
                if player ~= LocalPlayer and player:GetAttribute("IsHunter") then
                    ESP.AddESP("HunterESPFolder", "搜查者 " .. player.Name, player.Character, Color3.new(1, 0, 0))
                end
            end
            
            -- 监听新玩家加入
            Players.PlayerAdded:Connect(function(player)
                if hunterESPEnabled and player:GetAttribute("IsHunter") then
                    ESP.AddESP("HunterESPFolder", "搜查者 " .. player.Name, player.Character, Color3.new(1, 0, 0))
                end
            end)
        else
            ESP.Clear("HunterESPFolder")
        end
    end
})


local Toggle = Tab:Toggle({
    Title = "透视真假玻璃",
    Value = false,    
    Callback = function(state) 
                glassESPEnabled = state
        if state then
            ESP.AddFolder("GlassESPFolder")
            for _, v in next, workspace.GlassBridge.GlassHolder:GetChildren() do
                if v.Name:find("ClonedPanel") then
                    for _, panelChild in next, v:GetChildren() do
                        for _, glassPart in next, panelChild:GetChildren() do
                            if glassPart.Name == "glasspart" and glassPart:FindFirstChild("TouchInterest") then
                                ESP.AddESP("GlassESPFolder", "假玻璃", glassPart, Color3.new(0, 1, 0))
                            end
                        end
                    end
                end
            end
        else
            ESP.Clear("GlassESPFolder")
        end
    end
})


local Toggle = Tab:Toggle({
    Title = "ESP玻璃",
    Value = false,    
    Callback = function(state) 
                pcall(function()
            local GlassHolder = workspace.GlassBridge.GlassHolder
            for _, PanelPair in ipairs(GlassHolder:GetChildren()) do
                for _, Panel in ipairs(PanelPair:GetChildren()) do
                    local GlassPart = Panel:FindFirstChild("glasspart")
                    if GlassPart then
                        if state then
                            local Color = GlassPart:GetAttribute("exploitingisevil") and Color3.fromRGB(248, 87, 87) or Color3.fromRGB(28, 235, 87)
                            GlassPart.Color = Color
                            GlassPart.Transparency = 0
                            GlassPart.Material = Enum.Material.Neon
                        else
                            GlassPart.Color = Color3.fromRGB(106, 106, 106)
                            GlassPart.Transparency = 0.45
                            GlassPart.Material = Enum.Material.SmoothPlastic
                        end
                    end
                end
            end
        end)
    end
})

local Tab = Window:Tab({
    Title = "123木头人",
    Icon = "layout-grid", -- optional
    Locked = false,
})
local polygon = {
    Vector2.new(-52, -515),
    Vector2.new(115, -515),
    Vector2.new(115, 84),
    Vector2.new(-216, 84)
}

local lastUpdate = tick()
local updateInterval = 0.1

local Button = Tab:Button({
    Title = "帮助玩家到终点，同时你自己也可以(木头人关)",
    Callback = function()
        local foundPlayer = false
        
        if tick() - lastUpdate < updateInterval then
            WindUI:Notify({
                Title = "帮助玩家",
                Content = "操作过于频繁，请稍后再试",
                Icon = "clock",
                Duration = 1,
            })
            return
        end
        lastUpdate = tick()
        
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                local liveChar = workspace:FindFirstChild("Live") and workspace.Live:FindFirstChild(player.Name)
                local hrp = liveChar and liveChar:FindFirstChild("HumanoidRootPart")

                if hrp then
                    local posXZ = Vector2.new(hrp.Position.X, hrp.Position.Z)
                    -- 内联isPointInPolygon函数
                    local inside = false
                    local j = #polygon
                    for i = 1, #polygon do
                        local xi, zi = polygon[i].X, polygon[i].Y
                        local xj, zj = polygon[j].X, polygon[j].Y
                        if ((zi > posXZ.Y) ~= (zj > posXZ.Y)) and
                            (posXZ.X < (xj - xi) * (posXZ.Y - zi) / (zj - zi + 1e-9) + xi) then
                            inside = not inside
                        end
                        j = i
                    end
                    
                    if inside then
                        local prompt = hrp:FindFirstChild("CarryPrompt")

                        if prompt and prompt:IsA("ProximityPrompt") and prompt.Enabled then
                            WindUI:Notify({
                                Title = "帮助玩家",
                                Content = "正在帮助: " .. player.Name,
                                Icon = "user-check",
                                Duration = 1,
                            })
                            
                            pcall(function()
                                -- 内联tpTo函数
                                local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                if hrp then
                                    hrp.CFrame = hrp.CFrame + Vector3.new(0, 2, 0)
                                end
                                task.wait(0.4)
                                -- 内联fireProximityPrompt函数
                                if fireproximityprompt then
                                    pcall(fireproximityprompt, prompt)
                                elseif prompt and prompt:IsA("ProximityPrompt") then
                                    prompt:InputHoldBegin()
                                    task.wait(0.1)
                                    prompt:InputHoldEnd()
                                end
                                task.wait(0.7)
                                -- 再次内联tpTo函数
                                local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                if hrp then
                                    hrp.CFrame = CFrame.new(-46, 1024, 110)
                                end
                            end)
                            
                            WindUI:Notify({
                                Title = "帮助完成",
                                Content = "已完成帮助: " .. player.Name,
                                Icon = "check-circle",
                                Duration = 1,
                            })
                            foundPlayer = true
                            break
                        end
                    end
                end
            end
        end
        
        if not foundPlayer then
            WindUI:Notify({
                Title = "帮助玩家",
                Content = "没有可帮助的玩家",
                Icon = "user-x",
                Duration = 1,
            })
        end
    end
})

local lastJumpTime = 0
UserInputService.JumpRequest:Connect(function()
    if isInfiniteJumpEnabled and tick() - lastJumpTime > 0.1 then
        lastJumpTime = tick()
        local character = LocalPlayer.Character
        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid and humanoid.FloorMaterial ~= Enum.Material.Air then
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end
end)

local lastNoclipCheck = 0
RunService.Stepped:Connect(function()
    if isNoclipEnabled and LocalPlayer.Character then
        if tick() - lastNoclipCheck > 0.1 then
            lastNoclipCheck = tick()
            for _, part in ipairs(LocalPlayer.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    if part.CanCollide then
                        noclipParts[part] = true
                        part.CanCollide = false
                    end
                end
            end
        end
    end
end)

local lastCombatUpdate = 0
local updateInterval = 0.1
RunService.RenderStepped:Connect(function()
    local now = tick()
    if now - lastCombatUpdate < updateInterval then return end
    lastCombatUpdate = now
    
    local character = LocalPlayer.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then
        return
    end

    local rootPart = character.HumanoidRootPart
    local nearestTarget = nil
    local nearestDistance = math.huge

    if now - lastEspUpdate > 0.5 then
        lastEspUpdate = now
        if isEspEnabled then
            for _, model in ipairs(workspace:GetDescendants()) do
                if model:IsA("Model") and not model:IsDescendantOf(Players) and not model:IsDescendantOf(character) then
                    local modelName = model.Name:lower()
                    if modelName:find("guard") or modelName:find("guy") or modelName:find("squid") then
                        local part = model:FindFirstChildWhichIsA("BasePart")
                        if part then
                            local distance = (part.Position - rootPart.Position).Magnitude
                            if distance < nearestDistance then
                                nearestTarget = model
                                nearestDistance = distance
                            end
                            
                            if not espCache[part] then
                                local espBox = Instance.new("BoxHandleAdornment")
                                espBox.Name = "ESP"
                                espBox.Adornee = part
                                espBox.Size = part.Size
                                espBox.Color3 = Color3.fromRGB(255, 0, 0)
                                espBox.AlwaysOnTop = true
                                espBox.ZIndex = 10
                                espBox.Transparency = 0.25
                                espBox.AdornCullingMode = Enum.AdornCullingMode.Never
                                espBox.Parent = part
                                espCache[part] = espBox
                            end
                        end
                    end
                end
            end
        end
    end

    if isAimbotEnabled and nearestTarget then
        local targetPart = nearestTarget:FindFirstChild("Head") or nearestTarget:FindFirstChild("Torso")
        if targetPart then
            local cameraPos = workspace.CurrentCamera.CFrame.Position
            local targetDir = (targetPart.Position - cameraPos).Unit
            local currentCFrame = workspace.CurrentCamera.CFrame
            local newCFrame = currentCFrame:Lerp(CFrame.new(cameraPos, targetPart.Position), aimbotLerpFactor)
            workspace.CurrentCamera.CFrame = newCFrame
        end
    end
end)

-- 清理代码直接内联
if game.BindToClose then
    pcall(function()
        game:BindToClose(function()
            for part, _ in pairs(noclipParts) do
                if part and part.Parent then
                    part.CanCollide = true
                end
            end
            
            for _, esp in pairs(espCache) do
                if esp and esp.Parent then
                    esp:Destroy()
                end
            end
            
            ESP.Clear("HiderESPFolder")
            ESP.Clear("HunterESPFolder")
            ESP.Clear("GlassESPFolder")
            
            pcall(function()
                local GlassHolder = workspace.GlassBridge.GlassHolder
                for _, PanelPair in ipairs(GlassHolder:GetChildren()) do
                    for _, Panel in ipairs(PanelPair:GetChildren()) do
                        local GlassPart = Panel:FindFirstChild("glasspart")
                        if GlassPart then
                            GlassPart.Color = Color3.fromRGB(106, 106, 106)
                            GlassPart.Transparency = 0.45
                            GlassPart.Material = Enum.Material.SmoothPlastic
                        end
                    end
                end
            end)
        end)
    end)
end