aura_env.roll = function(item)
    if not aura_env.config[item] then return nil end
    return aura_env.config[item] - 1
end