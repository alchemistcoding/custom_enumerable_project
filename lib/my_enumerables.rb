module Enumerable
  def my_each_with_index
    
    return to_enum(:my_each_with_index) unless block_given?
    
    j = 0

    for i in self
      yield(i , j)
      j += 1
    end

    self

  end

  def my_select
    
    return to_enum(:my_select) unless block_given?

    select_arr = []

    for i in self
     select_arr.push(i) if yield i
    end

    select_arr
  end

  def my_all?
    
    return to_enum(:my_all?) unless block_given?

    for i in self
      return false unless yield i
    end

    true
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    
    return to_enum(:my_each) unless block_given?

    for i in self
      yield i
    end

   self
  end

end
