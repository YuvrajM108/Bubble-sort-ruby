def bubble_sort(n_arr)
  i = 0
  while i < (n_arr.length - 1)
    j = 0
    while j < (n_arr.length - 1)
      idx_1_val = n_arr[j]
      idx_2_val = n_arr[j + 1]
      if idx_1_val > idx_2_val
        n_arr[j] = idx_2_val
        n_arr[j + 1] = idx_1_val
      end
      j += 1
    end
    i += 1
  end
  n_arr
end

def bubble_sort_by(s_arr)
  k = 0
  while k < (s_arr.length - 1)
    l = 0
    while l < (s_arr.length - 1)
      idx_1_word = s_arr[l]
      idx_2_word = s_arr[l + 1]
      result = yield(idx_1_word, idx_2_word)
      if result.positive?
        s_arr[l] = idx_2_word
        s_arr[l + 1] = idx_1_word
      end
      l += 1
    end
    k += 1
  end
  s_arr
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length <=> right.length
end
