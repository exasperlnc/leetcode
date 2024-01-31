class TrieNode
  attr_reader :char
  def initialize(char)
    @char = char.downcase
  end
end