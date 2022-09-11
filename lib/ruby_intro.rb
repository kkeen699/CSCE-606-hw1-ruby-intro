# frozen_string_literal: true

# Part 1

def sum(arr)
  sum = 0
  arr.each{
    |i|
    sum += i
  }
  sum
end

def max_2_sum(arr)
  if arr.length() == 0
    0
  elsif arr.length == 1
    arr[0]
  else
    sum(arr.max(2))
  end
end

def sum_to_n?(arr, number)
  dic = {}
  arr.each{
    |i|
    if dic[i]
      return true
    else
      dic[number-i] = i
    end
  }
  return false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  string[0] =~ /[^aeiou\W]/i
end

def binary_multiple_of_4?(string)
  if not string =~ /[^10+-]/ and not string.empty?
    string.to_i(2) % 4 == 0
  end
end

# Part 3

# Object representing a book
class BookInStock
  def initialize(isbn, price)
    if isbn.empty? or price <= 0
      raise ArgumentError
    end

    @isbn = isbn
    @price = price
  end

  attr_accessor :isbn
  attr_accessor :price

  def price_as_string
    "$#{'%.2f' % @price}"
  end
end