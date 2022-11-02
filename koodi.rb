def luokittelu(taulu)
    taulu = taulu.sort()
    hash = { negatiivinen: [], positiivinen: [], parillinen: [], pariton: [], summa: 0 }
    taulu.each do |item|
        hash[:positiivinen] << item if item > 0
        hash[:negatiivinen] << item if item < 0
        hash[:parillinen] << item if item % 2 == 0
        hash[:pariton] << item if item % 2 == 1
    end 
    hash[:summa] = taulu.inject(:+) if not taulu.empty?
    return hash
end
