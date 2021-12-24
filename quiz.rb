require_relative "scene"

class Quiz
    def initialize()
        #CONTAINS: 3 arrays containing: 1 question and 3 possible answers to that question (all strings)
        @question1 = []
        @question2 = []
        @question3 = []
        
    end

    def get_1()
        # PURPOSE: returns the first array for question 1
        # RETURNS: first array for question 1
        return @question1
    end

    def get_2()
        # PURPOSE: returns the first array for question 2
        # RETURNS: first array for question 2
        return @question2
    end
    
    def get_3()
        # PURPOSE: returns the first array for question 3
        # RETURNS: first array for question 3
        return @question3
    end
end

# SUBCLASSES OF QUIZ

class Quiz1 < Quiz
    def initialize()
        # PURPOSE: creates a new Quiz with the quiz one quetsions/answers arrays
        # CONTAINS: each question/answers arrays
        @question1 = ["Favorite color?", "Blue", "Red", "Yellow"]
        @question2 = ["Favorite food?", "Sushi", "Pizza", "Salad"]
        @question3 = ["Favorite form of exercise?", "Swimming", "Walking", "Running"]
    end
end

class Quiz2 < Quiz
    def initialize()
        # PURPOSE: creates a new Quiz with the quiz one quetsions/answers arrays
        # CONTAINS: each question/answers arrays
        @question1 = ["Choose one starter pokemon", "Bulbasaur", "Squirtle", "Charmander"]
        @question2 = ["Most favorite hobby?", "Walking outside in nature", "Going for a swim", "Sitting by a campfire"]
        @question3 = ["Most favorite color?", "Green", "Blue", "Red"]
    end
end

class Quiz3 < Quiz
    def initialize()
        # PURPOSE: creates a new Quiz with the quiz one quetsions/answers arrays
        # CONTAINS: each question/answers arrays
        @question1 = ["What is the first thing you do in an apocalypse?", "Get food", "Find shelter", "Find weapons"]
        @question2 = ["A person you don’t recognize asks for help, you..", "Give food", "Let them stay with you for a night", "Tell them to leave"]
        @question3 = ["Would you get a dog?", "Yes, for love and protection", "I’m more of a cat person", "No, they would give away my position"]
    end
end