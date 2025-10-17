
//функция складывает две целочисленных переменных - отдает на выходе сумму

func sum(num1: Int, num2: Int)-> Int {
    return num1 + num2
}

//функция принимает кортеж из числа и строки приводит число к строке и ввыводит в консоль резуультат
func printInt(tuple: (String, Int)) {
    print(String(tuple.1))
}

// функция принимает на вход опциональное замыкание и целое число, выполняет замыкание только. в случае если число больше 0
func executeIfPositive(closure: (() -> Void)?, number: Int) {
    guard let unwrappedClosure = closure, number > 0 else {
        return
    }
    unwrappedClosure()
}

//функция принимает число на вход (год), проверить високосный ли он

func isLeapYear(_ year: Int) -> Bool {
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
}
