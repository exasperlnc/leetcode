require 'rspec'
require './lib/longest_palindrome'

RSpec.describe 'longest_palindrome' do
  before :all do
      @s1 = 'babad'
      @out_1 = 'bab'
    
      @s2 = 'cbbd'
      @out_2 = 'bb'

      @s3 = "a"
      @out_3 = "a"

      @s4 = "aacabdkacaa"
      @out_4 = "aca"
    end

    it '1' do
      expect(longest_palindrome(@s1)).to eq(@out_1)
    end

    it '2' do
      expect(longest_palindrome(@s2)).to eq(@out_2)
    end
    
    it '3' do
      expect(longest_palindrome(@s3)).to eq(@out_3)
    end

    it '4' do
      expect(longest_palindrome(@s4)).to eq(@out_4)
    end
  end