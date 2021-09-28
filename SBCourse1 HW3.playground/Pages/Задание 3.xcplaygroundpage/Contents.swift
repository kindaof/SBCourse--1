import Foundation

/*:
 ### Задание 3
 
 3.1 Определите квартал в котором вы родились, используя switch.
 */
let monthOfBirth = 8
switch monthOfBirth {
case 1...3:
    print("ты родился в первом квартале")
case 4...6:
    print("ты родился во втором квартале")
case 7...9:
    print("ты родился в третьем квартале")
case 10...12:
    print("ты родился в четвертом квартале")
default:
    break
}

//: [Ранее: Задание 2](@previous)  |  задание 3 из 6  |  [Далее: Задание 4](@next)
