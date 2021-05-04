#необходимо сосчитать частотность слов и вывести список.
# Например, слово “the” встречается 2 раза, слово “dog” 1 раз и так далее.

#определяем переменную в которую сохраняем строку
str = 'the quick brown fox jumps over the lazy dog'

#преобразуем строку в массив слов
arr = str.split(' ')

#создаем пустой хеш
hh = {}

#в цикле прохоим по массиву слов и проверяем есть ли такой ключ,
# если нет, то создаем, если есть увеличиваем значение на 1
arr.each do |item|
  if hh[item].nil?
    hh[item] = 1
  else
    hh[item] += 1
  end
end

puts hh.inspect


#Можно написать короче, если установить значение хеша по умолчанию
str1 = 'the quick brown fox jumps over the lazy dog dog'
arr1 = str1.split(' ')

hh1 = Hash.new(0)
arr1.each do |word|
  hh1[word] += 1
end
puts hh1.inspect


#Задание: напишите программу, которая считает частотность букв и выводит на экран
# список букв и их количество в предложении.


str2 = 'the quick brown fox jumps over the lazy dog dog'
arr2 = str2.split('')

hh2 ={}
arr2.each do |letter|
  if hh2[letter].nil?
    hh2[letter] = 1
  else
    hh2[letter] += 1
  end
end

puts hh2

# короткая версия
str3 = 'tthe quick brown fox jumps over the lazy dog dog'
arr3 = str3.split('')
hh3 = Hash.new(0)
arr3.each do |letter|
  hh3[letter] += 1
end

puts hh3