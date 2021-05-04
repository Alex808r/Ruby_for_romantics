=begin
Во-первых обратите внимание на альтернативный синтаксис обращения к переменной
экземпляра (instance variable) - через `self.` вместо `@`. Если не указать `self.` или `@`, то
руби подумает, что мы хотим объявить локальную переменную в методе (даже если
похожая переменная или accessor-метод уже существует).
=end

class Robot
  attr_accessor :x, :y
  def initialize
    @x = 0
    @y = 0
  end
  def right
    self.x += 1
  end
  def left
    self.x -= 1
  end
  def up
    self.y += 1
  end
  def down
    self.y -= 1
  end
end
robot1 = Robot.new
robot1.up
robot1.up
puts "x = #{robot1.x}, y = #{robot1.y}"