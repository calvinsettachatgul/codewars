# 7 kyu
# Disemvowel Trolls

# 5710347osuushidiscuss
# VIM
# EMACS
# Instructions
# Output
# Trolls are attacking your comment section!

# A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.

# Your task is to write a function that takes a string and return a new string with all vowels removed.

# For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".
# FundamentalsStringsRegular ExpressionsDeclarative ProgrammingAdvanced Language Features
# Supported Ruby version is 2.1.6

def disemvowel(str)
    vowels = {"a"=>  true,
  	          "e"=> true,
         	    "i"=> true,
              "o"=> true,
      	      "u"=> true
             }

  new_str_arr = str.split("")

  new_str = new_str_arr.map do | letter |
    	if(vowels[letter.downcase])
    	   ""
      else
         letter
      end

  end

  return new_str.join("")

end


str = "Hello calvin"

puts disemvowel(str)