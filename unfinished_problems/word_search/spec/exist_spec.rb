require 'rspec'
require './lib/exist'

RSpec.describe 'word search' do
  before :all do
    @board_1 = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]]
    @word_1 = "ABCCED"
    @out_1 = true

    @board_2 = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]]
    @word_2 = "SEE"
    @out_2 = true

    @board_3 = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]]
    @word_3 = "ABCB"
    @out_3 = false
  end

  it '1' do
    expect(exist(@board_1, @word_1)).to eq(@out_1)
  end

  it '2' do
    expect(exist(@board_2, @word_2)).to eq(@out_2)
  end

  it '3' do
    expect(exist(@board_3, @word_3)).to eq(@out_3)
  end
end