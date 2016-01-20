# kirjoita koodi tänne

def luokittelu(taulukko)
  hash = Hash.new

  summa = 0
  neg = Array.new
  pos = Array.new
  parillinen = Array.new
  pariton = Array.new

  taulukko.map do |alkio|

    if alkio < 0 #negatiivinen
      neg.push(alkio)
      else
        pos.push(alkio) #positiivinen
    end

    summa+=alkio #summa

  end

  neg.sort!
  hash[:negatiivinen] = neg
  pos.sort!
  hash[:positiivinen] = pos

  parillinen = taulukko.find_all {|alkio| alkio % 2 == 0}
  parillinen.sort!
  hash[:parillinen] = parillinen

  pariton = taulukko.reject {|alkio| alkio % 2 == 0}
  pariton.sort!
  hash[:pariton] = pariton

  hash[:summa] = summa

  return hash
end

puts luokittelu([1, -2, 3, -1])