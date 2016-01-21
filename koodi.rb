# kirjoita koodi tänne
def luokittelu (taulukko)
  hashi = {}
  hashi[:negatiivinen] = taulukko.reject {|i| i > 0}.sort
  hashi[:positiivinen] = taulukko.reject {|i| i <= 0}.sort
  hashi[:parillinen] = taulukko.reject {|i| i.odd?}.sort
  hashi[:pariton] = taulukko.reject {|i| not i.odd?}.sort
  hashi[:summa] = taulukko.inject(0) {|tulos, x| tulos + x}
  hashi
end
