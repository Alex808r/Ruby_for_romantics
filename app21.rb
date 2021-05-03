=begin
Задание: корзина пользователя в Интернет-магазине определена следующим массивом
(qty - количество единиц товара, которое пользователь хочет купить, type - тип):

cart = [
  { type: :soccer_ball, qty: 2 },
  { type: :tennis_ball, qty: 3 }
]

А наличие на складе следующим хешем:
inventory = {
  soccer_ball: { available: 2, price_per_item: 100 },
  tennis_ball: { available: 1, price_per_item: 30 },
  golf_ball: { available: 5, price_per_item: 5 }
}

Написать программу, которая выводит на экран цену всех товаров в корзине (total), а
также сообщает - возможно ли удовлетворить запрос пользователя - набрать все единицы
товара, которые есть на складе.
=end

cart = [
  { type: :soccer_ball, qty: 2 },
  { type: :tennis_ball, qty: 3 }
]

inventory = {
  soccer_ball: { available: 2, price_per_item: 100 },
  tennis_ball: { available: 3, price_per_item: 30 },
  golf_ball:   { available: 5, price_per_item: 5 }
}

price_soccer = inventory[cart[0][:type]][:price_per_item] * cart[0][:qty]
price_tennis = inventory[cart[1][:type]][:price_per_item] * cart[1][:qty]

#Общая сумма в товаров в корзине
# total = 0
# cart.each do |item|
#   total += inventory[item[:type]][:price_per_item] * item[:qty]
# end


total1 = 0
cart.each do |item|
  if item[:qty] <= inventory[item[:type]][:available]
    total1 += inventory[item[:type]][:price_per_item] * item[:qty]
  else
    puts 'Недостаточно товаров на складе'
    exit
  end
end

puts "Общая сумма товаров в корзине #{total1}"