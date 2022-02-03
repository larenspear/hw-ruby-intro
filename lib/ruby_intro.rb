# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.empty?
    return 0
  else
    arr.reduce(:+)
  end
end

def max_2_sum arr
  if arr.empty?
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  return arr.sort[-1] + arr.sort[-2]
end

def sum_to_n? arr, n
  if arr.empty? or arr.length == 1 then
    return false
  end
  hmap = {}
  arr.each do |item|
    complement = n - item
    return true unless hmap[complement].nil?
    hmap[item] = 1
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  if s !~ /[0-1]{1,}/
    return false
  else
    return s =~ /^(?:[10]*00|00?)$/
  end
end

# Part 3

class BookInStock
  def initialize(isbn,price)
    if isbn == '' or price <= 0
      raise ArgumentError.new()
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string
    return "$#{'%.2f' % @price}"
  end
end
