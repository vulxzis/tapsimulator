


if game.PlaceId == 9498006165 then
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vozoid/ui-libraries/main/venus/source.lua", true))()

local main = library:Load({Name = "Venus Library", Theme = "Dark", SizeX = 440, SizeY = 480, ColorOverrides = {}})
local aimbot = main:Tab("Main")
local section = aimbot:Section({Name = "Farm", column = 1})


-- object:Hide()
-- object:Show()
  

--values
_G.autoclick = true
_G.autorebirth = true
_G.selectrebirth = "1"
_G.openEgg = true
_G.selectEgg = "Starter"
_G.autoRankReward = true
_G.autoTripleTaps = true
_G.UpgradeRebirth = true
_G.UpgradeJumps = true
_G.autodailyquest = true




--functions

function autoclick()
    while _G.autoclick == true do
        game:GetService("ReplicatedStorage").Events.Tap:FireServer()
        wait()
    end
     end


function autorebirth()
    while _G.autorebirth == true do
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(_G.selectrebirth)
        wait()
    end
     end

     function autoHatch()
        while _G.autoHatch == true do
            game.ReplicatedStorage.Events.HatchEgg:InvokeServer({},_G.selectEgg,1)
            wait(.0000000000000000000000000001)
        end
    end
    function autoRankReward()
        while _G.autoRankReward == true do
            game.ReplicatedStorage.Events.ClaimRankReward:FireServer()
            wait(.0000000000000000000000000000000000000000000000001)
         end
        end
    
    function autoTripleTaps()
        while _G.autoTripleTaps == true do
            game:GetService("ReplicatedStorage").Events.UseBoost:FireServer("tripleTaps")
            wait(900)
        end
         end

    function autoUpgradeRebirth()
        game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("rebirthUpgrades")
    end
    
    function autoUpgradeJumps()
        game.ReplicatedStorage.Events.Upgrade:FireServer("jumps")
        end
    function autoupgradegem()
        game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("gemMultiplierUpgrade")
    end
    function autodailyquest()
        while _G.autodailyquest == true  do
            game:GetService("ReplicatedStorage").Events.OpenDailyReward:InvokeServer()
            wait()
        end
        end
local label = section:Label("Tapping Simulators")


local toggle = section:Toggle({Name = "Auto Click", Flag = "Toggle", callback = function(Value)
    _G.autoclick = Value
    autoclick()
   
end})

local toggle = section:Toggle({Name = "Auto Rebirth", Flag = "Toggle", callback = function(Value)
    _G.autorebirth = Value
    autorebirth()
   
end})

local dropdown = section:Dropdown({Default = "1", Content = 
{"1","5","10","20","100","500","2000","4500","8000","12500","18000","24500","32000","40500"}, MultiChoice = false, Flag = "Dropdown", Callback = function(Value)
    _G.selectrebirth = Value
 end})


 local toggle = section:Toggle({Name = "Auto Get Rank Rewards", Flag = "Toggle", callback = function(Value)
    _G.autoRankReward = Value
    autoRankReward()
 end})

 local toggle = section:Toggle({Name = "Auto Use Tripple Tap", Flag = "Toggle", callback = function(Value)
    _G.autoTripleTaps = Value
    autoTripleTaps()
 end})
 local toggle = section:Toggle({Name = "Auto Daily Quest", Flag = "Toggle", callback = function(Value)
    _G.autodailyquest = Value
    autodailyquest()
 end})
 
 local button = section:Button({Name = "Upgrade Rebirths", Callback = function(Value)
    autoUpgradeRebirth()
   
 end})
 local button = section:Button({Name = "Upgrade Jumps", Callback = function(Value)
 autoUpgradeJumps()
 end})
 local button = section:Button({Name = "Upgrade Gems", Callback = function(Value)
  autoupgradegem()
end})
 local button = section:Button({Name = "Upgrade Gems", Callback = function(Value)
  autoupgradegem()
end})

 local section = aimbot:Section({Name = "Eggs", column = 2})


 local toggle = section:Toggle({Name = "Auto Open Eggs", Flag = "Toggle", callback = function(Value)
    _G.autoHatch = Value
    autoHatch()
 end})

 
    
    local dropdown = section:Dropdown({
        Default = "Starter", 
    Content = {"Starter","Wood Egg","Jungle Egg","Bee Egg","Forest Egg","Flower Egg","Swamp Egg","Snow Egg","Desert Egg","Death Egg","Beach Egg","Mines Egg","Cloud Egg","Coral Egg","Darkheart Egg","Fire Egg","Underworld Egg","Molten Egg","Blue Magma Egg","Purle Magma Egg","Bone Egg","Secret Magma Egg"},
	Callback = function(Value)
		_G.selectEgg = Value
 end})


 local aimbot = main:Tab("Misc")
 local section = aimbot:Section({Name = "Other Stuff", column = 1})




 local dropdown = section:Dropdown({
    Name = "Teleport To Areas",
    Default = "Spawn Area",
    Content = {"Spawn Area", "Forest Area","Flower Area","Swamp Area","Snow Area","Sand Area","Death Area","Beach Area","Mines Area","Cloud Area","Coral Area","Darkheart Area","Flamelands Area","Molten Area","Blue Magma Area","Purple Magma Area","Secret Magma Area"},
    Callback = function(Value)
        if Value == "Spawn Area" then
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-84.6454, 16.5506, -481.442)
        elseif Value == "Forest Area" then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-161.951, 977.215, -444.774)
		elseif Value == "Flower Area" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-176.474, 1514.45, -648.01)
		elseif Value == "Swamp Area" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-264.011, 2113.39, -656.807)
		elseif Value == "Snow Area" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-241.092, 2934.25, -469.995)
		elseif Value == "Sand Area" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-205.881, 4225.35, -779.94)
		elseif Value == "Death Area" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-319.197, 5415.49, -480.928)
		elseif Value == "Beach Area" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-180.304, 6872.29, -495.251)
		elseif Value == "Mines Area" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-274.924, 8365.88, -483.89)
		elseif Value == "Mines Area" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-274.924, 8365.88, -483.89)
		elseif Value == "Cloud Area" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-336.513, 11236.1, -236.306)
		elseif Value == "Coral Area" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-473.613, 13801.8, -543.772)
		elseif Value == "Darkheart Area" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-447.291, 17169.8, -552.321)
		elseif Value == "Flamelands Area" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1282, 156.237, -2860)
		elseif Value == "Molten Area" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1243, 2183.65, -2883)
		elseif Value == "Blue Magma Area" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1344.86, 5236.24, -2953.07)
		elseif Value == "Purple Magma Area" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1302, 7652.05, -2959)
		elseif Value == "Secret Magma Area" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1282, 156.237, -2860)
        end
      end
})
-- toggle:Toggle(bool)

local slider = section:Slider({
    Name = "Walkspeed",
    Min = 16,
    Max = 250,
    Default = 16,
    Flag = "Slider",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end    
})

local slider = section:Slider({
    Name = "Jump Height",
    Min = 50,
    Max = 750,
    Default = 50,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpHeight = Value
    end    
})

local slider = section:Slider({
    Name = "FOV",
    Min = 16,
    Max = 120,
    Default = 70,
    Callback = function(Value)
        game.Workspace.CurrentCamera.FieldOfView = Value
    end    
})



