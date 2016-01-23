# kirjoita koodi tänne
def luokittelu(taulukko)
  h = {}
  h[:negatiivinen] = taulukko.reject { |alkio| alkio >= 0 }.sort
  h[:positiivinen] = taulukko.reject { |alkio| alkio <= 0 }.sort
  h[:parillinen] = taulukko.reject { |alkio| alkio % 2 != 0 }.sort
  h[:pariton] = taulukko.reject { |alkio| alkio % 2 == 0 }.sort
  h[:summa] = taulukko.empty? ? 0 : taulukko.inject(:+)
  h
end