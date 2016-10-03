

def update_animal
  zoo = {}
  zoo = {"lions"=> 5, "bears"=>6, "elephants"=>10, "wolves"=>20, "kangaroos"=>17}
puts "What animal would you like to update?"
animal = gets.chomp.downcase
animal_list = zoo.keys
while animal_list.include?(animal) != true
puts "That is not one of the animals in the inventory, please choose an animal that is in the inventory list."
animal = gets.chomp.downcase
end
puts "How many #{animal} are there now?"
new_number = gets.chomp.to_i
puts "Thank you, I will update the inventory."

zoo[animal] = new_number
puts zoo
end

def add_animal
  zoo = {}
  zoo = {"lions"=> 5, "bears"=>6, "elephants"=>10, "wolves"=>20, "kangaroos"=>17}
puts "What is the new animal that you need to add?"
new_animal = gets.chomp.downcase
animal_list = zoo.keys
puts "How many #{new_animal} are there?"
new_count = gets.chomp.downcase

zoo[new_animal] = new_count
puts zoo
end


def remove_animal
  zoo = {}
  zoo = {"lions"=> 5, "bears"=>6, "elephants"=>10, "wolves"=>20, "kangaroos"=>17}
puts "What is the animal that you would like to remove?"
delete_animal = gets.chomp.downcase
animal_list = zoo.keys
while animal_list.include?(delete_animal) != true
puts "That is not one of the animals in the inventory, please choose an animal that is in the inventory list."
delete_animal = gets.chomp.downcase
end
zoo.delete(delete_animal)
puts "Thank you, #{delete_animal} has been removed."
puts zoo
end

zoo = {}
zoo = {"lions"=> 5, "bears"=>6, "elephants"=>10, "wolves"=>20, "kangaroos"=>17}
puts "Here is your current inventory"
puts zoo
puts "Would you like to update, add, or remove an item in the inventory?"
choice = gets.chomp.downcase

if choice == "add"
  add_animal
elsif choice == "update"
  update_animal
else
  remove_animal
end
