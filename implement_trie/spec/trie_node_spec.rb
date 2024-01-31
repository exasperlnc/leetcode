require 'rspec'
require './lib/trie_node'

RSpec.describe TrieNode do
  it 'exists' do
    node = TrieNode.new("a")

    expect(node).to be_a(TrieNode)
    end

    it 'downcases' do
      node = TrieNode.new("A")

      expect(node).to be_a(TrieNode)
      expect(node.char).to eq("a")
    end
  end
 