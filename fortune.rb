class Fortune
    def initialize()
        # CONTAINS: array of fortunes (strings)
        @fortunes = ["You are about to recieve good luck!", "You should make time for yourself.", "Yeah, I don't see anything. Sorry bud.", "Stop worrying about that thing.", 
            "You're a pretty cool person.", "You're doing the best you can :)", "You are about to recieved bad luck -- sorry.", "You will succeed in what you put your mind to.",
            "You are about to receieve good news!"]
    end
    
    def get_fortuneList()
        # PRUPOSE: return array of fortunes (strings)
        # RETURN: array of fortunes (strings)
        return @fortunes
    end
end