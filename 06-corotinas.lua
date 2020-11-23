co = coroutine.create(function() -- corotina que toda vez que é chamada printa o valor de i
    for i = 1 , 5 do 
        print(i)
        coroutine.yield()
    end
end)
coroutine.resume(co) -- printa 1
coroutine.resume(co) -- printa 2
coroutine.resume(co) -- printa 3
coroutine.resume(co) -- printa 4