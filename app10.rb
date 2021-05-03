=begin
Задание: напишите метод, который выводит на экран пароль, но в виде звездочек.
Например, если пароль “secret”, метод должен вывести “Ваш пароль: ******”.
=end

def get_password
  print "Введите пароль: "
  password = '*' * gets.strip.size
  puts "Ваш пароль: #{password}"
end

get_password


# метод с параметром по умолчанию 'Mike'
# в первом случае при вызове метода get_login будет использован параметр по умолчанию 'Mike'

def get_login(login = 'Mike')
  puts "Ваш логин: #{login}"
end

get_login
get_login('Dave')

#пример использования return
=begin
def check_if_world_is_crazy?
  if 2 + 2 == 4
    return false
  end
  puts "Jesus, I can't believe that"
  true
end

check_if_world_is_crazy?
=end