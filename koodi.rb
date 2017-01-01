def luokittelu(array)
  hash = {}
  hash[:negatiivinen] = array.select {|element| element < 0}.sort
  hash[:positiivinen] = array.select {|element| element >= 0}.sort
  hash[:parillinen] = array.select {|element| element.even?}.sort
  hash[:pariton] = array.select {|element| element.odd?}.sort
  hash[:summa] = (array.inject(:+) or 0)
  hash
end
