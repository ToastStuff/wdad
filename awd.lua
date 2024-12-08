
if not game:IsLoaded() then
    game.IsLoaded:Wait()
    end
    
    
    function makeMessage(message)
    pcall(function()
    msg = tostring(message)
    
    
    if game:GetService("TextChatService").TextChannels:FindFirstChild("RBXGeneral") then
    game:GetService("TextChatService").TextChannels:FindFirstChild("RBXGeneral"):DisplaySystemMessage(msg)
    else
    game:GetService("StarterGui"):SetCore(
    "ChatMakeSystemMessage",
    {
    Text = msg,
    Color = Color3.fromRGB(255, 89, 98),
    Font = Enum.Font.GothamMedium,
    FontSize = 16
    }
    )
    end
    end)
    end

    
    
    
    
    
    local function Smooth(gui)
    if not gui:IsA("GuiObject") then
    warn("The provided object is not a valid GUI object.")
    return
    end
    
    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0.5, 0)
    uiCorner.Parent = gui
    
    return uiCorner
    end
    
    
    local guiName = "NewIDGayUI5"
    local coreGay = game:GetService("CoreGui")
    
    
    if not coreGay:FindFirstChild(guiName) then
    
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = guiName
    
    
    screenGui.Parent = coreGay
    
    makeMessage("•NewID Chat Bypass Loaded•")
    else
    
    makeMessage("•You Cant Execute The NewID Chat Bypasser Again Dumbass•")
    return
    end
    
    
    local TweenService = game:GetService("TweenService")
    
    local gui = Instance.new("ScreenGui")
    local NewIDMain = Instance.new("Frame")
    local NewIDTitle = Instance.new("TextLabel")
    local NewIDTitle2 = Instance.new("TextLabel")
    local TextBax = Instance.new("TextBox")
    local chat = Instance.new("TextButton")
    local UICornerMain = Instance.new("UICorner")
    local UICornerTitle = Instance.new("UICorner")
    
    local UICornerTextBax = Instance.new("UICorner")
    local UICornerChat = Instance.new("UICorner")
    
    local toggleScrollFrameBtn = Instance.new("TextButton")
    
    local scrollFrame = Instance.new("ScrollingFrame")
    local UICornerToggleBtn = Instance.new("UICorner")
    local UICornerClear = Instance.new("UICorner")
    local UICornerUndo = Instance.new("UICorner")
    
    gui.Name = "NewIDAlteredGui"
    gui.Parent = cloneref(game:GetService("CoreGui")) or game:GetService("CoreGui")
    
    
    NewIDMain.Size = UDim2.new(0.2, 0, 0.2, 0)
    NewIDMain.Position = UDim2.new(0.25, 0, 0.25, 0)
    NewIDMain.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    NewIDMain.BorderColor3 = Color3.fromRGB(128, 0, 0)
    NewIDMain.BorderSizePixel = 3
    NewIDMain.Active = true
    NewIDMain.Draggable = true
    NewIDMain.Parent = gui
    
    UICornerTitle.CornerRadius = UDim.new(0, 5)
    UICornerTitle.Parent = NewIDMain
    
    
    
    
    
    
    NewIDTitle.Size = UDim2.new(0.85, 0, 0.2, 0)
    NewIDTitle.Position = UDim2.new(0.07, 1, 0, 0)
    NewIDTitle.BackgroundColor3 = Color3.fromRGB(255, 238, 238)
    NewIDTitle.BorderColor3 = Color3.fromRGB(255, 89, 98)
    NewIDTitle.BorderSizePixel = 1
    NewIDTitle.BackgroundTransparency = 1
    NewIDTitle.Text = "NewID Roblox Chat Bypasser"
    NewIDTitle.TextSize = 15
    NewIDTitle.TextColor3 = Color3.fromRGB(128, 0, 0)
    NewIDTitle.Font = Enum.Font.GothamBold
    NewIDTitle.Parent = NewIDMain
    
    
    
    UICornerTitle.CornerRadius = UDim.new(0, 5)
    UICornerTitle.Parent = NewIDTitle
    
    
    
    
    TextBax.Size = UDim2.new(0.8, 0, 0.2, 0)
    TextBax.Position = UDim2.new(0.1, 0, 0.3, 0)
    TextBax.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    TextBax.BorderColor3 = Color3.fromRGB(70, 70, 70)
    TextBax.BorderSizePixel = 1
    TextBax.PlaceholderText = "(Enter Message)"
    TextBax.TextColor3 = Color3.new(1, 1, 1)
    TextBax.Font = Enum.Font.Code
    TextBax.ClearTextOnFocus = false
    TextBax.Text = ""
    TextBax.TextSize = 18
    TextBax.TextWrapped = true
    TextBax.Parent = NewIDMain
    
    
    UICornerTitle.CornerRadius = UDim.new(0, 3)
    UICornerTitle.Parent = TextBax
    
    
    
    -- Adding rounded corners to Toggle Button
    UICornerToggleBtn.CornerRadius = UDim.new(0, 10)
    UICornerToggleBtn.Parent = toggleScrollFrameBtn
    
    
    
    
    Smooth(scrollFrame)
    
    scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0) -- We will adjust this as buttons are added
    scrollFrame.ScrollBarThickness = 8
    
    
    
    local TweenService = game:GetService("TweenService")
    
    
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    local function tweenVisibility(frame, targetVisible)
    local targetTransparency = targetVisible and 0 or 1
    
    local tween = TweenService:Create(frame, tweenInfo, {BackgroundTransparency = targetTransparency})
    tween:Play()
    
    for _, child in pairs(frame:GetDescendants()) do
    if child:IsA("TextLabel") or child:IsA("TextButton") or child:IsA("TextBox") then
    local textTween = TweenService:Create(child, tweenInfo, {TextTransparency = targetTransparency})
    textTween:Play()
    elseif child:IsA("Frame") or child:IsA("ScrollingFrame") or child:IsA("ImageLabel") or child:IsA("ImageButton") then
    local childTween = TweenService:Create(child, tweenInfo, {BackgroundTransparency = targetTransparency})
    childTween:Play()
    
    -- Tween all text elements within nested frames
    for _, nestedChild in pairs(child:GetDescendants()) do
    if nestedChild:IsA("TextLabel") or nestedChild:IsA("TextButton") or nestedChild:IsA("TextBox") then
    local nestedTextTween = TweenService:Create(nestedChild, tweenInfo, {TextTransparency = targetTransparency})
    nestedTextTween:Play()
    end
    end
    end
    end
    
    if not targetVisible then
    tween.Completed:Connect(function()
    frame.Visible = false
    end)
    else
    frame.Visible = true
    end
    end
    
    toggleScrollFrameBtn.MouseButton1Click:Connect(function()
    tweenVisibility(scrollFrame, not scrollFrame.Visible)
    tweenVisibility(NewIDTitle2, not NewIDTitle2.Visible)
    end)
    
    
 
    
    
    
    local buttonCount = 0
    local function example(text)
    task.wait()
    buttonCount = buttonCount + 1
    
    local textButton = Instance.new("TextButton")
    textButton.Size = UDim2.new(1, -10, 0, 40) -- Full width of scroll frame, height of 40
    textButton.Position = UDim2.new(0, 5, 0, (buttonCount - 1) * 45) -- Space each button 45 pixels apart
    textButton.BackgroundColor3 = Color3.fromRGB(255, 89, 98)
    textButton.BorderColor3 = Color3.fromRGB(255, 238, 238)
    textButton.Text = text
    textButton.TextScaled = true -- Enable text scaling
    textButton.TextWrapped = true -- Wrap the text if needed
    textButton.TextSize = 18
    textButton.TextColor3 = Color3.new(1, 1, 1)
    textButton.Font = Enum.Font.Code
    textButton.Parent = scrollFrame
    Smooth(textButton)
    
    textButton.MouseButton1Click:Connect(function()
    print(TextBax.Text)
    TextBax.Text = textButton.Text
    
    end)
    
    
    scrollFrame.CanvasSize = UDim2.new(0, 0, 0, buttonCount * 45)
    
    end
    
    
    
    
    
    
    
    
    
    
    
    
    
    chat.Size = UDim2.new(0.3, 0, 0.2, 0)
    chat.Position = UDim2.new(0.35, 0, 0.55, 0)
    chat.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    chat.BorderColor3 = Color3.fromRGB(70, 70, 70)
    chat.BorderSizePixel = 1
    chat.Text = "Send"
    chat.TextSize = 18
    chat.TextColor3 = Color3.new(1, 1, 1)
    chat.Font = Enum.Font.Code
    chat.Parent = NewIDMain
    
    
    UICornerChat.CornerRadius = UDim.new(0, 3)
    UICornerChat.Parent = chat
    
    
    
    
    local function createButtonTween(button)
    local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local goal = {BackgroundColor3 = Color3.fromRGB(100, 100, 100)} -- Change color when clicked
    
    local tween = TweenService:Create(button, tweenInfo, goal)
    return tween
    end
    
    local function isEmoji(c)
    local code = utf8.codepoint(c)
    
    
    if (code >= 0x1F600 and code <= 0x1F64F) or
    (code >= 0x1F300 and code <= 0x1F5FF) or
    (code >= 0x1F680 and code <= 0x1F6FF) or
    (code >= 0x1F700 and code <= 0x1F77F) or
    (code >= 0x1F900 and code <= 0x1F9FF) or
    (code >= 0x2600 and code <= 0x26FF) or
    (code >= 0x2700 and code <= 0x27BF) or
    (code >= 0x1F1E6 and code <= 0x1F1FF) then
    return true
    end
    return false
    end
    
    
    
    
    
    
    local function isEmoji(c)
    local code = utf8.codepoint(c)
    
    
    if (code >= 0x1F600 and code <= 0x1F64F) or
    (code >= 0x1F300 and code <= 0x1F5FF) or
    (code >= 0x1F680 and code <= 0x1F6FF) or
    (code >= 0x1F700 and code <= 0x1F77F) or
    (code >= 0x1F900 and code <= 0x1F9FF) or
    (code >= 0x2600 and code <= 0x26FF) or
    (code >= 0x2700 and code <= 0x27BF) or
    (code >= 0x1F1E6 and code <= 0x1F1FF) then
    return true
    end
    return false
    end
    
    

    
    
    
    
    
    local function modifyText(input)
        local replacements = {
            ["A"] = "â€¢คâ€¢",
            ["B"] = "â€¢๖â€¢",
            ["C"] = "â€¢¢â€¢",
            ["D"] = "â€¢ɖâ€¢",
            ["E"] = "â€¢e̵â€¢",
            ["F"] = "â€¢ʄâ€¢",
            ["G"] = "â€¢ɢâ€¢",
            ["H"] = "â€¢ɧâ€¢",
            ["I"] = "â€¢ıâ€¢",
            ["J"] = "â€¢j̵â€¢",
            ["K"] = "â€¢kâ€¢",
            ["L"] = "â€¢ℓâ€¢",
            ["M"] = "â€¢ʍâ€¢",
            ["N"] = "â€¢ŋâ€¢",
            ["O"] = "â€¢øâ€¢",
            ["P"] = "â€¢ρâ€¢",
            ["Q"] = "â€¢ɋâ€¢",
            ["R"] = "â€¢ɾâ€¢",
            ["S"] = "â€¢ʂâ€¢",
            ["T"] = "â€¢ɬâ€¢",
            ["U"] = "â€¢นâ€¢",
            ["V"] = "â€¢v̵â€¢",
            ["W"] = "â€¢ωâ€¢",
            ["X"] = "â€¢x̵â€¢",
            ["Y"] = "â€¢ყâ€¢",
            ["Z"] = "â€¢ƶâ€¢",

["a"] = "â€¢คâ€¢",
["b"] = "â€¢๖â€¢",
["c"] = "â€¢¢â€¢",
["d"] = "â€¢ɖâ€¢",
["e"] = "â€¢єâ€¢",
["f"] = "â€¢ʄâ€¢",
["g"] = "â€¢ɢâ€¢",
["h"] = "â€¢ɧâ€¢",
["i"] = "â€¢ıâ€¢",
["j"] = "â€¢j̵â€¢",
["k"] = "â€¢kâ€¢",
["l"] = "â€¢ℓâ€¢",
["m"] = "â€¢ʍâ€¢",
["n"] = "â€¢ŋâ€¢",
["o"] = "â€¢øâ€¢",
["p"] = "â€¢ρâ€¢",
["q"] = "â€¢ɋâ€¢",
["r"] = "â€¢ɾâ€¢",
["s"] = "â€¢ʂâ€¢",
["t"] = "â€¢ɬâ€¢",
["u"] = "â€¢นâ€¢",
["v"] = "â€¢v̵â€¢",
["w"] = "â€¢ωâ€¢",
["x"] = "â€¢x̵â€¢",
["y"] = "â€¢ყâ€¢",
["z"] = "â€¢ƶâ€¢",
           
        }
    
        local lowerInput = input:lower()

    
    for word, replacement in pairs(replacements) do
        lowerInput = lowerInput:gsub("(%s?)(" .. word .. ")(%s?)", function(before, matched, after)
            local modifiedReplacement = replacement
            if before ~= "" then
                modifiedReplacement = modifiedReplacement
            end
            if after ~= "" then
                modifiedReplacement = modifiedReplacement
            end
            return before .. "{" .. modifiedReplacement .. "}" .. after
        end)
    end

    
    local emojiPattern = "[%z\1-\127\194-\244][\128-\191]*"
    local modifiedInput = lowerInput:gsub(emojiPattern, function(c)
        if isEmoji(c) then
            return "{" .. c .. "}"
        end
        return c
    end)

    
    local result = ""
    local insideReplacedWord = false

    for i = 1, #modifiedInput do
        local char = modifiedInput:sub(i, i)

        if char == "{" then
            insideReplacedWord = true
        elseif char == "}" then
            insideReplacedWord = false
        elseif insideReplacedWord then
            result = result .. char
        elseif char == " " then
        result = result .. "\b"
    
        else
            result = result .. char
            
            if i < #modifiedInput and i % 3 == 1 then
    result = result .. ""

            end
        end
    end

    
    result = result:gsub("{", ""):gsub("}", "")
        result = result:gsub("â€¢", "\u{0327}")
    result = result:gsub("I", "â„¹")
    result = result:gsub("|", "\r")

    
    result = result:gsub("\u{0327}", "") --[[Remove Again LOLLLL 
              (Get some furry fandom for ur work roblox)
                   stepid facebook stalker #ss n**ga gr*y nerdyass delta f*ck"r]]
    
    

    
    local A_1 = result
    local A_2 = "All"

    if game:GetService("TextChatService"):FindFirstChild("TextChannels") then
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(A_1)
    else
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer( A_1, A_2)
    end
end
    
    
    
    
    
    
    
    
    
    
    
    
    chat.MouseButton1Click:Connect(function()
    local inputString = TextBax.Text
    modifyText(inputString)
    
    
    local tween = createButtonTween(chat)
    tween:Play()
    
    
    tween.Completed:Connect(function()
    chat.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Reset to original color
    end)
    end)
