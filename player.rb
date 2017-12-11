require "dxruby"

class PlayerShip < Sprite

    def initialize
        super
        self.image = Image.load("../image/player.png") 
        self.x = 300
        self.y = 240   
    end

    def move
        self.draw
        self.x += Input.x * 3
        self.y += Input.y * 3
        
        if Input.key_push?(K_SPACE) then
            $shots << PlayerShot.new(self.x, self.y)
        end
    end
end

class PlayerShot < Sprite
    def initialize(x, y)
        self.x = x + 80
        self.y = y + 5
        self.image = Image.load("../image/player_shot.png")
    end

    def update
        self.draw
        self.x += 10
    end
end
