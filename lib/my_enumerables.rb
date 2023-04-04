module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for element in self do 
      yield element
    end
    self
  end

  def my_each_with_index
    0.upto(length - 1) do |index|
      yield self[index], index
    end
    self
  end

  def my_select
    array = []
    for element in self do
      array.push(element) if yield element
    end
    array
  end
end
