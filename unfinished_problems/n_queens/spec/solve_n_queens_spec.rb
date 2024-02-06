require 'rspec'
require './lib/solve_n_queens'

RSpec.describe 'solve_n_queens' do
  before :all do
    @n_1 = 4 
    @out_1 = [[".Q..","...Q","Q...","..Q."], ["..Q.","Q...","...Q",".Q.."]]

    @n_2 = 1
    @out_2 = [["Q"]]
  end

  it '1' do
    expect(solve_n_queens(@n_1)).to eq(@out_1)
  end

  it '2' do
    expect(solve_n_queens(@n_2)).to eq(@out_2)
  end
end