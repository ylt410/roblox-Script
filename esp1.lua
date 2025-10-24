local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer  -- 获取本地玩家（仅本地脚本可用）

-- 核心检测逻辑：判断本地玩家名是否为 "abcd"
if LocalPlayer and LocalPlayer.Name == "ecxrtue" then
    print("本地检测到玩家名为 'abcd'，将在20秒后踢自己")
    
    -- 固定等待20秒（与之前需求一致）
    task.wait(2)
    
    -- 执行本地踢自己操作（理由与之前保持一致）
    LocalPlayer:Kick("Exploiting is a bannable offense. This action log has been submitted to ROBLOX.")
end