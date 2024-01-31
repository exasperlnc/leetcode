require 'rspec'
require './lib/trie'

RSpec.describe Trie do
  it '1' do
    trie = Trie.new()
    trie.insert(apple)
    expect(trie.search(apple)).to eq(true)

    expect(trie.search(app)).to eq(false)
    expect(trie.starts_with(app)).to eq(true)
    trie.insert(app)
    expect(trie.search(app)).to eq(true)
  end
end