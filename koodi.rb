def luokittelu (taulu)
  hashi = {}
  hashi[:positiivinen] = []
  hashi[:negatiivinen] = []
  hashi[:parillinen] = []
  hashi[:pariton] = []
  hashi[:summa] = 0

  taulu.map do |a|
    hashi[:summa] += a
    if a < 0
      hashi[:negatiivinen].push(a).sort!
    end
    if a > -1
      hashi[:positiivinen].push(a).sort!
    end
    if a.even?
      hashi[:parillinen].push(a).sort!
    end
    if a.odd?
      hashi[:pariton].push(a).sort!
    end
  end
  hashi
end
