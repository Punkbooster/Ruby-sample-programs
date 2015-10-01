if 4 < 12
	puts "Correct"
end

puts "that is correct" if 14 < 12

puts "I like cheese!" unless 5 < 20

#Ternary conditional expression

if 40 < 20 
	puts "yes it is."
else
	puts "no it isn't"
end

puts 40 < 200 ? "Yes it is." : "No it is not!"

"How are you feeling today?"

feeling - gets.chomp

case feeling
	when "happy"
	puts "So glad to hear that"
	
	when "sad"
	puts "Im sorry to hear that."

	when "tired"
	puts "you should take a nap."
	
	else
	puts "I dont understand that feeling"
end
	
	
	
	
	
	
	
	
	
	
	
	
	
	