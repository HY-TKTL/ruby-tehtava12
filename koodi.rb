# kirjoita koodi tänne
def luokittelu(a)

  negatiivinen = []
  positiivinen = []
  parillinen = []
  pariton = []

  s = 0

  a.each do |i|
    s = s + i
    if i < 0
      negatiivinen << i
    else
      positiivinen << i
    end

    if i % 2 == 0
      parillinen << i
    else
      pariton << i
    end

  end

  negatiivinen = negatiivinen.sort
  positiivinen = positiivinen.sort
  parillinen = parillinen.sort
  pariton = pariton.sort


  hash = {negatiivinen: negatiivinen,
          positiivinen: positiivinen,
          parillinen: parillinen,
          pariton: pariton,
          summa: s}

end