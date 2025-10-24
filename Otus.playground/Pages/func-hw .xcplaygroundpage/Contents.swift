
//функция складывает две целочисленных переменных - отдает на выходе сумму

func sum(_ num1: Int, _ num2: Int)-> Int {
    return num1 + num2
}
func testSum() {
    let result1 = sum(2, 5)
    assert(result1 == 7, "ошибка: ожидалось 7, получили: \(result1) ")
    
    let result2 = sum(-1, 1)
    assert(result2 == 0, "ошибка: ожидалось 0, получили: \(result2) ")
    
    let result3 = sum(0, 0)
    assert(result3 == 0, "ошибка: ожидалось 0, получили: \(result3) ")
    
    print("✅ testSum passed!")
}
testSum()

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
