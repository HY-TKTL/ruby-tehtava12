# kirjoita koodi tänne
def luokittelu(a)
  nega = []
  posi = []
  pari = []
  pariton = []
  sum = 0
  a.each do |alkio|
    sum += alkio
    if alkio % 2 == 0
      pari << alkio
    else
      pariton << alkio
    end
    if alkio < 0
      nega << alkio
    else
      posi << alkio
    end
  end
  nega = nega.sort
  posi = posi.sort
  pari = pari.sort
  pariton = pariton.sort

  b = {negatiivinen: nega, positiivinen: posi, parillinen: pari, pariton: pariton, summa: sum}

end
