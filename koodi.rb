def luokittelu(t)
    h = {}
    # riittää järjestää koko lista, kaikki siitä luotavat listat ovat myös järjestettyjä
    sorted_t = t.sort
    h[:negatiivinen] = sorted_t.select {|x| x < 0}
    h[:positiivinen] = sorted_t.select {|x| x > 0}
    h[:parillinen] = sorted_t.select {|x| x % 2 == 0}
    h[:pariton] = sorted_t.select {|x| x % 2 == 1}
    h[:summa] = t.inject(0, :+)
    h
  end
  
  test_input = [1, 8, -7, 0, 15, -100, -3, -2, -7, 2, 4]
  puts luokittelu test_input