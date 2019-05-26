N, M = gets.split(" ").map(&:to_i)
i = 0
S = []
while i < M
  s = gets.split(" ").map(&:to_i)
  S << [s[0], s.slice(0)]
  i += 1
end
pm = gets.split(" ").map(&:to_i)
print S
