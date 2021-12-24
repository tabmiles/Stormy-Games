# SUBCLASSES OF Scene

class Quiz2Scene1 < Scene
    def initialize(t1, t2, t3, t4)
        # TAKES: 4 different text (string) for each Option
        # CONTAINS: 5 Options (3-4 are selections, 1 is an exit selection), and 1 Character that moves, 1 Fish (calls to create a speech bubble), and 1 FishingLine
        super(t1, t2, t3, t4)
        
        # putting the fish and speech bubble in a specific spot for this scene, and editing the rectangle for collision for Option 3
        @fish.bubble_change(350, 475, 350, 100)
        @fish.new_x(700)
        @option3.changeWidth(115)
    end

    def hit()
        # PURPOSE: checks which Option the Character has hit, then returns specific id for next scene, and remove all: Options, Texts, Character, FishingLine, Fish (+ speech bubble)
        # RETURNS: specific id to store answer and to move to currect next scene 
        if @square.hit(@option1) then
            puts "A chosen"
            self.remove_all()
            return "2a1"
        end
        if @square.hit(@option2) then
            puts "B chosen"
            self.remove_all()
            return "2b1"
        end
        if @square.hit(@option3) then
            puts "C chosen"
            self.remove_all()
            return "2c1"
        end
        if @square.hit(@exit) then
            puts "EXIT"
            self.remove_all()
            return "exit"
        end
    end
end

class Quiz2Scene2 < Scene
    def initialize(t1, t2, t3, t4)
        # TAKES: 4 different text (string) for each Option
        # CONTAINS: 5 Options (3-4 are selections, 1 is an exit selection), and 1 Character that moves, 1 Fish (calls to create a speech bubble), and 1 FishingLine
        super(t1, t2, t3, t4)

        # putting the fish and speech bubble in a specific spot for this scene, and editing the rectangle for collision for Option 1-3
        @fish.bubble_change(350, 475, 280, 100)
        @fish.new_x(600)
        @option1.changeWidth(250)
        @option2.changeWidth(175)
        @option3.changeWidth(200)
    end

    def hit()
        # PURPOSE: checks which Option the Character has hit, then returns specific id for next scene, and remove all: Options, Texts, Character, FishingLine, Fish (+ speech bubble)
        # RETURNS: specific id to store answer and to move to currect next scene 
        if @square.hit(@option1) then
            puts "A chosen"
            self.remove_all()
            return "2a2"
        end
        if @square.hit(@option2) then
            puts "B chosen"
            self.remove_all()
            return "2b2"
        end
        if @square.hit(@option3) then
            puts "C chosen"
            self.remove_all()
            return "2c2"
        end
        if @square.hit(@exit) then
            puts "EXIT"
            self.remove_all()
            return "exit"
        end
    end
end

class Quiz2Scene3 < Scene
    def initialize(t1, t2, t3, t4)
        # TAKES: 4 different text (string) for each Option
        # CONTAINS: 5 Options (3-4 are selections, 1 is an exit selection), and 1 Character that moves, 1 Fish (calls to create a speech bubble), and 1 FishingLine
        super(t1, t2, t3, t4)

        # putting the fish and speech bubble in a specific spot for this scene
        @fish.bubble_change(350, 475, 275, 100)
        @fish.new_x(600)
    end

    def hit()
        # PURPOSE: checks which Option the Character has hit, then returns specific id for next scene, and remove all: Options, Texts, Character, FishingLine, Fish (+ speech bubble)
        # RETURNS: specific id to store answer and to move to currect next scene 
        if @square.hit(@option1) then
            puts "A chosen"
            self.remove_all()
            return "2a3"
        end
        if @square.hit(@option2) then
            puts "B chosen"
            self.remove_all()
            return "2b3"
        end
        if @square.hit(@option3) then
            puts "C chosen"
            self.remove_all()
            return "2c3"
        end
        if @square.hit(@exit) then
            puts "EXIT"
            self.remove_all()
            return "exit"
        end
    end
end

class Quiz2Results < Scene
    def initialize(t1, t2, t3, t4)
        # TAKES: 4 different text (string) for each Option
        # CONTAINS: 5 Options (3-4 are selections, 1 is an exit selection), and 1 Character that moves, 1 Fish (calls to create a speech bubble), 1 FishingLine, and 'r' for result (string)
        super(t1, t2, t3, t4)
        @r = ""
        @img

        # putting the speech bubble in a specific spot for this scene
        @fish.bubble_change(675, 400, 325, 150)
    end

    def get_results(arr)
        # PURPOSE: determine and show results of quiz
        # TAKES: one array with answers gathered within main
        # CONTAINS: each answer for each question and a result variable (string)
        # RETURNS: returns result (string)

        # debugging purposes
        puts "Total answers are: #{$quiz2Answers}"
        a1 = arr[0]
        a2 = arr[1]
        a3 = arr[2]
        puts "#{a1}, #{a2}, #{a3}"

        # determining the result...
        if a1=="2a1" && a2=="2a2" && a3=="2a3"
            @r = "Bulbasaur"
            @img = Image.new("bulbasaur.png", x:875, y:425, width:75, height:75)
        elsif a1=="2b1" && a2=="2b2" && a3=="2b3"
            @r = "Squirtle"
            @img = Image.new("squirtle.png", x:875, y:425, width:75, height:75)
        elsif a1=="2c1" && a2=="2c2" && a3=="2c3"
            @r = "Charmander"
            @img = Image.new("charmander.png", x:885, y:425, width:75, height:75)
        elsif a1=="2a1" && a2 == "2b2" && a3 == "2c3"
            @r = "Electrode"
            @img = Image.new("electrode.png", x:875, y:425, width:75, height:75)
        elsif a2=="2a2" && a3=="2a3"
            @r = "Skiploom"
            @img = Image.new("skiploom.png", x:875, y:425, width:90, height:90)
        elsif a2=="2a2" && a3=="2b3"
            @r = "Ducklett"
            @img = Image.new("ducklett.png", x:875, y:425, width:75, height:75)
        elsif a2=="2a2" && a3=="2c3"
            @r = "Scorbunny"
            @img = Image.new("scorbunny.png", x:875, y:425, width:75, height:75)
        elsif a2=="2b2" && a3=="2a3"
            @r = "Lotad"
            @img = Image.new("lotad.png", x:875, y:425, width:75, height:75)
        elsif a2=="2b2" && a3=="2b3"
            @r = "Dratini"
            @img = Image.new("dratini.png", x:875, y:425, width:75, height:75)
        elsif a2=="2b2" && a3=="2c3"
            @r = "Paras"
            @img = Image.new("paras.png", x:875, y:425, width:75, height:75)
        elsif a2=="2c2" && a3=="2a3"
            @r = "Treecko"
            @img = Image.new("treecko.png", x:875, y:425, width:75, height:75)
        elsif a2=="2c2" && a3=="2b3"
            @r = "Mudkip"
            @img = Image.new("mudkip.png", x:875, y:425, width:75, height:75)
        elsif a2=="2c2" && a3=="2c3"
            @r = "Flareon"
            @img = Image.new("flareon.png", x:875, y:425, width:75, height:75)
        else
            @r = "Electrode"
            @img = Image.new("electrode.png", x:875, y:425, width:75, height:75)
        end

        # altering Option 2 and 4 to show quiz title and result of quiz
        @option4 = Option.new(715, 450, 0, 0, @r)
        @option2 = Option.new(300, 50, 0, 0, "Your spirit pokemon is...")
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
            @img.remove
            return "exit"
        end
    end
end