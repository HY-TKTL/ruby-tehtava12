# kirjoita koodi tänne


def luokittelu(t)
	h = {:negatiivinen => [],  :positiivinen => [], :parillinen => [], :pariton => [], :summa  => 0}
	
	t.length.times do |i|
		h[:negatiivinen] << t.at(i) if t.at(i) < 0
		h[:positiivinen] << t.at(i) if t.at(i) > -1
		h[:parillinen] << t.at(i) if t.at(i) % 2 == 0
		h[:pariton] << t.at(i) if t.at(i) % 2 == 1
		h[:summa] = h[:summa] + t.at(i)
	end
	
	h[:negatiivinen] = h[:negatiivinen].sort
	h[:positiivinen] = h[:positiivinen].sort
	h[:parillinen] = h[:parillinen].sort
	h[:pariton] = h[:pariton].sort
	
	return h
end

puts luokittelu [7, 6, 3, 9, -1, -4, -6, 11, -5]
