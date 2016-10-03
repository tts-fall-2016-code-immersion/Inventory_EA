require 'active_support/inflector'
def update_animal (a)
  puts "What animal would you like to update?"
  animal = gets.chomp.downcase.pluralize
  animal_list = a.keys
    while animal_list.include?(animal) != true
      puts "That is not one of the animals in the inventory, please choose an animal that is in the inventory list."
      animal = gets.chomp.downcase
    end
  puts "How many #{animal} are there now?"
  new_number = gets.chomp.to_i
  puts "Thank you, the inventory has been updated, please see below."
  a[animal] = new_number
  puts a
end

def add_animal (a)
  puts "What is the new animal that you need to add?"
  new_animal = gets.chomp.downcase.pluralize
  animal_list = a.keys
  puts "How many #{new_animal} are there?"
  new_count = gets.chomp.to_i
  a[new_animal] = new_count
  puts "Thank you, #{new_animal} has been added. Please see the updated inventory below."
  puts a
end


def remove_animal (a)
  puts "What is the animal that you would like to remove?"
  delete_animal = gets.chomp.downcase.pluralize
  animal_list = a.keys
    while animal_list.include?(delete_animal) != true
        puts "That is not one of the animals in the inventory, please choose an animal that is in the inventory list."
        delete_animal = gets.chomp.downcase
    end
  a.delete(delete_animal)
  puts "Thank you, #{delete_animal} has been removed. Please see the updated inventory below."
  puts a
end

zoo = {}
zoo = {"lions"=> 5, "bears"=>6, "elephants"=>10, "wolves"=>20, "kangaroos"=>17}

puts "Here is your current inventory:"
puts zoo


exit = 0
while exit == 0
  puts "Would you like to update, add, or remove an item, or quit?"
  choice = gets.chomp.downcase
if choice == "add"
  add_animal (zoo)
elsif choice == "update"
  update_animal (zoo)
elsif choice == "remove"
  remove_animal (zoo)
elsif choice == "quit"
puts "Thank you for your updates!"
  exit = 7
end
end
