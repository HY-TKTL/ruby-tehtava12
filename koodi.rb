def luokittelu(taulukko) 
hash = {negatiivinen: [], positiivinen: [], parillinen: [], pariton: [], summa: 0}
taulukko.each do |luku| 

if (luku < 0)
hash[:negatiivinen].push(luku) 
end
if (luku > 0)
hash[:positiivinen].push(luku) 
end
if (luku%2 == 0) 
hash[:parillinen].push(luku) 
end
if (luku%2 != 0)
hash[:pariton].push(luku)
end
hash[:summa] += luku
end

hash.each_key do |key|
hash[key].sort! if hash[key].kind_of? Array
end
return hash
end