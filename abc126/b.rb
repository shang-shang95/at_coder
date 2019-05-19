S = gets.chomp

front = S.slice(0, 2).to_i
back = S.slice(2, 2).to_i

if front.between?(0, 99) && front.between?(1, 12)
  front_pos = "A"
elsif front.between?(1, 12)
  front_pos = "M"
else
  front_pos = "Y"
end

if back.between?(0, 99) && back.between?(1, 12)
  back_pos = "A"
elsif back.between?(1, 12)
  back_pos = "M"
else
  back_pos = "Y"
end

if front_pos == "A" && back_pos == "A"
  puts "AMBIGUOUS"
elsif front_pos == "Y" && (back_pos == "A" || back_pos == "M")
  puts "YYMM"
elsif back_pos == "Y" && (front_pos == "A" || front_pos == "M")
  puts "MMYY"
else
  puts "NA"
end
