N = gets.chomp.to_i
rest = []
i = 0
j = 0

while i < N
  rest << gets.chomp.split(" ")
  rest[i] << i + 1
  i += 1
end

rest = rest.sort_by { |r| r[0] }

while j < N
  k = j + 1
  while k < N
    if rest[k][1].to_i > rest[j][1].to_i && rest[k][0] == rest[j][0]
      tmp = rest[k]
      rest[k] = rest[j]
      rest[j] = tmp
    end
    k += 1
  end
  j += 1
end

rest.each { |r|
  puts r[2]
}
