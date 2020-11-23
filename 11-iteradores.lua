function count (first, last)
    local val = first
    local function fn() -- parar o programa quando val for igual ao ultimo valor (no caso 11)
        if val > last then
            return nil
        end
        local ret = val 
        val = val +1 -- incremento
        return ret
    end
    return fn
end

for val in count (2, 11) do
    print (val)
end