function square(iteratorMaxCount,currentNumber)
    if currentNumber<iteratorMaxCount
    then
       currentNumber = currentNumber+1
    return currentNumber, currentNumber*currentNumber
    end
 end
 
 for i,n in square(3,0) -- iterador stateless
 do
    print(i,n)
 end
 --saida 1	1
--2	4
--3	9