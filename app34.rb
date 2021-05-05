#Давайте установим breakpoint с помощью pry:

#require 'pry'
def random_pow
  pow(rand(1..10))
end
def pow(x)
  # binding.pry
  x ^ 2
end
puts random_pow

=begin
“binding.pry” мы поместили на ту же строку, где раньше был puts с выводом отладочной
информации. “binding.pry” это специальный синтаксис, который нужно запомнить. Он
говорит о том, что в этом месте должна произойти остановка программы и должен быть
вызван отладчик.
=end

# def random_pow
#   pow(rand(1..10))
# end
# def pow(x)
#   x ** 2 # ПРАВИЛЬНОЕ ВОЗВЕДЕНИЕ В КВАДРАТ
# end
# puts random_pow
