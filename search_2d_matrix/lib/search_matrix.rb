def search_matrix(matrix, target)
  row_index = matrix.map(&:last).bsearch_index {|last| target <= last}
  
  cell = matrix[row_index].bsearch {|num,_| target <=> num}
  return cell ? true : false
end