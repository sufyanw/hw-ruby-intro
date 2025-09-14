# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  total = 0
  arr.each { |a| total += a }
  total
end

def max_2_sum(arr)
  if arr.count == 0
    0
  elsif arr.count == 1
    arr[0]
  else
    top_2 = arr.max(2)
    top_2[0] + top_2[1]
  end
end

def sum_to_n?(arr, n)
  return false if arr.empty? && n.zero?
  arr.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  return false if s.empty?

  vowels = %w[A E I O U]

  return false unless s.match?(/\A[A-Za-z]+\z/)
  !vowels.include?(s[0].upcase)

end

def binary_multiple_of_4?(s)
  return false if s.empty?

  return false unless s.match?(/\A[0-9]+\z/)
  s.to_i(2) % 4 == 0

end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)

    if isbn.nil? || isbn.strip.empty?
      raise ArgumentError, "ISBN cannot be empty"
    end

    if price <= 0
      raise ArgumentError, "Price must be greater than $0.00"
    end

    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%0.2f" % [price]
  end
end

