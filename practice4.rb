# # class A
# #   def initialize
# #     @value = 10
# #   end
# # end

# # a = A.new
# # puts a.instance_variable_get("@value")

# # Q: 2
# h = Hash.new(0)
# h[:a] += 1
# puts h

# # Q:3
# # def test
# #   puts yield if block_given? 
# # end

# # test { return "hello" }
# # puts "after block"


# module A
#   def self.included(base)
#     puts "#{base} included A"
#   end
# end

# class B
#   include A
# end

# class MyClass
#   def to_s; "to_s version"; end
#   def inspect; "inspect version"; end
# end

# obj = MyClass.new
# puts obj
# p obj

# time1 = Time.new
# p time1
# time2 = Time.now
# p time2


# range1 = (1..10).to_a
# range2 = ('bar'..'bat').to_a

# puts "#{range1}"
# puts "#{range2}"

# score = 70

# result = case score
#    when 0..40 then "Fail"
#    when 41..60 then "Pass"
#    when 61..70 then "Pass with Merit"
#    when 71..100 then "Pass with Distinction"
#    else "Invalid Score"
# end

# puts result

# if ((1..10) === 5)
#    puts "5 lies in (1..10)"
# end

# if (('a'..'j') === 'c')
#    puts "c lies in ('a'..'j')"
# end

# if (('a'..'j') === 'z')
#    puts "z lies in ('a'..'j')"
# end


# puts "Enter a value :"
# val = gets
# puts val


def greet
  yield if block_given?
end

greet { lambda {return "Hello"}  }
puts "After block"
