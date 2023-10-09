require './lib/tree_node'
require './lib/invert_tree'
require 'rspec'

describe 'example' do
  before :all do
    @tree_1 = TreeNode.new(4)
    @tree_1.left = TreeNode.new(2)
    @tree_1.left.left = TreeNode.new(1)
    @tree_1.left.right = TreeNode.new(3)
    @tree_1.right = TreeNode.new(7)
    @tree_1.right.left = TreeNode.new(6)
    @tree_1.right.right = TreeNode.new(9)

    @out_1 = TreeNode.new(4)
    @out_1.right = TreeNode.new(2)
    @out_1.right.right = TreeNode.new(1)
    @out_1.right.left = TreeNode.new(3)
    @out_1.left = TreeNode.new(7)
    @out_1.left.right = TreeNode.new(6)
    @out_1.left.left = TreeNode.new(9)
  end

  it '1' do
    expect(@tree_1.right.val).to_not eq(@out_1.right.val)
    expect(@tree_1.left.val).to_not eq(@out_1.left.val)

    invert_tree(@tree_1)
    
    expect(@tree_1.right.val).to eq(@out_1.right.val)
    expect(@tree_1.left.val).to eq(@out_1.left.val)

    expect(@tree_1.left.left.val).to eq(@out_1.left.left.val)
  end
end