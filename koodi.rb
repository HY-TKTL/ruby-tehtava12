# kirjoita koodi tänne

:negatiivinen
:postiivinen
:parillinen
:pariton
:summa

def luokittelu(taulu)
	hash = Hash[ negatiivinen: [], positiivinen: [], parillinen: [], pariton: [], summa: 0 ]
	taulu.length.times do |i|
		numero = taulu.at(i)
		hash[:negatiivinen].push(numero) if numero<0
		hash[:positiivinen].push(numero) if numero>0
		hash[:parillinen].push(numero) if numero%2==0
		hash[:pariton].push(numero) if numero%2==1
		hash[:summa] += numero 
	end
	hash[:negatiivinen].sort!
	hash[:positiivinen].sort!
	hash[:parillinen].sort!
	hash[:pariton].sort!
	return hash	
end
