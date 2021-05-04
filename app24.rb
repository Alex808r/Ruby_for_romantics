#Пример метода со статическими параметрами,
def total_weight1(soccer_ball_count, tennis_ball_count, golf_ball_count)
  puts 'hi'
end
#обязателен порядок передачи аргумента при вызове метода
total_weight1(3,2,1)

# Метод принимает хеш параметов, порядок передачи параметров не важен.
# Для примера синтаксиса ключ 'soccer_ball_count' записан как строка, остальные ключи как символы.
def total_weight(options={})
  a = options['soccer_ball_count'] || 0
  b = options[:tennis_ball_count]  || 0
  c = options[:golf_ball_count]    || 0
  (a * 410) + (b * 58) + (c * 45) + 29
end
p x = total_weight('soccer_ball_count' => 3, tennis_ball_count: 2, golf_ball_count: 1)
p y = total_weight


=begin
Задание: Центр Управления Полетами поручил вам задание написать метод “launch” (от
англ. “запуск”), который будет принимать набор опций в виде хеша и отправлять в космо с
астронавтов “Белку” и/или “Стрелку”. Метод должен принимать следующие параметры:
● `angle` - угол запуска ракеты. Если не задан, то значение по-умолчанию равно 90
(градусов)
● `astronauts` - массив символов (:belka, :strelka), если не задан, то в космос нужно
отправлять и Белку, и Стрелку.
● `delay` - количество секунд через которые запустить ракету, если не задано, то
равно пяти
Метод должен вести подсчет оставшихся до запуска секунд (например: “Осталось секунд:
5 4 3 2 1”). После истечения задержки, метод должен выводить сообщение о том, какой
астронавт (астронавты) запущены, а также под каким углом была запущена ракета. Метод
может принимать любое количество параметров (ноль, один, два, три). Возможные
варианты вызова метода:
launch`
launch(angle: 91)`
launch(delay: 3)`
launch(delay: 3, angle: 91)`
launch(astronauts: [:belka])`
и т.д.
=end

def launch(params={})
  default_astronauts = [:belka, :strelka]
  a = params [:angle]      || 90
  b = params [:astronauts] || default_astronauts
  c = params [:delay]      || 5

  c.downto(1) do |i|
    puts "До запуска осталось #{i}"
    sleep 1
  end

  puts "В небо запущен астронавт(астронавты): #{b}"
  puts "Ракета запущена под углом #{a} градусов"
end

launch
launch(angle: 91)
launch(delay: 3)
launch(delay: 3, angle: 91)
launch(astronauts: [:belka])
