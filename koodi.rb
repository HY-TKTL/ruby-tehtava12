# kirjoita koodi tänne
def luokittelu(taulukko)
  tulos = 0
  a = []
  b = []
  c = []
  d = []
  hash = {negatiivinen: a, positiivinen: b, parillinen: c, pariton: d, summa: tulos}
  taulukko.each {|i| if  i < 0
                       hash[:negatiivinen] = a.push(i).sort!
                     end
                      if i > 0
                       hash[:positiivinen] = b.push(i).sort!
                      end
                      if i % 2 == 0
                        hash[:parillinen] = c.push(i).sort!
                      end
                      if i % 2 != 0
                        hash[:pariton] = d.push(i).sort!
                      end
                      hash[:summa] = tulos += i
  }
  hash
end
