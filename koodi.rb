# kirjoita koodi tänne
def luokittelu(taulukko)
    positiivinen = []
    negatiivinen = []
    parillinen = []
    pariton = []
    taulukko.each do |x|
        if x > 0 then positiivinen.push(x) end
        if x < 0 then negatiivinen.push(x) end
        if x % 2 == 0 then parillinen.push(x) else pariton.push(x) end
    end
    summa = taulukko.inject(:+)
    if (summa == nil) then summa = 0 end
    {negatiivinen: negatiivinen.sort, positiivinen: positiivinen.sort, parillinen: parillinen.sort, pariton: pariton.sort, summa: summa}
end