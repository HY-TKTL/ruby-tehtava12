def luokittelu (taulukko)
  h = {}
  h[:negatiivinen] = taulukko.select { |alkio| alkio < 0 }.sort
  h[:positiivinen] = taulukko.select { |alkio| alkio >= 0 }.sort
  h[:parillinen] = taulukko.select { |alkio| alkio.even? }.sort
  h[:pariton] = taulukko.select { |alkio| alkio.odd? }.sort

  if (taulukko.length == 0) then
    h[:summa] = 0
  else
    h[:summa] = taulukko.inject { |tulos, x| tulos + x }
  end
  h
end
