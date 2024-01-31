require 'rspec'
require './lib/trie'

RSpec.describe Trie do
  it 'inserts a word' do
    trie = Trie.new()
    trie.insert("apple")
    expect(trie.root.children["a"]).to be_a(TrieNode)
    expect(trie.root.children["a"].children["p"]).to be_a(TrieNode)
    expect(trie.root.children["a"].children["p"].children["p"]).to be_a(TrieNode)
    expect(trie.root.children["a"].children["p"].children["p"].children["l"]).to be_a(TrieNode)
    expect(trie.root.children["a"].children["p"].children["p"].children["l"].children["e"]).to be_a(TrieNode)
    expect(trie.root.children["a"].children["p"].children["p"].children["l"].children["e"].children["*"]).to eq(true)
  end
  
  it 'inserts' do
    trie = Trie.new()
    trie.insert("apple")

    expect(trie.search("apple")).to eq(true)
  end

  it 'starts with' do
    trie = Trie.new()
    trie.insert("apple")

    expect(trie.starts_with("app")).to eq(true)
    expect(trie.starts_with("nope")).to eq(false)
  end

  xit '1' do
    trie = Trie.new()
    trie.insert(apple)
    expect(trie.search(apple)).to eq(true)

    expect(trie.search(app)).to eq(false)
    expect(trie.starts_with(app)).to eq(true)
    trie.insert(app)
    expect(trie.search(app)).to eq(true)
  end
end