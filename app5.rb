=begin
Задание:
напишите программу, которая спрашивает логин и пароль пользователя в
консоли. Если имя “admin” и пароль “12345”, программа должна выводить на экран
“Доступ к банковской ячейке разрешен”.
=end

puts 'Добрый день, Вас привеструет система безопасности банка'
print 'Введите логин: '
login = gets.strip.downcase
print 'Введите пароль: '
pass = gets.strip
if login == "admin" && pass == "12345"
  puts 'Доступ к банковской ячейке разрешен'
else
  puts 'В доступе отказано'
end

=begin
Задание: известно, что на Луне продают участки. Любой участок менее 50 квадратных
метров стоит 1000 долларов. Участок площадью от 50 до 100 квадратных метров стоит
1500 долларов. От 100 и выше - по 25 долларов за квадратный метр. Напишите
программу, которая запрашивает длину и ширину участка и выводит на экран его
стоимость.
=end

puts 'Продаются земельные участки на Луне'

print 'Введите длину желаемого участка: '
lgth = gets.to_i

print 'Введите ширину желаемого участка: '
width = gets.to_i

# вычисляем прощадь земельного участка
area = lgth * width

if area <= 49
  puts "Участок площадью #{area} стоит 1000 долларов."
elsif  area >= 50 && area <= 99
  puts "Участок площадью #{area} стоит 1500 долларов."
else area >= 100
  puts "Участок площадью #{area} стоит #{area * 25} долларов."
end


=begin
Задание: напишите программу "иммигрант". Программа должна задавать следующие
вопросы: “У вас есть высшее образование? (y/n)”, “У вас есть опыт работы
программистом? (y/n)”, “У вас более трех лет опыта? (y/n)”. За каждый положительный
ответ начисляется 1 балл (переменную можно назвать score). Если набралось 2 или
более баллов программа должна выводить на экран “Добро пожаловать в США”.
=end
# использован тернарный оператор: puts score >= 2 ? 'Добро пожаловать в США!' : 'Вы не подоходите'

puts 'Проверим, подходите ли вы для иммиграции в США'
print 'У Вас есть высшее образование? (y/n): '
score = 0
education = gets.downcase.chomp
score += 1 if education == 'y'

print 'У Вас есть опыт работы программистом? (y/n): '
experience = gets.downcase.chomp
score += 1 if experience == 'y'

print 'Ваш опыт более 3 лет? (y/n): '
years_of_experience = gets.downcase.chomp
score += 1 if years_of_experience == 'y'

puts "Проходной бал 2, вы набрали #{score}"
puts score >= 2 ? 'Добро пожаловать в США!' : 'Извините, но Вы не подоходите.'