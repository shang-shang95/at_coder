def cal(n, amount)
  ans = [-1, -1, -1]
  (0..n).each do |x|
    (0..n - x).each do |y|
      ans = [x, y, n - x - y] if amount == 10_000 * x + 5000 * y + 1000 * (n - x - y)
    end
  end
  ans
end

N, Y = gets.split.map(&:to_i)

answer = cal(N, Y)

puts "#{answer[0]} #{answer[1]} #{answer[2]}"
