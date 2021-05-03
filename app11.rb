=begin
########################################
# ОПРЕДЕЛЯЕМ ПЕРЕМЕННЫЕ
########################################
@humans = 10_000
@machines = 10_000
########################################
# ВСПОМОГАТЕЛЬНЫЕ МЕТОДЫ
########################################
# Метод возвращает случайное значение: true или false
def luck?
  rand(0..1) == 1
end

def boom
  diff = rand(1..5)
  if luck?
    @machines -= diff
    puts "#{diff} машин уничтожено"
  else
    @humans -= diff
    puts "#{diff} людей погибло"
  end
end

# Метод возвращает случайное название города
def random_city
  dice = rand(1..5)
  if dice == 1
    'Москва'
  elsif dice == 2
    'Лос-Анджелес'
  elsif dice == 3
    'Пекин'
  elsif dice == 4
    'Лондон'
  else
    'Сеул'
  end
end
def random_sleep
  sleep rand(0.3..1.5)
end

def stats
  puts "Осталось #{@humans} людей и #{@machines} машин"
end
########################################
# СОБЫТИЯ
########################################
def event1
  puts "Запущена ракета по городу #{random_city}"
  random_sleep
  boom
end
def event2
  puts "Применено радиоактивное оружие в городе #{random_city}"
  random_sleep
  boom
end

def event3
  puts "Группа солдат прорывает оборону противника в городе #{random_city}"
  random_sleep
  boom
end
########################################
# ПРОВЕРКА ПОБЕДЫ
########################################
def check_victory?
  false
end
########################################
# ГЛАВНЫЙ ЦИКЛ
########################################
loop do
  if check_victory?
    exit
  end

  dice = rand(1..3)
  if dice == 1
    event1
  elsif dice == 2
    event2
  elsif dice == 3
    event3
  end
  stats
  random_sleep
end
=end

=begin
Задание: реализуйте метод “check_victory?” (сейчас он просто возвращает значение
false). В случае победы или поражения необходимо выводить полученный результат на
экран. Измените 10_000 на 10 чтобы легче было отлаживать программу.
Задание: посмотрите документацию к "ruby case statements" и замените конструкцию
"if...elsif" на "case...when".

Задание: сделать так, чтобы цикл был теоретически бесконечным. Т.е. чтобы
равновероятно на свет появлялись люди и машины. Количество появившихся людей или
машин должно равняться количеству погибших людей или машин. Несмотря на то, что
теоретически борьба может быть бесконечной, на практике может наступить ситуация, в
которой та или иная сторона выигрывает. Проверьте программу на практике, попробуйте
разные значения `humans` и `machines` (1000, 100, 10).

Задание: улучшите программу, добавьте как минимум еще 3 события, которые могут
влиять на результат судного дня.
=end


# ОПРЕДЕЛЯЕМ ПЕРЕМЕННЫЕ
@humans = 10
@machines = 10

# ВСПОМОГАТЕЛЬНЫЕ МЕТОДЫ
# Метод возвращает случайное значение: true или false
def luck?
  rand(0..1) == 1
end

def boom
  diff = rand(1..10)
  if luck?
    @machines -= diff
    puts "#{diff} машин уничтожено"
    @machines += diff
    puts "#{diff} новых машин изготовлено"
  else
    @humans -= diff
    puts "#{diff} людей погибло"
    @humans += diff
    puts "#{diff} прибыло новых людей для борьбы"
  end
end

# Метод возвращает случайное название города
def random_city
  dice = rand(1..5)
  case dice
  when 1 then 'Москва'
  when 2 then 'Лос-Анджелес'
  when 3 then 'Пекин'
  when 4 then 'Лондон'
  else 'Сеул'
  end
end

def random_sleep
  sleep rand(0.3..1.5)
end

def stats
  puts "Осталось #{@humans} людей и #{@machines} машин"
end

# СОБЫТИЯ

def event1
  puts "Запущена ракета по городу #{random_city}"
  random_sleep
  boom
end
def event2
  puts "Применено радиоактивное оружие в городе #{random_city}"
  random_sleep
  boom
end

def event3
  puts "Группа солдат прорывает оборону противника в городе #{random_city}"
  random_sleep
  boom
end

def event4
  puts "Спутник упал на город #{random_city}"
  random_sleep
  boom
end

def event5
  puts "Цунами прилошло в город #{random_city}"
  random_sleep
  boom
end

def event6
  puts "Извержение вулкана прилошло в город #{random_city}"
  random_sleep
  boom
end


# ПРОВЕРКА ПОБЕДЫ
def check_victory?
  if @humans <= 0
    puts 'Победили Роботы'
    true
  elsif @machines <= 0
    puts 'Победили Люди'
    true
  end
end


# ГЛАВНЫЙ ЦИКЛ
loop do
  if check_victory?
    exit
  end

  dice = rand(1..6)
  case dice
  when 1 then event1
  when 2 then event2
  when 3 then event3
  when 4 then event4
  when 5 then event5
  when 6 then event6
  end
  stats
  random_sleep
end

