

task.spawn(function()
    pcall(function()
        local AnalyticsPipeline = require(game:GetService("ReplicatedFirst"):WaitForChild("AnalyticsPipelineController"):WaitForChild("AnalyticsPipeline"))
        hookfunction(AnalyticsPipeline, function() end)
    end)
end)
pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/adoniscries/main/Source.lua", true))()
end)

if not getmetatable or not setmetatable or not type or not select or type(select(2, pcall(getmetatable, setmetatable({}, {__index = function(self, ...) while true do end end})))['__index']) ~= 'function' or not pcall or not debug or not rawget or not rawset or not pcall(rawset,{}," "," ") or not select or not getfenv or select(1, pcall(getfenv, 69)) == true or not select(2, pcall(rawget, debug, "info")) or #(((select(2, pcall(rawget, debug, "info")))(getfenv, "n")))<=1 or #(((select(2, pcall(rawget, debug, "info")))(print, "n")))<=1 or not (select(2, pcall(rawget, debug, "info")))(print, "s") == "[C]" or not (select(2, pcall(rawget, debug, "info")))(require, "s") == "[C]" or (select(2, pcall(rawget, debug, "info")))((function()end), "s") == "[C]" then
  return REVEAL_HINT_STACK and tostring(ANTI_ENV_LOG_MESSAGE) or nil
end

if not game:IsLoaded() then
    game.Loaded:Wait()
end

if not syn or not protectgui then
    getgenv().protectgui = function() end
end

local Camera = workspace.CurrentCamera

local SilentAimSettings = {
    Enabled = false,
    ClassName = "Universal Silent Aim",
    ToggleKey = "RightAlt",
    TeamCheck = false,
    VisibleCheck = false,
    AdvancedWallCheck = false,
    IgnoreTransparent = true,
    TargetPart = "HumanoidRootPart",
    SilentAimMethod = "Raycast",
    AimMethod = "aimbot",
    AimbotFOVRadius = 200,
    AimbotPredictionFactor = 0.042,
    AimbotAimSpeed = 10,
    FOVRadius = 130,
    FOVThickness = 1,
    FOVTransparency = 0.5,
    FOVVisible = true,
    FOVFillEnabled = false,
    FOVFillTransparency = 0.8,
    FOVFillGradientEnabled = false,
    FOVFillGradientSpeed = 2,
    FOVFillReflectionEnabled = false,
    FOVFillReflectionSpeed = 2,
    DynamicFOVScale = false,
    InitialCameraFOV = 70,
    FreeFOVEnabled = false,
    FreeFOVSingleMode = false,
    FreeFOVSmoothing = 0.2,
    FreeFOVAlwaysShow = false,
    FreeFOVStartScaleDistance = 50,
    FreeFOVScaleInterval = 10,
    FreeFOVMinSize = 15,
    FreeFOVMaxSize = 300,
    FreeFOVScaleFactor = 0.1,
    ShowSilentAimTarget = false,
    MouseHitPrediction = false,
    MouseHitPredictionAmount = 0.165,
    HitChance = 100,
    HeadshotChanceEnabled = false,
    HeadshotChance = 0,
    FixedFOV = true,
    TargetIndicatorRadius = 20,
    CrosshairLength = 30,
    CrosshairGap = 5,
    IndicatorRotationEnabled = false,
    IndicatorRotationSpeed = 1,
    MaxDistance = 500,
    PriorityMode = "准星最近",
    TargetInfoStyle = "面板",
    ShowTargetName = true,
    ShowTargetHealth = true,
    ShowTargetDistance = true,
    ShowTargetCategory = false,
    ShowDamageNotifier = false,
    HitBulletTracerEnabled = false,
    HitBulletTracerMode = "Beam",
    HitBulletTracerTexture = "Laser",
    HitBulletTracerLifetime = 0.6,
    HitBulletTracerColor = Color3.fromRGB(0, 213, 255),
    HitBulletTracerTransparency = 0,
    HitBulletTracerOutlineColor = Color3.fromRGB(0, 0, 0),
    HitBulletTracerOutlineTransparency = 0,
    HitParticleEnabled = false,
    HitParticleStyle = "Sparks",
    HitParticleColor = Color3.fromRGB(255, 255, 255),
    HitParticleTransparency = 0,
    HitChamsEnabled = false,
    HitChamsStyle = "Outline",
    HitChamsColor = Color3.fromRGB(255, 255, 255),
    HitChamsTransparency = 0,
    HitChamsOnlyLast = false,
    HitChamsFadeOut = true,
    HitChamsLifetime = 1.5,
    HighlightEnabled = false,
    IndependentPanelPosition = "200,200",
    IndependentPanelPinned = false,
    LeakAndHitMode = false,
    Wallbang = false,
    WallbangMode = "返回欺骗 / 白名单",
    EnableNameTargeting = false,
    AdvancedFiltering = false,
    WhitelistedNames = {},
    BlacklistedNames = {},
    ShowTracer = false,
    Tracer_Y_Offset = 0,
    WhitelistPath = {},
    IndicatorBreathingEnabled = true,
    IndicatorBreathingSpeed = 1,
    IndicatorBreathingMin = 0.8,
    IndicatorBreathingMax = 1.2,
    ThreeLineCrosshairEnabled = true,
    ThreeLineCrosshairLength = 30,
    ThreeLineCrosshairGap = 5,
    TriggerbotEnabled = false,
    TriggerbotCPS = 10,
    ShowMobileTriggerButton = false,
    MobileTriggerButtonPosition = math.floor(Camera.ViewportSize.X / 2) .. "," .. math.floor(Camera.ViewportSize.Y / 2),
    MobileTriggerButtonPinned = false,
    TriggerbotButtonSize = 65,
    TriggerbotOffsetX = 0,
    TriggerbotOffsetY = 0,
    ShowClickDebug = false,
    
    AimlockEnabled = false,
    AimlockKey = "E",
    AimlockSmoothness = 1,
    AimlockSnapCamera = true,
    ShowMobileAimlockButton = false,
    AimlockButtonHoldMode = true,
    AimlockButtonSize = 65,
    AimlockHoldTime = 0.2,
    MobileAimlockButtonPosition = math.floor(Camera.ViewportSize.X / 2 - 80) .. "," .. math.floor(Camera.ViewportSize.Y / 2),
    MobileAimlockButtonPinned = false,
    
    LockOnAimed = false,
    LockOnAimedWallCheck = true,
    LockOnAimedPriority = "准星最近",
    LockOnAimedSensitivityX = 20,
    LockOnAimedSensitivityY = 20,
    AA_Enabled = false,
    AA_UpsideDown = false,
    AA_Yaw = "Backward",
    AA_Jitter = 90,
    Desync_Enabled = false,
    Desync_Ticks = 3,
    Desync_Visualize = false,
    Desync_Color = Color3.fromRGB(255, 85, 255),
    CharMaterialMode = "ForceField",
    AutoBhopEnabled = false,
    BhopBoostAmount = 0,
    ShowMobileBhopButton = false,
    MobileBhopButtonPosition = math.floor(Camera.ViewportSize.X / 2 + 80) .. "," .. math.floor(Camera.ViewportSize.Y / 2),
    MobileBhopButtonPinned = false,
    
    RadarEnabled = false,
    RadarRange = 200,
    RadarSize = 150
}

SilentAimSettings.InitialCameraFOV = Camera.FieldOfView
SensoryESPInstance = nil
JujuWorldSettings = {
    Atmosphere = false, AtmosphereColor = Color3.fromRGB(238,147,237), AtmosphereDecay = Color3.new(1,1,1), AtmosphereDensity = 0.4, AtmosphereGlare = 10, AtmosphereHaze = 10,
    Brightness = false, BrightnessValue = -3, Saturation = false, SaturationValue = 0, Exposure = false, ExposureValue = -0.5, Ambient = false, AmbientColor = Color3.new(1,1,1), Time = false, TimeValue = 3, Fog = false, FogColor = Color3.new(1,1,1), FogStart = 0, FogEnd = 800
}
getgenv().SilentAimSettings = SilentAimSettings
local MainFileName = "UniversalSilentAim"

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local Debris = game:GetService("Debris")
local CoreGui = game:GetService("CoreGui")
Lighting = game:GetService("Lighting")
local PathfindingService = game:GetService("PathfindingService")

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local GetPlayers = Players.GetPlayers
local WorldToViewportPoint = Camera.WorldToViewportPoint
local FindFirstChild = game.FindFirstChild
local RenderStepped = RunService.RenderStepped
local GetMouseLocation = UserInputService.GetMouseLocation

local resume = coroutine.resume
local create = coroutine.create

local ValidTargetParts = {"Head", "HumanoidRootPart"}
local PredictionAmount = 0.165

local currentTargetPart = nil
local currentHighlight = nil
local currentRotationAngle = 0
fovFillGradientAngle = 45
fovFillReflectionPhase = 0
local npcList = {}
local targetMap = {}
local avatarCache = {}
local recentShots = {}
local pendingDamage = {}

local lockedTargetObject = nil
local isAimlockActiveByButton = false

local currentSingleFOVPos = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
local currentSingleFOVSize = 0

local target_indicator_circle = Drawing.new("Circle")
target_indicator_circle.Visible = false; target_indicator_circle.ZIndex = 1000; target_indicator_circle.Thickness = 2; target_indicator_circle.Filled = false
local target_indicator_lines = {}
for i = 1, 5 do local line = Drawing.new("Line"); line.Visible = false; line.ZIndex = 1000; line.Thickness = 2; table.insert(target_indicator_lines, line) end
local tracer_line = Drawing.new("Line")
tracer_line.Visible = false; tracer_line.ZIndex = 998; tracer_line.Color = Color3.fromRGB(255, 255, 0); tracer_line.Thickness = 1; tracer_line.Transparency = 1

local DamageNotifierGui = Instance.new("ScreenGui")
DamageNotifierGui.Name = "DamageNotifierGui"
DamageNotifierGui.ResetOnSpawn = false
DamageNotifierGui.IgnoreGuiInset = true
DamageNotifierGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
DamageNotifierGui.DisplayOrder = 1001
DamageNotifierGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local overhead_info_texts = {
    Name = Drawing.new("Text"),
    Health = Drawing.new("Text"),
    Distance = Drawing.new("Text"),
    Category = Drawing.new("Text")
}
for _, text in pairs(overhead_info_texts) do
    text.Visible = false; text.ZIndex = 1001; text.Font = Drawing.Fonts.Plex; text.Size = 14; text.Color = Color3.fromRGB(255, 255, 255); text.Center = true; text.Outline = true
end

local panel_info_bg = Drawing.new("Square")
panel_info_bg.Visible = false; panel_info_bg.ZIndex = 1002; panel_info_bg.Color = Color3.fromRGB(0, 0, 0); panel_info_bg.Thickness = 0; panel_info_bg.Filled = true; panel_info_bg.Transparency = 0.5
local panel_info_texts = {
    Name = Drawing.new("Text"),
    Health = Drawing.new("Text"),
    Distance = Drawing.new("Text"),
    Category = Drawing.new("Text")
}
for _, text in pairs(panel_info_texts) do
    text.Visible = false; text.ZIndex = 1003; text.Font = Drawing.Fonts.Plex; text.Size = 14; text.Color = Color3.fromRGB(255, 255, 255); text.Center = false; text.Outline = true
end

local FOVCircleGui = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
FOVCircleGui.Name = "FOVCircleGui"; FOVCircleGui.ResetOnSpawn = false; FOVCircleGui.IgnoreGuiInset = true; FOVCircleGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local FOVCircleFrame = Instance.new("Frame", FOVCircleGui)
FOVCircleFrame.Name = "FOVCircleFrame"; FOVCircleFrame.AnchorPoint = Vector2.new(0.5, 0.5); FOVCircleFrame.Position = UDim2.fromScale(0.5, 0.5); FOVCircleFrame.BackgroundTransparency = 1
local FOVStroke = Instance.new("UIStroke", FOVCircleFrame)
FOVStroke.Name = "FOVStroke"; FOVStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border; FOVStroke.Thickness = SilentAimSettings.FOVThickness; FOVStroke.Transparency = SilentAimSettings.FOVTransparency
local FOVCorner = Instance.new("UICorner", FOVCircleFrame)
FOVCorner.Name = "FOVCorner"; FOVCorner.CornerRadius = UDim.new(1, 0)
FOVFillGradient = Instance.new("UIGradient", FOVCircleFrame)
FOVFillGradient.Name = "FOVFillGradient"
FOVFillGradient.Rotation = 45
FOVFillGradient.Transparency = NumberSequence.new(0)
FOVFillReflectionLayer = Instance.new("Frame", FOVCircleFrame)
FOVFillReflectionLayer.Name = "FOVFillReflectionLayer"
FOVFillReflectionLayer.AnchorPoint = Vector2.new(0.5, 0.5)
FOVFillReflectionLayer.Position = UDim2.fromScale(0.5, 0.5)
FOVFillReflectionLayer.Size = UDim2.fromScale(1, 1)
FOVFillReflectionLayer.BackgroundColor3 = Color3.new(1, 1, 1)
FOVFillReflectionLayer.BackgroundTransparency = 0
FOVFillReflectionLayer.BorderSizePixel = 0
FOVFillReflectionLayer.Visible = false
FOVFillReflectionCorner = Instance.new("UICorner", FOVFillReflectionLayer)
FOVFillReflectionCorner.CornerRadius = UDim.new(1, 0)
FOVFillReflection = Instance.new("UIGradient", FOVFillReflectionLayer)
FOVFillReflection.Name = "FOVFillReflection"
FOVFillReflection.Rotation = 0

local freeFOVFrames = {}
local function getFreeFOVFrame(index)
    if not freeFOVFrames[index] then
        local frame = Instance.new("Frame")
        frame.AnchorPoint = Vector2.new(0.5, 0.5)
        frame.BackgroundTransparency = 1
        local corner = Instance.new("UICorner", frame)
        corner.CornerRadius = UDim.new(1, 0)
        local stroke = Instance.new("UIStroke", frame)
        stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        stroke.Thickness = SilentAimSettings.FOVThickness
        stroke.Transparency = SilentAimSettings.FOVTransparency
        frame.Parent = FOVCircleGui
        freeFOVFrames[index] = {Frame = frame, Stroke = stroke}
    end
    return freeFOVFrames[index]
end

local IndependentPanelGui = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
IndependentPanelGui.Name = "IndependentPanelGui"; IndependentPanelGui.ResetOnSpawn = false; IndependentPanelGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local IndependentPanelFrame = Instance.new("Frame", IndependentPanelGui)
IndependentPanelFrame.Name = "PanelFrame"; IndependentPanelFrame.Size = UDim2.fromOffset(160, 100); IndependentPanelFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30); IndependentPanelFrame.BackgroundTransparency = 0.3; IndependentPanelFrame.BorderSizePixel = 1; IndependentPanelFrame.BorderColor3 = Color3.new(1,1,1)
IndependentPanelFrame.Visible = false; IndependentPanelFrame.Active = true
local IPCorner = Instance.new("UICorner", IndependentPanelFrame); IPCorner.CornerRadius = UDim.new(0, 4)
local IPListLayout = Instance.new("UIListLayout", IndependentPanelFrame)
IPListLayout.Padding = UDim.new(0, 5); IPListLayout.SortOrder = Enum.SortOrder.LayoutOrder; IPListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center; IPListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

local independent_panel_texts = {}
for i, name in ipairs({"Name", "Health", "Distance", "Category"}) do
    local label = Instance.new("TextLabel", IndependentPanelFrame)
    label.Name = name; label.Size = UDim2.new(1, -10, 0, 15); label.BackgroundTransparency = 1
    label.Font = Enum.Font.SourceSans; label.TextSize = 14; label.TextColor3 = Color3.new(1,1,1); label.TextXAlignment = Enum.TextXAlignment.Left; label.LayoutOrder = i
    independent_panel_texts[name] = label
end
IndependentPanelFrame.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 and IndependentPanelFrame.Draggable then IndependentPanelFrame.Position = UDim2.fromOffset(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) end end)
IndependentPanelFrame.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 and IndependentPanelFrame.Draggable then SilentAimSettings.IndependentPanelPosition = IndependentPanelFrame.Position.X.Offset .. "," .. IndependentPanelFrame.Position.Y.Offset end end)

-- ═══════════════════════════════════════════════════════════════════
-- DYNAMIC ISLAND MODULE - 灵动岛目标显示 (重构版)
-- ═══════════════════════════════════════════════════════════════════
local DynamicIsland = (function()
local DynamicIsland = {}
DynamicIsland.Enabled = true
DynamicIsland.freeFOVTarget = nil

local TweenService = game:GetService("TweenService")

local DI_ScreenGui = Instance.new("ScreenGui")
DI_ScreenGui.Name = "DynamicIslandGui"
DI_ScreenGui.ResetOnSpawn = false
DI_ScreenGui.IgnoreGuiInset = true
DI_ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
DI_ScreenGui.DisplayOrder = 999
DI_ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local COLLAPSED_SIZE = 14
local EXPANDED_WIDTH = 240
local EXPANDED_HEIGHT = 60
local GLASS_TRANSPARENCY = 0.28
local ISLAND_CORNER = UDim.new(0, 24)

local diContainer = Instance.new("Frame")
diContainer.Name = "IslandContainer"
diContainer.AnchorPoint = Vector2.new(0.5, 0)
diContainer.Position = UDim2.new(0.5, 0, 0, 6)
diContainer.Size = UDim2.fromOffset(COLLAPSED_SIZE, COLLAPSED_SIZE)
diContainer.BackgroundColor3 = Color3.new(0, 0, 0)
diContainer.BackgroundTransparency = 0
diContainer.BorderSizePixel = 0
diContainer.ClipsDescendants = true
diContainer.ZIndex = 100
diContainer.Parent = DI_ScreenGui

local diCorner = Instance.new("UICorner", diContainer)
diCorner.CornerRadius = UDim.new(0.5, 0)

local diGlassGradient = Instance.new("UIGradient", diContainer)
diGlassGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(48, 52, 61)),
    ColorSequenceKeypoint.new(0.42, Color3.fromRGB(27, 30, 37)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 12, 16)),
})
diGlassGradient.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.06),
    NumberSequenceKeypoint.new(0.5, 0.18),
    NumberSequenceKeypoint.new(1, 0.04),
})
diGlassGradient.Rotation = 112

local diHighlightStroke = Instance.new("UIStroke", diContainer)
diHighlightStroke.Color = Color3.fromRGB(255, 255, 255)
diHighlightStroke.Thickness = 0.8
diHighlightStroke.Transparency = 1
diHighlightStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local DI_SHADOW_STROKE_MODE = pcall(function()
    return Enum.ApplyStrokeMode.Outer
end) and Enum.ApplyStrokeMode.Outer or Enum.ApplyStrokeMode.Border

local diShadowStroke = Instance.new("UIStroke", diContainer)
diShadowStroke.Color = Color3.new(0, 0, 0)
diShadowStroke.Thickness = 6
diShadowStroke.Transparency = 1
diShadowStroke.ApplyStrokeMode = DI_SHADOW_STROKE_MODE

local diGlassReflection = Instance.new("Frame")
diGlassReflection.Name = "GlassReflection"
diGlassReflection.Size = UDim2.fromScale(1, 1)
diGlassReflection.BackgroundColor3 = Color3.fromRGB(225, 235, 255)
diGlassReflection.BackgroundTransparency = 1
diGlassReflection.BorderSizePixel = 0
diGlassReflection.ZIndex = 101
diGlassReflection.Parent = diContainer
Instance.new("UICorner", diGlassReflection).CornerRadius = ISLAND_CORNER

local diReflectionGradient = Instance.new("UIGradient", diGlassReflection)
diReflectionGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(188, 210, 238)),
    ColorSequenceKeypoint.new(0.48, Color3.fromRGB(255, 255, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(122, 151, 190)),
})
diReflectionGradient.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.98),
    NumberSequenceKeypoint.new(0.24, 0.90),
    NumberSequenceKeypoint.new(0.52, 0.97),
    NumberSequenceKeypoint.new(0.78, 0.92),
    NumberSequenceKeypoint.new(1, 1),
})
diReflectionGradient.Rotation = 24
diReflectionGradient.Offset = Vector2.new(-0.18, 0)

local diAvatarBg = Instance.new("Frame")
diAvatarBg.Name = "AvatarBg"
diAvatarBg.Size = UDim2.fromOffset(36, 36)
diAvatarBg.AnchorPoint = Vector2.new(0, 0.5)
diAvatarBg.Position = UDim2.new(0, 10, 0.5, 0)
diAvatarBg.BackgroundColor3 = Color3.fromRGB(26, 26, 33)
diAvatarBg.BackgroundTransparency = 1
diAvatarBg.BorderSizePixel = 0
diAvatarBg.ZIndex = 102
diAvatarBg.Parent = diContainer
Instance.new("UICorner", diAvatarBg).CornerRadius = UDim.new(1, 0)

local diAvatarImage = Instance.new("ImageLabel")
diAvatarImage.Name = "AvatarImage"
diAvatarImage.Size = UDim2.fromScale(1, 1)
diAvatarImage.BackgroundTransparency = 1
diAvatarImage.Image = ""
diAvatarImage.ImageTransparency = 1
diAvatarImage.ZIndex = 103
diAvatarImage.Parent = diAvatarBg
Instance.new("UICorner", diAvatarImage).CornerRadius = UDim.new(1, 0)

local diNameLabel = Instance.new("TextLabel")
diNameLabel.Name = "NameLabel"
diNameLabel.Size = UDim2.new(1, -80, 0, 13)
diNameLabel.Position = UDim2.new(0, 56, 0, 4)
diNameLabel.BackgroundTransparency = 1
diNameLabel.Text = ""
diNameLabel.TextColor3 = Color3.fromRGB(235, 236, 240)
diNameLabel.Font = Enum.Font.GothamBold
diNameLabel.TextSize = 12
diNameLabel.TextTransparency = 1
diNameLabel.TextXAlignment = Enum.TextXAlignment.Left
diNameLabel.TextYAlignment = Enum.TextYAlignment.Top
diNameLabel.TextTruncate = Enum.TextTruncate.AtEnd
diNameLabel.ZIndex = 104
diNameLabel.Parent = diContainer

local diUsernameLabel = Instance.new("TextLabel")
diUsernameLabel.Name = "UsernameLabel"
diUsernameLabel.Size = UDim2.new(1, -80, 0, 10)
diUsernameLabel.Position = UDim2.new(0, 56, 0, 17)
diUsernameLabel.BackgroundTransparency = 1
diUsernameLabel.Text = ""
diUsernameLabel.TextColor3 = Color3.fromRGB(152, 154, 164)
diUsernameLabel.Font = Enum.Font.Gotham
diUsernameLabel.TextSize = 9
diUsernameLabel.TextTransparency = 1
diUsernameLabel.TextXAlignment = Enum.TextXAlignment.Left
diUsernameLabel.TextYAlignment = Enum.TextYAlignment.Top
diUsernameLabel.TextTruncate = Enum.TextTruncate.AtEnd
diUsernameLabel.ZIndex = 104
diUsernameLabel.Parent = diContainer

local diStatusLabel = Instance.new("TextLabel")
diStatusLabel.Name = "StatusLabel"
diStatusLabel.Size = UDim2.new(0, 64, 0, 12)
diStatusLabel.AnchorPoint = Vector2.new(1, 0)
diStatusLabel.Position = UDim2.new(1, -12, 0, 5)
diStatusLabel.BackgroundTransparency = 1
diStatusLabel.Text = ""
diStatusLabel.TextColor3 = Color3.fromRGB(170, 175, 185)
diStatusLabel.Font = Enum.Font.GothamBold
diStatusLabel.TextSize = 10
diStatusLabel.TextTransparency = 1
diStatusLabel.TextXAlignment = Enum.TextXAlignment.Right
diStatusLabel.ZIndex = 104
diStatusLabel.Parent = diContainer

local diHealthLabel = Instance.new("TextLabel")
diHealthLabel.Name = "HealthLabel"
diHealthLabel.Size = UDim2.new(1, -80, 0, 11)
diHealthLabel.Position = UDim2.new(0, 56, 0, 29)
diHealthLabel.BackgroundTransparency = 1
diHealthLabel.Text = ""
diHealthLabel.TextColor3 = Color3.fromRGB(180, 182, 192)
diHealthLabel.Font = Enum.Font.Gotham
diHealthLabel.TextSize = 10
diHealthLabel.TextTransparency = 1
diHealthLabel.TextXAlignment = Enum.TextXAlignment.Left
diHealthLabel.TextYAlignment = Enum.TextYAlignment.Top
diHealthLabel.ZIndex = 104
diHealthLabel.Parent = diContainer

local diBarBg = Instance.new("Frame")
diBarBg.Name = "HealthBarBg"
diBarBg.Size = UDim2.new(1, -80, 0, 7)
diBarBg.Position = UDim2.new(0, 56, 0, 42)
diBarBg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
diBarBg.BackgroundTransparency = 1
diBarBg.BorderSizePixel = 0
diBarBg.ZIndex = 102
diBarBg.Parent = diContainer
Instance.new("UICorner", diBarBg).CornerRadius = UDim.new(0, 3)

local diBarFill = Instance.new("Frame")
diBarFill.Name = "HealthBarFill"
diBarFill.Size = UDim2.new(1, 0, 1, 0)
diBarFill.BackgroundColor3 = Color3.fromRGB(92, 216, 102)
diBarFill.BackgroundTransparency = 1
diBarFill.BorderSizePixel = 0
diBarFill.ZIndex = 103
diBarFill.Parent = diBarBg
Instance.new("UICorner", diBarFill).CornerRadius = UDim.new(0, 3)

local diState = "collapsed"
local diTweens = {}
local diTargetKey = nil
local diTargetPlayer = nil
local diAvatarCache = {}
local diAvatarLoading = {}
local diPendingApply = nil
local diHp = -1
local diMaxHp = -1
local diDist = -1
local diStatus = ""
local diConnections = {}
local diSetValues
local diRenderHealthLine
local diUpdateStatus

local function diTweenProp(obj, props, dur, style, dir)
    local tweenMap = diTweens[obj] or {}
    for prop, goal in pairs(props) do
        if tweenMap[prop] then tweenMap[prop]:Cancel() end
        local t = TweenService:Create(obj, TweenInfo.new(dur or 0.25, style or Enum.EasingStyle.Quint, dir or Enum.EasingDirection.Out), { [prop] = goal })
        t:Play()
        tweenMap[prop] = t
    end
    diTweens[obj] = tweenMap
end

local diFadeItems = {
    { diAvatarBg, "bg" },
    { diAvatarImage, "image" },
    { diNameLabel, "text" },
    { diUsernameLabel, "text" },
    { diStatusLabel, "text" },
    { diHealthLabel, "text" },
    { diBarBg, "bg" },
    { diBarFill, "bg" },
}

local function diFadeContent(toTrans, dur)
    for _, item in ipairs(diFadeItems) do
        local obj, kind = item[1], item[2]
        if kind == "text" then
            diTweenProp(obj, { TextTransparency = toTrans }, dur)
        elseif kind == "image" then
            diTweenProp(obj, { ImageTransparency = toTrans }, dur)
        else
            diTweenProp(obj, { BackgroundTransparency = toTrans }, dur)
        end
    end
end

local function diHealthColor(ratio)
    if ratio > 0.6 then
        return Color3.fromRGB(92, 216, 102)
    elseif ratio > 0.3 then
        return Color3.fromRGB(240, 196, 60)
    else
        return Color3.fromRGB(236, 66, 66)
    end
end

local function diLoadAvatar(userId)
    if diAvatarLoading[userId] then return end
    diAvatarLoading[userId] = true
    task.spawn(function()
        local url = ""
        for attempt = 1, 3 do
            local ok, content, isReady = pcall(Players.GetUserThumbnailAsync, Players, userId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
            if ok and type(content) == "string" and content ~= "" and isReady then
                url = content
                break
            end
            task.wait(0.8)
        end
        diAvatarLoading[userId] = nil
        if url ~= "" then
            diAvatarCache[userId] = url
            if diTargetKey == "P" .. userId then
                diAvatarImage.Image = url
                diTweenProp(diAvatarImage, { ImageTransparency = 0 }, 0.2)
            end
        elseif diTargetKey == "P" .. userId then
            diAvatarImage.Image = ""
        end
    end)
end

local function diApplyTargetInfo(player, character, humanoid, localRoot)
    local displayName = ""
    local username = ""
    local userId = nil
    if player and player:IsA("Player") then
        userId = player.UserId
        displayName = tostring(player.DisplayName ~= "" and player.DisplayName or player.Name)
        username = "@" .. tostring(player.Name)
    elseif character then
        displayName = tostring(character.Name)
        username = "@" .. tostring(character.Name)
    end
    diNameLabel.Text = displayName
    diUsernameLabel.Text = username

    if userId then
        local cached = diAvatarCache[userId]
        diAvatarImage.Image = cached or ""
        if not cached then
            diLoadAvatar(userId)
        end
    else
        diAvatarImage.Image = ""
    end

    diHp = -1
    diMaxHp = -1
    diDist = -1
    diSetValues(character, humanoid, localRoot)
    diUpdateStatus()
end

diSetValues = function(character, humanoid, localRoot)
    local maxHealth = humanoid and humanoid.MaxHealth or 1
    local health = humanoid and humanoid.Health or 0
    local ratio = maxHealth > 0 and math.clamp(health / maxHealth, 0, 1) or 0

    if math.floor(health) ~= diHp or math.floor(maxHealth) ~= diMaxHp then
        diHp = math.floor(health)
        diMaxHp = math.floor(maxHealth)
        diTweenProp(diBarFill, { Size = UDim2.new(ratio, 0, 1, 0) }, 0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        diTweenProp(diBarFill, { BackgroundColor3 = diHealthColor(ratio) }, 0.25)
        diRenderHealthLine()
    end

    local root = character and character:FindFirstChild("HumanoidRootPart")
    local dist = diDist
    if root and localRoot then
        dist = math.floor((localRoot.Position - root.Position).Magnitude)
    end
    if dist ~= diDist then
        diDist = dist
        diRenderHealthLine()
    end
end

diRenderHealthLine = function()
    diHealthLabel.Text = string.format("HP %d/%d · %dm", diHp, diMaxHp, diDist)
end

local function diGetToggles()
    local toggles = getgenv and getgenv().Toggles
    if type(toggles) ~= "table" then
        toggles = Toggles
    end
    if type(toggles) ~= "table" then
        toggles = {}
    end
    return toggles
end

diUpdateStatus = function()
    local statusText = ""
    local statusColor = Color3.fromRGB(170, 175, 185)
    local toggles = diGetToggles()
    local aimlockOn = lockedTargetObject ~= nil or isAimlockActiveByButton or (toggles.AimlockToggle and toggles.AimlockToggle.Value) or false
    local aimOn = (toggles.EnabledToggle and toggles.EnabledToggle.Value) or (toggles.TriggerbotToggle and toggles.TriggerbotToggle.Value) or false
    if aimlockOn then
        statusText = "锁定中"
        statusColor = Color3.fromRGB(150, 230, 160)
    elseif aimOn then
        statusText = "瞄准中"
        statusColor = Color3.fromRGB(170, 175, 185)
    end
    if statusText ~= diStatus then
        diStatus = statusText
        diStatusLabel.Text = statusText
        diStatusLabel.TextColor3 = statusColor
    end
end

local function diUpdateTarget(player, character, humanoid, localRoot)
    local key = player and ("P" .. tostring(player.UserId)) or ("C" .. tostring(character))
    if key ~= diTargetKey then
        diTargetKey = key
        diTargetPlayer = player
        if diPendingApply then
            task.cancel(diPendingApply)
            diPendingApply = nil
        end
        diFadeContent(1, 0.1)
        diPendingApply = task.delay(0.13, function()
            if diTargetKey ~= key then return end
            pcall(function()
                diApplyTargetInfo(player, character, humanoid, localRoot)
                diFadeContent(0, 0.22)
            end)
            diPendingApply = nil
        end)
    else
        diSetValues(character, humanoid, localRoot)
        diUpdateStatus()
    end
end

local function diToBall()
    if diState == "collapsed" then return end
    diState = "collapsed"
    diTargetKey = nil
    diTargetPlayer = nil
    if diPendingApply then
        task.cancel(diPendingApply)
        diPendingApply = nil
    end
    diFadeContent(1, 0.12)
    diTweenProp(diContainer, { Size = UDim2.fromOffset(COLLAPSED_SIZE, COLLAPSED_SIZE), BackgroundColor3 = Color3.new(0, 0, 0), BackgroundTransparency = 0 }, 0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
    diTweenProp(diCorner, { CornerRadius = UDim.new(0.5, 0) }, 0.3)
    diTweenProp(diGlassReflection, { BackgroundTransparency = 1 }, 0.18)
    diTweenProp(diReflectionGradient, { Offset = Vector2.new(-0.18, 0) }, 0.22)
    diTweenProp(diHighlightStroke, { Transparency = 1 }, 0.2)
    diTweenProp(diShadowStroke, { Transparency = 1 }, 0.2)
end

local function diToIsland()
    if diState == "expanded" then return end
    diState = "expanded"
    diTweenProp(diContainer, { Size = UDim2.fromOffset(EXPANDED_WIDTH, EXPANDED_HEIGHT), BackgroundColor3 = Color3.fromRGB(44, 48, 57), BackgroundTransparency = GLASS_TRANSPARENCY }, 0.34, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
    diTweenProp(diCorner, { CornerRadius = ISLAND_CORNER }, 0.34)
    diTweenProp(diGlassReflection, { BackgroundTransparency = 0.76 }, 0.38)
    diTweenProp(diReflectionGradient, { Offset = Vector2.new(0.12, 0) }, 0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
    diTweenProp(diHighlightStroke, { Transparency = 0.9 }, 0.3)
    diTweenProp(diShadowStroke, { Transparency = 0.86 }, 0.3)
end

local function diValidateTarget(targetChar)
    if not targetChar or not targetChar.Parent then return nil end
    local localChar = LocalPlayer.Character
    if not localChar then return nil end
    local localRoot = localChar:FindFirstChild("HumanoidRootPart")
    if not localRoot then return nil end
    local humanoid = targetChar:FindFirstChildOfClass("Humanoid")
    if not humanoid or humanoid.Health <= 0 then return nil end
    local player = Players:GetPlayerFromCharacter(targetChar)
    return player, targetChar, humanoid, localRoot
end

local function diRefresh(targetChar)
    if not DynamicIsland.Enabled then
        diToBall()
        return
    end
    local displayTarget = targetChar
    if not displayTarget and SilentAimSettings.FreeFOVEnabled and SilentAimSettings.FreeFOVSingleMode then
        displayTarget = DynamicIsland.freeFOVTarget
    end
    local player, character, humanoid, localRoot = diValidateTarget(displayTarget)
    if not character then
        diToBall()
        return
    end
    diToIsland()
    diUpdateTarget(player, character, humanoid, localRoot)
end

local function diCleanup()
    for _, conn in ipairs(diConnections) do
        if conn and conn.Connected then conn:Disconnect() end
    end
    diConnections = {}
    if diPendingApply then
        task.cancel(diPendingApply)
        diPendingApply = nil
    end
    if DI_ScreenGui and DI_ScreenGui.Parent then DI_ScreenGui:Destroy() end
end
DynamicIsland.Refresh = diRefresh
DynamicIsland.Cleanup = diCleanup
return DynamicIsland
end)()
-- ═══════════════════════════════════════════════════════════════════
-- END DYNAMIC ISLAND MODULE
-- ═══════════════════════════════════════════════════════════════════-- ═══════════════════════════════════════════════════════════════════

local MobileTriggerGui = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
MobileTriggerGui.Name = "MobileTriggerGui"
MobileTriggerGui.ResetOnSpawn = false
MobileTriggerGui.IgnoreGuiInset = true
MobileTriggerGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local MobileTriggerButton = Instance.new("TextButton", MobileTriggerGui)
MobileTriggerButton.Name = "TriggerButton"
MobileTriggerButton.AnchorPoint = Vector2.new(0.5, 0.5)
MobileTriggerButton.Size = UDim2.fromOffset(SilentAimSettings.TriggerbotButtonSize, SilentAimSettings.TriggerbotButtonSize)
MobileTriggerButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MobileTriggerButton.BackgroundTransparency = 0.2
MobileTriggerButton.BorderSizePixel = 0
MobileTriggerButton.Text = "自动扳机\n[关]"
MobileTriggerButton.TextColor3 = Color3.fromRGB(255, 80, 80)
MobileTriggerButton.Font = Enum.Font.GothamBold
MobileTriggerButton.TextSize = 13
MobileTriggerButton.Visible = false
MobileTriggerButton.Active = true

local MTCorner = Instance.new("UICorner", MobileTriggerButton)
MTCorner.CornerRadius = UDim.new(0, 12)

local MTStroke = Instance.new("UIStroke", MobileTriggerButton)
MTStroke.Color = Color3.fromRGB(255, 80, 80)
MTStroke.Thickness = 2
MTStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local ClickDebugDot = Instance.new("Frame", MobileTriggerGui)
ClickDebugDot.Name = "ClickDebugDot"
ClickDebugDot.Size = UDim2.fromOffset(8, 8)
ClickDebugDot.AnchorPoint = Vector2.new(0.5, 0.5)
ClickDebugDot.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ClickDebugDot.ZIndex = 9999
Instance.new("UICorner", ClickDebugDot).CornerRadius = UDim.new(1, 0)
ClickDebugDot.Visible = false

local isDraggingTrigger = false
local dragInputTrigger, dragStartTrigger, startPosTrigger

MobileTriggerButton.InputBegan:Connect(function(input)
    if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
        if not SilentAimSettings.MobileTriggerButtonPinned then
            isDraggingTrigger = true
            dragStartTrigger = input.Position
            startPosTrigger = MobileTriggerButton.Position
        end
    end
end)

MobileTriggerButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInputTrigger = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInputTrigger and isDraggingTrigger then
        local delta = input.Position - dragStartTrigger
        MobileTriggerButton.Position = UDim2.new(startPosTrigger.X.Scale, startPosTrigger.X.Offset + delta.X, startPosTrigger.Y.Scale, startPosTrigger.Y.Offset + delta.Y)
    end
end)

MobileTriggerButton.InputEnded:Connect(function(input)
    if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStartTrigger
        if isDraggingTrigger then
            isDraggingTrigger = false
            SilentAimSettings.MobileTriggerButtonPosition = MobileTriggerButton.Position.X.Offset .. "," .. MobileTriggerButton.Position.Y.Offset
        end
        if delta and delta.Magnitude < 10 then
            if getgenv().Toggles and getgenv().Toggles.TriggerbotToggle then
                getgenv().Toggles.TriggerbotToggle:SetValue(not getgenv().Toggles.TriggerbotToggle.Value)
            end
        end
    end
end)

local MobileAimlockGui = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
MobileAimlockGui.Name = "MobileAimlockGui"
MobileAimlockGui.ResetOnSpawn = false
MobileAimlockGui.IgnoreGuiInset = true
MobileAimlockGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local MobileAimlockButton = Instance.new("TextButton", MobileAimlockGui)
MobileAimlockButton.Name = "AimlockButton"
MobileAimlockButton.AnchorPoint = Vector2.new(0.5, 0.5)
MobileAimlockButton.Size = UDim2.fromOffset(SilentAimSettings.AimlockButtonSize, SilentAimSettings.AimlockButtonSize)
MobileAimlockButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MobileAimlockButton.BackgroundTransparency = 0.2
MobileAimlockButton.BorderSizePixel = 0
MobileAimlockButton.Text = "自瞄\n[关]"
MobileAimlockButton.TextColor3 = Color3.fromRGB(255, 80, 80)
MobileAimlockButton.Font = Enum.Font.GothamBold
MobileAimlockButton.TextSize = 13
MobileAimlockButton.Visible = false
MobileAimlockButton.Active = true

local MALCorner = Instance.new("UICorner", MobileAimlockButton)
MALCorner.CornerRadius = UDim.new(1, 0)

local MALStroke = Instance.new("UIStroke", MobileAimlockButton)
MALStroke.Color = Color3.fromRGB(255, 80, 80)
MALStroke.Thickness = 2
MALStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local isDraggingAimlock = false
local dragInputAimlock, dragStartAimlock, startPosAimlock
local aimlockHoldCoroutine = nil

MobileAimlockButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        if not SilentAimSettings.MobileAimlockButtonPinned then
            isDraggingAimlock = true
            dragStartAimlock = input.Position
            startPosAimlock = MobileAimlockButton.Position
        end
        
        if SilentAimSettings.AimlockButtonHoldMode then
            if aimlockHoldCoroutine then coroutine.close(aimlockHoldCoroutine) end
            aimlockHoldCoroutine = coroutine.create(function()
                task.wait(SilentAimSettings.AimlockHoldTime)
                isAimlockActiveByButton = true
                MobileAimlockButton.Text = "自瞄\n[锁定中]"
                MobileAimlockButton.TextColor3 = Color3.fromRGB(50, 255, 50)
                MALStroke.Color = Color3.fromRGB(50, 255, 50)
            end)
            coroutine.resume(aimlockHoldCoroutine)
        end
    end
end)

MobileAimlockButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInputAimlock = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInputAimlock and isDraggingAimlock then
        local delta = input.Position - dragStartAimlock
        MobileAimlockButton.Position = UDim2.new(startPosAimlock.X.Scale, startPosAimlock.X.Offset + delta.X, startPosAimlock.Y.Scale, startPosAimlock.Y.Offset + delta.Y)
        
        if delta.Magnitude > 10 and SilentAimSettings.AimlockButtonHoldMode then
            if aimlockHoldCoroutine then 
                coroutine.close(aimlockHoldCoroutine)
                aimlockHoldCoroutine = nil
            end
        end
    end
end)

MobileAimlockButton.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        isDraggingAimlock = false
        local delta = input.Position - dragStartAimlock
        
        if SilentAimSettings.AimlockButtonHoldMode then
            if aimlockHoldCoroutine then
                coroutine.close(aimlockHoldCoroutine)
                aimlockHoldCoroutine = nil
            end
            isAimlockActiveByButton = false
            MobileAimlockButton.Text = "自瞄\n[关]"
            MobileAimlockButton.TextColor3 = Color3.fromRGB(255, 80, 80)
            MALStroke.Color = Color3.fromRGB(255, 80, 80)
        else
            if delta.Magnitude < 10 then
                isAimlockActiveByButton = not isAimlockActiveByButton
                if isAimlockActiveByButton then
                    MobileAimlockButton.Text = "自瞄\n[锁定中]"
                    MobileAimlockButton.TextColor3 = Color3.fromRGB(50, 255, 50)
                    MALStroke.Color = Color3.fromRGB(50, 255, 50)
                else
                    MobileAimlockButton.Text = "自瞄\n[关]"
                    MobileAimlockButton.TextColor3 = Color3.fromRGB(255, 80, 80)
                    MALStroke.Color = Color3.fromRGB(255, 80, 80)
                end
            end
        end
        SilentAimSettings.MobileAimlockButtonPosition = MobileAimlockButton.Position.X.Offset .. "," .. MobileAimlockButton.Position.Y.Offset
    end
end)

local MobileBhopGui = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
MobileBhopGui.Name = "MobileBhopGui"
MobileBhopGui.ResetOnSpawn = false
MobileBhopGui.IgnoreGuiInset = true
MobileBhopGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local MobileBhopButton = Instance.new("TextButton", MobileBhopGui)
MobileBhopButton.Name = "BhopButton"
MobileBhopButton.AnchorPoint = Vector2.new(0.5, 0.5)
MobileBhopButton.Size = UDim2.fromOffset(SilentAimSettings.TriggerbotButtonSize, SilentAimSettings.TriggerbotButtonSize)
MobileBhopButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MobileBhopButton.BackgroundTransparency = 0.2
MobileBhopButton.BorderSizePixel = 0
MobileBhopButton.Text = "自动连跳\n[关]"
MobileBhopButton.TextColor3 = Color3.fromRGB(255, 80, 80)
MobileBhopButton.Font = Enum.Font.GothamBold
MobileBhopButton.TextSize = 13
MobileBhopButton.Visible = false
MobileBhopButton.Active = true

local MBHCorner = Instance.new("UICorner", MobileBhopButton)
MBHCorner.CornerRadius = UDim.new(0, 12)

local MBHStroke = Instance.new("UIStroke", MobileBhopButton)
MBHStroke.Color = Color3.fromRGB(255, 80, 80)
MBHStroke.Thickness = 2
MBHStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local isDraggingBhop = false
local dragInputBhop, dragStartBhop, startPosBhop

MobileBhopButton.InputBegan:Connect(function(input)
    if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
        if not SilentAimSettings.MobileBhopButtonPinned then
            isDraggingBhop = true
            dragStartBhop = input.Position
            startPosBhop = MobileBhopButton.Position
        end
    end
end)

MobileBhopButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInputBhop = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInputBhop and isDraggingBhop then
        local delta = input.Position - dragStartBhop
        MobileBhopButton.Position = UDim2.new(startPosBhop.X.Scale, startPosBhop.X.Offset + delta.X, startPosBhop.Y.Scale, startPosBhop.Y.Offset + delta.Y)
    end
end)
MobileBhopButton.InputEnded:Connect(function(input)
    if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStartBhop
        if isDraggingBhop then
            isDraggingBhop = false
            SilentAimSettings.MobileBhopButtonPosition = MobileBhopButton.Position.X.Offset .. "," .. MobileBhopButton.Position.Y.Offset
        end
        if delta and delta.Magnitude < 10 then
            if getgenv().Toggles and getgenv().Toggles.AutoBhopToggle then
                getgenv().Toggles.AutoBhopToggle:SetValue(not getgenv().Toggles.AutoBhopToggle.Value)
            end
        end
    end
end)

local HitSounds = {
    ["bell"] = "rbxassetid://8679627751",
    ["metal"] = "rbxassetid://3125624765",
    ["click"] = "rbxassetid://17755696142",
    ["exp"] = "rbxassetid://10070796384"
}

local function playHitSound(soundId)
    local sound = Instance.new("Sound")
    sound.Parent = CoreGui
    sound.SoundId = soundId
    sound.Volume = 0.6
    sound:Play()
    Debris:AddItem(sound, sound.TimeLength + 0.2)
end

function CalculateChance(Percentage)
    Percentage = math.floor(Percentage)
    return math.random() <= Percentage / 100
end

local function getPositionOnScreen(Vector)
    local Vec3, OnScreen = WorldToViewportPoint(Camera, Vector)
    return Vector2.new(Vec3.X, Vec3.Y), OnScreen
end

local function getDirection(Origin, Position)
    return (Position - Origin).Unit * 1000
end

local function isNPC(obj)
    return obj:IsA("Model") and obj:FindFirstChild("Humanoid") and obj.Humanoid.Health > 0 and obj:FindFirstChild("HumanoidRootPart") and not Players:GetPlayerFromCharacter(obj)
end

function isWhitelisted(character)
    if not character then return false end

    if SilentAimSettings.EnableNameTargeting and #SilentAimSettings.WhitelistedNames > 0 then
        local name = character.Name:lower()
        for _, whitelistedName in ipairs(SilentAimSettings.WhitelistedNames) do
            if whitelistedName and whitelistedName ~= "" and string.find(name, whitelistedName:lower(), 1, true) then
                return true
            end
        end
    end
    
    for _, path in ipairs(SilentAimSettings.WhitelistPath) do
        local obj = workspace:FindFirstChild(path)
        if obj and obj == character then
            return true
        end
    end

    return false
end

function getTargetCategory(character)
    if not character then return "无" end

    if Players:GetPlayerFromCharacter(character) then
        return "玩家"
    end

    if SilentAimSettings.EnableNameTargeting then
        local name = character.Name:lower()
        for _, whitelistedName in ipairs(SilentAimSettings.WhitelistedNames) do
            if whitelistedName and whitelistedName ~= "" and string.find(name, whitelistedName:lower(), 1, true) then
                return "添加的"
            end
        end
    end
    
    for _, path in ipairs(SilentAimSettings.WhitelistPath) do
        local obj = workspace:FindFirstChild(path)
        if obj and obj == character then
            return "路径白名单"
        end
    end
    
    if character:FindFirstChild("Humanoid") then
         return "NPC"
    end

    return "未知"
end

local function updateNPCs()
    local newNpcList = {}
    local addedNpcs = {}

    if SilentAimSettings.EnableNameTargeting and #SilentAimSettings.WhitelistedNames > 0 then
        for _, model in ipairs(workspace:GetDescendants()) do
            if isNPC(model) then
                for _, substring in ipairs(SilentAimSettings.WhitelistedNames) do
                    if substring and substring ~= "" and string.find(model.Name:lower(), substring:lower(), 1, true) then
                        if not addedNpcs[model] then
                            table.insert(newNpcList, model)
                            addedNpcs[model] = true
                            break
                        end
                    end
                end
            end
        end
    end

    for _, path in ipairs(SilentAimSettings.WhitelistPath) do
        local obj = workspace:FindFirstChild(path)
        if obj and isNPC(obj) and not addedNpcs[obj] then
            table.insert(newNpcList, obj)
            addedNpcs[obj] = true
        end
    end

    for _, v in ipairs(workspace:GetChildren()) do
        if isNPC(v) then
            if not addedNpcs[v] then
                table.insert(newNpcList, v)
                addedNpcs[v] = true
            end
        end
    end
    
    npcList = newNpcList
end

local function isBlacklisted(name)
    local lowerName = name:lower()
    for _, blacklistedName in ipairs(SilentAimSettings.BlacklistedNames) do
        if blacklistedName:lower() == lowerName then
            return true
        end
    end
    return false
end

local function isPartVisible(part, customOrigin)
    if not part then return false end
    local localCharacter = LocalPlayer.Character
    if not localCharacter then return false end
    
    local origin = customOrigin or Camera.CFrame.Position
    local direction = part.Position - origin
    local distance = direction.Magnitude
    
    local raycastParams = RaycastParams.new()
    raycastParams.FilterType = Enum.RaycastFilterType.Exclude

    if SilentAimSettings.AdvancedWallCheck then
        local currentOrigin = origin
        local currentDistance = distance
        local ignoreList = {localCharacter, part.Parent}
        
        while currentDistance > 0.1 do
            raycastParams.FilterDescendantsInstances = ignoreList
            local result = workspace:Raycast(currentOrigin, direction.Unit * currentDistance, raycastParams)
            
            if not result then 
                return true 
            end
            
            local hitPart = result.Instance
            if hitPart then
                if SilentAimSettings.IgnoreTransparent and (hitPart.Transparency >= 0.5 or not hitPart.CanCollide) then
                    table.insert(ignoreList, hitPart)
                    currentOrigin = result.Position + (direction.Unit * 0.01)
                    currentDistance = (part.Position - currentOrigin).Magnitude
                else
                    return false
                end
            else
                return false
            end
        end
        return true
    else
        raycastParams.FilterDescendantsInstances = {localCharacter, part.Parent}
        local raycastResult = workspace:Raycast(origin, direction.Unit * distance, raycastParams)
        return not raycastResult
    end
end

local function getFreeFOVRadius(camDist)
    local baseRadius = SilentAimSettings.FOVRadius
    if SilentAimSettings.DynamicFOVScale then
        local scale = math.tan(math.rad(SilentAimSettings.InitialCameraFOV) / 2) / math.tan(math.rad(Camera.FieldOfView) / 2)
        baseRadius = baseRadius * scale
    end
    
    local radius = baseRadius
    if camDist > SilentAimSettings.FreeFOVStartScaleDistance then
        local scaleDist = camDist - SilentAimSettings.FreeFOVStartScaleDistance
        local interval = SilentAimSettings.FreeFOVScaleInterval
        if interval > 0 then
            scaleDist = math.floor(scaleDist / interval) * interval
        end
        radius = baseRadius / (1 + scaleDist * SilentAimSettings.FreeFOVScaleFactor)
    end
    return math.clamp(radius, SilentAimSettings.FreeFOVMinSize, SilentAimSettings.FreeFOVMaxSize)
end

local function isTargetInsideFreeFOV(part)
    if not part then return false end
    local localRoot = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not localRoot then return false end

    local physicalDist = (localRoot.Position - part.Position).Magnitude
    if physicalDist > SilentAimSettings.MaxDistance then return false end

    local screenPos, onScreen = getPositionOnScreen(part.Position)
    if not onScreen then return false end

    local AimPoint = SilentAimSettings.FixedFOV and (Camera.ViewportSize / 2) or GetMouseLocation(UserInputService)
    local fovDist = (AimPoint - screenPos).Magnitude
    local camDist = (Camera.CFrame.Position - part.Position).Magnitude
    return fovDist <= getFreeFOVRadius(camDist)
end

local function getTargetAimingAtUs()
    local localChar = LocalPlayer.Character
    if not localChar or not localChar:FindFirstChild("HumanoidRootPart") then return nil end
    local myPos = localChar.HumanoidRootPart.Position

    local AimPoint = SilentAimSettings.FixedFOV and (Camera.ViewportSize / 2) or GetMouseLocation(UserInputService)
    local candidates = {}

    local function checkTarget(character, isNPC)
        if character and character:FindFirstChild("Head") and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0 then
            local head = character.Head
            local root = character:FindFirstChild("HumanoidRootPart") or head
            local dist = (myPos - root.Position).Magnitude
            if dist <= SilentAimSettings.MaxDistance then
                local dirToMe = (myPos - head.Position).Unit
                local lookDir = head.CFrame.LookVector
                
                local dirToMeXZ = Vector3.new(dirToMe.X, 0, dirToMe.Z)
                local lookDirXZ = Vector3.new(lookDir.X, 0, lookDir.Z)
                
                local yawAngle = 0
                if dirToMeXZ.Magnitude > 0.001 and lookDirXZ.Magnitude > 0.001 then
                    yawAngle = math.deg(math.acos(math.clamp(dirToMeXZ.Unit:Dot(lookDirXZ.Unit), -1, 1)))
                end
                
                local pitchToMe = math.deg(math.asin(math.clamp(dirToMe.Y, -1, 1)))
                local lookPitch = math.deg(math.asin(math.clamp(lookDir.Y, -1, 1)))
                local pitchAngle = math.abs(pitchToMe - lookPitch)
                
                if yawAngle <= SilentAimSettings.LockOnAimedSensitivityX and pitchAngle <= SilentAimSettings.LockOnAimedSensitivityY then
                    local passVisibility = true
                    if SilentAimSettings.LockOnAimedWallCheck then
                        passVisibility = isPartVisible(character:FindFirstChild(SilentAimSettings.TargetPart) or root, localChar.Head.Position)
                    end
                    if passVisibility then
                        local fovDist = math.huge
                        local ScreenPosition, OnScreen = getPositionOnScreen(root.Position)
                        if OnScreen then
                            fovDist = (AimPoint - ScreenPosition).Magnitude
                        end
                        table.insert(candidates, {
                            character = character, 
                            dist = dist, 
                            health = character.Humanoid.Health,
                            fov = fovDist
                        })
                    end
                end
            end
        end
    end

    for _, player in ipairs(GetPlayers(Players)) do
        if player ~= LocalPlayer and not (SilentAimSettings.TeamCheck and player.Team == LocalPlayer.Team) and not isBlacklisted(player.Name) then
            checkTarget(player.Character, false)
        end
    end

    for _, npc in ipairs(npcList) do
        if not SilentAimSettings.AdvancedFiltering or isWhitelisted(npc) then
            if not (SilentAimSettings.TeamCheck and npc:FindFirstChild("Team") and npc.Team == LocalPlayer.Team) and not isBlacklisted(npc.Name) then
                checkTarget(npc, true)
            end
        end
    end

    if #candidates == 0 then return nil end
    
    table.sort(candidates, function(a, b)
        if SilentAimSettings.LockOnAimedPriority == "最低血量" then
            return a.health < b.health
        elseif SilentAimSettings.LockOnAimedPriority == "距离最近" then
            return a.dist < b.dist
        else
            return a.fov < b.fov
        end
    end)
    
    return candidates[1].character
end

local function getClosestPlayer()
    if SilentAimSettings.AdvancedFiltering then return nil end

    local LocalPlayerCharacter = LocalPlayer.Character
    if not LocalPlayerCharacter or not LocalPlayerCharacter:FindFirstChild("HumanoidRootPart") then return nil end
    local localRoot = LocalPlayerCharacter.HumanoidRootPart
    
    local AimPoint = SilentAimSettings.FixedFOV and (Camera.ViewportSize / 2) or GetMouseLocation(UserInputService)
    local candidates = {}
    
    for _, Player in ipairs(GetPlayers(Players)) do
        if Player ~= LocalPlayer and not (SilentAimSettings.TeamCheck and Player.Team == LocalPlayer.Team) and not isBlacklisted(Player.Name) then
            local Character = Player.Character
            local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
            if Character and Humanoid and Humanoid.Health > 0 then
                local partForChecks = Character:FindFirstChild(SilentAimSettings.TargetPart) or Character:FindFirstChild("HumanoidRootPart")
                if not partForChecks then continue end

                local passVisibility = true
                if SilentAimSettings.VisibleCheck or SilentAimSettings.AdvancedWallCheck then
                    passVisibility = isPartVisible(partForChecks, LocalPlayerCharacter.Head.Position)
                end

                if passVisibility then
                    local physicalDist = (localRoot.Position - partForChecks.Position).Magnitude
                    if physicalDist <= SilentAimSettings.MaxDistance then
                        if SilentAimSettings.PriorityMode == "最近的人(无FOV)" then
                            table.insert(candidates, {character = Character, fov = math.huge, dist = physicalDist, health = Humanoid.Health})
                        else
                            local ScreenPosition, OnScreen = getPositionOnScreen(partForChecks.Position)
                            if OnScreen then
                                local fovDist = (AimPoint - ScreenPosition).Magnitude
                                
                                local currentRadius = SilentAimSettings.FOVRadius
                                if SilentAimSettings.AimMethod == "V5.0 自瞄" then
                                    currentRadius = SilentAimSettings.AimbotFOVRadius
                                end
                                if SilentAimSettings.DynamicFOVScale then
                                    local scale = math.tan(math.rad(SilentAimSettings.InitialCameraFOV) / 2) / math.tan(math.rad(Camera.FieldOfView) / 2)
                                    currentRadius = currentRadius * scale
                                end
                                
                                if SilentAimSettings.FreeFOVEnabled then
                                    local camDist = (Camera.CFrame.Position - partForChecks.Position).Magnitude
                                    currentRadius = getFreeFOVRadius(camDist)
                                end

                                if SilentAimSettings.FreeFOVEnabled then
                                    table.insert(candidates, {character = Character, fov = fovDist, dist = physicalDist, health = Humanoid.Health})
                                elseif fovDist <= currentRadius then
                                    table.insert(candidates, {character = Character, fov = fovDist, dist = physicalDist, health = Humanoid.Health})
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    if #candidates == 0 then return nil end
    table.sort(candidates, function(a, b)
        if SilentAimSettings.PriorityMode == "最低血量" then
            return a.health < b.health
        elseif SilentAimSettings.PriorityMode == "距离最近" or SilentAimSettings.PriorityMode == "最近的人(无FOV)" then
            return a.dist < b.dist
        else
            return a.fov < b.fov
        end
    end)
    return candidates[1].character
end

local function getNPCTarget()
    local LocalPlayerCharacter = LocalPlayer.Character
    if not LocalPlayerCharacter or not LocalPlayerCharacter:FindFirstChild("HumanoidRootPart") then return nil end
    local localRoot = LocalPlayerCharacter.HumanoidRootPart

    local AimPoint = SilentAimSettings.FixedFOV and (Camera.ViewportSize / 2) or GetMouseLocation(UserInputService)
    local candidates = {}

    for _, NPCModel in ipairs(npcList) do
        if SilentAimSettings.AdvancedFiltering and not isWhitelisted(NPCModel) then
            continue
        end

        if not (SilentAimSettings.TeamCheck and NPCModel.Team and NPCModel.Team == LocalPlayer.Team) and not isBlacklisted(NPCModel.Name) then
            local Humanoid = NPCModel and NPCModel:FindFirstChildOfClass("Humanoid")
            if NPCModel and Humanoid and Humanoid.Health > 0 then
                local partForChecks = NPCModel:FindFirstChild(SilentAimSettings.TargetPart) or NPCModel.PrimaryPart or NPCModel:FindFirstChild("HumanoidRootPart")
                if not partForChecks then continue end

                local passVisibility = true
                if SilentAimSettings.VisibleCheck or SilentAimSettings.AdvancedWallCheck then
                    passVisibility = isPartVisible(partForChecks, LocalPlayerCharacter.Head.Position)
                end

                if passVisibility then
                    local physicalDist = (localRoot.Position - partForChecks.Position).Magnitude
                    if physicalDist <= SilentAimSettings.MaxDistance then
                         if SilentAimSettings.PriorityMode == "最近的人(无FOV)" then
                            table.insert(candidates, {character = NPCModel, fov = math.huge, dist = physicalDist, health = Humanoid.Health})
                        else
                            local ScreenPosition, OnScreen = getPositionOnScreen(partForChecks.Position)
                            if OnScreen then
                                local fovDist = (AimPoint - ScreenPosition).Magnitude
                                
                                local currentRadius = SilentAimSettings.FOVRadius
                                if SilentAimSettings.AimMethod == "V5.0 自瞄" then
                                    currentRadius = SilentAimSettings.AimbotFOVRadius
                                end
                                if SilentAimSettings.DynamicFOVScale then
                                    local scale = math.tan(math.rad(SilentAimSettings.InitialCameraFOV) / 2) / math.tan(math.rad(Camera.FieldOfView) / 2)
                                    currentRadius = currentRadius * scale
                                end
                                if SilentAimSettings.FreeFOVEnabled then
                                    local camDist = (Camera.CFrame.Position - partForChecks.Position).Magnitude
                                    currentRadius = getFreeFOVRadius(camDist)
                                end

                                if SilentAimSettings.FreeFOVEnabled then
                                    table.insert(candidates, {character = NPCModel, fov = fovDist, dist = physicalDist, health = Humanoid.Health})
                                elseif fovDist <= currentRadius then
                                    table.insert(candidates, {character = NPCModel, fov = fovDist, dist = physicalDist, health = Humanoid.Health})
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    if #candidates == 0 then return nil end
    table.sort(candidates, function(a, b)
        if SilentAimSettings.PriorityMode == "最低血量" then
            return a.health < b.health
        elseif SilentAimSettings.PriorityMode == "距离最近" or SilentAimSettings.PriorityMode == "最近的人(无FOV)" then
            return a.dist < b.dist
        else
            return a.fov < b.fov
        end
    end)
    return candidates[1].character
end

function getPolygonPoints(center, radius, sides)
    local points = {}
    local rotationOffset = SilentAimSettings.IndicatorRotationEnabled and currentRotationAngle or 0
    for i = 1, sides do
        local angle = (i - 1) * (2 * math.pi / sides) - (math.pi / 2) + rotationOffset
        table.insert(points, Vector2.new(center.X + radius * math.cos(angle), center.Y + radius * math.sin(angle)))
    end
    return points
end

function hideAllVisuals()
    target_indicator_circle.Visible = false
    for _, line in ipairs(target_indicator_lines) do line.Visible = false end
    for _, text in pairs(overhead_info_texts) do text.Visible = false end
    panel_info_bg.Visible = false
    for _, text in pairs(panel_info_texts) do text.Visible = false end
    if IndependentPanelFrame then IndependentPanelFrame.Visible = false end
end

local function getDynamicColor(mode, c1, c2, speed)
    if mode == "单色" then return c1 end
    if mode == "彩虹" then return Color3.fromHSV((tick() * speed * 0.1) % 1, 1, 1) end
    if mode == "渐变" then
        local t = (math.sin(tick() * speed) + 1) / 2
        return c1:Lerp(c2, t)
    end
    return c1
end

local function GetFreestandYaw()
    local char = LocalPlayer.Character
    if not char or not char.PrimaryPart then return 0 end
    local Origin = char.PrimaryPart.Position
    local RayParams = RaycastParams.new()
    RayParams.FilterDescendantsInstances = { char, Camera }
    RayParams.FilterType = Enum.RaycastFilterType.Exclude

    local Directions = { Vector3.new(-1, 0, 0), Vector3.new(0, 0, 1), Vector3.new(1, 0, 0), Vector3.new(0, 0, -1) }
    local Yaws = { -90, 0, 90, 180 }
    local BestDirection = 0
    local MaxDist = -math.huge

    for i = 1, #Directions do
        local Result = workspace:Raycast(Origin, Directions[i] * 100, RayParams)
        local Dist = Result and (Result.Position - Origin).Magnitude or 100
        if Dist > MaxDist then
            MaxDist = Dist
            BestDirection = Yaws[i]
        end
    end
    return BestDirection
end

local aaRotation = 0
local AARenderConnection = RunService.RenderStepped:Connect(function(DeltaTime)
    if not SilentAimSettings.AA_Enabled then return end
    local char = LocalPlayer.Character
    if char and char:FindFirstChild("Humanoid") and char.Humanoid.Health > 0 then
        local RootPart = char.PrimaryPart
        if not RootPart then return end

        local JitterAmount = SilentAimSettings.AA_Jitter
        local Method = SilentAimSettings.AA_Yaw
        local Roll = SilentAimSettings.AA_UpsideDown and math.rad(180) or 0

        if Method == "Spin" then
            aaRotation = aaRotation + JitterAmount
            RootPart.CFrame = CFrame.new(RootPart.Position) * CFrame.Angles(0, math.rad(aaRotation), Roll)
        elseif Method == "Jitter" then
            local Delta = JitterAmount
            if math.random() < 0.5 then Delta = -Delta end
            aaRotation = aaRotation + Delta
            RootPart.CFrame = CFrame.new(RootPart.Position) * CFrame.Angles(0, math.rad(aaRotation), Roll)
        elseif Method == "Backward" then
            RootPart.CFrame = CFrame.new(RootPart.Position) * CFrame.Angles(0, math.pi, Roll)
        elseif Method == "Freestanding" then
            RootPart.CFrame = CFrame.new(RootPart.Position) * CFrame.Angles(0, math.rad(GetFreestandYaw()), Roll)
        end
    end
end)

local DesyncRenderConnection = RunService.RenderStepped:Connect(function()
    if not SilentAimSettings.Desync_Enabled then 
        local fakeChar = workspace:FindFirstChild("FakeChar")
        if fakeChar then fakeChar:Destroy() end
        local existingSeat = workspace:FindFirstChild("tRGWJUI%ERjtguihe85ur")
        if existingSeat then existingSeat:Destroy() end
        return 
    end
    local char = LocalPlayer.Character
    if char and char:FindFirstChild("Humanoid") and char.Humanoid.Health > 0 then
        task.spawn(function()
            if char:FindFirstChild("HumanoidRootPart") and not workspace:FindFirstChild("tRGWJUI%ERjtguihe85ur") then
                local cee = Instance.new("Seat")
                cee.Name = "tRGWJUI%ERjtguihe85ur"
                cee.Parent = workspace
                cee.Size = Vector3.new(4, 1, 1)
                cee.CanCollide = false
                cee.CanQuery = false
                cee.Transparency = 1

                local awe = Instance.new("Weld", cee)
                local bb = Instance.new("Weld")
                bb.Name = "geriuzh5eruzhge5"
                bb.Parent = char.HumanoidRootPart

                cee.CFrame = CFrame.new(char.HumanoidRootPart.Position)
                awe.Part0 = char.HumanoidRootPart
                awe.Part1 = cee
                char.HumanoidRootPart.CFrame = CFrame.new(cee.Position)
                bb.Part0 = char.HumanoidRootPart
                bb.Part1 = cee

                if SilentAimSettings.Desync_Visualize then
                    local sf = workspace
                    if not sf:FindFirstChild("FakeChar") then
                        local i = Instance.new("Model", sf)
                        i.Name = "FakeChar"
                        for _, v in ipairs(char:GetDescendants()) do
                            if v:IsA("BasePart") and v.Transparency ~= 1 and not v.Parent:IsA("Accessory") then
                                local a = v:Clone()
                                a.CanCollide = false
                                a.Parent = i
                                v.CanQuery = false
                                a.Anchored = true
                                a.Color = SilentAimSettings.Desync_Color
                                a.Material = Enum.Material.ForceField
                                a.Transparency = 0.6
                                a.Reflectance = 0
                                a.CollisionGroup = "Default"

                                if a:IsA("MeshPart") then a.TextureID = "" end
                                for _, c in ipairs(a:GetChildren()) do
                                    if not c:IsA("SpecialMesh") then c:Destroy() else c.TextureId = "" end
                                end
                            end
                        end
                    end
                end

                task.delay(SilentAimSettings.Desync_Ticks / 10000, function()
                    if cee and cee.Parent then cee:Destroy() end
                    local fakeChar = workspace:FindFirstChild("FakeChar")
                    if fakeChar then fakeChar:Destroy() end
                    if char and char:FindFirstChild("HumanoidRootPart") then
                        local existing = char.HumanoidRootPart:FindFirstChild("geriuzh5eruzhge5")
                        if existing then existing:Destroy() end
                    end
                end)
            end
        end)
    end
end)

local BhopConnection = RunService.RenderStepped:Connect(function(dt)
    if not SilentAimSettings.AutoBhopEnabled then return end
    local char = LocalPlayer.Character
    if not char then return end
    
    local humanoid = char:FindFirstChildOfClass("Humanoid")
    local hrp = char:FindFirstChild("HumanoidRootPart")
    
    if humanoid and humanoid.Health > 0 then
        if humanoid.FloorMaterial ~= Enum.Material.Air then
            humanoid.Jump = true
        else
            if hrp and SilentAimSettings.BhopBoostAmount > 0 and humanoid.MoveDirection.Magnitude > 0 then
                local boost = SilentAimSettings.BhopBoostAmount
                hrp.CFrame = hrp.CFrame + (humanoid.MoveDirection * (boost * dt))
            end
        end
    end
end)

local Library, Options, Toggles, Window = (function()
-- 此模块复用宿主已加载的 WindUI 和已创建的 Window，不创建新的窗口。
-- 可直接粘贴在宿主脚本的 WindUI / Window 定义之后；独立 loadstring 时可由 getgenv() 提供这两个对象。
local WindUI = WindUI or (getgenv and getgenv().WindUI)
local NativeWindow = Window or (getgenv and getgenv().Window)
assert(WindUI and NativeWindow, "子弹追踪模块需要宿主先初始化 WindUI 和 Window")

-- WindUI 原生可折叠侧边栏 Section，所有功能 Tab 都挂在这个分组之下。
local ModuleSection = NativeWindow:Section({
    Title = "子弹追踪模块",
    Icon = "crosshair",
    Opened = true,
})

-- WindUI migration adapter. UI controls only; gameplay handlers below remain unchanged.

local Library = { Options = {}, Toggles = {}, _onUnload = nil }
local Options = Library.Options
local Toggles = Library.Toggles
getgenv().Toggles = Toggles
local Window = {}

function Library:Notify(message)
    WindUI:Notify({ Title = "Universal Silent Aim", Content = tostring(message), Duration = 3 })
end
function Library:OnUnload(callback)
    self._onUnload = callback
end
NativeWindow:OnDestroy(function()
    if Library._onUnload then Library._onUnload() end
end)

local function multiToArray(value)
    local out = {}
    if type(value) == "table" then
        for k, v in pairs(value) do
            if type(k) == "number" then
                out[#out + 1] = v
            elseif v then
                out[#out + 1] = k
            end
        end
    elseif value ~= nil then
        out[1] = value
    end
    return out
end

local function multiToMap(value)
    local out = {}
    for _, v in ipairs(multiToArray(value)) do
        local name = type(v) == "table" and v.Title or v
        if name ~= nil then out[name] = true end
    end
    return out
end

local function sameValue(a, b)
    if type(a) ~= "table" or type(b) ~= "table" then return a == b end
    for k, v in pairs(a) do if b[k] ~= v then return false end end
    for k, v in pairs(b) do if a[k] ~= v then return false end end
    return true
end

local Container = {}
Container.__index = Container
local Option = {}
Option.__index = function(self, key)
    if key == "Visible" then return self._visible end
    return Option[key]
end
Option.__newindex = function(self, key, value)
    if key == "Visible" then
        rawset(self, "_visible", value)
        if self.Native then
            local frame = self.Native.ElementFrame
            if not frame and self.Native[self.Kind .. "Frame"] then
                local object = self.Native[self.Kind .. "Frame"]
                frame = object.UIElements and object.UIElements.Main
            end
            if frame then frame.Visible = value end
        end
    else
        rawset(self, key, value)
    end
end

local function createOption(container, kind, id, default, isMulti)
    local option = setmetatable({
        Id = id, Kind = kind, Parent = container,
        Value = isMulti and multiToMap(default) or default,
        Multi = isMulti or false,
        _listeners = {}, _visible = true, Native = nil,
    }, Option)
    if kind == "Toggle" then
        Toggles[id] = option
    else
        Options[id] = option
    end
    return option
end

function Option:OnChanged(callback)
    self._listeners[#self._listeners + 1] = callback
    return self
end

function Option:_receive(value)
    if self.Multi then value = multiToMap(value) end
    if self.Kind == "Slider" then value = tonumber(value) or self.Value end
    if not sameValue(self.Value, value) then
        self.Value = value
        for _, listener in ipairs(self._listeners) do listener(value) end
    end
end

function Option:SetValue(value)
    if self.Multi then value = multiToMap(value) end
    self:_receive(value)
    local element = self.Native
    if not element then return self end
    if self.Kind == "Dropdown" then
        element:Select(self.Multi and multiToArray(value) or value)
    elseif self.Kind == "Colorpicker" then
        element:Update(value, self.Transparency)
    elseif self.Kind == "Slider" then
        element:Set(tonumber(value))
    elseif element.Set then
        element:Set(value)
    end
    return self
end

function Option:SetValues(values, selected)
    if self.Kind ~= "Dropdown" then return self end
    self.Values = values or {}
    self.Native:Refresh(self.Values)
    if selected ~= nil then
        self:SetValue(selected)
    elseif self.Multi then
        local selectedMap = multiToMap(self.Value)
        local allowed = {}
        for _, item in ipairs(self.Values) do
            allowed[type(item) == "table" and item.Title or item] = true
        end
        for item in pairs(selectedMap) do
            if not allowed[item] then selectedMap[item] = nil end
        end
        if not sameValue(selectedMap, self.Value) then self:SetValue(selectedMap) end
    elseif self.Value ~= nil then
        local found = false
        for _, item in ipairs(self.Values) do
            if (type(item) == "table" and item.Title or item) == self.Value then
                found = true
                break
            end
        end
        if not found then self:SetValue(nil) end
    end
    return self
end

-- Obsidian lets a Toggle/Label append color pickers or key pickers.
-- Keep the same fluent syntax, using standalone WindUI elements under that group.
function Option:AddColorPicker(id, config)
    return self.Parent:AddColorPicker(id, config)
end
function Option:AddKeyPicker(id, config)
    return self.Parent:AddKeyPicker(id, config, self)
end

local function nativeTitle(config, fallback)
    return config.Text or config.Title or fallback
end

function Container:AddToggle(id, config)
    local opt = createOption(self, "Toggle", id, config.Default or false)
    opt.Native = self.Native:Toggle({
        Title = nativeTitle(config, id), Value = opt.Value, Flag = id,
        Callback = function(value) opt:_receive(value) end,
    })
    return opt
end

function Container:AddSlider(id, config)
    local default = config.Default or config.Min or 0
    local opt = createOption(self, "Slider", id, default)
    local rounding = math.clamp(config.Rounding or 0, 0, 6)
    opt.Native = self.Native:Slider({
        Title = nativeTitle(config, id) .. (config.Suffix and ("  [" .. tostring(config.Suffix) .. "]") or ""),
        Value = { Min = config.Min or 0, Max = config.Max or 100, Default = default },
        Step = 10 ^ (-rounding), Flag = id,
        Callback = function(value) opt:_receive(value) end,
    })
    return opt
end

function Container:AddDropdown(id, config)
    local multi = config.Multi == true
    local opt = createOption(self, "Dropdown", id, config.Default, multi)
    opt.Values = config.Values or {}
    opt.Native = self.Native:Dropdown({
        Title = nativeTitle(config, id), Values = opt.Values,
        Value = multi and multiToArray(config.Default) or config.Default,
        AllowNone = config.AllowNull == true or config.AllowNone == true or multi,
        Multi = multi, Flag = id, SearchBarEnabled = #opt.Values > 12,
        Callback = function(value) opt:_receive(value) end,
    })
    return opt
end

function Container:AddInput(id, config)
    local opt = createOption(self, "Input", id, config.Default or "")
    opt.Native = self.Native:Input({
        Title = nativeTitle(config, id),
        Value = opt.Value, Placeholder = config.PlaceholderText or "",
        Flag = id,
        Callback = function(value) opt:_receive(value) end,
    })
    return opt
end

function Container:AddColorPicker(id, config)
    local opt = createOption(self, "Colorpicker", id, config.Default or Color3.new(1, 1, 1))
    opt.Transparency = config.Transparency
    opt.Native = self.Native:Colorpicker({
        Title = nativeTitle(config, id), Default = opt.Value,
        Transparency = opt.Transparency, Flag = id,
        Callback = function(color, transparency)
            opt.Transparency = transparency
            opt:_receive(color)
        end,
    })
    return opt
end

function Container:AddKeyPicker(id, config, linkedToggle)
    local opt = createOption(self, "Keybind", id, config.Default or "RightAlt")
    opt.Native = self.Native:Keybind({
        Title = (linkedToggle and (linkedToggle.Native.Title .. " · 快捷键")) or nativeTitle(config, id),
        Value = opt.Value, Flag = id,
        Callback = function(key)
            -- WindUI's callback is a key press, not a rebinding notification.
            if config.SyncToggleState and linkedToggle and config.Mode == "Toggle" then
                linkedToggle:SetValue(not linkedToggle.Value)
            end
        end,
    })
    return opt
end

function Container:AddButton(title, callback)
    return self.Native:Button({
        Title = title, Icon = "mouse-pointer-click", Callback = callback,
    })
end

function Container:AddLabel(title)
    self.Native:Paragraph({ Title = title })
    return self
end

local function asContainer(native)
    return setmetatable({ Native = native }, Container)
end
local function makeSection(tab, title)
    return asContainer(tab.Native:Section({
        Title = title, Opened = true, Box = true, BoxBorder = true,
    }))
end
local function makeTabbox(tab)
    return {
        AddTab = function(_, title) return makeSection(tab, title) end,
    }
end
local Tab = {}
Tab.__index = Tab
function Tab:AddLeftGroupbox(title) return makeSection(self, title) end
function Tab:AddRightGroupbox(title) return makeSection(self, title) end
function Tab:AddLeftTabbox() return makeTabbox(self) end
function Tab:AddRightTabbox() return makeTabbox(self) end
function Window:AddTab(title, icon)
    return setmetatable({
        Native = ModuleSection:Tab({ Title = title, Icon = icon }),
    }, Tab)
end

function Library:BuildWindUISettings(Tabs)
-- Native WindUI configuration and theme controls. They replace Obsidian addons.
local ConfigManager = NativeWindow.ConfigManager
local settingsTab = Tabs["UI Settings"].Native

settingsTab:Paragraph({
    Title = "子弹追踪模块",
    Desc = "使用宿主 WindUI 窗口，设置通过兼容层连接原有逻辑。",
})

local configSection = settingsTab:Section({
    Title = "配置管理", Opened = true, Box = true,
})
local currentConfigName = "default"
local configNameInput = configSection:Input({
    Title = "配置名称", Value = currentConfigName,
    Placeholder = "输入配置名",
    Callback = function(v)
        currentConfigName = tostring(v or "")
    end,
})
local configSelect = configSection:Dropdown({
    Title = "已有配置", Values = ConfigManager:AllConfigs(),
    Value = nil, AllowNone = true,
    Callback = function(v)
        if v and v ~= "" then
            currentConfigName = v
            configNameInput:Set(v)
        end
    end,
})
local function validConfigName()
    -- ConfigManager builds paths by concatenation; do not allow separators or traversal.
    local name = tostring(currentConfigName or "")
    if name == "" or name == "." or name == ".." or name:find("[\\/:*?\"<>|]") then
        Library:Notify("配置名称不能为空，也不能包含路径符号")
        return nil
    end
    return name
end
local function refreshConfigList()
    configSelect:Refresh(ConfigManager:AllConfigs())
end
configSection:Button({ Title = "保存配置", Icon = "save", Callback = function()
    local name = validConfigName()
    if not name then return end
    local cfg = ConfigManager:CreateConfig(name)
    if cfg and cfg:Save() then
        refreshConfigList()
        Library:Notify("配置已保存: " .. name)
    else
        Library:Notify("保存失败: " .. name)
    end
end })
configSection:Button({ Title = "加载配置", Icon = "folder-open", Callback = function()
    local name = validConfigName()
    if not name then return end
    local path = ConfigManager.Path .. name .. ".json"
    if not (isfile and isfile(path)) then
        Library:Notify("配置文件不存在: " .. name)
        return
    end
    local cfg = ConfigManager:CreateConfig(name)
    local result, failure = cfg:Load()
    if result == false then
        Library:Notify("加载失败: " .. tostring(failure))
    else
        Library:Notify("已加载配置: " .. name)
    end
end })
configSection:Button({ Title = "设为自动加载", Icon = "bookmark", Callback = function()
    local name = validConfigName()
    if not name then return end
    -- Keep only one autoload config, just as the original SaveManager UI expects.
    for _, otherName in ipairs(ConfigManager:AllConfigs()) do
        if otherName ~= name then
            local other = ConfigManager:CreateConfig(otherName)
            other:SetAutoLoad(false)
            other:Save()
        end
    end
    local cfg = ConfigManager:CreateConfig(name)
    cfg:SetAutoLoad(true)
    cfg:Save()
    refreshConfigList()
    Library:Notify("自动加载配置: " .. name)
end })
configSection:Button({ Title = "关闭自动加载", Icon = "bookmark-x", Callback = function()
    for _, name in ipairs(ConfigManager:AllConfigs()) do
        local cfg = ConfigManager:CreateConfig(name)
        cfg:SetAutoLoad(false)
        cfg:Save()
    end
    Library:Notify("已关闭配置自动加载")
end })
configSection:Button({ Title = "刷新配置列表", Icon = "refresh-cw", Callback = refreshConfigList })

local appearanceSection = settingsTab:Section({
    Title = "主题与界面", Opened = true, Box = true,
})
local themeNames = {}
for name in pairs(WindUI:GetThemes()) do themeNames[#themeNames + 1] = name end
table.sort(themeNames)
appearanceSection:Dropdown({
    Title = "WindUI 主题", Values = themeNames,
    Value = WindUI:GetCurrentTheme(),
    Callback = function(theme)
        if theme and WindUI:GetThemes()[theme] then WindUI:SetTheme(theme) end
    end,
})
appearanceSection:Keybind({
    Title = "显示/隐藏界面", Value = "RightControl",
    Callback = function() NativeWindow:Toggle() end,
})

-- Native config loading does not invoke Colorpicker callbacks after Update().
-- Restore the same option change notification that Obsidian provided.
local parser = ConfigManager and ConfigManager.Parser
if parser and parser.Colorpicker and parser.Colorpicker.Load then
    local originalColorLoad = parser.Colorpicker.Load
    parser.Colorpicker.Load = function(native, saved)
        originalColorLoad(native, saved)
        if native.Callback then native.Callback(native.Default, native.Transparency) end
    end
end

-- Register every original Flag before loading. This is WindUI's native config path.
local allConfigNames = ConfigManager:AllConfigs()
local didAutoload = false
for _, name in ipairs(allConfigNames) do
    local path = ConfigManager.Path .. name .. ".json"
    if isfile and isfile(path) and readfile then
        local ok, saved = pcall(function()
            return HttpService:JSONDecode(readfile(path))
        end)
        if ok and type(saved) == "table" and saved.__autoload == true then
            local config = ConfigManager:CreateConfig(name)
            config:Load()
            didAutoload = true
            break
        end
    end
end
if not didAutoload then ConfigManager:CreateConfig("default") end

end
return Library, Options, Toggles, Window
end)()

-- 明确控制侧边栏标签顺序，避免表构造时依赖字段求值顺序。
local Tabs = {}
Tabs.Main = Window:AddTab("主页", "user")
Tabs.Aimlock = Window:AddTab("自瞄", "target")
Tabs.Visuals = Window:AddTab("视觉", "camera")
Tabs.Management = Window:AddTab("管理", "users")
Tabs.Misc = Window:AddTab("杂项", "box")
Tabs.SensoryESP = Window:AddTab("ESP", "scan")
Tabs["UI Settings"] = Window:AddTab("UI设置", "settings")
Tabs.Contributors = Window:AddTab("贡献者", "heart-handshake")

-- 贡献者：仅展示署名，不添加功能控件。
Tabs.Contributors.Native:Paragraph({
    Title = "eup",
    Desc = "所有子追源码编写，原作者",
})
Tabs.Contributors.Native:Paragraph({
    Title = "ChatGPT",
    Desc = "UI移植和适配",
})

do -- UI-only scoped controls (reduce Luau top-level local usage)
local MainSettingsBox = Tabs.Main:AddLeftGroupbox("主设置")
MainSettingsBox:AddToggle("EnabledToggle", { Text = "启用", Default = SilentAimSettings.Enabled }):AddKeyPicker("EnabledKeybind", { Default = SilentAimSettings.ToggleKey, SyncToggleState = true, Mode = "Toggle" })
Toggles.EnabledToggle:OnChanged(function(Value)
    SilentAimSettings.Enabled = Value
    if SilentAimSettings.AimMethod == "V5.0 自瞄" then
        getgenv().AimBotEnabled = Value
    end
end)

MainSettingsBox:AddDropdown("TargetChecksDropdown", {
    Text = "安全检测 (多选)",
    AllowNull = true,
    Multi = true,
    Values = {"队伍检查", "可见性检查", "高级射线墙体检测", "忽略透明/无碰撞物"},
    Default = {}
}):OnChanged(function(val)
    SilentAimSettings.TeamCheck = val["队伍检查"] or false
    SilentAimSettings.VisibleCheck = val["可见性检查"] or false
    SilentAimSettings.AdvancedWallCheck = val["高级射线墙体检测"] or false
    SilentAimSettings.IgnoreTransparent = val["忽略透明/无碰撞物"] or false
end)

local CombatTabbox = Tabs.Main:AddRightTabbox()
local TargetTab = CombatTabbox:AddTab("目标参数")
local WallbangTab = CombatTabbox:AddTab("穿墙机制")

TargetTab:AddDropdown("TargetModeDropdown", { Text = "目标种类", Default = "请选择", Values = {"玩家", "NPC", "所有"} }):OnChanged(function(Value) SilentAimSettings.TargetMode = Value end)
TargetTab:AddDropdown("TargetPartDropdown", { Values = {"Head", "HumanoidRootPart", "Random"}, Default = SilentAimSettings.TargetPart, Text = "目标部位" }):OnChanged(function(Value) SilentAimSettings.TargetPart = Value end)
TargetTab:AddDropdown("PriorityModeDropdown", { Text = "优先模式", Default = SilentAimSettings.PriorityMode, Values = {"准星最近", "距离最近", "最低血量", "最近的人(无FOV)"} }):OnChanged(function(Value) SilentAimSettings.PriorityMode = Value end)
TargetTab:AddSlider('MaxDistanceSlider', { Text = '最大距离', Default = SilentAimSettings.MaxDistance, Min = 10, Max = 2000, Rounding = 0, Suffix = "studs" }):OnChanged(function(Value) SilentAimSettings.MaxDistance = Value end)

WallbangTab:AddToggle("WallbangToggle", { Text = "穿墙", Default = SilentAimSettings.Wallbang}):OnChanged(function(Value) SilentAimSettings.Wallbang = Value end)
WallbangTab:AddDropdown("WallbangModeDropdown", { Text = "穿墙模式", Default = "返回欺骗 / 白名单", Values = {"返回欺骗 / 白名单", "起点偏移"} }):OnChanged(function(Value) SilentAimSettings.WallbangMode = Value end)
WallbangTab:AddToggle("LeakAndHitToggle", { Text = "漏打模式", Default = SilentAimSettings.LeakAndHitMode}):OnChanged(function(Value) SilentAimSettings.LeakAndHitMode = Value end)
WallbangTab:AddSlider('HitChanceSlider', { Text = '命中率', Default = SilentAimSettings.HitChance, Min = 0, Max = 100, Rounding = 1, Suffix = "%" }):OnChanged(function(Value) SilentAimSettings.HitChance = Value end)

local TriggerbotBox = Tabs.Main:AddLeftGroupbox("自动扳机 (Triggerbot)")
TriggerbotBox:AddToggle("TriggerbotToggle", { Text = "启用自动扳机", Default = SilentAimSettings.TriggerbotEnabled }):OnChanged(function(Value)
    SilentAimSettings.TriggerbotEnabled = Value
    if Value then
        MobileTriggerButton.Text = "自动扳机\n[开]"
        MobileTriggerButton.TextColor3 = Color3.fromRGB(50, 255, 50)
        MTStroke.Color = Color3.fromRGB(50, 255, 50)
    else
        MobileTriggerButton.Text = "自动扳机\n[关]"
        MobileTriggerButton.TextColor3 = Color3.fromRGB(255, 80, 80)
        MTStroke.Color = Color3.fromRGB(255, 80, 80)
    end
end)
TriggerbotBox:AddSlider("TriggerbotCPSSlider", { Text = "点击频率 (CPS)", Min = 1, Max = 20, Default = SilentAimSettings.TriggerbotCPS, Rounding = 0 }):OnChanged(function(Value)
    SilentAimSettings.TriggerbotCPS = Value
end)
TriggerbotBox:AddToggle("ShowMobileTriggerButton", { Text = "显示移动端按钮", Default = SilentAimSettings.ShowMobileTriggerButton }):OnChanged(function(Value)
    SilentAimSettings.ShowMobileTriggerButton = Value
    MobileTriggerButton.Visible = Value
end)
TriggerbotBox:AddSlider("TriggerbotButtonSizeSlider", { Text = "按钮大小", Min = 40, Max = 150, Default = SilentAimSettings.TriggerbotButtonSize, Rounding = 0 }):OnChanged(function(Value)
    SilentAimSettings.TriggerbotButtonSize = Value
    MobileTriggerButton.Size = UDim2.fromOffset(Value, Value)
end)
TriggerbotBox:AddToggle("PinMobileTriggerButton", { Text = "锁定按钮位置", Default = SilentAimSettings.MobileTriggerButtonPinned }):OnChanged(function(Value)
    SilentAimSettings.MobileTriggerButtonPinned = Value
end)
TriggerbotBox:AddButton("重置按钮位置 (居中)", function()
    local screenSize = Camera.ViewportSize
    local newX = math.floor(screenSize.X / 2)
    local newY = math.floor(screenSize.Y / 2)
    MobileTriggerButton.Position = UDim2.fromOffset(newX, newY)
    SilentAimSettings.MobileTriggerButtonPosition = newX .. "," .. newY
end)
TriggerbotBox:AddSlider("TriggerClickOffsetX", { Text = "点击X轴偏移 (微调)", Min = -500, Max = 500, Default = SilentAimSettings.TriggerbotOffsetX, Rounding = 0 }):OnChanged(function(Value) SilentAimSettings.TriggerbotOffsetX = Value end)
TriggerbotBox:AddSlider("TriggerClickOffsetY", { Text = "点击Y轴偏移 (微调)", Min = -500, Max = 500, Default = SilentAimSettings.TriggerbotOffsetY, Rounding = 0 }):OnChanged(function(Value) SilentAimSettings.TriggerbotOffsetY = Value end)
TriggerbotBox:AddToggle("ShowClickDebug", { Text = "显示实际点击位置 (红点)", Default = SilentAimSettings.ShowClickDebug }):OnChanged(function(Value) SilentAimSettings.ShowClickDebug = Value end)

local AimlockTabbox = Tabs.Aimlock:AddLeftTabbox()
local AimlockTab = AimlockTabbox:AddTab("自瞄设置")
local LockAimedTab = AimlockTabbox:AddTab("被瞄反杀")

AimlockTab:AddToggle("AimlockToggle", { Text = "启用自瞄 (视角追踪)", Default = SilentAimSettings.AimlockEnabled }):AddKeyPicker("AimlockKeybind", { Default = SilentAimSettings.AimlockKey, SyncToggleState = true, Mode = "Toggle" })
AimlockTab:AddToggle("AimlockSnapCamera", { Text = "锁定镜头视角 (Camera Snap)", Default = SilentAimSettings.AimlockSnapCamera }):OnChanged(function(Value) SilentAimSettings.AimlockSnapCamera = Value end)
AimlockTab:AddSlider("AimlockSmoothnessSlider", { Text = "平滑度 (1=无平滑)", Min = 0.01, Max = 1, Default = SilentAimSettings.AimlockSmoothness, Rounding = 2 }):OnChanged(function(Value) SilentAimSettings.AimlockSmoothness = Value end)
AimlockTab:AddDropdown("AimMethodDropdown", { Text = "瞄准方法", Default = SilentAimSettings.AimMethod, Values = {"aimbot", "V5.0 自瞄"} }):OnChanged(function(Value)
    SilentAimSettings.AimMethod = Value
    if Value == "V5.0 自瞄" then
        FOVCircleFrame.Size = UDim2.fromOffset(SilentAimSettings.AimbotFOVRadius * 2, SilentAimSettings.AimbotFOVRadius * 2)
        getgenv().AimBotEnabled = Toggles.EnabledToggle.Value or false
    else
        FOVCircleFrame.Size = UDim2.fromOffset(SilentAimSettings.FOVRadius * 2, SilentAimSettings.FOVRadius * 2)
        getgenv().AimBotEnabled = false
    end
    Library:Notify("瞄准方法: " .. Value)
end)
AimlockTab:AddSlider("AimbotFOVSlider", { Text = "V5自瞄FOV范围", Min = 10, Max = 1000, Default = SilentAimSettings.AimbotFOVRadius, Rounding = 0 }):OnChanged(function(Value)
    SilentAimSettings.AimbotFOVRadius = Value
    if SilentAimSettings.AimMethod == "V5.0 自瞄" then
        FOVCircleFrame.Size = UDim2.fromOffset(Value * 2, Value * 2)
    end
end)
AimlockTab:AddSlider("AimbotPredictionSlider", { Text = "V5自瞄预判量", Min = 0, Max = 0.3, Default = SilentAimSettings.AimbotPredictionFactor, Rounding = 3 }):OnChanged(function(Value) SilentAimSettings.AimbotPredictionFactor = Value end)
AimlockTab:AddSlider("AimbotAimSpeedSlider", { Text = "V5自瞄速度", Min = 1, Max = 30, Default = SilentAimSettings.AimbotAimSpeed, Rounding = 0 }):OnChanged(function(Value) SilentAimSettings.AimbotAimSpeed = Value end)
AimlockTab:AddToggle("ShowMobileAimlockButton", { Text = "显示自瞄按钮 (移动端)", Default = SilentAimSettings.ShowMobileAimlockButton }):OnChanged(function(Value)
    SilentAimSettings.ShowMobileAimlockButton = Value
    MobileAimlockButton.Visible = Value
end)
AimlockTab:AddToggle("AimlockButtonHoldMode", { Text = "移动端按钮使用长按触发", Default = SilentAimSettings.AimlockButtonHoldMode }):OnChanged(function(Value)
    SilentAimSettings.AimlockButtonHoldMode = Value
    if not Value then
        if aimlockHoldCoroutine then
            coroutine.close(aimlockHoldCoroutine)
            aimlockHoldCoroutine = nil
        end
        isAimlockActiveByButton = false
        MobileAimlockButton.Text = "自瞄\n[关]"
        MobileAimlockButton.TextColor3 = Color3.fromRGB(255, 80, 80)
        MALStroke.Color = Color3.fromRGB(255, 80, 80)
    end
end)
AimlockTab:AddSlider("AimlockHoldTimeSlider", { Text = "长按触发秒数", Min = 0, Max = 2, Default = SilentAimSettings.AimlockHoldTime, Rounding = 2 }):OnChanged(function(Value)
    SilentAimSettings.AimlockHoldTime = Value
end)
AimlockTab:AddSlider("AimlockButtonSizeSlider", { Text = "自瞄按钮大小", Min = 40, Max = 150, Default = SilentAimSettings.AimlockButtonSize, Rounding = 0 }):OnChanged(function(Value)
    SilentAimSettings.AimlockButtonSize = Value
    MobileAimlockButton.Size = UDim2.fromOffset(Value, Value)
end)
AimlockTab:AddToggle("PinMobileAimlockButton", { Text = "锁定自瞄按钮位置", Default = SilentAimSettings.MobileAimlockButtonPinned }):OnChanged(function(Value)
    SilentAimSettings.MobileAimlockButtonPinned = Value
end)
AimlockTab:AddButton("重置自瞄按钮位置", function()
    local screenSize = Camera.ViewportSize
    local newX = math.floor(screenSize.X / 2 - 80)
    local newY = math.floor(screenSize.Y / 2)
    MobileAimlockButton.Position = UDim2.fromOffset(newX, newY)
    SilentAimSettings.MobileAimlockButtonPosition = newX .. "," .. newY
end)

LockAimedTab:AddToggle("LockOnAimedToggle", { Text = "被瞄秒锁 (反杀功能)", Default = SilentAimSettings.LockOnAimed }):OnChanged(function(Value) SilentAimSettings.LockOnAimed = Value end)
LockAimedTab:AddToggle("LockOnAimedWallCheck", { Text = "被瞄秒锁进行墙体检测", Default = SilentAimSettings.LockOnAimedWallCheck }):OnChanged(function(Value) SilentAimSettings.LockOnAimedWallCheck = Value end)
LockAimedTab:AddDropdown("LockOnAimedPriority", { Text = "被瞄反杀优先级", Default = SilentAimSettings.LockOnAimedPriority, Values = {"准星最近", "距离最近", "最低血量"} }):OnChanged(function(Value) SilentAimSettings.LockOnAimedPriority = Value end)
LockAimedTab:AddSlider("LockOnAimedSensitivityX", { Text = "反瞄敏感度 (X轴/水平)", Min = 1, Max = 180, Default = SilentAimSettings.LockOnAimedSensitivityX, Rounding = 0 }):OnChanged(function(Value) SilentAimSettings.LockOnAimedSensitivityX = Value end)
LockAimedTab:AddSlider("LockOnAimedSensitivityY", { Text = "反瞄敏感度 (Y轴/垂直)", Min = 1, Max = 180, Default = SilentAimSettings.LockOnAimedSensitivityY, Rounding = 0 }):OnChanged(function(Value) SilentAimSettings.LockOnAimedSensitivityY = Value end)

local PredTabbox = Tabs.Aimlock:AddRightTabbox()
local PredTab = PredTabbox:AddTab("预判与静默机制")

PredTab:AddDropdown("MethodDropdown", { Text = "静默瞄准方式", Default = SilentAimSettings.SilentAimMethod, Values = { "Raycast","FindPartOnRay", "FindPartOnRayWithWhitelist", "FindPartOnRayWithIgnoreList", "ScreenPointToRay", "ViewportPointToRay", "Ray", "Mouse.Hit/Target" } }):OnChanged(function(Value) SilentAimSettings.SilentAimMethod = Value end)
PredTab:AddToggle("PredictionToggle", { Text = "Mouse.Hit/Target 预判", Default = SilentAimSettings.MouseHitPrediction }):OnChanged(function(Value) SilentAimSettings.MouseHitPrediction = Value end)
PredTab:AddSlider("PredictionAmountSlider", { Text = "预判量", Min = 0, Max = 1, Default = SilentAimSettings.MouseHitPredictionAmount, Rounding = 3 }):OnChanged(function(Value) SilentAimSettings.MouseHitPredictionAmount = Value; PredictionAmount = Value end)
PredTab:AddToggle("HeadshotChanceToggle", { Text = "启用爆头几率", Default = SilentAimSettings.HeadshotChanceEnabled }):OnChanged(function(Value) SilentAimSettings.HeadshotChanceEnabled = Value end)
PredTab:AddSlider('HeadshotChanceSlider', { Text = '爆头概率', Default = SilentAimSettings.HeadshotChance, Min = 0, Max = 100, Rounding = 1, Suffix = "%" }):OnChanged(function(Value) SilentAimSettings.HeadshotChance = Value end)

local FOVTabbox = Tabs.Visuals:AddLeftTabbox()
local NormalFOVTab = FOVTabbox:AddTab("普通FOV")
local FreeFOVTab = FOVTabbox:AddTab("自由FOV")

NormalFOVTab:AddToggle("FOVVisibleToggle", { Text = "显示FOV圈", Default = SilentAimSettings.FOVVisible })
    :AddColorPicker("FOVColorPicker", { Default = Color3.fromRGB(54, 57, 241), Title = "颜色1(单色/渐变)" })
    :AddColorPicker("FOVColorPicker2", { Default = Color3.fromRGB(255, 255, 255), Title = "颜色2(渐变)" })
Toggles.FOVVisibleToggle:OnChanged(function(Value) FOVCircleGui.Enabled = Value; SilentAimSettings.FOVVisible = Value end)
NormalFOVTab:AddToggle("FOVFillToggle", { Text = "显示FOV填充", Default = SilentAimSettings.FOVFillEnabled })
    :AddColorPicker("FOVFillColorPicker", { Default = Color3.fromRGB(54, 57, 241), Title = "填充颜色" })
Toggles.FOVFillToggle:OnChanged(function(Value) SilentAimSettings.FOVFillEnabled = Value end)
NormalFOVTab:AddSlider("FOVFillTransparencySlider", { Text = "FOV填充透明度", Min = 0, Max = 1, Default = SilentAimSettings.FOVFillTransparency, Rounding = 2 }):OnChanged(function(Value) SilentAimSettings.FOVFillTransparency = Value end)
NormalFOVTab:AddToggle("FOVFillGradientToggle", { Text = "填充渐变光", Default = SilentAimSettings.FOVFillGradientEnabled })
NormalFOVTab:AddSlider("FOVFillGradientSpeedSlider", { Text = "渐变光旋转速度", Min = 0.5, Max = 10, Default = SilentAimSettings.FOVFillGradientSpeed, Rounding = 1 }):OnChanged(function(Value) SilentAimSettings.FOVFillGradientSpeed = Value end)
NormalFOVTab:AddToggle("FOVFillReflectionToggle", { Text = "填充反光", Default = SilentAimSettings.FOVFillReflectionEnabled })
NormalFOVTab:AddSlider("FOVFillReflectionSpeedSlider", { Text = "反光移动速度", Min = 0.5, Max = 10, Default = SilentAimSettings.FOVFillReflectionSpeed, Rounding = 1 }):OnChanged(function(Value) SilentAimSettings.FOVFillReflectionSpeed = Value end)
NormalFOVTab:AddDropdown("FOVColorModeDropdown", { Text = "FOV圈颜色模式", Default = "单色", Values = {"单色", "彩虹", "渐变"} })
NormalFOVTab:AddSlider("FOVGradientSpeedSlider", { Text = "FOV变色速度", Min = 0.1, Max = 10, Default = 3, Rounding = 1 })
NormalFOVTab:AddSlider("FOVRadiusSlider", { Text = "FOV圈半径(基础)", Min = 10, Max = 1000, Default = SilentAimSettings.FOVRadius, Rounding = 0 }):OnChanged(function(Value) FOVCircleFrame.Size = UDim2.fromOffset(Value * 2, Value * 2); SilentAimSettings.FOVRadius = Value end)
NormalFOVTab:AddSlider("FOVThicknessSlider", { Text = "FOV圈粗细", Min = 0.1, Max = 1, Default = SilentAimSettings.FOVThickness, Rounding = 1 }):OnChanged(function(Value) SilentAimSettings.FOVThickness = Value end)
NormalFOVTab:AddSlider("FOVTransparencySlider", { Text = "FOV圈透明度", Min = 0, Max = 1, Default = SilentAimSettings.FOVTransparency, Rounding = 2 }):OnChanged(function(Value) SilentAimSettings.FOVTransparency = Value end)
NormalFOVTab:AddToggle("FixedFOVToggle", { Text = "固定FOV (移动端)", Default = SilentAimSettings.FixedFOV }):OnChanged(function(Value) SilentAimSettings.FixedFOV = Value end)
NormalFOVTab:AddToggle("DynamicFOVScaleToggle", { Text = "FOV动态等比缩放", Default = SilentAimSettings.DynamicFOVScale }):OnChanged(function(Value)
    SilentAimSettings.DynamicFOVScale = Value
    if Value then
        SilentAimSettings.InitialCameraFOV = Camera.FieldOfView
    end
end)
NormalFOVTab:AddButton("重置初始镜头FOV", function()
    SilentAimSettings.InitialCameraFOV = Camera.FieldOfView
    Library:Notify("已重置初始FOV为: " .. tostring(math.floor(SilentAimSettings.InitialCameraFOV)))
end)

FreeFOVTab:AddToggle("FreeFOVSingleModeToggle", { Text = "单一目标模式 (仅最近目标)", Default = SilentAimSettings.FreeFOVSingleMode }):OnChanged(function(Value) SilentAimSettings.FreeFOVSingleMode = Value end)
FreeFOVTab:AddSlider("FreeFOVSmoothingSlider", { Text = "切换平滑度 (1=无平滑)", Min = 0.01, Max = 1, Default = SilentAimSettings.FreeFOVSmoothing, Rounding = 2 }):OnChanged(function(Value) SilentAimSettings.FreeFOVSmoothing = Value end)
FreeFOVTab:AddToggle("FreeFOVAlwaysShow", { Text = "始终显示 (不受可见性影响)", Default = SilentAimSettings.FreeFOVAlwaysShow }):OnChanged(function(Value) SilentAimSettings.FreeFOVAlwaysShow = Value end)
FreeFOVTab:AddToggle("FreeFOVToggle", { Text = "自由FOV模式 (固定在目标上)", Default = SilentAimSettings.FreeFOVEnabled }):OnChanged(function(Value) SilentAimSettings.FreeFOVEnabled = Value end)
FreeFOVTab:AddSlider("FreeFOVStartDistSlider", { Text = "自由FOV开始缩放距离", Min = 0, Max = 500, Default = SilentAimSettings.FreeFOVStartScaleDistance, Rounding = 0 }):OnChanged(function(Value) SilentAimSettings.FreeFOVStartScaleDistance = Value end)
FreeFOVTab:AddSlider("FreeFOVScaleIntervalSlider", { Text = "自由FOV缩放间隔(Studs)", Min = 0.001, Max = 100, Default = SilentAimSettings.FreeFOVScaleInterval, Rounding = 0 }):OnChanged(function(Value) SilentAimSettings.FreeFOVScaleInterval = Value end)
FreeFOVTab:AddSlider("FreeFOVMinSlider", { Text = "自由FOV最小半径", Min = 5, Max = 100, Default = SilentAimSettings.FreeFOVMinSize, Rounding = 0 }):OnChanged(function(Value) SilentAimSettings.FreeFOVMinSize = Value end)
FreeFOVTab:AddSlider("FreeFOVMaxSlider", { Text = "自由FOV最大半径", Min = 50, Max = 1000, Default = SilentAimSettings.FreeFOVMaxSize, Rounding = 0 }):OnChanged(function(Value) SilentAimSettings.FreeFOVMaxSize = Value end)
FreeFOVTab:AddSlider("FreeFOVScaleSlider", { Text = "自由FOV缩放倍率", Min = 0.001, Max = 0.1, Default = SilentAimSettings.FreeFOVScaleFactor, Rounding = 3 }):OnChanged(function(Value) SilentAimSettings.FreeFOVScaleFactor = Value end)

local IndicatorTabbox = Tabs.Visuals:AddRightTabbox()
local IndStyleTab = IndicatorTabbox:AddTab("指示器样式")
local InfoTab = IndicatorTabbox:AddTab("面板与信息")

IndStyleTab:AddToggle("ShowTargetToggle", { Text = "显示目标", Default = SilentAimSettings.ShowSilentAimTarget })
    :AddColorPicker("TargetIndicatorColorPicker", { Default = Color3.fromRGB(255,0,0), Title = "颜色1" })
    :AddColorPicker("TargetIndicatorColorPicker2", { Default = Color3.fromRGB(0,255,0), Title = "颜色2" })
Toggles.ShowTargetToggle:OnChanged(function(Value) SilentAimSettings.ShowSilentAimTarget = Value end)
IndStyleTab:AddDropdown("IndicatorColorModeDropdown", { Text = "指示器颜色模式", Default = "单色", Values = {"单色", "彩虹", "渐变"} })
IndStyleTab:AddSlider("IndicatorGradientSpeedSlider", { Text = "指示器变色速度", Min = 0.1, Max = 10, Default = 3, Rounding = 1 })
IndStyleTab:AddDropdown("IndicatorStyleDropdown", { Text = "指示器样式", Values = {"Circle", "Triangle", "Pentagram", "十字准星", "三线准星"}, Default = "Circle" })
IndStyleTab:AddSlider("TargetIndicatorRadiusSlider", { Text = "指示器大小(通用)", Min = 5, Max = 50, Default = SilentAimSettings.TargetIndicatorRadius, Rounding = 0 }):OnChanged(function(Value) SilentAimSettings.TargetIndicatorRadius = Value end)
IndStyleTab:AddSlider("CrosshairLengthSlider", { Text = "十字准星长度", Min = 5, Max = 100, Default = SilentAimSettings.CrosshairLength, Rounding = 0 }):OnChanged(function(Value) SilentAimSettings.CrosshairLength = Value end)
IndStyleTab:AddSlider("CrosshairGapSlider", { Text = "十字准星间隙", Min = 0, Max = 50, Default = SilentAimSettings.CrosshairGap, Rounding = 0 }):OnChanged(function(Value) SilentAimSettings.CrosshairGap = Value end)
IndStyleTab:AddToggle("IndicatorRotationToggle", { Text = "指示器旋转", Default = SilentAimSettings.IndicatorRotationEnabled }):OnChanged(function(Value) SilentAimSettings.IndicatorRotationEnabled = Value end)
IndStyleTab:AddSlider("IndicatorRotationSpeedSlider", { Text = "旋转速度", Min = 0, Max = 10, Default = SilentAimSettings.IndicatorRotationSpeed, Rounding = 1 }):OnChanged(function(Value) SilentAimSettings.IndicatorRotationSpeed = Value end)
IndStyleTab:AddToggle("IndicatorBreathingToggle", { Text = "启用呼吸效果", Default = SilentAimSettings.IndicatorBreathingEnabled }):OnChanged(function(Value) SilentAimSettings.IndicatorBreathingEnabled = Value end)
IndStyleTab:AddSlider("IndicatorBreathingSpeedSlider", { Text = "呼吸速度", Min = 0.1, Max = 5, Default = SilentAimSettings.IndicatorBreathingSpeed, Rounding = 1 }):OnChanged(function(Value) SilentAimSettings.IndicatorBreathingSpeed = Value end)
IndStyleTab:AddSlider("IndicatorBreathingMinSlider", { Text = "呼吸最小比例", Min = 0.1, Max = 1, Default = SilentAimSettings.IndicatorBreathingMin, Rounding = 2 }):OnChanged(function(Value) SilentAimSettings.IndicatorBreathingMin = Value end)
IndStyleTab:AddSlider("IndicatorBreathingMaxSlider", { Text = "呼吸最大比例", Min = 1, Max = 3, Default = SilentAimSettings.IndicatorBreathingMax, Rounding = 2 }):OnChanged(function(Value) SilentAimSettings.IndicatorBreathingMax = Value end)
IndStyleTab:AddToggle("ThreeLineCrosshairToggle", { Text = "启用三线准星", Default = SilentAimSettings.ThreeLineCrosshairEnabled }):OnChanged(function(Value) SilentAimSettings.ThreeLineCrosshairEnabled = Value end)
IndStyleTab:AddSlider("ThreeLineCrosshairLengthSlider", { Text = "三线准星长度", Min = 5, Max = 100, Default = SilentAimSettings.ThreeLineCrosshairLength, Rounding = 0 }):OnChanged(function(Value) SilentAimSettings.ThreeLineCrosshairLength = Value end)
IndStyleTab:AddSlider("ThreeLineCrosshairGapSlider", { Text = "三线准星间隙", Min = 0, Max = 50, Default = SilentAimSettings.ThreeLineCrosshairGap, Rounding = 0 }):OnChanged(function(Value) SilentAimSettings.ThreeLineCrosshairGap = Value end)

InfoTab:AddDropdown("TargetInfoStyleDropdown", { Text = "信息显示样式", Default = SilentAimSettings.TargetInfoStyle, Values = {"面板", "头顶", "独立面板"} }):OnChanged(function(Value) SilentAimSettings.TargetInfoStyle = Value end)
InfoTab:AddDropdown("ESPInfoDropdown", {
    Text = "显示内容 (多选)",
    AllowNull = true,
    Multi = true,
    Values = {"名字", "血量", "距离", "类别"},
    Default = {"名字", "血量", "距离"}
}):OnChanged(function(val)
    SilentAimSettings.ShowTargetName = val["名字"] or false
    SilentAimSettings.ShowTargetHealth = val["血量"] or false
    SilentAimSettings.ShowTargetDistance = val["距离"] or false
    SilentAimSettings.ShowTargetCategory = val["类别"] or false
end)
InfoTab:AddButton("重置独立面板位置", function()
    SilentAimSettings.IndependentPanelPosition = "200,200"
    local pos = SilentAimSettings.IndependentPanelPosition:split(",")
    IndependentPanelFrame.Position = UDim2.fromOffset(tonumber(pos[1]), tonumber(pos[2]))
end)
InfoTab:AddToggle("PinPanelToggle", {Text = "固定面板", Default = SilentAimSettings.IndependentPanelPinned}):OnChanged(function(value)
    SilentAimSettings.IndependentPanelPinned = value
    IndependentPanelFrame.Draggable = not value
end)

local VisualsRightTabbox = Tabs.Visuals:AddRightTabbox()
local ExtrasTab = VisualsRightTabbox:AddTab("额外")

ExtrasTab:AddToggle("HighlightToggle", { Text = "启用高亮", Default = SilentAimSettings.HighlightEnabled })
    :AddColorPicker("HighlightColorPicker", { Default = Color3.fromRGB(255,255,0), Title = "颜色1" })
    :AddColorPicker("HighlightColorPicker2", { Default = Color3.fromRGB(0,255,255), Title = "颜色2" })
Toggles.HighlightToggle:OnChanged(function(Value) SilentAimSettings.HighlightEnabled = Value end)
ExtrasTab:AddDropdown("HighlightColorModeDropdown", { Text = "高亮颜色模式", Default = "单色", Values = {"单色", "彩虹", "渐变"} })
ExtrasTab:AddSlider("HighlightGradientSpeedSlider", { Text = "高亮变色速度", Min = 0.1, Max = 10, Default = 3, Rounding = 1 })
ExtrasTab:AddToggle("DamageNotifierToggle", { Text = "显示伤害通知", Default = SilentAimSettings.ShowDamageNotifier }):OnChanged(function(Value) SilentAimSettings.ShowDamageNotifier = Value end)
ExtrasTab:AddDropdown('HitSound', { Text = '击中音效', Default = '关闭', Values = {'关闭', 'bell', 'metal', 'click', 'exp'} })
ExtrasTab:AddToggle("ShowTracerToggle", { Text = "显示目标追踪线", Default = SilentAimSettings.ShowTracer }):AddColorPicker("TracerColorPicker", { Default = tracer_line.Color, Title = "追踪线颜色" })
Toggles.ShowTracerToggle:OnChanged(function(Value) SilentAimSettings.ShowTracer = Value end)
Options.TracerColorPicker:OnChanged(function(Value) tracer_line.Color = Value end)
ExtrasTab:AddSlider('TracerYOffsetSlider', { Text = '追踪线Y轴偏移', Default = SilentAimSettings.Tracer_Y_Offset, Min = -10, Max = 10, Rounding = 3, Suffix = " studs" }):OnChanged(function(Value) SilentAimSettings.Tracer_Y_Offset = Value end)

local HitEffectsTabbox = Tabs.Visuals:AddLeftTabbox()
local HitEffectsTab = HitEffectsTabbox:AddTab("命中特效")

HitEffectsTab:AddToggle("HitBulletTracerToggle", { Text = "子弹轨迹", Default = SilentAimSettings.HitBulletTracerEnabled })
    :AddColorPicker("HitBulletTracerColor", { Default = SilentAimSettings.HitBulletTracerColor, Title = "轨迹颜色", Transparency = SilentAimSettings.HitBulletTracerTransparency })
    :AddColorPicker("HitBulletTracerOutlineColor", { Default = SilentAimSettings.HitBulletTracerOutlineColor, Title = "Drawing 描边", Transparency = SilentAimSettings.HitBulletTracerOutlineTransparency })
Toggles.HitBulletTracerToggle:OnChanged(function(Value) SilentAimSettings.HitBulletTracerEnabled = Value end)
Options.HitBulletTracerColor:OnChanged(function(Value) SilentAimSettings.HitBulletTracerColor = Value end)
Options.HitBulletTracerOutlineColor:OnChanged(function(Value) SilentAimSettings.HitBulletTracerOutlineColor = Value end)
HitEffectsTab:AddDropdown("HitBulletTracerMode", { Text = "轨迹模式", Default = SilentAimSettings.HitBulletTracerMode, Values = {"Drawing", "Beam"} }):OnChanged(function(Value) SilentAimSettings.HitBulletTracerMode = Value end)
HitEffectsTab:AddDropdown("HitBulletTracerTexture", { Text = "Beam 纹理", Default = SilentAimSettings.HitBulletTracerTexture, Values = {"Laser", "Beam"} }):OnChanged(function(Value) SilentAimSettings.HitBulletTracerTexture = Value end)
HitEffectsTab:AddSlider("HitBulletTracerTransparency", { Text = "轨迹透明度", Min = 0, Max = 1, Default = SilentAimSettings.HitBulletTracerTransparency, Rounding = 2 }):OnChanged(function(Value) SilentAimSettings.HitBulletTracerTransparency = Value end)
HitEffectsTab:AddSlider("HitBulletTracerOutlineTransparency", { Text = "描边透明度", Min = 0, Max = 1, Default = SilentAimSettings.HitBulletTracerOutlineTransparency, Rounding = 2 }):OnChanged(function(Value) SilentAimSettings.HitBulletTracerOutlineTransparency = Value end)
HitEffectsTab:AddSlider("HitBulletTracerLifetime", { Text = "轨迹寿命", Min = 0.1, Max = 2, Default = SilentAimSettings.HitBulletTracerLifetime, Rounding = 1, Suffix = "s" }):OnChanged(function(Value) SilentAimSettings.HitBulletTracerLifetime = Value end)

HitEffectsTab:AddToggle("HitParticleToggle", { Text = "Hit particle", Default = SilentAimSettings.HitParticleEnabled })
    :AddColorPicker("HitParticleColor", { Default = SilentAimSettings.HitParticleColor, Title = "粒子颜色", Transparency = SilentAimSettings.HitParticleTransparency })
Toggles.HitParticleToggle:OnChanged(function(Value) SilentAimSettings.HitParticleEnabled = Value end)
Options.HitParticleColor:OnChanged(function(Value) SilentAimSettings.HitParticleColor = Value end)
HitEffectsTab:AddDropdown("HitParticleStyle", { Text = "粒子样式", Default = SilentAimSettings.HitParticleStyle, Values = {"Sparks", "Splash", "Flame", "Bubble", "Bits", "Air"} }):OnChanged(function(Value) SilentAimSettings.HitParticleStyle = Value end)
HitEffectsTab:AddSlider("HitParticleTransparency", { Text = "粒子透明度", Min = 0, Max = 1, Default = SilentAimSettings.HitParticleTransparency, Rounding = 2 }):OnChanged(function(Value) SilentAimSettings.HitParticleTransparency = Value end)

HitEffectsTab:AddToggle("HitChamsToggle", { Text = "Hit chams", Default = SilentAimSettings.HitChamsEnabled })
    :AddColorPicker("HitChamsColor", { Default = SilentAimSettings.HitChamsColor, Title = "Chams 颜色", Transparency = SilentAimSettings.HitChamsTransparency })
Toggles.HitChamsToggle:OnChanged(function(Value) SilentAimSettings.HitChamsEnabled = Value end)
Options.HitChamsColor:OnChanged(function(Value) SilentAimSettings.HitChamsColor = Value end)
HitEffectsTab:AddDropdown("HitChamsStyle", { Text = "Chams 样式", Default = SilentAimSettings.HitChamsStyle, Values = {"ForceField", "Outline", "Neon"} }):OnChanged(function(Value) SilentAimSettings.HitChamsStyle = Value end)
HitEffectsTab:AddSlider("HitChamsTransparency", { Text = "Chams 透明度", Min = 0, Max = 1, Default = SilentAimSettings.HitChamsTransparency, Rounding = 2 }):OnChanged(function(Value) SilentAimSettings.HitChamsTransparency = Value end)
HitEffectsTab:AddToggle("HitChamsOnlyLast", { Text = "仅保留最后一次", Default = SilentAimSettings.HitChamsOnlyLast }):OnChanged(function(Value) SilentAimSettings.HitChamsOnlyLast = Value end)
HitEffectsTab:AddToggle("HitChamsFadeOut", { Text = "淡出", Default = SilentAimSettings.HitChamsFadeOut }):OnChanged(function(Value) SilentAimSettings.HitChamsFadeOut = Value end)
HitEffectsTab:AddSlider("HitChamsLifetime", { Text = "Chams 寿命", Min = 0.1, Max = 2, Default = SilentAimSettings.HitChamsLifetime, Rounding = 1, Suffix = "s" }):OnChanged(function(Value) SilentAimSettings.HitChamsLifetime = Value end)


JujuWorldTabbox = Tabs.Visuals:AddRightTabbox()
JujuWorldTab = JujuWorldTabbox:AddTab("Juju 世界")
JujuWorldTab:AddToggle("JujuAtmosphere", {Text="Atmosphere changer",Default=false}):AddColorPicker("JujuAtmosphereColor",{Default=JujuWorldSettings.AtmosphereColor,Title="Atmosphere color"}):AddColorPicker("JujuAtmosphereDecay",{Default=JujuWorldSettings.AtmosphereDecay,Title="Atmosphere decay"})
JujuWorldTab:AddSlider("JujuAtmosphereDensity",{Text="Density",Min=0,Max=1,Default=.4,Rounding=3}):OnChanged(function(v) JujuWorldSettings.AtmosphereDensity=v end)
JujuWorldTab:AddSlider("JujuAtmosphereGlare",{Text="Glare",Min=0,Max=10,Default=10,Rounding=1}):OnChanged(function(v) JujuWorldSettings.AtmosphereGlare=v end)
JujuWorldTab:AddSlider("JujuAtmosphereHaze",{Text="Haze",Min=0,Max=10,Default=10,Rounding=1}):OnChanged(function(v) JujuWorldSettings.AtmosphereHaze=v end)
JujuWorldTab:AddToggle("JujuBrightness",{Text="Brightness changer",Default=false}):OnChanged(function(v) JujuWorldSettings.Brightness=v end)
JujuWorldTab:AddSlider("JujuBrightnessValue",{Text="Brightness",Min=-10,Max=10,Default=-3,Rounding=1}):OnChanged(function(v) JujuWorldSettings.BrightnessValue=v end)
JujuWorldTab:AddToggle("JujuSaturation",{Text="Saturation changer",Default=false}):OnChanged(function(v) JujuWorldSettings.Saturation=v end)
JujuWorldTab:AddSlider("JujuSaturationValue",{Text="Saturation",Min=-5,Max=5,Default=0,Rounding=2}):OnChanged(function(v) JujuWorldSettings.SaturationValue=v end)
JujuWorldTab:AddToggle("JujuExposure",{Text="Exposure changer",Default=false}):OnChanged(function(v) JujuWorldSettings.Exposure=v end)
JujuWorldTab:AddSlider("JujuExposureValue",{Text="Exposure",Min=-10,Max=10,Default=-.5,Rounding=1}):OnChanged(function(v) JujuWorldSettings.ExposureValue=v end)
JujuWorldTab:AddToggle("JujuAmbient",{Text="Ambient changer",Default=false}):AddColorPicker("JujuAmbientColor",{Default=JujuWorldSettings.AmbientColor,Title="Ambient color"})
JujuWorldTab:AddToggle("JujuTime",{Text="Time changer",Default=false}):OnChanged(function(v) JujuWorldSettings.Time=v end)
JujuWorldTab:AddSlider("JujuTimeValue",{Text="Clock time",Min=0,Max=24,Default=3,Rounding=1}):OnChanged(function(v) JujuWorldSettings.TimeValue=v end)
JujuWorldTab:AddToggle("JujuFog",{Text="Fog changer",Default=false}):AddColorPicker("JujuFogColor",{Default=JujuWorldSettings.FogColor,Title="Fog color"})
JujuWorldTab:AddSlider("JujuFogStart",{Text="Fog start",Min=0,Max=10000,Default=0,Rounding=0}):OnChanged(function(v) JujuWorldSettings.FogStart=v end)
JujuWorldTab:AddSlider("JujuFogEnd",{Text="Fog end",Min=0,Max=10000,Default=800,Rounding=0}):OnChanged(function(v) JujuWorldSettings.FogEnd=v end)
Options.JujuAtmosphereColor:OnChanged(function(v) JujuWorldSettings.AtmosphereColor=v end); Options.JujuAtmosphereDecay:OnChanged(function(v) JujuWorldSettings.AtmosphereDecay=v end); Options.JujuAmbientColor:OnChanged(function(v) JujuWorldSettings.AmbientColor=v end); Options.JujuFogColor:OnChanged(function(v) JujuWorldSettings.FogColor=v end)
Toggles.JujuAtmosphere:OnChanged(function(v) JujuWorldSettings.Atmosphere=v end)
Toggles.JujuAmbient:OnChanged(function(v) JujuWorldSettings.Ambient=v end)
Toggles.JujuFog:OnChanged(function(v) JujuWorldSettings.Fog=v end)

local ManualLockGroupBox = Tabs.Management:AddLeftGroupbox("手动锁定")
ManualLockGroupBox:AddDropdown("TargetSelectorDropdown", { Text = "锁定目标 (无=自动)", Default = "无", Values = {"无"} }):OnChanged(function(selectedName)
    if selectedName == "无" then
        lockedTargetObject = nil
    else
        lockedTargetObject = targetMap[selectedName]
    end
end)
ManualLockGroupBox:AddButton("刷新列表", function()
    targetMap = {}
    local targetNames = {"无"}
    local targetMode = SilentAimSettings.TargetMode
    
    if targetMode == "NPC" or targetMode == "所有" then
        updateNPCs()
    end
    
    if targetMode == "玩家" or targetMode == "所有" then
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                if not (SilentAimSettings.TeamCheck and player.Team == LocalPlayer.Team) then
                    table.insert(targetNames, player.Name)
                    targetMap[player.Name] = player
                end
            end
        end
    end
    
    if targetMode == "NPC" or targetMode == "所有" then
        for _, npc in ipairs(npcList) do
            if npc and npc.Name and npc.PrimaryPart then
                table.insert(targetNames, npc.Name)
                targetMap[npc.Name] = npc
            end
        end
    end

    Options.TargetSelectorDropdown:SetValues(targetNames, "无")
    lockedTargetObject = nil
end)

local NameTargetingGroup = Tabs.Management:AddLeftGroupbox("名称索敌")
NameTargetingGroup:AddToggle("EnableNameTargetingToggle", { Text = "启用名称索敌", Default = SilentAimSettings.EnableNameTargeting }):OnChanged(function(Value)
    SilentAimSettings.EnableNameTargeting = Value
end)
NameTargetingGroup:AddToggle("AdvancedFilteringToggle", { Text = "高级筛选模式", Default = SilentAimSettings.AdvancedFiltering }):OnChanged(function(Value)
    SilentAimSettings.AdvancedFiltering = Value
end)
local whitelistDataOption = NameTargetingGroup:AddInput("WhitelistData", { Text = "Whitelist Internal Data", Default = "[]" })
whitelistDataOption.Visible = false
local function updateWhitelistData()
    local jsonString = HttpService:JSONEncode(SilentAimSettings.WhitelistedNames)
    whitelistDataOption:SetValue(jsonString)
end
NameTargetingGroup:AddInput("WhitelistNameInput", { Text = "名称", PlaceholderText = "输入要锁定的NPC名称关键字" })
NameTargetingGroup:AddButton("添加到列表", function()
    local name = Options.WhitelistNameInput.Value
    if name and name ~= "" then
        table.insert(SilentAimSettings.WhitelistedNames, name)
        Options.WhitelistDropdown:SetValues(SilentAimSettings.WhitelistedNames)
        Options.WhitelistNameInput:SetValue("")
        updateWhitelistData()
    end
end)
NameTargetingGroup:AddDropdown("WhitelistDropdown", { Text = "名称列表", Values = SilentAimSettings.WhitelistedNames or {} })
NameTargetingGroup:AddButton("从列表中删除", function()
    local selectedName = Options.WhitelistDropdown.Value
    if selectedName then
        for i, name in ipairs(SilentAimSettings.WhitelistedNames) do
            if name == selectedName then
                table.remove(SilentAimSettings.WhitelistedNames, i)
                break
            end
        end
        Options.WhitelistDropdown:SetValues(SilentAimSettings.WhitelistedNames)
        updateWhitelistData()
    end
end)
whitelistDataOption:OnChanged(function(jsonString)
    if not jsonString or jsonString == "" then jsonString = "[]" end
    local success, decoded = pcall(HttpService.JSONDecode, HttpService, jsonString)
    if success and type(decoded) == 'table' then
        SilentAimSettings.WhitelistedNames = decoded
        Options.WhitelistDropdown:SetValues(SilentAimSettings.WhitelistedNames)
    end
end)

local WhitelistPathGroup = Tabs.Management:AddLeftGroupbox("白名单路径管理")
WhitelistPathGroup:AddInput("WhitelistPathInput", { Text = "路径", PlaceholderText = "输入从Workspace开始的路径" })
WhitelistPathGroup:AddButton("添加路径", function()
    local path = Options.WhitelistPathInput.Value
    if path and path ~= "" then
        table.insert(SilentAimSettings.WhitelistPath, path)
        Options.WhitelistPathDropdown:SetValues(SilentAimSettings.WhitelistPath)
        Options.WhitelistPathInput:SetValue("")
    end
end)
WhitelistPathGroup:AddDropdown("WhitelistPathDropdown", { Text = "路径列表", Values = SilentAimSettings.WhitelistPath or {} })
WhitelistPathGroup:AddButton("删除路径", function()
    local selectedPath = Options.WhitelistPathDropdown.Value
    if selectedPath then
        for i, p in ipairs(SilentAimSettings.WhitelistPath) do
            if p == selectedPath then
                table.remove(SilentAimSettings.WhitelistPath, i)
                break
            end
        end
        Options.WhitelistPathDropdown:SetValues(SilentAimSettings.WhitelistPath)
    end
end)

local BlacklistGroup = Tabs.Management:AddRightGroupbox("黑名单管理")
local blacklistDataOption = BlacklistGroup:AddInput("BlacklistData", { Text = "Blacklist Internal Data", Default = "[]" })
blacklistDataOption.Visible = false
local function updateBlacklistData()
    local jsonString = HttpService:JSONEncode(SilentAimSettings.BlacklistedNames)
    blacklistDataOption:SetValue(jsonString)
end
BlacklistGroup:AddInput("BlacklistNameInput", { Text = "名称", PlaceholderText = "输入要拉黑的精确名称" })
BlacklistGroup:AddButton("添加到黑名单", function()
    local name = Options.BlacklistNameInput.Value
    if name and name ~= "" and not isBlacklisted(name) then
        table.insert(SilentAimSettings.BlacklistedNames, name)
        Options.BlacklistDropdown:SetValues(SilentAimSettings.BlacklistedNames)
        Options.BlacklistNameInput:SetValue("")
        updateBlacklistData()
    end
end)
BlacklistGroup:AddDropdown("BlacklistDropdown", { Text = "黑名单列表", Values = SilentAimSettings.BlacklistedNames or {} })
BlacklistGroup:AddButton("从黑名单中删除", function()
    local selectedName = Options.BlacklistDropdown.Value
    if selectedName then
        for i, name in ipairs(SilentAimSettings.BlacklistedNames) do
            if name == selectedName then
                table.remove(SilentAimSettings.BlacklistedNames, i)
                break
            end
        end
        Options.BlacklistDropdown:SetValues(SilentAimSettings.BlacklistedNames)
        updateBlacklistData()
    end
end)
blacklistDataOption:OnChanged(function(jsonString)
    if not jsonString or jsonString == "" then jsonString = "[]" end
    local success, decoded = pcall(HttpService.JSONDecode, HttpService, jsonString)
    if success and type(decoded) == 'table' then
        SilentAimSettings.BlacklistedNames = decoded
        Options.BlacklistDropdown:SetValues(SilentAimSettings.BlacklistedNames)
    end
end)

end -- UI-only scoped controls

local CharacterModGroup = Tabs.Misc:AddLeftGroupbox("角色修改")
local originalCharacterData = {}
local transparencyLoopConnection = nil
local function restoreCharacterAppearance()
    for part, data in pairs(originalCharacterData) do
        if part and part.Parent then
            part.Material = data.material
            part.Color = data.color
            part.Transparency = data.transparency
            if part:IsA("BasePart") then
                part.Reflectance = data.reflectance or 0
                if data.TextureID then
                    part.TextureID = data.TextureID
                end
                part:SetAttribute("WaterTextureActive", nil)
            end
        end
    end
    originalCharacterData = {}
end

local function transparencyLoop()
    if not LocalPlayer.Character then
        if next(originalCharacterData) then
             originalCharacterData = {}
        end
        return
    end
    local colorMode = Options.CharColorModeDropdown.Value
    local dynColor = getDynamicColor(colorMode, Options.CharColorPicker.Value, Options.CharColorPicker2.Value, Options.CharGradientSpeedSlider.Value)
    local matMode = SilentAimSettings.CharMaterialMode
    local tickTime = tick()

    for _, part in ipairs(LocalPlayer.Character:GetDescendants()) do
        if part:IsA("BasePart") and not part.Parent:IsA("Accessory") then
            local isMeshPart = part:IsA("MeshPart") or part:IsA("UnionOperation")
            
            if not originalCharacterData[part] then
                originalCharacterData[part] = {
                    material = part.Material,
                    color = part.Color,
                    transparency = part.Transparency,
                    reflectance = part.Reflectance,
                    TextureID = isMeshPart and part.TextureID or nil
                }
            end

            if matMode ~= "Water" and isMeshPart and part:GetAttribute("WaterTextureActive") then
                part.TextureID = originalCharacterData[part].TextureID or ""
                part:SetAttribute("WaterTextureActive", nil)
            end
            
            if matMode == "ForceField" then
                part.Material = Enum.Material.ForceField
                part.Reflectance = 0
                part.Transparency = 0
            elseif matMode == "Neon" then
                part.Material = Enum.Material.Neon
                part.Reflectance = 0
                part.Transparency = 0
            elseif matMode == "Glass" then
                part.Material = Enum.Material.Glass
                part.Transparency = 0.55
                part.Reflectance = 0
            elseif matMode == "SmoothPlastic" then
                part.Material = Enum.Material.SmoothPlastic
                part.Reflectance = 0
                part.Transparency = 0
            elseif matMode == "ForceOverlay" then
                part.Material = Enum.Material.Plastic
                part.Reflectance = 999999
                part.Transparency = 0
            elseif matMode == "Pulse" then
                part.Material = Enum.Material.Neon
                part.Transparency = (math.sin(tickTime * 3) + 1) / 2
                part.Reflectance = 0
            elseif matMode == "Tween" then
                part.Material = Enum.Material.ForceField
                part.Reflectance = 0
                part.Transparency = 0
                local t = (math.sin(tickTime * 3) + 1) / 2
                dynColor = dynColor:Lerp(Color3.fromRGB(255, 255, 255), t)
            elseif matMode == "Water" then
                part.Material = Enum.Material.ForceField
                part.Transparency = 0
                if isMeshPart then
                    local textureIndex = math.floor((tickTime * 12) % 25) + 1
                    part.TextureID = string.format("rbxasset://textures/water/normal_%02d.dds", textureIndex)
                    part:SetAttribute("WaterTextureActive", true)
                end
            elseif matMode == "原版" then
                part.Material = originalCharacterData[part].material
                part.Reflectance = originalCharacterData[part].reflectance
                part.Transparency = originalCharacterData[part].transparency
            end
            
            if colorMode == "原色" and matMode ~= "Tween" then
                part.Color = originalCharacterData[part].color
            else
                part.Color = dynColor
            end
        end
    end
end

CharacterModGroup:AddToggle("TransparentCharacterEnabled", { Text = "开启人物外观修改", Default = false })
    :AddColorPicker("CharColorPicker", { Default = Color3.fromRGB(255,255,255), Title = "颜色1" })
    :AddColorPicker("CharColorPicker2", { Default = Color3.fromRGB(0,0,0), Title = "颜色2" })
Toggles.TransparentCharacterEnabled:OnChanged(function(value)
    if value then
        transparencyLoopConnection = RunService.Heartbeat:Connect(transparencyLoop)
    else
        if transparencyLoopConnection then
            transparencyLoopConnection:Disconnect()
            transparencyLoopConnection = nil
        end
        restoreCharacterAppearance()
    end
end)
CharacterModGroup:AddDropdown("CharColorModeDropdown", { Text = "人物颜色模式", Default = "原色", Values = {"原色", "单色", "彩虹", "渐变"} }):OnChanged(function(value)
    if Toggles.TransparentCharacterEnabled.Value then
        restoreCharacterAppearance()
        task.wait()
        transparencyLoop()
    end
end)
CharacterModGroup:AddSlider("CharGradientSpeedSlider", { Text = "人物变色速度", Min = 0.1, Max = 10, Default = 3, Rounding = 1 })
CharacterModGroup:AddDropdown("CharMaterialDropdown", { Text = "材质", Default = "ForceField", Values = {"原版", "Pulse", "ForceField", "Neon", "Glass", "Tween", "SmoothPlastic", "ForceOverlay", "Water"} }):OnChanged(function(value)
    SilentAimSettings.CharMaterialMode = value
    if Toggles.TransparentCharacterEnabled.Value then
        restoreCharacterAppearance()
        task.wait()
        transparencyLoop()
    end
end)

local EntertainmentGroup = Tabs.Misc:AddLeftGroupbox("娱乐")
local spinThread = nil
local spinEnabled = false
local spinSpeed = math.rad(10)
local function spinCharacter()
    while spinEnabled and task.wait() do
        local char = LocalPlayer.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if hrp then
            hrp.CFrame = hrp.CFrame * CFrame.Angles(0, spinSpeed, 0)
        else
            break
        end
    end
    spinThread = nil
end
EntertainmentGroup:AddToggle("SpinToggle", { Text = "启用旋转", Default = false }):OnChanged(function(value)
    spinEnabled = value
    if spinEnabled and not spinThread then
        spinThread = coroutine.create(spinCharacter)
        coroutine.resume(spinThread)
    end
end)
EntertainmentGroup:AddSlider("SpinSpeedSlider", { Text = "旋转速度", Default = 10, Min = 1, Max = 100, Rounding = 0 }):OnChanged(function(value)
    spinSpeed = math.rad(value)
end)

local MovementTabbox = Tabs.Misc:AddRightTabbox()
local AATab = MovementTabbox:AddTab("反自瞄 (AA)")
local DesyncTab = MovementTabbox:AddTab("网络同步")
local BhopTab = MovementTabbox:AddTab("移动身法")

AATab:AddToggle("AAToggle", { Text = "启用反自瞄", Default = SilentAimSettings.AA_Enabled }):OnChanged(function(Value)
    SilentAimSettings.AA_Enabled = Value
end)
AATab:AddToggle("AAUpsideDown", { Text = "倒立 (Upside Down)", Default = SilentAimSettings.AA_UpsideDown }):OnChanged(function(Value)
    SilentAimSettings.AA_UpsideDown = Value
end)
AATab:AddDropdown("AAYaw", { Text = "Yaw 偏航模式", Default = SilentAimSettings.AA_Yaw, Values = {"Backward", "Spin", "Jitter", "Freestanding"} }):OnChanged(function(Value)
    SilentAimSettings.AA_Yaw = Value
end)
AATab:AddSlider("AAJitter", { Text = "Jitter 角度 / Spin 速度", Min = 0, Max = 180, Default = SilentAimSettings.AA_Jitter, Rounding = 0 }):OnChanged(function(Value)
    SilentAimSettings.AA_Jitter = Value
end)

DesyncTab:AddToggle("DesyncToggle", { Text = "启用断步 (Desync)", Default = SilentAimSettings.Desync_Enabled }):OnChanged(function(Value)
    SilentAimSettings.Desync_Enabled = Value
end)
DesyncTab:AddSlider("DesyncTicksSlider", { Text = "Desync Ticks (频率)", Min = 1, Max = 5000, Default = SilentAimSettings.Desync_Ticks, Rounding = 0 }):OnChanged(function(Value)
    SilentAimSettings.Desync_Ticks = Value
end)
DesyncTab:AddToggle("DesyncVisToggle", { Text = "显示虚假残影", Default = SilentAimSettings.Desync_Visualize }):AddColorPicker("DesyncVisColor", { Default = SilentAimSettings.Desync_Color, Title = "残影颜色" })
Toggles.DesyncVisToggle:OnChanged(function(Value) SilentAimSettings.Desync_Visualize = Value end)
Options.DesyncVisColor:OnChanged(function(Value) SilentAimSettings.Desync_Color = Value end)

BhopTab:AddToggle("AutoBhopToggle", { Text = "启用自动连跳", Default = SilentAimSettings.AutoBhopEnabled }):OnChanged(function(value)
    SilentAimSettings.AutoBhopEnabled = value
    if value then
        MobileBhopButton.Text = "自动连跳\n[开]"
        MobileBhopButton.TextColor3 = Color3.fromRGB(50, 255, 50)
        MBHStroke.Color = Color3.fromRGB(50, 255, 50)
    else
        MobileBhopButton.Text = "自动连跳\n[关]"
        MobileBhopButton.TextColor3 = Color3.fromRGB(255, 80, 80)
        MBHStroke.Color = Color3.fromRGB(255, 80, 80)
    end
end)
BhopTab:AddSlider("BhopBoostSlider", { Text = "连跳空中加速力度", Default = 0, Min = 0, Max = 100, Rounding = 0 }):OnChanged(function(value)
    SilentAimSettings.BhopBoostAmount = value
end)
BhopTab:AddToggle("ShowMobileBhopButton", { Text = "显示连跳悬浮窗 (移动端)", Default = SilentAimSettings.ShowMobileBhopButton }):OnChanged(function(Value)
    SilentAimSettings.ShowMobileBhopButton = Value
    MobileBhopButton.Visible = Value
end)
BhopTab:AddToggle("PinMobileBhopButton", { Text = "锁定连跳按钮位置", Default = SilentAimSettings.MobileBhopButtonPinned }):OnChanged(function(Value)
    SilentAimSettings.MobileBhopButtonPinned = Value
end)
BhopTab:AddButton("重置连跳按钮位置 (居中偏右)", function()
    local screenSize = Camera.ViewportSize
    local newX = math.floor(screenSize.X / 2 + 80)
    local newY = math.floor(screenSize.Y / 2)
    MobileBhopButton.Position = UDim2.fromOffset(newX, newY)
    SilentAimSettings.MobileBhopButtonPosition = newX .. "," .. newY
end)

local RadarGroup = Tabs.Misc:AddRightGroupbox("雷达图 (Radar Beta)")
RadarGroup:AddToggle("RadarEnabled", { Text = "显示雷达图", Default = false }):OnChanged(function(v) 
    SilentAimSettings.RadarEnabled = v 
    if not v and RadarBG then RadarBG.Visible = false end
end)
RadarGroup:AddSlider("RadarScale", { Text = "雷达探测范围", Min = 50, Max = 1000, Default = 200, Rounding = 0 }):OnChanged(function(v) SilentAimSettings.RadarRange = v end)
RadarGroup:AddSlider("RadarSize", { Text = "雷达窗口大小", Min = 100, Max = 300, Default = 150, Rounding = 0 }):OnChanged(function(v) 
    SilentAimSettings.RadarSize = v
    if RadarBG then RadarBG.Size = UDim2.fromOffset(v, v) end 
end)

local WatermarkBox = Tabs["UI Settings"]:AddLeftGroupbox("水印设置 (Watermark)")
WatermarkBox:AddToggle("WatermarkToggle", { Text = "显示水印", Default = true })

local DraggableLabel
local function EnsureWatermark()
    if Library.AddDraggableLabel then
        DraggableLabel = Library:AddDraggableLabel("Universal Silent Aim")
        DraggableLabel:SetVisible(Toggles.WatermarkToggle.Value)
    else
        local WatermarkGui = Instance.new("ScreenGui")
        WatermarkGui.Name = "WatermarkGui"
        WatermarkGui.ResetOnSpawn = false
        WatermarkGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
        WatermarkGui.Parent = CoreGui
        
        local WatermarkFrame = Instance.new("Frame")
        WatermarkFrame.Size = UDim2.new(0, 250, 0, 25)
        WatermarkFrame.Position = UDim2.new(0, 10, 0, 10)
        WatermarkFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        WatermarkFrame.BorderSizePixel = 1
        WatermarkFrame.BorderColor3 = Color3.new(1, 1, 1)
        WatermarkFrame.BackgroundTransparency = 0.3
        WatermarkFrame.Parent = WatermarkGui
        WatermarkFrame.Active = true
        WatermarkFrame.Draggable = true
        
        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 4)
        UICorner.Parent = WatermarkFrame
        
        local WatermarkText = Instance.new("TextLabel")
        WatermarkText.Size = UDim2.new(1, 0, 1, 0)
        WatermarkText.BackgroundTransparency = 1
        WatermarkText.TextColor3 = Color3.new(1, 1, 1)
        WatermarkText.TextSize = 14
        WatermarkText.Font = Enum.Font.SourceSansBold
        WatermarkText.Text = "Universal Silent Aim"
        WatermarkText.Parent = WatermarkFrame
        
        DraggableLabel = {
            SetVisible = function(self, vis)
                WatermarkGui.Enabled = vis
            end,
            SetText = function(self, txt)
                WatermarkText.Text = txt
            end,
            Destroy = function(self)
                WatermarkGui:Destroy()
            end
        }
        DraggableLabel:SetVisible(Toggles.WatermarkToggle.Value)
    end
end
EnsureWatermark()

Toggles.WatermarkToggle:OnChanged(function(Value)
    if DraggableLabel then
        DraggableLabel:SetVisible(Value)
    end
end)

local FrameTimer = tick()
local FrameCounter = 0
local FPS = 60

local WatermarkConnection = RunService.RenderStepped:Connect(function()
    FrameCounter = FrameCounter + 1
 
    if (tick() - FrameTimer) >= 1 then
        FPS = FrameCounter
        FrameTimer = tick()
        FrameCounter = 0
    end
    
    local ping = 0
    pcall(function()
        ping = math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue())
    end)
 
    if Toggles.WatermarkToggle and Toggles.WatermarkToggle.Value then
        if DraggableLabel then
            DraggableLabel:SetText(('Universal Silent Aim | %s FPS | %s ms'):format(
                math.floor(FPS),
                ping
            ))
        end
    end
end)

FOVCircleGui.Enabled = Toggles.FOVVisibleToggle.Value or SilentAimSettings.AimMethod == "V5.0 自瞄"
FOVCircleFrame.Size = UDim2.fromOffset((SilentAimSettings.AimMethod == "V5.0 自瞄" and SilentAimSettings.AimbotFOVRadius or Options.FOVRadiusSlider.Value) * 2, (SilentAimSettings.AimMethod == "V5.0 自瞄" and SilentAimSettings.AimbotFOVRadius or Options.FOVRadiusSlider.Value) * 2)
IndependentPanelFrame.Draggable = not SilentAimSettings.IndependentPanelPinned

task.spawn(function()
    while task.wait(2) do
        if SilentAimSettings.TargetMode == "NPC" or SilentAimSettings.TargetMode == "所有" then
            updateNPCs()
        end
    end
end)

JujuLightingOriginal={Brightness=Lighting.Brightness,Exposure=Lighting.ExposureCompensation,Ambient=Lighting.Ambient,ClockTime=Lighting.ClockTime,FogColor=Lighting.FogColor,FogStart=Lighting.FogStart,FogEnd=Lighting.FogEnd}
JujuColorCorrection=Instance.new("ColorCorrectionEffect"); JujuColorCorrection.Name="JujuColorCorrection"; JujuColorCorrection.Parent=Lighting
JujuAtmosphere=Lighting:FindFirstChildOfClass("Atmosphere"); JujuAtmosphereCreated=false
function JujuUpdateWorld()
    Lighting.Brightness=JujuWorldSettings.Brightness and JujuWorldSettings.BrightnessValue or JujuLightingOriginal.Brightness
    Lighting.ExposureCompensation=JujuWorldSettings.Exposure and JujuWorldSettings.ExposureValue or JujuLightingOriginal.Exposure
    Lighting.Ambient=JujuWorldSettings.Ambient and JujuWorldSettings.AmbientColor or JujuLightingOriginal.Ambient
    Lighting.ClockTime=JujuWorldSettings.Time and JujuWorldSettings.TimeValue or JujuLightingOriginal.ClockTime
    Lighting.FogColor=JujuWorldSettings.Fog and JujuWorldSettings.FogColor or JujuLightingOriginal.FogColor; Lighting.FogStart=JujuWorldSettings.Fog and JujuWorldSettings.FogStart or JujuLightingOriginal.FogStart; Lighting.FogEnd=JujuWorldSettings.Fog and JujuWorldSettings.FogEnd or JujuLightingOriginal.FogEnd
    JujuColorCorrection.Saturation=JujuWorldSettings.Saturation and JujuWorldSettings.SaturationValue or 0;JujuColorCorrection.Enabled=JujuWorldSettings.Saturation
    if JujuWorldSettings.Atmosphere then if not JujuAtmosphere then JujuAtmosphere=Instance.new("Atmosphere",Lighting);JujuAtmosphereCreated=true end;JujuAtmosphere.Color=JujuWorldSettings.AtmosphereColor;JujuAtmosphere.Decay=JujuWorldSettings.AtmosphereDecay;JujuAtmosphere.Density=JujuWorldSettings.AtmosphereDensity;JujuAtmosphere.Glare=JujuWorldSettings.AtmosphereGlare;JujuAtmosphere.Haze=JujuWorldSettings.AtmosphereHaze elseif JujuAtmosphereCreated and JujuAtmosphere then JujuAtmosphere:Destroy();JujuAtmosphere=nil;JujuAtmosphereCreated=false end
end
JujuVisualUpdateConnection=RunService.Heartbeat:Connect(JujuUpdateWorld)

local sensorySource = game:HttpGet("https://raw.githubusercontent.com/rthusrtghdfhtyjkehrfh/sensoryESP/main/ESP.lua")
sensorySource = sensorySource:gsub("if not ESPConfig.LocalPlayer and player == LocalPlayer then continue end", "if not ESPConfig.LocalPlayer and player == LocalPlayer then continue end\n            if ESPConfig.TeamCheck and player ~= LocalPlayer and LocalPlayer.Team ~= nil and player.Team ~= nil and player.Team == LocalPlayer.Team then continue end")
local esp = loadstring(sensorySource)()

esp:Load({

    -- General
    Enabled = false,
    Keybind = {
        Enabled = false,
        Key = Enum.KeyCode.Insert,
    },
    Players = false,
    TeamCheck = false,
    LocalPlayer = false,
    LimitFPS = 70,
    DynamicBoxes = false,
    DynamicBoxesCheap = false,
    DynamicBoxesIncludeAll = false,
    VisibilityCheckRate = 0.3,

    -- Box
    Boxes = false,
    BoxType = "Normal",
    BoxColor = Color3.fromRGB(255, 255, 255),
    BoxThickness = 1,

    Outlines = {
        Style = "Full",
        Color = Color3.fromRGB(0, 0, 0),
        Thickness = 1,
    },

    BoxFill = {
        Enabled = false,
        Color = Color3.fromRGB(255, 255, 255),
        Transparency = 0.85,
        Gradient = {
            Enabled = false,
            Color1 = Color3.fromRGB(180, 255, 255),
            Color2 = Color3.fromRGB(0, 255, 255),
            Color3 = Color3.fromRGB(0, 120, 255),
            Rotation = 0,
            Animated = false,
            Speed = 64,
            Direction = "Right",
        },
    },

    -- Health bar
    HealthBar = {
        Enabled = false,
        Position = "Left",
        SideGap = 2,
        Width = 2,
        ShowText = false,
        TextFollowBar = false,
        HideWhenFullHP = false,
        FollowGradientColorText = false,
        Font = "Smallest Pixel-7",
        TextSize = 9,
        Outline = {
            Style = "Full",
            Color = Color3.fromRGB(0, 0, 0),
        },
        Gradient = {
            Enabled = false,
            Color1 = Color3.fromRGB(0, 255, 0),
            Color2 = Color3.fromRGB(255, 255, 0),
            Color3 = Color3.fromRGB(255, 0, 0),
        },
    },

    -- Name text
    Names = false,
    TextSize = 12,
    TextColor = Color3.fromRGB(255, 255, 255),
    TextOutline = false,
    TextOutlineStyle = "Full",
    TextGap = 3,
    Font = "Proggy Clean",

    TeamIndicator = {
        Enabled = false,
        Position = "Right",
        UseTeamColor = false,
        Color = Color3.fromRGB(255, 255, 255),
        Compact = true,
        TextSize = 10,
    },

    FriendlyIndicator = {
        Enabled = false,
        Position = "Right",
        CheckTeam = false,
        CheckFriends = false,
        Text = "[F]",
        Color = Color3.fromRGB(0, 255, 0),
    },

    Weapon = {
        Enabled = false,
        Gap = 1,
        OutlineStyle = "Full",
        Font = "Proggy Clean",
        TextSize = 12,
        Color = Color3.fromRGB(255, 255, 255),
        InventoryPath = "ReplicatedStorage.Players.%NAME%.Inventory",
        UseToolFallback = false,
    },

    Flags = {
        Enabled = false,
        Position = "Right",
        Gap = 2,
        SideGap = 4,
        TextGap = 2,
        OutlineStyle = "Full",
        Font = "Smallest Pixel-7",
        TextSize = 9,
        Options = {
            Idle = false,
            Moving = false,
            Jumping = false,
            Swimming = false,
        },
        Colors = {
            Idle = Color3.fromRGB(255, 255, 255),
            Moving = Color3.fromRGB(255, 255, 255),
            Jumping = Color3.fromRGB(255, 255, 255),
            Swimming = Color3.fromRGB(65, 65, 255),
        },
    },

    Skeleton = {
        Enabled = false,
        Color = Color3.fromRGB(255, 255, 255),
        Outline = false,
        OutlineColor = Color3.fromRGB(0, 0, 0),
        Gradient = {
            Enabled = false,
            Color1 = Color3.fromRGB(255, 255, 255),
            Color2 = Color3.fromRGB(100, 200, 255),
        },
    },

    OffScreenArrows = {
        Enabled = false,
        Size = 14,
        Color = Color3.fromRGB(255, 255, 255),
        OrbitRadius = 100,
        ArrowMode = "Compass",
        Outline = false,
        OutlineColor = Color3.fromRGB(0, 0, 0),
        Names = {
            Enabled = false,
            Font = "Smallest Pixel-7",
            TextSize = 9,
            Color = Color3.fromRGB(255, 255, 255),
            Outline = false,
            OutlineColor = Color3.fromRGB(0, 0, 0),
            Side = "Bottom",
            Gap = 4,
        },
        Distance = {
            Enabled = false,
            Font = "Smallest Pixel-7",
            TextSize = 9,
            Color = Color3.fromRGB(255, 255, 255),
            Outline = false,
            OutlineColor = Color3.fromRGB(0, 0, 0),
            Side = "Bottom",
            Gap = 2,
        },
    },

    Distance = {
        Enabled = false,
        Unit = "Meters",
        StudsPerMeter = 3,
        Ending = "m",
        Gap = 3,
        OutlineStyle = "Full",
        Font = "Proggy Clean",
        TextSize = 12,
        Color = Color3.fromRGB(255, 255, 255),
    },

    Chams = {
        Enabled = false,
        Type = "Highlight",
        Highlight = {
            FillColor = Color3.fromRGB(255, 255, 255),
            FillTransparency = 1,
            OutlineColor = Color3.fromRGB(255, 255, 255),
            OutlineTransparency = 0,
            VisibleCheck = false,
        },
        Adornment = {
            Color = Color3.fromRGB(59, 144, 204),
            VisibleColor = Color3.fromRGB(59, 204, 90),
            Transparency = 0.7,
            AlwaysOnTop = false,
            VisibleCheck = false,
        },
        MeshChams = {
            FillColor = Color3.fromRGB(59, 144, 204),
            FillTransparency = 0.6,
            OutlineColor = Color3.fromRGB(255, 255, 255),
            OutlineTransparency = 0,
            VisibleCheck = false,
        },
    },

    Directories = {},
})

SensoryESPInstance = esp
SensoryESPConfig = esp:GetConfig()

SensoryGeneralBox = Tabs.SensoryESP:AddLeftGroupbox("基础与方框")
SensoryTextBox = Tabs.SensoryESP:AddLeftGroupbox("血条与文本")
SensoryExtraBox = Tabs.SensoryESP:AddRightGroupbox("骨骼与离屏")
SensoryChamsBox = Tabs.SensoryESP:AddRightGroupbox("Chams 与状态")

SensoryGeneralBox:AddToggle("SensoryEnabled", {Text="启用 ESP", Default=SensoryESPConfig.Enabled}):OnChanged(function(v) SensoryESPConfig.Enabled=v end)
SensoryGeneralBox:AddToggle("SensoryPlayers", {Text="玩家 ESP", Default=SensoryESPConfig.Players}):OnChanged(function(v) SensoryESPConfig.Players=v end)
SensoryGeneralBox:AddToggle("SensoryTeamCheck", {Text="不显示队友", Default=SensoryESPConfig.TeamCheck}):OnChanged(function(v) SensoryESPConfig.TeamCheck=v end)
SensoryGeneralBox:AddToggle("SensoryLocalPlayer", {Text="显示自己", Default=SensoryESPConfig.LocalPlayer}):OnChanged(function(v) SensoryESPConfig.LocalPlayer=v end)
SensoryGeneralBox:AddToggle("SensoryKeybindEnabled", {Text="Insert 快捷开关", Default=SensoryESPConfig.Keybind.Enabled}):OnChanged(function(v) SensoryESPConfig.Keybind.Enabled=v end)
SensoryGeneralBox:AddSlider("SensoryFPS", {Text="刷新帧率", Min=0, Max=240, Default=SensoryESPConfig.LimitFPS, Rounding=0, Suffix=" FPS"}):OnChanged(function(v) SensoryESPConfig.LimitFPS=v end)
SensoryGeneralBox:AddToggle("SensoryDynamicBoxes", {Text="动态方框", Default=SensoryESPConfig.DynamicBoxes}):OnChanged(function(v) SensoryESPConfig.DynamicBoxes=v end)
SensoryGeneralBox:AddToggle("SensoryDynamicCheap", {Text="低开销动态方框", Default=SensoryESPConfig.DynamicBoxesCheap}):OnChanged(function(v) SensoryESPConfig.DynamicBoxesCheap=v end)
SensoryGeneralBox:AddToggle("SensoryBoxes", {Text="方框", Default=SensoryESPConfig.Boxes}):AddColorPicker("SensoryBoxColor", {Default=SensoryESPConfig.BoxColor, Title="方框颜色"})
Toggles.SensoryBoxes:OnChanged(function(v) SensoryESPConfig.Boxes=v end)
Options.SensoryBoxColor:OnChanged(function(v) SensoryESPConfig.BoxColor=v end)
SensoryGeneralBox:AddDropdown("SensoryBoxType", {Text="方框样式", Default=SensoryESPConfig.BoxType, Values={"Normal","Corner","Circle"}}):OnChanged(function(v) SensoryESPConfig.BoxType=v end)
SensoryGeneralBox:AddSlider("SensoryBoxThickness", {Text="方框粗细", Min=1, Max=5, Default=SensoryESPConfig.BoxThickness, Rounding=1}):OnChanged(function(v) SensoryESPConfig.BoxThickness=v end)
SensoryGeneralBox:AddDropdown("SensoryOutlineStyle", {Text="方框描边", Default=SensoryESPConfig.Outlines.Style, Values={"Full","None"}}):OnChanged(function(v) SensoryESPConfig.Outlines.Style=v end)
SensoryGeneralBox:AddSlider("SensoryOutlineThickness", {Text="描边粗细", Min=1, Max=5, Default=SensoryESPConfig.Outlines.Thickness, Rounding=1}):OnChanged(function(v) SensoryESPConfig.Outlines.Thickness=v end)
SensoryGeneralBox:AddToggle("SensoryBoxFill", {Text="方框填充", Default=SensoryESPConfig.BoxFill.Enabled}):AddColorPicker("SensoryFillColor", {Default=SensoryESPConfig.BoxFill.Color, Title="填充颜色"})
Toggles.SensoryBoxFill:OnChanged(function(v) SensoryESPConfig.BoxFill.Enabled=v end)
Options.SensoryFillColor:OnChanged(function(v) SensoryESPConfig.BoxFill.Color=v end)
SensoryGeneralBox:AddSlider("SensoryFillTransparency", {Text="填充透明度", Min=0, Max=1, Default=SensoryESPConfig.BoxFill.Transparency, Rounding=2}):OnChanged(function(v) SensoryESPConfig.BoxFill.Transparency=v end)
SensoryGeneralBox:AddToggle("SensoryFillGradient", {Text="填充渐变", Default=SensoryESPConfig.BoxFill.Gradient.Enabled}):OnChanged(function(v) SensoryESPConfig.BoxFill.Gradient.Enabled=v end)
SensoryGeneralBox:AddToggle("SensoryFillAnimated", {Text="渐变动画", Default=SensoryESPConfig.BoxFill.Gradient.Animated}):OnChanged(function(v) SensoryESPConfig.BoxFill.Gradient.Animated=v end)
SensoryGeneralBox:AddSlider("SensoryFillSpeed", {Text="渐变速度", Min=0, Max=360, Default=SensoryESPConfig.BoxFill.Gradient.Speed, Rounding=0}):OnChanged(function(v) SensoryESPConfig.BoxFill.Gradient.Speed=v end)
SensoryGeneralBox:AddLabel("方框描边颜色"):AddColorPicker("SensoryOutlineColor", {Default=SensoryESPConfig.Outlines.Color, Title="方框描边颜色"})
Options.SensoryOutlineColor:OnChanged(function(v) SensoryESPConfig.Outlines.Color=v end)
SensoryGeneralBox:AddLabel("渐变颜色"):AddColorPicker("SensoryFillGradient1", {Default=SensoryESPConfig.BoxFill.Gradient.Color1, Title="渐变起始"}):AddColorPicker("SensoryFillGradient2", {Default=SensoryESPConfig.BoxFill.Gradient.Color2, Title="渐变中间"}):AddColorPicker("SensoryFillGradient3", {Default=SensoryESPConfig.BoxFill.Gradient.Color3, Title="渐变末端"})
Options.SensoryFillGradient1:OnChanged(function(v) SensoryESPConfig.BoxFill.Gradient.Color1=v end)
Options.SensoryFillGradient2:OnChanged(function(v) SensoryESPConfig.BoxFill.Gradient.Color2=v end)
Options.SensoryFillGradient3:OnChanged(function(v) SensoryESPConfig.BoxFill.Gradient.Color3=v end)

SensoryTextBox:AddToggle("SensoryHealth", {Text="血条", Default=SensoryESPConfig.HealthBar.Enabled}):OnChanged(function(v) SensoryESPConfig.HealthBar.Enabled=v end)
SensoryTextBox:AddDropdown("SensoryHealthPosition", {Text="血条位置", Default=SensoryESPConfig.HealthBar.Position, Values={"Left","Right","Top","Bottom"}}):OnChanged(function(v) SensoryESPConfig.HealthBar.Position=v end)
SensoryTextBox:AddSlider("SensoryHealthWidth", {Text="血条宽度", Min=1, Max=8, Default=SensoryESPConfig.HealthBar.Width, Rounding=0}):OnChanged(function(v) SensoryESPConfig.HealthBar.Width=v end)
SensoryTextBox:AddToggle("SensoryHealthText", {Text="血量数字", Default=SensoryESPConfig.HealthBar.ShowText}):OnChanged(function(v) SensoryESPConfig.HealthBar.ShowText=v end)
SensoryTextBox:AddToggle("SensoryHealthFollow", {Text="数字跟随血条", Default=SensoryESPConfig.HealthBar.TextFollowBar}):OnChanged(function(v) SensoryESPConfig.HealthBar.TextFollowBar=v end)
SensoryTextBox:AddToggle("SensoryHealthHideFull", {Text="满血隐藏数字", Default=SensoryESPConfig.HealthBar.HideWhenFullHP}):OnChanged(function(v) SensoryESPConfig.HealthBar.HideWhenFullHP=v end)
SensoryTextBox:AddToggle("SensoryHealthGradient", {Text="血条渐变", Default=SensoryESPConfig.HealthBar.Gradient.Enabled}):OnChanged(function(v) SensoryESPConfig.HealthBar.Gradient.Enabled=v end)
SensoryTextBox:AddLabel("血条渐变颜色"):AddColorPicker("SensoryHealthHigh", {Default=SensoryESPConfig.HealthBar.Gradient.Color1, Title="高血量"}):AddColorPicker("SensoryHealthMid", {Default=SensoryESPConfig.HealthBar.Gradient.Color2, Title="中血量"}):AddColorPicker("SensoryHealthLow", {Default=SensoryESPConfig.HealthBar.Gradient.Color3, Title="低血量"})
Options.SensoryHealthHigh:OnChanged(function(v) SensoryESPConfig.HealthBar.Gradient.Color1=v end)
Options.SensoryHealthMid:OnChanged(function(v) SensoryESPConfig.HealthBar.Gradient.Color2=v end)
Options.SensoryHealthLow:OnChanged(function(v) SensoryESPConfig.HealthBar.Gradient.Color3=v end)
SensoryTextBox:AddToggle("SensoryNames", {Text="名称", Default=SensoryESPConfig.Names}):AddColorPicker("SensoryTextColor", {Default=SensoryESPConfig.TextColor, Title="文字颜色"})
Toggles.SensoryNames:OnChanged(function(v) SensoryESPConfig.Names=v end)
Options.SensoryTextColor:OnChanged(function(v) SensoryESPConfig.TextColor=v end)
SensoryTextBox:AddSlider("SensoryTextSize", {Text="名称字号", Min=8, Max=24, Default=SensoryESPConfig.TextSize, Rounding=0}):OnChanged(function(v) SensoryESPConfig.TextSize=v end)
SensoryTextBox:AddToggle("SensoryTextOutline", {Text="文字描边", Default=SensoryESPConfig.TextOutline}):OnChanged(function(v) SensoryESPConfig.TextOutline=v end)
SensoryTextBox:AddToggle("SensoryTeam", {Text="队伍标识", Default=SensoryESPConfig.TeamIndicator.Enabled}):OnChanged(function(v) SensoryESPConfig.TeamIndicator.Enabled=v end)
SensoryTextBox:AddToggle("SensoryFriendly", {Text="友军标识", Default=SensoryESPConfig.FriendlyIndicator.Enabled}):OnChanged(function(v) SensoryESPConfig.FriendlyIndicator.Enabled=v end)
SensoryTextBox:AddToggle("SensoryWeapon", {Text="武器名称", Default=SensoryESPConfig.Weapon.Enabled}):AddColorPicker("SensoryWeaponColor", {Default=SensoryESPConfig.Weapon.Color, Title="武器文字颜色"})
Toggles.SensoryWeapon:OnChanged(function(v) SensoryESPConfig.Weapon.Enabled=v end)
Options.SensoryWeaponColor:OnChanged(function(v) SensoryESPConfig.Weapon.Color=v end)
SensoryTextBox:AddSlider("SensoryWeaponSize", {Text="武器字号", Min=8, Max=24, Default=SensoryESPConfig.Weapon.TextSize, Rounding=0}):OnChanged(function(v) SensoryESPConfig.Weapon.TextSize=v end)
SensoryTextBox:AddToggle("SensoryDistance", {Text="距离", Default=SensoryESPConfig.Distance.Enabled}):AddColorPicker("SensoryDistanceColor", {Default=SensoryESPConfig.Distance.Color, Title="距离颜色"})
Toggles.SensoryDistance:OnChanged(function(v) SensoryESPConfig.Distance.Enabled=v end)
Options.SensoryDistanceColor:OnChanged(function(v) SensoryESPConfig.Distance.Color=v end)
SensoryTextBox:AddDropdown("SensoryDistanceUnit", {Text="距离单位", Default=SensoryESPConfig.Distance.Unit, Values={"Meters","Studs"}}):OnChanged(function(v) SensoryESPConfig.Distance.Unit=v; SensoryESPConfig.Distance.Ending=v=="Meters" and "m" or " studs" end)

SensoryExtraBox:AddToggle("SensorySkeleton", {Text="骨骼", Default=SensoryESPConfig.Skeleton.Enabled}):AddColorPicker("SensorySkeletonColor", {Default=SensoryESPConfig.Skeleton.Color, Title="骨骼颜色"})
Toggles.SensorySkeleton:OnChanged(function(v) SensoryESPConfig.Skeleton.Enabled=v end)
Options.SensorySkeletonColor:OnChanged(function(v) SensoryESPConfig.Skeleton.Color=v end)
SensoryExtraBox:AddToggle("SensorySkeletonOutline", {Text="骨骼描边", Default=SensoryESPConfig.Skeleton.Outline}):OnChanged(function(v) SensoryESPConfig.Skeleton.Outline=v end)
SensoryExtraBox:AddToggle("SensorySkeletonGradient", {Text="骨骼渐变", Default=SensoryESPConfig.Skeleton.Gradient.Enabled}):OnChanged(function(v) SensoryESPConfig.Skeleton.Gradient.Enabled=v end)
SensoryExtraBox:AddToggle("SensoryArrows", {Text="离屏箭头", Default=SensoryESPConfig.OffScreenArrows.Enabled}):AddColorPicker("SensoryArrowColor", {Default=SensoryESPConfig.OffScreenArrows.Color, Title="箭头颜色"})
Toggles.SensoryArrows:OnChanged(function(v) SensoryESPConfig.OffScreenArrows.Enabled=v end)
Options.SensoryArrowColor:OnChanged(function(v) SensoryESPConfig.OffScreenArrows.Color=v end)
SensoryExtraBox:AddDropdown("SensoryArrowMode", {Text="箭头模式", Default=SensoryESPConfig.OffScreenArrows.ArrowMode, Values={"Compass","Camera"}}):OnChanged(function(v) SensoryESPConfig.OffScreenArrows.ArrowMode=v end)
SensoryExtraBox:AddSlider("SensoryArrowSize", {Text="箭头大小", Min=6, Max=40, Default=SensoryESPConfig.OffScreenArrows.Size, Rounding=0}):OnChanged(function(v) SensoryESPConfig.OffScreenArrows.Size=v end)
SensoryExtraBox:AddSlider("SensoryArrowRadius", {Text="箭头半径", Min=40, Max=500, Default=SensoryESPConfig.OffScreenArrows.OrbitRadius, Rounding=0}):OnChanged(function(v) SensoryESPConfig.OffScreenArrows.OrbitRadius=v end)
SensoryExtraBox:AddToggle("SensoryArrowOutline", {Text="箭头描边", Default=SensoryESPConfig.OffScreenArrows.Outline}):OnChanged(function(v) SensoryESPConfig.OffScreenArrows.Outline=v end)
SensoryExtraBox:AddToggle("SensoryArrowNames", {Text="离屏名称", Default=SensoryESPConfig.OffScreenArrows.Names.Enabled}):OnChanged(function(v) SensoryESPConfig.OffScreenArrows.Names.Enabled=v end)
SensoryExtraBox:AddToggle("SensoryArrowDistance", {Text="离屏距离", Default=SensoryESPConfig.OffScreenArrows.Distance.Enabled}):OnChanged(function(v) SensoryESPConfig.OffScreenArrows.Distance.Enabled=v end)

SensoryChamsBox:AddToggle("SensoryFlags", {Text="状态 Flags", Default=SensoryESPConfig.Flags.Enabled}):OnChanged(function(v) SensoryESPConfig.Flags.Enabled=v end)
SensoryChamsBox:AddToggle("SensoryFlagIdle", {Text="Idle", Default=SensoryESPConfig.Flags.Options.Idle}):OnChanged(function(v) SensoryESPConfig.Flags.Options.Idle=v end)
SensoryChamsBox:AddToggle("SensoryFlagMoving", {Text="Moving", Default=SensoryESPConfig.Flags.Options.Moving}):OnChanged(function(v) SensoryESPConfig.Flags.Options.Moving=v end)
SensoryChamsBox:AddToggle("SensoryFlagJumping", {Text="Jumping", Default=SensoryESPConfig.Flags.Options.Jumping}):OnChanged(function(v) SensoryESPConfig.Flags.Options.Jumping=v end)
SensoryChamsBox:AddToggle("SensoryFlagSwimming", {Text="Swimming", Default=SensoryESPConfig.Flags.Options.Swimming}):OnChanged(function(v) SensoryESPConfig.Flags.Options.Swimming=v end)
SensoryChamsBox:AddToggle("SensoryChams", {Text="Chams", Default=SensoryESPConfig.Chams.Enabled}):OnChanged(function(v) SensoryESPConfig.Chams.Enabled=v end)
SensoryChamsBox:AddDropdown("SensoryChamsType", {Text="Chams 类型", Default=SensoryESPConfig.Chams.Type, Values={"Highlight","Adornment","MeshChams"}}):OnChanged(function(v) SensoryESPConfig.Chams.Type=v end)
SensoryChamsBox:AddLabel("Highlight 颜色"):AddColorPicker("SensoryHighlightFill", {Default=SensoryESPConfig.Chams.Highlight.FillColor, Title="Highlight 填充"}):AddColorPicker("SensoryHighlightOutline", {Default=SensoryESPConfig.Chams.Highlight.OutlineColor, Title="Highlight 描边"})
Options.SensoryHighlightFill:OnChanged(function(v) SensoryESPConfig.Chams.Highlight.FillColor=v; SensoryESPConfig.Chams.MeshChams.FillColor=v end)
Options.SensoryHighlightOutline:OnChanged(function(v) SensoryESPConfig.Chams.Highlight.OutlineColor=v; SensoryESPConfig.Chams.MeshChams.OutlineColor=v end)
SensoryChamsBox:AddLabel("Adornment 颜色"):AddColorPicker("SensoryAdornmentColor", {Default=SensoryESPConfig.Chams.Adornment.Color, Title="遮挡颜色"}):AddColorPicker("SensoryAdornmentVisible", {Default=SensoryESPConfig.Chams.Adornment.VisibleColor, Title="可见颜色"})
Options.SensoryAdornmentColor:OnChanged(function(v) SensoryESPConfig.Chams.Adornment.Color=v end)
Options.SensoryAdornmentVisible:OnChanged(function(v) SensoryESPConfig.Chams.Adornment.VisibleColor=v end)
SensoryChamsBox:AddToggle("SensoryChamsVisible", {Text="可见性检测", Default=SensoryESPConfig.Chams.Highlight.VisibleCheck}):OnChanged(function(v) SensoryESPConfig.Chams.Highlight.VisibleCheck=v; SensoryESPConfig.Chams.Adornment.VisibleCheck=v; SensoryESPConfig.Chams.MeshChams.VisibleCheck=v end)
SensoryChamsBox:AddSlider("SensoryChamsFillTransparency", {Text="Chams 填充透明度", Min=0, Max=1, Default=SensoryESPConfig.Chams.Highlight.FillTransparency, Rounding=2}):OnChanged(function(v) SensoryESPConfig.Chams.Highlight.FillTransparency=v; SensoryESPConfig.Chams.MeshChams.FillTransparency=v; SensoryESPConfig.Chams.Adornment.Transparency=v end)
SensoryChamsBox:AddSlider("SensoryChamsOutlineTransparency", {Text="Chams 描边透明度", Min=0, Max=1, Default=SensoryESPConfig.Chams.Highlight.OutlineTransparency, Rounding=2}):OnChanged(function(v) SensoryESPConfig.Chams.Highlight.OutlineTransparency=v; SensoryESPConfig.Chams.MeshChams.OutlineTransparency=v end)
SensoryChamsBox:AddToggle("SensoryChamsAlwaysTop", {Text="始终置顶", Default=SensoryESPConfig.Chams.Adornment.AlwaysOnTop}):OnChanged(function(v) SensoryESPConfig.Chams.Adornment.AlwaysOnTop=v end)


local HitEffectsFolder = Instance.new("Folder")
HitEffectsFolder.Name = "SilentAimHitEffects"
HitEffectsFolder.Parent = workspace
local activeHitCham = nil
local activeHitChams = {}
local activeHitEffectConnections = {}
local activeHitEffectResources = {}

local function getHitOrigin()
    local character = LocalPlayer.Character
    if not character then return Camera.CFrame.Position end
    local root = character:FindFirstChild("HumanoidRootPart")
    local head = character:FindFirstChild("Head")
    local fallback = head and head.Position or root and root.Position or Camera.CFrame.Position

    local tool = character:FindFirstChildOfClass("Tool")
    if tool then
        for _, name in ipairs({"Muzzle", "MuzzleAttachment", "Barrel", "Handle"}) do
            local muzzle = tool:FindFirstChild(name, true)
            if muzzle then
                local position
                if muzzle:IsA("Attachment") then position = muzzle.WorldPosition end
                if muzzle:IsA("BasePart") then
                    local attachment = muzzle:FindFirstChildWhichIsA("Attachment")
                    position = attachment and attachment.WorldPosition or muzzle.Position
                end
                if position and (position - fallback).Magnitude <= 25 then return position end
            end
        end
    end

    local shot = recentShots[#recentShots]
    if shot and tick() - shot.time <= 0.75 and (shot.origin - fallback).Magnitude <= 20 then
        return shot.origin
    end
    return fallback
end

local function renderHitBulletTracer(hitPosition)
    if not SilentAimSettings.HitBulletTracerEnabled then return end
    local startPosition = getHitOrigin()
    local lifetime = SilentAimSettings.HitBulletTracerLifetime
    if SilentAimSettings.HitBulletTracerMode == "Drawing" then
        local outline = Drawing.new("Line")
        outline.Thickness = 3
        outline.Color = SilentAimSettings.HitBulletTracerOutlineColor
        outline.Transparency = 1 - SilentAimSettings.HitBulletTracerOutlineTransparency
        outline.ZIndex = 1
        local line = Drawing.new("Line")
        line.Thickness = 1
        line.Color = SilentAimSettings.HitBulletTracerColor
        line.Transparency = 1 - SilentAimSettings.HitBulletTracerTransparency
        line.ZIndex = 2
        activeHitEffectResources[line] = "Drawing"
        activeHitEffectResources[outline] = "Drawing"
        local created = tick()
        local connection
        connection = RunService.RenderStepped:Connect(function()
            local elapsed = tick() - created
            if elapsed >= lifetime + 0.2 then
                connection:Disconnect()
                activeHitEffectConnections[connection] = nil
                line:Remove()
                outline:Remove()
                activeHitEffectResources[line] = nil
                activeHitEffectResources[outline] = nil
                return
            end
            local from, fromVisible = Camera:WorldToViewportPoint(startPosition)
            local to, toVisible = Camera:WorldToViewportPoint(hitPosition)
            local visible = fromVisible and toVisible
            line.Visible = visible
            outline.Visible = visible
            if visible then
                local fade = elapsed > lifetime and 1 - math.clamp((elapsed - lifetime) / 0.2, 0, 1) or 1
                line.From = Vector2.new(from.X, from.Y)
                line.To = Vector2.new(to.X, to.Y)
                line.Transparency = (1 - SilentAimSettings.HitBulletTracerTransparency) * fade
                outline.From = line.From
                outline.To = line.To
                outline.Transparency = (1 - SilentAimSettings.HitBulletTracerOutlineTransparency) * fade
            end
        end)
        activeHitEffectConnections[connection] = true
        return
    end
    local attachment0 = Instance.new("Attachment")
    attachment0.CFrame = CFrame.new(startPosition)
    attachment0.Parent = workspace.Terrain
    local attachment1 = Instance.new("Attachment")
    attachment1.CFrame = CFrame.new(hitPosition)
    attachment1.Parent = workspace.Terrain
    local beam = Instance.new("Beam")
    beam.Name = "HitBulletTracer"
    beam.Attachment0 = attachment0
    beam.Attachment1 = attachment1
    beam.FaceCamera = true
    beam.LightEmission = 1
    beam.LightInfluence = 1
    beam.Color = ColorSequence.new(SilentAimSettings.HitBulletTracerColor)
    beam.Transparency = NumberSequence.new(SilentAimSettings.HitBulletTracerTransparency)
    if SilentAimSettings.HitBulletTracerTexture == "Laser" then
        beam.Texture = "rbxassetid://446111271"
        beam.TextureMode = Enum.TextureMode.Wrap
        beam.TextureLength = 10
        beam.Width0 = 0.08
        beam.Width1 = 0.08
        beam.ZOffset = -1
    else
        beam.Texture = "rbxassetid://18854333763"
        beam.TextureLength = 0.1
        beam.TextureSpeed = 0.5
        beam.Width0 = 0.15
        beam.Width1 = 0.15
        beam.Segments = 1
    end
    beam.Parent = HitEffectsFolder
    activeHitEffectResources[beam] = "Instance"
    activeHitEffectResources[attachment0] = "Instance"
    activeHitEffectResources[attachment1] = "Instance"
    task.delay(lifetime, function()
        if not beam.Parent then return end
        local startFade = tick()
        local connection
        connection = RunService.Heartbeat:Connect(function()
            local alpha = math.clamp((tick() - startFade) / 0.2, 0, 1)
            beam.Transparency = NumberSequence.new(SilentAimSettings.HitBulletTracerTransparency + (1 - SilentAimSettings.HitBulletTracerTransparency) * alpha)
            if alpha >= 1 then
                connection:Disconnect()
                activeHitEffectConnections[connection] = nil
                beam:Destroy()
                attachment0:Destroy()
                attachment1:Destroy()
                activeHitEffectResources[beam] = nil
                activeHitEffectResources[attachment0] = nil
                activeHitEffectResources[attachment1] = nil
            end
        end)
        activeHitEffectConnections[connection] = true
    end)
end

local particlePresets = {
    Sparks = {30, "rbxassetid://18540695516", NumberRange.new(0.5, 1), NumberRange.new(15), Vector3.new(0, -50, 0), NumberSequence.new({NumberSequenceKeypoint.new(0, 0.6), NumberSequenceKeypoint.new(0.5, 0.6), NumberSequenceKeypoint.new(1, 0)}), Vector2.new(50, 50), Enum.ParticleOrientation.VelocityParallel},
    Splash = {7, "rbxassetid://304113188", NumberRange.new(0.75, 1), NumberRange.new(25, 27.5), Vector3.new(0, -50, 0), NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.025, 1.75), NumberSequenceKeypoint.new(1, 3.5)}), Vector2.new(7.5, 7.5)},
    Flame = {1, "rbxassetid://11517935503", NumberRange.new(0.67), NumberRange.new(0), Vector3.zero, NumberSequence.new(3), Vector2.new(180, 180), nil, flipbook = true},
    Bits = {9, "rbxassetid://241685484", NumberRange.new(0.5, 1), NumberRange.new(8, 16), Vector3.new(0, -6, 0), NumberSequence.new({NumberSequenceKeypoint.new(0, 0.4), NumberSequenceKeypoint.new(0.1, 0.515), NumberSequenceKeypoint.new(1, 0)}), Vector2.new(50, 50)},
    Air = {15, "rbxassetid://11163755167", NumberRange.new(0.5), NumberRange.new(10, 50), Vector3.new(0, -25, 0), NumberSequence.new({NumberSequenceKeypoint.new(0, 2.19), NumberSequenceKeypoint.new(0.891, 3.65), NumberSequenceKeypoint.new(1, 0)}), Vector2.new(25, 25), Enum.ParticleOrientation.VelocityParallel},
}

local function createHitEmitter(parent, preset, count)
    local emitter = Instance.new("ParticleEmitter")
    emitter.Enabled = false
    emitter.Rate = 0
    emitter.Color = ColorSequence.new(SilentAimSettings.HitParticleColor)
    emitter.Texture = preset[2]
    emitter.Lifetime = preset[3]
    emitter.Speed = preset[4]
    emitter.Acceleration = preset[5]
    emitter.Size = preset[6]
    emitter.SpreadAngle = preset[7]
    emitter.Orientation = preset[8] or Enum.ParticleOrientation.FacingCamera
    emitter.LightEmission = 1
    emitter.Rotation = NumberRange.new(-180, 180)
    emitter.RotSpeed = NumberRange.new(-180, 180)
    local transparency = SilentAimSettings.HitParticleTransparency
    emitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, transparency), NumberSequenceKeypoint.new(0.75, transparency), NumberSequenceKeypoint.new(1, 1)})
    if preset.flipbook then
        pcall(function()
            emitter.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
            emitter.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
            emitter.FlipbookFramerate = NumberRange.new(3)
        end)
    end
    emitter.Parent = parent
    emitter:Emit(count or preset[1])
end

local function renderHitParticle(hitPosition)
    if not SilentAimSettings.HitParticleEnabled then return end
    local holder = Instance.new("Part")
    holder.Name = "HitParticle"
    holder.Size = Vector3.new(0.01, 0.01, 0.01)
    holder.CFrame = CFrame.new(hitPosition)
    holder.Transparency = 1
    holder.Anchored = true
    holder.CanCollide = false
    holder.CanQuery = false
    holder.CanTouch = false
    holder.Parent = HitEffectsFolder
    if SilentAimSettings.HitParticleStyle == "Bubble" then
        createHitEmitter(holder, {1, "rbxassetid://1084991215", NumberRange.new(0.5), NumberRange.new(1.5), Vector3.zero, NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 10)}), Vector2.new(180, 180), Enum.ParticleOrientation.VelocityPerpendicular}, 1)
        createHitEmitter(holder, {1, "rbxassetid://1084991215", NumberRange.new(0.5), NumberRange.new(0), Vector3.zero, NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 10)}), Vector2.new(180, 180)}, 1)
        createHitEmitter(holder, {1, "rbxassetid://6820680001", NumberRange.new(0.2, 0.5), NumberRange.new(0.1), Vector3.zero, NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 8.5)}), Vector2.new(180, 180), Enum.ParticleOrientation.VelocityParallel}, 1)
    elseif SilentAimSettings.HitParticleStyle == "Air" then
        createHitEmitter(holder, particlePresets.Air)
        createHitEmitter(holder, {15, "rbxassetid://15580169769", NumberRange.new(1), NumberRange.new(25, 50), Vector3.new(0, -50, 0), NumberSequence.new(1), Vector2.new(25, 25), Enum.ParticleOrientation.VelocityParallel})
    else
        createHitEmitter(holder, particlePresets[SilentAimSettings.HitParticleStyle] or particlePresets.Sparks)
    end
    Debris:AddItem(holder, 2.5)
end

local function renderHitChams(character)
    if not SilentAimSettings.HitChamsEnabled or not character then return end
    if SilentAimSettings.HitChamsOnlyLast and activeHitCham then
        pcall(function() activeHitCham:Destroy() end)
        activeHitChams[activeHitCham] = nil
        activeHitCham = nil
    end

    local style = SilentAimSettings.HitChamsStyle
    local color = SilentAimSettings.HitChamsColor
    local transparency = SilentAimSettings.HitChamsTransparency
    local fadeOut = SilentAimSettings.HitChamsFadeOut
    local lifetime = SilentAimSettings.HitChamsLifetime
    local model = Instance.new("Model")
    model.Name = "HitChams"
    local rendered = {}

    for _, source in ipairs(character:GetDescendants()) do
        if source:IsA("BasePart") then
            local ok, part = pcall(function() return source:Clone() end)
            if ok and part then
                for _, child in ipairs(part:GetChildren()) do child:Destroy() end
                part.Anchored = true
                part.CanCollide = false
                part.CanQuery = false
                part.CanTouch = false
                part.CastShadow = false
                part.CFrame = source.CFrame
                part.Color = color
                part.Transparency = style == "Outline" and 1 or transparency
                if style == "Outline" then
                    local box = Instance.new("SelectionBox")
                    box.Name = "HitChamsOutline"
                    box.Adornee = part
                    box.Color3 = color
                    box.Transparency = transparency
                    box.LineThickness = 0.01
                    box.Parent = part
                else
                    part.Material = style == "Neon" and Enum.Material.Neon or Enum.Material.ForceField
                end
                part.Parent = model
                table.insert(rendered, part)
            end
        end
    end

    model.Parent = HitEffectsFolder
    activeHitCham = model
    activeHitChams[model] = true
    Debris:AddItem(model, lifetime + 0.5)
    task.delay(lifetime, function()
        xpcall(function()
            if fadeOut and model.Parent then
                for _, part in ipairs(rendered) do
                    if part and part.Parent then
                        local box = part:FindFirstChild("HitChamsOutline")
                        local target = box or part
                        pcall(function()
                            TweenService:Create(target, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Transparency = 1}):Play()
                        end)
                    end
                end
                task.wait(0.22)
            end
        end, function() end)
        pcall(function() model:Destroy() end)
        activeHitChams[model] = nil
        if activeHitCham == model then activeHitCham = nil end
    end)
end

local function triggerHealthHitEffects(humanoid, hitPosition, damage, hitPart)
    renderHitBulletTracer(hitPosition)
    renderHitParticle(hitPosition)
    renderHitChams(humanoid and humanoid.Parent)
end

local damageIndicators = {}
local damageLabelPool = {}
local watchedDamageHumanoid = nil
local watchedDamageConnection = nil
local watchedDamageHealth = nil
local watchedDamageTargetPart = nil
local DAMAGE_ACCUMULATION_WINDOW = 0.04
local DAMAGE_INDICATOR_LIFETIME = 0.9

local function acquireDamageLabel()
    local label = table.remove(damageLabelPool)
    if not label then
        label = Instance.new("TextLabel")
        label.Name = "FallingDamage"
        label.AnchorPoint = Vector2.new(0.5, 0.5)
        label.Size = UDim2.fromOffset(112, 42)
        label.BackgroundTransparency = 1
        label.BorderSizePixel = 0
        label.Font = Enum.Font.GothamBlack
        label.TextColor3 = Color3.new(1, 1, 1)
        label.TextSize = 25
        label.TextStrokeColor3 = Color3.fromRGB(12, 9, 8)
        label.TextStrokeTransparency = 0.12
        label.TextScaled = false
        label.TextXAlignment = Enum.TextXAlignment.Center
        label.TextYAlignment = Enum.TextYAlignment.Center
        label.ZIndex = 10
        label.Parent = DamageNotifierGui

        local stroke = Instance.new("UIStroke")
        stroke.Name = "ContrastBorder"
        stroke.Color = Color3.fromRGB(52, 27, 12)
        stroke.Thickness = 2.4
        stroke.Transparency = 0
        stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
        stroke.Parent = label

        local gradient = Instance.new("UIGradient")
        gradient.Name = "DamageGradient"
        gradient.Rotation = 90
        gradient.Parent = label

        local scale = Instance.new("UIScale")
        scale.Name = "PopScale"
        scale.Scale = 1
        scale.Parent = label
    end
    label.Visible = true
    label.TextTransparency = 0
    label.TextStrokeTransparency = 0.12
    label.ContrastBorder.Transparency = 0
    label.PopScale.Scale = 0.72
    return label
end

local function releaseDamageLabel(label)
    label.Visible = false
    label.Text = ""
    label.Rotation = 0
    table.insert(damageLabelPool, label)
end

local function getDamageBorderColor(damage)
    if damage >= 60 then
        return Color3.fromRGB(68, 10, 30)
    elseif damage >= 25 then
        return Color3.fromRGB(82, 24, 20)
    end
    return Color3.fromRGB(68, 38, 10)
end

local function getDamageGradient(damage)
    if damage >= 60 then
        return ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 232, 238)),
            ColorSequenceKeypoint.new(0.34, Color3.fromRGB(255, 92, 119)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(181, 23, 58)),
        })
    elseif damage >= 25 then
        return ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 226, 184)),
            ColorSequenceKeypoint.new(0.4, Color3.fromRGB(255, 122, 69)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(215, 46, 56)),
        })
    end
    return ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 247, 194)),
        ColorSequenceKeypoint.new(0.42, Color3.fromRGB(255, 183, 3)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(245, 112, 0)),
    })
end

local function createDamageIndicator(damage, worldPosition)
    if not SilentAimSettings.ShowDamageNotifier or damage <= 0 then return end
    local screenPos, onScreen = getPositionOnScreen(worldPosition)
    if not onScreen then return end

    local label = acquireDamageLabel()
    local direction = math.random(0, 1) == 0 and -1 or 1
    local startRotation = math.random(4, 11) * -direction
    label.Text = string.format("-%d", damage)
    label.DamageGradient.Color = getDamageGradient(damage)
    label.ContrastBorder.Color = getDamageBorderColor(damage)
    label.Position = UDim2.fromOffset(screenPos.X + math.random(-10, 10), screenPos.Y - 18)
    label.Rotation = startRotation

    table.insert(damageIndicators, {
        Label = label,
        Created = tick(),
        Origin = Vector2.new(label.Position.X.Offset, label.Position.Y.Offset),
        Velocity = Vector2.new(direction * math.random(18, 34), -math.random(45, 70)),
        AngularVelocity = direction * math.random(150, 230),
        StartRotation = startRotation,
    })
end

local function queueTargetDamage(humanoid, damage, worldPosition)
    if damage <= 0 then return end
    local now = tick()
    local data = pendingDamage[humanoid]
    if not data then
        data = { damage = 0, lastUpdate = now, position = worldPosition }
        pendingDamage[humanoid] = data
    end
    data.damage = data.damage + damage
    data.lastUpdate = now
    data.position = worldPosition

    local selectedSoundName = Options.HitSound.Value
    if selectedSoundName ~= "关闭" then
        local soundId = HitSounds[selectedSoundName]
        if soundId then playHitSound(soundId) end
    end
end

local function watchDamageHumanoid(humanoid, targetPart)
    watchedDamageTargetPart = targetPart
    if humanoid == watchedDamageHumanoid then return end
    if watchedDamageConnection then
        watchedDamageConnection:Disconnect()
        watchedDamageConnection = nil
    end
    watchedDamageHumanoid = humanoid
    watchedDamageHealth = humanoid and humanoid.Health or nil
    if not humanoid then return end

    watchedDamageConnection = humanoid.HealthChanged:Connect(function(newHealth)
        local previousHealth = watchedDamageHealth
        watchedDamageHealth = newHealth
        if previousHealth and newHealth < previousHealth then
            local damage = math.max(1, math.floor((previousHealth - newHealth) + 0.5))
            local part = watchedDamageTargetPart and watchedDamageTargetPart.Parent and watchedDamageTargetPart or humanoid.Parent and humanoid.Parent:FindFirstChild("HumanoidRootPart")
            if part then
                triggerHealthHitEffects(humanoid, part.Position, damage, part)
                queueTargetDamage(humanoid, damage, part.Position)
            end
        end
    end)
end

local pos = SilentAimSettings.IndependentPanelPosition:split(",")
IndependentPanelFrame.Position = UDim2.fromOffset(tonumber(pos[1]), tonumber(pos[2]))

local posTrigger = SilentAimSettings.MobileTriggerButtonPosition:split(",")
local sX = tonumber(posTrigger[1]) or (Camera.ViewportSize.X / 2)
local sY = tonumber(posTrigger[2]) or (Camera.ViewportSize.Y / 2)
MobileTriggerButton.Position = UDim2.fromOffset(sX, sY)

local posAimlock = SilentAimSettings.MobileAimlockButtonPosition:split(",")
local ax = tonumber(posAimlock[1]) or (Camera.ViewportSize.X / 2 - 80)
local ay = tonumber(posAimlock[2]) or (Camera.ViewportSize.Y / 2)
MobileAimlockButton.Position = UDim2.fromOffset(ax, ay)

local posBhop = SilentAimSettings.MobileBhopButtonPosition:split(",")
local bx = tonumber(posBhop[1]) or (Camera.ViewportSize.X / 2 + 80)
local by = tonumber(posBhop[2]) or (Camera.ViewportSize.Y / 2)
MobileBhopButton.Position = UDim2.fromOffset(bx, by)

local lastTargetCharacter = nil
local lockedRandomPart = nil
local lastTriggerTime = 0

resume(create(function()
    RenderStepped:Connect(function()
        if SilentAimSettings.IndicatorRotationEnabled then currentRotationAngle = (currentRotationAngle + (SilentAimSettings.IndicatorRotationSpeed / 50)) % (math.pi * 2) end
        if SilentAimSettings.FOVFillGradientEnabled then fovFillGradientAngle = (fovFillGradientAngle + SilentAimSettings.FOVFillGradientSpeed) % 360 end
        if SilentAimSettings.FOVFillReflectionEnabled then fovFillReflectionPhase = (fovFillReflectionPhase + SilentAimSettings.FOVFillReflectionSpeed / 50) % (math.pi * 2) end
        
        local currentTime = tick()
        for i = #recentShots, 1, -1 do
            if currentTime - recentShots[i].time > 1 then
                table.remove(recentShots, i)
            end
        end

        local currentAimlockState = Toggles.AimlockToggle.Value or isAimlockActiveByButton
        local isTargetingEnabled = Toggles.EnabledToggle.Value or currentAimlockState or Toggles.TriggerbotToggle.Value
        currentTargetPart = nil
        local currentTargetCharacter = nil

        if isTargetingEnabled then
            if lockedTargetObject then
                 if lockedTargetObject.Parent and not isBlacklisted(lockedTargetObject.Name) then
                    if lockedTargetObject:IsA("Player") then
                        currentTargetCharacter = lockedTargetObject.Character
                    elseif lockedTargetObject:IsA("Model") then
                        currentTargetCharacter = lockedTargetObject
                    end
                else
                    lockedTargetObject = nil
                    Options.TargetSelectorDropdown:SetValue("无")
                end
            else
                local overrideTarget = nil
                if currentAimlockState and SilentAimSettings.LockOnAimed then
                    overrideTarget = getTargetAimingAtUs()
                end

                if overrideTarget then
                    currentTargetCharacter = overrideTarget
                else
                    local targetMode = SilentAimSettings.TargetMode
                    local playerTarget, npcTarget
                    if targetMode == "玩家" or targetMode == "所有" then playerTarget = getClosestPlayer() end
                    if targetMode == "NPC" or targetMode == "所有" then npcTarget = getNPCTarget() end

                    if playerTarget and npcTarget then
                        local priority = SilentAimSettings.PriorityMode
                        if priority == "最低血量" then
                            local pHumanoid = playerTarget:FindFirstChildOfClass("Humanoid")
                            local nHumanoid = npcTarget:FindFirstChildOfClass("Humanoid")
                            currentTargetCharacter = (pHumanoid and nHumanoid and pHumanoid.Health <= nHumanoid.Health) and playerTarget or npcTarget
                        else
                            local pDist = (LocalPlayer.Character.HumanoidRootPart.Position - playerTarget.HumanoidRootPart.Position).Magnitude
                            local nDist = (LocalPlayer.Character.HumanoidRootPart.Position - npcTarget.HumanoidRootPart.Position).Magnitude
                            currentTargetCharacter = pDist < nDist and playerTarget or npcTarget
                        end
                    else
                        currentTargetCharacter = playerTarget or npcTarget
                    end
                end
            end
        end

        if currentTargetCharacter ~= lastTargetCharacter then
            lockedRandomPart = nil
        end
        lastTargetCharacter = currentTargetCharacter

        if currentTargetCharacter then
            local humanoid = currentTargetCharacter:FindFirstChildOfClass("Humanoid")
            if not humanoid or humanoid.Health <= 0 then
                if lockedTargetObject and lockedTargetObject:IsA("Model") and lockedTargetObject == currentTargetCharacter then
                    lockedTargetObject = nil
                    Options.TargetSelectorDropdown:SetValue("无")
                end
                currentTargetCharacter = nil
                currentTargetPart = nil
            else
                local baseTargetPart = nil
                if SilentAimSettings.LeakAndHitMode then
                    for _, part in ipairs(currentTargetCharacter:GetDescendants()) do
                        if part:IsA("BasePart") and part.Parent == currentTargetCharacter then
                            if isPartVisible(part) then
                                baseTargetPart = part
                                break
                            end
                        end
                    end
                else
                    local targetPartName = SilentAimSettings.TargetPart
                    if targetPartName == "Random" then
                        if not lockedRandomPart or not lockedRandomPart.Parent or lockedRandomPart.Parent ~= currentTargetCharacter then
                            lockedRandomPart = currentTargetCharacter[ValidTargetParts[math.random(1, #ValidTargetParts)]]
                        end
                        baseTargetPart = lockedRandomPart
                    else
                        baseTargetPart = currentTargetCharacter:FindFirstChild(targetPartName) or currentTargetCharacter:FindFirstChild("HumanoidRootPart")
                    end
                end

                if baseTargetPart then
                    if SilentAimSettings.HeadshotChanceEnabled and CalculateChance(SilentAimSettings.HeadshotChance) then
                        local headPart = currentTargetCharacter:FindFirstChild("Head")
                        if headPart then
                            currentTargetPart = headPart
                        else
                            currentTargetPart = baseTargetPart
                        end
                    else
                        currentTargetPart = baseTargetPart
                    end
                else
                    currentTargetPart = nil
                end
            end
        end

        local damageHumanoid = isTargetingEnabled and currentTargetPart and currentTargetPart.Parent and currentTargetPart.Parent:FindFirstChildOfClass("Humanoid") or nil
        watchDamageHumanoid(damageHumanoid, currentTargetPart)

        for humanoid, data in pairs(pendingDamage) do
            if currentTime - data.lastUpdate >= DAMAGE_ACCUMULATION_WINDOW then
                createDamageIndicator(data.damage, data.position)
                pendingDamage[humanoid] = nil
            end
        end

        for i = #damageIndicators, 1, -1 do
            local indicator = damageIndicators[i]
            local age = currentTime - indicator.Created
            if age >= DAMAGE_INDICATOR_LIFETIME then
                releaseDamageLabel(indicator.Label)
                table.remove(damageIndicators, i)
            else
                local progress = age / DAMAGE_INDICATOR_LIFETIME
                local position = indicator.Origin + indicator.Velocity * age + Vector2.new(0, 150 * age * age)
                local fade = math.clamp((progress - 0.58) / 0.42, 0, 1)
                local scale
                if progress < 0.12 then
                    scale = 0.72 + (progress / 0.12) * 0.4
                elseif progress < 0.3 then
                    scale = 1.12 - ((progress - 0.12) / 0.18) * 0.12
                else
                    scale = 1
                end

                indicator.Label.Position = UDim2.fromOffset(position.X, position.Y)
                indicator.Label.Rotation = indicator.StartRotation + indicator.AngularVelocity * age
                indicator.Label.TextTransparency = fade
                indicator.Label.TextStrokeTransparency = 0.12 + fade * 0.88
                indicator.Label.ContrastBorder.Transparency = fade
                indicator.Label.PopScale.Scale = scale
            end
        end

        hideAllVisuals()
        
        if currentHighlight and (not currentTargetCharacter or not SilentAimSettings.HighlightEnabled) then
            currentHighlight:Destroy()
            currentHighlight = nil
        end

        if isTargetingEnabled and currentTargetCharacter and SilentAimSettings.HighlightEnabled then
             if not currentHighlight then
                currentHighlight = Instance.new("Highlight")
                currentHighlight.Parent = currentTargetCharacter
            end
            currentHighlight.Adornee = currentTargetCharacter
            currentHighlight.Enabled = true
            currentHighlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            
            local hlColor = getDynamicColor(Options.HighlightColorModeDropdown.Value, Options.HighlightColorPicker.Value, Options.HighlightColorPicker2.Value, Options.HighlightGradientSpeedSlider.Value)
            currentHighlight.FillColor = hlColor
            currentHighlight.OutlineColor = hlColor
            currentHighlight.FillTransparency = 0.5
            currentHighlight.OutlineTransparency = 0
        end

        if isTargetingEnabled and currentTargetPart then
            local RootToViewportPoint, IsOnScreen = getPositionOnScreen(currentTargetPart.Position)

            if IsOnScreen and Toggles.ShowTargetToggle.Value then
                local indicatorRadius = SilentAimSettings.TargetIndicatorRadius
                local indicatorStyle = Options.IndicatorStyleDropdown.Value
                
                local finalIndicatorColor = getDynamicColor(Options.IndicatorColorModeDropdown.Value, Options.TargetIndicatorColorPicker.Value, Options.TargetIndicatorColorPicker2.Value, Options.IndicatorGradientSpeedSlider.Value)
                local isTargetVisible = isPartVisible(currentTargetPart)
                if isTargetVisible then 
                    finalIndicatorColor = Color3.fromRGB(0, 255, 0)
                    indicatorRadius = indicatorRadius * 0.6
                end
                
                local breathingScale = 1
                if SilentAimSettings.IndicatorBreathingEnabled then
                    breathingScale = SilentAimSettings.IndicatorBreathingMin + 
                                     (SilentAimSettings.IndicatorBreathingMax - SilentAimSettings.IndicatorBreathingMin) * (math.sin(tick() * SilentAimSettings.IndicatorBreathingSpeed * math.pi * 2) * 0.5 + 0.5)
                end
                
                if indicatorStyle == "Circle" then
                    target_indicator_circle.Visible = true; target_indicator_circle.Color = finalIndicatorColor; target_indicator_circle.Radius = indicatorRadius * breathingScale; target_indicator_circle.Position = RootToViewportPoint
                elseif indicatorStyle == "Triangle" then
                    local points = getPolygonPoints(RootToViewportPoint, indicatorRadius * breathingScale, 3)
                    for i = 1, 3 do local line = target_indicator_lines[i]; line.Visible = true; line.Color = finalIndicatorColor; line.From = points[i]; line.To = points[i % 3 + 1] end
                elseif indicatorStyle == "Pentagram" then
                    local points = getPolygonPoints(RootToViewportPoint, indicatorRadius * breathingScale, 5)
                    local pentagram_order = {1, 3, 5, 2, 4}
                    for i = 1, 5 do local line = target_indicator_lines[i]; line.Visible = true; line.Color = finalIndicatorColor; line.From = points[pentagram_order[i]]; line.To = points[pentagram_order[i % 5 + 1]] end
                elseif indicatorStyle == "十字准星" then
                    local length = SilentAimSettings.CrosshairLength * breathingScale
                    local gap = SilentAimSettings.CrosshairGap * breathingScale
                    local center = RootToViewportPoint
                    local rotation = SilentAimSettings.IndicatorRotationEnabled and currentRotationAngle or 0
                    local cos, sin = math.cos(rotation), math.sin(rotation)

                    local function rotate(v)
                        return Vector2.new(v.X * cos - v.Y * sin, v.X * sin + v.Y * cos)
                    end

                    local points = {
                        {From = rotate(Vector2.new(0, -length)) + center, To = rotate(Vector2.new(0, -gap)) + center},
                        {From = rotate(Vector2.new(0, length)) + center, To = rotate(Vector2.new(0, gap)) + center},
                        {From = rotate(Vector2.new(-length, 0)) + center, To = rotate(Vector2.new(-gap, 0)) + center},
                        {From = rotate(Vector2.new(length, 0)) + center, To = rotate(Vector2.new(gap, 0)) + center}
                    }

                    for i = 1, 4 do
                        target_indicator_lines[i].Visible = true
                        target_indicator_lines[i].Color = finalIndicatorColor
                        target_indicator_lines[i].From = points[i].From
                        target_indicator_lines[i].To = points[i].To
                    end
                elseif indicatorStyle == "三线准星" and SilentAimSettings.ThreeLineCrosshairEnabled then
                    local length = SilentAimSettings.ThreeLineCrosshairLength * breathingScale
                    local gap = SilentAimSettings.ThreeLineCrosshairGap * breathingScale
                    local center = RootToViewportPoint
                    local rotation = SilentAimSettings.IndicatorRotationEnabled and currentRotationAngle or 0
                    
                    for i = 1, 3 do
                        local angle = rotation + (i - 1) * (math.pi * 2 / 3)
                        local dir = Vector2.new(math.cos(angle), math.sin(angle))
                        local start = center + dir * gap
                        local endPos = center + dir * length
                        
                        target_indicator_lines[i].Visible = true
                        target_indicator_lines[i].Color = finalIndicatorColor
                        target_indicator_lines[i].From = start
                        target_indicator_lines[i].To = endPos
                    end
                end
            end

            local showAnyInfo = SilentAimSettings.ShowTargetName or SilentAimSettings.ShowTargetHealth or SilentAimSettings.ShowTargetDistance or SilentAimSettings.ShowTargetCategory
            if showAnyInfo then
                local player = Players:GetPlayerFromCharacter(currentTargetCharacter)
                local localRoot = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local humanoid = currentTargetCharacter:FindFirstChildOfClass("Humanoid")
                if humanoid and localRoot then
                    local targetName = player and player.DisplayName or currentTargetCharacter.Name
                    local health = math.floor(humanoid.Health)
                    local maxHealth = humanoid.MaxHealth
                    local dist = math.floor((localRoot.Position - currentTargetPart.Position).Magnitude)
                    local category = getTargetCategory(currentTargetCharacter)
                    local infoStyle = SilentAimSettings.TargetInfoStyle
                    
                    if infoStyle == "独立面板" then
                        IndependentPanelFrame.Visible = true
                        independent_panel_texts.Name.Visible = SilentAimSettings.ShowTargetName
                        independent_panel_texts.Health.Visible = SilentAimSettings.ShowTargetHealth
                        independent_panel_texts.Distance.Visible = SilentAimSettings.ShowTargetDistance
                        independent_panel_texts.Category.Visible = SilentAimSettings.ShowTargetCategory
                        if SilentAimSettings.ShowTargetName then independent_panel_texts.Name.Text = "目标: " .. targetName end
                        if SilentAimSettings.ShowTargetHealth then independent_panel_texts.Health.Text = string.format("血量: %d", health) end
                        if SilentAimSettings.ShowTargetDistance then independent_panel_texts.Distance.Text = string.format("距离: %dm", dist) end
                        if SilentAimSettings.ShowTargetCategory then independent_panel_texts.Category.Text = "类别: " .. category end
                    elseif infoStyle == "面板" and IsOnScreen then
                        local indicatorRadius = SilentAimSettings.TargetIndicatorRadius
                        local linesDrawn = 0; local lineHeight = 15; local infoPos = RootToViewportPoint + Vector2.new(indicatorRadius + 5, -22)
                        if SilentAimSettings.ShowTargetName then local textObj = panel_info_texts.Name; textObj.Text = targetName; textObj.Position = infoPos + Vector2.new(5, 5 + (linesDrawn * lineHeight)); textObj.Visible = true; linesDrawn = linesDrawn + 1 end
                        if SilentAimSettings.ShowTargetHealth then local textObj = panel_info_texts.Health; textObj.Text = string.format("血量: %d", health); textObj.Position = infoPos + Vector2.new(5, 5 + (linesDrawn * lineHeight)); textObj.Visible = true; linesDrawn = linesDrawn + 1 end
                        if SilentAimSettings.ShowTargetDistance then local textObj = panel_info_texts.Distance; textObj.Text = string.format("距离: %dm", dist); textObj.Position = infoPos + Vector2.new(5, 5 + (linesDrawn * lineHeight)); textObj.Visible = true; linesDrawn = linesDrawn + 1 end
                        if SilentAimSettings.ShowTargetCategory then local textObj = panel_info_texts.Category; textObj.Text = "类别: " .. category; textObj.Position = infoPos + Vector2.new(5, 5 + (linesDrawn * lineHeight)); textObj.Visible = true; linesDrawn = linesDrawn + 1 end
                        if linesDrawn > 0 then panel_info_bg.Position = infoPos; panel_info_bg.Size = Vector2.new(120, 10 + (linesDrawn * lineHeight)); panel_info_bg.Visible = true end
                    elseif infoStyle == "头顶" and IsOnScreen then
                        local indicatorRadius = SilentAimSettings.TargetIndicatorRadius
                        local linesDrawn = 0; local lineHeight = 15; local base_y = RootToViewportPoint.Y - indicatorRadius - 10
                        if SilentAimSettings.ShowTargetName then local textObj = overhead_info_texts.Name; textObj.Text = string.format("[%s]", targetName); textObj.Position = Vector2.new(RootToViewportPoint.X, base_y - (linesDrawn * lineHeight)); textObj.Visible = true; linesDrawn = linesDrawn + 1 end
                        if SilentAimSettings.ShowTargetHealth then local textObj = overhead_info_texts.Health; textObj.Text = string.format("[%d]", health); textObj.Position = Vector2.new(RootToViewportPoint.X, base_y - (linesDrawn * lineHeight)); textObj.Visible = true; linesDrawn = linesDrawn + 1 end
                        if SilentAimSettings.ShowTargetDistance then local textObj = overhead_info_texts.Distance; textObj.Text = string.format("[%dm]", dist); textObj.Position = Vector2.new(RootToViewportPoint.X, base_y - (linesDrawn * lineHeight)); textObj.Visible = true; linesDrawn = linesDrawn + 1 end
                        if SilentAimSettings.ShowTargetCategory then local textObj = overhead_info_texts.Category; textObj.Text = string.format("[%s]", category); textObj.Position = Vector2.new(RootToViewportPoint.X, base_y - (linesDrawn * lineHeight)); textObj.Visible = true; linesDrawn = linesDrawn + 1 end
                    end
                end
            end
        elseif isTargetingEnabled then
            local infoStyle = SilentAimSettings.TargetInfoStyle
            if infoStyle == "独立面板" then
                IndependentPanelFrame.Visible = true
                independent_panel_texts.Name.Visible = true
                independent_panel_texts.Health.Visible = true
                independent_panel_texts.Distance.Visible = false
                independent_panel_texts.Category.Visible = false
                independent_panel_texts.Name.Text = "状态: 自动索敌中..."
                independent_panel_texts.Health.Text = "目标: 无"
            end
        end

        if Toggles.ShowTracerToggle.Value and isTargetingEnabled and currentTargetPart then
            local targetHead = currentTargetCharacter and currentTargetCharacter:FindFirstChild("Head")
            local tracerTargetPosition = (targetHead and targetHead.Position) or currentTargetPart.Position
            local y_offset = SilentAimSettings.Tracer_Y_Offset
            local finalTracerPosition = tracerTargetPosition - Vector3.new(0, y_offset, 0)
            local targetScreenPos, IsOnScreen = getPositionOnScreen(finalTracerPosition)
            tracer_line.Visible = IsOnScreen
            if IsOnScreen then tracer_line.From = Camera.ViewportSize / 2; tracer_line.To = targetScreenPos; tracer_line.Color = Options.TracerColorPicker.Value end
        else
            tracer_line.Visible = false
        end
        
        local activeFreeFOVs = 0
        DynamicIsland.freeFOVTarget = nil

        if Toggles.FOVVisibleToggle.Value or SilentAimSettings.AimMethod == "V5.0 自瞄" then
            FOVCircleGui.Enabled = true
            local fovColor = getDynamicColor(Options.FOVColorModeDropdown.Value, Options.FOVColorPicker.Value, Options.FOVColorPicker2.Value, Options.FOVGradientSpeedSlider.Value)
            local fovThickness = Options.FOVThicknessSlider.Value
            local fovTransparency = Options.FOVTransparencySlider.Value
            local fillEnabled = SilentAimSettings.FOVFillEnabled
            local fillColor = Options.FOVFillColorPicker.Value
            local fillTrans = Options.FOVFillTransparencySlider.Value

            if SilentAimSettings.FreeFOVEnabled then
                FOVCircleFrame.Visible = false

                if SilentAimSettings.FreeFOVSingleMode then
                    local bestTarget = nil
                    local bestFOV = math.huge
                    local bestScreenPos = nil
                    local bestRadius = 0
                    
                    local AimPoint = SilentAimSettings.FixedFOV and (Camera.ViewportSize / 2) or GetMouseLocation(UserInputService)

                    local function checkSingleFOV(character, rootPart)
                        if not character or not rootPart then return end
                        local localRoot = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        if not localRoot then return end
                        
                        local physicalDist = (localRoot.Position - rootPart.Position).Magnitude
                        if physicalDist > SilentAimSettings.MaxDistance then return end

                        local screenPos, onScreen = getPositionOnScreen(rootPart.Position)
                        if onScreen then
                            local fovDist = (AimPoint - screenPos).Magnitude
                            if fovDist < bestFOV then
                                local camDist = (Camera.CFrame.Position - rootPart.Position).Magnitude
                                bestFOV = fovDist
                                bestTarget = character
                                bestScreenPos = screenPos
                                bestRadius = getFreeFOVRadius(camDist)
                            end
                        end
                    end

                    for _, player in ipairs(Players:GetPlayers()) do
                        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                            local hum = player.Character:FindFirstChildOfClass("Humanoid")
                            local partForChecks = player.Character:FindFirstChild(SilentAimSettings.TargetPart) or player.Character:FindFirstChild("HumanoidRootPart")
                            if hum and hum.Health > 0 and partForChecks and not isBlacklisted(player.Name) and not (SilentAimSettings.TeamCheck and player.Team == LocalPlayer.Team) then
                                local passVis = true
                                if not SilentAimSettings.FreeFOVAlwaysShow then
                                    if SilentAimSettings.VisibleCheck or SilentAimSettings.AdvancedWallCheck then
                                        passVis = isPartVisible(partForChecks, LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Head") and LocalPlayer.Character.Head.Position)
                                    end
                                end
                                if passVis then checkSingleFOV(player.Character, partForChecks) end
                            end
                        end
                    end

                    for _, npc in ipairs(npcList) do
                        if npc and npc:FindFirstChild("HumanoidRootPart") then
                            local hum = npc:FindFirstChildOfClass("Humanoid")
                            local partForChecks = npc:FindFirstChild(SilentAimSettings.TargetPart) or npc:FindFirstChild("HumanoidRootPart")
                            if hum and hum.Health > 0 and partForChecks and not isBlacklisted(npc.Name) and not (SilentAimSettings.TeamCheck and npc:FindFirstChild("Team") and npc.Team == LocalPlayer.Team) then
                                if not SilentAimSettings.AdvancedFiltering or isWhitelisted(npc) then
                                    local passVis = true
                                    if not SilentAimSettings.FreeFOVAlwaysShow then
                                        if SilentAimSettings.VisibleCheck or SilentAimSettings.AdvancedWallCheck then
                                            passVis = isPartVisible(partForChecks, LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Head") and LocalPlayer.Character.Head.Position)
                                        end
                                    end
                                    if passVis then checkSingleFOV(npc, partForChecks) end
                                end
                            end
                        end
                    end

                    local ui = getFreeFOVFrame(1)
                    if bestTarget then
                        if not ui.Frame.Visible then
                            currentSingleFOVPos = bestScreenPos
                            currentSingleFOVSize = bestRadius
                        else
                            local smooth = SilentAimSettings.FreeFOVSmoothing
                            if smooth < 1 then
                                currentSingleFOVPos = currentSingleFOVPos:Lerp(bestScreenPos, smooth)
                                currentSingleFOVSize = currentSingleFOVSize + (bestRadius - currentSingleFOVSize) * smooth
                            else
                                currentSingleFOVPos = bestScreenPos
                                currentSingleFOVSize = bestRadius
                            end
                        end
                        
                        ui.Frame.Position = UDim2.fromOffset(currentSingleFOVPos.X, currentSingleFOVPos.Y)
                        ui.Frame.Size = UDim2.fromOffset(currentSingleFOVSize * 2, currentSingleFOVSize * 2)
                        ui.Stroke.Color = fovColor
                        ui.Stroke.Thickness = fovThickness
                        ui.Stroke.Transparency = fovTransparency
                        
                        if fillEnabled then
                            ui.Frame.BackgroundColor3 = fillColor
                            ui.Frame.BackgroundTransparency = fillTrans
                        else
                            ui.Frame.BackgroundTransparency = 1
                        end
                        ui.Frame.Visible = true
                        activeFreeFOVs = 1
                    else
                        ui.Frame.Visible = false
                    end
                    DynamicIsland.freeFOVTarget = bestTarget
                else
                    local function drawTargetFOV(character, rootPart)
                        if not character or not rootPart then return end
                        local localRoot = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        if not localRoot then return end
                        
                        local physicalDist = (localRoot.Position - rootPart.Position).Magnitude
                        if physicalDist > SilentAimSettings.MaxDistance then return end

                        local screenPos, onScreen = getPositionOnScreen(rootPart.Position)
                        if onScreen then
                            local camDist = (Camera.CFrame.Position - rootPart.Position).Magnitude
                            local radius = getFreeFOVRadius(camDist)

                            activeFreeFOVs = activeFreeFOVs + 1
                            local ui = getFreeFOVFrame(activeFreeFOVs)
                            ui.Frame.Position = UDim2.fromOffset(screenPos.X, screenPos.Y)
                            ui.Frame.Size = UDim2.fromOffset(radius * 2, radius * 2)
                            
                            ui.Stroke.Color = fovColor
                            ui.Stroke.Thickness = fovThickness
                            ui.Stroke.Transparency = fovTransparency
                            
                            if fillEnabled then
                                ui.Frame.BackgroundColor3 = fillColor
                                ui.Frame.BackgroundTransparency = fillTrans
                            else
                                ui.Frame.BackgroundTransparency = 1
                            end
                            ui.Frame.Visible = true
                        end
                    end

                    for _, player in ipairs(Players:GetPlayers()) do
                        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                            local hum = player.Character:FindFirstChildOfClass("Humanoid")
                            local partForChecks = player.Character:FindFirstChild(SilentAimSettings.TargetPart) or player.Character:FindFirstChild("HumanoidRootPart")
                            if hum and hum.Health > 0 and partForChecks and not isBlacklisted(player.Name) and not (SilentAimSettings.TeamCheck and player.Team == LocalPlayer.Team) then
                                local passVis = true
                                if not SilentAimSettings.FreeFOVAlwaysShow then
                                    if SilentAimSettings.VisibleCheck or SilentAimSettings.AdvancedWallCheck then
                                        passVis = isPartVisible(partForChecks, LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Head") and LocalPlayer.Character.Head.Position)
                                    end
                                end
                                if passVis then drawTargetFOV(player.Character, partForChecks) end
                            end
                        end
                    end

                    for _, npc in ipairs(npcList) do
                        if npc and npc:FindFirstChild("HumanoidRootPart") then
                            local hum = npc:FindFirstChildOfClass("Humanoid")
                            local partForChecks = npc:FindFirstChild(SilentAimSettings.TargetPart) or npc:FindFirstChild("HumanoidRootPart")
                            if hum and hum.Health > 0 and partForChecks and not isBlacklisted(npc.Name) and not (SilentAimSettings.TeamCheck and npc:FindFirstChild("Team") and npc.Team == LocalPlayer.Team) then
                                if not SilentAimSettings.AdvancedFiltering or isWhitelisted(npc) then
                                    local passVis = true
                                    if not SilentAimSettings.FreeFOVAlwaysShow then
                                        if SilentAimSettings.VisibleCheck or SilentAimSettings.AdvancedWallCheck then
                                            passVis = isPartVisible(partForChecks, LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Head") and LocalPlayer.Character.Head.Position)
                                        end
                                    end
                                    if passVis then drawTargetFOV(npc, partForChecks) end
                                end
                            end
                        end
                    end
                end

            else
                FOVCircleFrame.Visible = true
                FOVStroke.Color = fovColor
                FOVStroke.Thickness = fovThickness
                FOVStroke.Transparency = fovTransparency
                
                if fillEnabled then
                    FOVCircleFrame.BackgroundColor3 = fillColor
                    FOVCircleFrame.BackgroundTransparency = fillTrans
                    if SilentAimSettings.FOVFillGradientEnabled then
                        FOVFillGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, fillColor:Lerp(Color3.new(1, 1, 1), 0.3)), ColorSequenceKeypoint.new(0.5, fillColor), ColorSequenceKeypoint.new(1, fillColor:Lerp(Color3.new(0, 0, 0), 0.3))})
                        FOVFillGradient.Rotation = fovFillGradientAngle
                        FOVFillGradient.Transparency = NumberSequence.new(0)
                    else
                        FOVFillGradient.Color = ColorSequence.new(fillColor)
                    end
                    FOVFillReflectionLayer.Visible = SilentAimSettings.FOVFillReflectionEnabled
                    if SilentAimSettings.FOVFillReflectionEnabled then
                        FOVFillReflection.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1), 1), ColorSequenceKeypoint.new(0.42, Color3.new(1, 1, 1), 0.85), ColorSequenceKeypoint.new(0.5, Color3.new(1, 1, 1), 0), ColorSequenceKeypoint.new(0.58, Color3.new(1, 1, 1), 0.85), ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1), 1)})
                        FOVFillReflection.Offset = UDim2.new(0.5 + 0.25 * math.sin(fovFillReflectionPhase), 0, 0, 0)
                    end
                else
                    FOVCircleFrame.BackgroundTransparency = 1
                    FOVFillReflectionLayer.Visible = false
                end

                if Toggles.FixedFOVToggle.Value then 
                    FOVCircleFrame.Position = UDim2.fromScale(0.5, 0.5) 
                else 
                    local mousePos = GetMouseLocation(UserInputService); 
                    FOVCircleFrame.Position = UDim2.fromOffset(mousePos.X, mousePos.Y) 
                end
                
                local currentRadius = SilentAimSettings.FOVRadius
                if SilentAimSettings.AimMethod == "V5.0 自瞄" then
                    currentRadius = SilentAimSettings.AimbotFOVRadius
                end
                if SilentAimSettings.DynamicFOVScale then
                    local scale = math.tan(math.rad(SilentAimSettings.InitialCameraFOV) / 2) / math.tan(math.rad(Camera.FieldOfView) / 2)
                    currentRadius = currentRadius * scale
                end
                FOVCircleFrame.Size = UDim2.fromOffset(currentRadius * 2, currentRadius * 2)
            end
        else
            FOVCircleGui.Enabled = Toggles.FOVVisibleToggle.Value
            FOVCircleFrame.Visible = false
        end

        for i = activeFreeFOVs + 1, #freeFOVFrames do
            freeFOVFrames[i].Frame.Visible = false
        end

        if Toggles.TriggerbotToggle.Value and currentTargetPart then
            if tick() - lastTriggerTime >= (1 / SilentAimSettings.TriggerbotCPS) then
                lastTriggerTime = tick()
                task.spawn(function()
                    local VIM = game:GetService("VirtualInputManager")
                    local btnX = math.floor(MobileTriggerButton.AbsolutePosition.X + (MobileTriggerButton.AbsoluteSize.X / 2)) + SilentAimSettings.TriggerbotOffsetX
                    local btnY = math.floor(MobileTriggerButton.AbsolutePosition.Y + (MobileTriggerButton.AbsoluteSize.Y / 2)) + SilentAimSettings.TriggerbotOffsetY
                    
                    if SilentAimSettings.ShowClickDebug and ClickDebugDot then
                        ClickDebugDot.Position = UDim2.fromOffset(btnX, btnY)
                        ClickDebugDot.Visible = true
                    elseif ClickDebugDot then
                        ClickDebugDot.Visible = false
                    end
                    
                    local oldVis = MobileTriggerButton.Visible
                    if oldVis then MobileTriggerButton.Visible = false end
                    
                    if UserInputService.TouchEnabled then
                        VIM:SendTouchEvent(10, 0, btnX, btnY)
                        task.wait(0.01)
                        VIM:SendTouchEvent(10, 2, btnX, btnY)
                    else
                        VIM:SendMouseButtonEvent(btnX, btnY, 0, true, game, 1)
                        task.wait(0.01)
                        VIM:SendMouseButtonEvent(btnX, btnY, 0, false, game, 1)
                    end
                    
                    if oldVis then MobileTriggerButton.Visible = true end
                end)
            end
        end

        if SilentAimSettings.AimMethod == "aimbot" and currentAimlockState and currentTargetPart then
            if not SilentAimSettings.FreeFOVEnabled or isTargetInsideFreeFOV(currentTargetPart) then
                local targetPos = currentTargetPart.Position
                if SilentAimSettings.MouseHitPrediction then
                    targetPos = targetPos + (currentTargetPart.Velocity * SilentAimSettings.MouseHitPredictionAmount)
                end
                
                local smoothness = Options.AimlockSmoothnessSlider.Value
                
                if SilentAimSettings.AimlockSnapCamera then
                    local cameraCFrame = Camera.CFrame
                    local targetLookCFrame = CFrame.lookAt(cameraCFrame.Position, targetPos)
                    if smoothness < 1 then
                        Camera.CFrame = cameraCFrame:Lerp(targetLookCFrame, smoothness)
                    else
                        Camera.CFrame = targetLookCFrame
                    end
                else
                    local char = LocalPlayer.Character
                    local hrp = char and char:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        local hrpPos = hrp.Position
                        local lookAtPos = Vector3.new(targetPos.X, hrpPos.Y, targetPos.Z)
                        local targetCFrame = CFrame.lookAt(hrpPos, lookAtPos)
                        if smoothness < 1 then
                            hrp.CFrame = hrp.CFrame:Lerp(targetCFrame, smoothness)
                        else
                            hrp.CFrame = targetCFrame
                        end
                    end
                end
            end
        end
        
        if SilentAimSettings.AimMethod == "V5.0 自瞄" and Toggles.EnabledToggle.Value and currentTargetPart and (not SilentAimSettings.FreeFOVEnabled or isTargetInsideFreeFOV(currentTargetPart)) then
            local aimChar = currentTargetPart.Parent
            if aimChar and aimChar:FindFirstChild("Head") then
                local aimHead = aimChar.Head
                local primaryPart = aimChar.PrimaryPart or aimChar:FindFirstChild("HumanoidRootPart")
                local velocity = primaryPart and primaryPart.AssemblyLinearVelocity or Vector3.zero
                local predictedPos = aimHead.Position + (velocity * SilentAimSettings.AimbotPredictionFactor)
                local alpha = math.clamp(SilentAimSettings.AimbotAimSpeed * 0.1, 0, 1)
                Camera.CFrame = Camera.CFrame:Lerp(CFrame.new(Camera.CFrame.Position, predictedPos), alpha)
            end
        end
        
        if SilentAimSettings.RadarEnabled and RadarBG and RadarBG.Visible then
            local myChar = LocalPlayer.Character
            local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
            if myRoot then
                local myPos = myRoot.Position
                local camLook = Camera.CFrame.LookVector
                local camYaw = math.atan2(-camLook.X, -camLook.Z)
                
                local targets = {}
                for _, p in ipairs(Players:GetPlayers()) do 
                    if p ~= LocalPlayer and p.Character then 
                        if not (SilentAimSettings.TeamCheck and p.Team == LocalPlayer.Team) then
                            table.insert(targets, p.Character) 
                        end
                    end 
                end
                for _, n in ipairs(npcList) do 
                    if not SilentAimSettings.AdvancedFiltering or isWhitelisted(n) then
                        table.insert(targets, n) 
                    end
                end
                
                local activeBlips = {}
                for _, char in ipairs(targets) do
                    local hum = char:FindFirstChild("Humanoid")
                    local root = char:FindFirstChild("HumanoidRootPart")
                    if hum and hum.Health > 0 and root then
                        local diff = root.Position - myPos
                        local dist = diff.Magnitude
                        if dist <= SilentAimSettings.RadarRange then
                            local relX = diff.X
                            local relZ = diff.Z
                            
                            local rotX = relX * math.cos(camYaw) - relZ * math.sin(camYaw)
                            local rotZ = relX * math.sin(camYaw) + relZ * math.cos(camYaw)
                            
                            local scale = (RadarBG.AbsoluteSize.X / 2) / SilentAimSettings.RadarRange
                            local uiX = rotX * scale
                            local uiY = rotZ * scale
                            
                            activeBlips[char] = {uiX, uiY}
                        end
                    end
                end
                
                for char, pos2d in pairs(activeBlips) do
                    local blip = radarBlips[char]
                    if not blip then
                        blip = Instance.new("Frame", RadarBG)
                        blip.Size = UDim2.fromOffset(4, 4)
                        blip.AnchorPoint = Vector2.new(0.5, 0.5)
                        blip.BackgroundColor3 = Color3.new(1, 0, 0)
                        Instance.new("UICorner", blip).CornerRadius = UDim.new(1, 0)
                        radarBlips[char] = blip
                    end
                    blip.Position = UDim2.new(0.5, pos2d[1], 0.5, pos2d[2])
                    blip.Visible = true
                end
                
                for char, blip in pairs(radarBlips) do
                    if not activeBlips[char] then
                        blip.Visible = false
                    end
                end
            end
        end

        pcall(DynamicIsland.Refresh, currentTargetCharacter)

    end)
end))

local RaycastWhitelist = RaycastParams.new()
RaycastWhitelist.FilterType = Enum.RaycastFilterType.Include

local Hooks = {
    FindPartOnRayWithIgnoreList = function(args)
        local origin = args[1].Origin
        table.insert(recentShots, {origin = origin, time = tick()})
        
        if SilentAimSettings.Wallbang then
            if SilentAimSettings.WallbangMode == "起点偏移" then
                local direction = getDirection(origin, currentTargetPart.Position)
                local newOrigin = currentTargetPart.Position - direction.Unit * 0.5
                args[1] = Ray.new(newOrigin, getDirection(newOrigin, currentTargetPart.Position))
            else
                return {currentTargetPart, currentTargetPart.Position, currentTargetPart:GetClosestPointOnSurface(origin), currentTargetPart.Material}
            end
        else
            args[1] = Ray.new(origin, CFrame.lookAt(origin, currentTargetPart.Position).LookVector * args[1].Direction.Magnitude)
        end
    end,
    Raycast = function(args)
        local origin = args[1]
        table.insert(recentShots, {origin = origin, time = tick()})
        
        if SilentAimSettings.Wallbang then
            if SilentAimSettings.WallbangMode == "起点偏移" then
                local direction = getDirection(origin, currentTargetPart.Position)
                local newOrigin = currentTargetPart.Position - direction.Unit * 0.5
                args[2] = newOrigin
                args[3] = getDirection(newOrigin, currentTargetPart.Position)
            else
                args[2] = CFrame.lookAt(origin, currentTargetPart.Position).LookVector * args[2].Magnitude
                RaycastWhitelist.FilterDescendantsInstances = {currentTargetPart.Parent}
                args[3] = RaycastWhitelist
            end
        else
            args[2] = CFrame.lookAt(origin, currentTargetPart.Position).LookVector * args[2].Magnitude
        end
    end,
    ScreenPointToRay = function(args)
        local origin = Camera.CFrame.Position
        local direction = CFrame.lookAt(origin, currentTargetPart.Position)
        table.insert(recentShots, {origin = origin, time = tick()})
        
        if SilentAimSettings.Wallbang and SilentAimSettings.WallbangMode == "起点偏移" then
            local newOrigin = currentTargetPart.Position - direction.LookVector * 0.5
            return {Ray.new(newOrigin, direction.LookVector)}
        end
        
        return {Ray.new(origin + (args[3] and direction.LookVector * args[3] or Vector3.zero), direction.LookVector)}
    end,
    Ray = function(args)
        local origin = args[1]
        table.insert(recentShots, {origin = origin, time = tick()})
        
        local dir = CFrame.lookAt(origin, currentTargetPart.Position).LookVector
        if SilentAimSettings.Wallbang and SilentAimSettings.WallbangMode == "起点偏移" then
            args[1] = currentTargetPart.Position - dir * 0.5
            args[2] = dir * args[2].Magnitude
        else
            args[2] = dir * args[2].Magnitude
        end
    end
}
Hooks.FindPartOnRayWithWhitelist = Hooks.FindPartOnRayWithIgnoreList
Hooks.FindPartOnRay = Hooks.FindPartOnRayWithIgnoreList
Hooks.findPartOnRay = Hooks.FindPartOnRayWithIgnoreList
Hooks.ViewportPointToRay = Hooks.ScreenPointToRay

local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
    local self = ...
    local Method = getnamecallmethod()

    local currentMethod = SilentAimSettings.SilentAimMethod
    if currentMethod == "Mouse.Hit/Target" or currentMethod == "Ray" then
        return oldNamecall(...)
    end
    if Method ~= currentMethod and not (currentMethod == "FindPartOnRay" and (Method == "FindPartOnRay" or Method == "findPartOnRay")) then
        return oldNamecall(...)
    end
    if checkcaller() then
        return oldNamecall(...)
    end
    local calling = getcallingscript()
    if calling then
        local list = {"ControlScript", "ControlModule"}
        if table.find(list, tostring(calling)) then
            return oldNamecall(...)
        end
    end
    if Toggles.EnabledToggle.Value and CalculateChance(SilentAimSettings.HitChance) and currentTargetPart then
        local args = {select(2, ...)}
        if Hooks[Method] then
            local res = Hooks[Method](args)
            if res then
                return unpack(res)
            end
            return oldNamecall(self, unpack(args))
        end
    end
    return oldNamecall(...)
end))

local oldIndex
oldIndex = hookmetamethod(game, "__index", newcclosure(function(self, Index)
    if not checkcaller() then
        if self == Mouse and Toggles.EnabledToggle.Value and SilentAimSettings.SilentAimMethod == "Mouse.Hit/Target" and currentTargetPart then
            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Head") then
                table.insert(recentShots, {origin = LocalPlayer.Character.Head.Position, time = tick()})
            end
            if Index == "Target" or Index == "target" then
                return currentTargetPart
            elseif Index == "Hit" or Index == "hit" then
                return (SilentAimSettings.MouseHitPrediction and (currentTargetPart.CFrame + (currentTargetPart.Velocity * currentTargetPart.Velocity.magnitude * SilentAimSettings.MouseHitPredictionAmount))) or currentTargetPart.CFrame
            elseif Index == "X" or Index == "x" then
                return self.X
            elseif Index == "Y" or Index == "y" then
                return self.Y
            elseif Index == "UnitRay" then
                return Ray.new(self.Origin, (self.Hit.p - self.Origin.p).Unit)
            end
        end
    end
    return oldIndex(self, Index)
end))

local oldRayNew
oldRayNew = hookfunction(Ray.new, newcclosure(function(origin, direction)
    if checkcaller() then
        return oldRayNew(origin, direction)
    end
    local calling = getcallingscript()
    if calling then
        local list = {"ControlScript", "ControlModule"}
        if table.find(list, tostring(calling)) then
            return oldRayNew(origin, direction)
        end
    end
    if Toggles.EnabledToggle.Value and SilentAimSettings.SilentAimMethod == "Ray" and currentTargetPart and CalculateChance(SilentAimSettings.HitChance) then
        local args = {origin, direction}
        Hooks.Ray(args)
        return oldRayNew(unpack(args))
    end
    return oldRayNew(origin, direction)
end))

Library:OnUnload(function()
    if DraggableLabel and DraggableLabel.Destroy then DraggableLabel:Destroy() end
    FOVCircleGui:Destroy()
    if IndependentPanelGui then
        IndependentPanelGui:Destroy()
    end
    if MobileTriggerGui then
        MobileTriggerGui:Destroy()
    end
    if MobileAimlockGui then
        MobileAimlockGui:Destroy()
    end
    if MobileBhopGui then
        MobileBhopGui:Destroy()
    end
    if RadarGui then
        RadarGui:Destroy()
    end
    if currentHighlight then
        currentHighlight:Destroy()
    end
    if transparencyLoopConnection then
        transparencyLoopConnection:Disconnect()
        transparencyLoopConnection = nil
        restoreCharacterAppearance()
    end
    if AARenderConnection then AARenderConnection:Disconnect() end
    if DesyncRenderConnection then DesyncRenderConnection:Disconnect() end
    if BhopConnection then BhopConnection:Disconnect() end
    if WatermarkConnection then WatermarkConnection:Disconnect() end
    if watchedDamageConnection then
        watchedDamageConnection:Disconnect()
        watchedDamageConnection = nil
    end
    if DamageNotifierGui then DamageNotifierGui:Destroy() end
    if JujuVisualUpdateConnection then JujuVisualUpdateConnection:Disconnect() end
    if SensoryESPInstance then pcall(function() SensoryESPInstance:Unload() end); SensoryESPInstance=nil end
     if JujuColorCorrection then JujuColorCorrection:Destroy() end
    if JujuAtmosphereCreated and JujuAtmosphere then JujuAtmosphere:Destroy() end
    if JujuLightingOriginal then
        Lighting.Brightness=JujuLightingOriginal.Brightness; Lighting.ExposureCompensation=JujuLightingOriginal.Exposure; Lighting.Ambient=JujuLightingOriginal.Ambient; Lighting.ClockTime=JujuLightingOriginal.ClockTime; Lighting.FogColor=JujuLightingOriginal.FogColor; Lighting.FogStart=JujuLightingOriginal.FogStart; Lighting.FogEnd=JujuLightingOriginal.FogEnd
    end
    for model in pairs(activeHitChams) do
        pcall(function() model:Destroy() end)
    end
    activeHitChams = {}
    activeHitCham = nil
    for connection in pairs(activeHitEffectConnections) do
        if connection and connection.Connected then connection:Disconnect() end
    end
    activeHitEffectConnections = {}
    for resource, kind in pairs(activeHitEffectResources) do
        pcall(function()
            if kind == "Drawing" then resource:Remove() else resource:Destroy() end
        end)
    end
    activeHitEffectResources = {}
    if HitEffectsFolder then HitEffectsFolder:Destroy() end
    DynamicIsland.Cleanup()
    
    hideAllVisuals()
    oldNamecall:UnHook()
    oldIndex:UnHook()
    oldRayNew:UnHook()
end)

Library:BuildWindUISettings(Tabs)
