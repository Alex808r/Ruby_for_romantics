# Игра крестики - нолики

#объявлем масси 3 строки на 3 столбца.
# Это игровое поле.
# Альтернативно можно объявить так:
# @arr = Array.new(3) {Array.new(3){'-'}}

@arr = [
  ['-', '-', '-'],
  ['-', '-', '-'],
  ['-', '-', '-']
]

def pool
  puts "Игровое поле"
  puts
  print @arr[0]
  puts
  print @arr[1]
  puts
  print @arr[2]
  puts
end

#computer_choice = arr[rand(0..2)]

pool

loop do

  print "Введите значение x: "
  x = gets.to_i
  x = x - 1
  print "Введите значение y: "
  y = gets.to_i
  y = y - 1

  if @arr[x][y] != 'O'
    @arr[x][y] = 'X'
  end

  pool

  if @arr[0][0] && @arr[0][1] && @arr[0][2] == 'X'
    puts 'Победа игрока 1'
    pool
    exit
  elsif @arr[1][0] && @arr[1][1] && @arr[1][2] == 'X'
    puts 'Победа игрока 2'
    pool
    exit
  elsif @arr[2][0] && @arr[2][1] && @arr[2][2] == 'X'
    puts 'Победа игрока 3'
    pool
    exit
  elsif @arr[0][0] && @arr[1][0] && @arr[2][0] == 'X'
    puts 'Победа игрока 4'
    pool
    exit
  elsif @arr[0][1] && @arr[1][1] && @arr[2][1] == 'X'
    puts 'Победа игрока 5'
    pool
    exit
  elsif @arr[0][2] && @arr[1][2] && @arr[2][2] == 'X'
    puts 'Победа игрока 6'
    pool
    exit
  elsif @arr[0][0] && @arr[1][1] && @arr[2][2] == 'X'
    puts 'Победа игрока 7'
    pool
    exit
  elsif @arr[0][2] && @arr[1][1] && @arr[2][0] == 'X'
    puts 'Победа игрока 8'
    pool
    exit
  end
  puts
  pool
  puts

  print "Компьютер выбирает"
  5.times do
    print '.'
    sleep 0.5
  end

  puts

  comp1 = rand(0..2)
  comp2 = rand(0..2)

  if @arr[comp1][comp2] != 'X'
    @arr[comp1][comp2] = 'O'
  end

  if @arr[0][0] && @arr[0][1] && @arr[0][2] == 'O'
    puts 'Победа компьютера 1'
    pool
    exit

  elsif @arr[1][0] && @arr[1][1] && @arr[1][2] == 'O'
    puts 'Победа компьютера 2'
    pool
    exit
  elsif @arr[2][0] && @arr[2][1] && @arr[2][2] == 'O'
    puts 'Победа компьютера 3'
    pool
    exit
  elsif @arr[0][0] && @arr[1][0] && @arr[2][0] == 'O'
    puts 'Победа компьютера 4'
    pool
    exit
  elsif @arr[0][1] && @arr[1][1] && @arr[2][1] == 'O'
    puts 'Победа компьютера 5'
    pool
    exit
  elsif @arr[0][2] && @arr[1][2] && @arr[2][2] == 'O'
    puts 'Победа компьютера 6'
    pool
    exit
  elsif @arr[0][0] && @arr[1][1] && @arr[2][2] == 'O'
    puts 'Победа компьютера 7'
    pool
    exit
  elsif @arr[0][2] && @arr[1][1] && @arr[2][0] == 'O'
    puts 'Победа компьютера 8'
    pool
    exit
  end
  pool
  puts
end
