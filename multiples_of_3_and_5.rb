# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

class MultiplesOf3And5
  attr_accessor :number

  def initialize(number)
    @number = number
    sum_of_multiples
  end

  def sum_of_multiples
    sum = 0
    number.downto(0) { |num| sum += num if num % 3 == 0 || num % 5 == 0 }
    puts sum
  end 
end

MultiplesOf3And5.new(999) # => 233168