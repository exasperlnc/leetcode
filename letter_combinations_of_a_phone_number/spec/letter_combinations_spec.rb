require 'rspec'
require './lib/letter_combinations'

RSpec.describe 'letter combinations' do
  before :all do
    @d1 = "23"
    @out_1 = ["ad","ae","af","bd","be","bf","cd","ce","cf"]

    @d2 = ""
    @out_2 = []

    @d3 = "2"
    @out_3 = ["a","b","c"]
  end

  it '1' do
    expect(letter_combinations(@d1)).to eq(@out_1)
  end

  it '2' do
    expect(letter_combinations(@d2)).to eq(@out_2)
  end

  it '3' do
    expect(letter_combinations(@d3)).to eq(@out_3)
  end
end