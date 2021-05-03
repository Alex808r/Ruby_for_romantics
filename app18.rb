# Символы

arr = Array.new(100) { 'something' }
p arr[0].__id__
p arr[1].__id__

#у символа идентификатор объектов будет всегда одинаковым
# массив символов содержит ссылки на один и тот же объект
arr1 = Array.new(100) { :something }
p arr1[0].__id__
p arr1[1].__id__

=begin
Задание: напишите игру “камень, ножницы, бумага” (`[:rock, :scissors, :paper]`).
Пользователь делает свой выбор и играет с компьютером. Начало игры может быть таким
=end

puts 'Игра Камень Ножниы Бумага'
puts '*' * 40

loop do
  puts 'Ваш выбор Камень (R) Ножнины (S) Бумага (P)'
  choice = gets.strip.capitalize
  if choice == "R"
    @user_choice = :rock
  elsif choice == "S"
    @user_choice = :scissors
  elsif choice == "P"
    @user_choice = :papaer
  else
    puts 'Неизвестный выбор'
    exit
  end

  arr = [:rock, :scissors, :papaer]
  @computer_choice = arr[rand(0..2)]

  # докладываем о победе
  def your_win
    puts "Вы победили! Вы выбрали #{@user_choice} / Компрьютер выбрал #{@computer_choice}"
    puts "*" * 40
    puts
  end

  def comp_win
    puts "Компьютер победил! Вы выбрали #{@user_choice} / Компрьютер выбрал #{@computer_choice}"
    puts "*" * 40
    puts
  end

  #определяем победителя
  if @user_choice == @computer_choice
    puts "Ничья. Вы выбрали #{@user_choice} / Компрьютер выбрал #{@computer_choice}"
    puts "*" * 40
    puts
  # user
  elsif  @user_choice == :rock && @computer_choice == :scissors
    your_win
  elsif @user_choice == :scissors && @computer_choice == :papaer
    your_win
  elsif @user_choice == :papaer && @computer_choice == :rock
    your_win
  # comp
  else
    comp_win
  end
end