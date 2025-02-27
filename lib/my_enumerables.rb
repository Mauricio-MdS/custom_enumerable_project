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

  def my_all?
    for element in self do
      return false unless yield element
    end
    true
  end

  def my_none?
    for element in self do
      return false if yield element
    end
    true
  end

  def my_count
    return length unless block_given?

    i = 0
    for element in self do
      i += 1 if yield element
    end
    i
  end

  def my_map
    array = []
    for element in self do
      array.push(yield element)
    end
    array
  end

  def my_inject(aggregator)
    for element in self do
      aggregator = yield aggregator, element
    end
    aggregator
  end
end
