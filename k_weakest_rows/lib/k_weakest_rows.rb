# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[]}
def k_weakest_rows(mat, k)
  mat_length = mat.count
  for i in (0..(mat_length-1))
    mat[i] << i+2 # saving the indexes of each row so it can be retrieved after sorting, + 2 to avoid 1's. 
  end
  mat.sort_by! { |row| [row.select { |element| element == 1 }, row.count]} # sort the row first by the number of 1's, then the count in the row
  answers = []
  (0..k-1).each do |num|
    answers << mat[num][-1] - 2 # save the rows original index values to a new array, to be returned (-2 to reverse the original +2)
  end
  answers
end