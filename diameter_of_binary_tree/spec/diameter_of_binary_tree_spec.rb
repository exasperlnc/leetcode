require './lib/diameter_of_binary_tree'
require './lib/tree_node'

RSpec.describe 'examples' do
  before :all do
    @root1 = TreeNode.new(1)
    @root1.left = TreeNode.new(2)
    @root1.right = TreeNode.new(3)
    @root1.left.left = TreeNode.new(4)
    @root1.left.right = TreeNode.new(5)

    @root2 = TreeNode.new(1)
    @root2.left = TreeNode.new(2)
  end
  it '1' do
    expect(diameter_of_binary_tree(@root1)).to eq(3)
  end

  it '2' do
    expect(diameter_of_binary_tree(@root2)).to eq(1)
  end
end