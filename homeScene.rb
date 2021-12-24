require_relative "character"
require_relative "option"
require_relative "quiz"
require "./scene"

##HOME SCENE
class Home < Scene
    def initialize(t1, t2, t3, t4)
        # TAKES: 4 different text (string) for each Option
        # CONTAINS: 5 Options (4 are selections, 1 is an exit selection), and 1 Character that moves, 1 Fish (calls to create a speech bubble), 1 FishingLine, and 2 Texts for moving info
        @moveInfo = Text.new("Move the fishing hook to make", x:630, y:400, color:'white')
        @moveInfo2 = Text.new("Stormy chomp your selection!", x:635, y:430, color:'white')
        super(t1, t2, t3, t4)

        # editing the rectangles for collision for Options 1-4
        @option1.changeWidth(150)
        @option2.changeWidth(150)
        @option3.changeWidth(350)
        @option3.changeX(600)
        @option4.changeWidth(120)
    end

    def hit()
        # PURPOSE: checks which Option the Character has hit, then returns specific id for next scene,and removes all: Options, Texts, Character, FishingLine, Fish (+ speech bubble)
        # RETURNS: specific id to store answer and to move to currect next scene 
        if @square.hit(@option1) then
            puts "QUIZ 1 CHOSEN"
            self.remove_all()
            @moveInfo.remove
            @moveInfo2.remove
            return "quiz1"
        end
        if @square.hit(@option2) then
            puts "QUIZ 2 CHOSEN"
            self.remove_all()
            @moveInfo.remove
            @moveInfo2.remove
            return "quiz2"
        end
        if @square.hit(@option3) then
            puts "QUIZ 3 CHOSEN"
            self.remove_all()
            @moveInfo.remove
            @moveInfo2.remove
            return "quiz3"
        end
        if @square.hit(@option4) then
            puts "FOTRUNE CHOSEN"
            self.remove_all()
            @moveInfo.remove
            @moveInfo2.remove
            return "fortune"
        end
        if @square.hit(@exit) then
            puts "EXIT"
            self.remove_all()
            @moveInfo.remove
            @moveInfo2.remove
            return "quit"
        end
    end
end