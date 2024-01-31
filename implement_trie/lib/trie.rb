class Trie
  attr_reader :root
  def initialize()
    @root = {}
  end


=begin
  :type word: String
  :rtype: Void
=end
  def insert(word)
    current_node = @root
    for char in word
      if current_node["#{char}"]
        current_node = current_node["#{char}"]
      else
        new_node = TrieNode.new("#{char}")
        current_node.
      end
    end
  end


=begin
  :type word: String
  :rtype: Boolean
=end
  def search(word)
      
  end


=begin
  :type prefix: String
  :rtype: Boolean
=end
  def starts_with(prefix)
      
  end


end

# Your Trie object will be instantiated and called as such:
# obj = Trie.new()
# obj.insert(word)
# param_2 = obj.search(word)
# param_3 = obj.starts_with(prefix)