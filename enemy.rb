require "dxruby"

class Enemy < Sprite
    @@image = Image.load_tiles("enemy1.png",15, 9, true)
    def initialize
        super
        self.x = 700    
        self.y = rand(480)
        self.image = @@image[0] 
    end

    def move
        self.draw
        self.x -= 10

        if self.x < 0
            self.x = 690
            self.y = rand(480)
        end

        if self.x < 340
            $enemy << Enemy.new
        end
    end

    # def update
    #     if self.x < 0
    #         self.vanish
    #     end
    # end
end
