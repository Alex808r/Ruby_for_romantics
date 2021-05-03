=begin
Задание: запишите следующие примеры при помощи тернарного оператора:
Пример 1:
if friends_are_also_coming?
  go_party
else
  stay_home
end

Пример 2:
if friends_are_also_coming? && !is_it_raining
  go_party
else
  stay_home
end
=end

#Пример 1
friends_are_also_coming? ? go_party : stay_home

#Пример 2
friends_are_also_coming? && !is_it_raining ? go_party : stay_home

#В файле программы иммигрант (app5) использован тернарный оператор:
# puts score >= 2 ? 'Добро пожаловать в США!' : 'Извините, но Вы не подоходите.'

