a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
# puts "a: #{a}, b: #{b}, c: #{c}, x:#{x}"

count = 0

(0..a).each do |j|
  (0..b).each do |k|
    (0..c).each do |l|
      count += 1 if 500 * j + 100 * k + 50 * l == x
      # puts "a: #{j}, b: #{k}, c: #{l}, x:#{x}"
    end
  end
end

puts count
