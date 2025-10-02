
//Написать класс, ответственный за вычисления - класс для инициализации принимает 2 переменных - числа, по умолчанию числа равны нулю. Класс умеет посредством методов выполнять стандартные арифметические операции - сложение / вычитание / умножение / деление. Каждая из функций возвращает результат

class Сalculator {
    let number1:Double
    let number2: Double
    
    init(number1: Double = 0, number2: Double = 0) {
        self.number1 = number1
        self.number2 = number2
    }
    
    func addition() -> Double {
        return number1 + number2
    }
    func subtraction() -> Double {
        return number1 - number2
    }
    func multiplication() -> Double {
        return number1 * number2
    }
    func division() -> Double? {
        guard number2 != 0 else {
            return nil
        }
        return number1 / number2
    }
    
}


//Определить сущности геометрических фигур (например треугольник, квадрат, круг и тд), реализовать функцию описания у фигур, реализовать общий класс фигура - который содержит в себе описание, количество углов, функцию draw() (рисовать не нужно, можно просто вывести в консоль что-нибудь) - переопределить соотвествующие методы у сабклассов.


class Figure  {
    let numberOfCorners: Int
    let description: String
    
    init(numberOfCorners: Int, description: String) {
        self.numberOfCorners = numberOfCorners
        self.description = description
    }
    
    func draw() {
        print("Рисую фигуру: \(description)")
    }
    
    func getInfo() -> String {
        return "\(description) с количеством углов: \(numberOfCorners)"
    }
}
class Triangle: Figure {
    let sideA: Double
    let sideB: Double
    let sideC: Double
    
    init(sideA: Double, sideB: Double, sideC: Double) {
        self.sideA = sideA
        self.sideB = sideB
        self.sideC = sideC
        super.init(numberOfCorners: 3, description: "Треугольник")
    }
    
    override func draw() {
        print("   /\\")
        print("  /  \\")
        print(" /____\\")
        print("Нарисован \(description) со сторонами \(sideA), \(sideB), \(sideC)")
    }
    
}

// Квадрат
class Square: Figure {
    let side: Double
    
    init(side: Double) {
        self.side = side
        super.init(numberOfCorners: 4, description: "Квадрат")
    }
    
    override func draw() {
        print(" ______")
        print("|      |")
        print("|      |")
        print("|______|")
        print("Нарисован \(description) со стороной \(side)")
    }
    
}

// Прямоугольник
class Rectangle: Figure {
    let width: Double
    let height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
        super.init(numberOfCorners: 4, description: "Прямоугольник")
    }
    
    override func draw() {
        print(" __________")
        print("|          |")
        print("|__________|")
        print("Нарисован \(description) \(width)x\(height)")
    }
}

// Круг
class Circle: Figure {
    let radius: Double
    
    init(radius: Double) {
        self.radius = radius
        super.init(numberOfCorners: 0, description: "Круг")
    }
    
    override func draw() {
        print("   ***")
        print(" *     *")
        print("*       *")
        print(" *     *")
        print("   ***")
        print("Нарисован \(description) с радиусом \(radius)")
    }
    
}

let triangle = Triangle(sideA: 3, sideB: 4, sideC: 5)
print(triangle.getInfo())
triangle.draw()

let square = Square(side: 5)
print(square.getInfo())
square.draw()

let rectangle = Rectangle(width: 8, height: 4)
print(rectangle.getInfo())
rectangle.draw()

let circle = Circle(radius: 3)
print(circle.getInfo())
circle.draw()

