#Модуль (module) - это участок программы, который можно “включить” (include) в тот или
# иной класс
module MyModule
  attr_accessor :x, :y
  def initialize(options={})
    @x = options[:x] || 0
    @y = options[:y] || 0
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
class Robot
  include MyModule
  def label
    '*'
  end
end

class Dog
  include MyModule
  def up
  end
  def left
  end
  def label
    '@'
  end
end
class Human
  include MyModule
  def label
    'H'
  end
end