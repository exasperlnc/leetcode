def product_except_self(nums)
  output = []
  total_product = 1
  nums.each do |num|
    output << total_product
    total_product *= num
  end

  total_product = 1
  (nums.length-1).downto(0) do |idx|
    output[idx] = total_product * output[idx]
    total_product *= nums[idx]
  end
  output
end