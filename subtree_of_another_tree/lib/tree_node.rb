Class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val, left = nil, right = nil)
    @val = val
    @right = right
    @left = left
  end