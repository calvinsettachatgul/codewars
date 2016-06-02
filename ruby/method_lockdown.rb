=begin
4 kyu
Method Lockdown

27612JoshBrodieNZ
VIM
EMACS
Instructions
Output
You're a kata author trying to prevent code warriors from using Ruby's built in random number generators because you want them to implement their own.

Prevent the usage of random number generators by preventing calls to rand and srand in both the Kernel module and the Random class. Also prevent sneaky types from using sample and shuffle on arrays to get random numbers.

The test will require calls to these methods to throw an error.

Extra points for discussion about ways to call random even after running solutions which pass the test.
FUNDAMENTALSMETHODSFUNCTIONSOBJECT-ORIENTED PROGRAMMINGCONTROL FLOWBASIC LANGUAGE FEATURESCLASSESMODULESMETAPROGRAMMINGADVANCED LANGUAGE FEATURES
=end

# test for monkey patching class Array

class Array
	def say_hello
		print "hello"
	end
end

#Use this space to lock down the random number generators.

class Object
	def good_going
	  return "good_going"
        end
end

class Random
end

class Array
  def say_hello
  	"hello"
  end
  
  def sample
  	 raise StandardError 
  end
  
  def shuffle
  	raise StandardError 
  end
  
end


[1,2,3].say_hello

[1,2,3].sample
