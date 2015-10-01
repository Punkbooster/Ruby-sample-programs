class Computer
   
   @@users = {}
   
   def initialize(username, password)
       @files = {}
       @username = username
       @password = password
       @@users[username] = password
   end
   
   def create(filename)
       @filename = filename
       time = Time.now
       @files[filename] = time
       puts "New file has been created! By: #{@username}, filename: #{@filename}, at: #{time}"
   end
   
   def Computer.get_users
      @@users 
   end
   
end

my_computer = Computer.new("Arsen", 2536)
my_computer.create("my_document.txt")
puts " Users: #{Computer.get_users}"


