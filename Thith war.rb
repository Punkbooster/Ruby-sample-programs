print "Please input something."

user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
    user_input.gsub!(/s/, "th")
    puts "Here it is: #{user_input}"
elsif user_input.to_s.empty?
    puts "Sorry, no text"    
else
    puts "Theres no s in your string"
end