# kirjoita koodi tänne
def luokittelu(a)

  koko = a.length - 1
  positiivinen=[]
  negatiivinen=[]
  pariton=[]
  parillinen=[]
  for i in 0..koko
    positiivinen = a.select{|x| x > 0}
    negatiivinen = a.select{|x| x < 0}
    pariton = a.select do |x|
      x.odd?
    end
    parillinen = a.reject do |x|
      x.odd?
    end

  end
  summa =  a.inject(0){ |tulos, x| tulos + x }
  h={:negatiivinen=>negatiivinen.sort, :positiivinen => positiivinen.sort, :parillinen => parillinen.sort,:pariton=> pariton.sort, :summa => summa}
  end

