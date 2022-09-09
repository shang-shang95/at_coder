N = 4
ARRAY = [[2, 3], [1, 2], [3, 4], [2, 2]].freeze
ARRAY_W = [2, 1, 3, 2].freeze
ARRAY_V = [3, 2, 4, 2].freeze
W = 5

def rec_memo(i, j, memo_arr)
  memo_arr[i][j] if memo_arr[i][j] >= 0

  res = if i == N
      0
    elsif j < ARRAY_W[i]
      rec_memo(i + 1, j, memo_arr)
    else # ARRAY_W[i] < j
      [rec_memo(i + 1, j, memo_arr), rec_memo(i + 1, j - ARRAY_W[i], memo_arr) + ARRAY_V[i]].max
    end
  memo_arr[i][j] = res
end

memo_arr = Array.new(W + 1, Array.new(W + 1, -1))

p "#{rec_memo(0, W, memo_arr)}"
