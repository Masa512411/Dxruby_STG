require "dxruby"
require_relative "player"
require_relative "enemy"

$shots = []
$enemy = []
player = PlayerShip.new
font = Font.new(32)

Window.loop do
   player.move
   enemy.move
   Sprite.update([$shots]) 

   if Sprite.check($enemy,$shots) then
        Window.drawFont(32, 32, "Ture", font)
   end

    Window.drawFont(32, 64, enemy.y.to_s,font)
end