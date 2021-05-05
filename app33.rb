=begin
Существуют методы экземпляра класса (instance methods), а существуют методы класса
(class methods). В других языках программирования методы класса называются
"статические методы". То же самое можно сказать и про переменные, существуют instance
variables, а существуют class variables, которые используются реже (также существуют т.н.
local variables - переменные доступные только внутри определенного метода). Разницу
между двумя разными типами методов (и переменных) необходимо усвоить, т.к. она часто
встречается в литературе
=end

class Person
  def self.say_something
    puts 'Hi there!'
  end
end

Person.say_something

=begin
В последней строке мы вызываем этот класс особым образом, указывая имя класса и
после этого название метода. Обратите внимание, что мы не создаем экземпляра класса.
  Сравните этот код с аналогичным, но без использования статического метода:
=end

class Person
  def say_something
    puts 'Hi there!'
  end
end

dude = Person.new
dude.say_something


# Кажется, что две программы выше выполняют одну и ту же функцию, но все меняется,
# когда появляется состояние
class Person
  def initialize(name)
    @name = name
  end
  def say_your_name
    puts "My name is #{@name}"
  end
end
dude = Person.new('Sam')
dude.say_your_name


# В методе класса чтобы вывести имя нам нужно передать его в качестве аргумента
class Person
  def self.say_your_name(name)
    puts "My name is #{name}"
  end
end
Person.say_your_name('Sam')
Person.say_your_name('Sam')
Person.say_your_name('Pat')
Person.say_your_name('Val')

