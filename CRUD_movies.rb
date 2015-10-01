movies = {
    gone_girl: 5,
    dark_knight: 5,
    whiplash: 3
    }
    
puts "What would you like to do? \n -- add \n -- update \n -- display \n -- delete"    
choice = gets.chomp.downcase

case choice
    when "add"
        puts "Please input the title of the film:"
        title = gets.chomp.to_sym
        if movies[title.to_sym].nil?
            puts "Please input the rating of the film:"
            rating = gets.chomp.to_i   
            movies[title] = rating
        else
            puts "Movie already exists with a rating of #{rating}"
        end
        
    when "update"
        
        puts "Which movie would you like to update?"
        title = gets.chomp
        if movies[title.to_sym].nil?
            puts "No such movie!"
        else
            puts "Alright, what is the new rating for #{title}"
            rating = gets.chomp
            movies[title.to_sym] = rating.to_i
        end
        
    when "display"
        
        movies.each { |title, rating| puts "#{title}: #{rating}" }
        
    when "delete"
        
        puts "Which film would you like to delete?"
        title = gets.chomp
        if movies[title.to_sym].nil?
            puts "No such movie!"
        else
            movies.delete(title.to_sym)
        end
        
    else
        puts "No such action!"
end

puts movies








