#JSON при комбинации массивов и хешей получается уникальная структура данных,
# которую называют JSON (JavaScript Object Notation)
# хеш в JavaScript часто называют “object”

obj = {
  soccer_ball: { weight: 410, colors: [:red, :blue] },
  tennis_ball: { weight: 58, colors: [:yellow, :white] },
  golf_ball: { weight: 45, colors: [:white] }
}

arr = obj[:tennis_ball][:colors]
weight = obj[:tennis_ball][:weight]
p arr
p weight

#Добавим новый цвет ":green" в массив цветов мяча для тенниса:
obj[:tennis_ball][:colors].push(:green)


#структура JSON может также быть массивом
obj1 = [
  { type: :soccer_ball, weight: 410, colors: [:red, :blue] },
  { type: :tennis_ball, weight: 58, colors: [:yellow, :white] },
  { type: :golf_ball, weight: 45, colors: [:white] }
]
p obj1[0][:colors]