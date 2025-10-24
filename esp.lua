local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local playerGui = LocalPlayer:WaitForChild("PlayerGui")

-- ================= 1. 初始全屏欢迎动画（第一个脚本核心） =================
do
    local welcomeGui = Instance.new("ScreenGui", playerGui)
    welcomeGui.Name = "InitialWelcomeGUI"

    local welcomeLabel = Instance.new("TextLabel", welcomeGui)
    welcomeLabel.Size = UDim2.new(0, 400, 0, 60)
    welcomeLabel.Position = UDim2.new(0.5, -200, 0.3, 0)
    welcomeLabel.BackgroundTransparency = 0.3
    welcomeLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    welcomeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    welcomeLabel.Font = Enum.Font.SourceSansBold
    welcomeLabel.TextSize = 28
    welcomeLabel.Text = "感谢使用环绕透视，您的游戏名：" .. LocalPlayer.Name .. "！"
    welcomeLabel.TextTransparency = 1

    -- 淡入动画
    local tweenIn = TweenService:Create(welcomeLabel, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0})
    tweenIn:Play()
    tweenIn.Completed:Wait()
    task.wait(2) -- 停留2秒
    -- 淡出动画
    local tweenOut = TweenService:Create(welcomeLabel, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {TextTransparency = 1})
    tweenOut:Play()
    tweenOut.Completed:Wait()
    welcomeGui:Destroy() -- 移除初始欢迎UI
end

-- ================= 2. ESP核心系统（第二个脚本核心，含二次欢迎动画） =================
-- ESP UI根节点（防止复活重置）
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ESP_UI"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- 可拖动ESP开关按钮
local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0, 140, 0, 36)
toggleButton.Position = UDim2.new(0, 10, 0, 10)
toggleButton.Text = "ESP by环绕阴乐"
toggleButton.Font = Enum.Font.SourceSansBold
toggleButton.TextSize = 18
toggleButton.BackgroundColor3 = Color3.fromRGB(120, 0, 200)
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.Active = true
toggleButton.Draggable = true
toggleButton.Parent = screenGui

-- 二次欢迎动画（从屏幕中央移到左上角后消失）
local miniWelcomeLabel = Instance.new("TextLabel")
miniWelcomeLabel.Size = UDim2.new(0, 300, 0, 30)
miniWelcomeLabel.Position = UDim2.new(0.5, -150, 0.5, -15)
miniWelcomeLabel.BackgroundTransparency = 0.3
miniWelcomeLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
miniWelcomeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
miniWelcomeLabel.Font = Enum.Font.SourceSansBold
miniWelcomeLabel.TextSize = 18
miniWelcomeLabel.Text = "感谢 " .. LocalPlayer.Name .. " 使用 环绕透视 by 抖音环绕阴乐"
miniWelcomeLabel.Parent = screenGui

-- 移动动画（到左上角）
local moveTween = TweenService:Create(miniWelcomeLabel, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0, 10, 0, 50)})
moveTween:Play()
-- 动画结束后3秒移除
moveTween.Completed:Connect(function()
    task.wait(3)
    miniWelcomeLabel:Destroy()
end)

-- ================= 3. ESP功能核心逻辑 =================
local espEnabled = true -- ESP默认开启
local highlights = {} -- 存储玩家高亮对象
local billboards = {} -- 存储玩家血条UI
local connections = {} -- 存储事件连接（防止内存泄漏）

-- 功能1：获取玩家团队色（无团队则为红色）
local function getTeamColor(player)
    return player.Team and player.Team.TeamColor.Color or Color3.fromRGB(255, 0, 0)
end

-- 功能2：ESP开关逻辑（点击按钮触发）
toggleButton.MouseButton1Click:Connect(function()
    espEnabled = not espEnabled
    -- 更新按钮状态
    toggleButton.Text = espEnabled and "ESP 开启" or "ESP 关闭"
    toggleButton.BackgroundColor3 = espEnabled and Color3.fromRGB(0, 120, 200) or Color3.fromRGB(120, 0, 200)
    -- 同步所有ESP元素状态
    for _, highlight in pairs(highlights) do
        if highlight and highlight.Parent then highlight.Enabled = espEnabled end
    end
    for _, data in pairs(billboards) do
        if data and data.gui then data.gui.Enabled = espEnabled end
    end
end)

-- 功能3：创建单个玩家的ESP（高亮+血条）
local function createESP(player)
    if player == LocalPlayer then return end -- 不显示本地玩家ESP
    local character = player.Character
    if not character then return end

    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local head = character:FindFirstChild("Head") or character.PrimaryPart
    if not humanoid or not head then return end -- 角色缺少关键部件时不创建

    -- 3.1 创建身体高亮（Outline+Fill）
    local highlight = Instance.new("Highlight")
    highlight.Name = "ESP_Highlight"
    highlight.Parent = character
    highlight.FillTransparency = 0.8 -- 半透明填充
    highlight.OutlineTransparency = 0 -- 不透明边框
    highlight.FillColor = getTeamColor(player)
    highlight.OutlineColor = getTeamColor(player)
    highlight.Enabled = espEnabled
    highlights[player] = highlight

    -- 3.2 创建头顶血条UI
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "ESP_Billboard"
    billboardGui.Size = UDim2.new(0, 200, 0, 50)
    billboardGui.Adornee = head -- 绑定到角色头部
    billboardGui.AlwaysOnTop = true -- 始终显示在最上层
    billboardGui.MaxDistance = 100 -- 超过100 studs不显示
    billboardGui.Parent = screenGui

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1 -- 透明背景
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.TextSize = 14
    textLabel.TextColor3 = getTeamColor(player)
    textLabel.TextStrokeTransparency = 0.5 -- 文字描边（防遮挡）
    textLabel.Text = string.format("%s\nHP: %d/%d", player.Name, humanoid.Health, humanoid.MaxHealth)
    textLabel.Parent = billboardGui

    -- 存储血条数据+监听血量变化
    billboards[player] = {gui = billboardGui, label = textLabel, humanoid = humanoid}
    connections[player] = humanoid.HealthChanged:Connect(function()
        if billboards[player] and billboards[player].label then
            billboards[player].label.Text = string.format("%s\nHP: %d/%d", player.Name, humanoid.Health, humanoid.MaxHealth)
        end
    end)
end

-- 功能4：移除单个玩家的ESP（防止内存泄漏）
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

-- 功能5：绑定玩家事件（角色加载/复活/移除）
local function bindPlayer(player)
    -- 处理已加载的角色
    if player.Character then createESP(player) end
    -- 角色复活时重新创建ESP（延迟1秒确保角色加载完成）
    player.CharacterAdded:Connect(function() task.wait(1) createESP(player) end)
    -- 角色移除时清理ESP
    player.CharacterRemoving:Connect(function() removeESP(player) end)
end

-- ================= 4. 初始化ESP系统 =================
-- 为已存在的玩家创建ESP
for _, player in ipairs(Players:GetPlayers()) do
    bindPlayer(player)
end
-- 监听新玩家加入
Players.PlayerAdded:Connect(bindPlayer)
-- 监听玩家离开（清理ESP）
Players.PlayerRemoving:Connect(removeESP)
-- 定期清理失效的ESP（防止角色异常时残留）
RunService.Heartbeat:Connect(function()
    for player, highlight in pairs(highlights) do
        if not player.Parent or not highlight.Parent then removeESP(player) end
    end
end)