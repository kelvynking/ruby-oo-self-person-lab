class Person
    attr_accessor  :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    

    def happiness=(num)
        if num > 10
            @happiness = 10
        elsif num < 0
            @happiness = 0
        else
            @happiness = num
        end
    end

    def hygiene=(num)
        if num > 10
            @hygiene = 10
        elsif num < 0
            @hygiene = 0
        else
            @hygiene = num
        end
    end

    def happy?
        @happiness > 7 ? true : false
    end 

    def clean?
        @hygiene >7 ? true : false
    end

    def get_paid(salary)
        @bank_account += salary
        'all about the benjamins'
    end

    def take_bath
       self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        [friend, self].each {|obj| obj.happiness += 3}
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        objects =  [person, self]
        if topic == "politics"
           objects.each {|o| o.happiness -= 2}
           first, second = ["partisan", "lobbyist"]
        elsif topic == "weather"
            objects.each {|o| o.happiness += 1}
            first, second = ["sun", "rain"]
        end
            first ||= "blah"
            second ||= "blah"
            base_string = "blah blah #{first} blah #{second}"
    end
end