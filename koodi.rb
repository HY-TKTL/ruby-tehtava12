# kirjoita koodi tänne

def luokittelu(array)
  hash = { :negatiivinen => Array.new,
           :positiivinen => Array.new,
           :parillinen => Array.new,
           :pariton => Array.new,
           :summa => 0
  }
  
  array.each do |value|
    if value < 0
      hash[:negatiivinen].push value
    else
      hash[:positiivinen].push value
    end
    
    if value % 2 == 0
      hash[:parillinen].push value
    else
      hash[:pariton].push value
    end

    hash[:summa] = hash[:summa] + value
  end
  
  hash.each_value { |value_arr| value_arr = value_arr.sort! if value_arr.is_a? Array }

  return hash
end
