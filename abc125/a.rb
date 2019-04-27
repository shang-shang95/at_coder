A, B, T = gets.split(' ').map(&:to_i)
times = 1
bisket = 0

while A * times < T + 0.5
  bisket += B
  times += 1
end

puts bisket
