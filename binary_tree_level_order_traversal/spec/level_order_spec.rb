require './lib/tree_node'
require './lib/level_order'
require 'rspec'

describe 'lowest common ancestor' do
  before :all do
    @out1 = [[3],[9,20],[15,7]]
    @root1 = TreeNode.new(3)
    @root1.left = TreeNode.new(9)
    @root1.right = TreeNode.new(20)
    @root1.right.left = TreeNode.new(15)
    @root1.right.right= TreeNode.new(7)

    @out2 = [[1]]
    @root2 = TreeNode.new(1)
  end
  it '1' do 
    expect(level_order(@root1)).to eq(@out1)
  end

  it '2' do
    expect(level_order(@root2)).to eq(@out2)
  end
end