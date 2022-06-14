#with positional argguments:
def print_name_and_greeting(greeting, name)
  puts "#{greeting}, #{name}"
end

print_name_and_greeting("'sup", "Hillary")

#another example of positional arguments:
def happy_birthday(name, current_age)
  puts "Happy Birthday, #{name}"
  current_age += 1
  puts "You are now #{current_age} years old"
end

happy_birthday("Justine Kenyansa", 27)

#using keyword arguments
def happy_birthday(name: "Justine Kenyansa", current_age: 27)
    puts "happy birthday, #{name}"
    current_age += 1
    puts "You are now #{current_age} years old"
end