n = 2
puts 'Hello'

a = 1;
b = 2; 
puts "#{a} #{b}"
puts self


# Functions Practice
def sum(a,b)
    a + b
end

puts sum(1,2);

# If-else conditions

grade = 50;

if(grade >= 90) 
    puts "Grade A+"
elsif(grade >= 70) 
    puts "Grade B"
else 
    puts "Grade C"
end

# Loops
# While Loop
# i = 0;
# while(i < 10) 
#     puts i;
#     i += 1;
# end

# for i in 1..10
#     puts i
# end

# i = 0;
# until i > 4
#     puts i
#     i += 1
# end


# each loop
# [1, 2, 3].each do |num|
#   puts num
# end



puts 2.even?
puts 1.next
# puts 1.+(2)

# Array
words = ["foo", "bar", "baz"]
puts words[1]

nums1 = Array.new([1,2,3,4,5,6])
# puts nums1
nums2 = [1,"A","C"]
# puts nums2
nums3 = Array.new
puts nums3

# puts nums1[1];
# puts nums1[-1];

# Shovel Operator << 
nums1 << "ABC"
# puts nums1

# p [1, "two", :three]   - To see the array structure

# Array Methods
# Map
p [1,2,3,4,5].map{ |i| i += 1 }
# Filter
p [2,3,4,5,6].select{|i| i % 2 == 0}

# Deleting Elements in Array
p [2,3,4,5,6].delete_if{|i| i % 2 == 0} 

p [2,3,4,5,6].delete(2) # return deleted elements









