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
  # YOUR CODE HERE
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  # YOUR CODE HERE
end
