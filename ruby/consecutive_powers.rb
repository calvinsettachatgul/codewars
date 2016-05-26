=begin
6 kyu
Take a Number And Sum Its Digits Raised To The Consecutive Powers And ....¡Eureka!!

50276raulbc777
VIM
EMACS
Instructions
Output
The number 89 is the first integer with more than one digit that fulfills the property partially introduced in the title of this kata. What's the use of saying "Eureka"? Because this sum gives the same number.

In effect: 89 = 8^1 + 9^2

The next number in having this property is 135.

See this property again: 135 = 1^1 + 3^2 + 5^3

We need a function to collect these numbers, that may receive two integers a, b that defines the range [a, b] (inclusive) and outputs a list of the sorted numbers in the range that fulfills the property described above.

Let's see some cases:

sum_dig_pow(1, 10) == [1, 2, 3, 4, 5, 6, 7, 8, 9]

sum_dig_pow(1, 100) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 89]
If there are no numbers of this kind in the range [a, b] the function should output an empty list.

sum_dig_pow(90, 100) == []
Enjoy it!!
FUNDAMENTALSCONTROL FLOWBASIC LANGUAGE FEATURESMATHEMATICSALGORITHMSNUMBERSFUNCTIONSSORTINGDECLARATIVE PROGRAMMING

=end

def sum_dig_pow(a, b)
  # your code here
	result = []
	for i in (a..b) do 
	   if (check_eureka(i))
	#	puts "its good"
		result.push(i.to_i)
           end
	  # puts i
	end
	return result
end

def check_eureka num_int
	
	# puts "eureka!"
	num_int_array = num_int.to_s.split("")
	# p num_int_array
	sum = 0;
	num_int_array.each_with_index do | num, index |
	    sum = sum + num.to_i**(index+1)
	#	puts num
	end
        # p sum	
	# p sum == num_int
	if (sum == num_int)
	#	puts "its true"
		return true		
	end
	return false	
end

 puts true == check_eureka(135)
 puts false == check_eureka(1234)


p sum_dig_pow(1, 10)
p sum_dig_pow(50, 150)
