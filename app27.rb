=begin
Задание: напишите класс Monkey (“обезьянка”). В классе должно быть
1) реализовано два метода: run, stop;
2) каждый из методов должен менять состояние объекта;
3) you must expose the state of an object так, чтобы можно было узнать о состоянии класса
снаружи, но нельзя было его модифицировать (к сожалению, точно перевести на русский
язык выражение “expose the state” не получилось. Посмотрите перевод слова “expose” в
словаре). Создайте экземпляр класса Monkey, вызовите методы объекта и проверьте
работоспособность программы.
Задание: сделайте так, чтобы при инициализации класса Monkey экземпляру
присваивалось случайное состояние. Создайте массив из десяти обезьянок. Выведите
состояние всех элементов массива на экран.
=end

class Monkey
  attr_reader :status
  def initialize
    default_status = [:sleep, :run, :stop, :jump]
    @status = default_status.sample
  end

  def run
    @status = :run
  end

  def stop
    @status = :stop
  end
end

m1 = Monkey.new
puts m1.status
puts m1.stop
puts m1.run
puts m1.status
puts '=' * 80
#инициализируем массив
arr = []
#добавляем в массив 10 экземпляров класса Monkey или так
1.upto(10) { arr << Monkey.new }
#Выводим состояние
arr.each {|item| print "#{item.status}, "}


#вариант 2
# создаем массив и в нем 10 обезьянок
arr = Array.new(10) { Monkey.new }
#для каждой обезьянки из массива вызовем случайный метод
arr.each do |monkey|
  m = [:stop, :run, :jump, :sleep].sample
  monkey.send(m)
end

=begin
Трюк заключается в двух строках внутри блока. Первая строка выбирает случайный
символ из массива и присваивает его переменной m. Вторая строка “отправляет
сообщение” объекту - это просто такой способ вызвать метод (в руби могли бы назвать
этот метод более понятным словом: “call” вместо “send”).
Другими словами, выше мы не только создали объекты определенного рода, но и смогли
относительно легко произвести взаимодействие с целой группой объектов. Согласитесь,
это намного проще, чем взаимодействовать с объектами по-одиночке.
=end