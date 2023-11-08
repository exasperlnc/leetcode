require './lib/tree_node'
require './lib/balanced_binary_tree'


RSpec.describe 'example' do
  before :all do
    @root1 = TreeNode.new(3)
    @root1.left = TreeNode.new(9)
    @root1.right = TreeNode.new(20)
    @root1.right.left = TreeNode.new(15)
    @root1.right.right = TreeNode.new(7)

    @root2 = TreeNode.new(1)
    @root2.left = TreeNode.new(2)
    @root2.right = TreeNode.new(2)
    @root2.left.left = TreeNode.new(3)
    @root2.left.right = TreeNode.new(3)
    @root2.left.left.left = TreeNode.new(4)
    @root2.left.left.right = TreeNode.new(4)
  end

  it '1' do
    expect(is_balanced(@root1)).to eq(true)
  end

  it '2' do
    expect(is_balanced(@root2)).to eq(false)
  end
end