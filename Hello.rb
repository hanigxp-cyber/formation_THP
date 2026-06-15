=begin
def say_hello(first_name)
  puts "Hello, #{first_name} !"
end

say_hello("Hani")
=end

def say_hello(first_name)
  puts "Hello, #{first_name} !"
end

def ask_first_name
  puts "What's ur name ?"
  first_name = gets.chomp
  return first_name
end

name = ask_first_name
say_hello(name)