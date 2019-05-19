N, K = gets.split(" ").map(&:to_i)
S = gets.chomp

answer = S.chars.map.with_index { |c, i|
  if (K == i + 1)
    c.downcase
  else
    c
  end
}

puts answer.join
