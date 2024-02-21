def rob(nums)
dp = Array.new(nums.size + 3) {0}

nums.each_with_index do |num, i|
  dp[i+3] = [dp[i], dp[i+1]].max + num
end

[dp[-1], dp[-2]].max
end