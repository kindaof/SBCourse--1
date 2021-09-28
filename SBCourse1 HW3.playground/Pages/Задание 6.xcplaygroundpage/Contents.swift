import Foundation

/*:
 ### Задание 6
 6.1 Создайте перечисление `CalculationType`, содержащее четыре математических действия — *сложение*, *вычитание*, *умножение* и *деление* (если не знаете английские наименования — [translate.google.com](http://translate.google.com))
 */

/*: 6.2 Создайте три константы: число один, число два и тип математической операции(CalculationType).

 В зависимости от значения переменной типа `CalculationType` выполните соответствующую математическую операцию с константами и выведите(print) результат. Для перебора всех возможных результатов используйте конструкцию `switch`. Пример вывода программы: "Результат сложения 6 и 8 равен 14"

 6.3 Создайте перечисление `CurrencyUnit` со следующими членами: `rouble`, `dollar`, `euro`.

 6.4 Внутри перечисления `CurrencyUnit` создайте еще одно перечисление `DollarCountries`, в котором содержится перчень стран, национальной валютой которых является доллар (USA, Canada, Australia)

 6.5 Добавьте в кейс `dollar` ассоциативное значение DollarCountries.

 6.6 Создайте константу типа CurrencyUnit, задайте ей значение доллара Канады.
 */
enum CalculationType: String {
  case add = "сложения"
  case subtract = "вычитания"
  case devide = "деления"
  case multiply = "умножения"
}

func arithmeticCalculation(between numberOne: Int, and numberTwo: Int, using calculationType: CalculationType ) -> Int {
  var result: Int = 0
  
  switch calculationType {
  case .add: result = numberOne + numberTwo
  case .subtract: result = numberOne - numberTwo
  case .multiply: result = numberOne * numberTwo
  case .devide: numberTwo != 0 ? result = numberOne / numberTwo : print("на ноль делить нельзя")
      
  }
  print("Результатом \(calculationType.rawValue) числа \(numberOne) на \(numberTwo) является \(result)")
  return result
}

arithmeticCalculation(between: 100, and: 6, using: .devide)
arithmeticCalculation(between: 100, and: 4, using: .add)
arithmeticCalculation(between: 100, and: 4, using: .subtract)
arithmeticCalculation(between: 100, and: 4, using: .multiply)

enum CurrencyUnit {
  
  enum ShortName: String {
      case usd = "USD"
      case eur = "EUR"
      case rub = "RUB"
  }
  
  case dollar(countries: [String], shortName: ShortName, national: DollarCountries )
  case euro(countries: [String], shortName: ShortName)
  case rouble(countries: [String], shortName: ShortName)
  
  enum DollarCountries: String {
      case usa = "USA"
      case russia = "Russia"
      case australia = "Australia"
  }
}


func CurrencyInfo(currency: CurrencyUnit) {
  switch currency {
  case let .rouble(countries, shortName):
      print("""
          Это рубль. Катируется в \(countries.joined(separator: ", ")).
          Он имеет краткое обозначение \(shortName.rawValue)
          """)
  case let .euro(countries, shortName):
      print("Это евро. Катируется в \(countries) и имеет краткое обозначение \(shortName.rawValue)")
  case let .dollar(countries, shortName, national):
      print("Это доллар. Катируется в \(countries) и имеет краткое обозначение \(shortName.rawValue), место происхождения: \(national.rawValue)")
  }
}
var someCurrency = CurrencyUnit.rouble(countries: ["Russia", "Belarus"], shortName: .rub)

CurrencyInfo(currency: someCurrency)



//: [Ранее: Задание 5](@previous)  |  задание 6 из 6  |

