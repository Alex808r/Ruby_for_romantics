# Тензор - массив массивов массивов. Трехмерный массив.
arr = [
  [
    %w(a b c),
    %w(d e f),
    %w(g h i)
  ],
  [
    %w(aa bb cc),
    %w(dd ee ff),
    %w(gg hh ii)
  ]
]

#Задание: попробуйте создать массив, объявленный выше в pry, и обратиться к элементу “ee”.
puts arr[1][1][1]


#Удобно использовать метод count вместе с указателем на функцию. Если метод “zero?”
#реализован у всех элементов массива, можно записать конструкцию выше иначе:
p [0, 0, 1, 1, 0, 0, 1, 0].count { |x| x == 0 }
p [0, 0, 1, 1, 0, 0, 1, 0].count(&:zero?)

#Задание: с помощью указателя на функцию посчитайте количество четных элементов в
#массиве [11, 22, 33, 44, 55].

p [11, 22, 33, 44, 55].count(&:even?)

#Наиболее часто встречающиеся методы класса Array
arr = [ [30, 1], [25, 0], [64, 1], [64, 0], [33, 1] ]
p arr.select { |element| element[0] == 64 && element[1] == 1 }
p arr.select { |element| element[1] == 1 }
p arr.reject { |element| element[0] >= 30 }

p [11, 22, 33, 44, 55].take(2)

p [false, false, false, true, false].any? { |element| element == true }
p [false, false, false, true, false].find_index { |element| element == true }
p [20, 34, 65, 23, 18, 44, 32].all? { |element| element >= 18 }