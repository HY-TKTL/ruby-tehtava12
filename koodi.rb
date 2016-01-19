# kirjoita koodi tänne

def luokittelu(taulukko) 
	hash = {negatiivinen: [], positiivinen: [], parillinen: [], pariton: [], summa: 0}

	taulukko.each do |luku| 
		hash[:negatiivinen].push(luku) if luku<0
		hash[:positiivinen].push(luku) if luku>0
		hash[:parillinen].push(luku) if luku%2 == 0
		hash[:pariton].push(luku) if luku%2 != 0
		hash[:summa] += luku
	end

	hash.each_key do |key|
		hash[key].sort! if hash[key].kind_of? Array
	end

	hash
end
