# kirjoita koodi tänne
def luokittelu(taulukko)
  hash={:negatiivinen => Array.new, :positiivinen => Array.new, :parillinen => Array.new, :pariton => Array.new, :summa => nil }
  hash[:summa]= taulukko.inject(0){ |tulos ,x| tulos + x}
  taulukko=taulukko.map(&:to_i).sort
  for i in taulukko
    if i < 0
      hash[:negatiivinen].push(i)
    elsif i > 0
      hash[:positiivinen].push(i)
    end
    if i%2==0
      hash[:parillinen].push(i)
    else
      hash[:pariton].push(i)
    end
  end
  hash
end