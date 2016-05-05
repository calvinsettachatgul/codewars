class Abbreviator

   def self.abbreviate(string)
     # abbreviate the string
     string_array = self.separate(string)

     string_array = string_array.map do | single_string |
        self.abbreviate_single(single_string)
     end

     return string_array.join()
   end

   def self.abbreviate_single(string)

     string_size = string.size

     new_string = ""

     if(string.size < 4)
         return string
     end

     new_string = string_size - 2

     new_string = string[0] + new_string.to_s + string[-1]

     return new_string

   end





   def self.separate (string)

     stringArray = []


     sub_string = ""
     string.each_char do | letter |

         if !(letter =~ /[A-Za-z]/)
             stringArray.push(sub_string)
             stringArray.push(letter)
             sub_string = ""
             # puts "found symbol"
         else
             sub_string += letter
         end


     end
      stringArray.push(sub_string)
     return stringArray
     end

end
p Abbreviator.abbreviate( "hello there calvin" )
p Abbreviator.separate( "hello there calvin" )