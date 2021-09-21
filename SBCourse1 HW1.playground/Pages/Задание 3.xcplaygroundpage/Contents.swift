import Foundation

/*:
 ### Задание 3
 
 Необходимо вычислить площадь и периметр прямоугольного треугольника.
 
 >Условия:
 Катеты прямоугольного треугольника:
 AC = 8.0, CB = 6.0. Гипотенузу треугольника AB вычисляем при помощи функции `sqrt(Double)`, заменив `Double` суммой квадратов катетов
 
 */
let cathetusOne = 8.0
let cathetusTwo = 6.0
let powerValue: Double = 2
let double = pow(cathetusOne,powerValue) + pow(cathetusTwo,powerValue)
let hypotenuse = sqrt(double)
let square = cathetusOne * cathetusTwo * 0.5
let perimeter = cathetusOne + cathetusTwo + hypotenuse
print("Площадь треугольника равна \(square), а периметр равен \(perimeter)")

