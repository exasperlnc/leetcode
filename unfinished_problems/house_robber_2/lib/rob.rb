def rob(nums)
  first = rob_1(nums[0...-1]) 
  last = rob_1(nums[1..-1])
  first > last ? first : last
end

def rob_1(nums)
  dp = Array.new(nums.size + 2) {0}

  nums.each_with_index do |num, i|
    dp[i+3] = [dp[i], dp[i+1]].max + num
  end

  [dp[-1], dp[-2]].max
end