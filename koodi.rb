# kirjoita koodi tänne
def luokittelu(taulukko)
  hash = {}
  hash[:summa] = 0
  hash[:negatiivinen] = []
  hash[:positiivinen] = []
  hash[:parillinen] = []
  hash[:pariton] = []
  taulukko.each do |alkio|
    if alkio < 0
      taulukko = hash[:negatiivinen]
    else alkio >= 0
      taulukko = hash[:positiivinen]
    end
    taulukko << alkio
    if alkio % 2 == 0
      taulukko = hash[:parillinen] 
    else
      taulukko = hash [:pariton]
    end
    taulukko << alkio 
    hash[:summa] += alkio
  end
  hash[:negatiivinen] = hash[:negatiivinen].sort
  hash[:pariton] = hash[:pariton].sort
  hash[:positiivinen] = hash[:positiivinen].sort
  hash[:parillinen] = hash[:parillinen].sort
  return hash
end

puts luokittelu([1, -2, 3, -1])