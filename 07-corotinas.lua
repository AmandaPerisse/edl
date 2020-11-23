function foo (a)
       print("foo", a)
       return coroutine.yield(2*a)
     end
     
     co = coroutine.create(function (a,b)
           print("co-body", a, b) --co-body 1       10
           local r = foo(a+1) --foo     2
           print("co-body", r) --co-body r
           local r, s = coroutine.yield(a+b, a-b)
           print("co-body", r, s) --co-body x       y
           return b, "end"
     end)

print("main", coroutine.resume(co, 1, 10)) --main    true    4 
print("main", coroutine.resume(co, "r")) --main    true    11      -9
print("main", coroutine.resume(co, "x", "y")) --main    true    10      end
print("main", coroutine.resume(co, "x", "y")) --main    false   cannot resume dead coroutine