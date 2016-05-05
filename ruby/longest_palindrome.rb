# 6 kyu
# longest_palindrome

# 901030kgashokdiscuss
# Train
# Details
# Solutions
# Discourse (69)
# Share this kata:
# Description:

# Longest Palindrome

# Find the length of the longest substring in the given string s that is the same in reverse.

# As an example, if the input was “I like racecars that go fast”, the substring (racecar) length would be 7.

# If the length of the input string is 0, return value must be 0.

# Example:

# "a" -> 1
# "aab" -> 2
# "abcde" -> 1
# "zzbaabcd" -> 4
# "" -> 0


def longest_palindrome s

  if s.size() == 0
    return 0
  end

  s_order = s.split("");
  s_reverse = s_order.reverse

  sub_string = []
  # puts s_order
  # puts s_reverse

  longest = 1
  longest = ["#{s_order[0]}"]

  s_order.each_with_index do | letter , i |

    (i..s.size).to_a.each do | j|

        substring = s_order[i..j]
        p substring
        if(substring == substring.reverse && substring.size >longest.size)
          longest = substring
        end
      end
  end

  return longest.size
end
s_test = "Hello there calvin"
s_test2 = "I like racecar"
puts longest_palindrome(s_test2)



# 0   1   2   3   4   5   6


# 6   5   4   3   2   1   0
# -6  -4  -2  -0  +2  +4  +6

# 0   1   2   3   4   5

# 5   4   3   2   1   0
# -5  -3 -1   +1  +3  +5

# 0 1

# 1 0
# -1 +1

# 0 1 2 3

# 3 2 1 0
# -3 -1 +1 +3