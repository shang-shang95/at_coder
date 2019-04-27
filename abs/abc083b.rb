input = gets.split(' ')
n = input[0].to_i
a = input[1].to_i
b = input[2].to_i
count = 0

def sum_numbers(n)
  sum = 0
  while n > 0
    sum += n % 10
    n /= 10
  end
  sum
end

(1..n).each do |m|
  sum = sum_numbers(m)
  count += m if sum >= a && sum <= b
end

puts count
