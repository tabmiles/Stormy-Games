class Option
    def initialize(xx, yy, w, h, t)
        # TAKES: x (int), y (int), width (int), height (int), and text (string) for the rectangle/text
        # CONTAINS: a rectangle and the text in the rectangle, and the chomp sound effect to be played whenever a selection is made
        @selection = Rectangle.new(x: xx, y: yy, width: w, height: h, color: 'blue')
        @text = Text.new(t, x: xx, y: yy, size: 22, color: 'white')
        @chomp = Sound.new('Chomp-sound-effect.mp3')
    end

    def remove_thing()
        # PURPOSE: removes the current Option (rectangle and text)
        @selection.remove
        @text.remove
    end

    def contains(x, y)
        # PURPOSE: checks if the Character is wihtin the Option rectangle, if so: plays chomp sound effect
        # TAKES: two integers for new x and y coordinates
        # RETURNS: true or false
        if @selection.contains?(x, y) then
            @chomp.play
        end
        return @selection.contains?(x, y)
    end

    def changeTextSize(s)
        # PURPOSE: changes the text size of current Option
        # TAKES: integer for new size
        @text.size = s
    end

    def changeText(t)
        # PURPOSE: changes the text of current Option
        # TAKES: string for new text
        @selection.text = t
    end

    def changeX(xNew)
        # PURPOSE: changes the x coordinates of the current Option
        # TAKES: integer for new x coordinate
        @selection.x = xNew
        @text.x = xNew
    end

    def changeY(yNew)
        # PURPOSE: changes the y coordinates of the current Option
        # TAKES: integer for new y coordinate
        @selection.y = yNew
        @text.y = yNew
    end

    def changeWidth(wNew)
        # PURPOSE: changes the rectangle width of current Option
        # TAKES: integer for new width
        @selection.width = wNew
    end
end