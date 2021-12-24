class Fish
    def initialize (xx, yy)
        # TAKES: two integers for x and y coordinates
        # CONTAINS: an image of Stormy that is the character
        @fish = Image.new('fish.png', x:xx, y:yy, width:100, height:50)
        @bubble
        @x = xx
        @y = yy
    end

    def new_x(s)
        # PURPOSE: moves the character 's' on x-axis
        # TAKES: one integer for new x coordinate
        @fish.x = s
    end

    def new_y(s)
        # PURPOSE: moves the character 's' on y-axis
        # TAKES: one integer for new y coordinate
        @fish.y = s
    end

    def remove_fish()
        # PURPOSE: removes the character
        @fish.remove
    end

    def bubble(xx, yy, ww, hh)
        # PURPOSE: creates a speech bubble Image
        # TAKES: four integers for x/y coordinates and width/height of Image
        @bubble = Image.new('talk.png', x:xx, y:yy, width:ww, height:hh)
    end

    def remove_bubble()
        # PURPOSE: removes the speech bubble Image
        @bubble.remove
    end
    
    def bubble_change(xx, yy, ww, hh)
        # PURPOSE: changes the x/y coordinates and width/height of speech bubble Image
        # TAKES: four integers for new x/y coordinates and width/height of Image
        @bubble.x = xx
        @bubble.y = yy
        @bubble.width = ww
        @bubble.height = hh
    end

    def bubble_change_width(ww)
        @bubble.width = ww
    end
end