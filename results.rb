require_relative "option"

class Results
    def initialize()
        # CONTAINS: array of reuslts, and 4 variables that store their respective results
        @resultArr = ["Your most recent quiz and fortune results...", "Your new pet should be: ", "UNKNOWN", "Your spirit pokemon is: ", "UNKNOWN", "Would you survive the apocalypse?: ", "UNKNOWN", "Your fortune of the day: ", "UNKNOWN"]
        @quiz1
        @quiz2
        @quiz3
        @fortune
    end

    def quiz1(content)
        # PURPOSE: add the result for the first quiz to the array and save as @quiz1
        # TAKES: string that is the result
        @resultArr[2] = content
        @quiz1 = content
    end
    
    def quiz2(content)
        # PURPOSE: add the result for the second quiz to the array and save as @quiz2
        # TAKES: string that is the result
        @resultArr[4] = content
        @quiz2 = content
    end

    def quiz3(content)
        # PURPOSE: add the result for the third quiz to the array and save as @quiz3
        # TAKES: string that is the result
        @resultArr[6] = content
        @quiz3 = content
    end
    
    def fortune(content)
        # PURPOSE: add the result for the fortune to the array and save as @fortune
        # TAKES: string that is the fortune result
        @resultArr[8] = content
        @fortune = content
    end

    def print(x, y)
        # PURPOSE: display the results, as Options, at x/y
        # TAKES: two integers as x/y coordinates
        @line1 = Option.new(x+5, y, 0, 0, "#{@resultArr[0]}")
        @line2 = Option.new(x+5, y+25, 0, 0, "#{@resultArr[1]}#{@resultArr[2]}")
        @line3 = Option.new(x+5, y+50, 0, 0, "#{@resultArr[3]}#{@resultArr[4]}")
        @line4 = Option.new(x+5, y+75, 0, 0, "#{@resultArr[5]}#{@resultArr[6]}")
        @line5 = Option.new(x+5, y+100, 0, 0, "#{@resultArr[7]}#{@resultArr[8]}")

        @line1.changeTextSize(15)
        @line2.changeTextSize(15)
        @line3.changeTextSize(15)
        @line4.changeTextSize(15)
        @line5.changeTextSize(15)

        puts "#{@resultArr}"
    end

    def delete()
        # PURPOSE: remove the Options that are displaying the results
        @line1.remove_thing()
        @line2.remove_thing()
        @line3.remove_thing()
        @line4.remove_thing()
        @line5.remove_thing()
    end
end