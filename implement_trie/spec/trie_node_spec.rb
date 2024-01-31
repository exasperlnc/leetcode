require 'rspec'
require './lib/trie_node'

RSpec.describe TrieNode do
  it 'exists' do
    node = TrieNode.new()

    expect(node).to be_a(TrieNode)
    end

    it 'adds children' do
      node = TrieNode.new()
      child = TrieNode.new()
      expect(node.children).to_not have_key("a")

      node.children["a"] = child
      expect(node.children).to have_key("a")
    end
  end
 