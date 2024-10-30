local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/jfjfjfjvg/UIRNGNB/refs/heads/main/UI2.lua"))()

local Window = redzlib:MakeWindow({
  Title = "RNG田地",
  Subtitle = "RNG岩",
  SaveFolder = "Redz Config"
})

local Tab1 = Window:MakeTab({"主要", "cherry"})
local Section = Tab1:AddSection({"人物属性"})
Tab1:AddSlider({
  Name = "速度",
  Min = 0,
  Max = 34,
  Increase = 1,
  Default = 16,
  Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
  end
})
Tab1:AddSlider({
  Name = "跳跃",
  Min = 0,
  Max = 500,
  Increase = 1,
  Default = 50,
  Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
  end
})
Tab1:AddSlider({
  Name = "重力",
  Min = 0,
  Max = 1000,
  Increase = 1,
  Default = 199.7,
  Callback = function(Value)
    game.Workspace.Gravity = Value
  end
})
Tab1:AddSlider({
  Name = "视野",
  Min = 1,
  Max = 120,
  Increase = 1,
  Default = 70,
  Callback = function(Value)
    workspace.CurrentCamera.FieldOfView = Value
  end
})
local Section = Tab1:AddSection({"画面"})
local Toggle1 = Tab1:AddToggle({
  Name = "夜视",
  Default = false,
  Callback = function(Value)
    if Value then
      game.Lighting.Ambient = Color3.new(1, 1, 1)
      game.Lighting.ColorShift_Bottom = Color3.new(1, 1, 1)
      game.Lighting.ColorShift_Top = Color3.new(1, 1, 1)
    else
      game.Lighting.Ambient = Color3.new(0, 0, 0)
      game.Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
      game.Lighting.ColorShift_Top = Color3.new(0, 0, 0)
    end
  end
})

local Section = Tab1:AddSection({"传送"})
Tab1:AddButton({"收音机装置楼顶", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-52, 30, -200)
end})
Tab1:AddButton({"收音机装置楼下", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-66, 6, -204)
end})
Tab1:AddButton({"基地", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-70, 5, -0)
end})
Tab1:AddButton({"超市", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(166, 5, -268)
end})
Tab1:AddButton({"未被摧毁的房屋", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-232, 8, -266)
end})
Tab1:AddButton({"被摧毁的房屋", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-231, 5, 281)
end})
Tab1:AddButton({"谷仓楼上", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-110, 29, 220)
end})
Tab1:AddButton({"谷仓楼下", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-86, 6, 260)
end})
Tab1:AddButton({"安全保护", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(232, 6, -93)
end})
Tab1:AddButton({"垃圾场最肥的地方", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(179, 9, 96)
end})
local Section = Tab1:AddSection({"你都忍心看到这个了"})
local Section = Tab1:AddSection({"真正的主要"})
local Toggle1 = Tab1:AddToggle({
  Name = "无视队友闪光灯不知道能不能关闭",
  Default = false,
  Callback = function(Value)
    if Value then
    while( true )
do
  task.wait(0)
      game.Players.LocalPlayer.Character.Values.Blinded.Value = false
 end
    else
      game.Players.LocalPlayer.Character.Values.Blinded.Value = false
    end
  end
})
local Toggle1 = Tab1:AddToggle({
  Name = "自由控制闪后状态/未闪后状态",
  Default = false,
  Callback = function(Value)
    if Value then
      game.Players.LocalPlayer.Character.Values.Blinded.Value = true
    else
      game.Players.LocalPlayer.Character.Values.Blinded.Value = false
    end
  end
})
