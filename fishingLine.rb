class FishingLine
    def initialize (xx, yy, ww)
        # TAKES: three integers for the ending x/y coordinates and width for Line
        # CONTAINS: a Line
        @l = Line.new(x1: 149, y1: 23, x2: xx, y2: yy, width: ww, color: 'white')
    end

    def add_x(s)
        # PURPOSE: moves the character 's' on x-axis
        # TAKES: one integer for new end-x coordinate
        @l.x2 += s
    end
    
    def add_y(s)
        # PURPOSE: moves the character 's' on y-axis
        # TAKES: one integer for new end-y coordinate
        @l.y2 += s
    end
    
    def remove_line()
        # PURPOSE: removes the character
        @l.remove
    end
end