# kirjoita koodi tänne
def luokittelu(taulukko)
    taulukko.sort!
    hash = Hash.new(0)
    hash[:negatiivinen] = taulukko.select{ |i| i < 0 }
    hash[:positiivinen] = taulukko.select{ |i| i > 0 }
    hash[:parillinen] = taulukko.select{ |i| i.even? }
    hash[:pariton] = taulukko.select{ |i| i.odd? }
    hash[:summa] = taulukko.sum 
    return hash
end

luokittelu([1,2,-5,6,-6,11])
