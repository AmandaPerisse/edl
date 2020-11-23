function newCounter(first)
    local i = first
    local function  count()
        local ret = i
        i = i +1
        return ret
    end
    return count
end

c = newCounter (1)
print (c())
print (c())
print (c())
print (c())
print (c())
print (c())
