def product_except_self(nums)
  # iterate through nums
  solution_a = []
  nums.each_with_index do |_, index|
    # perform operation on items before num
    if index == 0
      solution_a << nums[1..-1].inject(:*) 
    else
      # perform operation on items after num
      # shove that into a solution array
      require 'pry'; binding.pry
      solution_a << nums[0...index].inject(:*) * nums[index...-1].inject(:*)
    end
  end
  


  # return solution array
  solution_a
end