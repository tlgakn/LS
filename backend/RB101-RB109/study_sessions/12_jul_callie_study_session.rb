=begin

# What is PEDAC?
- A strucutural approach to solving programming problems
- The PEDAC process isn't really linear

- Understanding the Problem
  - Goal: understand what you're being asked to do
  - Establish to rules/define the boundaries of the problem
  - What are the explicit and implicit requirements?
  - Ask clarifying questions (& check test cases) 

- Examples and Test Cases
  - Goal: understand more about what you're being asked to do 
  - Use these to confirm or refute assumptions
  - A good way to see the rules/boundaries but in actual code

- Data Structures
  - Goal: begin to think logically and solution-based about the problem
  - How we structure our data is closely related to our algorithm/how we want to go about solving our problem
  - Helps us reason with data more logically
  - What does our data look like when we get it? (input)
  - What does our data look like when we return it? (output?)
  - What does our data need to look like in between, or will it be the same?

- Algorithms
  - Goal: write out high level steps to solve the given problem
  - A logical sequence of steps for accomplishing a task or objective
  - Be abstract and high level (don't box yourself in)
  - You are programming-language-agnostic right now
  - Find a solution that works (don't worry about efficiency for now)
  - Can create substeps for different parts
  - Can even separate concerns into a helper method
  - You can (and should) return to your algorithm during the implementation stage to update
  
- Implementing a Solution in Code
  - Goal: translate the algorithm into your programming language of choice (Ruby)
  - Now is the time to use pseudo code (if you want) to act as a step between the algorithm and actual code
  - Goal of Pseudo Code: to explore the solution in the programming language
  - Then: follow the algorithm and code the solution
  - If you find that your algorithm doesn't work, return there FIRST and THEN fix your code
  - Good programmers often spend the least amount of time in this step, because they figured everything out in the other steps
    - (This comes with language fluency) 
  - Code with intent. Avoid hack and slash. 



- 
=end

# Example test case 

=begin

# 

# Note: don't use ruby built-in Array#uniq method & Array#uniq!

# PROBLEM
- We're using numbers (not strings or any other data type) --> integers
- Return a NEW array (don't need to mutate the original)
- Defining a method 
- The order of the sequence needs to stay the same
- We're removing duplicates 
  - What qualifies a duplicate? -> 2+ instances of an integer
- We're given an array of integers
- Can't use the `uniq` or `uniq!` methods


# EXAMPLES
p distinct([1]) #== [1]
p distinct([1, 2]) #== [1, 2]
p distinct([1, 1, 2]) #== [1, 2]
p distinct([1, 1, 1, 2, 3, 4, 5]) #== [1, 2, 3, 4, 5]
p distinct([1, 2, 2, 3, 3, 4, 4, 5, 6, 7, 7, 7]) #== [1, 2, 3, 4, 5, 6, 7]

- delete any integer that shows up more than once (delete those duplications)
- one element given is still inside an array


# DATA STRUCTURES
- array
- integers

# ALGORITHM
- 

# CODE



# Solution of other students

Look at the first element of the array.  Look at the second element.  

See if the first and second elements are equal.  

If the first and second number are equal, move to the third numbe and check if equal aswell.

Keep moving up in one index at a time to see if all the index values are equal.  Once the next one is NOT the same, delete ALL of the values except one.

Push that number into a NEW array.

Repeat for index 1 (which is the second element of the array)



Repeat until you have run out of indices to check.

Return the new array.

---------------------------


Given an array of integers, return a new array with the duplicates removed.

-- don't use uniq/!

  -- Using the first integer as a starting , iterate through the array.
    -- initialize an empty array
    -- loop: place the integer one time into the new array
    -- break out of the loop if the counter is equal to the length of the array
    -- 

  -- If there is a duplicate of a specific integer remove it.

  -- Return a new array with the duplicate integers removed.  

---------------------------

iterate over the array
return a new array
define a method that takes the array

input

output

---------------------------

# TA's solution

- Create a place to store the unique integers (result)
- Look at each integer, decide if it's a duplicate, and only put it in result if it is not
- Return the result that has all of the unique integers in it


---------------------------
# PSEUDO CODE (this helps to code easier)

- accept an array of integers as input (arr)
- Create new empty array (result)
- Iterate through original array (each)
- If new array includes element of original array
  - go to next element 
  if result.include?(element) next
- if new array does not include element of original array
  - push element into new array
- return result array at the end
=end

def distinct(arr)
  result = []
  
  arr.each do |element|
    next if result.include?(element)
    result << element
  end
  result
    
end



p distinct([1]) == [1]
p distinct([1, 2]) == [1, 2]
p distinct([1, 1, 2]) == [1, 2]
p distinct([1, 1, 1, 2, 3, 4, 5]) == [1, 2, 3, 4, 5]
p distinct([1, 2, 2, 3, 3, 4, 4, 5, 6, 7, 7, 7]) == [1, 2, 3, 4, 5, 6, 7]
