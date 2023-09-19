def group_anagrams(strs)
  groups = {}
  keys = []
  solution = []
  
  strs.each do |str|
    # use tally enumerable to populate a hash
    if groups[str.chars.tally]
      groups[str.chars.tally] << str
    else
      groups[str.chars.tally] = [str]
      # save the keys in an array
      keys << str.chars.tally
    end
  end
  keys.each do |key|
    # iterate through the array, populating another array with the values
    # (there has to be a more elegant way)
    solution << groups[key]
  end
  # return solution array
  solution
end