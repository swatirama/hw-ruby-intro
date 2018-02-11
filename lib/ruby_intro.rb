# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  f = 0
  #add each element of the array
  arr.each { |arr| f+=arr }
  return f
end

def max_2_sum arr
  # YOUR CODE HERE
  # return 0 if array size = 0
  if arr.length == 0
	return 0
  end
  #return first element if array size = 1
  if arr.length == 1
	return arr[0]
  end
  # find first and second largest elements
  arr = arr.sort
  first = arr[-1]
  second = arr[-2]
  return first+second
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0
	return false
  end

  i = 0
  while i < arr.length
	j = i+1
	diff = n - arr[i]
	# check if any two elements sum to n (a[i[, n - a[i])
	while j < arr.length
		if arr[j] == diff
			return true
		end
		j += 1
	end
	i += 1
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  # check if the first letter is a consonant (and no other character)
  if s.match(/^[bcdfghjklmnpqrstvwxyz]/i)
	return true
  else
	return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # check if string is empty
  if s==""
	return false
  end
  # check if all digits are 0
  if s.chars.all? {|x| x =~ /[0]/} 
  	return true
  end
  # check if given string is binary or not
  if s.chars.all? {|x| x =~ /[01]/}
	# then check last 2 digits (if 00: multiple of 4)
	if (s =~ /(.*)00$/)
		return true
	else
		return false
	end
  else
	return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
#
  # for getter/setter attributes
  attr_accessor :isbn, :price
  def initialize(isbn, price)
	# raise exception for invalid values
	if(isbn=="")
		raise ArgumentError.new("ISBN is empty")
	end
	if(price<=0)
		raise ArgumentError.new("Price is less than or equal to zero")
	end
	@isbn = isbn
	@price = price	
  end

  # print price as string
  def price_as_string
	return sprintf("$%.2f",@price)
  end
end
