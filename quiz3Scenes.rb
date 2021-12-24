# SUBCLASSES OF Scene

class Quiz3Scene1 < Scene
    def initialize(t1, t2, t3, t4)
        # TAKES: 4 different text (string) for each Option
        # CONTAINS: 5 Options (3-4 are selections, 1 is an exit selection), and 1 Character that moves, 1 Fish (calls to create a speech bubble), and 1 FishingLine
        super(t1, t2, t3, t4)

        # putting the fish and speech bubble in a specific spot for this scene, and editing the rectangle for collision for Option 2 and 3
        @fish.bubble_change(350, 475, 550, 100)
        @fish.new_x(850)
        @option2.changeWidth(110)
        @option3.changeWidth(130)
    end

    def hit()
        # PURPOSE: checks which Option the Character has hit, then returns specific id for next scene, and remove all: Options, Texts, Character, FishingLine, Fish (+ speech bubble)
        # RETURNS: specific id to store answer and to move to currect next scene 
        if @square.hit(@option1) then
            puts "A chosen"
            self.remove_all()
            return "3a1"
        end
        if @square.hit(@option2) then
            puts "B chosen"
            self.remove_all()
            return "3b1"
        end
        if @square.hit(@option3) then
            puts "C chosen"
            self.remove_all()
            return "3c1"
        end
        if @square.hit(@exit) then
            puts "EXIT"
            self.remove_all()
            return "exit"
        end
    end
end

class Quiz3Scene2 < Scene
    def initialize(t1, t2, t3, t4)
        # TAKES: 4 different text (string) for each Option
        # CONTAINS: 5 Options (3-4 are selections, 1 is an exit selection), and 1 Character that moves, 1 Fish (calls to create a speech bubble), and 1 FishingLine
        super(t1, t2, t3, t4)

        # putting the fish and speech bubble in a specific spot for this scene, and editing the rectangle for collision for Option 2 and 3
        @fish.bubble_change(350, 475, 550, 100)
        @fish.new_x(850)
        @option2.changeX(300)
        @option3.changeX(700)
        @option2.changeWidth(310)
        @option3.changeWidth(160)
    end

    def hit()
        # PURPOSE: checks which Option the Character has hit, then returns specific id for next scene, and remove all: Options, Texts, Character, FishingLine, Fish (+ speech bubble)
        # RETURNS: specific id to store answer and to move to currect next scene 
        if @square.hit(@option1) then
            puts "A chosen"
            self.remove_all()
            return "3a2"
        end
        if @square.hit(@option2) then
            puts "B chosen"
            self.remove_all()
            return "3b2"
        end
        if @square.hit(@option3) then
            puts "C chosen"
            self.remove_all()
            return "3c2"
        end
        if @square.hit(@exit) then
            puts "EXIT"
            self.remove_all()
            return "exit"
        end
    end
end

class Quiz3Scene3 < Scene
    def initialize(t1, t2, t3, t4)
        # TAKES: 4 different text (string) for each Option
        # CONTAINS: 5 Options (3-4 are selections, 1 is an exit selection), and 1 Character that moves, 1 Fish (calls to create a speech bubble), and 1 FishingLine
        super(t1, t2, t3, t4)

        # putting the fish and speech bubble in a specific spot for this scene, and editing the rectangle for collision for Options 1-3
        @fish.bubble_change(350, 475, 350, 100)
        @fish.new_x(650)
        @option3.changeX(625)
        @option3.changeWidth(375)
        @option1.changeWidth(250)
        @option2.changeWidth(220)
    end

    def hit()
        # PURPOSE: checks which Option the Character has hit, then returns specific id for next scene, and remove all: Options, Texts, Character, FishingLine, Fish (+ speech bubble)
        # RETURNS: specific id to store answer and to move to currect next scene 
        if @square.hit(@option1) then
            puts "A chosen"
            self.remove_all()
            return "3a3"
        end
        if @square.hit(@option2) then
            puts "B chosen"
            self.remove_all()
            return "3b3"
        end
        if @square.hit(@option3) then
            puts "C chosen"
            self.remove_all()
            return "3c3"
        end
        if @square.hit(@exit) then
            puts "EXIT"
            self.remove_all()
            return "exit"
        end
    end
end

class Quiz3Results < Scene
    def initialize(t1, t2, t3, t4)
        # TAKES: 4 different text (string) for each Option
        # CONTAINS: 5 Options (3-4 are selections, 1 is an exit selection), and 1 Character that moves, 1 Fish (calls to create a speech bubble), 1 FishingLine, and 'r' for result (string)
        super(t1, t2, t3, t4)
        @r = ""

        # putting the speech bubble in a specific spot for this scene
        @fish.bubble_change(400, 350, 600, 200)
    end

    def get_results(arr)
        # PURPOSE: determine and show results of quiz
        # TAKES: one array with answers gathered within main
        # CONTAINS: each answer for each question

        # debugging purposes
        puts "Total answers are: #{$quiz3Answers}"
        a1 = arr[0]
        a2 = arr[1]
        a3 = arr[2]
        puts "#{a1}, #{a2}, #{a3}"

        # determining the result...
        if a1=="3a1" && a2=="3a2" && a3=="3a3" then
            @r = "Yes, but you'd die after 3 years due to an accident."
        elsif a1=="3b1" && a2=="3b2" && a3=="3b3" then
            @r = "No, you would die the first week."
        elsif a1=="3c1" && a2=="3c2" && a3=="3c3" then
            @r = "Yes, but you would be really lonely."
        elsif a2=="3a2" && a3=="3a3" then
            @r = "Yes, you'd do pretty well."
        elsif a2=="3a2" && a3=="3b3" then
            @r = "Yes, you would not just survive but thrive."
        elsif a2=="3a2" && a3=="3c3" then
            @r = "Yes, but you would be really lonely."
        elsif a2=="3b2" && a3=="3a3" then
            @r = "Yes, but only because your dog saves your life."
        elsif a2=="3b2" && a3=="3b3" then
            @r = "No, you would die right away."
        elsif a2=="3b2" && a3=="3c3" then
            @r = "No, you would die the first week."
        elsif a2=="3c2" && a3=="3a3" then
            @r = "Yes, at least until your dog dies."
        elsif a2=="3c2" && a3=="3b3" then
            @r = "No, you would die the first week"
        elsif a2=="3c2" && a3=="3c3" then
            @r = "Yes, but only for a month."
        else
            @r = "Yes, because you created the apocalypse."
        end

        # altering Option 2 and 4 to show quiz title and result of quiz
        @option4 = Option.new(435, 415, 0, 0, @r)
        @option2 = Option.new(300, 50, 0, 0, "Would you survive the apocalypse?")
        @option2.changeTextSize(25)
        @option4.changeTextSize(25)

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