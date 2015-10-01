hash = {
    Arsen: 20,
    Petro: 18,
    Zahar: 30,
    Ira: 25,
}

puts "What would you like to do? (add) (edit) (show) (delete)"

choice = gets.chomp

case choice
    when "add"
    puts "What is your name?"
    name = gets.chomp
    if hash[name.to_sym] .nil?
		puts "What is your age?"
		age = gets.chomp
		hash[name.to_sym] = age.to_i
		puts "Thank you #{name}. Your record was added with age #{age}"
	else 
		puts "Name already exists!"
	end
	
	when "edit"
		puts "Which name would you like to edit?"
		name = gets.chomp
		if hash[name.to_sym] .nil?
			puts "Sorry. No such name to edit"
		else
			puts "Which new age would you like to input?"
			age = gets.chomp
			hash[name.to_sym] = age.to_i
		end
		
	when "delete"
		puts "Which record would you like to delete?"
		name = gets.chomp.to_sym
		if hash[name.to_sym] .nil?
			puts "Sorry. No such name in list!"
		else hash.delete(name)
		end
		
	when "show"
		hash.each do |name, age|
			puts "Name: #{name}; Age: #{age}"
		end
		puts hash
end








