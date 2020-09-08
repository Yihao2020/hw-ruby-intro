# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0,:+)
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else sum(arr.sort.last(2))
  end
end

def sum_to_n? arr, n
  if arr.length == 0
    return false
  else arr.permutation(2).any?{|a,b| a+b == n}
  end
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if not s[0] =~ /[[:alpha:]]/
    return false
  end
  if s[0].upcase =~ /['A','E','I','O','U']/
    return false
  else return true
  end
end

def binary_multiple_of_4? s
  if s.length == 0
    return false
  end
  if not s.chars.all? { |x| x =~ /[0,1]/}
    return false
  end
  if s.to_i % 4 == 0
    return true
  else return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize isbn, price
    @isbn = isbn
    @price = price
    raise ArgumentError if @isbn.length == 0 or @price <= 0
  end
  
  def price_as_string
    format("$%.2f",@price)
  end
end
