# keep a record of the scoring criteria in a hash


# input is an array with 6 possible die scores
# compute frequency of the die rolls 1 - 6

#  compute a score based on the occurrance of these rolls

=begin
5 kyu
Greed is Good

99% of 76795 of 2905JulianNicholls1 Issue Reported
Ruby
MRI 2.3.0
VIM
EMACS
Instructions
Output
Greed is a dice game played with five six-sided dice. Your mission, should you choose to accept it, is to score a throw according to these rules. You will always be given an array with five six-sided dice values.

 Three 1's => 1000 points
 Three 6's =>  600 points
 Three 5's =>  500 points
 Three 4's =>  400 points
 Three 3's =>  300 points
 Three 2's =>  200 points
 One   1   =>  100 points
 One   5   =>   50 point
A single die can only be counted once in each roll. For example, a "5" can only count as part of a triplet (contributing to the 500 points) or as a single 50 points, but not both in the same roll.

Example scoring

 Throw       Score
 ---------   ------------------
 5 1 3 4 1   50 + 2 * 100 = 250
 1 1 1 3 1   1000 + 100 = 1100
 2 4 4 5 4   400 + 50 = 450
ALGORITHMS

Poweredby_qualified
Your Solution:

1
def score( dice )
2
  # Fill me in!
3
end
Your Test Cases:

1
describe "Scorer Function" do
2
  it "should value this as worthless" do
3
    Test.expect( score( [2, 3, 4, 6, 2] ) == 0,   "Should be 0 :-(" );
4
  end
5
  
6
  it "should value this triplet correctly" do
7
    Test.expect( score( [2, 2, 2, 3, 3] ) == 200, "Should be 200" );
8
  end
9
  
10
  it "should value this mixed set correctly" do
11
    Test.expect( score( [2, 4, 4, 5, 4] ) == 450, "Should be 450" );
12
  end
13
end
SKIPUNLOCK SOLUTIONSRESETRUN TESTSSUBMIT

=end

puts "solution to greed is good"



def score ( dice)
	# fill me in
	score_hash = {
			[ 1, 3] => 1000,
			[ 6, 3] => 600,
			[ 5, 3] => 500,
			[ 4, 3] => 400,
			[ 3, 3] => 300,
			[ 2, 3] => 200,
			[ 1, 1] => 100,
			[ 5, 1] => 50,
			}

	puts score_hash
end

def score_valid( roll_value, frequency_hash, score_hash)
	if( frequency_hash[roll_value] >= 
end

def count( dice_array)
	roll_frequency = {}

	dice_array.each do | roll |
		if(roll_frequency[roll] == nil )
			roll_frequency[roll] = 1
		else
			roll_frequency[roll] += 1
		end
	end

	roll_frequency
end
test_roll = [1,2,3,4,5,6]
score( test_roll )

score_count = count( test_roll )

puts score_count
