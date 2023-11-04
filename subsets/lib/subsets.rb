# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  answer = []
  
  recurse(nums, answer, [], 0)
  
  answer
end


def recurse(nums, answer, current, i)
  if i == nums.length
      answer << current.clone
      return
  end
  

  current << nums[i]
  recurse(nums, answer, current, i + 1)

  current.pop
  recurse(nums, answer, current, i + 1)
end