require './lib/min_stack'
require 'rspec'

RSpec.describe MinStack do
  
  it 'exists' do
    stack = MinStack.new()

    expect(stack).to be_a(MinStack)
    expect(stack.stack).to eq([])
  end

  it 'pushe' do
    stack = MinStack.new()

    stack.push(5)

    expect(stack.stack).to eq([5])
  end

  it 'pop' do
    stack = MinStack.new()

    stack.push(5)

    stack.push(8)

    stack.pop

    expect(stack.stack).to eq([5])
  end

  it 'top' do
    stack = MinStack.new()

    stack.push(8)

    expect(stack.top).to eq(8)
  end

  it 'get_min' do
    stack = MinStack.new()

    stack.push(5)

    stack.push(7)
    
    stack.push(-3)

    expect(stack.get_min).to eq(-3)

    stack.pop

    expect(stack.get_min).to eq(5)

    stack.pop

    expect(stack.get_min).to eq(5)
  end
end