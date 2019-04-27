n = gets.to_i
d = readlines.map do |num|
  num.chomp.to_i
end

puts d.uniq.size
