require './lib/tree_node'
require 'rspec'

describe TreeNode do
  it 'exists' do
    tn = TreeNode.new(5)
    expect(tn).to be_a(TreeNode)
  
    expect(tn.val).to eq(5)
    expect(tn.right).to eq(nil)
    expect(tn.left).to eq(nil)
  end
  
  it 'adds nodes to right and left' do
    tn = TreeNode.new(5)
    tn_2 = TreeNode.new(4)
    tn_3 = TreeNode.new(6)
    
    tn.left = tn_2
    tn.right = tn_3
  
    expect(tn.left.val).to eq(4)
    expect(tn.right.val).to eq(6)
  end
end