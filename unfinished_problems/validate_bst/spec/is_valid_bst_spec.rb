require './lib/tree_node'
require './lib/is_valid_bst'
require 'rspec'

describe 'lowest common ancestor' do
  before :all do
    @out1 = true
    @root1 = TreeNode.new(2)
    @root1.left = TreeNode.new(1)
    @root1.right = TreeNode.new(3)

    @out2 = false
    @root2 = TreeNode.new(5)
    @root2.left = TreeNode.new(1)
    @root2.left.left = TreeNode.new(4)
    @root2.right.left = TreeNode.new(3)
    @root2.right.right = TreeNode.new(6)
  end
  it '1' do 
    expect(is_valid_bst(@root1)).to eq(@out1)
  end

  it '2' do
    expect(is_valid_bst(@root2)).to eq(@out2)
  end
end