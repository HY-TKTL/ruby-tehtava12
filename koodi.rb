# kirjoita koodi tänne

def luokittelu(a_tab)
  a_hash = {:negatiivinen => [], :positiivinen => [], :pariton => [], :parillinen => [], :summa => 0}

  a_tab.each do |x|
    a_hash[:negatiivinen] << x if x < 0
    a_hash[:positiivinen] << x if x >= 0
    a_hash[:parillinen]   << x if x % 2 == 0
    a_hash[:pariton]      << x if x % 2 != 0
    a_hash[:summa]        += x
  end

  a_hash.each do |k, v|
    a_hash[k] = v.sort if v.is_a?(Array)
  end
  return a_hash
end

puts luokittelu [-2, -1, 5, -3, 4]
