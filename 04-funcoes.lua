function soma (x,y) -- funcao somar 2 valores
    return x+y
end

function prod (x,y) -- funcao produto de 2 valores
    return x*y
end

function exec (f, x, y) -- funcao criar funcao com 2 valores como parametro
    return f(x,y)
end

funcs = {soma, prod}

a = 1
b = 12

res = {}
for i = 1, #funcs do
    res[i] = exec(funcs[i], a, b)
end

for i, v in pairs(res) do
    print (i, v)
end