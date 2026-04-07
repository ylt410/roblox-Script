

local rainbowBorderAnimation
local currentBorderColorScheme = "彩虹颜色"
local currentFontColorScheme = "彩虹颜色"
local borderInitialized = false
local animationSpeed = 2
local borderEnabled = true
local fontColorEnabled = false
local uiScale = 1
local blurEnabled = false
local soundEnabled = true

local FONT_STYLES = {
    "SourceSansBold","SourceSansItalic","SourceSansLight","SourceSans",
    "GothamSSm","GothamSSm-Bold","GothamSSm-Medium","GothamSSm-Light",
    "GothamSSm-Black","GothamSSm-Book","GothamSSm-XLight","GothamSSm-Thin",
    "GothamSSm-Ultra","GothamSSm-SemiBold","GothamSSm-ExtraLight","GothamSSm-Heavy",
    "GothamSSm-ExtraBold","GothamSSm-Regular","Gotham","GothamBold",
    "GothamMedium","GothamBlack","GothamLight","Arial","ArialBold",
    "Code","CodeLight","CodeBold","Highway","HighwayBold","HighwayLight",
    "SciFi","SciFiBold","SciFiItalic","Cartoon","CartoonBold","Handwritten"
}

local FONT_DESCRIPTIONS = {
    ["SourceSansBold"] = "标准粗体",["SourceSansItalic"] = "斜体",["SourceSansLight"] = "细体",
    ["SourceSans"] = "标准体",["GothamSSm"] = "哥特标准",["GothamSSm-Bold"] = "哥特粗体",
    ["GothamSSm-Medium"] = "哥特中等",["GothamSSm-Light"] = "哥特细体",["GothamSSm-Black"] = "哥特黑体",
    ["GothamSSm-Book"] = "哥特书本体",["GothamSSm-XLight"] = "哥特超细体",["GothamSSm-Thin"] = "哥特极细体",
    ["GothamSSm-Ultra"] = "哥特超黑体",["GothamSSm-SemiBold"] = "哥特半粗体",["GothamSSm-ExtraLight"] = "哥特特细体",
    ["GothamSSm-Heavy"] = "哥特粗重体",["GothamSSm-ExtraBold"] = "哥特特粗体",["GothamSSm-Regular"] = "哥特常规体",
    ["Gotham"] = "经典哥特体",["GothamBold"] = "经典哥特粗体",["GothamMedium"] = "经典哥特中等",
    ["GothamBlack"] = "经典哥特黑体",["GothamLight"] = "经典哥特细体",["Arial"] = "标准Arial体",
    ["ArialBold"] = "Arial粗体",["Code"] = "代码字体",["CodeLight"] = "代码细体",
    ["CodeBold"] = "代码粗体",["Highway"] = "高速公路体",["HighwayBold"] = "高速公路粗体",
    ["HighwayLight"] = "高速公路细体",["SciFi"] = "科幻字体",["SciFiBold"] = "科幻粗体",
    ["SciFiItalic"] = "科幻斜体",["Cartoon"] = "卡通字体",["CartoonBold"] = "卡通粗体",
    ["Handwritten"] = "手写体"
}

local currentFontStyle = "SourceSansBold"

local COLOR_SCHEMES = {
    ["彩虹颜色"] = {ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("FF0000")),ColorSequenceKeypoint.new(0.16, Color3.fromHex("FFA500")),ColorSequenceKeypoint.new(0.33, Color3.fromHex("FFFF00")),ColorSequenceKeypoint.new(0.5, Color3.fromHex("00FF00")),ColorSequenceKeypoint.new(0.66, Color3.fromHex("0000FF")),ColorSequenceKeypoint.new(0.83, Color3.fromHex("4B0082")),ColorSequenceKeypoint.new(1, Color3.fromHex("EE82EE"))}),"palette"},
    ["黑红颜色"] = {ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("000000")),ColorSequenceKeypoint.new(0.5, Color3.fromHex("FF0000")),ColorSequenceKeypoint.new(1, Color3.fromHex("000000"))}),"alert-triangle"},
    ["蓝白颜色"] = {ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("FFFFFF")),ColorSequenceKeypoint.new(0.5, Color3.fromHex("1E90FF")),ColorSequenceKeypoint.new(1, Color3.fromHex("FFFFFF"))}),"droplet"},
    ["紫金颜色"] = {ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("FFD700")),ColorSequenceKeypoint.new(0.5, Color3.fromHex("8A2BE2")),ColorSequenceKeypoint.new(1, Color3.fromHex("FFD700"))}),"crown"},
    ["蓝黑颜色"] = {ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("000000")),ColorSequenceKeypoint.new(0.5, Color3.fromHex("0000FF")),ColorSequenceKeypoint.new(1, Color3.fromHex("000000"))}),"moon"},
    ["绿紫颜色"] = {ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("00FF00")),ColorSequenceKeypoint.new(0.5, Color3.fromHex("800080")),ColorSequenceKeypoint.new(1, Color3.fromHex("00FF00"))}),"zap"},
    ["粉蓝颜色"] = {ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("FF69B4")),ColorSequenceKeypoint.new(0.5, Color3.fromHex("00BFFF")),ColorSequenceKeypoint.new(1, Color3.fromHex("FF69B4"))}),"heart"},
    ["橙青颜色"] = {ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("FF4500")),ColorSequenceKeypoint.new(0.5, Color3.fromHex("00CED1")),ColorSequenceKeypoint.new(1, Color3.fromHex("FF4500"))}),"sun"},
    ["红金颜色"] = {ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("FF0000")),ColorSequenceKeypoint.new(0.5, Color3.fromHex("FFD700")),ColorSequenceKeypoint.new(1, Color3.fromHex("FF0000"))}),"award"},
    ["银蓝颜色"] = {ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("C0C0C0")),ColorSequenceKeypoint.new(0.5, Color3.fromHex("4682B4")),ColorSequenceKeypoint.new(1, Color3.fromHex("C0C0C0"))}),"star"},
    ["霓虹颜色"] = {ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("FF00FF")),ColorSequenceKeypoint.new(0.25, Color3.fromHex("00FFFF")),ColorSequenceKeypoint.new(0.5, Color3.fromHex("FFFF00")),ColorSequenceKeypoint.new(0.75, Color3.fromHex("FF00FF")),ColorSequenceKeypoint.new(1, Color3.fromHex("00FFFF"))}),"sparkles"},
    ["森林颜色"] = {ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("228B22")),ColorSequenceKeypoint.new(0.5, Color3.fromHex("32CD32")),ColorSequenceKeypoint.new(1, Color3.fromHex("228B22"))}),"tree"},
    ["火焰颜色"] = {ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("FF4500")),ColorSequenceKeypoint.new(0.5, Color3.fromHex("FF0000")),ColorSequenceKeypoint.new(1, Color3.fromHex("FF8C00"))}),"flame"},
    ["海洋颜色"] = {ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("000080")),ColorSequenceKeypoint.new(0.5, Color3.fromHex("1E90FF")),ColorSequenceKeypoint.new(1, Color3.fromHex("00BFFF"))}),"waves"},
    ["日落颜色"] = {ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("FF4500")),ColorSequenceKeypoint.new(0.5, Color3.fromHex("FF8C00")),ColorSequenceKeypoint.new(1, Color3.fromHex("FFD700"))}),"sunset"},
    ["银河颜色"] = {ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("4B0082")),ColorSequenceKeypoint.new(0.5, Color3.fromHex("8A2BE2")),ColorSequenceKeypoint.new(1, Color3.fromHex("9370DB"))}),"galaxy"},
    ["糖果颜色"] = {ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("FF69B4")),ColorSequenceKeypoint.new(0.5, Color3.fromHex("FF1493")),ColorSequenceKeypoint.new(1, Color3.fromHex("FFB6C1"))}),"candy"},
    ["金属颜色"] = {ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("C0C0C0")),ColorSequenceKeypoint.new(0.5, Color3.fromHex("A9A9A9")),ColorSequenceKeypoint.new(1, Color3.fromHex("696969"))}),"shield"}
}

local fontColorAnimations = {}

local function applyFontColorGradient(textElement, colorScheme)
    if not textElement or not textElement:IsA("TextLabel") and not textElement:IsA("TextButton") and not textElement:IsA("TextBox") then
        return
    end
    
    local existingGradient = textElement:FindFirstChild("FontColorGradient")
    if existingGradient then
        existingGradient:Destroy()
    end
    
    if fontColorAnimations[textElement] then
        fontColorAnimations[textElement]:Disconnect()
        fontColorAnimations[textElement] = nil
    end
    
    if not fontColorEnabled then
        textElement.TextColor3 = Color3.new(1, 1, 1)
        return
    end
    
    local schemeData = COLOR_SCHEMES[colorScheme or currentFontColorScheme]
    if not schemeData then return end
    
    local fontGradient = Instance.new("UIGradient")
    fontGradient.Name = "FontColorGradient"
    fontGradient.Color = schemeData[1]
    fontGradient.Rotation = 0
    fontGradient.Parent = textElement
    
    textElement.TextColor3 = Color3.new(1, 1, 1)
    
    local animation
    animation = game:GetService("RunService").Heartbeat:Connect(function()
        if not textElement or textElement.Parent == nil then
            animation:Disconnect()
            fontColorAnimations[textElement] = nil
            return
        end
        
        if not fontGradient or fontGradient.Parent == nil then
            animation:Disconnect()
            fontColorAnimations[textElement] = nil
            return
        end
        
        local time = tick()
        fontGradient.Rotation = (time * animationSpeed * 30) % 360
    end)
    
    fontColorAnimations[textElement] = animation
end

local function applyFontStyleToWindow(fontStyle)
    if not Window or not Window.UIElements then 
        wait(0.5)
        if not Window or not Window.UIElements then
            return false
        end
    end
    
    local successCount = 0
    local totalCount = 0
    
    local function processElement(element)
        for _, child in ipairs(element:GetDescendants()) do
            if child:IsA("TextLabel") or child:IsA("TextButton") or child:IsA("TextBox") then
                totalCount = totalCount + 1
                pcall(function()
                    child.Font = Enum.Font[fontStyle]
                    successCount = successCount + 1
                end)
            end
        end
    end
    
    processElement(Window.UIElements.Main)
    
    return successCount, totalCount
end

local function applyFontColorsToWindow(colorScheme)
    if not Window or not Window.UIElements then return end
    
    local function processElement(element)
        for _, child in ipairs(element:GetDescendants()) do
            if child:IsA("TextLabel") or child:IsA("TextButton") or child:IsA("TextBox") then
                applyFontColorGradient(child, colorScheme)
            end
        end
    end
    
    processElement(Window.UIElements.Main)
end

local function createRainbowBorder(window, colorScheme, speed)
    if not window or not window.UIElements then
        wait(1)
        if not window or not window.UIElements then
            return nil, nil
        end
    end
    
    local mainFrame = window.UIElements.Main
    if not mainFrame then
        return nil, nil
    end
    
    local existingStroke = mainFrame:FindFirstChild("RainbowStroke")
    if existingStroke then
        local glowEffect = existingStroke:FindFirstChild("GlowEffect")
        if glowEffect then
            local schemeData = COLOR_SCHEMES[colorScheme or currentBorderColorScheme]
            if schemeData then
                glowEffect.Color = schemeData[1]
            end
        end
        return existingStroke, rainbowBorderAnimation
    end
    
    if not mainFrame:FindFirstChildOfClass("UICorner") then
        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0, 16)
        corner.Parent = mainFrame
    end
    
    local rainbowStroke = Instance.new("UIStroke")
    rainbowStroke.Name = "RainbowStroke"
    rainbowStroke.Thickness = 1.5
    rainbowStroke.Color = Color3.new(1, 1, 1)
    rainbowStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    rainbowStroke.LineJoinMode = Enum.LineJoinMode.Round
    rainbowStroke.Enabled = borderEnabled
    rainbowStroke.Parent = mainFrame
    
    local glowEffect = Instance.new("UIGradient")
    glowEffect.Name = "GlowEffect"
    
    local schemeData = COLOR_SCHEMES[colorScheme or currentBorderColorScheme]
    if schemeData then
        glowEffect.Color = schemeData[1]
    else
        glowEffect.Color = COLOR_SCHEMES["彩虹颜色"][1]
    end
    
    glowEffect.Rotation = 0
    glowEffect.Parent = rainbowStroke
    
    return rainbowStroke, nil
end

local function startBorderAnimation(window, speed)
    if not window or not window.UIElements then
        return nil
    end
    
    local mainFrame = window.UIElements.Main
    if not mainFrame then
        return nil
    end
    
    local rainbowStroke = mainFrame:FindFirstChild("RainbowStroke")
    if not rainbowStroke or not rainbowStroke.Enabled then
        return nil
    end
    
    local glowEffect = rainbowStroke:FindFirstChild("GlowEffect")
    if not glowEffect then
        return nil
    end
    
    if rainbowBorderAnimation then
        rainbowBorderAnimation:Disconnect()
        rainbowBorderAnimation = nil
    end
    
    local animation
    animation = game:GetService("RunService").Heartbeat:Connect(function()
        if not rainbowStroke or rainbowStroke.Parent == nil or not rainbowStroke.Enabled then
            animation:Disconnect()
            return
        end
        
        local time = tick()
        glowEffect.Rotation = (time * speed * 60) % 360
    end)
    
    rainbowBorderAnimation = animation
    return animation
end

local function initializeRainbowBorder(scheme, speed)
    speed = speed or animationSpeed
    
    local rainbowStroke, _ = createRainbowBorder(Window, scheme, speed)
    if rainbowStroke then
        if borderEnabled then
            startBorderAnimation(Window, speed)
        end
        borderInitialized = true
        return true
    end
    return false
end

local function gradient(text, startColor, endColor)
    local result = ""
    for i = 1, #text do
        local t = (i - 1) / (#text - 1)
        local r = math.floor((startColor.R + (endColor.R - startColor.R) * t) * 255)
        local g = math.floor((startColor.G + (endColor.G - startColor.G) * t) * 255)
        local b = math.floor((startColor.B + (endColor.B - startColor.B) * t) * 255)
        result = result .. string.format('<font color="rgb(%d,%d,%d)">%s</font>', r, g, b, text:sub(i, i))
    end
    return result
end

local function playSound()
    if soundEnabled then
        pcall(function()
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://9047002353"
            sound.Volume = 0.3
            sound.Parent = game:GetService("SoundService")
            sound:Play()
            game:GetService("Debris"):AddItem(sound, 2)
        end)
    end
end

local function applyBlurEffect(enabled)
    if enabled then
        pcall(function()
            local blur = Instance.new("BlurEffect")
            blur.Size = 8
            blur.Name = "UIXH HUBBlur"
            blur.Parent = game:GetService("Lighting")
        end)
    else
        pcall(function()
            local existingBlur = game:GetService("Lighting"):FindFirstChild("UIXH HUBBlur")
            if existingBlur then
                existingBlur:Destroy()
            end
        end)
    end
end

local function applyUIScale(scale)
    if Window and Window.UIElements and Window.UIElements.Main then
        local mainFrame = Window.UIElements.Main
        mainFrame.Size = UDim2.new(0, 600 * scale, 0, 400 * scale)
    end
end

local Confirmed = false
local gradientColors = {
    "rgb(255, 230, 235)",
    "rgb(255, 210, 220)",
    "rgb(255, 190, 205)",
    "rgb(255, 170, 190)",
    "rgb(255, 150, 175)",
    "rgb(245, 140, 180)",
    "rgb(235, 130, 185)",
    "rgb(225, 120, 190)",
    "rgb(215, 110, 195)",
    "rgb(205, 100, 200)"
}
local username = game:GetService("Players").LocalPlayer.Name
local coloredUsername = ""
local gradientColors = {
    "#4169E1", 
    "#6A5ACD",  
    "#9370DB",  
    "#8A2BE2", 
    "#4B0082"   
}
local goldColor = "#FFD700"
for i = 1, #username do
    local char = username:sub(i, i)
    
    if char:match("[A-Za-z0-9]") then
        local colorIndex = (i - 1) % #gradientColors + 1
        coloredUsername = coloredUsername .. '<font color="' .. gradientColors[colorIndex] .. '">' .. char .. '</font>'
    else
        coloredUsername = coloredUsername .. '<font color="' .. goldColor .. '">' .. char .. '</font>'
    end
end


local infoTab = Window:Tab({Title = "通知", Icon = "layout-grid", Locked = false})

local infoSection = infoTab:Section({Title = "详情信息",Icon = "info", Opened = true})

infoSection:Divider()

infoSection:Paragraph({
    Title = "您当前的服务器为",
    Desc = tostring(game.PlaceId) .. "\n欢迎使用YG/TNINE",
    ThumbnailSize = 190,
})
infoSection:Paragraph({
    Title = "持续更新 有bug请提出来",
    ThumbnailSize = 190,
})
infoSection:Paragraph({
    Title = "作者:怀 凌乱",
    ThumbnailSize = 190,
})

local LockSection = Window:Section({
    Title = "功能以及UI设置",
    Icon = "crown",
    Opened = true,
})

local Settings = Window:Tab({Title = "UI设置", Icon = "palette"})
Settings:Paragraph({
    Title = "UI设置",
    Desc = "绝妙二改WindUI",
    Image = "settings",
    ImageSize = 20,
    Color = "White"
})

Settings:Toggle({
    Title = "启用边框",
    Value = borderEnabled,
    Callback = function(value)
        borderEnabled = value
        local mainFrame = Window.UIElements and Window.UIElements.Main
        if mainFrame then
            local rainbowStroke = mainFrame:FindFirstChild("RainbowStroke")
            if rainbowStroke then
                rainbowStroke.Enabled = value
                if value and windowOpen and not rainbowBorderAnimation then
                    startBorderAnimation(Window, animationSpeed)
                elseif not value and rainbowBorderAnimation then
                    rainbowBorderAnimation:Disconnect()
                    rainbowBorderAnimation = nil
                end
                
                WindUI:Notify({
                    Title = "边框",
                    Content = value and "已启用" or "已禁用",
                    Duration = 2,
                    Icon = value and "eye" or "eye-off"
                })
            end
        end
    end
})

Settings:Toggle({
    Title = "启用字体颜色",
    Value = fontColorEnabled,
    Callback = function(value)
        fontColorEnabled = value
        applyFontColorsToWindow(currentFontColorScheme)
        
        WindUI:Notify({
            Title = "字体颜色",
            Content = value and "已启用" or "已禁用",
            Duration = 2,
            Icon = value and "type" or "type"
        })
    end
})

Settings:Toggle({
    Title = "启用音效",
    Value = soundEnabled,
    Callback = function(value)
        soundEnabled = value
        WindUI:Notify({
            Title = "音效",
            Content = value and "已启用" or "已禁用",
            Duration = 2,
            Icon = value and "volume-2" or "volume-x"
        })
    end
})

Settings:Toggle({
    Title = "启用背景模糊",
    Value = blurEnabled,
    Callback = function(value)
        blurEnabled = value
        applyBlurEffect(value)
        WindUI:Notify({
            Title = "背景模糊",
            Content = value and "已启用" or "已禁用",
            Duration = 2,
            Icon = value and "cloud-rain" or "cloud"
        })
    end
})

local colorSchemeNames = {}
for name, _ in pairs(COLOR_SCHEMES) do
    table.insert(colorSchemeNames, name)
end
table.sort(colorSchemeNames)

Settings:Dropdown({
    Title = "边框颜色方案",
    Desc = "选择喜欢的颜色组合",
    Values = colorSchemeNames,
    Value = "糖果颜色",
    Callback = function(value)
        currentBorderColorScheme = value
        local success = initializeRainbowBorder(value, animationSpeed)
        playSound()
    end
})

Settings:Dropdown({
    Title = "字体颜色方案",
    Desc = "选择文字颜色组合",
    Values = colorSchemeNames,
    Value = "彩虹颜色",
    Callback = function(value)
        currentFontColorScheme = value
        applyFontColorsToWindow(value)
        playSound()
    end
})

local fontOptions = {}
for _, fontName in ipairs(FONT_STYLES) do
    local description = FONT_DESCRIPTIONS[fontName] or fontName
    table.insert(fontOptions, {text = description, value = fontName})
end

table.sort(fontOptions, function(a, b)
    return a.text < b.text
end)

local fontValues = {}
local fontValueToName = {}
for _, option in ipairs(fontOptions) do
    table.insert(fontValues, option.text)
    fontValueToName[option.text] = option.value
end

Settings:Dropdown({
    Title = "字体样式",
    Desc = "选择文字字体样式 (" .. #FONT_STYLES .. " 种可用)",
    Values = fontValues,
    Value = "标准粗体",
    Callback = function(value)
        local fontName = fontValueToName[value]
        if fontName then
            currentFontStyle = fontName
            local successCount, totalCount = applyFontStyleToWindow(fontName)
            playSound()
        end
    end
})

Settings:Slider({
    Title = "边框转动速度",
    Desc = "调整边框旋转的快慢",
    Value = { 
        Min = 1,
        Max = 10,
        Default = 5,
    },
    Callback = function(value)
        animationSpeed = value
        if rainbowBorderAnimation then
            rainbowBorderAnimation:Disconnect()
            rainbowBorderAnimation = nil
        end
        if borderEnabled then
            startBorderAnimation(Window, animationSpeed)
        end
        
        applyFontColorsToWindow(currentFontColorScheme)
        playSound()
    end
})

Settings:Slider({
    Title = "UI整体缩放",
    Desc = "调整UI大小比例",
    Value = { 
        Min = 0.5,
        Max = 1.5,
        Default = 1,
    },
    Step = 0.1,
    Callback = function(value)
        uiScale = value
        applyUIScale(value)
        playSound()
    end
})

Settings:Divider()

Settings:Slider({
    Title = "UI透明度",
    Desc = "调整整个UI的透明度",
    Value = { 
        Min = 0,
        Max = 1,
        Default = 0.2,
    },
    Step = 0.1,
    Callback = function(value)
        Window:ToggleTransparency(tonumber(value) > 0)
        WindUI.TransparencyValue = tonumber(value)
        playSound()
    end
})

Settings:Slider({
    Title = "调整UI宽度",
    Desc = "调整窗口的宽度",
    Value = { 
        Min = 500,
        Max = 800,
        Default = 600,
    },
    Callback = function(value)
        if Window.UIElements and Window.UIElements.Main then
            Window.UIElements.Main.Size = UDim2.fromOffset(value, 400)
        end
        playSound()
    end
})

Settings:Slider({
    Title = "调整UI高度",
    Desc = "调整窗口的高度",
    Value = { 
        Min = 300,
        Max = 600,
        Default = 400,
    },
    Callback = function(value)
        if Window.UIElements and Window.UIElements.Main then
            local currentWidth = Window.UIElements.Main.Size.X.Offset
            Window.UIElements.Main.Size = UDim2.fromOffset(currentWidth, value)
        end
        playSound()
    end
})

Settings:Slider({
    Title = "边框粗细",
    Desc = "调整边框的粗细",
    Value = { 
        Min = 1,
        Max = 5,
        Default = 1.5,
    },
    Step = 0.5,
    Callback = function(value)
        local mainFrame = Window.UIElements and Window.UIElements.Main
        if mainFrame then
            local rainbowStroke = mainFrame:FindFirstChild("RainbowStroke")
            if rainbowStroke then
                rainbowStroke.Thickness = value
            end
        end
        playSound()
    end
})

Settings:Slider({
    Title = "圆角大小",
    Desc = "调整UI圆角的大小",
    Value = { 
        Min = 0,
        Max = 20,
        Default = 16,
    },
    Callback = function(value)
        local mainFrame = Window.UIElements and Window.UIElements.Main
        if mainFrame then
            local corner = mainFrame:FindFirstChildOfClass("UICorner")
            if not corner then
                corner = Instance.new("UICorner")
                corner.Parent = mainFrame
            end
            corner.CornerRadius = UDim.new(0, value)
        end
        playSound()
    end
})

Settings:Button({
    Title = "恢复UI到原位",
    Icon = "rotate-ccw",
    Callback = function()
        if Window.UIElements and Window.UIElements.Main then
            Window.UIElements.Main.Position = UDim2.new(0.5, 0, 0.5, 0)
            playSound()
        end
    end
})

Settings:Button({
    Title = "重置UI大小",
    Icon = "maximize-2",
    Callback = function()
        if Window.UIElements and Window.UIElements.Main then
            Window.UIElements.Main.Size = UDim2.fromOffset(600, 400)
            playSound()
        end
    end
})

Settings:Button({
    Title = "随机字体",
    Icon = "shuffle",
    Callback = function()
        local randomFont = FONT_STYLES[math.random(1, #FONT_STYLES)]
        currentFontStyle = randomFont
        applyFontStyleToWindow(randomFont)
        playSound()
    end
})

Settings:Button({
    Title = "随机颜色",
    Icon = "palette",
    Callback = function()
        local randomColor = colorSchemeNames[math.random(1, #colorSchemeNames)]
        currentBorderColorScheme = randomColor
        initializeRainbowBorder(randomColor, animationSpeed)
        playSound()
    end
})

Settings:Divider()

Settings:Button({
    Title = "刷新字体颜色",
    Icon = "refresh-cw",
    Callback = function()
        applyFontColorsToWindow(currentFontColorScheme)
        playSound()
    end
})

Settings:Button({
    Title = "刷新字体样式",
    Icon = "refresh-cw",
    Callback = function()
        local successCount, totalCount = applyFontStyleToWindow(currentFontStyle)
        playSound()
    end
})

Settings:Button({
    Title = "测试所有字体",
    Icon = "check-circle",
    Callback = function()
        local workingFonts = {}
        local totalFonts = #FONT_STYLES
        
        for i, fontName in ipairs(FONT_STYLES) do
            local success = pcall(function()
                local test = Enum.Font[fontName]
            end)
            
            if success then
                table.insert(workingFonts, fontName)
            end
        end
        playSound()
    end
})

Settings:Button({
    Title = "导出设置",
    Icon = "download",
    Callback = function()
        local settings = {
            font = currentFontStyle,
            borderColor = currentBorderColorScheme,
            fontSize = currentFontColorScheme,
            speed = animationSpeed,
            scale = uiScale
        }
        setclipboard("YG/TNINE SCRIPT设置: " .. game:GetService("HttpService"):JSONEncode(settings))
        playSound()
    end
})

local animationIDs = {
    ["rbxassetid://10468665991"] = true,
    ["rbxassetid://10466974800"] = true,
    ["rbxassetid://10471336737"] = true,
    ["rbxassetid://12510170988"] = true,
    ["rbxassetid://12272894215"] = true,
    ["rbxassetid://12296882427"] = true,
    ["rbxassetid://12307656616"] = true,
    ["rbxassetid://12351854556"] = true,
    ["rbxassetid://12534735382"] = true,
    ["rbxassetid://12502664044"] = true,
    ["rbxassetid://12509505723"] = true,
    ["rbxassetid://12618292188"] = true,
    ["rbxassetid://12684185971"] = true,
    ["rbxassetid://13376869471"] = true,
    ["rbxassetid://13294790250"] = true,
    ["rbxassetid://13376962659"] = true,
    ["rbxassetid://13501296372"] = true,
    ["rbxassetid://14004235777"] = true,
    ["rbxassetid://14003607057"] = true,
    ["rbxassetid://14046756619"] = true,
    ["rbxassetid://14048349132"] = true,
    ["rbxassetid://14299135500"] = true,
    ["rbxassetid://14967219354"] = true,
    ["rbxassetid://14357997687"] = true,
    ["rbxassetid://14357943487"] = true,
    ["rbxassetid://15290930205"] = true,
    ["rbxassetid://15145462680"] = true,
    ["rbxassetid://15295895753"] = true,
    ["rbxassetid://15311685628"] = true,
    ["rbxassetid://16139108718"] = true,
    ["rbxassetid://16139402582"] = true,
    ["rbxassetid://16515850153"] = true,
    ["rbxassetid://16431491215"] = true,
    ["rbxassetid://16597322398"] = true,
    ["rbxassetid://10469493270"] = true,
    ["rbxassetid://10469630950"] = true,
    ["rbxassetid://10469639222"] = true,
    ["rbxassetid://10469643643"] = true,
    ["rbxassetid://13532562418"] = true,
    ["rbxassetid://13491635433"] = true,
    ["rbxassetid://13296577783"] = true,
    ["rbxassetid://13295919399"] = true,
    ["rbxassetid://13370310513"] = true,
    ["rbxassetid://13390230973"] = true,
    ["rbxassetid://13378751717"] = true,
    ["rbxassetid://13378708199"] = true,
    ["rbxassetid://14004222985"] = true,
    ["rbxassetid://13997092940"] = true,
    ["rbxassetid://14001963401"] = true,
    ["rbxassetid://14136436157"] = true,
    ["rbxassetid://15259161390"] = true,
    ["rbxassetid://15240216931"] = true,
    ["rbxassetid://15240176873"] = true,
    ["rbxassetid://15162694192"] = true,
    ["rbxassetid://16515503507"] = true,
    ["rbxassetid://16515520431"] = true,
    ["rbxassetid://16515448089"] = true,
    ["rbxassetid://16552234590"] = true,
    ["rbxassetid://17889458563"] = true,
    ["rbxassetid://17889461810"] = true,
    ["rbxassetid://17889471098"] = true,
    ["rbxassetid://17889290569"] = true,
    ["rbxassetid://10479335397"] = true,
    ["rbxassetid://13380255751"] = true,
    ["rbxassetid://13362587853"] = true,
    ["rbxassetid://11365563255"] = {range = 175, behind = 17},
    ["rbxassetid://12983333733"] = {range = 200, behind = 16},
    ["rbxassetid://13927612951"] = {range = 100, behind = 16},
    ["rbxassetid://13146710762"] = {range = 200, behind = 24},
    ["rbxassetid://15520132233"] = {range = 100, behind = 75},
    ["rbxassetid://16082123712"] = {range = 40, behind = 20}
}

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local detectionRange = 15
local detectionMode = "360"
local lastTeleportTime = 0

local function getNearbyPlayers(radius)
    local players = {}
    for _, otherPlayer in pairs(game.Players:GetPlayers()) do
        if otherPlayer ~= player then
            local otherCharacter = otherPlayer.Character
            if otherCharacter then
                local otherHumanoidRootPart = otherCharacter:FindFirstChild("HumanoidRootPart")
                if otherHumanoidRootPart and (otherHumanoidRootPart.Position - humanoidRootPart.Position).Magnitude <= radius then
                    table.insert(players, otherPlayer)
                end
            end
        end
    end
    return players
end

local function isInFront(character, target)
    local lookVector = character.CFrame.lookVector
    local directionToTarget = (target.Position - character.Position).unit
    return lookVector:Dot(directionToTarget) > 0.5
end

local function checkAnimations()
    local currentTime = tick()
    if currentTime - lastTeleportTime < 0.1 then
        return
    end
    
    local nearbyPlayers = getNearbyPlayers(detectionRange)
    for _, otherPlayer in pairs(nearbyPlayers) do
        local otherCharacter = otherPlayer.Character
        if otherCharacter then
            local otherHumanoidRootPart = otherCharacter:FindFirstChild("HumanoidRootPart")
            if otherHumanoidRootPart then
                if (detectionMode == "360" or isInFront(humanoidRootPart, otherHumanoidRootPart)) then
                    for _, animTrack in pairs(otherCharacter:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks()) do
                        local animId = animTrack.Animation.AnimationId
                        local data = animationIDs[animId]
                        if data then
                            local teleportDistance = (type(data) == "table" and data.behind) or 18
                            local newPosition = otherHumanoidRootPart.Position - otherHumanoidRootPart.CFrame.lookVector * teleportDistance + Vector3.new(math.random(-1, 1), 0, math.random(-1, 1))
                            humanoidRootPart.CFrame = CFrame.new(newPosition)
                            lastTeleportTime = currentTime
                            return
                        end
                    end
                end
            end
        end
    end
end

local ultraInstinctActive = false

local RunService = game:GetService("RunService")

local function ultraInstinctLoop()
    local connection
    connection = RunService.Heartbeat:Connect(function()
        if ultraInstinctActive then
            checkAnimations()
        else
            connection:Disconnect()
        end
    end)
end

local function onCharacterAdded(newCharacter)
    character = newCharacter
    humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    if ultraInstinctActive then
        ultraInstinctLoop()
    end
end

local animationsToAvoid = {
    ["rbxassetid://10468665991"] = true,
    ["rbxassetid://10466974800"] = true,
    ["rbxassetid://10471336737"] = true,
    ["rbxassetid://12510170988"] = true,
    ["rbxassetid://12272894215"] = true,
    ["rbxassetid://12296882427"] = true,
    ["rbxassetid://12307656616"] = true,
    ["rbxassetid://12351854556"] = true,
    ["rbxassetid://12534735382"] = true,
    ["rbxassetid://12502664044"] = true,
    ["rbxassetid://12509505723"] = true,
    ["rbxassetid://12618292188"] = true,
    ["rbxassetid://12684185971"] = true,
    ["rbxassetid://13376869471"] = true,
    ["rbxassetid://13294790250"] = true,
    ["rbxassetid://13376962659"] = true,
    ["rbxassetid://13501296372"] = true,
    ["rbxassetid://14004235777"] = true,
    ["rbxassetid://14003607057"] = true,
    ["rbxassetid://14046756619"] = true,
    ["rbxassetid://14048349132"] = true,
    ["rbxassetid://14299135500"] = true,
    ["rbxassetid://14967219354"] = true,
    ["rbxassetid://14357997687"] = true,
    ["rbxassetid://14357943487"] = true,
    ["rbxassetid://15290930205"] = true,
    ["rbxassetid://15145462680"] = true,
    ["rbxassetid://15295895753"] = true,
    ["rbxassetid://15311685628"] = true,
    ["rbxassetid://16139108718"] = true,
    ["rbxassetid://16139402582"] = true,
    ["rbxassetid://16515850153"] = true,
    ["rbxassetid://16431491215"] = true,
    ["rbxassetid://16597322398"] = true,
    ["rbxassetid://10469493270"] = "special"
}

local skills = {
    firstskill = {"Normal Punch", "Flowing Water", "Machine Gun Blows", "Flash Strike", "Homerun", "Quick Slice", "Bullet Barrage", "Crushing Pull"},
    secondskill = {"Atmos Cleave", "Windstorm Fury", "Ignition Burst", "Whirlwind Kick", "Beatdown", "Consecutive Punches", "Lethal Whirlwind Stream", "Vanishing Kick"},
    thirdskill = {"Shove", "Hunter's Grasp", "Blitz Shot", "Scatter", "Grand Slam", "Pinpoint Cut", "Stone Coffin", "Whirlwind Drop"},
    fourthskill = {"Split Second Counter", "Expulsive Push", "Jet Dive", "Explosive Shuriken", "Foul Ball", "Uppercut", "Head First", "Prey's Peril"}
}

local skillCooldowns = {
    ["Normal Punch"] = 21,
    ["Flowing Water"] = 19,
    ["Machine Gun Blows"] = 17,
    ["Flash Strike"] = 18.5,
    ["Homerun"] = 18.6,
    ["Quick Slice"] = 21.5,
    ["Bullet Barrage"] = 22,
    ["Crushing Pull"] = 23,
    ["Consecutive Punches"] = 19,
    ["Lethal Whirlwind Stream"] = 22,
    ["Ignition Burst"] = 18.3,
    ["Whirlwind Kick"] = 21.5,
    ["Beatdown"] = 24.3,
    ["Atmos Cleave"] = 23.2,
    ["Windstorm Fury"] = 21,
    ["Vanishing Kick"] = 21,
    ["Shove"] = 11,
    ["Hunter's Grasp"] = 17.8,
    ["Blitz Shot"] = 26,
    ["Scatter"] = 22.3,
    ["Grand Slam"] = 21.7,
    ["Pinpoint Cut"] = 18,
    ["Stone Coffin"] = 25.7,
    ["Whirlwind Drop"] = 15.7,
    ["Jet Dive"] = 19.5,
    ["Explosive Shuriken"] = 18.5,
    ["Foul Ball"] = 24.8,
    ["Split Second Counter"] = 18.7,
    ["Expulsive Push"] = 20.7,
    ["Prey's Peril"] = 18.5,
    ["Head First"] = 22,
    ["Uppercut"] = 21
}

local skillUsage = {
    firstskill = 0,
    secondskill = 0,
    thirdskill = 0,
    fourthskill = 0
}

local function isAnimationPlaying(character)
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        for _, track in pairs(humanoid:GetPlayingAnimationTracks()) do
            if animationsToAvoid[track.Animation.AnimationId] then
                return animationsToAvoid[track.Animation.AnimationId]
            end
        end
    end
    return false
end

local function teleportBehindTarget(player, targetPlayer, distance)
    local targetCharacter = targetPlayer.Character
    if targetCharacter then
        local targetHRP = targetCharacter:FindFirstChild("HumanoidRootPart")
        local playerHRP = player.Character:FindFirstChild("HumanoidRootPart")
        if targetHRP and playerHRP then
            local backOffset = targetHRP.CFrame.lookVector * -distance
            playerHRP.CFrame = CFrame.new(targetHRP.Position + backOffset, targetHRP.Position)
        end
    end
end

local function equipAndUseSkill(player, skillType)
    local character = player.Character
    if character then
        local backpack = player.Backpack
        local liveFolder = workspace:FindFirstChild("Live")
        if backpack and liveFolder then
            for _, skill in pairs(skills[skillType]) do
                local tool = backpack:FindFirstChild(skill) or character:FindFirstChild(skill)
                if tool then
                    character.Humanoid:EquipTool(tool)
                    
                    local args = {
                        [1] = {
                            ["Mobile"] = true,
                            ["Goal"] = "LeftClick"
                        }
                    }
                    game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))

                    wait(0.02)

                    local argsRelease = {
                        [1] = {
                            ["Goal"] = "LeftClickRelease",
                            ["Mobile"] = true
                        }
                    }
                    game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(argsRelease))

                    character.Humanoid:UnequipTools()

                    if skillCooldowns[skill] then
                        skillUsage[skillType] = tick()
                        wait(skillCooldowns[skill])
                    end
                end
            end
        end
    end
end

local autoFarmThread
local useFirstSkill = false
local useSecondSkill = false
local useThirdSkill = false
local useFourthSkill = false
local ignoreFriends = false
local specificPlayerUsername = ""
local specificPlayerTarget = nil

local function findClosestMatchingPlayer(inputName)
    local players = game:GetService("Players"):GetPlayers()
    local closestPlayer = nil
    local closestDistance = math.huge

    for _, player in pairs(players) do
        local distance = string.len(player.Name) + string.len(inputName) - 2 * string.len(player.Name:sub(1, string.len(inputName)))
        if distance < closestDistance then
            closestDistance = distance
            closestPlayer = player
        end
    end

    return closestPlayer
end

local function autoFarm()
    local player = game:GetService("Players").LocalPlayer
    local targetPlayer

    while true do
        wait(0.02)

        if specificPlayerTarget then
            targetPlayer = specificPlayerTarget
        else
            if not targetPlayer or not targetPlayer.Character or not targetPlayer.Character:FindFirstChild("HumanoidRootPart") or targetPlayer.Character:FindFirstChildOfClass("Humanoid").Health <= 0 then
                local players = game:GetService("Players"):GetPlayers()
                repeat
                    targetPlayer = players[math.random(1, #players)]
                until targetPlayer ~= player and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") and (not ignoreFriends or not player:IsFriendsWith(targetPlayer.UserId))
            end
        end

        if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then
            repeat wait() until player.Character and player.Character:FindFirstChild("HumanoidRootPart")
        end

        local function handleAvoidAnimation()
            local endTime = tick() + 1
            while tick() < endTime do
                teleportBehindTarget(player, targetPlayer, 13)
                wait(0.02)
            end
        end

        if isAnimationPlaying(targetPlayer.Character) then
            handleAvoidAnimation()
        else
            teleportBehindTarget(player, targetPlayer, 3)

            local args = {
                [1] = {
                    ["Goal"] = "LeftClick",
                    ["Mobile"] = true
                }
            }
            game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))

            local argsRelease = {
                [1] = {
                    ["Goal"] = "LeftClickRelease",
                    ["Mobile"] = true
                }
            }
            game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(argsRelease))

            local currentTime = tick()

            if useFirstSkill and (currentTime - skillUsage["firstskill"] >= skillCooldowns[skills.firstskill[1]]) then
                coroutine.wrap(equipAndUseSkill)(player, "firstskill")
                skillUsage["firstskill"] = currentTime
            end
            if useSecondSkill and (currentTime - skillUsage["secondskill"] >= skillCooldowns[skills.secondskill[1]]) then
                coroutine.wrap(equipAndUseSkill)(player, "secondskill")
                skillUsage["secondskill"] = currentTime
            end
            if useThirdSkill and (currentTime - skillUsage["thirdskill"] >= skillCooldowns[skills.thirdskill[1]]) then
                coroutine.wrap(equipAndUseSkill)(player, "thirdskill")
                skillUsage["thirdskill"] = currentTime
            end
            if useFourthSkill and (currentTime - skillUsage["fourthskill"] >= skillCooldowns[skills.fourthskill[1]]) then
                coroutine.wrap(equipAndUseSkill)(player, "fourthskill")
                skillUsage["fourthskill"] = currentTime
            end
        end
    end
end

local OpenUI = Instance.new("ScreenGui") 
local ImageButton = Instance.new("ImageButton") 
local UICorner = Instance.new("UICorner") 
OpenUI.Name = "OpenUI" 
OpenUI.Parent = game:GetService("CoreGui") 
OpenUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling 
ImageButton.Parent = OpenUI 
ImageButton.BackgroundColor3 = Color3.fromRGB(105, 105, 105) 
ImageButton.BackgroundTransparency = 0.8
ImageButton.Position = UDim2.new(0.9, 0, 0.1, 0) 
ImageButton.Size = UDim2.new(0, 50, 0, 50) 
ImageButton.Image = "" 
ImageButton.Draggable = true 
ImageButton.Transparency = 1
UICorner.CornerRadius = UDim.new(0, 200) 
UICorner.Parent = ImageButton 
ImageButton.MouseButton1Click:Connect(function()
	local vim = game:service("VirtualInputManager")
	vim:SendKeyEvent(true, "RightControl", false, game)
	local vim = game:service("VirtualInputManager")
	vim:SendKeyEvent(false, "RightControl", false, game)
end)

local punchAnimations = {
    ["10469493270"] = true,
    ["10469630950"] = true,
    ["10469639222"] = true,
    ["10469643643"] = true,
    ["13532562418"] = true,
    ["13491635433"] = true,
    ["13296577783"] = true,
    ["13295919399"] = true,
    ["13370310513"] = true,
    ["13390230973"] = true,
    ["13378751717"] = true,
    ["13378708199"] = true,
    ["14004222985"] = true,
    ["13997092940"] = true,
    ["14001963401"] = true,
    ["14136436157"] = true,
    ["15259161390"] = true,
    ["15240216931"] = true,
    ["15240176873"] = true,
    ["15162694192"] = true,
    ["16515503507"] = true,
    ["16515520431"] = true,
    ["16515448089"] = true,
    ["16552234590"] = true,
    ["17889458563"] = true,
    ["17889461810"] = true,
    ["17889471098"] = true,
    ["17889290569"] = true
}

local dashAnimations = {
    ["10479335397"] = true,
    ["13380255751"] = true
}

local skillAnimations = {
    ["10466974800"] = 1.8,
    ["12534735382"] = 1.9,
    ["14046756619"] = 0.5,
    ["13376962659"] = 1.0,
    ["12296882427"] = 0.4,
    ["12618292188"] = 0.6,
    ["12618271998"] = 0.6,
    ["13376869471"] = 0.5,
    ["17799224866"] = 0.9,
    ["18179181663"] = 0.6,
    ["16515850153"] = 0.8,
    ["16431491215"] = 0.7
}

local blockAnimations = {
    ["BlockingAnimationId"] = true
}

local function isPlayerInRange(player, range)
    local localPlayer = game:GetService("Players").LocalPlayer
    local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
    local rootPart = character:WaitForChild("HumanoidRootPart")

    local targetCharacter = player.Character
    if targetCharacter then
        local targetRootPart = targetCharacter:FindFirstChild("HumanoidRootPart")
        if targetRootPart then
            local distance = (rootPart.Position - targetRootPart.Position).Magnitude
            return distance <= range
        end
    end
    return false
end

local function isLocalPlayerPlayingAnimation()
    local localPlayer = game:GetService("Players").LocalPlayer
    local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
    for _, animTrack in pairs(character.Humanoid:GetPlayingAnimationTracks()) do
        local animId = animTrack.Animation.AnimationId:match("%d+$")
        if punchAnimations[animId] or dashAnimations[animId] or skillAnimations[animId] then
            return true
        end
    end
    return false
end

local function isLocalPlayerBlocking()
    local localPlayer = game:GetService("Players").LocalPlayer
    local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
    for _, animTrack in pairs(character.Humanoid:GetPlayingAnimationTracks()) do
        local animId = animTrack.Animation.AnimationId:match("%d+$")
        if blockAnimations[animId] then
            return true
        end
    end
    return false
end

local function detectAnimations()
    local players = game:GetService("Players")

    for _, player in pairs(players:GetPlayers()) do
        if player ~= players.LocalPlayer then
            local inRange = false
            if detectionMode == "360" then
                inRange = isPlayerInRange(player, 50)
            end

            if inRange then
                local character = player.Character
                if character then
                    for _, animTrack in pairs(character.Humanoid:GetPlayingAnimationTracks()) do
                        local animId = animTrack.Animation.AnimationId:match("%d+$")
                        if not isLocalPlayerPlayingAnimation() then
                            if punchAnimations[animId] then
                                local args = {
                                    [1] = {
                                        ["Goal"] = "KeyPress",
                                        ["Key"] = Enum.KeyCode.F
                                    }
                                }

                                game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))

                                wait(0.45)

                                local args = {
                                    [1] = {
                                        ["Goal"] = "KeyRelease",
                                        ["Key"] = Enum.KeyCode.F
                                    }
                                }

                                game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))
                            elseif dashAnimations[animId] then
                                local args = {
                                    [1] = {
                                        ["Goal"] = "KeyPress",
                                        ["Key"] = Enum.KeyCode.F
                                    }
                                }

                                game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))

                                wait(0.90)

                                local args = {
                                    [1] = {
                                        ["Goal"] = "KeyRelease",
                                        ["Key"] = Enum.KeyCode.F
                                    }
                                }

                                game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))
                            elseif skillAnimations[animId] then
                                local args = {
                                    [1] = {
                                        ["Goal"] = "KeyPress",
                                        ["Key"] = Enum.KeyCode.F
                                    }
                                }

                                game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))

                                wait(skillAnimations[animId])

                                local args = {
                                    [1] = {
                                        ["Goal"] = "KeyRelease",
                                        ["Key"] = Enum.KeyCode.F
                                    }
                                }

                                game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))
                            end
                        end
                    end
                end
            end
        end
    end
end

local function autoPunch()
    local players = game:GetService("Players")

    for _, player in pairs(players:GetPlayers()) do
        if player ~= players.LocalPlayer then
            local inRange = false
            if detectionMode == "360" then
                inRange = isPlayerInRange(player, 7)
            end

            if inRange and not isLocalPlayerBlocking() then
                local args = {
                    [1] = {
                        ["Goal"] = "LeftClick",
                        ["Mobile"] = true
                    }
                }
                game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))

                local argsRelease = {
                    [1] = {
                        ["Goal"] = "LeftClickRelease",
                        ["Mobile"] = true
                    }
                }
                game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(argsRelease))
            end
        end
    end
end

local autoBlockEnabled = false
local autoPunchEnabled = false

game:GetService("RunService").Heartbeat:Connect(function()
    if autoBlockEnabled then
        detectAnimations()
    end
    if autoPunchEnabled then
        autoPunch()
    end
end)

local strongestBattleTab = Window:Tab({Title = "最强战场", Icon = "swords", Locked = false})

local combatSection = strongestBattleTab:Section({Title = "战斗功能", Icon = "sword", Opened = true})

combatSection:Toggle({
    Title = "防击打",
    Value = false,
    Callback = function(Value)
        ultraInstinctActive = Value
        if ultraInstinctActive then
            ultraInstinctLoop()
        end
    end
})

combatSection:Toggle({
    Title = "自动打人",
    Value = false,
    Callback = function(Value)
        if Value then
            autoFarmThread = coroutine.create(autoFarm)
            coroutine.resume(autoFarmThread)
        else
            if autoFarmThread then
                coroutine.close(autoFarmThread)
                autoFarmThread = nil
            end
        end
    end
})

combatSection:Input({
    Title = "输入玩家用户名",
    Placeholder = "输入玩家用户名",
    Callback = function(Value)
        specificPlayerUsername = Value
        specificPlayerTarget = findClosestMatchingPlayer(specificPlayerUsername)
    end
})

combatSection:Button({
    Title = "关闭自动打人",
    Callback = function()
        specificPlayerTarget = nil
    end
})

combatSection:Toggle({
    Title = "自动格挡",
    Value = false,
    Callback = function(Value)
        autoBlockEnabled = Value
    end
})

combatSection:Toggle({
    Title = "自动挥拳",
    Value = false,
    Callback = function(Value)
        autoPunchEnabled = Value
    end
})

combatSection:Toggle({
    Title = "自瞄玩家",
    Value = false,
    Callback = function(Value)
        getgenv().AutoAimlocking = Value
        game:GetService("RunService").RenderStepped:Connect(function() 
            if not getgenv().AutoAimlocking == true then 
                return 
            end 
            local x,b 
            for _,v in ipairs(game:GetService("Players"):GetPlayers()) do 
                if v.Character and v ~= game:GetService("Players").LocalPlayer then 
                    if not x or (v.Character.Head.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).Magnitude < b then 
                        x = v 
                        b = (v.Character.Head.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).Magnitude 
                    end 
                end 
            end 
            if x and b <= 15 then 
                game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, x.Character.HumanoidRootPart.Position) 
            end 
        end)
    end
})

combatSection:Toggle({
    Title = "自动躲技能",
    Value = false,
    Callback = function(Value)
        getgenv().AutoDodging = Value

        local DashAnims = {NormalDash = {10479335397},WeaponDash = {13380255751}}
        local SaitamaAnims = {
            NormalPunch = {10468665991}
        }
        local GarouAnims = {
            FlowingWater = {12272894215}
        }
        local GenosAnims = {
            MachineGunBlows = {12534735382}
        }
        local SonicAnims = {
            FlashStrike = {13376869471}
        }
        local MetalBatAnims = {
            Homerun = {14004235777,14003607057}
        }
        local SamuraiAnims = {
            QuickSlice = {15290930205}
        }
        local EsperAnims = {
            CrushingPull = {16139108718,16139402582}
        }

        local Animations = {}
        for _,x in pairs({DashAnims,SaitamaAnims,GarouAnims,GenosAnims,SonicAnims,MetalBatAnims,SamuraiAnims,EsperAnims}) do
            for _,k in pairs(x) do
                for _,v in pairs(k) do
                    table.insert(Animations,v)
                end
            end
        end

        task.spawn(function()
            local connection
            connection = game:GetService("RunService").RenderStepped:Connect(function()
                if getgenv().AutoDodging == true then
                    pcall(function()
                        for _,k in ipairs(workspace.Live:GetChildren()) do
                            if k:IsA("Model") and k:FindFirstChild("Head") and k.Head:IsA("Part") and k.Head.Name == "Head" and k.Head ~= game.Players.LocalPlayer.Character.Head then
                                if (k.Head.Position - game.Players.LocalPlayer.Character.Head.Position).magnitude <= 25 then
                                    if k:FindFirstChildOfClass("Humanoid") and k:FindFirstChildOfClass("Humanoid").Health > 0 then 
                                        local IsUsingAttacks = false
                                        for _,x in pairs(k:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks()) do
                                            local animId = x.Animation.AnimationId:match("%d+")
                                            if animId and table.find(Animations, tonumber(animId)) then
                                                IsUsingAttacks = true
                                                break
                                            end
                                        end

                                        if k:FindFirstChild("M1ing") or IsUsingAttacks then    
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(k.Head.Position + k.Head.CFrame.lookVector * -20 + Vector3.new(0,35,0),k.Head.Position)
                                        end
                                    end
                                end
                            end
                        end
                    end)
                else
                    if connection then
                        connection:Disconnect()
                    end
                end
            end)
        end)
    end
})

local autoSection = strongestBattleTab:Section({Title = "自动功能", Icon = "zap", Opened = true})

autoSection:Toggle({
    Title = "自动放技能1",
    Value = false,
    Callback = function(Value)
        useFirstSkill = Value
    end
})

autoSection:Toggle({
    Title = "自动放技能2",
    Value = false,
    Callback = function(Value)
        useSecondSkill = Value
    end
})

autoSection:Toggle({
    Title = "自动放技能3",
    Value = false,
    Callback = function(Value)
        useThirdSkill = Value
    end
})

autoSection:Toggle({
    Title = "自动放技能4",
    Value = false,
    Callback = function(Value)
        useFourthSkill = Value
    end
})

Window:OnClose(function()
    windowOpen = false
    if rainbowBorderAnimation then
        rainbowBorderAnimation:Disconnect()
        rainbowBorderAnimation = nil
    end
    applyBlurEffect(false)
end)

Window:OnDestroy(function()
    windowOpen = false
    if rainbowBorderAnimation then
        rainbowBorderAnimation:Disconnect()
        rainbowBorderAnimation = nil
    end
    for _, animation in pairs(fontColorAnimations) do
        animation:Disconnect()
    end
    fontColorAnimations = {}
    applyBlurEffect(false)
end)