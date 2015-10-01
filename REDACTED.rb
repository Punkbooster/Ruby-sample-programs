puts "Input text: "
text = gets.chomp

puts "Input redact: " 
redact = gets.chomp

words = text.split(" ")

words.each do |n|
    if n == redact
        print "REDACTED "
    else
        print n + " "
    end
end