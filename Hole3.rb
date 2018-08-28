# For numbers 1-100 print “FIZZ” 
# if the number is divisible by 3, 
# “BUZZ” if the number is divisible by 5, 
# “FIZZBUZZ” if the number is divisible by both 
# 3 and 5 otherwise print the number.

1.upto(100) do |i|
    if i % 5 == 0 and i % 3 == 0
      puts "FizzBuzz"
    elsif i % 5 == 0
      puts "Buzz"
    elsif i % 3 == 0
      puts "Fizz"
    else
      puts i
    end
  end