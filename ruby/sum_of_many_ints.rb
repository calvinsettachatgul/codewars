###  Sum of many ints 6kyu

# Write this function



# for i from 1 to n, do i % m and return the sum

# f(n=10, m=5) // returns 20 (1+2+3+4+0 + 1+2+3+4+0)
# You'll need to get a little clever with performance, since n can be a very large number

# won't work for n very large due to space requirements
# def f(n, m)

#   sum = 0
#   arr = (1..n).to_a

#   arr.each do |number|
#     sum = sum + number % m
#   end

#   return sum
# end

# still doesn't work
# def f(n, m)

#   sum = 0

#   counter = 1

#   while( counter <= n) do
#     sum = sum + counter % m
#     counter += 1
#   end

#   return sum
# end

def f(n, m)

  partial_sum = 0
  partial_sum_counter = 1
  while(partial_sum_counter < m) do
    partial_sum = partial_sum + partial_sum_counter
    # puts partial_sum_counter
    partial_sum_counter += 1
  end


  partial_sum_repeat = n/m
  puts "partial_sum_repeat is"
  puts partial_sum_repeat

  partial_sum_remainder = n % m
  puts "partial_sum_remainder is"
  puts partial_sum_remainder

  remainder_sum = 0
  partial_sum_pointer = partial_sum_remainder

  partial_sum_remainder.times do
    remainder_sum += partial_sum_pointer
    partial_sum_pointer -= 1
  end

  return partial_sum_repeat * partial_sum + remainder_sum

end

puts f(10, 5)

# sum of 1 to m-1



puts f(58020, 22704)



