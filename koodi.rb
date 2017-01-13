def luokittelu(taulukko)
    hash = {}
    hash[:negatiivinen] = taulukko.select{|a| a < 0 }.sort
    hash[:positiivinen] = taulukko.select{|a| a > 0 }.sort
    hash[:parillinen] = taulukko.select{|a| a.even? }.sort
    hash[:pariton] = taulukko.select{|a| !a.even? }.sort
    hash[:summa] = taulukko.inject(:+)
    if taulukko.empty?
       hash[:summa] = 0
    end
   return hash
end

