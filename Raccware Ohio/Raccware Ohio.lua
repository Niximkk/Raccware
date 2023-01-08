local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Vars

local plr = game:GetService("Players")
local tpservice= game:GetService("TeleportService")
local AutoRobATM
local AutoRobATMFunc
local ItemFarm
local ItemFarmFunc
local NoClipping
local NoClipToggled
local NoClipFunc
local ServerHopLowFunc
local AutoRobBank
local AutoRobBankFunc

-- Hello

OrionLib:MakeNotification({
	Name = "Hello!",
	Content = "Welcome " .. plr.LocalPlayer.DisplayName .. "!",
	Image = "rbxassetid://11874803305",
	Time = 5
})

-- Creating GUI

local Window = OrionLib:MakeWindow(
	{
		Name = "Raccware V3",
		 HidePremium = false,
		 SaveConfig = false,
		 ConfigFolder = "Raccware",
		 IntroIcon = "rbxassetid://11874803305",
		 IntroText = "Raccware",
		 Icon = "rbxassetid://11874803305",
	})

local Main = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4370345144",
	PremiumOnly = false
})

local Teleport = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://4384402413",
	PremiumOnly = false
})

local Farms = Window:MakeTab({
	Name = "Farms",
	Icon = "rbxassetid://4400700509",
	PremiumOnly = false
})

local Extras = Window:MakeTab({
	Name = "Extras",
	Icon = "rbxassetid://4400704299",
	PremiumOnly = false
})

local System = Window:MakeTab({
	Name = "System",
	Icon = "rbxassetid://4384394237",
	PremiumOnly = false
})


-- Creating Sections


-- Main

local Section = Main:AddSection({
	Name = "Made By NixRaccoon 🍷"
})
local Section = Main:AddSection({
	Name = "Credits: m1ke#3815"
})

Main:AddLabel("Now playing: "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
Main:AddLabel("User ID: "..plr.LocalPlayer.UserId)





-- Teleport

Teleport:AddButton({
	Name = "Teleport to Vault",
	Callback = function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BankRobbery.BankCash.Main.CFrame
  	end    
})

Teleport:AddButton({
	Name = "Teleport to Bank",
	Callback = function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1082.7529296875, 8.169800758361816, -350.8258361816406)
  	end    
})

Teleport:AddButton({
	Name = "Teleport to Armory",
	Callback = function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1580.642333984375, 6.243886947631836, -650.4049072265625)
  	end    
})

Teleport:AddButton({
	Name = "Teleport to Police Station",
	Callback = function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(602.3262939453125, 24.93785285949707, -892.909423828125)
  	end    
})

Teleport:AddButton({
	Name = "Teleport to Barber",
	Callback = function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1431.8909912109375, 6.255956649780273, -705.5576782226562)
  	end    
})

Teleport:AddButton({
	Name = "Teleport to Gas Station",
	Callback = function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1091.76416015625, 6.29451847076416, -673.8939208984375)
  	end    
})

Teleport:AddButton({
	Name = "Teleport to Cafeteria",
	Callback = function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1356.254638671875, 8.200023651123047, -330.0779724121094)
  	end    
})

Teleport:AddButton({
	Name = "Teleport to Restaurant",
	Callback = function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1114.453369140625, 6.267407417297363, -747.8147583007812)
  	end    
})

Teleport:AddButton({
	Name = "Teleport to Hamburgueria",
	Callback = function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(498.7198791503906, 6.310672760009766, -809.5653686523438)
  	end    
})

Teleport:AddButton({
	Name = "Teleport to Hospital",
	Callback = function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1181.351806640625, 6.276759624481201, -952.0859985351562)
  	end    
})

Teleport:AddButton({
	Name = "Teleport to Gym",
	Callback = function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1609.3670654296875, 6.295897006988525, -317.1494140625)
  	end    
})

Teleport:AddButton({
	Name = "Teleport to Phone Store",
	Callback = function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(836.0065307617188, 6.255460262298584, -1064.7198486328125)
  	end    
})

-- Farms

Farms:AddToggle({
	Name = "Auto Rob ATMs",
	Default = false,
	Callback = function(Value)
        AutoRobATM = Value
        
        if AutoRobATM then
            pcall(function()
                AutoRobATMFunc()
            end)
        end
    end  
})

Farms:AddToggle({
	Name = "Auto Rob Bank",
	Default = false,
    Callback = function(Value)
        AutoRobBank = Value
        
        if AutoRobBank then
            pcall(function()
                AutoRobBankFunc()
            end)
        end
    end
})

Farms:AddToggle({
	Name = "Auto Farm Itens + Cash",
	Default = false,
    Callback = function(Value)
        ItemFarm = Value
        
        if ItemFarm then
            pcall(function()
                ItemFarmFunc()
            end)
        end
    end
})


-- Extras

Extras:AddButton({
	Name = "Rejoin",
	Callback = function()
		tpservice:Teleport(game.PlaceId, plr)
  	end    
})

Extras:AddButton({
	Name = "Serverhop To a Low Server",
	Callback = function()
        pcall(function()
            ServerHopLowFunc()
        end)
    end,  
})

Extras:AddToggle({
	Name = "No Clip",
	Default = false,
	Callback = function(Value)
        NoClipToggled = Value
        

        pcall(function()
            NoClipFunc()
        end)
    end
})

-- System

local pinglabel = System:AddLabel("Ping: ")
local fpslabel = System:AddLabel("FPS: ")


local script = Instance.new('LocalScript', Ping)
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function(ping) 

pinglabel:Set("Ping: " ..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(math.round(2/ping)))

end)

local script = Instance.new('LocalScript', Fps)
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function(frame)

fpslabel:Set("FPS: "..math.round(1/frame)) 

end)


-- Funcs

AutoRobATMFunc = function()
	while AutoRobATM do task.wait()
		if AutoRobATM == false then break else 
		local VirtualInputManager = game:GetService('VirtualInputManager')
		local vi = game:service'VirtualInputManager'
		for i,v in pairs(game:GetService("Workspace").Game.Props.ATM:GetChildren()) do
			if v:IsA("Model") and v.Name == "ATM" and v:GetAttribute("state") ~= "destroyed" then 
				task.spawn(function()
					while v:GetAttribute("state") ~= "destroyed" do
						task.wait()
						pcall(function()
							for i,v in pairs(game:GetService("Workspace").Game.Entities.CashBundle:GetChildren()) do
								local mp = v:FindFirstChildOfClass("Part")
								local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - mp.Position).magnitude
								
								if distance <= 15 then
									fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
								end
							end 
						end)
					end
				end)
				
				repeat task.wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.PrimaryPart.CFrame * CFrame.new(0,-7,0) * CFrame.Angles(math.rad(90),0,0)
					vi:SendMouseButtonEvent(500, 500, 0, true, game, 1)
					task.wait()
					vi:SendMouseButtonEvent(500, 500, 0, false, game, 1)
				until v:GetAttribute("state") == "destroyed" or AutoRobATM == false
				
				pcall(function()
					for i,v in pairs(game:GetService("Workspace").Game.Entities.CashBundle:GetChildren()) do
						local mp = v:FindFirstChildOfClass("Part")
						local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - mp.Position).magnitude
						
						if distance <= 15 then
							fireclickdetector(v:FindFirstChildOfClass("ClickDetector"))
						end
					end
				end)
				task.wait()
				end
			end
		end
	end
end

ItemFarmFunc = function()
    while ItemFarm and task.wait() do
        local allitems = GetItems()
        
        for i,v in pairs(allitems) do
            if ItemFarm == false then break end
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChildOfClass("Part").CFrame
                task.wait(0.5)
                Collect(v)
                task.wait(0.5)
            end)
            continue
        end
    end
end

AutoRobBankFunc = function()
    while AutoRobBank and task.wait() do
        local bankthing = game:GetService("Workspace").BankRobbery.BankCash
        if #bankthing.Cash:GetChildren() > 0 then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = bankthing.Main.CFrame
           task.wait()
           fireproximityprompt(game:GetService("Workspace").BankRobbery.BankCash.Main.Attachment.ProximityPrompt)
        end
    end
end

function NoClipOn()
    if NoClipToggled == false then NoClipping:Disconnect() NoClipping = nil end
    
    if game.Players.LocalPlayer.Character ~= nil then
        for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if child:IsA("BasePart") and child.CanCollide == true then
                child.CanCollide = false
            end
        end
    end
end

NoClipFunc = function()
    if NoClipping == nil then
        NoClipping = game.RunService.Stepped:Connect(NoClipOn)
    end
end

function GetItems()
	local cache = {}
	
	for i,v in pairs(game:GetService("Workspace").Game.Entities.CashBundle:GetChildren()) do
		table.insert(cache,v)
	end
	
	for i,v in pairs(game:GetService("Workspace").Game.Entities.ItemPickup:GetChildren()) do
		table.insert(cache,v)
	end
	
	return cache
end

function Collect(item)
    if item:FindFirstChildOfClass("ClickDetector") then
        fireclickdetector(item:FindFirstChildOfClass("ClickDetector"))
    elseif item:FindFirstChildOfClass("Part") then
        local maincrap = item:FindFirstChildOfClass("Part")
        fireclickdetector(maincrap:FindFirstChildOfClass("ClickDetector"))
    end
end

ServerHopLowFunc = function()
    local servers = {}
    local serversplayers = {}
    local maxPlrs = nil
    local http = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
    local req = http({Url = string.format("https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=Asc&limit=100", game.PlaceId)})
    local body = game.HttpService:JSONDecode(req.Body)
    if body and body.data then
        for i, v in next, body.data do
            if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers then
                if maxPlrs == nil then maxPlrs = tonumber(v.maxPlayers)
                table.insert(servers, #servers+1, v)
            end 
        end
    end
    end
    
    if #servers == 0 then return end
    
    for i,v in pairs(servers) do
        table.insert(serversplayers,#serversplayers+1,tonumber(v.playing))
    end
    
    table.sort(serversplayers)
    
    for i,v in pairs(servers) do
       if v.playing == serversplayers[1] and v.id ~= game.JobId then
           servers = {v.id}
       elseif v.id == game.JobId then
           servers = {}
       end
    end
    
    if #servers == 0 then return end
    
    if #servers > 0 then
        game.TeleportService:TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], game.Players.LocalPlayer)
    end 
end

-- Init

OrionLib:Init()