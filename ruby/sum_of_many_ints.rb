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

def f(n, m)

  sum = 0

  counter = 1

  while( counter <= n) do
    sum = sum + counter % m
    counter += 1
  end

  return sum
end

puts f(58020, 22704)



