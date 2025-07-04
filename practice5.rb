a = "5"
b = "5"

p a === b
p a.equal?(b)
p 5.eql?(5.0)

arr1 = Array.new(3)
arr1 << 1;
arr1 << 2;
arr1 << 3;

p arr1;

arr2 = []

arr2 << 1;
arr2 << 2;
arr2 << 3;

p arr2;

hash = {"1" => "A", "1" => "B"}
p hash["1"]

class Animal1
    attr_accessor :name, :legs

    def initialize(name, legs)
        @name = name;
        @legs = legs;
    end

    def to_s
        "Animal #{name} has #{legs}."
    end
end

obj = Animal1.new('Horse', 4)
puts obj.name
puts obj.legs

puts obj

class Animal
  def speak(sound = "Hello")
    "Animal says: #{sound}"
  end
end

class Dog < Animal
  def speak(sound)
    super() 
  end
end

puts Dog.new.speak("Woof")

arr1 = [1, 2, 3]
arr2 = arr1
arr3 = arr1.dup

arr1 << 4

puts arr1.inspect
puts arr2.inspect
puts arr3.inspect

catch(:done) do
  [1, 2, 3, 4].each do |n|
    throw(:done) if n == 3
    puts n
  end
end

class Counter
  include Enumerable

  def initialize(numbers)
    @numbers = numbers
  end

  def each
    @numbers.each { |n| yield n }
  end
end

c = Counter.new([1, 2, 3])
puts c.map { |n| n * 2 }.inspect

def greet(name = "Guest", age)
  "Hello #{name}, age #{age}"
end

puts greet("Zee", 25)

def greet2(age,name = "Guest")
  "Hello #{name}, age #{age}"
end

puts greet2(25, "Zee")