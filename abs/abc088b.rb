n = gets.to_i
a = gets.split(' ').map(&:to_i)
ans = 0

a.sort!.reverse!
a.size.times do |num|
  num.even? ? ans += a[num] : ans -= a[num]
end

puts ans
