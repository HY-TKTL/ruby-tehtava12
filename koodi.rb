# kirjoita koodi tänne
def luokittelu(taulukko)
	hash = {}
	hash[:negatiivinen] = taulukko.select{ |x| x < 0}.sort
	hash[:positiivinen] = taulukko.select{ |x| x > 0}.sort
	hash[:parillinen] = taulukko.select{ |x| x % 2 == 0}.sort
	hash[:pariton] = taulukko.select{ |x| x % 2 != 0}.sort
	if !taulukko.empty?
		hash[:summa] = taulukko.inject(:+)
	else hash[:summa] = 0
	end 
	return hash
end

taulukko = [4, 2, -5, -4]
taulukko2 = [1,2,3]
taulukko3 = []
puts luokittelu(taulukko)
puts luokittelu(taulukko2)
puts luokittelu(taulukko3)
