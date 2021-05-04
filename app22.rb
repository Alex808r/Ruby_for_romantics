#Англо-русский словарь
=begin
dict = {
  'cat' => 'кошка',
  'dog' => 'собака',
  'girl' => 'девушка'
}
print 'Введите слово: '
input = gets.chomp
puts "Перевод слова: #{dict[input]}"


Задание 1: напишите “сложный” англо-русский словарь, где каждому английскому слову
может соответствовать несколько переводов (например: cat это “кот”, “кошка”).

Задание 2: задайте базу данных (хеш) своих контактов. Для каждого контакта (фамилия)
может быть задано три параметра: email, cell_phone (номер моб.телефона), work_phone
(номер рабочего телефона). Напишите программу, которая будет спрашивать фамилию и
выводить на экран контактную информацию.
=end

#Задание 1

puts "Англо-русский словарь"

dictionary = {
  'cat'  => ['кошка', 'кот'],
  'dog'  => ['собака', 'пес'],
  'girl' => ['девушка','дама'],
  'frog' => ['лягушка']
            }

loop do
  print 'Введите слово: '
  word = gets.strip.downcase
  translate = dictionary[word]
  puts "Перевод: #{translate}"
  puts '*' * 40
  puts "Количество переводов #{translate.size}"
  puts translate
  puts "Тип значения #{translate.class}"
  puts '*' * 40
end


#Задание 2
# В хэш сложен массив
# #contacts = { 'surname' => ['email', 'cell_phone', 'work_phone'] }

contacts = { 'Smith' => ['Smith@email.com', '000', '111'],
             'Brad'  => ['Brad@email.com',  '222', '333'],
             'Mike'  => ['Mike@email.com',  '444', '555']
            }

loop do
  print 'Введите Фамилию: '
  surname = gets.strip.capitalize
  contact_info = contacts[surname]
  puts "email: #{contact_info[0]}, cell_phone: #{contact_info[1]}, 'work_phone: #{contact_info[2]} "
end

# Задание 2 вариант 2
#В хеш contacts1 сложен еще хеш. Читаемость программы лушче, поскольку в выводе информации используются ключи
# email, cell_phone, work_phone, а не индексы как предыдущем примере #{contact_info[0]}, cell_phone: #{contact_info[1]}
#contacts1 = { 'surname' => {'email' => '1', 'cell_phone' => '2', 'work_phone' => '3'}}

contacts1 = { 'Smith' => {'email' => 'Smith@email.com', 'cell_phone' => '000', 'work_phone' => '111'},
              'Brad'  => {'email' => 'Brad@email.com',  'cell_phone' => '222', 'work_phone' => '333'},
              'Mike'  => {'email' => 'Mike@email.com',  'cell_phone' => '444', 'work_phone' => '555'}
            }

loop do
  print 'Введите Фамилию: '
  surname = gets.strip.capitalize
  contact_info = contacts1[surname]
  puts "email: #{contact_info['email']}, cell_phone: #{contact_info['cell_phone']}, work_phone: #{contact_info['work_phone']} "
end