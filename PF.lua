getgenv().InlineAlwaysOnTop = true
getgenv().InlineColor = Color3.fromRGB(190,190,190)
getgenv().OutlineColor = Color3.fromRGB(255, 0, 0)

local client = {}; do
   for i,v in pairs(getgc(true)) do
       if (type(v) == "table") then
           if rawget(v, "getbodyparts") then
               client.chartable = debug.getupvalue(v.getbodyparts, 1)
           end
       end
   end
end

game:GetService("RunService").RenderStepped:Connect(function()
   for i,v in pairs(game.Players:GetPlayers()) do
       if (v and client.chartable[v]) then
           local char = client.chartable[v]
           char.head.Parent.Name = v.Name
           v.Character = char.head.Parent
       end
   end
end)

local function ApplyCham()
   for i, v in pairs(game.Players:GetPlayers()) do
       if (v.Character ~= nil) then
           if (v.Character:FindFirstChild("HumanoidRootPart")) then
               if (v.Name ~= game.Players.LocalPlayer.Name and v.Team ~= game.Players.LocalPlayer.Team) then
                   if (not v.Character.Head:FindFirstChildOfClass("CylinderHandleAdornment" or "BoxHandleAdornment")) then
                       -- Head and Torso
                       local Head = v.Character["Head"]
                       local Torso = v.Character["Torso"]
                   
                       -- Arms
                       local LeftArm = v.Character["Left Arm"]
                       local RightArm = v.Character["Right Arm"]
                   
                       -- Legs
                       local LeftLeg = v.Character["Left Leg"]
                       local RightLeg = v.Character["Right Leg"]
                   
                       -- Head
                       local HeadInline = Instance.new("CylinderHandleAdornment", Head)
                       local HeadOutline = Instance.new("CylinderHandleAdornment", Head)
                   
                       -- Torso
                       local TorsoInline = Instance.new("BoxHandleAdornment", Torso)
                       local TorsoOutline = Instance.new("BoxHandleAdornment", Torso)
                   
                       -- Left Arm
                       local LeftArmInline = Instance.new("BoxHandleAdornment", LeftArm)
                       local LeftArmOutline = Instance.new("BoxHandleAdornment", LeftArm)

                       -- Right Arm
                       local RightArmInline = Instance.new("BoxHandleAdornment", RightArm)
                       local RightArmOutline = Instance.new("BoxHandleAdornment", RightArm)

                       -- Left Leg
                       local LeftLegInline = Instance.new("BoxHandleAdornment", LeftLeg)
                       local LeftLegOutline = Instance.new("BoxHandleAdornment", LeftLeg)

                       -- Right Leg
                       local RightLegInline = Instance.new("BoxHandleAdornment", RightLeg)
                       local RightLegOutline = Instance.new("BoxHandleAdornment", RightLeg)

                       -- Head
                       HeadInline.Name = "Cham Inline"
                       HeadInline.Color3 = getgenv().InlineColor
                       HeadInline.Radius = Head.Size.X / 2 + 0.15
                       HeadInline.Height = Head.Size.Y + 0.3
                       HeadInline.CFrame = CFrame.new(Vector3.new(), Vector3.new(0,1,0))
                       HeadInline.Adornee = Head
                       HeadInline.Transparency = 0.75
                       HeadInline.ZIndex = 2
                       HeadInline.AlwaysOnTop = getgenv().InlineAlwaysOnTop
               
                       HeadOutline.Name = "Cham Outline"
                       HeadOutline.Color3 = getgenv().OutlineColor
                       HeadOutline.Radius = Head.Size.X / 2 + 0.2
                       HeadOutline.Height = Head.Size.Y + 0.35
                       HeadOutline.Transparency = 0.55
                       HeadOutline.CFrame = CFrame.new(Vector3.new(), Vector3.new(0,1,0))
                       HeadOutline.Adornee = Head
                       HeadOutline.ZIndex = 2
               
                       -- Torso
                       TorsoInline.Name = "Cham Inline"
                       TorsoInline.Color3 = getgenv().InlineColor
                       TorsoInline.Size = Torso.Size + Vector3.new(0.05, 0.05, 0.05)
                       TorsoInline.Transparency = 0.75
                       TorsoInline.Adornee = Torso
                       TorsoInline.ZIndex = 2
                       TorsoInline.AlwaysOnTop = getgenv().InlineAlwaysOnTop
               
                       TorsoOutline.Name = "Cham Outline"
                       TorsoOutline.Color3 = getgenv().OutlineColor
                       TorsoOutline.Size = Torso.Size + Vector3.new(0.1, 0.1, 0.1)
                       TorsoOutline.Transparency = 0.55
                       TorsoOutline.Adornee = Torso
                       TorsoOutline.ZIndex = 2
               
                       -- Left Arm
                       LeftArmInline.Name = "Cham Inline"
                       LeftArmInline.Color3 = getgenv().InlineColor
                       LeftArmInline.Size = LeftArm.Size + Vector3.new(0.05, 0.05, 0.05)
                       LeftArmInline.Transparency = 0.75
                       LeftArmInline.Adornee = LeftArm
                       LeftArmInline.ZIndex = 2
                       LeftArmInline.AlwaysOnTop = getgenv().InlineAlwaysOnTop
               
                       LeftArmOutline.Name = "Cham Outline"
                       LeftArmOutline.Color3 = getgenv().OutlineColor
                       LeftArmOutline.Size = LeftArm.Size + Vector3.new(0.1, 0.1, 0.1)
                       LeftArmOutline.Transparency = 0.55
                       LeftArmOutline.Adornee = LeftArm
                       LeftArmOutline.ZIndex = 2

                       -- Right Arm
                       RightArmInline.Name = "Cham Inline"
                       RightArmInline.Color3 = getgenv().InlineColor
                       RightArmInline.Size = RightArm.Size + Vector3.new(0.05, 0.05, 0.05)
                       RightArmInline.Transparency = 0.75
                       RightArmInline.Adornee = RightArm
                       RightArmInline.ZIndex = 2
                       RightArmInline.AlwaysOnTop = getgenv().InlineAlwaysOnTop

                       RightArmOutline.Name = "Cham Outline"
                       RightArmOutline.Color3 = getgenv().OutlineColor
                       RightArmOutline.Size = RightArm.Size + Vector3.new(0.1, 0.1, 0.1)
                       RightArmOutline.Transparency = 0.55
                       RightArmOutline.Adornee = RightArm
                       RightArmOutline.ZIndex = 2

                       -- Left Leg
                       LeftLegInline.Name = "Cham Inline"
                       LeftLegInline.Color3 = getgenv().InlineColor
                       LeftLegInline.Size = LeftLeg.Size + Vector3.new(0.05, 0.05, 0.05)
                       LeftLegInline.Transparency = 0.75
                       LeftLegInline.Adornee = LeftLeg
                       LeftLegInline.ZIndex = 2
                       LeftLegInline.AlwaysOnTop = getgenv().InlineAlwaysOnTop

                       LeftLegOutline.Name = "Cham Outline"
                       LeftLegOutline.Color3 = getgenv().OutlineColor
                       LeftLegOutline.Size = LeftLeg.Size + Vector3.new(0.1, 0.1, 0.1)
                       LeftLegOutline.Transparency = 0.55
                       LeftLegOutline.Adornee = LeftLeg
                       LeftLegOutline.ZIndex = 2

                       -- Right Leg
                       RightLegInline.Name = "Cham Inline"
                       RightLegInline.Color3 = getgenv().InlineColor
                       RightLegInline.Size = RightLeg.Size + Vector3.new(0.05, 0.05, 0.05)
                       RightLegInline.Transparency = 0.75
                       RightLegInline.Adornee = RightLeg
                       RightLegInline.ZIndex = 2
                       RightLegInline.AlwaysOnTop = getgenv().InlineAlwaysOnTop

                       RightLegOutline.Name = "Cham Outline"
                       RightLegOutline.Color3 = getgenv().OutlineColor
                       RightLegOutline.Size = RightLeg.Size + Vector3.new(0.1, 0.1, 0.1)
                       RightLegOutline.Transparency = 0.55
                       RightLegOutline.Adornee = RightLeg
                       RightLegOutline.ZIndex = 2
                       
                       if (v.Character.Head ~= nil) then
                           v.Character.Head.HELMET:Destroy()
                       end
                   end
               end
           end
       end
   end
end
   
workspace.Players.Ghosts.ChildAdded:Connect(function(Player)
   if (tostring(game.Players.LocalPlayer.Team) == "Phantoms") then
       repeat wait() until Player and Player:FindFirstChild("HumanoidRootPart")
       ApplyCham()
   end
end)

workspace.Players.Phantoms.ChildAdded:Connect(function(Player)
   if (tostring(game.Players.LocalPlayer.Team) == "Ghosts") then
       repeat wait() until Player and Player:FindFirstChild("HumanoidRootPart")
       ApplyCham()
   end
end)

ApplyCham()
