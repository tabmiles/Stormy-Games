# SUBCLASSES OF Scene

class Quiz1Scene1 < Scene
    def initialize(t1, t2, t3, t4)
        # TAKES: 4 different text (string) for each Option
        # CONTAINS: 5 Options (3-4 are selections, 1 is an exit selection), and 1 Character that moves, 1 Fish (calls to create a speech bubble), and 1 FishingLine
        super(t1, t2, t3, t4)

        # putting the fish and speech bubble in a specific spot for this scene
        @fish.bubble_change(350, 475, 250, 100)
        @fish.new_x(600)
    end

    def hit()
        # PURPOSE: checks which Option the Character has hit, then returns specific id for next scene, and remove all: Options, Texts, Character, FishingLine, Fish (+ speech bubble)
        # RETURNS: specific id to store answer and to move to currect next scene 
        if @square.hit(@option1) then
            puts "A chosen"
            self.remove_all()
            return "1a1"
        end
        if @square.hit(@option2) then
            puts "B chosen"
            self.remove_all()
            return "1b1"
        end
        if @square.hit(@option3) then
            puts "C chosen"
            self.remove_all()
            return "1c1"
        end
        if @square.hit(@exit) then
            puts "EXIT"
            self.remove_all()
            return "exit"
        end
    end
end

class Quiz1Scene2 < Scene
    def initialize(t1, t2, t3, t4)
        # TAKES: 4 different text (string) for each Option
        # CONTAINS: 5 Options (3-4 are selections, 1 is an exit selection), and 1 Character that moves, 1 Fish (calls to create a speech bubble), and 1 FishingLine
        super(t1, t2, t3, t4)

        # putting the fish and speech bubble in a specific spot for this scene
        @fish.bubble_change(350, 475, 250, 100)
        @fish.new_x(600)
    end

    def hit()
        # PURPOSE: checks which Option the Character has hit, then returns specific id for next scene, and remove all: Options, Texts, Character, FishingLine, Fish (+ speech bubble)
        # RETURNS: specific id to store answer and to move to currect next scene 
        if @square.hit(@option1) then
            puts "A chosen"
            self.remove_all()
            return "1a2"
        end
        if @square.hit(@option2) then
            puts "B chosen"
            self.remove_all()
            return "1b2"
        end
        if @square.hit(@option3) then
            puts "C chosen"
            self.remove_all()
            return "1c2"
        end
        if @square.hit(@exit) then
            puts "EXIT"
            self.remove_all()
            return "exit"
        end
    end
end

class Quiz1Scene3 < Scene
    def initialize(t1, t2, t3, t4)
        # TAKES: 4 different text (string) for each Option
        # CONTAINS: 5 Options (3-4 are selections, 1 is an exit selection), and 1 Character that moves, 1 Fish (calls to create a speech bubble), and 1 FishingLine
        super(t1, t2, t3, t4)

        # putting the fish and speech bubble in a specific spot for this scene
        @fish.bubble_change(350, 475, 350, 100)
        @fish.new_x(700)
    end

    def hit()
        # PURPOSE: checks which Option the Character has hit, then returns specific id for next scene, and remove all: Options, Texts, Character, FishingLine, Fish (+ speech bubble)
        # RETURNS: specific id to store answer and to move to currect next scene 
        if @square.hit(@option1) then
            puts "A chosen"
            self.remove_all()
            return "1a3"
        end
        if @square.hit(@option2) then
            puts "B chosen"
            self.remove_all()
            return "1b3"
        end
        if @square.hit(@option3) then
            puts "C chosen"
            self.remove_all()
            return "1c3"
        end
        if @square.hit(@exit) then
            puts "EXIT"
            self.remove_all()
            return "exit"
        end
    end
end

class Quiz1Results < Scene
    def initialize(t1, t2, t3, t4)
        # TAKES: 4 different text (string) for each Option
        # CONTAINS: 5 Options (3-4 are selections, 1 is an exit selection), and 1 Character that moves, 1 Fish (calls to create a speech bubble), 1 FishingLine, and 'r' for result (string)
        super(t1, t2, t3, t4)
        @r = ""

        # putting the speech bubble in a specific spot for this scene
        @fish.bubble_change(500, 350, 400, 200)
    end

    def get_results(arr)
        # PURPOSE: determine and show results of quiz
        # TAKES: one array with answers gathered within main
        # CONTAINS: each answer for each question
        
        # debugging purposes
        puts "Total answers are: #{$quiz1Answers}"
        a1 = arr[0]
        a2 = arr[1]
        a3 = arr[2]
        puts "#{a1}, #{a2}, #{a3}"

        # determining the result...
        if a1=="1a1" && a2=="1a2" && a3=="1a3" then
            @r = "A fish!"
        elsif a1=="1b1" && a2=="1b2" && a3=="1b3" then
            @r = "A dog!"
        elsif a1=="1c1" && a2=="1c2" && a3=="1c3" then
            @r = "A hamster!"
        elsif a1=="1a1" && a2=="1b2" && a3 =="1c3" then
            @r = "You should not get a pet."
        elsif a2=="1a2" && a3=="1a3" then
            @r = "A lizzard."
        elsif a2=="1a2" && a3=="1b3" then
            @r = "A cat."
        elsif a2=="1a2" && a3=="1c3" then
            @r = "A fox!"
        elsif a2=="1b2" && a3=="1a3" then
            @r = "A goldfish."
        elsif a2=="1b2" && a3=="1b3" then
            @r = "A bear."
        elsif a2=="1b2" && a3=="1c3" then
            @r = "Two dogs!"
        elsif a2=="1c2" && a3=="1a3" then
            @r = "A turtle!"
        elsif a2=="1c2" && a3=="1b3" then
            @r = "A deer."
        elsif a2=="1c2" && a3=="1c3" then
            @r = "A horse."
        else
            @r = "You shouldn't get a pet."
        end

        # altering Option 2 and 4 to show quiz title and result of quiz
        @option4 = Option.new(535, 415, 0, 0, @r)
        @option2 = Option.new(300, 50, 0, 0, "What should be your new pet?")
        @option2.changeTextSize(30)
        @option4.changeTextSize(30)

        return @r
    end

    def hit()
        # PURPOSE: if Character hits the exit Option then reutrn id "exit" to go back to home page and remove all: Options, Texts, Character, FishingLine, Fish (+ speech bubble)
        # RETURNS: id "exit"
        if @square.hit(@exit) then
            puts "EXIT"
            self.remove_all()
            return "exit"
        end
    end
end