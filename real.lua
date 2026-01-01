local a,b,c,d,e,f=game:GetService("Players"),game:GetService("RunService"),game:GetService("Lighting"),game:GetService("UserInputService"),game:GetService("Workspace"),math
local g,h=a.LocalPlayer,a.LocalPlayer:WaitForChild("PlayerGui")
if getgenv().D then return end
getgenv().D=true
getgenv().S=false
local i=j=false
if d.TouchEnabled and not d.KeyboardEnabled then
    getgenv().V=0.65
else
    getgenv().V=0.7
end
local k=Instance.new("ScreenGui",h)
k.Name="drinho.fps"
k.ResetOnSpawn=false
local l=Instance.new("Frame",k)
l.Size=UDim2.fromScale(0.36,0.55)
l.Position=UDim2.fromScale(0.32,0.22)
l.BackgroundColor3=Color3.fromRGB(12,12,12)
l.BorderSizePixel=0
l.Active=true
l.Draggable=true
Instance.new("UICorner",l).CornerRadius=UDim.new(0,14)
local m=Instance.new("TextLabel",l)
m.Size=UDim2.fromScale(1,0.12)
m.BackgroundTransparency=1
m.Text="drinho • 🥔 + Esticar Tela"
m.Font=Enum.Font.GothamBold
m.TextScaled=true
m.TextColor3=Color3.fromRGB(0,170,255)
local n=Instance.new("TextButton",l)
n.Position=UDim2.fromScale(0.1,0.15)
n.Size=UDim2.fromScale(0.8,0.12)
n.Text="🥔 + Esticar Tela"
n.Font=Enum.Font.Gotham
n.TextScaled=true
n.BackgroundColor3=Color3.fromRGB(0,120,220)
n.TextColor3=Color3.new(1,1,1)
Instance.new("UICorner",n).CornerRadius=UDim.new(0,12)
local o=Instance.new("TextButton",l)
o.Position=UDim2.fromScale(0.1,0.3)
o.Size=UDim2.fromScale(0.8,0.12)
o.Text="Show FPS"
o.Font=Enum.Font.Gotham
o.TextScaled=true
o.BackgroundColor3=Color3.fromRGB(0,120,220)
o.TextColor3=Color3.new(1,1,1)
Instance.new("UICorner",o).CornerRadius=UDim.new(0,12)
local p=Instance.new("TextButton",l)
p.Size=UDim2.fromScale(0.12,0.15)
p.Position=UDim2.fromScale(0.88,0.02)
p.Text="X"
p.Font=Enum.Font.GothamBold
p.TextScaled=true
p.BackgroundColor3=Color3.fromRGB(220,0,0)
p.TextColor3=Color3.fromRGB(255,255,255)
Instance.new("UICorner",p).CornerRadius=UDim.new(0,8)
local q=Instance.new("Frame",l)
q.Position=UDim2.fromScale(0.1,0.45)
q.Size=UDim2.fromScale(0.8,0.05)
q.BackgroundColor3=Color3.fromRGB(40,40,40)
q.BorderSizePixel=0
Instance.new("UICorner",q).CornerRadius=UDim.new(1,0)
local r=Instance.new("Frame",q)
r.Size=UDim2.fromScale(0,1)
r.BackgroundColor3=Color3.fromRGB(0,200,255)
r.BorderSizePixel=0
Instance.new("UICorner",r).CornerRadius=UDim.new(1,0)
local s=Instance.new("TextLabel",q)
s.Size=UDim2.fromScale(1,1)
s.BackgroundTransparency=1
s.Text="0%"
s.Font=Enum.Font.GothamBold
s.TextScaled=true
s.TextColor3=Color3.new(1,1,1)
local t=Instance.new("TextLabel",l)
t.Position=UDim2.fromScale(0.1,0.52)
t.Size=UDim2.fromScale(0.8,0.35)
t.BackgroundTransparency=1
t.TextWrapped=true
t.TextScaled=true
t.Font=Enum.Font.Gotham
t.TextColor3=Color3.fromRGB(200,200,200)
t.Text="Pronto para otimizar.\nDispositivo: "..(i and "📱 Mobile" or "💻 PC").."\nEsticar Tela: "..getgenv().V
-- slider
local u=Instance.new("Frame",l)
u.Position=UDim2.fromScale(0.05,0.85)
u.Size=UDim2.fromScale(0.9,0.18)
u.BackgroundColor3=Color3.fromRGB(40,40,40)
Instance.new("UICorner",u).CornerRadius=UDim.new(0,14)
local v=Instance.new("Frame",u)
v.Size=UDim2.fromScale(1,0.7)
v.Position=UDim2.fromScale(0,0.15)
v.BackgroundColor3=Color3.fromRGB(70,70,70)
Instance.new("UICorner",v).CornerRadius=UDim.new(1,0)
local w=Instance.new("Frame",v)
w.Size=UDim2.fromScale((getgenv().V-0.45)/(0.8-0.45),1)
w.BackgroundColor3=Color3.fromRGB(0,200,255)
Instance.new("UICorner",w).CornerRadius=UDim.new(1,0)
local x=Instance.new("TextLabel",u)
x.Size=UDim2.fromScale(1,1)
x.BackgroundTransparency=1
x.Text="Esticar Tela: "..getgenv().V
x.Font=Enum.Font.GothamBold
x.TextScaled=true
x.TextColor3=Color3.fromRGB(255,255,255)
local y=false
local function z(A)local B=v.AbsolutePosition.X
local C=v.AbsoluteSize.X
local D=(A-B)/C
D=a.math.clamp(D,0.45,0.8)
D=f.floor(D/0.05+0.5)*0.05
getgenv().V=D
w.Size=UDim2.fromScale((D-0.45)/(0.8-0.45),1)
x.Text=string.format("Esticar Tela: %.2f",D)
end
v.InputBegan:Connect(function(I)if I.UserInputType==Enum.UserInputType.MouseButton1 or I.UserInputType==Enum.UserInputType.Touch then y=true;z(I.Position.X)end end)
v.InputEnded:Connect(function(I)if I.UserInputType==Enum.UserInputType.MouseButton1 or I.UserInputType==Enum.UserInputType.Touch then y=false end end)
v.InputChanged:Connect(function(I)if y and(I.UserInputType==Enum.UserInputType.MouseMovement or I.UserInputType==Enum.UserInputType.Touch)then z(I.Position.X)end end)
local function J()for K=1,100 do r.Size=UDim2.fromScale(K/100,1)s.Text=K.."%" task.wait(0.01)end end
local function L()
J()
c.GlobalShadows=false
c.Brightness=0
c.FogEnd=9e9
c.EnvironmentDiffuseScale=0
c.EnvironmentSpecularScale=0
pcall(function()if c:FindFirstChild("Clouds")then c.Clouds:Destroy()end end)
for _,M in ipairs(e:GetDescendants())do
if M:IsA("ParticleEmitter")or M:IsA("Trail")or M:IsA("Beam")or M:IsA("Fire")or M:IsA("Smoke")or M:IsA("Sparkles")then M.Enabled=false end
if M:IsA("Explosion")then M.Visible=false end
if M:IsA("Decal")or M:IsA("Texture")then M.Transparency=1 end
if M:IsA("Terrain")then M.WaterWaveSize=0 M.WaterWaveSpeed=0 M.WaterReflectance=0 M.WaterTransparency=1 end
if M:IsA("Part")or M:IsA("MeshPart")then M.Material=Enum.Material.Plastic M.Reflectance=0 M.CastShadow=false
if M.Name:lower():match("tree")or M.Name:lower():match("bandeira")or M.Name:lower():match("stone")or M.Name:lower():match("block")then M.Transparency=1 end end end
getgenv().S=true
t.Text="✔ 🥔 Ativo + Esticar Tela\n• Partículas removidas\n• Efeitos de ataque de outros players desativados\n• Objetos decorativos removidos\n• Stretch de tela ativo\nDispositivo: "..(i and "📱 Mobile" or "💻 PC").."\nEsticar Tela: "..getgenv().V
n.Text="✔ 🥔 Ativo"
end
n.MouseButton1Click:Connect(function() n.Text="Otimizando..." L() end)
b.RenderStepped:Connect(function()if getgenv().S then e.CurrentCamera.CFrame*=CFrame.new(0,0,0,1,0,0,0,getgenv().V,0,0,0,1)end end)
local N=Instance.new("ScreenGui",h)
N.Name="FPSDisplay"
N.ResetOnSpawn=false
N.Enabled=false
local O=Instance.new("Frame",N)
O.Size=UDim2.fromScale(0.12,0.05)
O.Position=UDim2.fromScale(0.02,0.9)
O.BackgroundColor3=Color3.fromRGB(20,20,20)
O.BorderSizePixel=0
O.Active=true
O.Draggable=true
Instance.new("UICorner",O).CornerRadius=UDim.new(0,8)
local P=Instance.new("TextLabel",O)
P.Size=UDim2.fromScale(1,1)
P.BackgroundTransparency=1
P.Text="FPS: 0"
P.Font=Enum.Font.GothamBold
P.TextScaled=true
P.TextColor3=Color3.fromRGB(0,200,255)
local Q=tick()
b.RenderStepped:Connect(function()
if N.Enabled then
local R=tick()
local S=1/(R-Q)
Q=R
P.Text="FPS: "..f.floor(S)
if S<30 then P.TextColor3=Color3.fromRGB(255,0,0)elseif S<50 then P.TextColor3=Color3.fromRGB(255,255,0)else P.TextColor3=Color3.fromRGB(0,200,255)end
end
end)
o.MouseButton1Click:Connect(function() N.Enabled=not N.Enabled end)
local T=Instance.new("TextButton",h)
T.Size=UDim2.fromOffset(100,100)
T.Position=UDim2.fromScale(0.5,0.5)
T.Text="🥔"
T.Font=Enum.Font.GothamBold
T.TextScaled=true
T.BackgroundColor3=Color3.fromRGB(0,120,220)
T.TextColor3=Color3.fromRGB(255,255,255)
Instance.new("UICorner",T).CornerRadius=UDim.new(0,16)
T.Visible=false
T.Active=true
T.Draggable=true
T.ZIndex=10
p.MouseButton1Click:Connect(function() l.Visible=false;T.Visible=true end)
T.MouseButton1Click:Connect(function() l.Visible=true;T.Visible=false end)
