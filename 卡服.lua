-- MultiTestTool_MaxLoad_v8_Mobile_Horizontal_withSplash_LargePayload.lua

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- =======================
-- 开屏动画
local function showSplash(callback)
	local playerName = player.Name

	local splashGui = Instance.new("ScreenGui")
	splashGui.Parent = playerGui

	local splashLabel = Instance.new("TextLabel")
	splashLabel.Size = UDim2.new(1,0,0,50)
	splashLabel.Position = UDim2.new(0,0,0.5,-25)
	splashLabel.BackgroundTransparency = 1 -- 无黑底
	splashLabel.TextColor3 = Color3.fromRGB(255,255,255)
	splashLabel.Font = Enum.Font.SourceSansBold
	splashLabel.TextSize = 20
	splashLabel.Text = "感谢【"..playerName.."】使用卡服脚本 by 抖音夜"
	splashLabel.TextScaled = true
	splashLabel.Parent = splashGui

	-- 渐入
	splashLabel.TextTransparency = 1
	splashLabel.TextStrokeTransparency = 1
	spawn(function()
		for i = 0,1,0.05 do
			splashLabel.TextTransparency = 1 - i
			splashLabel.TextStrokeTransparency = 1 - i
			wait(0.03)
		end
	end)

	-- 3秒后淡出
	delay(3,function()
		for i = 0,1,0.05 do
			splashLabel.TextTransparency = i
			splashLabel.TextStrokeTransparency = i
			wait(0.03)
		end
		splashGui:Destroy()
		if callback then
			callback()
		end
	end)
end

-- =======================
-- 主脚本函数
local function loadMainScript()
	local screenGui = Instance.new("ScreenGui")
	screenGui.Parent = playerGui

	-- 主框 横屏
	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(0, 400, 0, 200)
	frame.Position = UDim2.new(0.2,0,0.3,0)
	frame.BackgroundTransparency = 0.3
	frame.Active = true
	frame.Parent = screenGui

	-- 小方块 可独立拖动
	local smallBtn = Instance.new("TextButton")
	smallBtn.Size = UDim2.new(0,40,0,40)
	smallBtn.Position = UDim2.new(0, 10, 0.5, -20)
	smallBtn.Text = "-"
	smallBtn.Font = Enum.Font.SourceSans
	smallBtn.TextSize = 20
	smallBtn.BackgroundTransparency = 0.3
	smallBtn.Parent = screenGui

	-- 小方块拖拽逻辑 + 显示/隐藏主框
	do
		local dragging = false
		local dragInput
		local dragStart = Vector2.new()
		local startPos = UDim2.new()

		smallBtn.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
				dragging = true
				dragInput = input
				dragStart = input.Position
				startPos = smallBtn.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if dragging and input == dragInput then
				local delta = input.Position - dragStart
				smallBtn.Position = UDim2.new(
					startPos.X.Scale,
					startPos.X.Offset + delta.X,
					startPos.Y.Scale,
					startPos.Y.Offset + delta.Y
				)
			end
		end)

		-- 点击隐藏/显示主框
		smallBtn.MouseButton1Click:Connect(function()
			if frame.Visible then
				frame.Visible = false
				smallBtn.Text = "+"
			else
				frame.Visible = true
				smallBtn.Text = "-"
			end
		end)
	end

	-- =======================
	-- 状态与计数
	local statusLabel = Instance.new("TextLabel")
	statusLabel.Size = UDim2.new(0, 300, 0, 20)
	statusLabel.Position = UDim2.new(0, 10, 0, 10)
	statusLabel.BackgroundTransparency = 1
	statusLabel.Font = Enum.Font.SourceSans
	statusLabel.TextSize = 14
	statusLabel.TextColor3 = Color3.new(1,1,1)
	statusLabel.Text = "状态：未找到 RemoteEvent"
	statusLabel.Parent = frame

	local countLabel = Instance.new("TextLabel")
	countLabel.Size = UDim2.new(0, 100, 0, 20)
	countLabel.Position = UDim2.new(0, 300, 0, 160)
	countLabel.BackgroundTransparency = 1
	countLabel.Font = Enum.Font.SourceSans
	countLabel.TextSize = 14
	countLabel.TextColor3 = Color3.new(1,1,1)
	countLabel.Text = "发送: 0"
	countLabel.Parent = frame

	-- =======================
	-- 输入框
	local function createTextBox(default, y, placeholder)
		local box = Instance.new("TextBox")
		box.Size = UDim2.new(0, 80, 0, 25)
		box.Position = UDim2.new(0, 300, 0, y)
		box.Text = default
		box.PlaceholderText = placeholder
		box.Font = Enum.Font.SourceSans
		box.TextSize = 16
		box.ClearTextOnFocus = false
		box.Parent = frame
		return box
	end

	local loopBox = createTextBox("0", 40, "循环次数 0=无限")
	local intervalBox = createTextBox("0.05", 70, "间隔(s)")
	local payloadBox = createTextBox("", 100, "Payload 或 string.rep(...)")

	-- =======================
	-- 测试类型按钮
	local testType = nil
	local types = {"RemoteEvent","移动","攻击","自定义"}
	for i,typeName in ipairs(types) do
		local btn = Instance.new("TextButton")
		btn.Size = UDim2.new(0, 120, 0, 30)
		btn.Position = UDim2.new(0, 10, 0, 50 + (i-1)*35)
		btn.Text = typeName
		btn.Font = Enum.Font.SourceSans
		btn.TextSize = 16
		btn.Parent = frame
		btn.MouseButton1Click:Connect(function()
			testType = typeName
			statusLabel.Text = "状态：已选择 " .. testType
		end)
	end

	-- 开始/停止按钮
	local startStopBtn = Instance.new("TextButton")
	startStopBtn.Size = UDim2.new(0, 80, 0, 30)
	startStopBtn.Position = UDim2.new(0, 300, 0, 200)
	startStopBtn.Text = "开始"
	startStopBtn.Font = Enum.Font.SourceSans
	startStopBtn.TextSize = 16
	startStopBtn.Parent = frame

	-- 搜索 RemoteEvent 按钮
	local searchBtn = Instance.new("TextButton")
	searchBtn.Size = UDim2.new(0, 80, 0, 25)
	searchBtn.Position = UDim2.new(0, 300, 0, 130)
	searchBtn.Text = "搜索Remote"
	searchBtn.BackgroundColor3 = Color3.fromRGB(100,200,255)
	searchBtn.Font = Enum.Font.SourceSans
	searchBtn.TextSize = 14
	searchBtn.Parent = frame

	-- =======================
	-- RemoteEvent 搜索
	local remotes = {}
	local function huntRemotes()
		remotes = {}
		local places = {
			player:WaitForChild("PlayerGui"),
			game.Workspace,
			game:GetService("ReplicatedStorage")
		}
		for _,p in ipairs(places) do
			pcall(function()
				for _,c in ipairs(p:GetDescendants()) do
					if c:IsA("RemoteEvent") then
						table.insert(remotes,c)
					end
				end
			end)
		end
		if #remotes>0 then
			statusLabel.Text = "状态：找到 RemoteEvent "..#remotes.." 个"
		else
			statusLabel.Text = "状态：未找到 RemoteEvent"
		end
	end
	searchBtn.MouseButton1Click:Connect(huntRemotes)
	huntRemotes()

	-- =======================
	-- Payload 解析函数 + 默认大数据
	local function processPayload(text)
		if text == "" then
			return string.rep("A", 4096) -- 默认发送 4KB 数据
		end
		if text:match("^string%.rep%(") then
			local ok, result = pcall(loadstring("return "..text))
			if ok and result then return result end
		end
		if text:match("^{") or text:match("^%[") then
			local ok, result = pcall(loadstring("return "..text))
			if ok then return result end
		end
		return text
	end

	-- =======================
	-- 压测循环
	local running = false
	startStopBtn.MouseButton1Click:Connect(function()
		if not testType then
			statusLabel.Text = "状态：请选择测试类型"
			return
		end

		local interval = tonumber(intervalBox.Text)
		if not interval or interval <= 0 then
			statusLabel.Text = "状态：间隔不合法"
			return
		end

		local loops = tonumber(loopBox.Text) or 0
		local payload = processPayload(payloadBox.Text or "")

		running = not running
		startStopBtn.Text = running and "停止" or "开始"
		statusLabel.Text = running and ("状态：运行中 ("..testType..")") or "状态：已停止"

		if running then
			task.spawn(function()
				local count = 0
				while running and (loops==0 or count<loops) do
					if testType=="RemoteEvent" or testType=="自定义" then
						for _,r in ipairs(remotes) do
							pcall(function() r:FireServer(payload) end)
						end
					elseif testType=="移动" then
						local c = player.Character
						if c and c:FindFirstChild("HumanoidRootPart") then
							c.HumanoidRootPart.CFrame = c.HumanoidRootPart.CFrame * CFrame.new(math.random(-2,2),0,math.random(-2,2))
						end
					elseif testType=="攻击" then
						for _,r in ipairs(remotes) do
							pcall(function() r:FireServer("attack") end)
						end
					end
					count = count + 1
					countLabel.Text = "发送: "..count
					task.wait(interval)
				end
				running = false
				startStopBtn.Text = "开始"
				statusLabel.Text = "状态：已停止"
			end)
		end
	end)

	print("MultiTestTool_MaxLoad_v8 已加载，默认发送 4KB 数据，横屏 + 小方块独立拖动 + 开屏动画 + Payload完善 + 自动搜索 RemoteEvent + 发送计数")
end

-- =======================
-- 显示开屏，结束后加载主脚本
showSplash(loadMainScript)