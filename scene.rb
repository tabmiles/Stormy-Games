require_relative "character"
require_relative "option"
require_relative "quiz"
require_relative "fishingLine"
require_relative "fish"

class Scene
    def initialize(t1, t2, t3, t4)
        # TAKES: 4 different text (string) for each Option
        # CONTAINS: 5 Options (3-4 are selections, 1 is an exit selection), and 1 Character that moves, 1 Fish (calls to create a speech bubble), and 1 FishingLine
        @option1 = Option.new(50, 100, 100, 50, t1)
        @option2 = Option.new(350, 100, 100, 50, t2)
        @option3 = Option.new(650, 100, 100, 50, t3)
        @option4 = Option.new(400, 500, 100, 25, t4)
        @exit = Option.new(25, 550, 50, 25, "EXIT")

        @square = Character.new(400, 250, 80, 160)
        
        @fish = Fish.new(900, 550)
        @fish.bubble(600, 350, 350, 200)
        
        @line = FishingLine.new(400, 250, 3)
    end

    def moveChar(xx, yy)
        # PURPOSE: moves the Character and the FishingLine
        # TAKES: two integers for new x and y coordinates
        @square.add_x(xx)
        @line.add_x(xx)
        @square.add_y(yy)
        @line.add_y(yy)
    end

    def remove_all()
        # PURPOSE: removes all Options, the Character, the Fish, the FishingLine
        @option1.remove_thing()
        @option2.remove_thing()
        @option3.remove_thing()
        @option4.remove_thing()
        @exit.remove_thing()
        @square.remove_char()
        @line.remove_line()
        @fish.remove_fish()
        @fish.remove_bubble()
    end

    def getA(arr, a)
        # PURPOSE: adds most recent answer to array located in main, and used to show the current answers chosen in command line
        # TAKES: array and most recent answer (string) passed through main
        arr.append(a)
        puts "Answers are: #{arr}"
    end
end