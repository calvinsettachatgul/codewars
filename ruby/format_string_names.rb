# Given: an array containing hashes of names

# Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.

# Example:

# list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# # returns 'Bart, Lisa & Maggie'

# list([ {name: 'Bart'}, {name: 'Lisa'} ])
# # returns 'Bart & Lisa'

# list([ {name: 'Bart'} ])
# # returns 'Bart'

# list([])
# # returns ''
# Note: all the hashes are pre-validated and will only contain A-Z, a-z, '-' and '.'.
# FundamentalsStringsFormattingAlgorithms
# Supported Ruby version is 2.1.6

def list names
  # TODO
  list_size = names.size

  if(list_size == 1)
    return names[0][:name]
  end

  name_string = ""

  names.each_with_index do | person, order |
    if(order == list_size - 1)
      name_string = name_string + " & " + person[:name]
    elsif (order == 0)
      name_string = name_string + person[:name]
    else
      name_string = name_string + ", " + person[:name]
    end
    puts person[:name]
    puts order
  end

  return name_string
end

puts list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])


