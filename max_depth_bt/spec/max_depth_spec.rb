require 'rspec'
require './lib/max_depth'

RSpec.describe 'max depth' do
  it '1' do
    root = [3,9,20,null,null,15,7]
    root = TreeNode.new(3)
    root.left = TreeNode.new(9)
    root.left = TreeNode.new(20)
    root.right = TreeNode.new(20)
    root.right.left = TreeNode.new(15)
    root.right.right = TreeNode.new(7)
    
    expect(max_depth(root)).to eq(3)
  end

  it '2' do
    root = TreeNode.new(1)
    root.right = TreeNode.new(2)
    
    expect(max_depth(root)).to eq(2)
  end
end