def luokittelu(arr)
  sum = 0
  neg, pos, even, odd = [], [], [], []
  arr.each do |x|
    sum += x
    x % 2 == 0 ? even << x : odd << x
    x < 0 ? neg << x : pos << x
  end
  return {negatiivinen: neg.sort, positiivinen: pos.sort, parillinen: even.sort, pariton: odd.sort, summa: sum}
end
