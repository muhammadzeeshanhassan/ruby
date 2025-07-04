############################### Random Password Generator #########################################

def get_user_input(prompt)
  print prompt
  gets.chomp
end

def generate_password(length, use_upper, use_lower, use_digits, use_symbols)
  upper = ('A'..'Z').to_a
  lower = ('a'..'z').to_a
  digits = ('0'..'9').to_a
  symbols = %w[! @ # $ % ^ & * ( ) - _ + =]

  pool = []
  pool += upper if use_upper
  pool += lower if use_lower
  pool += digits if use_digits
  pool += symbols if use_symbols

  return "Please select at least one character type." if pool.empty?

  password = Array.new(length) { pool.sample }.join
end


length = get_user_input("Enter password length: ").to_i
use_upper = get_user_input("Include uppercase letters? (y/n): ").downcase == 'y'
use_lower = get_user_input("Include lowercase letters? (y/n): ").downcase == 'y'
use_digits = get_user_input("Include digits? (y/n): ").downcase == 'y'
use_symbols = get_user_input("Include symbols? (y/n): ").downcase == 'y'

puts "\nGenerated Password: #{generate_password(length, use_upper, use_lower, use_digits, use_symbols)}"
