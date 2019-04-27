N = gets.to_i
V = gets.split(' ').map(&:to_i)
C = gets.split(' ').map(&:to_i)
max = 0
tmp = 0

(1..N).each do |n|
  (0..N - 1).to_a.combination(n).each do |index|
    tmp = index.inject(0) do |sum, i|
      sum + V[i] - C[i]
    end
    max = tmp if tmp > max
  end
end

puts max
