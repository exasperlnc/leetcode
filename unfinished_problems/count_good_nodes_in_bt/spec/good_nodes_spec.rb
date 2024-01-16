require './lib/tree_node'
require './lib/good_nodes'
require 'rspec'

describe 'lowest common ancestor' do
  before :all do
    @out1 = 4
    @root1 = TreeNode.new(3)
    @root1.left = TreeNode.new(1)
    @root1.right = TreeNode.new(4)
    @root1.left.left = TreeNode.new(3)
    @root1.right.left = TreeNode.new(1)
    @root1.right.right= TreeNode.new(5)

    @out2 = 2
    @root2 = TreeNode.new(3)
    @root2.left = TreeNode.new(3)
    @root2.left.left = TreeNode.new(4)
    @root2.left.right = TreeNode.new(2)
  end
  it '1' do 
    expect(good_nodes(@root1)).to eq(@out1)
  end

  it '2' do
    expect(good_nodes(@root2)).to eq(@out2)
  end
end