class MinStack
  attr_reader :stack, :mins
  
  def initialize()
    @stack = []
    @mins = []
  end

  def push(num)
    if @mins.empty?
      @stack << num
      @mins << num
    else
      current_min = [mins[-1], num].min
      @stack << num
      @mins << current_min
    end
    nil
  end


  def pop
    @stack = @stack[0...-1]
    @mins = @mins[0...-1]
    nil
  end

  def top
    @stack[-1]
  end

  def get_min
    @mins[-1]
  end
end