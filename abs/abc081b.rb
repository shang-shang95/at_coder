num = readline
array = readline.split.map(&:to_i)
res = 0
is_odd = false

while !is_odd
  array = array.map do |a|
    if !a.even?
      is_odd = true
      a
    else
      a / 2
    end
  end

  if !is_odd
    res = res + 1
  end
end

if is_odd
  puts res.to_s
end
