class MinStack
  attr_reader :stack, :mins
  
  def initialize()
    @stack = []
    @mins = []
  end

  def push(num)
    if stack.empty? 
      @stack << [num, num]
    else
      current_min = [stack[-1][1], num].min
      @stack << [num, current_min]
    end
  end


  def pop
    @stack = @stack[0...-1]
  end

  def top
    @stack[-1][0]
  end

  def get_min
    @stack[-1][1]
  end
end