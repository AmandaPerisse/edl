local function OnlyStrings(t) -- Selecionar de uma lista somente as strings presentes nela
    local idx = 0
    local function iterator()
      idx = idx + 1 -- contador
      while type(t[idx]) ~= "string" do -- se não for string
        idx = idx + 1 -- vai pro proximo ate achar a proxima string
      end
      return t[idx] -- retorna a string encontrada
    end
    return iterator
  end
  
  for v in OnlyStrings({21,"Amanda",22,"Juan",21,"Juliana"}) do
      print(v)
  end
  