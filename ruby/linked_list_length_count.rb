# 6 kyu
# Linked Lists - Length & Count

# 851297JDeBoltdiscuss
# VIM
# EMACS
# Instructions
# Output
# Linked Lists - Length & Count

# Implement Length() to count the number of nodes in a linked list.

# length(null) === 0
# length(1 -> 2 -> 3 -> null) === 3
# Implement Count() to count the occurrences of an integer in a linked list.

# count(null, 1) === 0
# count(1 -> 2 -> 3 -> null, 1) === 1
# count(1 -> 1 -> 1 -> 2 -> 2 -> 2 -> 2 -> 3 -> 3 -> null, 2) === 4
# I've decided to bundle these two functions within the same Kata since they are both very similar.

# The push() and buildOneTwoThree() functions do not need to be redefined.

# Related Kata in order of expected completion (increasing difficulty):
# Linked Lists - Push & BuildOneTwoThree
# Linked Lists - Length & Count
# Linked Lists - Get Nth Node
# Linked Lists - Insert Nth Node
# Linked Lists - Sorted Insert
# Linked Lists - Insert Sort
# Linked Lists - Append
# Linked Lists - Remove Duplicates
# Linked Lists - Move Node
# Linked Lists - Move Node In-place
# Linked Lists - Alternating Split
# Linked Lists - Front Back Split
# Linked Lists - Shuffle Merge
# Linked Lists - Sorted Merge
# Linked Lists - Merge Sort
# Linked Lists - Sorted Intersect
# Linked Lists - Iterative Reverse
# Linked Lists - Recursive Reverse

# Inspired by Stanford Professor Nick Parlante's excellent Linked List teachings.

class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

def length(node)

  if (node == nil)
    return 0;
  end

  count = 1;
  pointer = node


  while(pointer.next != nil)
    count += 1
    pointer = pointer.next
  end

  return count

end

def count(node, data)
  # Good Luck!
  target = data

  if (node == nil)
    return 0;
  end

  count = 0
  pointer = node

  while(pointer != nil)
    if (pointer.data == target)
      count += 1
    end
    pointer = pointer.next
  end

  return count

end