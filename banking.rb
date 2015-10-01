class Account
   
   attr_reader :name
   attr_reader :balance
   
   def initialize(name, balance=100)
       @name = name
       @balance = balance
   end
   
   def withdraw(pin_number, amount) 
       if pin_number = pin
           @balance -= amount
           puts "Withdraw #{amount}"
           puts "Ballance #{balance}"
       else
           puts pin_error
       end
   end
   
   def display_balance(pin_number)
       if pin_number = pin
           puts "Balance: $#{@balance}."
       else
           puts pin_error
       end
   end
   
   private
   
   def pin
       @pin = 1234
   end
   
   def pin_error
       return "Access denied: incorrect PIN."
   end
    
end

checking_account = Account.new("Arsen", 400)
checking_account.withdraw(1234, 20)







