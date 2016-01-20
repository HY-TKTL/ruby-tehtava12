def luokittelu taulu
  hsh = {:negatiivinen=>[], :positiivinen=>[], :parillinen=>[], :pariton=>[], :summa=>taulu.inject(:+)}
  taulu.each do |x|
    if x.positive?
      hsh[:positiivinen].push(x)
    elsif x.negative?
      hsh[:negatiivinen].push(x)
    end
    if x.even?
      hsh[:parillinen].push(x)
    else
      hsh[:pariton].push(x)
    end
  end
  hsh[:positiivinen].sort!
  hsh[:negatiivinen].sort!
  hsh[:parillinen].sort!
  hsh[:pariton].sort!
  if hsh[:summa]==nil
    hsh[:summa] = 0
  end
  hsh
end
# kirjoita koodi tänne
hash = luokittelu [1, 2, 3, 4, 5, 5]
puts hash.to_s
