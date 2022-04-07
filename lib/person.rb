# your code goes here
# your code goes here
require 'pry'

class Person

    
    attr_reader :name, :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account=(num)
        @bank_account = if num.class == Integer || num.class == Float
                            num
                        else 
                            puts "This aint a number dawwwwg..."
                            #This line of code ensures that the current bank amount is returned, not nil (returned by puts)
                            self.bank_account
                        end
    end

    def happiness=(num)
        @happiness = if num > 10
                        puts "Yo #{self.name}, ya happiness is way to high mah duude. Bringing it back to 10."
                        10
                     elsif num < 0
                        puts "Yo #{self.name}, ya happiness is waaaay to low bruh. Bringing it to zero..."
                        0
                     else 
                        num
                     end
    end

    def hygiene=(num)
        @hygiene = if num > 10
                     puts "Yo #{self.name}, ya hygiene is way to high mah duude. Bringing it back to 10."
                     10
                   elsif num < 0
                      puts "Yo #{self.name}, ya hygiene is waaaay to low bruh. Bringing it to zero..."
                      0
                   else 
                      num
                   end
    end

    def clean?
        self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end
    
    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
    
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic === "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end


tom = Person.new("Tom")
ben = Person.new("Ben")
# binding.pry
