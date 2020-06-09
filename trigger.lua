function(e, id)
    local itemLink = GetLootRollItemLink(id)
    local itemId = select(3, strfind(itemLink, "item:(%d+)"))
    local bijouIds = {
        ["19707"]=true, --Red Hakkari Bijou
        ["19708"]=true, --Blue Hakkari Bijou
        ["19709"]=true, --Yellow Hakkari Bijou
        ["19710"]=true, --Orange Hakkari Bijou
        ["19711"]=true, --Green Hakkari Bijou
        ["19712"]=true, --Purple Hakkari Bijou
        ["19713"]=true, --Bronze Hakkari Bijou
        ["19714"]=true, --Silver Hakkari Bijou
        ["19715"]=true  --Gold Hakkari Bijou
    }
    local coinIds = {
        ["19698"]=true, --Zulian Coin
        ["19699"]=true, --Razzashi Coin
        ["19700"]=true, --Hakkari Coin
        ["19701"]=true, --Gurubashi Coin
        ["19702"]=true, --Vilebranch Coin
        ["19703"]=true, --Witherbark Coin
        ["19704"]=true, --Sandfury Coin
        ["19705"]=true, --Skullsplitter Coin
        ["19706"]=true  --Bloodscalp Coin
    }
    local howToRoll = nil
    if coinIds[itemId] then
        howToRoll = aura_env.roll("coins")
    elseif bijouIds[itemId] then
        howToRoll = aura_env.roll("bijous")
    end

    if howToRoll ~= nil then
        RollOnLoot(id, howToRoll)
    end
end