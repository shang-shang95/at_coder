num = readline.chomp.split("").map(&:to_i)
res = 0

num.each do |s|
  res = res + 1 if s == 1
end

puts res.to_s
