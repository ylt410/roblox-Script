-- 优化版 ESP + 开屏动画 + 复活修复
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local playerGui = LocalPlayer:WaitForChild("PlayerGui")

-- UI 根节点
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ESP_UI"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- 可拖动开关按钮
local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0, 140, 0, 36)
toggleButton.Position = UDim2.new(0, 10, 0, 10)
toggleButton.Text = "ESP by环绕阴乐"
toggleButton.Font = Enum.Font.SourceSansBold
toggleButton.TextSize = 18
toggleButton.BackgroundColor3 = Color3.fromRGB(120,0,200)
toggleButton.TextColor3 = Color3.fromRGB(255,255,255)
toggleButton.Active = true
toggleButton.Draggable = true
toggleButton.Parent = screenGui

-- 欢迎文字开屏动画
local welcomeLabel = Instance.new("TextLabel")
welcomeLabel.Size = UDim2.new(0, 300, 0, 30)
welcomeLabel.Position = UDim2.new(0.5, -150, 0.5, -15)
welcomeLabel.BackgroundTransparency = 0.3
welcomeLabel.BackgroundColor3 = Color3.fromRGB(0,0,0)
welcomeLabel.TextColor3 = Color3.fromRGB(255,255,255)
welcomeLabel.Font = Enum.Font.SourceSansBold
welcomeLabel.TextSize = 18
welcomeLabel.Text = "感谢 "..LocalPlayer.Name.." 使用 环绕透视 by 抖音环绕阴乐"
welcomeLabel.Parent = screenGui

-- Tween 到左上角
local goal = {Position = UDim2.new(0, 10, 0, 50)}
local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local tween = TweenService:Create(welcomeLabel, tweenInfo, goal)
tween:Play()

-- 延迟移除欢迎文字
tween.Completed:Connect(function()
    wait(3)
    welcomeLabel:Destroy()
end)

-- ESP 状态管理
local espEnabled = true
local highlights = {}
local billboards = {}
local connections = {}

-- 颜色配置
local function getTeamColor(player)
    return player.Team and player.Team.TeamColor.Color or Color3.fromRGB(255, 0, 0)
end

-- 开关逻辑
toggleButton.MouseButton1Click:Connect(function()
    espEnabled = not espEnabled
    toggleButton.Text = espEnabled and "ESP 开启" or "ESP 关闭"
    toggleButton.BackgroundColor3 = espEnabled and Color3.fromRGB(0, 120, 200) or Color3.fromRGB(120, 0, 200)
    
    for _, highlight in pairs(highlights) do
        if highlight and highlight.Parent then
            highlight.Enabled = espEnabled
        end
    end
    for _, data in pairs(billboards) do
        if data and data.gui then
            data.gui.Enabled = espEnabled
        end
    end
end)

-- 创建ESP元素
local function createESP(player)
    if player == LocalPlayer then return end
    
    local character = player.Character
    if not character then return end

    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local head = character:FindFirstChild("Head") or character.PrimaryPart
    if not humanoid or not head then return end

    -- 创建高亮
    local highlight = Instance.new("Highlight")
    highlight.Name = "ESP_Highlight"
    highlight.Parent = character
    highlight.FillTransparency = 0.8
    highlight.OutlineTransparency = 0
    highlight.FillColor = getTeamColor(player)
    highlight.OutlineColor = getTeamColor(player)
    highlight.Enabled = espEnabled
    highlights[player] = highlight

    -- 创建血条和名字显示
    local gui = Instance.new("BillboardGui")
    gui.Name = "ESP_Billboard"
    gui.Size = UDim2.new(0, 200, 0, 50)
    gui.Adornee = head
    gui.AlwaysOnTop = true
    gui.MaxDistance = 100
    gui.Parent = screenGui

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.TextSize = 14
    textLabel.TextColor3 = getTeamColor(player)
    textLabel.TextStrokeTransparency = 0.5
    textLabel.Parent = gui

    local data = {
        gui = gui,
        label = textLabel,
        humanoid = humanoid
    }
    billboards[player] = data

    -- 监听血量变化
    local healthConnection = humanoid.HealthChanged:Connect(function()
        if data.label then
            data.label.Text = string.format("%s\nHP: %d/%d", player.Name, humanoid.Health, humanoid.MaxHealth)
        end
    end)
    
    connections[player] = healthConnection
    
    -- 初始文本
    textLabel.Text = string.format("%s\nHP: %d/%d", player.Name, humanoid.Health, humanoid.MaxHealth)
    gui.Enabled = espEnabled
end

-- 清理ESP元素
local function removeESP(player)
    if highlights[player] then
        highlights[player]:Destroy()
        highlights[player] = nil
    end
    if billboards[player] then
        billboards[player].gui:Destroy()
        billboards[player] = nil
    end
    if connections[player] then
        connections[player]:Disconnect()
        connections[player] = nil
    end
end

-- 玩家管理
local function bindPlayer(player)
    -- 处理现有角色
    if player.Character then
        createESP(player)
    end
    
    -- 监听角色变化
    player.CharacterAdded:Connect(function(character)
        wait(1) -- 等待角色完全加载
        createESP(player)
    end)
    
    -- 监听角色移除
    player.CharacterRemoving:Connect(function()
        removeESP(player)
    end)
end

-- 初始化和清理
for _, player in ipairs(Players:GetPlayers()) do
    bindPlayer(player)
end

Players.PlayerAdded:Connect(bindPlayer)
Players.PlayerRemoving:Connect(removeESP)

-- 定期清理
RunService.Heartbeat:Connect(function()
    for player, highlight in pairs(highlights) do
        if not player.Parent or not highlight.Parent then
            removeESP(player)
        end
    end
end)