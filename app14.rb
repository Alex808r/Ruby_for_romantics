#Задание создать двумерный массив и обойти (to traverse) его.
arr = [
  %w(a b c),
  %w(d e f),
  %w(g h i)
]
#Вариант 1
0.upto(2) do |j|
  0.upto(2) do |i|
    print arr[j][i]
  end
end
puts

#Вариант 2
arr.each do |i|
  i.each do |j|
    print j
  end
end