require './lib/tree_node'
require './lib/kth_smallest'
require 'rspec'

RSpec.describe 'kth smallest' do
  before :all do
    @k1 = 1
    @root1 = TreeNode.new(3)
    @root1.left = TreeNode.new(1)
    @root1.right = TreeNode.new(4)
    @root1.left.right = TreeNode.new(2)
    @out1 = 1

    @k2 = 3
    @root2 = TreeNode.new(5)
    @root2.left = TreeNode.new(3)
    @root2.right = TreeNode.new(6)
    @root2.left.left = TreeNode.new(2)
    @root2.left.right = TreeNode.new(4)
    @root2.left.left.left = TreeNode.new(1)
    @out2 = 3
  end

  it '1' do
    expect(kth_smallest(@root1, @k1)).to eq(@out1)
  end

  it '2' do
    expect(kth_smallest(@root2, @k2)).to eq(@out2)
  end
end
