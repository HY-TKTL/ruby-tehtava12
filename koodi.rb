# kirjoita koodi tänne
def add_ordered(a, x)
	i = 0
	while a[i] != nil && a[i] < x do
		i += 1
	end
	a.insert(i, x)
	a
end

def luokittelu(a)
	h = {:negatiivinen=>[], :positiivinen=>[], :parillinen=>[], :pariton=>[], :summa=>0}

	a.each do |value|
		h[:summa] += value
		if value < 0
			h[:negatiivinen] = add_ordered(h[:negatiivinen], value)
		else
			h[:positiivinen] = add_ordered(h[:positiivinen], value)
		end

		if value%2 == 0
			h[:parillinen] = add_ordered(h[:parillinen], value)
		else
			h[:pariton] = add_ordered(h[:pariton], value)
		end
	end
	h
end