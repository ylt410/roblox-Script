--[[
╔═══════════════════════════════════════════════╗
║                                               ║
║                 by Ye Script                  ║
║                                               ║
╚═══════════════════════════════════════════════╝
]]
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- ========= 配置 =========
local QQ_NUMBER = "Your Discord invitation or something else"
local CONFIG_FILE = "loader_config.txt"
local LOAD_URL = "Your script repository link"

local blacklist = {
    ["name"] = true,
    ["name"] = true,
    ["name"] = true,
    ["name"] = true,
    ["name"] = true,
}

-- ========= 黑名单 =========
if blacklist[player.Name] then
    task.wait(1)
    player:Kick("You have been blacklisted. The information is:\n Our script has blacklisted you. Please try to contact the author.")
    return
end

-- ========= 文件 =========
local canSave = (writefile and readfile)

local function loadConfig()
    if not canSave then return false end
    if isfile and isfile(CONFIG_FILE) then
        return readfile(CONFIG_FILE) == "true"
    end
    return false
end

local function saveConfig()
    if canSave then
        writefile(CONFIG_FILE, "true")
    end
end

local function runScript()
    loadstring(game:HttpGet(LOAD_URL))()
end

-- ========= 已不再提示 =========
if loadConfig() then
    runScript()
    return
end

-- ========= UI =========
local gui = Instance.new("ScreenGui")
gui.Parent = game.CoreGui
gui.ResetOnSpawn = false

local blur = Instance.new("BlurEffect")
blur.Size = 18
blur.Parent = game.Lighting

-- 主框（真正居中）
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 320, 0, 200)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.BackgroundColor3 = Color3.fromRGB(20,20,20)
frame.BackgroundTransparency = 0.25
frame.Parent = gui

Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 16)

local stroke = Instance.new("UIStroke", frame)
stroke.Color = Color3.fromRGB(255,255,255)
stroke.Transparency = 0.7

-- 标题
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,40)
title.Text = "Join our Discord"
title.TextColor3 = Color3.new(1,1,1)
title.BackgroundTransparency = 1
title.Font = Enum.Font.GothamBold
title.TextSize = 18
title.Parent = frame

-- QQ
local qqLabel = Instance.new("TextLabel")
qqLabel.Size = UDim2.new(1,0,0,30)
qqLabel.Position = UDim2.new(0,0,0,40)
qqLabel.Text = "Discord "..QQ_NUMBER
qqLabel.TextColor3 = Color3.new(1,1,1)
qqLabel.BackgroundTransparency = 1
qqLabel.Parent = frame

-- 勾选
local checked = false

local checkbox = Instance.new("TextButton")
checkbox.Size = UDim2.new(0,18,0,18)
checkbox.Position = UDim2.new(0,20,0,90)
checkbox.BackgroundColor3 = Color3.fromRGB(40,40,40)
checkbox.Text = ""
checkbox.Parent = frame
Instance.new("UICorner", checkbox)

local checkText = Instance.new("TextLabel")
checkText.Size = UDim2.new(0,120,0,20)
checkText.Position = UDim2.new(0,42,0,88) -- ⭐ 靠近对齐
checkText.Text = "不再提示"
checkText.TextColor3 = Color3.new(1,1,1)
checkText.BackgroundTransparency = 1
checkText.TextXAlignment = Enum.TextXAlignment.Left
checkText.Parent = frame

checkbox.MouseButton1Click:Connect(function()
    checked = not checked
    checkbox.Text = checked and "✅" or ""
end)

-- 按钮样式
local function style(btn)
    btn.BackgroundColor3 = Color3.fromRGB(30,30,30)
    btn.TextColor3 = Color3.new(1,1,1)
    Instance.new("UICorner", btn)
end

-- 拒绝
local refuse = Instance.new("TextButton")
refuse.Size = UDim2.new(0.4,0,0,40)
refuse.Position = UDim2.new(0.1,0,1,-55)
refuse.Text = "No"
refuse.Parent = frame
style(refuse)

refuse.MouseButton1Click:Connect(function()
    if checked then saveConfig() end
    blur:Destroy()
    gui:Destroy()
    runScript()
end)

-- 加入QQ群
local join = Instance.new("TextButton")
join.Size = UDim2.new(0.4,0,0,40)
join.Position = UDim2.new(0.5,0,1,-55)
join.Text = "Copy the link"
join.Parent = frame
style(join)

join.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(QQ_NUMBER)
    end

    -- ⭐ 自动不再提示（关键改动）
    saveConfig()

    join.Text = "Copide"

    task.wait(0.5)

    blur:Destroy()
    gui:Destroy()
    runScript()
end)