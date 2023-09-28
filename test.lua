
math.randomseed(os.time())

local function cehavl(mot)
    local mot_table = {}
    _ = mot:gsub(".",function(c) table.insert(mot_table,c) end)
    for k = 1, #mot_table-1 do
        if (math.random() > 0.5) then
            local c1 = mot_table[k]
            local c2 = mot_table[k+1]
            mot_table[k] = c2
            mot_table[k+1] = c1
        end
    end
    for k = #mot_table-1, 2, -1 do
        if (math.random() > 0.8) then
            local c1 = mot_table[k]
            local c2 = mot_table[k-1]
            mot_table[k] = c2
            mot_table[k-1] = c1
        end
    end
    local result = ""
    for k = 1, #mot_table, 1 do
        result = result..mot_table[k]
    end
    return result
end

mots = { "cheval", "baignoir", "Isabelle"}

for k = 1, #mots, 1 do
    print("Mot de base :", mots[k])
    for _j = 1, 5 do
        print(cehavl(mots[k]))
    end
end
