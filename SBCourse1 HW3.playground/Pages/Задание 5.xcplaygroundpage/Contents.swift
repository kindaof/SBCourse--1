import Foundation

/*:
 ### Задание 5
 5.1 С помощью блоков `case` вы определяете возможные значения, которые может принять выражение. Однако Swift позволяет в пределах одного блока case указать не только на значение рассматриваемого параметра, но и на зависимость от какого-либо условия. Данный функционал реализуется с помощью ключевого слова `where` в блоке `case`.
 
 В этом задании вам необходимо сделать простой валидатор российского номера.
 Если длина номера больше 12, то вывести: сократите номер на N символов
 Если длина номера меньше 12, то вывести: дополните номер на N символов
 Если длина 12 и номер начинается с +7, то вывести: "Номер российский"
 
 (Подсказка: с помощью case проверить длину входного номера, с помощью where - то что он начинается с "+7", в случае, если номер не российский: вывести предупреждение.
 
 
 5.2. Реализуйте ту же логику посредством if else
 
 */
var number: String = "+7890343456"
var russianNumberLength = 12
var russianNumberPrefix = "+7"
switch number.count {
case russianNumberLength where number.starts(with: russianNumberPrefix):
    print("Это российский нормер")
case ..<russianNumberLength:
    print("Дополните номер на \(russianNumberLength - number.count) цифр")
case  (russianNumberLength + 1)...:
    print("Cократите номер на \( number.count - russianNumberLength) цифр")
default:
    print("это не российский номер")
}
    // через if
if number.count == russianNumberLength && number.starts(with: russianNumberPrefix) {
    print("Это российский нормер")
} else if number.count < russianNumberLength {
    print("Дополните номер на \(russianNumberLength - number.count) цифр")
} else {
    print("Cократите номер на \( number.count - russianNumberLength) цифр")
}

//: [Ранее: Задание 4](@previous)  |  задание 5 из 6  | [Далее: Задание 6](@next)
