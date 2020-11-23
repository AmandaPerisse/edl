function maior(v) -- criando funcao para retornar o maior valor de um vetor
    local maior = v[1]
    for i = 2, #v do
        local a = i
        if v[i] > maior then
            maior = v[i]
        end
    end
    return maior
end

v2 = [181, 96, 521, 977, 29, 301]
m = maior(v2)
print(m)