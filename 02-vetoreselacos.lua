v1 = {304, 10, 600, 45, 33, 100, 5, 10} -- testando vetores e laços
maior = v1[1]
for i = 2, #v1 do
    if v1[i] > maior then
        maior = v1[i]
    end
end
print(maior)
