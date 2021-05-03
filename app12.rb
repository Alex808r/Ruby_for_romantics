=begin
Задание: определите метод, который будет вычислять случайный номер с анимацией
(используйте sleep со случайной задержкой). Примените анимацию к переменным “x”, “y”,“z”.
Задание: добавьте больше условий в игру “Однорукий бандит”, используйте свое
воображение.
=end

#Однорукий бандит

print 'Ваш возраст: '
age = gets.to_i
puts 'Добро пожаловать в игру' if age >= 18
abort ('Вам нет 18') if age < 18

balance = 20

def mult
  5.times do |i|
    x = rand (1..5)
    y = rand (1..5)
    z = rand (1..5)
    f = rand (1..5)
    s = 0.1
    print "#{x} "
    sleep s
    print "#{y} "
    sleep s
    print "#{z}\r"
    sleep s
    print "#{f}\r"
    sleep s
  end
end

loop do
  puts "Дерните за ручку чтобы начать игру"
  gets

  x = rand (mult)
  y = rand (mult)
  z = rand (mult)


  puts "Результат: #{x} #{y} #{z}"

  if x == 0 && y == 0 && z == 0
    balance = 0
    puts
    puts "Вы проиграли"
    exit
  elsif x == 1 && y == 1 && z == 1
    balance += 10
    puts "Ваш баланс пополнен на 10"
  elsif x == 2 && y == 2 && z == 2
    balance += 20
    puts "Ваш баланс пополнен на 20"
  elsif
    x == 3 && y == 3 && z == 3
    balance += 30
    puts "Ваш баланс пополнен на 30"
  elsif
    x == 4 && y == 4 && z == 4
    balance += 40
    puts "Ваш баланс пополнен на 40"
  elsif
    x == 5 && y == 5 && z == 5
    balance += 50
    puts "Ваш баланс пополнен на 50"
  elsif
    x == 6 && y == 6 && z == 6
    balance += 60
    puts "Ваш баланс пополнен на 60"
  else
    balance -= 5
    puts "С вашего баланса списано 5"
  end
  puts "Баланс: #{balance}"
  puts "=" * 80
end