
def luokittelu(t)
    t = t.sort
    h = {negatiivinen: t.select{|x| x < 0},
     positiivinen: t.select{|x| x > 0},
     parillinen: t.select{|x| x % 2 == 0},
     pariton: t.select{|x| x % 2 == 1},
     summa: t.inject(0){|s,x| s+x}}
end

