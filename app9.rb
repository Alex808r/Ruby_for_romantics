=begin
Задание: с помощью символов “/”, “-”, “\”, “|” сделайте анимацию - индикатор загрузки.
Если выводить эти символы по-очереди на одном и том же месте, возникает ощущение
вращающегося символа.
=end

#Индикатор загрузки

x = 0.05
1000.times do |i|
  print "/\r"
  sleep x
  print "-\r"
  sleep x
  print "\\\r"
  sleep x
  print "|\r"
end


# def mult
#   5.times do |i|
#     number = rand (1..5)
#     time_sleep = 0.1
#     print "#{number}\r"
#     sleep time_sleep
#     print "#{number}\r"
#     sleep time_sleep
#     print "#{number}\r"
#     sleep time_sleep
#     print "#{number}\r"
#     sleep time_sleep
#   end
# end
#
# puts mult
