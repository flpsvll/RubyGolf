# HOLE 1: Sum an array


# Create a method that 
# takes in an array, sums the array 
# then returns the array and the sum.


def Array nums
    nums.map(&:to_i).inject(&:+)
end

puts Array ["1", "2", "3"]

