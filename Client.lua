if game.CoreGui:FindFirstChild("LoginUI") then
	game.CoreGui:FindFirstChild("LoginUI"):Destroy()
end

-- Luazifier v0.1
-- Settings: Mode > Table | Custom Name > true | Security > Off

-- Setup:
LG = {} 
setmetatable(LG, {__metatable = "Don' t touch my table P-Pervert!"})

-- Instances:
LG.ScreenGui1 = Instance.new("ScreenGui", game.CoreGui)
LG.ImageLabel1 = Instance.new("ImageLabel", LG.ScreenGui1)
LG.ImageLabel2 = Instance.new("ImageLabel", LG.ImageLabel1)
LG.Frame1 = Instance.new("Frame", LG.ImageLabel2)
LG.TextLabel1 = Instance.new("TextLabel", LG.ImageLabel2)
LG.ImageLabel3 = Instance.new("ImageLabel", LG.ImageLabel1)
LG.ImageLabel4 = Instance.new("ImageLabel", LG.ImageLabel3)
LG.ImageLabel5 = Instance.new("ImageLabel", LG.ImageLabel4)
LG.TextBox1 = Instance.new("TextBox", LG.ImageLabel3)
LG.TextLabel2 = Instance.new("TextLabel", LG.ImageLabel1)
LG.ImageButton1 = Instance.new("ImageButton", LG.ImageLabel1)
LG.TextLabel3 = Instance.new("TextLabel", LG.ImageButton1)

-- Properties:
LG.ScreenGui1.DisplayOrder = 0
LG.ScreenGui1.Enabled = true
LG.ScreenGui1.IgnoreGuiInset = false
LG.ScreenGui1.Name = "LoginUI"
LG.ScreenGui1.ResetOnSpawn = true
LG.ScreenGui1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LG.ScreenGui1.Archivable = true
LG.ScreenGui1.AutoLocalize = true


LG.ImageLabel1.Active = false
LG.ImageLabel1.AnchorPoint = Vector2.new(0.5, 0.5)
LG.ImageLabel1.BackgroundColor3 = Color3.new(0.160784, 0.160784, 0.188235)
LG.ImageLabel1.BackgroundTransparency = 1
LG.ImageLabel1.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
LG.ImageLabel1.BorderSizePixel = 0
LG.ImageLabel1.LayoutOrder = 0
LG.ImageLabel1.Name = "Main"
LG.ImageLabel1.Position = UDim2.new(0.5, 0, 0.5, 0)
LG.ImageLabel1.Rotation = 0
LG.ImageLabel1.Selectable = false
LG.ImageLabel1.Size = UDim2.new(0, 300, 0, 200)
LG.ImageLabel1.SizeConstraint = Enum.SizeConstraint.RelativeXY
LG.ImageLabel1.Visible = true
LG.ImageLabel1.ZIndex = 1
LG.ImageLabel1.Archivable = true
LG.ImageLabel1.ClipsDescendants = true
LG.ImageLabel1.AutoLocalize = true
LG.ImageLabel1.Image = "rbxassetid://2790390993"
LG.ImageLabel1.ImageColor3 = Color3.new(0.160784, 0.160784, 0.188235)
LG.ImageLabel1.ImageRectOffset = Vector2.new(0, 0)
LG.ImageLabel1.ImageRectSize = Vector2.new(0, 0)
LG.ImageLabel1.ImageTransparency = 0
LG.ImageLabel1.ScaleType = Enum.ScaleType.Slice
LG.ImageLabel1.SliceCenter  = Rect.new(16, 16, 240, 240)
LG.ImageLabel1.SliceScale = 1


LG.ImageLabel2.Active = false
LG.ImageLabel2.AnchorPoint = Vector2.new(0, 0)
LG.ImageLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
LG.ImageLabel2.BackgroundTransparency = 1
LG.ImageLabel2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
LG.ImageLabel2.BorderSizePixel = 1
LG.ImageLabel2.LayoutOrder = 0
LG.ImageLabel2.Name = "Topbar"
LG.ImageLabel2.Position = UDim2.new(0, 0, 0, 0)
LG.ImageLabel2.Rotation = 0
LG.ImageLabel2.Selectable = false
LG.ImageLabel2.Size = UDim2.new(0, 300, 0, 40)
LG.ImageLabel2.SizeConstraint = Enum.SizeConstraint.RelativeXY
LG.ImageLabel2.Visible = true
LG.ImageLabel2.ZIndex = 2
LG.ImageLabel2.Archivable = true
LG.ImageLabel2.ClipsDescendants = true
LG.ImageLabel2.AutoLocalize = true
LG.ImageLabel2.Image = "rbxassetid://2790390993"
LG.ImageLabel2.ImageColor3 = Color3.new(0.898039, 0.419608, 0.121569)
LG.ImageLabel2.ImageRectOffset = Vector2.new(0, 0)
LG.ImageLabel2.ImageRectSize = Vector2.new(0, 0)
LG.ImageLabel2.ImageTransparency = 0
LG.ImageLabel2.ScaleType = Enum.ScaleType.Slice
LG.ImageLabel2.SliceCenter  = Rect.new(16, 16, 240, 240)
LG.ImageLabel2.SliceScale = 1


LG.Frame1.Active = false
LG.Frame1.AnchorPoint = Vector2.new(0, 0)
LG.Frame1.BackgroundColor3 = Color3.new(0.898039, 0.419608, 0.121569)
LG.Frame1.BackgroundTransparency = 0
LG.Frame1.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
LG.Frame1.BorderSizePixel = 0
LG.Frame1.LayoutOrder = 0
LG.Frame1.Name = "IgnoreBottomBar"
LG.Frame1.Position = UDim2.new(0, 0, 0.51111114025116, 0)
LG.Frame1.Rotation = 0
LG.Frame1.Selectable = false
LG.Frame1.Size = UDim2.new(0, 300, 0, 22)
LG.Frame1.SizeConstraint = Enum.SizeConstraint.RelativeXY
LG.Frame1.Style = Enum.FrameStyle.Custom
LG.Frame1.Visible = true
LG.Frame1.ZIndex = 0
LG.Frame1.Archivable = true
LG.Frame1.ClipsDescendants = false
LG.Frame1.AutoLocalize = true


LG.TextLabel1.Active = false
LG.TextLabel1.AnchorPoint = Vector2.new(0, 0)
LG.TextLabel1.BackgroundColor3 = Color3.new(1, 1, 1)
LG.TextLabel1.BackgroundTransparency = 1
LG.TextLabel1.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
LG.TextLabel1.BorderSizePixel = 1
LG.TextLabel1.LayoutOrder = 0
LG.TextLabel1.Name = "TopLabel"
LG.TextLabel1.Position = UDim2.new(0.43333333730698, 0, 0.25, 0)
LG.TextLabel1.Rotation = 0
LG.TextLabel1.Selectable = false
LG.TextLabel1.Size = UDim2.new(0, 40, 0, 20)
LG.TextLabel1.SizeConstraint = Enum.SizeConstraint.RelativeXY
LG.TextLabel1.Visible = true
LG.TextLabel1.ZIndex = 0
LG.TextLabel1.Archivable = true
LG.TextLabel1.ClipsDescendants = false
LG.TextLabel1.AutoLocalize = true
LG.TextLabel1.Font = Enum.Font.Highway
LG.TextLabel1.Text = "LostX"
LG.TextLabel1.TextColor3 = Color3.new(1, 1, 1)
LG.TextLabel1.TextScaled = false
LG.TextLabel1.TextSize = 30
LG.TextLabel1.TextStrokeColor3 = Color3.new(0, 0, 0)
LG.TextLabel1.TextStrokeTransparency = 1
LG.TextLabel1.TextTransparency = 0
LG.TextLabel1.TextTruncate = Enum.TextTruncate.None
LG.TextLabel1.TextWrapped = false
LG.TextLabel1.TextXAlignment = Enum.TextXAlignment.Center
LG.TextLabel1.TextYAlignment = Enum.TextYAlignment.Center


LG.ImageLabel3.Active = false
LG.ImageLabel3.AnchorPoint = Vector2.new(0, 0)
LG.ImageLabel3.BackgroundColor3 = Color3.new(0.898039, 0.419608, 0.121569)
LG.ImageLabel3.BackgroundTransparency = 1
LG.ImageLabel3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
LG.ImageLabel3.BorderSizePixel = 1
LG.ImageLabel3.LayoutOrder = 0
LG.ImageLabel3.Name = "InputFrame"
LG.ImageLabel3.Position = UDim2.new(0.23333334922791, 0, 0.42499998211861, 0)
LG.ImageLabel3.Rotation = 0
LG.ImageLabel3.Selectable = false
LG.ImageLabel3.Size = UDim2.new(0, 160, 0, 30)
LG.ImageLabel3.SizeConstraint = Enum.SizeConstraint.RelativeXY
LG.ImageLabel3.Visible = true
LG.ImageLabel3.ZIndex = 2
LG.ImageLabel3.Archivable = true
LG.ImageLabel3.ClipsDescendants = true
LG.ImageLabel3.AutoLocalize = true
LG.ImageLabel3.Image = "rbxassetid://2790390993"
LG.ImageLabel3.ImageColor3 = Color3.new(0.898039, 0.419608, 0.121569)
LG.ImageLabel3.ImageRectOffset = Vector2.new(0, 0)
LG.ImageLabel3.ImageRectSize = Vector2.new(0, 0)
LG.ImageLabel3.ImageTransparency = 0
LG.ImageLabel3.ScaleType = Enum.ScaleType.Slice
LG.ImageLabel3.SliceCenter  = Rect.new(16, 16, 240, 240)
LG.ImageLabel3.SliceScale = 1


LG.ImageLabel4.Active = false
LG.ImageLabel4.AnchorPoint = Vector2.new(0, 0)
LG.ImageLabel4.BackgroundColor3 = Color3.new(1, 0.466667, 0.133333)
LG.ImageLabel4.BackgroundTransparency = 1
LG.ImageLabel4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
LG.ImageLabel4.BorderSizePixel = 1
LG.ImageLabel4.LayoutOrder = 0
LG.ImageLabel4.Name = "KeyFrame"
LG.ImageLabel4.Position = UDim2.new(0, 0, 0, 0)
LG.ImageLabel4.Rotation = 0
LG.ImageLabel4.Selectable = false
LG.ImageLabel4.Size = UDim2.new(0, 30, 0, 30)
LG.ImageLabel4.SizeConstraint = Enum.SizeConstraint.RelativeXY
LG.ImageLabel4.Visible = true
LG.ImageLabel4.ZIndex = 2
LG.ImageLabel4.Archivable = true
LG.ImageLabel4.ClipsDescendants = false
LG.ImageLabel4.AutoLocalize = true
LG.ImageLabel4.Image = "rbxassetid://2790390993"
LG.ImageLabel4.ImageColor3 = Color3.new(0.898039, 0.419608, 0.121569)
LG.ImageLabel4.ImageRectOffset = Vector2.new(0, 0)
LG.ImageLabel4.ImageRectSize = Vector2.new(0, 0)
LG.ImageLabel4.ImageTransparency = 0
LG.ImageLabel4.ScaleType = Enum.ScaleType.Slice
LG.ImageLabel4.SliceCenter  = Rect.new(16, 16, 240, 240)
LG.ImageLabel4.SliceScale = 1


LG.ImageLabel5.Active = false
LG.ImageLabel5.AnchorPoint = Vector2.new(0, 0)
LG.ImageLabel5.BackgroundColor3 = Color3.new(1, 1, 1)
LG.ImageLabel5.BackgroundTransparency = 1
LG.ImageLabel5.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
LG.ImageLabel5.BorderSizePixel = 1
LG.ImageLabel5.LayoutOrder = 0
LG.ImageLabel5.Name = "KeyLabel"
LG.ImageLabel5.Position = UDim2.new(0.16666667163372, 0, 0.16666667163372, 0)
LG.ImageLabel5.Rotation = 0
LG.ImageLabel5.Selectable = false
LG.ImageLabel5.Size = UDim2.new(0, 20, 0, 20)
LG.ImageLabel5.SizeConstraint = Enum.SizeConstraint.RelativeXY
LG.ImageLabel5.Visible = true
LG.ImageLabel5.ZIndex = 3
LG.ImageLabel5.Archivable = true
LG.ImageLabel5.ClipsDescendants = false
LG.ImageLabel5.AutoLocalize = true
LG.ImageLabel5.Image = "http://www.roblox.com/asset/?id=1391250210"
LG.ImageLabel5.ImageColor3 = Color3.new(1, 1, 1)
LG.ImageLabel5.ImageRectOffset = Vector2.new(0, 0)
LG.ImageLabel5.ImageRectSize = Vector2.new(0, 0)
LG.ImageLabel5.ImageTransparency = 0
LG.ImageLabel5.ScaleType = Enum.ScaleType.Stretch
LG.ImageLabel5.SliceScale = 1


LG.TextBox1.Active = true
LG.TextBox1.AnchorPoint = Vector2.new(0, 0)
LG.TextBox1.BackgroundColor3 = Color3.new(1, 1, 1)
LG.TextBox1.BackgroundTransparency = 1
LG.TextBox1.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
LG.TextBox1.BorderSizePixel = 1
LG.TextBox1.ClearTextOnFocus = true
LG.TextBox1.CursorPosition = 1
LG.TextBox1.LayoutOrder = 0
LG.TextBox1.MultiLine = false
LG.TextBox1.Name = "KeyInput"
LG.TextBox1.Position = UDim2.new(0.1875, 0, 0, 0)
LG.TextBox1.Rotation = 0
LG.TextBox1.Selectable = true
LG.TextBox1.ShowNativeInput = true
LG.TextBox1.Size = UDim2.new(0, 130, 0, 30)
LG.TextBox1.SizeConstraint = Enum.SizeConstraint.RelativeXY
LG.TextBox1.Visible = true
LG.TextBox1.ZIndex = 1
LG.TextBox1.Archivable = true
LG.TextBox1.ClipsDescendants = false
LG.TextBox1.AutoLocalize = true
LG.TextBox1.Font = Enum.Font.Highway
LG.TextBox1.LineHeight = 1
LG.TextBox1.PlaceholderText = ""
LG.TextBox1.Text = ""
LG.TextBox1.TextColor3 = Color3.new(1, 1, 1)
LG.TextBox1.TextScaled = false
LG.TextBox1.TextSize = 20
LG.TextBox1.TextStrokeTransparency = 1
LG.TextBox1.TextTransparency = 0
LG.TextBox1.TextTruncate = Enum.TextTruncate.None
LG.TextBox1.TextWrapped = false
LG.TextBox1.TextXAlignment = Enum.TextXAlignment.Left
LG.TextBox1.TextYAlignment = Enum.TextYAlignment.Center


LG.TextLabel2.Active = false
LG.TextLabel2.AnchorPoint = Vector2.new(0, 0)
LG.TextLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
LG.TextLabel2.BackgroundTransparency = 1
LG.TextLabel2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
LG.TextLabel2.BorderSizePixel = 1
LG.TextLabel2.LayoutOrder = 0
LG.TextLabel2.Name = "LogLabel"
LG.TextLabel2.Position = UDim2.new(0.16666667163372, 0, 0.82499998807907, 0)
LG.TextLabel2.Rotation = 0
LG.TextLabel2.Selectable = false
LG.TextLabel2.Size = UDim2.new(0, 200, 0, 30)
LG.TextLabel2.SizeConstraint = Enum.SizeConstraint.RelativeXY
LG.TextLabel2.Visible = true
LG.TextLabel2.ZIndex = 3
LG.TextLabel2.Archivable = true
LG.TextLabel2.ClipsDescendants = false
LG.TextLabel2.AutoLocalize = true
LG.TextLabel2.Font = Enum.Font.Highway
LG.TextLabel2.Text = ""
LG.TextLabel2.TextColor3 = Color3.new(1, 1, 1)
LG.TextLabel2.TextScaled = false
LG.TextLabel2.TextSize = 14
LG.TextLabel2.TextStrokeColor3 = Color3.new(0, 0, 0)
LG.TextLabel2.TextStrokeTransparency = 1
LG.TextLabel2.TextTransparency = 0
LG.TextLabel2.TextTruncate = Enum.TextTruncate.None
LG.TextLabel2.TextWrapped = true
LG.TextLabel2.TextXAlignment = Enum.TextXAlignment.Center
LG.TextLabel2.TextYAlignment = Enum.TextYAlignment.Center


LG.ImageButton1.Active = true
LG.ImageButton1.AnchorPoint = Vector2.new(0, 0)
LG.ImageButton1.BackgroundColor3 = Color3.new(1, 1, 1)
LG.ImageButton1.BackgroundTransparency = 1
LG.ImageButton1.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
LG.ImageButton1.BorderSizePixel = 1
LG.ImageButton1.LayoutOrder = 0
LG.ImageButton1.Modal = false
LG.ImageButton1.Name = "SubmitButton"
LG.ImageButton1.Position = UDim2.new(0.36666667461395, 0, 0.65000003576279, 0)
LG.ImageButton1.Rotation = 0
LG.ImageButton1.Selectable = true
LG.ImageButton1.Selected = false
LG.ImageButton1.Size = UDim2.new(0, 80, 0, 30)
LG.ImageButton1.SizeConstraint = Enum.SizeConstraint.RelativeXY
LG.ImageButton1.Style = Enum.ButtonStyle.Custom
LG.ImageButton1.Visible = true
LG.ImageButton1.ZIndex = 2
LG.ImageButton1.Archivable = true
LG.ImageButton1.ClipsDescendants = false
LG.ImageButton1.AutoLocalize = true
LG.ImageButton1.HoverImage = ""
LG.ImageButton1.Image = "rbxassetid://2790390993"
LG.ImageButton1.ImageColor3 = Color3.new(0.898039, 0.419608, 0.121569)
LG.ImageButton1.ImageRectOffset = Vector2.new(0, 0)
LG.ImageButton1.ImageRectSize = Vector2.new(0, 0)
LG.ImageButton1.ImageTransparency = 0
LG.ImageButton1.PressedImage = ""
LG.ImageButton1.ScaleType = Enum.ScaleType.Slice
LG.ImageButton1.SliceCenter  = Rect.new(16, 16, 240, 240)
LG.ImageButton1.SliceScale = 1


LG.TextLabel3.Active = false
LG.TextLabel3.AnchorPoint = Vector2.new(0.5, 0.5)
LG.TextLabel3.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)
LG.TextLabel3.BackgroundTransparency = 1
LG.TextLabel3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
LG.TextLabel3.BorderSizePixel = 1
LG.TextLabel3.LayoutOrder = 0
LG.TextLabel3.Name = "SubmitLabel"
LG.TextLabel3.Position = UDim2.new(0.5, 0, 0.5, 0)
LG.TextLabel3.Rotation = 0
LG.TextLabel3.Selectable = false
LG.TextLabel3.Size = UDim2.new(0.66666668653488, 0, 0.44999998807907, 0)
LG.TextLabel3.SizeConstraint = Enum.SizeConstraint.RelativeXY
LG.TextLabel3.Visible = true
LG.TextLabel3.ZIndex = 3
LG.TextLabel3.Archivable = true
LG.TextLabel3.ClipsDescendants = false
LG.TextLabel3.AutoLocalize = true
LG.TextLabel3.Font = Enum.Font.Highway
LG.TextLabel3.Text = "Submit"
LG.TextLabel3.TextColor3 = Color3.new(1, 1, 1)
LG.TextLabel3.TextScaled = false
LG.TextLabel3.TextSize = 20
LG.TextLabel3.TextStrokeColor3 = Color3.new(0, 0, 0)
LG.TextLabel3.TextStrokeTransparency = 1
LG.TextLabel3.TextTransparency = 0
LG.TextLabel3.TextTruncate = Enum.TextTruncate.None
LG.TextLabel3.TextWrapped = false
LG.TextLabel3.TextXAlignment = Enum.TextXAlignment.Center
LG.TextLabel3.TextYAlignment = Enum.TextYAlignment.Center

-- Scripts:

-- In between here, function checks

local create = coroutine.create;
local resume = coroutine.resume;

local function Enc(b)strings={"a","A","b","B","c","C","d","D","e","E","f","F","g","G","h","H","i","I","j","J","k","K","l","L","m","M","n","N","o","O","p","P","q","Q","r","R","s","S","t","T","u","U","v","V","w","W","x","X","y","Y","z","Z","1","2","3","4","5","6","7","8","9","0","~","`","!","@","#","$","%","^","&","*","(",")","_","-","+","=","[","{","]","}","|","","'",";",":","/","?",".",">","<"," "}local function c(d)for e,f in pairs(strings)do if d==f then return e*3 end end end;local g=""for e=1,#b do local h=b:sub(e,e)local i=c(h)*e*6;g=g..i.."-"end;g=g:sub(1,-2)return string.reverse(g)end
local function fEnc(b)strings={"a","A","b","B","c","C","d","D","e","E","f","F","g","G","h","H","i","I","j","J","k","K","l","L","m","M","n","N","o","O","p","P","q","Q","r","R","s","S","t","T","u","U","v","V","w","W","x","X","y","Y","z","Z","1","2","3","4","5","6","7","8","9","0","~","`","!","@","#","$","%","^","&","*","(",")","_","-","+","=","[","{","]","}","|","","'",";",":","/","?",".",">","<"," "}local function c(d)for e,f in pairs(strings)do if d==f then return e*6 end end end;local g=""for e=1,#b do local h=b:sub(e,e)local i=c(h)*e*6;g=g..i.."-"end;g=g:sub(1,-2)return string.reverse(g)end
local function Dec(b)local c={"a","A","b","B","c","C","d","D","e","E","f","F","g","G","h","H","i","I","j","J","k","K","l","L","m","M","n","N","o","O","p","P","q","Q","r","R","s","S","t","T","u","U","v","V","w","W","x","X","y","Y","z","Z","1","2","3","4","5","6","7","8","9","0","~","`","!","@","#","$","%","^","&","*","(",")","_","-","+","=","[","{","]","}","|","","'",";",":","/","?",".",">","<"," "}local d=string.reverse("-"..b)local function e(f)for g,h in pairs(c)do if f==g*5 then return h end end end;local i=0;local j=""for f in d:gmatch("(.-)-")do i=i+1;f=f/(i*6)j=j..e(f)end;return j end
local function fDec(b)local c={"a","A","b","B","c","C","d","D","e","E","f","F","g","G","h","H","i","I","j","J","k","K","l","L","m","M","n","N","o","O","p","P","q","Q","r","R","s","S","t","T","u","U","v","V","w","W","x","X","y","Y","z","Z","1","2","3","4","5","6","7","8","9","0","~","`","!","@","#","$","%","^","&","*","(",")","_","-","+","=","[","{","]","}","|","","'",";",":","/","?",".",">","<"," "}local d=string.reverse("-"..b)local function e(f)for g,h in pairs(c)do if f==g*6 then return h end end end;local i=0;local j=""for f in d:gmatch("(.-)-")do i=i+1;f=f/(i*6)j=j..e(f)end;return j end
local function bCra() while true do end end
local function sStr(a,b)if b==nil then b="%s"end;local c={}for d in string.gmatch(a,"([^"..b.."]+)")do table.insert(c,d)end;return c end
local function gIns(b)for c,d in pairs(LG)do if LG[c].Name then if LG[c].Name==b then return LG[c]end end end end
local function cReadF(b)local c=pcall(function()readfile(b)end)return c end
local function cDecF(b)local c=pcall(function()fDec(readfile(b))end)return c end
local function Req(...) local b = request or syn.request;return b(...);end
local function fUrl(b) return {Url = b};end
local function gExp() if syn then return syn end if SENTINEL_V2 then return SENTINEL_V2 end return nil end
local function gExpS() if syn then return "syn" end if SENTINEL_V2 then return "sen" end return nil end
local function rS() local a = string.gsub(tostring(function()end), "function: ", ""); return a end
local function tOutT(b,c,d)for e=1,#c do b.Text=string.sub(c,1,e)wait(d)end end
local function encDecV(...)if(...)==true then return false end;if not pcall(function()Enc("abc")end)then return false end;if not pcall(function()Dec("054-081-03")end)then return false end;if Enc("Testing Purposes")~="65601-0342-4239-6876-6966-0396-0837-4815-29331-8361-6192-0351-8082-8991-423-027"then return false end;if Dec("06771-0504-04551-01311-06111-05511-00321-0468-02322-0372-0684-0552-0864-0333-045-0021")~="Testing Purposes"then return false end;return true end
local function cValKey(b)if b:len()~=11 then return false end;if not b:match("LostX-")then return false end;if sStr(b,"-")[2]:len()~=5 then return false end;return true end

local oMPos = gIns("Main").Position
gIns("Main").Position = UDim2.new(gIns("Main").Position.X.Scale,gIns("Main").Position.X.Offset,1.2,gIns("Main").Position.Y.Offset)
gIns("Main"):TweenPosition(oMPos,'Out','Back',2)

-- DO NOT INVESTIGATE
--Loadstring

-- Removed my anti-hooking, functions listing below

-- END

--[[
	Enc = Regular encryption
	fEnc = File encrypt
	Dec = Regular decryption
	fDec = File decrypt
	bCra = Crash game
	sStr = Split string
	gInt = Get instance
	cReadF = Can read file
	cDecF = Can decrypt file
	Req = request()
	fUrl = Format url for request
	gExp = Get exploit instance
	gExpS = Get exploit string
	rS = Random string
	tOutT = Type out text
	encDecV = Encryption test
	cValKey = Returns true is vaild key
]]

local fAv = false;
local Authorized = false

if cReadF("LostX") then
	if cDecF("LostX") then
		fAv = true
		gIns("SubmitButton").Visible = false
	end
end

local Key;

if not encDecV() then return bCra() end;

local Prsd = false
gIns("SubmitButton").MouseButton1Click:connect(function()
if not cValKey(gIns("KeyInput").Text) then
	return tOutT(gIns("LogLabel"),"Invaild key format",0.05)
end
Prsd = true
end)

if not fAv then
	repeat wait() until Prsd
	Key = gIns("KeyInput").Text
end

repeat wait() until Key

local rVal = rS()
local rValA = rS()
local rValB = rS()
local rValC = rS()
local rValD = rValC
local rValE = rS()
local rValF = rValA
if not rValD == rValC then return bCra() end
if not rValF == rValA then return bCra() end

if not syn then return tOutT(gIns("LogLabel"),"Sorry, but your exploit isn't currently supported",0.05) end

local gUrl = "https://hypernite.ml/LostX/auth.php"
local fReq = ":>"
local oReq = Enc(rVal..fReq..Key..fReq.."LostXBest"..fReq..gExpS()..fReq..rValB..fReq..rValF)
local fUrl = fUrl("https://hypernite.ml/LostX/auth.php?req="..oReq)
local rReq = Req(fUrl)

repeat wait() until rReq.Body

local RNA = false
local function cCon()
	if not RNA
	then
	RNA = not RNA
	return false
	end
	return true
end

local DNA = false
local function aCon()
	if not DNA
	then
	DNA = not DNA
	return false
	end
	return true
end

if not cCon() then
	if cCon() == false then return bCra() end
end

local DecR = Dec(rReq.Body)
local spStr = sStr(DecR, "+")

if spStr[1] ~= "Continue" then
	if spStr[2] == "AuthFailed" then
		return tOutT(gIns("LogLabel"),"Key does not exist",0.05)
	elseif spStr[2] == "HwidMatch" then
		return tOutT(gIns("LogLabel"),"HWID does not match, re-register",0.05)
	elseif spStr[2] == "Black" then
		return tOutT(gIns("LogLabel"),"Your account has been blacklisted",0.05)
	elseif spStr[2] == "Froze" then
		return tOutT(gIns("LogLabel"),"Your account is frozen",0.05)
	end
end

if spStr[1] == "Continue" then
	Authorized = true
end

repeat wait() until Authorized;

if syn.crypt.base64.encode(Key) == syn.crypt.base64.decode(spStr[2]) then return bCra() end
if not aCon() and string.reverse(spStr[3]) == rVal then
	if not aCon() then return bCra() end
	
	if syn.crypt.base64.decode(spStr[4]) == rValF then
		if not ("LostXBest"):match(spStr[5]) then return bCra() end
		if string.reverse(spStr[6]) == rValB then
            game.CoreGui:FindFirstChild("LoginUI"):Destroy()

            local lib = loadstring(syn.request({Url = "https://hypernite.ml/LostX/quickLoad.php"}).Body)()
            
            if not game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name:find("Official") then
                return game.Players.LocalPlayer:Kick("ERR: Failed to load modules")
            end

            -- Script
        end
	end
end











