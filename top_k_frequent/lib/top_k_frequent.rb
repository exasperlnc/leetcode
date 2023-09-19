def top_k_frequent(nums, k)
  nums.tally.sort_by { |a,b| -b }.first(k).to_h.keys
end