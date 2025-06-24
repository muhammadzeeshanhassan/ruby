############# Practice Question -  Write a function to copy values < 4 to new Array #############################
def copyValues(arr) 
    newArr = [];
    arr.each do |i| 
        if(i < 4)
            newArr << i
        end
    end
    newArr
end

array = [1,2,3,8,5,4,6,9,1]
newArr = copyValues(array);
p newArr;


# with .select method

newArr = array.select{ |i| i < 4}
p newArr

########################################       Strings in Ruby        ####################################

# Single Quotes
# Double Quotes

name  = "Zeeshan Hassan"

puts 'This is my name #{name}' # Dynamic not Allowed
puts 'This is my name #{name} \n' # Escape Sequene not allowed

puts "This is my name #{name}" # Dynamic Allowed
puts "This is my name #{name} \n" #Escape Sequence is allowed

#### Methods

puts name.length()
puts name.size()

#### String Interpolation
a = 10;
b = 20;
puts "Sum of #{a} and #{b} is #{a+b}"

#### Searching in string
sentence = 'Iran Qatar and Iraq.'
puts sentence.length()
puts sentence.include?('USA')
puts sentence.start_with?('Iran')
puts sentence.end_with?('Iraq')

##### Index
puts sentence.index('a') # First Index
puts sentence.rindex('a') # Last Index

puts sentence.upcase()
puts sentence.downcase()
puts sentence.swapcase()

##### Advance Opeartions
sentence = 'ABC'

# split

p 'Fear is the path'.split(" ") 

# + , concat, <<

puts sentence + 'D'
puts sentence.concat('D')
puts sentence << 'D'

#### Replacing string

puts sentence.sub('D','A'); # Replace first occurance
puts sentence.gsub('A','D')

puts 'Zeeshan Is My Name'.match(/ ./)
puts 'Zeeshan Is My Name'.gsub(/[aeiou]/, '1')

########################################### Practice  Question 2  ###########################################

def process_string(str)
    words = str.split(" ");

    replacedWords = words.map { |i|
        i.gsub(/[aeiou]/, "*")
    }
    sentence = replacedWords.join(" ")
    sentence = sentence.downcase()

    "#{sentence} [#{sentence.length()}]"
end

sentence = process_string("My name is Muhammad Zeeshan Hassan")
p sentence


########################################   Booleans, If - Else,  Loops    ####################################

puts name == "Bob"
age = 20
puts age <= 35

unless age >= 20
    puts "You are not old enough to see something"
end

# Ternary Operator
puts age >= 18 ? "Adult" : "Minor"

# Recomended Loop in Ruby
# [1,2,3,4,5,6].each do |i|
#     puts i;
# end

# Only nil, false are falsy
# 0, [] {} are truthify
if nil
  puts "This will be printed because 0 is truthy in Ruby."
end

def ring_bell(n)
    n.times do
         "\a"
    end
end

ring_bell(5)


########################################   Hahes    ####################################

student_ages = {
  "Zee" => 21,
  "Hassan" => 22
}

menus = Hash.new("Not Aviliable") # Default Value
menus["Breakfast"] = "Puratha"
puts menus["Breakfast"]

restaurant_menu = {
  "Kabli Pulao" => 3,
  "Dal Makhani" => 4,
  "Tea" => 2
}

restaurant_menu.each do |a, b| 
    puts "#{a} => #{b}"
end

puts menus["Coffee"]

p restaurant_menu.keys  
p restaurant_menu.values 

pairs = [[:a, 1], [:b, 2]]
puts Hash[pairs]

# | Syntax             | Key Type         |
# |--------------------|------------------|
# | tea: 2             | :tea (Symbol)    |
# | "Tea": 2           | :"Tea" (Symbol)  |
# | "Tea" => 2         | "Tea" (String)   |


########################################   Practice Question 3      ####################################

inventory = {
  Daal: 50,
  :"Dal Makhani" => 20,
  Tea: 100
}

def operations(inventory)
  inventory.each do |item, stock|
    puts "#{item} #{stock}"
    inventory[item] = stock * 10
  end

  inventory[:coffee] ||= 0
  inventory[:coffee] += 30

  puts inventory.keys
end

operations(inventory)


########################################   Classes      ####################################

1.class       
"hello".class  
[].class       

 1.is_a?(Integer)
 "a".is_a?(String)

p 1.class.class

class Rectangle

    # Constructor
    def initialize(length, width)
    @length = length
    @width = width
    end

    # Perimeter Calculator
    def perimiter()
        2 * (@length + @width)
    end

    #Area Calculator
    def area()
        @length * @width
    end
end

# obj = Rectangle.new(1,2)
# puts obj.perimiter;


class Circle
    def initialize(radius)
        @radius = radius;
        @PI = 3.14
    end
    def area()
        @PI * (@radius * @radius)
    end
    
end
obj = Circle.new(5)
puts obj.area();


########################################   Methods      ####################################

def addTwo(a,b)
    a + b
end

# Default Parameter

def addTwo(a,b, c = 0)
    a + b + c 
end

def add(a, b, c)
  a + b + c
end

args = [1, 2, 3]
puts add(*args) # Splat *

def print(age, gender, *name)
    full_name = name.join(" ")
    "My name is #{full_name}, I am #{age} years old and identify as #{gender}."
end

puts print(21,"Male", "Zeeshan", "Hassan")



def calculate(a, b, options = {})
  if options[:operation] == "add"
    add(a, b)
  elsif options[:operation] == "subtract"
    subtract(a, b)
  else
    "Unknown operation"
  end
end

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

# puts calculate(5, 3, operation: "add")    
# puts calculate(10, 2, operation: "subtract") 
# puts calculate(4, 1, operation: "multiply")  


########################################  LAMBDAS & BLOCKS in Ruby  ######################################## 

l = lambda { "Do or do not" }
puts l.call()

l = lambda do |string|
  if string == "try"
     "There's no such thing" 
  else
     "Do or do not."
  end
end
puts l.call("try")

################################################## Modules ##################################################

module A 
  def ABC
    puts 'Hello'
  end
end

class B
  include A
  def ABC2
    puts 'Hello From Class B'
  end
end

class C
  include A
  def ABC3
    puts 'Hello From Class C'
  end
end

# puts B.new.ABC
# puts C.new.ABC


################################################## Practice ##################################################

module Greeting
    def say_hello
        'Hello My Friend'
    end
end

class Person
    include Greeting
end

class Robot 
    include Greeting
end

puts Person.new.say_hello
puts Robot.new.say_hello

module Library
  class Book
    def title
      "The Ruby Way"
    end
  end
end

book = Library::Book.new
puts book.title

################################################# Files ##################################################

File.open('disguise', 'w') do |file|
    file.write('Bar')
end

File.open("disguise", "r") do |file|
  puts file.read     # => Bar
end

def blocks
    puts "This is First Para"
    yield 
    puts "This is Second para"
    yield 
end
blocks{ puts "This is block"}