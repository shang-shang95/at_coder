n = gets.to_i
x = 0
a = 998_244_353

r = (n - x) % a
x += r if r != 0
puts x
