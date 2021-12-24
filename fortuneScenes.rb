require_relative "character"
require_relative "option"
require_relative "quiz"
require_relative "scene"
require_relative "fish"

##FORTUNE
class FortuneScene1 < Scene
    def initialize(t1, t2, t3, t4)
        # TAKES: 4 different text (string) for each Option
        # CONTAINS: 5 Options (2 are selections, 1 is an exit selection, 1 is empty, 1 is question), and 1 Character that moves, 1 Fish (calls to create a speech bubble), and 1 FishingLine
        super(t1, t2, t3, t4)

        # editing the x/y coordinates for Options 4 and 1 and putting the speech bubble in a specific spot for this scene
        @option4.changeX(480)
        @option4.changeY(450)
        @option1.changeX(200)
        @fish.bubble_change(450, 400, 490, 150)
    end

    def hit()
        # PURPOSE: checks which Option the Character has hit, then returns specific id for next scene, and remove all: all: Options, Texts, Character, FishingLine, Fish (+ speech bubble)
        # RETURNS: specific id to move to currect next scene 
        if @square.hit(@option1) then
            puts "Yes chosen"
            self.remove_all()
            return "y"
        end
        if @square.hit(@option3) then
            puts "No chosen"
            self.remove_all()
            return "n"
        end
        if @square.hit(@exit) then
            puts "EXIT"
            self.remove_all()
            return "exit"
        end
    end
end

class FortuneScene2 < Scene
    def initialize(t1, t2, t3, t4)
        # TAKES: 4 different text (string) for each Option
        # CONTAINS: 5 Options (1 is an exit selection, 3 are empty, 1 is statement), and 1 Character that moves, 1 Fish (calls to create a speech bubble), and 1 FishingLine
        super(t1, t2, t3, t4)
        
        # editing the rectangle for collision for Options 4 and putting the speech bubble in a specific spot for this scene
        @option4.changeTextSize(25)
        @option4.changeX(450)
        @option4.changeY(450)
        @fish.bubble_change(425, 400, 555, 150)
    end

    def hit()
        # PURPOSE: checks if the Character has hit the exit Option, then returns specific id for next scene, and remove all: all: Options, Texts, Character, FishingLine, Fish (+ speech bubble)
        # RETURNS: specific id to move to currect next scene 
        if @square.hit(@exit) then
            puts "EXIT"
            self.remove_all()
            return "exit"
        end
    end
end

class FortuneScene3 < Scene
    def initialize(t1, t2, t3, t4)
        # TAKES: 4 different text (string) for each Option
        # CONTAINS: 5 Options (2 are selections, 1 is an exit selection, 1 is empty, 1 is question), and 1 Character that moves, 1 Fish (calls to create a speech bubble), and 1 FishingLine
        super(t1, t2, t3, t4)
        @fortune = Fortune.new()
        @daily = false

        # putting the speech bubble in a specific spot for this scene
        @fish.bubble_change(400, 400, 575, 150)
    end

    def getFortune()
        # PURPOSE: choose a random fortune out of the array and display it on screen
        # CONTAINS: a random number, array of fortunes (strings), and result (string)
        randNum = rand(9)
        puts randNum
        @flist = @fortune.get_fortuneList
        @r = @flist[randNum]

        # display result by changing Option 4
        @option4 = Option.new(430, 450, 100, 50, @r)
        @option4.changeWidth(0)
        @option4.changeTextSize(25)

        return @r
    end

    def hit()
        # PURPOSE: checks if the Character has hit the exit Option, then returns specific id for next scene, and remove all: all: Options, Texts, Character, FishingLine, Fish (+ speech bubble)
        # RETURNS: specific id to move to currect next scene 
        if @square.hit(@exit) then
            puts "EXIT"
            self.remove_all()
            return "exit"
        end
    end
end