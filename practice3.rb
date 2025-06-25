def test_proc
  p = Proc.new { return "From Proc" }
  p.call
  return "After Proc"
end

puts test_proc


def test_lambda
    l = lambda {return "From Lambda"}
    l.call
    return "After Lambda"
end
puts test_lambda


def multiplier(factor)
  lambda { |n| n * factor }
end

double = multiplier(2)
triple = multiplier(3)

puts double.call(5)  # double contain lambda 
puts triple.call(5)  # triple contain lambda

def multiplierProc(factor)
  Proc { |n| n * factor }
end

double = multiplier(2) 
triple = multiplier(3)

puts double.call(5)  
puts triple.call(5)

def greet
  yield if block_given?
end

greet() {puts 'Hello'}

def calculation(a, b)
  yield(a, b)
end

puts calculation(5, 6) { |x, y| x + y } 

########################### Classes with Inheritance #####################################

class Animal
    def breathe
        'Animal can breathe'
    end
end

class Dog < Animal
    # Overriding
    def breathe
        'This is from Dog Class'
    end

    #super
    def breathe
        super + ' mean inhale and exhale'
    end
end

# super	All arguments received by current method
# super()	No arguments passed
# super(arg1, arg2)	Only those explicitly passed arguments

puts Dog.new.breathe

puts String.ancestors

p [4, [8], [15], [16, [23, 42]]].flatten
p [4, [8], [15], [16, [23, 42]]].flatten(2)

p [4, [8], [15], nil,[16, [23, 42]],nil].compact

p [4, 8, 15, 16, 23, 42].zip([42, 23, 16, 15, 8])

p [1,2,3,4,5,6,7].slice(2..10)

p [4, 8, 15].shift(2) # 2 is treaded as index

p arr = [4, 8, 15]
p arr.shift        
p arr.unshift(1)

p [177, 8978].pack("U*")

def operations(array)
  flat_array = array.flatten          
  compacted = flat_array.compact       
  even_count = compacted.count { |e| e.even? } 

  puts "Flattened: #{flat_array}"
  puts "Even count: #{even_count}"
  puts "Compacted: #{compacted}"
  puts "Joined: #{compacted.join(', ')}"
end

operations([[1,2,3,4],[5,6,3,2,4],[nil,1,nil,5,nil]])


# class Stack
#   def initialize(size)
#     @store = []
#     @max_size = size
#   end

#   def push(element)
#     return nil if full?
#     @store.push(element)
#   end

#   def pop
#     return nil if empty?
#     @store.pop
#   end

#   def size
#     @store.size
#   end

#   def look
#     return nil if empty?
#     @store.last
#   end

#   private

#   def full?
#     @store.size >= @max_size
#   end

#   def empty?
#     @store.empty?
#   end
# end

# stk = Stack.new(100)


begin
    raise Exception.new("Danger")
rescue Exception => e  
    puts e.message
    puts e.class.name
end


floor = [["blank", "blank"], ["gummy", "blank"]]

candy = catch(:found) do
  floor.each do |row|
    row.each do |tile|
      throw(:found, tile) if tile == "gummy"
    end
  end
end

puts candy  

# Multi Line String
<<~Text
sdfsdf
sdfasdf
sdfsdf
Textsdf
sdfs
Text

cat = Class.new do
    def speak
       puts 'Meow Meow'
    end
end

cat.new.speak()

dog = Module.new do
    def speak
        puts 'Bhaao Bhaao'
    end
end

obj = Object.new
obj.extend(dog)
obj.speak

enum = [0, -1, 3, 2, 1, 3].each
puts enum

# def execute_block
#   yield if block_given?
# end

# def pass_block(&block)
#   execute_block(&block)
# end

# pass_block { puts "Hello from the block!" }

# def test
#   yield 10
# end

# test do |x, y = 5|
#   puts "#{x} and #{y}"
# end

# def tricky(&block)
#   block.call
#   yield
# end

# tricky { puts "Running..." }

