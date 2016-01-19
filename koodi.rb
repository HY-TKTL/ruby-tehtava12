# kirjoita koodi tänne

def luokittelu(taulukko)

 taulukko.sort!
 sum = taulukko.inject(0) {|s, x| s += x }
 nega = taulukko.reject { |x| x >= 0 }
 posi = taulukko.reject { |x| x < 0 }
 pnen = taulukko.reject { |x| x % 2 == 1 }
 pton = taulukko.reject { |x| x % 2 == 0 }
 
 hash = { negatiivinen: nega, positiivinen: posi, parillinen: pnen, pariton: pton, summa: sum}
 return hash
end