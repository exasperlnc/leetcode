require './lib/same_tree'
require './lib/tree_node'

RSpec.describe 'example' do
  before :all do
    @root1 = TreeNode.new(1)
    @root1.left = TreeNode.new(2)
    @root1.right = TreeNode.new(3)

    @root2 = TreeNode.new(1)
    @root2.left = TreeNode.new(2)

    @root3 = TreeNode.new(1)
    @root3.right = TreeNode.new(2)

    @root4 = TreeNode.new(1)
    @root4.left = TreeNode.new(2)
    @root4.right = TreeNode.new(1)

    @root5 = TreeNode.new(1)
    @root5.left = TreeNode.new(1)
    @root5.right = TreeNode.new(2)
  end

  it '1' do
    expect(is_same_tree?(@root1, @root1)).to eq(true)
  end

  it '2' do
    expect(is_same_tree?(@root2, @root3)).to eq(false)
  end

  it '3' do
    expect(is_same_tree?(@root4, @root5)).to eq(false)
  end
end