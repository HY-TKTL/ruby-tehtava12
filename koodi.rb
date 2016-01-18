# kirjoita koodi tänne

def luokittelu(taulu)
  hashi = {
    negatiivinen: taulu.reject { |x| x >= 0 }.sort,
    positiivinen: taulu.reject { |x| x <= 0 }.sort,
    parillinen: taulu.reject { |x| x%2 > 0 }.sort,
    pariton: taulu.reject { |x| x%2 == 0 }.sort,
    summa: if taulu.empty?
             0
           else
             taulu.inject(:+)
           end
  }
end