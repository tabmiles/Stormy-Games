class Character
    def initialize (xx, yy, ww, hh)
        # TAKES: the x, y, width, height (all integers) for demensions and location
        # CONTAINS: an Image of Stormy (with hook by face) that is the movable character, and x/y coordinates
        @char = Image.new('sharkIcon.png', x: xx, y: yy, width: ww, height: hh)
    end

    def hit(o)
        # PURPOSE: checks if the character is within the confines of current Option by using Option fucntion contains()
        # TAKES: an Option
        # RETURNS: true or false
        return o.contains(@char.x, @char.y)
    end

    def add_x(s)
        # PURPOSE: moves the character 's' on x-axis
        # TAKES: integer for new x coordinate
        @char.x += s
    end

    def add_y(s)
        # PURPOSE: moves the character 's' on y-axis
        # TAKES: integer for new y coordinate
        @char.y += s
    end
    
    def remove_char()
        # PURPOSE: removes the character
        @char.remove
    end
end